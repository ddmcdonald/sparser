;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020-2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "events"
;;;   Module:  "model;core:mid-level:"
;;;  version:  July 2022

;; Initiated 11/30/20 to hold extensions of the types of processes
;; defined in kinds/processes.lisp with more refined kinds of events,
;; particularly as influenced by ECIs.

(in-package :sparser)

;; This is loaded after eci-categories, so it can use them freely.

;;;----------------------
;;; mental constructions
;;;----------------------

#| From kinds/things

(define-category non-physical 
  :specializes endurant
  :documentation
  "Non-physical objects have no location. They often depend in some way
 on physical objects")

(define-category mental-object 
  :specializes non-physical
  :documentation
  "Ideas, sensations, dreams, maybe unicorns. Mental objects are dependent
 on something with a mind, Perhaps the conclusions drawn by a program
 fall into this category, while the program itself is a process.") 
|#


(define-mixin-category concerning-adjuncts
  :specializes adds-relation
  :mixins (with-experiencer with-theme with-actor)
  :documentation "This wants to be a rationalization (with a shorter name)
 for the previous version where we had mental-construction-concerning and
 create-mental-construction-concerning (which was for frustrate, surprise,
 worry, forecast, publish, focus, show, demonstrate, endorse. This class
 provides adjuncts, the same sort as takes-tense-aspect-modal or
 temporally-localized for perdurant.
 It also supplies slots:
    for the 'experiencer' who has the thought (v/r physical-agent),
    'theme' for what the thought is directed towards,
    'actor' as an alternative to the experiencer when action is involved"
  :realization
    (:about theme
     :regarding theme
     :of theme            
     :with-regard-to theme
     :from experiencer))


(define-category mental-construction ; mental-construction-concerning
  :specializes mental-object
  :mixins (concerning-adjuncts)
  :documentation "Something like a thought, or an opinion or a
 perception, i.e a non-physical 'object'. TRIPS uses the same
 name, with supercs: tangible-abstract-object < abstract-object")

(define-category directed-cognitive-event ; create-mental-construction-concerning
  :specializes cognitive-event
  :mixins (with-patient concerning-adjuncts)
  :binds ((concerning)) ; for backwards compatibility
  :documentation "the experience of one person leads to on effect
 on someone (something) else, the 'patient'")


#| Previous scheme retain for reference

(define-mixin-category mental-construction-concerning
  :specializes perdurant
  :binds ((concerning top)  ;; perhaps (:or endurant perdurant abstract)
          (source top))
  :realization
  (:about concerning
   :regarding concerning
   :of concerning
   :from source
   :with-regard-to concerning)
  :documentation "A mental-construction which is focused on some set
 of objects or events. Not clearly a sub-category of information or
 information-container, but some information containers may be of this
 type. A database may be about ships, but the information it contains
 is not a set of ships.
   Provides a set of bindings for the adjuncts this sort of event
 can take.")

(define-category create-mental-construction-concerning
  :specializes perdurant
  :mixins (knowledge-verb)
  :restrict ((experiencer top))
  :binds ((mental-construction mental-construction-concerning)
          ;; may only be the direct object of the verb?
          (concerning top))
  :realization (:about concerning
                :of concerning
                :regarding concerning
                :with-regard-to concerning))
;; Examples in things.lisp
;;  frustrate, surprise, worry, forecast, publish, focus
;;  show, demonstrate, endorse
|#




;; It is possible that this class carries the essential weight of "method"

(define-category activity-with-a-purpose ;; aka 'purposive activity'
  :specializes process 
  :mixins (with-agent) ;; see below -- only agents can have a purpose
  :documentation "An activity done with the aim of achieving a particular
 thing (dictionary.cambridge.org). Motivated by 'experiment' and 'study'
 which are elaborate, extended activities that want to test some conjecture.
 Could make the agents, aim, and methods explicit but they can be implicit
 in the meaning of the word -- the variable resoult-or-purpose only occurs
 when the subject of the activity-with-a-purpose is an agent that can have
 a purpose -- animal, organizational, social-agent, ..."
  :binds ((result-or-purpose process))
  :realization (:s agent
                :by agent
                :to-comp result-or-purpose
                :for result-or-purpose
                :based\ on reason))

(define-category directed-activity-with-a-purpose
  :specializes activity-with-a-purpose
  :binds ((object (:or perdurant endurant abstract))) ;; what activity is directed at
  :realization (:o object
                :of :object)) ;; for nominal forms
  

(define-category purposive-activity-with-instrument
  :specializes activity-with-a-purpose
  :mixins (with-instrument)
  :documentation ""
  :realization (:with instrument))



;;;;;;;; EVENT-EVENT RELATIONS -- sequential and otherwise... NEEDS a bunch more work

(define-category event-relation
  :specializes perdurant
  :binds ((relation)
          (event perdurant)
          (subordinated-event perdurant))
  :documentation "This picks up phrases like 'Thus MEK phosphorylates ERK...'
    though the head decides what to do with it based on the
    composition. Same design as pps."
  :realization
     (:s event
      :o subordinated-event))


(define-category event-follows
  :specializes event-relation
  :realization
     (:verb ("follow" :past-tense "followed" :present-participle "followingxx"
            ;; this is intended to suppress definitions of "followed" and "follows"
                      :third-singular "follows")))

(define-category event-precedes
  :specializes event-relation
  :realization
    (:verb "precede"))


