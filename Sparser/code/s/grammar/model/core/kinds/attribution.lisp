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
 c. Have a particular family of realizations:
    - "the block is red."
    - "the red block"
    - "red is the color of this block"
//////////
  2. Red is a color.
   3. This block has a color.
   4. The color of this block has faded.
 
|#
#| Implementation


It also bears some relationship (as yet undefined)
 to the variable that hold the value -- at least they
 will have the name name. |#

(define-category attribute-type
  :specializes named-type
  :mixins (has-name)
  :instantiates nil
  :documentation "Represents the identity of the attribute
 as such. Corresponds to Dolce's 'quality type'.

Linguistically it can provide the name of the
 attribute.
")

(define-category  attribute
  :specializes quality
  :documentation "This is for values that an attribute
 can take. Dolce would say that this is defines the
 'region' or 'space' within which the values reside

Sort of the same thing as a predicate 
 or a property but emphasizes the point that it will be
 an attribute of 'something', which is a narrower notion.
 Obvious attributes are color, size, or weight. "
  ;; 'propensity to over eat'
  ;; Sort out with operator discussion just below.
  ;; in some cases a sublass of attribute will specialize
  ;; scalar quality. 
  :instantiates :self
  :binds ((name :primitive word)))


(define-category  attribute-value    
  :specializes predication
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
          (value attribute))
  :index (:permanent :sequential-keys attribute value))


(define-category attribute-of-entity
  :specializes quality ;;??? what about attribute's superc
  :documentation "The relationship between a particular
 entity (the block in my hand, a waypoint, the caterpillar on
 that branch) and the value of some attribute, packaged
 as as an attribute-value. When the value changes ('the rose
 fades'), that is represented by changing the value of the
 attribute variable to a different instance of attribute-value. 
 Corresponds to the quality ('qt)' relation in Dolce."
  :instantiates :self
  :binds ((attribution attribute-value))
          (entity))
  ;; :rule-label attribute
  :index (:sequential-keys entity attribution))
