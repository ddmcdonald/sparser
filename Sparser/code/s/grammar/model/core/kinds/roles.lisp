;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "predicate"
;;;   Module:  "model;core:kinds:"
;;;  version:  December 2017

;; To move all the standard thematic roles up to a place that
;; loads early so they're available for restriction as lower levels
;; of the hierarchy. Written as mixins without restrictions.

(in-package :sparser)

(define-mixin-category with-an-agent ;; deprecated in favor of 'agent'
  ;;:specializes relation
  :binds ((agent (:or pronoun physical-agent))))
;; Dolce has 'agency' as the union of physical and social agent

;;/// replaces with-an-agent
(define-mixin-category agent
  ;;:specializes relation
  :binds ((agent))
  :documentation "Participant that intentionally initiates
    the action.")

(define-mixin-category actor
  ;;:specializes relation
  :binds ((actor))
  :documentation "The entity that performs the action.
    No implied agency. No obvious specified type.")

(define-mixin-category takes-adverb
  ;;:specializes relation
  :binds ((adverb)))

(define-mixin-category with-attribute
  ;;:specializes relation
  :binds ((attribute))
  :documentation "Binds a property that is being attributed
    to another participant in the relation. Very closely
    related to the category 'attribute' (in kinds/attribution.lisp)
    which has an elaborate analysis that's based on associating
    attributes with specific variables and mixins designed to
    characterize what one can say about some class of stuff.
    Named chosen to deconfict with this other 'attribute' and
    its predication 'has-attribute'.")

(define-mixin-category beneficiary
  ;;:specializes relation
  :binds ((beneficiary))
  :documentation "")

(define-mixin-category cause
  ;;:specializes relation
  :binds ((cause))
  :documentation "")

(define-mixin-category destination
  ;;:specializes relation
  :binds ((destination))
  :documentation "")

(define-mixin-category extent
  ;;:specializes relation
  :binds ((extent))
  :documentation "")

(define-mixin-category source
  ;;:specializes relation
  :binds ((source))
  :documentation "")

(define-mixin-category material
  ;;:specializes relation
  :binds ((material))
  :documentation "")

(define-mixin-category product
  ;;:specializes relation
  :binds ((product))
  :documentation "")

(define-mixin-category experiencer
  ;;:specializes relation
  :binds ((experiencer))
  :documentation "Participant that is aware of something
    pertaining to the event.")

(define-category has-location
  ;;:specializes relation
  :binds ((location location))
  :documentation "Said of something that must have a location
    Supplies a location variable whose value says where
    this thing is.")

(define-mixin-category patient
  ;;:specializes relation
  :binds ((patient))
  :documentation "The participant that is affected by the action.")

(define-mixin-category theme
  ;;:specializes relation
  :binds ((theme))
  :documentation "Often characterized as the thing that moves.
    Specialized (restricted) by move.")

(define-mixin-category instrument
  ;;:specializes relation
  :binds ((instrument))
  :documentation "")

(define-mixin-category goal
  ;;:specializes relation
  :binds ((goal))
  :documentation "")

(define-mixin-category recipient
  ;;:specializes relation
  :binds ((recipient))
  :documentation "")

(define-mixin-category asset
  ;;:specializes relation
  :binds ((asset))
  :documentation "")

(define-mixin-category topic
  :binds ((topic))
  :documentation "")

(define-mixin-category stimulus
  :binds ((stimulus))
  :documentation "")
