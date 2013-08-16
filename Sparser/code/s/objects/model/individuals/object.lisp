;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:individuals:"
;;;  version:  0.3 August 2013

;; initiated 7/16/92 v2.3
;; (6/8/93) added Indiv-typep
;; (8/7/94) added itypep as respelling of Indiv-typep and i-type-of
;; 0.1 (3/3/95) modified i-type-of to not break if it is passed an object
;;      other than an individual
;; 0.2 (9/13) extended indiv-typep to look up the lattice
;; 0.3 (8/14/13) Since itypep may be used in cases where its argument
;;      is a category (head word) rather than an individual, added a
;;      diversion for that case.

(in-package :sparser)

;;;-------------------------------
;;; basic operations & predicates 
;;;-------------------------------

(defun itype-of (i) (i-type-of i))

(defun i-type-of (i)
  (typecase i
    (psi (base-category-of-psi i))
    (individual
     (let ((type-field (indiv-type i)))
       (values (car type-field)
               type-field)))
    (otherwise
     (push-debug `(,i))
     (error "i-type-of applied to a ~a rather than ~
             an individual" (type-of i)))))



(defun itypep (i c/s) 
  (typecase i
    (individual
     (indiv-typep i c/s))
    (referential-category
     (category-inherits-type? i (category-named c/s :break-if-none)))
    (otherwise
     (push-debug `(,i ,c/s))
     (error "indiv-typep not applied to an individual:~%~a  ~a"
            (type-of i) i))))

(defun itype (i c/s)
  (indiv-typep i c/s))

(defun indiv-typep (individual category/symbol)
  ;; analogous to Typep -- does this individual include this
  ;; category in its type field
  (let ((category (category-named category/symbol :break-if-none)))
    (typecase individual
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
             (values t (i-type-of individual))))))
      (otherwise
       (push-debug `(,individual ,category/symbol))
       (error "indiv-typep not applied to an individual:~%~a  ~a"
              (type-of individual) individual)))))
