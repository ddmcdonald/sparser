;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "processes"
;;;   Module:  "model;core:kinds:"
;;;  version:  March 2014

;; Broken out from upper-model and added long definitions 3/31/14.

(in-package :sparser)

(define-category  perdurant
  :instantiates nil
  :specializes  top
  :binds ((participant))
  :documentation
  "Perdurants could otherwise be called events, processes, or phenomena,
 but those terms are heavily burdened by prior work and lose their
 intuitive value.  There's a lot of literature and KIF behind the term
 Perdurant, but look to the subclasses for more content/distinctions,
 which are largely drawn from the linguists' vocabulary for
 classifying verbs.
    The next level decomposition is derived from Pustejovsky's 1991 Cognition
 paper 'The syntax of event structure' in opp. It leaves out the 'stative'
 category in Dolce that dominated state and process, and it collapses
 Vendler's 'accomplishment' and 'achievement' into 'Transition' (though
 we may find them useful as subclasses of that).
   Perdurants have more more properties than simply what objects
 participate in them. They have temporal extents (duration), temporal
 bounds (begin, end), and usually a spatial extent (the region in
 which they happen). These properties are defined in those ontologies
 so we can load this one without presuming too much." )


(define-category  event
  ;; A very odd notion that cross-cuts the usual decomposition
  ;; as would an actorless 'action'
  :instantiates nil
  :specializes  perdurant
  :binds ((time)
          (location)
          (purpose)
          (modifier)
          (aspect . tense/aspect)) ;; see rules/tense
  :realization (:common-noun "event"))


(define-category state
  :specializes perdurant
  :binds ((theme)) ;; one salient value /// track down what's using this
  :documentation 
  "A state is a period during which some some condition remains constant.
 An event analysis (Dowty, Bach, Pustejovsky) would say that it is
 a single event. Nothing happens in a State. It does not cause anything
 to change state (as in FSA 'state').
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
 state unless it's particular individual or similar entity that (in
 this case) is sick. To represent what the quality or other phenomenon
 is without also incorporating the participants to which it applies
 requires creating a derived type. A type related to 'state' but not
 actually a state. Lambda abstraction would do this nicely, especially
 if we type the abstracted participant.")


(define-category process
  :specializes perdurant
  :documentation
  "A process involves a change over time. It will decompose into a
 sequence of smaller events that that can be given the same
 description: 'the flow of Mississippi river', 'my life, 'your reading
 this documentation'. As you read, your 'cursor' in the documentation
 moves, and your understanding of what this model is like grows (or
 becomes more muddled as the case may be). At a the granularity of
 modeling where we call something a parosess, all of the temporal
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
  :specializes perdurant
  :documentation
  "A transition is a process that culminates in a change of state,
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










