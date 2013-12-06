;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; $Id: constructing-bundles.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86:   message-level;constructing-bundles

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.
;;; Copyright (C) 1995-2000,2013 David D. McDonald
;;;   All rights reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

; These are subroutines for use by Templates. They are not expected
; ever to be called at toplevel as a message is being built.
; Their domain is the structure of realization specifications, not
; matters semantic or (even) linguistic.

;; ChangeLog
;;  1/17/95 ddm -- Updated MAKE-A-KERNEL to refer to 'tree-family'
;;    rather than 'realization-class'
;;  3/25 ddm -- added 2d optional argument to ADD-ACCESSORY to mark
;;    that the accessory value is to be taken as is.
;;  3/26 ddm -- added data check to ADD-FURTHER-SPECIFICATION for the 
;;    ap being a symbol.
;;  8/27/00 -- allowed MAKE-A-BUNDLE to take a bundle-type as an
;;    alternative to the name of one.
;;  11/21/13 -- Added add-feature

(in-package :mumble)


;################################################################
;           primitive subroutines for Kernels
;################################################################


(defun make-a-kernel (realization-function &rest arguments)
  (let ((actual-rfn
	  (if (named-objectp realization-function)
	      realization-function
	      (let ((possible-objects
		      (mumble-values
			realization-function
			'(curried-tree-family
                          tree-family
                          single-choice))))
		
		(unless possible-objects
		  (mbug "~A is not the name of any defined realization function"
			realization-function))
		(car possible-objects)))))
    
    (let ((k (make-kernel-specification
	       :realization-function actual-rfn)))
      (when arguments
	(let ((postprocessed-arguments
		(postprocess-arguments-to-a-kernel arguments)))
	  (set-arguments k postprocessed-arguments)))

      k )))



(defun set-kernel-arguments  (kernel &rest raw-arguments)
  "Toplevel form to be used in Templates"
  (set-arguments kernel (postprocess-arguments-to-a-kernel raw-arguments))
  kernel)

(defun postprocess-arguments-to-a-kernel (raw-arguments)
  (let ((postprocessed-arguments))
    (dolist (arg raw-arguments)
      (push (typecase arg
	      (string (word-for-string arg))
	      (symbol
		(if (keywordp arg)
		    (then  ;;convention for model-level objects in Stand-alone
		      (instantiate-mapping arg))
		    (else arg)))
	      (specification  arg)
	      (word           arg)
	      (pronoun        arg)
	      (otherwise
		(instantiate-mapping arg)))
	    postprocessed-arguments))
    (nreverse postprocessed-arguments)))


;################################################################
;           primitive subroutines for Bundles
;################################################################


