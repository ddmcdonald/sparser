;;; -*- Mode: LISP;  package: MUMBLE;  Syntax: Common-lisp; Base: 10 -*-
;;; $Id: instantiate-phrase.lisp 342 2009-12-29 18:35:14Z dmcdonal $

;;; MUMBLE-05:  interpreters> realization> instantiate-phrase

;;; Copyright (C) 2005,2011-2012 David D. McDonald
;;; Copyright (C) 1985, 1986, 1987, 1988, 1995  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; extensions copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved

;;Changelog:
;; 2/21/95 ddm -- fixed a bug in TOP-LEVEL-BUILD-PHRASE where it called BUILD-COMP-SLOT
;;  with an argument even though it takes its arguments globally. 
;; 1/14/05 started change-over to use lemmas, etc. 3/25/07 Reworking things in earnest
;; so as to avoid the choice and tree-family intermediaries whenever that makes sense.
;; 9/18/09 ddm. Converted instantiate-lexicalized-phrase to a method.
;; 3/28/11 ddm: Fixing glitches in mapping from DTN. 11/21/12 accomodate directly
;; pasing in a parameter object.

(in-package :mumble)

;;;------------------------------------------------------------
;;; sorting out the parameters and the values they're bound to
;;;------------------------------------------------------------

(defvar *phrase-parameter-argument-list* nil)

(defun parameter-value (parameter)
  (declare (special *phrase-parameter-argument-list*)) 
  (cdr (assoc parameter *phrase-parameter-argument-list*)))

(defun parameter-arg-list-from-dtn (dtn)
  ;;(format t "~&Creating parameter-arg-list-from ~a" dtn)
  (mapcar #'(lambda (cn)
              (let* ((symbol (phrase-parameter cn))
                     (parameter (etypecase symbol
                                  (parameter symbol)
                                  (symbol (parameter-named symbol))))
                     (value (value cn)))
                (format t "~&   p: ~a  v: ~a" parameter value)
                (unless value 
                  (push-debug `(,cn ,parameter ,dtn)) 
                  (error "No value for parameter ~a" parameter))
                `(,parameter . ,value)))
	  (complements dtn)))

(defun pvp-to-list-of-parameter-value-conses (list-of-parameter-value-pairs)
  ;; Same role as create-phrase-parameter-argument-list except that the
  ;; call to return-tree-fam-parameter-value argument seems irrelevant
  (mapcar #'(lambda (pvp)
              `(,(phrase-parameter pvp)
                 . ,(value pvp)))
	  list-of-parameter-value-pairs))

(defun create-phrase-parameter-argument-list (parameter-list argument-list)
  (mapcar #'(lambda (parameter argument)
              (when (listp argument)
                (setq argument (reduce-argument argument)))
              (cons parameter 
                    (etypecase argument
                      (word  argument)
                      (parameter (return-tree-fam-parameter-value argument))
                      (specification argument))))
          parameter-list
          argument-list))



;;;--------------
;;; Entry points
;;;--------------

(defmethod instantiate-lexicalized-phrase ((lp saturated-lexicalized-phrase))
  (let ((phrase (resource lp)))
    (let-with-dynamic-extent 
	((*phrase-parameter-argument-list* 
	  (pvp-to-list-of-parameter-value-conses (bound lp))))
      (build-rooted-phrase (definition phrase)))))
;;
;;/// should be a more aesthetic factoring here
;;
(defmethod instantiate-phrase-in-dtn ((phrase phrase) 
                                      (dtn derivation-tree-node))
  "Sets up the argument drawing on the complement nodes in the dtn."
  (let-with-dynamic-extent 
      ((*phrase-parameter-argument-list*
        (parameter-arg-list-from-dtn dtn)))
    (build-rooted-phrase (definition phrase))))


#| Old type-checking code
  (let ((parameters (parameters-to-phrase phrase))
        (param-arg-list (bound-parameters lp))
        (links (down-links tpn)))
    (mapcar #'(lambda (pair)
                (unless (lemmap (cdr pair))
                  (break "The bound-parameters are not simple")))
            param-arg-list)
    (dolist (link links)
      (let ((parameter (link-label link))
            (value (node link)))
        (unless (assoc parameter param-arg-list :test #'eq)
          ;; trust the bound-parameters, this is a redundancy that probably should
          ;; be eliminated.
          (etypecase value ;; check for valid values
            (word)
            (text-plan-node))
          (push (cons parameter value)
                param-arg-list))))
    (dolist (parameter parameters)
      (unless (assoc parameter param-arg-list :test #'eq)
        (break "We're missing a value for the parameter ~a" parameter))))
|#
   
;; Perhaps ignore this. The call to create-phrase-parameter-argument-list
;; invokes choice and choice-set machinery in /interpreters/realize that may
;; or may not actually work. It's been somewhat converted to talk about
;; tree families, but I don't remember engauging it in the last decade
;; ddm 9/18/09
(defun old-instantiate-phrase (phrase arguments)
  (let-with-dynamic-extent 
      ((*phrase-parameter-argument-list*
        (create-phrase-parameter-argument-list
	     (parameters-to-phrase phrase) arguments)))
    (build-rooted-phrase (definition phrase))))

(defun build-rooted-phrase (definition)
  (let*-with-dynamic-extent 
    ((context-object (make-phrasal-context))
     (root-node (top-level-build-phrase definition)))
    (set-node context-object root-node)
    (set-position-table context-object (create-position-table root-node))
    (set-available-aps context-object (create-attachment-point-list root-node))
    (set-context-object root-node context-object)
    root-node))


(defun top-level-build-phrase (definition)
  (let*-with-dynamic-extent 
    ((remaining-definition definition)
     ;; process comp position, if there is one
     (comp (when (slot-labelp (car remaining-definition))
             ;;(build-comp-slot remaining-definition) -- original call
             (build-comp-slot)))
     (root-node (build-phrase (car remaining-definition) (make-phrasal-root))))
    ;;knit in comp position
    (when comp 
      (set-next comp root-node)
      (set-previous root-node comp))
    root-node))


(defun build-comp-slot ()
  (declare (special remaining-definition))
  (let* ((comp-label (pop remaining-definition))
	 (comp-slot (make-slot
		      :name (name comp-label)
		      :labels (list comp-label)
		      :visited-status 'new)))
    (let* ((contents (pop remaining-definition)))
      (etypecase  contents
	(word      (set-contents comp-slot contents))
	(parameter (set-contents comp-slot (parameter-value contents)))))
    (when (keywordp (car remaining-definition))
      (process-label-keywords comp-slot))
    comp-slot))


(defun build-phrase (definition &optional phrasal-root-node)
  (let*-with-dynamic-extent ((remaining-definition definition)
                             (node-label (pop remaining-definition))
                             (node (or phrasal-root-node (make-node))))
    (set-name node (name node-label))
    (set-labels node (list node-label))
    (set-visited-status node 'new)
    (when (keywordp (car remaining-definition))
      (process-label-keywords node))
    (do* ((slot-label (pop remaining-definition)(pop remaining-definition))
          (previous-position node slot)
          (slot (make-slot) (make-slot)))
         ((null remaining-definition)
          (set-last-constituent node previous-position)
          (set-next previous-position node))
      (set-name slot (name slot-label))
      (set-labels slot (list slot-label))
      (set-visited-status slot 'new)
      (if (eq previous-position node)
        (set-links-for-first-constituent node slot)
        (set-links-for-slot previous-position slot))
      (let* ((contents (pop remaining-definition)))
        (typecase contents
          (word (set-contents slot contents))
          (parameter
           (let ((value (parameter-value contents)))
             (unless value
               (push-debug `(,contents ,*phrase-parameter-argument-list*))
               (break "parameter-value of ~a returned nil." contents))
             (typecase value
               ((or word specification)
                (set-contents slot value))
               (node (knit-phrase-into-tree slot value))
               (otherwise 
                (if (has-realization? value)
                  (set-contents slot value)
                  (else
                    (push-debug `(,contents ,value ,slot ,node))
                    (mbug "Unexpected parameter value:  ~s => ~s" 
                          contents value)))))))
          (cons (let ((phrase-node (build-phrase contents)))
                  (knit-phrase-into-tree slot phrase-node)))
          (otherwise 
           (push-debug `(,contents ,slot ,node))
           (mbug "Unexpected contents--~A" contents)))	
        (when (keywordp (car remaining-definition))
          (process-label-keywords slot))))
    node))




