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

This treatment is intended as an implementation of Dolce's
analysis of qualities. That analysis was designed to account
for the long-standing issue of values changing ("the temperature
is falling") without any effect on the value as an object,
i.e. nothing has happened to temperature, rather the falling
is the measure of the temperature is a particular place / situation.
Their examples are about the color of roses.

This might not be appropriate for everything someone could
construe as a property. The paradigm case for which it's
intended is for attributes that:
 a. Have a simple name
 b. The values can be expressed as adjectives
 c. Have a particular family of realizations such as:
    - "the block is red."
    - "the red block"
    - "the color of this block (is red)"
    - "red is a color" (only incidentally - not part of attribution)

This treatment builds a lot of individuals for something as 'simple'
as "the block is red", but it gives us a semantic for every part
of this set of phrases, which is important in generation where we
frequently need to distribute parts to different places, notably
in conjunctions, and want to retain as much knowledge of the whole
of the relation as possible.

In most cases, there will alo be a simple variable that will 
hold the attribute and a relation that provides the variable
to use as a mixin. That might be considered to be redundant
(or sufficent by itself), but this framework is should provide
more expressive options than an variable could on its own. 

There had been a facility for automatically generating attribute
categories and a corresponding semantic grammar from a simple
description (see model/core/qualities/attribute.lisp). When this
is shaken down we should do that again.

|#

;;--- "size", "color"
;;
(define-category attribute
  :specializes named-type
  :mixins (has-name)
  :binds ((var :primitive lambda-variable))
  :instantiates nil
  :documentation "Represents the identity of the attribute
 as such. Corresponds to Dolce's 'quality type'. Refering to
 an attribute by name ('(its) size') will take us to a
 specialization of this category.")

;;--- "red", "big"
;;
(define-category attribute-value
  :specializes abstract-region ;; more like point in the region
  :instantiates :self
  :mixins (has-name)
  :binds ((attribute :primitive category)) ;; to the attribute (backptr)
  :index (:permanent :key name)
  :documentation "This is for the values that an attribute
 can take. Dolce would say that this is defines the
 'region' or 'space' within which the values reside.")

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
