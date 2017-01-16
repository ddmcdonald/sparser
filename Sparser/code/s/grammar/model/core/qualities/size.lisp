;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "size"
;;;   Module:  "grammar/core/qualities/
;;;  version:  July 2015

;; Initiated 12/3/15, on the model of color.

(in-package :sparser)



  

#+ignore(defmacro define-the-attribute-size ()
  "By-hand case to see the pattern that gets abstracted
   to a macro"
  (flet ((sintern (&rest strings)
           (intern (apply #'string-append strings)
                   (find-package :sparser))))
    (let* ((var-name 'size)
           (v/r-category 'size)
           (mixin-name (sintern '#:has- var-name))
           (attribute-name 'size)  ;; only if the attribute
           (attribute-word "size") ;; is a category
           (attribute-pos :common-noun)
           (attibute-field-name (sintern var-name '#:-value))
           (instance-maker (sintern '#:define- var-name))
           (field-pos :adjective)
           (field-rule-label 'size))

      `(progn
         ;; Suppose the name of the attribute
         ;; is 'size' and we're using all defaults
         
         ;; mixin-name: has-size
         ;; var-name: size
         ;; v/r-category: size
         (define-category ,mixin-name
           :specializes relation
           :binds ((,var-name ,v/r-category)))

         ;; attribute-name: size
         ;; attribute-pos: :common-noun
         ;; attribute-word: "size"
         (define-category ,attribute-name
           :specializes attribute
           :bindings (var
                       (find-variable-for-category
                        ',var-name ',mixin-name))
           :realization (,attribute-pos ,attribute-word))

         ;; attribute-field-name: size-value
         ;; attribute-name: size
         ;; field-rule-label size
         ;; field-pos: :adjective
         (define-category ,attibute-field-name
           :specializes attribute-value
           :bindings (attribute ',attribute-name)
           :rule-label ,field-rule-label
           :realization (,field-pos name))

         ;; instance-maker: define-size
         (defun ,instance-maker (string)
           (define-or-find-individual ',attibute-field-name
               :name string))   ))))






#| lifted from biology/terms-to-move

We could treat this a a property (inherited variable) 
on physical objects -- would benefit from a organized
notion of dimension since height/weight/etc are also
properties.
 -- "the size of the modification" (dry-run #18),
"the size of Trump's ego", "the size of the effect"

So it's not phys. obj.  It's more like if we talk about
the size of something we're imposing a perspective on it
that it's a measurable scalar. 

(define-category size :specializes abstract
  :binds ((measured-item biological))
  :realization
  (:noun "size" :of measured-item))

|#


"   Consult the discussion and documentation on the classes
 for why we
1. has-<name> - Category
 For mixing in the fact that a certain category
 can take modifiers/properties of this sort.
 a. Provides the variable that will be bound.
  The name of the variable is the same as the
  name of the attribute
 b. This category is its value restriction.

2. <name> - Category
Represents the attribute per se. 
    Represents size per se as the identity of
 the size attribute (quality). Note that the word 'size' will
 have this category as its referent

This is for representing the qualitative
 values for sizes as instances. Define-size does this.
 It's a good question what the most useful / perspicuous
 category label should be on these edges, so a different
 value for ':rule-label' might be in order.."