(defun reduce-argument (arg)
  (let ((spec (when (parameterp (car arg))
		(return-tree-fam-parameter-value (car arg))))
	(form (if (keywordp (car arg)) (car arg) (cadr arg))))
    (ecase form
      (:trace (build-trace spec))
      (:there-trace (build-there-trace spec))
      (:wh-acc-value
	(cdr (assoc (accessory-type-named ':wh)
		    (accessories *bundle-being-realized*))))
      )))


(defun process-label-keywords (position)
  (declare (special remaining-definition context-object))
  (let ((key (pop remaining-definition))
	(value (pop remaining-definition)))
    (ecase key
      (:additional-labels
	;; Have to add additional labels at the end because the first label 
	;; gives the grammatical constraints.
	(setf (cdr (labels position)) (the list value)))
      (:set-state
	(let ((field (car value))
	      (state-value (cadr value)))	 
	  (set-state context-object
		     (initialize-state field state-value
				       (state context-object))))))
    (when (keywordp (car remaining-definition))
      (process-label-keywords position))
    ))


(defun traversal-finished (root position flag)
  (and flag (eq root position)))


(defun create-attachment-point-list (root-node)
  (let (attachment-point-list)
    (do* ((position root-node (update position))
	  (traversal-begun nil t))
	 ((and traversal-begun (eq root-node position)))
       (dolist (item (collect-attachment-points position))
	(push item attachment-point-list))
      (if (nodep (contents position))
	  (dolist (item (create-attachment-point-list (contents position)))
	    (push item attachment-point-list))))
   (nreverse attachment-point-list)))


(defun collect-attachment-points (position)
  (let (ap-list)
    (dolist (L (labels position))
      (dolist (AP (associated-attachment-points L))	 
	  (push (cons AP  position) ap-list))
	)
    ap-list))


(defun create-position-table (root-node)  
  (let (position-list)
    (do ((position root-node (update position))
	 (traversal-begun nil t))
	((and traversal-begun (eq root-node position)))
      (push (cons (name position) position)
	    position-list)
      (if (nodep (contents position))
	  (dolist (item (create-position-table (contents position)))
		(push item position-list))))
   position-list))


