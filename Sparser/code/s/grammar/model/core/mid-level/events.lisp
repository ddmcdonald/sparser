;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "events"
;;;   Module:  "model;core:mid-level:"
;;;  version:  November 2020

;; Initiated 11/30/20 to hold extensions of the types of processes
;; defined in kinds/processes.lisp with more refined kinds of events,
;; particularly as influenced by ECIs.

(in-package :sparser)

#| In processes.lisp we have the mixins
    takes-tense-aspect-modal and
    temporally-localized

 Perdurant also mixes in takes-adverb and has-location
 
 Its specialization are
   state
   process
     transition
     accomplishment

 Event-relation is also in that file.
    
|# 

;; It is possible that this class carries the essential wwight of "method"

(define-category activity-with-a-purpose ;; aka 'purposive activity'
  :specializes process ;; RJB -- can't see why this would ever be a "state"
  :mixins (with-agent) ;; see below -- only agents can have a purpose
  :documentation "An activity done with the aim of achieving a particular
 thing (dictionary.cambridge.org). Motivated by 'experiment' and 'study'
 which are elaborate, extended activities that want to test some conjecture.
 Could make the agents, aim, and methods explicit but they can be implicit
 in the meaning of the word --
 the variable resoult-or-purpose only occurs when the subject of the activity-with-a-purpose
 is an agent that can have a purpose -- animal, organizational, social-agent, ..."
  :binds ((result-or-purpose process))
  :realization
  (:s agent
   :by agent
   :to-comp result-or-purpose
   :for result-or-purpose
   :based\ on reason
))

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


;;;;;;;; EVENT RELATIONS -- sequential and otherwise... NEEDS a bunch more work


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


