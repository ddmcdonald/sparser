;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1999-2000,2011,2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:psi:"
;;;  version:  1.1 October 2015

;; initiated 2/14/99 pulling bits and pieces from other files. 
;; Continued populating it through 2/15. 9/6 Corrected the definition
;; of Category-of-psi to appreciate that the type field is a list.
;; 3/26/00 Added Corresponding-lattice-point.
;; 6/18 added is-open-in
;; 1.0 (7/22/09) fan-out from variable and psi make-over. Redid category-of-psi
;;  now that we can avoid climbing. Working on it through 8/7
;;  (3/21/11) Added saturated? predicate.
;; 1.1 (10/9/15) Removed saturated? and corresponding-lattice-point
;;  to the LP operations file with an eye towards conditionaling the
;;  loading of the whole psi directory on whether the don't use flag
;;  is up.

(in-package :sparser)

;;;-----------
;;; accessors
;;;-----------

(defun category-of-psi (psi)
  psi) ;;(base-category-of-psi psi))

(defun find-variable-in-psi/named (symbol psi)
  (find-variable-in-category/named 
   symbol (category-of-psi psi)))

(defun is-open-in (psi variable)
  (let ((lp (corresponding-lattice-point psi)))
    (memq variable (lp-variables-free lp))))

