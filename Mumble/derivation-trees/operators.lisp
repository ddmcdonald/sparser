;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; Copyright (c) 2015 David D. McDonald  All Rights Reserved
;;;
;;;  /Mumble/derivation-trees/operators.lisp
;;;  December 2015

;; Initiated 12/7/15 to hold functions that had been scatter though
;; other files which are mostly irrelevant.

(in-package :mumble)

#| These need a substantial makeover to be valid 'derivation tree' 
operations. Which means looking to their callers and seeing what they
wanted to accomplish. |#

(defun general-np ()
  (make-a-bundle 'general-np))


(defun link-to-underlying-object (rspec object)
  (when (specificationp rspec)
    (set-name rspec (if (symbolp object)
			object
			(intern (short-print-form object))))
    (set-underlying-object rspec object))
  rspec)


(defun add-specializing-descriptor  (descriptor np-bundle)
  (add-further-specification np-bundle
			     descriptor
			     (attachment-class-named
			         'restrictive-modifier))
  np-bundle)


(defun set-gender-accessory (np-bundle gender-name)
  (add-accessory np-bundle :gender gender-name))


(defun apply-template (template-name argument-list)
  (let ((template (if (specification-templatep template-name)
		    template-name
                    (specification-template-named template-name))))
    (when (null template)
      (mbug "No specification-template named ~A" template-name))
    (apply (symbol-function (function-from-objects-to-rspecs template))
	   argument-list)))

(defun funcall-template (template-name &rest argument-list)
  (apply-template template-name argument-list))
