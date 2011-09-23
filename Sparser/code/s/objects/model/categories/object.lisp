;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:categories:"
;;;  version:  0.2 June 1993

;; copied over from objects;chart 9/1/92 v2.3
;; 0.1 (10/13) Decomposed referential categories and added mixins
;; 0.2 (6/2/93) shifted the operations field so that both referential and
;;      mixin categories would include it

(in-package :sparser)

;;;----------------------------------------------
;;; categories in the model vs. just the grammar
;;;----------------------------------------------

(defstruct (model-category
            (:include label)
            (:conc-name #:cat-)
            (:print-function print-model-category-structures))

  slots     ;; a list of the #<variable>s that this category binds. 
            ;; Given in the definition as a list of variable-name,
            ;; value-restrictionpairs

  binds     ;; a list of bindings

  realization  ;; a structure representing how individuals with this
               ;; category are given in language

  lattice-position  ;; a #<lattice-position> representing where this
                    ;; category fits in the type-hierarchy

  operations  ;; a #<operations> object.  Constructed automatically to
              ;; fit the specifications (initially) in the index field.
  )


;;;---------------------------
;;; those you can instantiate
;;;---------------------------

(defstruct (referential-category
            (:include model-category)
            (:conc-name #:cat-)
            (:print-function print-ref-category-structures))

  mix-ins   ;; a list of referential-categories

  instances  ;; a structure by which to gain access to objects with
             ;; this category -- its "catalog"
  )


;;;---------------------------------------------------
;;; those you can only mix-in to form specializations
;;;---------------------------------------------------

(defstruct (mixin-category
            (:include model-category)
            (:conc-name #:cat-)
            (:print-function print-mixin-category-structures))
  )



;;;----------------
;;; print routines
;;;----------------

(defun print-ref-model-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<model-category " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))

(defun print-ref-category-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<ref-category " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))

(defun print-mixin-category-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<mixin " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))

