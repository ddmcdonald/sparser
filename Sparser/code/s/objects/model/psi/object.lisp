;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1999-2000 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:psi:"
;;;  version:  June 2000

;; initiated 2/14/99 pulling bits and pieces from other files. 
;; Continued populating it through 2/15. 9/6 Corrected the definition
;; of Category-of-psi to appreciate that the type field is a list.
;; 3/26/00 Added Corresponding-lattice-point.
;; 6/18 added is-open-in

;;;-----------
;;; accessors
;;;-----------

(defun corresponding-lattice-point (unit)
  (typecase unit
    (psi
     (psi-lattice-point unit))
    (individual
     (cat-lattice-position (first (indiv-type unit))))
    ;; Do individuals and categories point to the same lattice point for
    ;; purposes of recording realization-nodes? 
    (referential-category 
     (cat-lattice-position unit))
    (otherwise
     (error "It doesn't make sense (or does it) to look up the ~
             lattice-point of a~%~a" unit))))


(defun category-of-psi (psi)
  (let ((top-node-category-field
         (lp-category (climb-lattice-to-top (psi-lattice-point psi)))))
    (if (listp top-node-category-field)
      (first top-node-category-field)
      top-node-category-field)))


(defun find-variable-in-psi/named (symbol psi)
  (find-variable-in-category/named 
   symbol (category-of-psi psi)))


(defun is-open-in (psi variable)
  (let ((lp (corresponding-lattice-point psi)))
    (memq variable (lp-variables-free lp))))

