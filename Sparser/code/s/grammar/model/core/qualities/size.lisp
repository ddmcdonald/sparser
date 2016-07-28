;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "size"
;;;   Module:  "grammar/core/qualities/
;;;  version:  July 2015

;; Initiated 12/3/15, on the model of color.

(in-package :sparser)

(defmacro define-the-attribute-size ()
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
           ;;(field-rule-label )
           )
    `(progn
       (define-category ,mixin-name
           :specializes relation
           :binds ((,var-name ,v/r-category)))

       #+ignore(define-individual attribute
                   :name ,attribute-word)
       (define-category ,attribute-name
           :specializes attribute
           :bindings (var
                       (find-variable-for-category
                        ',var-name ',mixin-name))
           :realization (,attribute-pos ,attribute-word))

       (define-category ,attibute-field-name
           :specializes attribute-value-field
           :bindings (attribute ',attribute-name)
           ;; :rule-label ,field-rule-label
           :realization (,field-pos name))

       (defun ,instance-maker (string)
         (define-or-find-individual ',attibute-field-name
             :name string))
       ))))

(define-the-attribute-size)
#|

(define-category size
  :specializes attribute
  :bindings (var (find-variable-for-category 'size 'has-size))
  :realization (:common-noun "size")
  :documentation "Represents size per se as the identity of
 the size attribute (quality). Note that the word 'size' will
 have this category as its referent")

(define-category size-value
  :specializes attribute-value
  :bindings (attribute 'size)
  :rule-label size  ;;/// 'attribute' ?
  :realization (:adjective name)
  :documentation "This is for representing the qualitative
 values for sizes as instances. Define-size does this.
 It's a good question what the most useful / perspicuous
 category label should be on these edges, so a different
 value for ':rule-label' might be in order..")


(define-category is-size
  :specializes attribution
  :bindings (attribute 'size)
  :documentation "Instances of this category associate a value
    with the attribute 'size', representing the fact that
    in the present circumstances we have a size of a certain
    value. The result is a predicate.")

(define-category of-size ;; "with-" ??
  :specializes has-attribution
  :restrict ((entity has-size)
             (attribution is-size))
  :documentation "Says that a particular entity is of a size
    with a particular value. Anything that makes an instance
    of this category should also bind the size variable on
    the entity.")

(define-category size-of
  :specializes attribute-of-entity
  :bindings (attribute 'size))
|#
;;--- actual size values (move to dossier for qualities)
#|
(defun define-size (string) ;; syntactic sugar
  (define-or-find-individual 'size-value :name string))
|#
;; a few cases as need for trival blocks world
(define-size "big")
(define-size "little")


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
