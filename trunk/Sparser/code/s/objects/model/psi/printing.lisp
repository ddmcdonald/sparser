;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1999 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printing"
;;;   Module:  "objects;model:psi:"
;;;  version:  September 1999

;; initiated 2/14/99 excerpting from the original all-in-one printing file.
;; 5/18 hacked pprint-psi to handle the inital, empty psi objects.
;; 9/3 Added a *psi* symbol that's bound whenever a psi is printed.

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
  (unless (eq (psi-type psi) 'this-is-just-a-stub)          
    (let ((name (value-of 'name psi)))
      (if name
        (pprinc-unit name stream)
        (else
          (princ-category (category-of-psi psi) stream)))))
  (format stream " ~a" (psi-id psi)))
