;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2005,2010-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:categories:"
;;;  version:  April 2014

;; broken out from [object] file 8/12/94. Added category-p 9/12/98
;; 3/26/00 Added a rnodes field to referential categories.
;; 2/7/05 Added subtyped-category.
;; 11/9/10 Added 'class' field to referential-category. Took it out on the 11th
;;  because even with a full recompile it couldn't access the slot -- was
;;  always declared out of range. 
;; 4/15/14 Moved mix-ins slot to model-category so it gets inherited by
;;  mixin-category as well as referential-category.
;; 5/9/14 Putting some flesh on subtyped-category.


(in-package :sparser)


;;;----------------------------------------------
;;; categories in the model vs. just the grammar
;;;----------------------------------------------

(defstruct (model-category
            (:include category)
            (:conc-name #:cat-)
            (:print-function print-model-category-structures))

  slots     ;; a list of the #<variable>s that this category binds. 
            ;; Given in the definition as a list of variable-name,
            ;; value-restrictionpairs

  binds     ;; a list of bindings


  mix-ins   ;; a list of categories of any type


  realization  ;; a structure representing how individuals with this
               ;; category are given in language

  lattice-position  ;; a #<lattice-point> representing where this
                    ;; category fits in the type-hierarchy and
                    ;; anchoring the partial saturation lattice
                    ;; below it.

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

  instances  ;; a structure by which to gain access to objects with
             ;; this category -- its "catalog"

  rnodes ;; a list of realization-nodes reflecting the different ways
         ;; this category (typically as the head of some larger phrase
         ;; has been realized.

  )


;;;---------------------------------------------------------------------
;;; automatically created by the parser's rules or load-time equivalent
;;;---------------------------------------------------------------------

#| This is one way to make a 'derived category' as per the Krisp paper.
   For now the connection to the category it's derived from is just via
   the lattice point, which will be a subtype-lattice-point.  If there
   come to be other ways of synthetically constructing derived categories
   in the course of a parse then there will likely be other typing
   category types like this one.  |#

(defstruct (subtyped-category
            (:include referential-category)
            (:conc-name #:cat-)
            (:print-function print-subtype-category-structures))
  ;; Besides the slots from referential and model structures
  ;; we have to remember that we've got symbol and rule-set
  ;; slots from label by way of thevanilla category struct.
  ;; We use the inherited mix-in slot to hold the specializer
  ;; and the lattice-position now holds a subtype-lattice-point.

  specialized-class ;; caches the CLOS sclass
  
  )



;;;---------------------------------------------------
;;; those you can only mix-in to form specializations
;;;---------------------------------------------------

(defstruct (mixin-category
            (:include model-category)
            (:conc-name #:cat-)
            (:print-function print-mixin-category-structures))
  )





;;--- generic type check

(defun category-p (unit)
  (or (typep unit 'mixin-category)
      (typep unit 'subtyped-category)
      (typep unit 'referential-category)
      (typep unit 'model-category)
      (typep unit 'category)))
