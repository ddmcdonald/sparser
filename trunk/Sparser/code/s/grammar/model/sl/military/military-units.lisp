;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2012  David D. McDonald  -- all rights reserved

;;;     File:  "military-units"
;;;   Module:  model/sl/military
;;;  version:  November 2012

;; Initiated 2/22/07. Moved in to generic military and tweaked 11/24/12

(in-package :sparser)

;;;------
;;; type
;;;------

(define-category type-of-military-unit
  :specializes kind
  :instantiates :self
  :binds ((name :primitive word)
	  (abbreviations  :primitive list))
  :realization (:common-noun name))


(defun define-type-of-military-unit (name &key abbreviations)
  (let ((label (category-named 'type-of-military-unit))
	(obj (define-individual 'type-of-military-unit
	       :name name)) ;; creates the first rule
	additional-rules )

    (when abbreviations
      (dolist (string abbreviations)
	(let ((word (resolve-string-to-word/make string)))
	  (push (define-cfr label `(,word)
		  :form category::common-noun
		  :referent obj)
		additional-rules))))
    
    ;; Need to stash the additional-rules onto the plist so they
    ;; can be managed, but the plist looks a bit mangled.
    ;; Holding off until the opportunity to clean it off arises.

    obj))

;;;------------------
;;; particular units
;;;------------------

(define-category military-unit
  :specializes kind  ;;/// fix
  :instantiates self
  :binds ((type . military-unit-type)
          (force . military-force)))

