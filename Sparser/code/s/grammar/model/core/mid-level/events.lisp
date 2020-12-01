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


(define-category activity-with-a-purpose  ;; aka 'purposive activity'
  :specializes perdurant
  :documentation "An activity done with the aim of achieving a particular
 thing (dictionary.cambridge.org). Motivated by 'experiment' and 'study'
 which are elaborate, extended activities that want to test some conjecture.
 Could make the agents, aim, and methods explicit but they can be implicit
 in the meaning of the word")
    