(defun make-a-bundle (bundle-type-name)
  (make-bundle-specification
   :bundle-type (if (typep bundle-type-name 'bundle-type)
                  bundle-type-name
                  (bundle-type-named bundle-type-name))))



(defun set-bundle-head (bundle specification)
  (when (not (bundle-specificationp bundle))
    (mbug "Asked to operate on ~A, which is not a bundle" bundle))
  (when (head bundle)
    (mbug "~A already has a value in its head-rspec field - ~A"
	  bundle (head bundle)))

  (set-head bundle specification)
  bundle)


(defun add-feature (dtn name &optional value literal?)
  "Copies add-accessory but operates over derivation tree nodes."
  (let ((accessory
         (etypecase name
	    (symbol
	      (if (keywordp name)
		  (accessory-type-named name)
		  (mbug "Accessory types are to be indicated with keywords~%~
                         you used a symbol for ~A in ~A"  name dtn)))))
        (accessory-value
         (if literal?
           value
	   (when value
	     (etypecase value
	       (symbol (or (accessory-value-named value)
			   (label-named value)))	  
	       (accessory-value value)
	       (label value)
	       (specification   value)
	       (list value)
	       (string (word-for-string value)))))))
    (unless (slot-exists-p dtn 'features)
      (error "Can only add features to a derivation-tree-node~
            ~%not a ~a~%~a" (type-of dtn) dtn))
    (push `(,accessory . ,accessory-value)
          (features dtn))))

(defun get-accessory-value (accessory-name dtn &optional complain-if-null?)
  (let* ((accessory-type (accessory-type-named accessory-name))
	 (accessory-pair (assoc accessory-type (features dtn)))
         (value (cdr accessory-pair)))
    (when (and (null value) complain-if-null?)
      (mbug "Caller expected the bundle ~a to have a ~a accessory value, ~
             but it doesn't."
	    dtn accessory-name))
    value))


(defun add-accessory (bundle name &optional value literal?)
  (let ((accessory
         (etypecase name
	    (symbol
	      (if (keywordp name)
		  (accessory-type-named name)
		  (mbug "Accessory types are to be indicated with keywords~%~
                         you used a symbol for ~A in ~A"  name bundle)))
	    (accessory-type name)))
	(accessory-value
         (if literal?
           value
	   (when value
	     (etypecase value
	       (symbol (or (accessory-value-named value)
			   (label-named value)))	  
	       (accessory-value value)
	       (label value)
	       (specification   value)
	       (list value)
	       (string (word-for-string value)))))))

;    (when accessory-value
;      (unless (appropriate-value-for-accessory? accessory accessory-value)
;	(mbug "~A is not a known value for the accessory ~A"
;	      accessory-value accessory)))
      
    (when (not (bundle-specificationp bundle))
      (mbug "Add-accessory of ~A with value ~A~%~
             was called on ~A instead of a bundle"
	    name value bundle))
      
    (let* ((existing-accessories
	     (accessories bundle))
	   (accessories-with-additions
	     (cons (cons accessory accessory-value)
		   existing-accessories)))
      (set-accessories bundle accessories-with-additions)
      accessories-with-additions)))


(defun make-a-further-specification (attachment-function &optional specification)
  (let ((fspec (make-further-specification
		 :attachment-function attachment-function )))
    (when specification
      (set-specification fspec specification))
    fspec))

(defun add-further-specification  (bundle specification attachment-function)
  "Adds to the END of the list of further-specifications already there"
  (when (symbolp attachment-function)
    (let ((name attachment-function))
      (setq attachment-function (or (attachment-point-named name)
                                    (attachment-class-named name)))
      (unless attachment-function
        (break "There is no attachment point or class named:~%  ~A~%"
               name))))

  (let* ((fspec (make-further-specification
		 :specification       specification
		 :attachment-function attachment-function ))
	(existing-further-specifications
	  (further-specifications bundle)))

    (if existing-further-specifications
	(rplacd (last existing-further-specifications)
		(cons fspec
		      nil))
	(setf (further-specifications bundle)
	      (list fspec)))
    bundle))


(defun add-already-built-further-specification (fspec bundle)
  (let ((existing-further-specifications
	  (further-specifications bundle)))

    (if existing-further-specifications
	(rplacd (last existing-further-specifications)
		(cons fspec
		      nil))
	(set-further-specifications bundle (list fspec)))
    bundle))

(defun add-further-specification-shell
       (bundle attachment-function)
  (let ((fspec (make-further-specification
		 :attachment-function attachment-function ))
	(existing-further-specifications
	  (further-specifications bundle)))

    (if existing-further-specifications
	(rplacd (last existing-further-specifications)
		(cons fspec
		      nil))
	(setf (further-specifications bundle)
	      (list fspec)))
    fspec))






(defun make-a-word (string part-of-speech)
  (make-word
    :name (intern string)
    :pname (string-downcase string)
    :word-labels (list (word-label-named part-of-speech))))


(defun add-argument-to-kernel (argument kernel)
  (let ((arg-list (arguments kernel)))
  
  (if arg-list
	(rplacd (last arg-list)
		(cons argument
		      nil))
	(setf (arguments kernel)
	      (list argument)))
  ))





(defun put-spec-on-head-list (spec bundle)
  (when (not (eq (bundle-type bundle)
		 (bundle-type-named 'conjunction-bundle)))
    (mbug "wrong bundle type for this operation"))
  (if (head bundle)
      (nconc (head bundle) (list spec))
      (set-head bundle (list spec)))
  )
