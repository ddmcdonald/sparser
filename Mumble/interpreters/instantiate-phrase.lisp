;;; -*- Mode: LISP;  package: MUMBLE;  Syntax: Common-lisp; Base: 10 -*-
;;; MUMBLE-05:  interpreters> realization> instantiate-phrase

;;; Copyright (C) 2005,2011-2017 David D. McDonald
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
;; pasing in a parameter object. 1/27/14 Added instantiate-phrase to quiet the
;; compiler even though it's not likely to work. 10/13/15 folded trace into
;; contents options. 

(in-package :mumble)

;;;------------------------------------------------------------
;;; sorting out the parameters and the values they're bound to
;;;------------------------------------------------------------

(defvar *phrase-parameter-argument-list* nil
  "For each phrasal root in turn, this is populated by an alist
   that maps parameters to their valuess in this instance of
   the phrase.")

(defun parameter-value (parameter)
  "Used by phrase builders to retrieve the value of a parameter"
  (declare (special *phrase-parameter-argument-list*))
  (let ((value (cdr (assoc parameter *phrase-parameter-argument-list*))))
    ;; (unless value
    ;;  This is useful when debugging odd cases, but there are situations
    ;;  where there genuinely isn't a value for a mapped parameter.
    ;;  One of the more esoteric trace types could be considered, but that
    ;;  would need substantial motivation
    ;;   (error "NULL value for parameter ~a" parameter))
    (landmark 'value-of-parameter parameter value)
    value))

(defun parameter-arg-list-from-dtn (dtn)
  "Given a dtn, lift the parameter/value information from
   each of its complements and return them as a list of dotted pairs"
  (mapcar #'(lambda (cn)
              (let* ((symbol (phrase-parameter cn))
                     (parameter (etypecase symbol
                                  (parameter symbol)
                                  (symbol (parameter-named symbol))))
                     (value (value cn)))
                (landmark 'parameter+value parameter value)
                (unless value 
                  (push-debug `(,cn ,parameter ,dtn)) 
                  (error "No value for parameter ~a" parameter))
                `(,parameter . ,value)))
	  (complements dtn)))

(defun pvp-to-list-of-parameter-value-conses (list-of-parameter-value-pairs)
  "Given a list of parameter-value pair objects, convert them to a
   list of dotted pairs"
  (mapcar #'(lambda (pvp)
              `(,(phrase-parameter pvp) . ,(value pvp)))
	  list-of-parameter-value-pairs))

(defun create-phrase-parameter-argument-list (parameter-list argument-list)
  "Given synchronized lists of parameters and their arguments, return a list 
   of dotted pairs that combine them. Includes an option to 'reduce' an
   argument to some form of trace. These were appropriate when working
   from choice sets where the reductions were stipulated in the choice."
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

(defgeneric instantiate-lexicalized-phrase (lp)
  (:documentation "All the parameters are bound on the lexicalized phrase")
  (:method ((lp saturated-lexicalized-phrase))
    (let ((phrase (phrase lp))
          (*phrase-parameter-argument-list* 
         (pvp-to-list-of-parameter-value-conses (bound lp))))
      (declare (special *phrase-parameter-argument-list*))
      (build-rooted-phrase (definition phrase)))))

(defgeneric instantiate-phrase-in-dtn (lp dtn)
  (:documentation "Some or all of the parameter values come from the dtn.")
  (:method ((lp partially-saturated-lexicalized-phrase)
            (dtn derivation-tree-node))
    "Some of the paramters are bound on the lp, the rest are given as
     complements on the dtn"
    (let ((phrase (phrase lp))
          (*phrase-parameter-argument-list*
           (pvp-to-list-of-parameter-value-conses (bound lp))))
      (declare (special *phrase-parameter-argument-list*))
      (setq *phrase-parameter-argument-list*
            (append (parameter-arg-list-from-dtn dtn)
                    *phrase-parameter-argument-list*))
      (build-rooted-phrase (definition phrase))))

  (:method ((phrase phrase) 
            (dtn derivation-tree-node))
    "All of the parameters are supplied by the dtn in its complement nodes"
    (let ((*phrase-parameter-argument-list* (parameter-arg-list-from-dtn dtn)))
      (declare (special *phrase-parameter-argument-list*))
      (build-rooted-phrase (definition phrase)))))

   
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

(defun instantiate-phrase (phrase arguments)
  ;; Mostly here to quiet the compiler
  (old-instantiate-phrase phrase arguments))


;;;---------------
;;; rooted phrase
;;;---------------

(defun build-rooted-phrase (definition)
  (let*-with-dynamic-extent 
    ((context-object (make-phrasal-context))
     (root-node (top-level-build-phrase definition)))
    (set-node context-object root-node)
    (set-name context-object (name root-node))
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


;;;-----------------------------------------------------------
;;; Actually instantiate the phrase by walking its definition
;;;-----------------------------------------------------------

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
      ;(format t "~&slot: ~a" (name slot-label))
      (set-labels slot (list slot-label))
      (set-visited-status slot 'new)
      (if (eq previous-position node)
        (set-links-for-first-constituent node slot)
        (set-links-for-slot previous-position slot))

      (let* ((contents (pop remaining-definition)))
        ;(format t "~&contents: ~a" contents)
        (typecase contents
          (word (set-contents slot contents))
          ;; (pronoun (set-contents slot contents))
          (parameter
           (let ((value (parameter-value contents)))
             (typecase value
               (null)
               (node (knit-phrase-into-tree slot value))
               (saturated-lexicalized-phrase
                ;;/// should this be just put in the slot too?
                (let ((root (instantiate-lexicalized-phrase value)))
                  (knit-phrase-into-tree slot root)))
               (otherwise
                (set-contents slot value)))))
          (cons (let ((phrase-node (build-phrase contents)))
                  (knit-phrase-into-tree slot phrase-node)))
          (otherwise 
           (push-debug `(,contents ,slot ,node))
           (mbug "Unexpected contents--~A" contents)))
        (when (keywordp (car remaining-definition))
          (process-label-keywords slot))))
    node))


