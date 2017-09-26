;;; -*- Mode: LISP;  Package: MUMBLE; Syntax: Common-lisp; Base: 10 -*-

;;; MUMBLE-05:  interpreters> realization> realize

;;; Copyright (C) 2005,2010-2017 David D. McDonald
;;; Copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.

;; 9/16/09 Added generic method for realization-for. 9/18 revised realize to
;; no longer feed instantate-rspec (that level of interpretation belongs in
;; realization-for and to take a lexicalized-phrase as a return value
;; 3/17/11 Tweaking things a little. 12/27/13 tweek to realize-dtn. And
;; again 12/9/15. 3/29/16 Make realize generic, replace realization-for.

(in-package :mumble)

(defvar *bundle-being-realized* nil)

;#################################################################
;                       REALIZE
;#################################################################

(defgeneric realize (obj)
  (:documentation "This is called from realization-cycle and returns
the 'new contents' of the slot, i.e. either a node or a refined object
to be recursively realized.")
  (:method :before (obj) (landmark 'realizing obj))
  (:method (obj) nil) ; say nothing by default
  (:method ((obj string)) (word-for-string obj))
  (:method ((obj integer)) (format nil "~r" obj))
  (:method ((obj word)) obj)
  (:method ((obj phrasal-root)) obj)
  (:method ((obj pronoun)) obj)
  (:method ((obj saturated-lexicalized-phrase))
    (instantiate-lexicalized-phrase obj))
  (:method ((obj lexicalized-phrase)) ;; questionable. Needs targeted test
    (instantiate-lexicalized-phrase obj))
  (:method ((obj bundle-specification) &aux (*bundle-being-realized* obj))
    (funcall (driver (bundle-type obj)) obj)))

;;;-----------------------
;;; Derivation Tree Nodes
;;;-----------------------

(defmethod realize ((dtn derivation-tree-node))
  "A derivation-tree node is one of the possible contents of a slot.
This expands the dtn to a phrase (or other surface-level resource
such as a word) and returns the root node of the phrase (or the
word/pronoun/..) to be the new contents of the slot. At this level
we just do the data checks, all the heavy lifting is done by a driver
that knows how to how to handle the specific accessories."
  (let* ((resource (resource dtn))
         (root-node (typecase resource
                      (partially-saturated-lexicalized-phrase
                       (instantiate-phrase-in-dtn resource dtn))
                      (saturated-lexicalized-phrase
                       (instantiate-lexicalized-phrase resource))
                      (phrase
                       (instantiate-phrase-in-dtn resource dtn))
                      (otherwise
                       resource))))
    (landmark 'resource resource)

    ;; Handle features and adjunctions
    (let* ((phrase (typecase resource
                     (lexicalized-phrase (phrase resource))
                     (phrase resource)))
           (phrase-type (and phrase (caar (definition phrase)))))
      (case (and phrase-type (name phrase-type))
        (clause (clausal-bundle-driver dtn root-node))
        ((np np/no-det) (general-np-bundle-driver dtn root-node))
        (otherwise root-node)))))


;;;--------------
;;; "rspec"-hood
;;;--------------

(defun rspec? (o)
  ;; Only referenced (and now ignored) in attach
  (typecase o
    (derivation-tree-node t)
    (bundle-specification t)
    (kernel-specification t)
    (otherwise nil)))


;################################################################
;              Executing tree-families
;################################################################

;;; In these two functions, *tree-fam-parameter-argument-list* is dynamically bound
;;; because RETURN-tree-fam-PARAMETER-VALUE makes special reference to that
;;; variable and it's convenient to have that function be monadic, so that we
;;; can map it along formal parameter lists.

(defun evaluate-its-tree-family (rspec tree-fam)
  (let-with-dynamic-extent
    ((*tree-fam-parameter-argument-list*
      (create-tree-fam-parameter-argument-list tree-fam 
                                             (parameters tree-fam) 
                                             (arguments rspec))))
    (select-and-evaluate-choice-from-tree-fam rspec tree-fam)))


(defun add-the-bindings-and-evaluate-its-tree-family (rspec tree-fam)
  (let-with-dynamic-extent
    ((*tree-fam-parameter-argument-list*
      (create-tree-fam-parameter-argument-list-adding-curried-args tree-fam
                                                                 (parameters tree-fam)
                                                                 (arguments rspec)
                                                                 (bindings tree-fam) )))
    (select-and-evaluate-choice-from-tree-fam rspec tree-fam)))



(defun create-tree-fam-parameter-argument-list (tree-fam parameter-list argument-list)
  (if (= (length parameter-list)
         (length argument-list))
    (pairlis parameter-list argument-list)
    (error "Wrong number of arguments to Realization Class ~s~%~
            It takes Formal Parameters ~s but got ~s."
           (name tree-fam)
           parameter-list
           argument-list)))

(defun return-tree-fam-parameter-value (parameter)
  (declare (special *tree-fam-parameter-argument-list*))
  (cdr (assoc parameter *tree-fam-parameter-argument-list*)))

(defun create-tree-fam-parameter-argument-list-adding-curried-args
       (tree-fam parameter-list argument-list fixed-bindings)
  (if (= (length parameter-list)
	 (length argument-list))
      (pairlis parameter-list argument-list fixed-bindings)
      (error "Wrong number of arguments to Curried Realization Class ~s~%~
              It takes Formal Parameters ~s but got ~s."
	     (name tree-fam)
	     parameter-list
	     argument-list)))



(defun select-and-evaluate-choice-from-tree-fam (rspec tree-fam)
  (declare (special *tree-fam-parameter-argument-list*))
  (let ((chosen (choose-from-choice-set (choices tree-fam))))
    (landmark "Choice taken = " chosen)
    (let ((result (execute-choice (choice chosen) (argument-list chosen) rspec)))
      (landmark "The resulting node is " result)
      result)))

(defun execute-choice (C arguments rspec)
  (etypecase C
    (phrase (let ((result (instantiate-phrase C arguments)))
	      (set-original-rspec (context-object result) rspec)
	      result))
    ((or word pronoun)  C)
    (parameter (return-tree-fam-parameter-value C))
    (symbol (if (eq c :choice-is-argument)
		(car arguments)
		#+ignore
		(mbug "~A not a valid symbol or keyword" C)
		(funcall c arguments)))	  
    (tree-family
      (mbug "first example of a realization class as a choice"))))


;################################################################
;    Selecting from a set of choices
;################################################################

(defun choose-from-choice-set (set-of-choices)
  (declare (special *ask-user-about-ambiguous-choice-sets?*
                    *choice-selection-algorithm*))
  (cond (*ask-user-about-ambiguous-choice-sets?*
	 (collect-all-useable-choices-and-ask-user set-of-choices))
	(*choice-selection-algorithm*
	 (funcall *choice-selection-algorithm* set-of-choices))
	(T
	 (take-the-first-acceptable-choice set-of-choices))))


(defparameter *ask-user-about-ambiguous-choice-sets?* nil
  "If more than one choice in the set presented by a tree-family is
acceptable, we have to break the tie.  One possibility is throwing up a menu
of the acceptable choices and making the user decide.")


(defun collect-all-useable-choices-and-ask-user (possible-choices)
  (let ((acceptables  (remove-if-not #'choice-is-acceptable possible-choices)))
    (case (length acceptables)
      (0  (mbug "None of the possible choices were usable~%~A"
		possible-choices))
      (1  (car acceptables))
      (T  (or (menu-choose (construct-menu-item-list acceptables)
			   "Which choice?")
	      (car acceptables))))))

(defun take-the-first-acceptable-choice (alternative-choices)
  (or (some #'choice-is-acceptable alternative-choices)
      (mbug "None of the alternative choices were usable~%~A"
	    alternative-choices)))

(defun collect-up-the-choices-and-take-the-first-of-the-most-specific (possible-choices)
  (let ((choices-passing-negative-filter 
         (remove-if-not #'choice-is-acceptable possible-choices)))
;    (mbug "~%~A sucessful choices:~%~A"
;	  (length choices-passing-negative-filter)
;	  choices-passing-negative-filter)
;    (the choice
	 (case (length  choices-passing-negative-filter)
	   (0    (mbug "No choices were acceptable."))
	   (1    (car choices-passing-negative-filter))
	   (T    (most-specific-tree-family-choice choices-passing-negative-filter)))))


(defun most-specific-tree-family-choice (list-of-choices)
  (let ((currently-most-specific-choice
	  (cons (+ (count-relevant-accessories (car list-of-choices))
		   (count-relevant-argument-characteristics
		     (car list-of-choices)))
		(car list-of-choices))))
 ; (mbug "~%~%~a is the first choice" (cdr currently-most-specific-choice))
    (dolist (choice (cdr list-of-choices))
      (let ((number-of-annotations
	      (+ (count-relevant-accessories choice)
		 (count-relevant-argument-characteristics choice))))
	(if (> number-of-annotations
	       (car currently-most-specific-choice))
	    (then
	     ; (mbug "~%~%~A is more specific than ~A"
	     ;	    choice
	     ;	    currently-most-specific-choice)
	      (setq currently-most-specific-choice
		    (cons number-of-annotations
			  choice))))))
    (landmark 'Selecting-choice (cdr currently-most-specific-choice))
    (cdr currently-most-specific-choice) ))

(defun count-relevant-accessories (choice)
  (let ((required-accessories-field (required-accessories choice))
	(count 0))
    (dolist (item required-accessories-field)
      (etypecase item
	(accessory-type
	  (unless (member (name item)
		      '( ;;irrelevant accessories
			))
	    (incf count)))
	(parameter ) ;; skip over them
	))
    count))

(defun count-relevant-argument-characteristics (choice)
  (let ((argument-characteristics-field (argument-characteristics choice))
	(count 0))
    (dolist (item argument-characteristics-field)
	  (unless (member (name (car item))
		      '( ;;irrelevant argument-characteristics
			))
	    (incf count)))
    count))

(defparameter *choice-selection-algorithm*  
  'collect-up-the-choices-and-take-the-first-of-the-most-specific
  )

;;for use when we know all the choices left are allowable
;;as in attachment, where they have already been filtered

(defun choose-from-filtered-choice-set (set-of-choices)
  (cond (*ask-user-about-ambiguous-choice-sets?*
	 (menu-choose (construct-menu-item-list set-of-choices)
			   "Which choice?"))
	(T ;;take-the-first-acceptable-choice
	 (car set-of-choices))))


;##########################################################################
;        Filtering choices according to their Characteristics
;##########################################################################

(defun choice-is-acceptable (the-choice)
  ;;changed 12.15.87 to check for arg characterstics
  ;;also deleted the landmarks to make it easier (for me) to read
  (landmark 'considering-choice the-choice)
  
  (let ((constraining-label (car (labels *current-position*))))
    (if (grammatical-characteristics-are-satisfied the-choice
						   constraining-label)
	(if  (required-accessories the-choice)
	     ;; there are req accessories
	     
	     (when (required-accessories-are-satisfied
		     (required-accessories the-choice)
		     *bundle-being-realized*)
	       (if  (argument-characteristics the-choice)
		    (when (argument-characteristics-are-satisfied
			    the-choice)
		      the-choice)
		    the-choice))
	     
	     ;; no req-access, still need to check arg-char
	     (if  (argument-characteristics the-choice)
		  ;;there are argument-characteristics
		  (when (argument-characteristics-are-satisfied
			  the-choice)
		    the-choice)
		  
		  ;;there are no req acc or arg char 
		  the-choice))
	nil)))



(defun grammatical-characteristics-are-satisfied (the-choice grammatical-label)
  (let ((constraining-characteristics (grammatical-constraints grammatical-label))
        (characteristics-of-the-choice (grammatical-characteristics the-choice)))
    (if constraining-characteristics
      ;; Are there ever positions that really don't
      ;;impose any grammatical constraints on their
      ;;contents ??
      (if (parameterp (choice the-choice))
        (check-grammatical-char-of-parameter (choice the-choice) grammatical-label)
        (subsetp characteristics-of-the-choice constraining-characteristics))
      (else t) )))



(defun check-grammatical-char-of-parameter (parameter constraint-label)
  (let* ((rspec (return-tree-fam-parameter-value parameter))
         (spec-to-check (rspec-relevant-to-check rspec)))
    (if (kernel-specificationp spec-to-check)
      (let* ((rfn (realization-function spec-to-check))
             (choices (etypecase rfn
                        (tree-family (choices rfn))
                        (single-choice (list rfn))))
             grammat-choices)
        (dolist (c choices)
          (when (grammatical-characteristics-are-satisfied c constraint-label)
            (push c grammat-choices)))
        grammat-choices)
      
      ;;ELSE spec-to-check was a word
      rspec)
    ))



(defun required-accessories-are-satisfied (req-acc-list bundle)
  (if req-acc-list 
      (do* ((accessory (pop req-acc-list) (pop req-acc-list))	
	    (value (when (accessory-has-value
			   (car req-acc-list))
		     (pop req-acc-list))
		   (when (accessory-has-value
			   (car req-acc-list))
		     (pop req-acc-list)))
	    (test (match-bundle-and-choice-accessories
		    accessory value bundle)
		  (match-bundle-and-choice-accessories
		    accessory value bundle)))
	   ((or (null req-acc-list) ;; ran out of accessories to test
		(null test))        ;; the test failed
	    test)) ;; return the result of the last test made
      t ))

(defun accessory-has-value (item)
  (or (parameterp item)
      (accessory-valuep item)))


(defun match-bundle-and-choice-accessories (accessory value bundle)
  (let* ((accessories-present (accessories bundle))
	 (instance (assoc accessory accessories-present)))
    (when instance
      (if value ;;the accessory has a value
	  (typecase value
	    (parameter (same-underlying-object (cdr instance)
                                               (return-tree-fam-parameter-value value)))
	    (accessory-value (eq (cdr instance) value)))
	    t))
    ))

(defun argument-characteristics-are-satisfied  (the-choice)
  (flet
    ((characteristic-satisfied? (characteristic-and-formal)
       (let ((characteristic (car characteristic-and-formal))
	     (formal         (cdr characteristic-and-formal)))
	 (landmark 'testing-argument-characteristic
		   characteristic formal)
	 (let* ((actual (return-tree-fam-parameter-value formal))
		(test   (consistency-test characteristic))
		(result (funcall test actual)))
	   result ))))

    (let ((characteristics (argument-characteristics the-choice)))
       (every #'characteristic-satisfied? characteristics))))



(defun same-underlying-object (spec1 spec2)
  ;;this will be implementation specific
  ;;check first for stand-alone (no und obj_
  (if (and (underlying-object spec1)
	   (underlying-object spec2))
      (eq (actual-object (underlying-object spec1))
	  (actual-object (underlying-object spec2)))
      (eq spec1 spec2)))
