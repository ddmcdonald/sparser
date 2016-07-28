;;; -*- Mode: Lisp; Syntax: Common-lisp; Package: sparser; -*-
;;; Copyright (c) 2010-2016 David D. McDonald 
;;;
;;;            "attribution"
;;;   Module:  "model;core:kinds:"
;;;  version:  July 2016

(in-package :sparser)

#| This is a conceptualization of the relationships among
an entity, its properties ('qualities'), the value of those
properties at a given moment, and the spaces of those values
per se, independent of any of the things that could have them. 

For any attribute, we want to represent

-- A category that says that the attribute is applicable.
It would typically be used as a mixin, and supplies the
variable to which values of the attribute are bound.

-- A category for the values the attribute can have. 
For values that have names ("red", "fast", "tall"),
we represent them as instance of this category.

-- The attribute per se. Assuming the attribute is the sort
that has a simple name ("color", "speed", "height") this
representation will supply the referent for the edge over
that word.

-- Because you can talk about an attribute and the thing
is a phrase in a maximal projection ("the color of the block",
"the block's color"), there ought to be a way to represent
that. 

-- There are other linguistic factorings of the triple of
attribute, value, and object to which it applies. And there
will need to be 'carriers' for tense/aspect and presumably
the context(s) in which the triple is germane. 

-- For instance there is a predicate projected just from
the value. The simple gloss of this might be, e.g. "being tall".
But we can't just use the attribute value for this, since
we need to be able to represent, e.g. "are never tall.",
so the representation of this predicate needs the right hooks.

-- If think about predicates then we naturally think about
the predications that arise from applying the predicate to
a 'subject', e.g. "southern Chinese girls are never tall"



|#

;;--- "size", "color"
;;
(define-category attribute
  :specializes named-type
  :instantiates :self
  :mixins (has-name)
  :binds ((var :primitive lambda-variable))
  :index (:permanent :key name)
  ;; :rule-label 
  ;; :realization (:common-noun name)
  :documentation "Represents the identity of the attribute
 as such. Corresponds to Dolce's 'quality type'. Refering to
 an attribute by name ('(its) size') will take us to a
 instance of this category. Provides a 'coat-hook'
 for recording ancilary information that helps in parsing,
 notably the variable.")

;;--- "red", "big"
;;
(define-category attribute-value-field
  :specializes abstract-region ;; more like point in the region
  :instantiates :self
  :mixins (has-name)
  :binds ((attribute :primitive category))
  :index (:permanent :key name)
  :documentation "This is for the values that an attribute
 can take. Dolce would say that this is defines the
 'region' or 'space' within which the values reside.
 We record the attribute as part of this class to make
 it easier to do something sensible if all you have
 is a word, as in 'red block'.")




#|
;;--- "is red"  "(its) color is red"
;;
(define-category attribution
  :specializes predicate
  :documentation "The relationship between some attribute
 and the value that it has. It reflects the value of the
 attribute at a particular moment / in a particular situation
 and tacitly for a particular individual. Loosely corresponds
 to Dolce's quale ('ql') relation. Instances of this relation
 don't need to be object-specific -- any number of things
 could have the same color, be of the same height, etc. 
 They should all make referent to the same attribute-value
 instance."  
  :binds ((attribute :primitive category)
          (value attribute-value))
  :index (:permanent :sequential-keys attribute value))

;;--- "the block is red"
;;
(define-category has-attribution
  :specializes predication
  :documentation "The relationship between a particular
 entity (the block in my hand, a waypoint, the caterpillar on
 that branch) and the value of some attribute, packaged
 as as an attribute-value. When the value changes ('the rose
 fades'), that is represented by changing the value of the
 attribution variable to a different instance of attribute-value. 
 Corresponds to the quality ('qt)' relation in Dolce."
  :instantiates :self
  :binds ((entity)
          (attribution attribution))
  :index (:sequential-keys attribution entity))

;;--- "the color of the block"
;;
(define-category attribute-of-entity
  :specializes quality
  :binds ((attribute :primitive category)
          (entity))
  :documentation "Represents that there is a particular
 attribute on a particular entity without concern for what
 value it has."
  :index (:permanent :sequential-keys attribute entity))
|#
