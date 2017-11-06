;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10 -*-
;;; MUMBLE-86:  interpreters> obsolete
;;; Copyright (C) 2017 David D. McDonald. All Rights Reserved

;; These functions are not used anymore, but they are worth keeping
;; to see how alternatives were done.

;;;-----------------------------------
;;; from interpreters/attachment.lisp
;;;-----------------------------------

(defvar *bundle-being-attached* nil)

;; from guts of attach -- real version is much simpler
;; because we're not choosing anything at this level now
(defun attach (rspec attachment-function)
  "Called by Process-further-specifications. It does the attachment and specializes 
the realization-function of the rspec accordingly."
  (landmark 'attaching-via-attachment-fn rspec attachment-function)
  #+ignore(unless (rspec? rspec)  ;; delay realization until slot
    (setq rspec (realize rspec))) ;; context is available
  (let-with-dynamic-extent ((*bundle-being-attached* rspec))
    (multiple-value-bind (ap usable-choices)
                         (etypecase attachment-function
                           (attachment-point
                            (check-validity-of-attachment-point
                             attachment-function rspec))
                           (single-attachment-choice
                            (check-validity-of-attachment-choice
                             attachment-function rspec))
                           (attachment-class
                            (choose-from-attachment-class-choices
                             attachment-function rspec)))
      (declare (ignore usable-choices))
      (let ((position (position-of-ap-in-present-context ap)))
        ;;(specialize-realization-function rspec usable-choices)
        ;; Doesn't apply if not using M-86 (M-80) style spelled out
        ;; late choices
        (attach-at-attachment-point ap rspec position)))))

(defun check-validity-of-attachment-point (attachment-point rspec)
  (if (available-in-present-context attachment-point)
    (if (syntax-driven-sources rspec)
      (let ((choices (choices-compatible-with-attachment-point attachment-point rspec)))
	;; n.b. this code hasn't been interesting since the 1980s
	;; when more of the action was this late. 
	(if choices
	    (values attachment-point choices)
	    (mbug "~a cannot be attached anywhere in the present context~%~
		      using the attachment point~a"
		  rspec attachment-point))
	(values attachment-point choices))
      attachment-point)
    (let* ((root-node (name (node *current-phrasal-root*))))
      (mbug "Attachment point ~a is unavailable within a ~a node~%" 
            (name attachment-point) root-node))))

