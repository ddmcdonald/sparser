;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "predicate"
;;;   Module:  "model;core:kinds:"
;;;  version:  November 2019

;; To move all the standard thematic roles up to a place that
;; loads early so they're available for restriction as lower levels
;; of the hierarchy. Written as mixins without restrictions.

(in-package :sparser)

(define-mixin-category with-agent
  :specializes thematic-role
  :binds ((agent (:or physical-agent social-agent)))
  ;; Dolce has 'agency' as the union of physical and social agent
  :documentation "Participant that intentionally initiates
    the action.")

(define-mixin-category with-actor
  :specializes thematic-role
  :binds ((actor))
  :documentation "The entity that performs the action.
    No implied agency. No obvious specified type.")

(define-mixin-category takes-adverb
  :specializes thematic-role
  :binds ((adverb)))

(define-mixin-category with-attribute
  :specializes thematic-role
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
  :specializes thematic-role
  :binds ((beneficiary))
  :documentation "Entity benefiting from the event. ")

(define-mixin-category with-cause
  :specializes thematic-role
  :binds ((cause))
  :documentation "That which causes an event to occur.")

(define-mixin-category with-destination
  :specializes thematic-role
  :binds ((destination))
  :documentation "The final location of a movement.")

(define-mixin-category with-extent
  :specializes thematic-role
  :binds ((extent))
  :documentation "The degree to which an event is carried out -
  length, duration, or some other verb-specific measure
  of completion. Extension along some dimension.")

(define-mixin-category with-source
  :specializes thematic-role
  :binds ((source))
  :documentation "The location or entity from which an event
  originates; usually involves movement.")

(define-mixin-category with-material
  :specializes thematic-role
  :binds ((material physical))
  :documentation "The source from which a product is created (always
  co-occurs with a Product role.)")

(define-mixin-category with-product
  :specializes thematic-role
  :binds ((product))
  :documentation "Entity created as a direct result of an event.")

(define-mixin-category with-experiencer
  :specializes thematic-role
  :binds ((experiencer physical-agent))
  :documentation "Participant that is aware of something
    pertaining to the event.")

(define-category has-location
  :specializes thematic-role
  :binds ((location location))
  :documentation "Said of something that must have a location
    Supplies a location variable whose value says where
    this thing is.")

(define-mixin-category with-patient
  :specializes thematic-role
  :binds ((patient))
  :documentation "The participant that is affected by the action.")

(define-mixin-category with-co-patient
  :specializes thematic-role
  :binds ((co-patient))
  :documentation "Used for verbs that involve two participants, both patients, such as 
  'swap', 'reverse', etc.")

(define-mixin-category with-theme
  :specializes thematic-role
  :binds ((theme))
  :documentation "Undergoer that is central to an event or state
   that does not have control over the way the event occurs, 
   is not not structurally changed by the event and/or is characterized
   as being in a certain position of condition throughout the state.
   (VerbNet paper) Also often characterized as the thing that moves.
   Specialized (restricted) by move.")

(define-mixin-category with-instrument
  :specializes thematic-role
  :binds ((instrument object))
  :documentation "Thing or medium by which an action is carried out.")

(define-mixin-category with-goal
  :specializes thematic-role
  :binds ((goal))
  :documentation "Location, entity, direction, or state toward which
  something moves.")

(define-mixin-category with-recipient
  :specializes thematic-role
  :binds ((recipient))
  :documentation "That which receives some participant in the event.")

(define-mixin-category with-topic
  :specializes thematic-role
  :binds ((topic))
  :documentation "The subject or theme of a communicative event.")

(define-mixin-category with-stimulus
  :specializes thematic-role
  :binds ((stimulus))
  :documentation "That which serves as the prompt for a state or experience.")

(define-mixin-category with-manner
  :specializes thematic-role
  :binds ((manner adverb))
  :documentation "A description of the style in which an action 
  is carried out. A role for adverbial complements.")

(define-mixin-category with-result
  :specializes thematic-role
  :binds ((result))
  :documentation "The result of an action performed. Qualifies the
  predicate's effect on the theme.")

(define-mixin-category with-expletive
  :specializes thematic-role
  :binds ((expletive pronoun-inanimate))
  :documentation "'Empty' subject 'it' or 'there', seen in raising verbs and 
  certain weather verbs.")

(define-mixin-category with-path 
  :specializes thematic-role
  :binds ((path))
  :documentation "The direction or trajectory of movement.")

(define-mixin-category reflexive
  :specializes thematic-role
  :binds ((pronoun pronoun))
  :documentation "Used for reflexive verbs, in which the subject and object refer
  to the same entity.")
