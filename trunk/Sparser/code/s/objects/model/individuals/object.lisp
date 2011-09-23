;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:individuals:"
;;;  version:  0.3 February 2005

;; initiated 7/16/92 v2.3
;; (6/8/93) added Indiv-typep
;; (8/7/94) added itypep as respelling of Indiv-typep and i-type-of
;; 0.1 (3/3/95) modified i-type-of to not break if it is passed an object
;;      other than an individual
;; 0.2 (9/13) extended indiv-typep to look up the lattice
;; 0.2 (2/14/05)

(in-package :sparser)

;;;-------------------------------
;;; basic operations & predicates 
;;;-------------------------------

(defun itype-of (i) (i-type-of i))

(defun i-type-of (i)
  (etypecase i
    (psi (base-category-of-psi i))
    (individual
     (let ((type-field (indiv-type i)))
       (values (car type-field)
               type-field)))))



(defun itypep (i c/s) (indiv-typep i c/s))

(defun itype (i c/s)
  (indiv-typep i c/s))

(defun indiv-typep (individual category/symbol)
  ;; analogous to Typep -- does this individual include this
  ;; category in its type field
  (let ((category (etypecase category/symbol
                    (symbol (category-named category/symbol))
                    (referential-category category/symbol)
                    (mixin-category category/symbol))))
    (when (and (symbolp category/symbol)
               (null category))
      (break "There is no category named ~A" category/symbol))

    (etypecase individual
      (psi (or (eq category (base-category-of-psi individual))
               (individual-inherits-type? individual category)))
      (individual 
       (if (member category (indiv-type individual) :test #'eq)
         ;; then the immediate type-field satisfies the check
         t
         ;; otherwise lets look at the supercategories
         (let ((inherits-it? (individual-inherits-type? individual
                                                        category)))
           (when inherits-it?
             (values t (i-type-of individual)))))))))
