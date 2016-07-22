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
|#

(define-category attribute-type
  :specializes named-type
  :mixins (has-name)
  :instantiates nil
  :documentation "")

(define-category  attribute
  :specializes quality
  :documentation "Sort of the same thing as a predicate 
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
 to Dolce's "  
  :binds ((attribute . attribute)
          (value))
  :index (:permanent :sequential-keys attribute value))


(define-category attribute-of-entity
  :specializes quality ;;???
  :documentation "The relationship between a particular
 entity (the block in my hand, a waypoint, the caterpillar on
 that branch) and the value of some attribute. Corresponds
 to the 'qt' relation in Dolce. "
  :instantiates :self
  :binds ((attribute (:or attribute-value attribute))
          (entity))
  :rule-label attribute
  :index (:sequential-keys entity attribute))
