;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "processes"
;;;   Module:  "model;core:kinds:"
;;;  version:  February 2019

;; Broken out from upper-model and added long definitions 3/31/14.
;; 9/24/14 Moved event above perdurant as a hack to ensure that
;; we get the variables presently on event without (yet) saying
;; something about perdurants -- that will take some more thought
;; and engender more changes later. Cleaned up some wording too.
;; 10/27/14 added circumstance to event variables. 1/11/15 added
;; manner to event.
;; 1/14/2015 added slot for negation. Move to top 1/20/15
;; 1/28/2015 added variable for general adverb
;; interpret-adverb+verb needs to be improved to diagnose the type of
;; adverb but until then, we need to have this variable or something
;; equivalent. 8/14/15 Moved theme up to perdurant. 9/22/15 pulled
;; the lemmas so the upper model could be loaded early
;; 10/16/15 Moved the event bindings to perdurant and put it on top.

(in-package :sparser)

;; This is Split out, because category::collection can also take these
;; variables -- i.e. collections can be collections of perdurants
(define-mixin-category takes-tense-aspect-modal
  :binds ((modal :primitive category)
          (present :primitive  category)
          (past :primitive  category)
          (progressive  category)
          (perfect  category)))

(define-mixin-category temporally-localized
  :instantiates nil
  :documentation "Supplies a set of bindings and subcategorization
   specifications for temporal and other adjuncts that acrue to
   clauses that denote perdurants and perdurant-like categories."
  :binds ((certainty certainty) ;; originally from with-certainty
          (following process)
          (preceding process)
          (during process)
          (after (:or time-unit
                      time ;; for "any time"
                      amount-of-time))
          (before (:or time-unit time amount-of-time end))
          (timeperiod (:or time-unit time amount-of-time)))
  :realization
    (:with certainty   ;; originally from with-certainty
     :after following
     :after after
     :at timeperiod
     :before preceding
     :at before
     :before before
     :during during
     :following following
     :for timeperiod
     :in timeperiod
     :on timeperiod
     :over timeperiod
     :upon following
     ))


(define-category  perdurant
  :instantiates self
  :specializes top
  :mixins (takes-tense-aspect-modal
           temporally-localized
           takes-adverb
           has-location)
  :binds ((participant) ;; is one this useful now given mixed-in roles?
          (time)
          (purpose)  ;; in order to ...
          (reason)  ;; answers "why", "because E"
          (circumstance)
          (manner)
          (occurs-at-moment) ;; future, past
          (relative-position) ;; w.r.t. other eventualities
          )

  :documentation
  "Perdurants could otherwise be called events, processes, or phenomena,
 but those terms are heavily burdened by prior work and lose their
 intuitive value. There's a lot of literature and KIF behind the term
 perdurant, but the subclasses for more content/distinctions, which are 
 largely drawn from the linguists' vocabulary for  classifying verbs.
    The next level decomposition is derived from Pustejovsky's 1991 Cognition
 paper 'The syntax of event structure'. It leaves out the 'stative'
 category in Dolce that dominated state and process, and it collapses
 Vendler's 'accomplishment' and 'achievement' into 'Transition' (though
 we may find them useful as subclasses of that).
   Perdurants have more more properties than simply what objects
 participate in them. They have temporal extents (duration), temporal
 bounds (begin, end), and usually a spatial extent (the region in
 which they happen)." )



(define-category state
  :specializes perdurant
  :documentation 
  "A state is a period during which some some condition remains constant.
 An event analysis (Dowty, Bach, Pustejovsky) would say that it is
 a single event. Nothing happens in a State. It does not cause anything
 to change state (as in the 'state' of an FSA).
   All of the temporal parts of the state can be be described by the
 same expression (in some meta-language like English). For example:
 'my house is green' is a value of the color quality on the object
 representing my house. 'my aunt is 101 years old', another quality value;
 that state will change in December 2012. 'I know my social security
 number' is a state of (my) knowledge. 'James has the flu' is a state
 of his body.
   Each of these would be modeled as a subclass of State, probably
 several levels down depending on the desired inferences. Each of them
 involes both the 'condition' (e.g. having the flu) and the entities
 that have the condition. The intended treatment is to capture the
 conditions in the identity of the class and record the person/house/etc.
 to which the condition applies recorded as a participant. But the
 model could cut along different lines, such as having the state
 be 'be sick' with a participant for the patient and one for the illness.
   The state is /not/ 'being sick', however. You can't have an actual
 state unless it's particular individual or similar entity that (person 
 in this case) is sick. To represent what the quality or other phenomenon
 is without also incorporating the participants to which it applies
 requires creating a derived type. A type related to 'state' but not
 actually a state. Lambda abstraction would do this nicely, especially
 if we type the abstracted participant.")

(define-category event-relation
  :specializes perdurant
  :binds ((relation)
          (event)
          (subordinated-event))
  :documentation "This picks up phrases like 'Thus MEK phosphorylates ERK...'
    though the head decides what to do with it based on the
    composition. Same design as pps.")

(define-category process
  :specializes perdurant
  :documentation
  "A process involves a change over time. It will decompose into a
 sequence of smaller events that that can be given the same
 description: 'the flow of Mississippi river', 'my life, 'your reading
 this documentation'. As you read, your 'cursor' in the documentation
 moves, and your understanding of what this model is like grows (or
 becomes more muddled as the case may be). At a the granularity of
 modeling where we call something a process, all of the temporal
 parts of the process are the same. The Cyc folks like the example of
 someone giving a talk: Over the entire interval of the talk the
 person is talking, even though if we go to a finer granularity there
 will be some periods within that interval when they will not be
 talking, e.g. because they are taking a drink of water.
   As with State classes, the expectation is that subclasses of
 Process will correspond to the verbs or perhaps whole predicates
 and the participants to the individuals or classes of individuals
 undergoing the change.")


(define-category transition
  :specializes process
  :documentation
  "A transition is an action that culminates in a change of state,
 often an opposition: open, give, build. 'Lia is walking' is a
 process.  'Lia walked to the store' is a transition. 'Greg built a
 house' is a transition: a sequence of events leading to the existence
 of the house.")

(define-category accomplishment
  :specializes transition
  :documentation
  "A transition that occurs over a period of time: building a house
 baking a cake. It involves a process that ends with a change in
 state.")

(define-category achievement
  :specializes transition
  :documentation
  "A transition that occurs instantly. At one point we're in one
 state and the next moment we're in another ('summiting Everest')")


