;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1999 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "printing"
;;;   Module:  "objects;model:psi:"
;;;  version:  1.0 July 2009

;; initiated 2/14/99 excerpting from the original all-in-one printing file.
;; 5/18 hacked pprint-psi to handle the inital, empty psi objects.
;; 9/3 Added a *psi* symbol that's bound whenever a psi is printed.
;; 1.0 (7/23/09) Reworked to go along with real use of a resource.

(in-package :sparser)

;;;-------------------
;;; for the structure
;;;-------------------

(defvar *psi* nil)

(defun print-partially-saturated-individual-structure (psi stream depth)
  (declare (ignore depth))
  (setq *psi* psi)
  (write-string "#<psi " stream)
  (pprint-psi psi stream)
  (write-string ">" stream))


;;;----------------------------
;;; The contents by themselves
;;;----------------------------

(defun pprint-psi (psi &optional (stream *standard-output*))
  ;; A simple phrase if possible. Ultimately this could hook into the generator
  (cond
    ((eq (psi-type psi) :never-used)
     (format stream "never-used"))
    ((eq (psi-type psi) :freshly-allocated)
     (format stream "freshly allocated"))
;    ((value-of 'name psi)
;; Great idea, but there isn't a name property on psi (yet)
;     (pprinc-unit (value-of 'name psi) stream))
    ((category-of-psi psi) ;; a type has been assigned and can be tracked
     (princ-category (category-of-psi psi) stream))
    (t ))
  (format stream " ~a" (cadr (member :uid (unit-plist psi)
				     :test #'eq))))
