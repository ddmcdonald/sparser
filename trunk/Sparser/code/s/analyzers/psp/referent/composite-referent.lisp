;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2005,2012 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "composite referent"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   0.1 November 2012

;; initiated 4/12/00. Extended through 5/4.
;; 0.1 (2/9/05) Can't remember what this helped to do. Perhaps it's involved with
;;   annotation. So commenting out the structure to see what breaks. Added
;;   and ignore 11/25/12 to quiet the compiler.

;;;---------
;;; object
;;;---------
#|
(defstruct (composite-referent
            (:conc-name #:cr-)
            (:print-function print-composite-referent))

  head

  others

  )
|#

(defun print-composite-referent (cr stream depth)
  (declare (ignore depth cr))
  (format stream "#<composite >"))


;;;----------------------------------
;;; accessors (various entry points)
;;;----------------------------------

(defun composite-referent-p (edge)
  (let ((referent (edge-referent edge)))
    (when (typep referent 'composite-referent)
      referent)))


(defun all-the-categories-in-a-composite (composite)
  (unless (typep composite 'composite-referent)
    (error "Threading error: ~a isn't a composite" composite))
  #+ignore
  (let ( categories )
    (push (category-of (cr-head composite)) categories)
    (dolist (referent (cr-others composite))
      (push (category-of referent) categories))
    (nreverse categories)))