(defgeneric syntax-driven-sources (item)
  (:method ((w word)) nil)
  (:method ((sdn satellite-dt-node))
    (typep (value sdn) ;; or the whole rspec??
           'includes-syntax-driven-choices))
  (:method ((bdtn base-dt-node))
    (typep (resource bdtn) 'includes-syntax-driven-choices)))

(defun check-validity-of-attachment-choice (attachment-choice rspec)
  (let ((attachment-point (choice attachment-choice)))
    (if (available-in-present-context attachment-point)
	(let ((choices (choices-compatible-with-attachment-choice attachment-choice rspec)))
	  (if choices
	      (values attachment-point choices)
	      (mbug "~a cannot be attached anywhere in the present context~%~
		      using the attachment point~a"
		    rspec attachment-point))
	  (values attachment-point choices))
        (mbug "Attachment point ~a is unavailable in the present context~%" 
              attachment-point))))

(defun choose-from-attachment-class-choices (attachment-class rspec)
  (let ((alternative-choices (choices attachment-class))
        usable-aps-and-compatible-choices)
    (dolist (choice alternative-choices)
      (let ((at-pt (choice choice)))
        (landmark 'trying-the-AP at-pt)
        (if (available-in-present-context at-pt)
          (let ((compatible-choices
                 (choices-compatible-with-attachment-choice choice rspec)))
            (when compatible-choices
              (push (cons at-pt compatible-choices) usable-aps-and-compatible-choices)))
          (else (landmark 'not-available-in-context *current-phrasal-root*)))
        ))
    (if usable-aps-and-compatible-choices
      (let ((aps-and-choices (nreverse  usable-aps-and-compatible-choices)))
        (multiple-value-bind
          (ap-to-use its-compatible-choices)
          (cond (*ask-user-about-ambiguous-choice-sets?*
                 (collect-all-usable-APs-and-ask-user aps-and-choices))
                (T
                 (take-the-first-usable-ap-in-class aps-and-choices)))
          (values ap-to-use its-compatible-choices)))
      (mbug "~a cannot be attached anywhere in the present context~%~
             using the attachment class ~a"
            rspec attachment-class))
    ))

(defun choices-compatible-with-attachment-choice (attachment-choice rspec)
  "Returns a list of those choices of Rspec's realization
  class that are consistent with the constraints imposed by
  the attachment point AP."
  (let* ((AP (choice attachment-choice))
	 (spec-kernel (rspec-relevant-to-check  rspec))
	 (rfn (realization-function spec-kernel))
	 (choices (list-of-choices rfn))
	 (*tree-fam-parameter-argument-list*
	      (when (tree-familyp rfn)
                (create-tree-fam-parameter-argument-list rfn
                                                       (parameters rfn)
                                                       (arguments spec-kernel))))
	 compatible-choices)
      (declare (special *tree-fam-parameter-argument-list*))
      (when (attachment-point-characteristics-are-satisfied attachment-choice)
	(dolist (choice choices)
	  ;;filter on realization choices based on ap-type
	  (typecase AP
	    (splicing-attachment-point
	      (let ((constr-label (new-slot AP)))
		(when (characteristics-are-satisfied 
                       choice constr-label *bundle-being-attached*)
		  (push choice compatible-choices))))
	    (lowering-attachment-point
	      (let ((current-label (car (labels *current-position*)))
		    (constr-label (key-position AP)))
		(when (intersection (grammatical-constraints current-label)
                                    (grammatical-constraints constr-label))
                  (when (characteristics-are-satisfied
			  choice constr-label *bundle-being-attached*)       	      
		    (when (and (phrasep (choice choice))
			       (phrase-has-slot
				 (definition (choice choice))
				 constr-label))
		      (push choice compatible-choices))
		    ))))))
	  (nreverse compatible-choices))
      ))

(defun characteristics-are-satisfied  (the-choice
				       constr-label
				       bundle)
  ;;this is essentially the same as choice-is-acceptable,
  ;; in realization
  ;;except that it parameterizes the constr-label
  (if (grammatical-characteristics-are-satisfied
	the-choice constr-label)
      (if (required-accessories the-choice)
	   ;; there are req accessories
	   ;; (only applies to bundles, not kernels
	   (when  (and (bundle-specificationp bundle)
		       (required-accessories-are-satisfied
                        (required-accessories the-choice)
			bundle))
	     (if  (argument-characteristics the-choice)
		  (when (argument-characteristics-are-satisfied the-choice)
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
      nil))

(defun attachment-point-characteristics-are-satisfied (the-at-choice)
  ;;this is essentially the same as choice-is-acceptable, in realization
  ;;except that it parameterizes the constr-label
  (if (ap-required-accessories the-at-choice)
      ;;THEN there are req accessories
      (when (required-accessories-are-satisfied
	      (ap-required-accessories the-at-choice)
	      *bundle-being-attached*)
	(if (ap-parent-required-accessories the-at-choice)
	    ;; there are req accessories
	    (when (required-accessories-are-satisfied
		    (ap-parent-required-accessories the-at-choice)
                    *bundle-being-realized*)
              the-at-choice)
	    the-at-choice))
      
      ;;ELSE no req-access, still need to check req-parent-acc
      (if (ap-parent-required-accessories the-at-choice)
	  ;; there are req accessories
	  (when (required-accessories-are-satisfied
		  (ap-parent-required-accessories
		    the-at-choice)
		  *bundle-being-realized*)
	    the-at-choice)
	  
	  ;;there are no req acc or arg char 
	  the-at-choice))
  )

(defun collect-all-usable-aps-and-ask-user (usable-aps-and-their-compatible-choices)
  (let ((ap-set-to-use
	  (if (null (cdr usable-aps-and-their-compatible-choices))
	      ;;there's only one choice
	      (car usable-aps-and-their-compatible-choices)
	      (or (menu-choose
		    (construct-menu-item-list ;///////////
		      (mapcar #'car
			      usable-aps-and-their-compatible-choices))
			       "Which choice?")
		  (car usable-aps-and-their-compatible-choices))
	      )))
    (values (car ap-set-to-use)
	    (cdr ap-set-to-use))))

(defun take-the-first-usable-ap-in-class (usable-aps-and-their-compatible-choices)
  (let ((ap-set-to-use (car usable-aps-and-their-compatible-choices)))
    (values (car ap-set-to-use)
	    (cdr ap-set-to-use))))

   

(defun phrase-has-slot (phrase label)
  (do* ((element (car phrase) (car rest))
        (rest (cdr phrase) (cdr rest))
        (found (if (consp element)
                 (phrase-has-slot element label)
                 (eq element label))
               (if (consp element)
                 (phrase-has-slot element label)
                 (eq element label))))
       ((or (null rest)
            found)
        found)
    ))

(defun rspec-relevant-to-check (rspec)
  (when rspec
    (etypecase rspec
      (bundle-specification
	(rspec-relevant-to-check (head rspec)))
      ;; if the rspec is nil, this will recurse forever
      (list  ;;bundle is a conjunction, head is a list
	(rspec-relevant-to-check (car rspec)))
      (kernel-specification rspec)
      (word rspec))))


(defun list-of-choices (rfn)
  (etypecase rfn
    (tree-family (choices rfn))
    (single-choice (list rfn))))


(defun specialize-realization-function  (rspec usable-choices)
  (let ((kernel-to-specialize (rspec-relevant-to-check rspec)))
    
    (cond  ((single-choicep (car usable-choices)))
           ;;single-choice--no need to specialize
           
           ((and (null (cdr usable-choices))
                 (consp (car usable-choices)))
            ;;only one tree-fam choice returned and it is
            ;;a parameter of the tree-fam (returned in a list
            (then ;; Attachment has taken us down to a Single-choice, not
              ;; one or more tree-family-choices.  This means we want to
              ;; revise the kernel directly rather than build a
              ;; specialized class per se.
              (let ((the-single-choice (caar usable-choices))
                    (its-kernel        (cdar usable-choices)))
                (set-realization-function kernel-to-specialize the-single-choice)
                (set-arguments kernel-to-specialize (arguments its-kernel)))))
           
           (t  ;; there are several choices, consequently none of them
            ;; can be single choices since they came from an tree-fam
            (let* ((tree-fam (realization-function kernel-to-specialize))
                   (specialized-name (intern (string-append
                                               "A-SPECIALIZATION-OF-"
                                               (symbol-name (name tree-fam)))))
                   (specialized-tree-fam
                    (if (curried-tree-familyp tree-fam)
                      (then (make-curried-tree-family
                             :name specialized-name
                             :parameters (parameters tree-fam)
                             :choices usable-choices
                             :bindings (bindings tree-fam)
                             :reference-tree-family
                             (reference-tree-family tree-fam)))
                      (else
                        (make-tree-family
                         :name specialized-name
                         :parameters (parameters tree-fam)
                         :choices usable-choices)))))
              
              (set-realization-function kernel-to-specialize specialized-tree-fam)))
           )))





;;##################################################
;;    THESE ARE FROM WHEN ATTACHMENT POINTS COULD BE
;;  ATTACHMENT FUNCTIONS -- someday we may want to clean
;;  it up, but not for while!!!  mwm 10/23/88

(defun choices-compatible-with-attachment-point  (at-pt rspec)
  "Returns a list of those choices of Rspec's tree family
   that are consistent with the constraints imposed by
  the attachment point AP."
  (push-debug `(,at-pt ,rspec)) 
  (break "This function needs a makeover after 20 years")
  (let* ((spec-kernel (rspec-relevant-to-check  rspec))
	 (rfn (realization-function spec-kernel))
	 (choices (list-of-choices rfn))
	 (*tree-fam-parameter-argument-list*
	      (when (tree-familyp rfn)
	      (create-tree-fam-parameter-argument-list
			   rfn
			   (parameters rfn)
			   (arguments spec-kernel)))))
      (declare (special *tree-fam-parameter-argument-list*))

    (etypecase at-pt
      (splicing-attachment-point
	(filter-choices-for-splicing-ap at-pt choices))
      (lowering-attachment-point
	(filter-choices-for-lowering-ap at-pt choices)))
    ))

(defun filter-choices-for-splicing-ap (at-pt choices)
  (let ((constr-label (new-slot at-pt))
	compatible-choices)
    (dolist (choice choices)
      (when
	(characteristics-are-satisfied
	  choice constr-label
	  ;;not sure this is really the right thing, but it
	  ;;needs to to deal with conjunction bundles
	  ;;3/7/89
	  (bundle-to-test *bundle-being-attached*))
      (push choice compatible-choices)))
    (nreverse compatible-choices)
    ))

(defun bundle-to-test (rspec)
  (etypecase rspec
    (bundle-specification (if (listp (head rspec)) (car (head rspec)) rspec))
    (list  (car rspec)) ;;bundle is a conjunction, head is a list
    (kernel-specification rspec)
    (word rspec)))



(defun filter-choices-for-lowering-ap (at-pt choices)
  (let ((current-label (car (labels *current-position*)))
        (constr-label (key-position at-pt))
        compatible-choices)
    (dolist (choice choices)
      ;;check that the governing position and new slot
      ;;have the same grammatical characteristics
      (when (equal (grammatical-constraints current-label)
                   (grammatical-constraints constr-label))
        (when (characteristics-are-satisfied
               choice constr-label *bundle-being-attached*)
          (when (and (phrasep (choice choice))
                     (phrase-has-slot (definition (choice choice)) constr-label))
            (push choice compatible-choices))
          )))
    (nreverse compatible-choices)))