;;;------------------------------------
;;; subroutines of building the phrase
;;;------------------------------------

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
  "Carry out the ancillary instructions associated with a 
   label in the definition of a phrase. This pops off more
   of the definition, which is shared on the remaining-definition global."
  (declare (special remaining-definition  context-object))
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
      (process-label-keywords position))))


;;;---------------------------------------------
;;; populating the fields of the context object
;;;---------------------------------------------

(defun create-attachment-point-list (root-node)
  (let (attachment-point-list)
    (do ((position root-node (update position))
         (traversal-begun nil t))
        ((and traversal-begun (eq root-node position))
         (nreverse attachment-point-list))
      (dolist (item (collect-attachment-points position))
	(push item attachment-point-list))
      (when (and (slotp position) (nodep (contents position)))
        (dolist (item (create-attachment-point-list (contents position)))
          (push item attachment-point-list))))))

(defun traversal-finished (root position flag)
  (and flag (eq root position)))


(defun collect-attachment-points (position)
  (let (ap-list)
    (dolist (L (labels position) ap-list)
      (dolist (AP (associated-attachment-points L))	 
	  (push (cons AP  position) ap-list)))))


(defun create-position-table (root-node)  
  (let (position-list)
    (do ((position root-node (update position))
	 (traversal-begun nil t))
	((and traversal-begun (eq root-node position))
         position-list)
      (push (cons (name position) position)
	    position-list)
      (if (and (slotp position) (nodep (contents position)))
        (dolist (item (create-position-table (contents position)))
          (push item position-list))))))



;;;-----------------------
;;; position-path printer
;;;-----------------------

(defvar *objects-reached-in-path* nil)

(defun been-here-before? (item)
  (when (memq item *objects-reached-in-path*)
    (break "returned to ~a" item))
  (push item *objects-reached-in-path*))

(defun print-tree-path (root)
  (setq *objects-reached-in-path* nil)
  (trace-out-tree root))

(defgeneric trace-out-tree (tree-element  &optional stream)
  (:documentation "This doesn't quite work, but the idea is that
    it knows how to traverse a phrase structure tree and display
    its contents in a way that would help in dubugging")

  (:method ((root phrasal-root) &optional (stream *standard-output*))
    (been-here-before? root)
    (format stream "~&~a -> " (name root))
    (trace-out-tree (first-constituent root)))

  (:method ((slot slot) &optional (stream *standard-output*))
    (been-here-before? slot)
    (format stream "[~a] -> " (name slot))
    (trace-out-tree (contents slot))
    (let ((next (next slot)))
      (trace-out-tree next)))

  (:method ((node node) &optional (stream *standard-output*))
    (been-here-before? node)
    (format stream "~&~a -> " (name node))
    (trace-out-tree (first-constituent node))
    (trace-out-tree (next (first-constituent node))))

  (:method ((word word) &optional (stream *standard-output*))
    (format stream "~a -> " word))

  (:method ((pn pronoun) &optional (stream *standard-output*))
    (format stream "~a -> " pn))

  (:method ((tm tense-marker) &optional (stream *standard-output*))
    (format stream "~a -> " tm))

  (:method ((emtpy null) &optional (stream *standard-output*))
    (format stream "NIL -> "))

  (:method ((dtn derivation-tree-node) &optional (stream *standard-output*))
    (format stream "~a ^ " dtn))

  (:method ((unknown t) &optional (stream *standard-output*))
    (declare (ignore stream))
    (break "Need a mentod for ~a" (type-of unknown))))
