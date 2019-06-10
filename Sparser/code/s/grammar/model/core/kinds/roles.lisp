;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "predicate"
;;;   Module:  "model;core:kinds:"
;;;  version:  June 2019

;; To move all the standard thematic roles up to a place that
;; loads early so they're available for restriction as lower levels
;; of the hierarchy. Written as mixins without restrictions.

(in-package :sparser)

(define-mixin-category with-an-agent ;; deprecated in favor of 'agent'
  ;;:specializes relation
  :binds ((agent))) ;; (:or pronoun physical-agent)
;; Dolce has 'agency' as the union of physical and social agent

;;/// replaces with-an-agent
(define-mixin-category with-agent
  ;;:specializes relation
  :binds ((agent))
  :documentation "Participant that intentionally initiates
    the action.")

(define-mixin-category with-actor
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

(define-mixin-category with-beneficiary
  ;;:specializes relation
  :binds ((beneficiary))
  :documentation "")

(define-mixin-category with-cause
  ;;:specializes relation
  :binds ((cause))
  :documentation "")

(define-mixin-category with-destination
  ;;:specializes relation
  :binds ((destination))
  :documentation "")

(define-mixin-category with-extent
  ;;:specializes relation
  :binds ((extent))
  :documentation "")

(define-mixin-category with-source
  ;;:specializes relation
  :binds ((source))
  :documentation "")

(define-mixin-category with-material
  ;;:specializes relation
  :binds ((material))
  :documentation "")

(define-mixin-category with-product
  ;;:specializes relation
  :binds ((product))
  :documentation "")

(define-mixin-category with-experiencer
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

(define-mixin-category with-patient
  ;;:specializes relation
  :binds ((patient))
  :documentation "The participant that is affected by the action.")

(define-mixin-category with-theme
  ;;:specializes relation
  :binds ((theme))
  :documentation "Often characterized as the thing that moves.
    Specialized (restricted) by move.")

(define-mixin-category with-instrument
  ;;:specializes relation
  :binds ((instrument))
  :documentation "")

(define-mixin-category with-goal
  ;;:specializes relation
  :binds ((goal))
  :documentation "")

(define-mixin-category with-recipient
  ;;:specializes relation
  :binds ((recipient))
  :documentation "")

(define-mixin-category with-asset
  ;;:specializes relation
  :binds ((asset))
  :documentation "")

(define-mixin-category with-topic
  :binds ((topic))
  :documentation "")

(define-mixin-category with-stimulus
  :binds ((stimulus))
  :documentation "")
