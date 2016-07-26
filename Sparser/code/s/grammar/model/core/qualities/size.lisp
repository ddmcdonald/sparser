;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "size"
;;;   Module:  "grammar/core/qualities/
;;;  version:  July 2015

;; Initiated 12/3/15, on the model of color.

(in-package :sparser)

(define-mixin-category has-size
  :specializes relation
  :binds ((size size)))

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
  :rule-label size  ;;// would 'attribute' be more useful in grammar?
  :realization (:adjective name)
  :documentation "This is for representing the qualitative
 values for sizes. It's analogous to a measurement of
 a scalar like length. It is not attributing this size
 to some object. That is is the purpose of size-of
   In Dolce's terms, this is defining the 'region' that
 contains the possible values of a size.")


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

;;--- actual size values (move to dossier for qualities)

(defun define-size (string) ;; syntactic sugar
  (define-or-find-individual 'size-value :name string))

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
