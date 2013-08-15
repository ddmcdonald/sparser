;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "in-predicate"
;;;   Module:  "model;core:people:"
;;;  version:  August 2013

;;this deals with a small set of words preceded by "in" and followed usually by "of"
;;e.g. "in charge of", "in place of", "instead of"
;;unsure if this is a completely closed set
;;these so called in-predicates behave similarly to verbs
;;this shows because the transitive tree family works perfectly for them
;;previously these were parsed as relative-locations (a common overgeneration by the grammar)
;;unsure however where to exactly put this category
;;for now it will be placed in model;core:people:

;;;------------
;;; the object
;;;------------

;;a generalized category for all in-predicates
;;useful for making a single set of additional cfrs
(define-category in-predicate
  :specializes event
  :instantiates self)

;;;------------
;;; the instances
;;;------------

;;these ones are very predicate like
;;and can be thought to be equivalent to their verbal forms
;;He is in command of = He commands, She is in control of = She controls
;;though there are subtle semantic and pragmatic differences
(define-category  in-charge
  :specializes in-predicate
  :instantiates self
  :rule-label in-predicate
  :binds ((who person)
          (of-what NP))
  :index (:key who)
  :realization ((:adjective "in charge of") ;;still a semantic predicate
                (:tree-family transitive/passive
                 :mapping ((agent . who)
                           (patient . of-what)
                           (s . :self)
                           (vp . :self)
                           (vg . :self)
                           (np/subject . person)
                           (np/object . NP)))))


(define-category  in-command
  :specializes in-predicate
  :instantiates self
  :rule-label in-predicate
  :binds ((who person)
          (of-what NP))
  :index (:key who)
  :realization ((:adjective "in command of") ;;still a semantic predicate
                (:tree-family transitive/passive
                 :mapping ((agent . who)
                           (patient . of-what)
                           (s . :self)
                           (vp . :self)
                           (vg . :self)
                           (np/subject . person)
                           (np/object . NP)))))


(define-category  in-control
  :specializes in-predicate
  :instantiates self
  :rule-label in-predicate
  :binds ((who person)
          (of-what NP))
  :index (:key who)
  :realization ((:adjective "in control of") ;;still a semantic predicate
                (:tree-family transitive/passive
                 :mapping ((agent . who)
                           (patient . of-what)
                           (s . :self)
                           (vp . :self)
                           (vg . :self)
                           (np/subject . person)
                           (np/object . NP)))))

;;these last three are less predicate like than the following
;;and should probably be made into a different category altogether
;;this is apparent because their head words are closer to prepositions
;;and have little semantic meaning--much of which is open to interpretation
;;it may not suffice to call them predicates, as they are very discourse like too
;;the subjects are not necessarily persons either--they can be pretty much anything
(define-category  in-place
  :specializes in-predicate
  :instantiates self
  :rule-label in-predicate
  :binds ((who person)
          (of-what NP))
  :index (:key who)
  :realization ((:adjective "in place of") ;;more discourse than predicate like
                (:tree-family transitive/passive
                 :mapping ((agent . who)
                           (patient . of-what)
                           (s . :self)
                           (vp . :self)
                           (vg . :self)
                           (np/subject . person)
                           (np/object . NP)))))


(define-category  in-lieu
  :specializes in-predicate
  :instantiates self
  :rule-label in-predicate
  :binds ((who person)
          (of-what NP))
  :index (:key who)
  :realization ((:adjective "in lieu of") ;;more discourse than predicate like
                (:tree-family transitive/passive
                 :mapping ((agent . who)
                           (patient . of-what)
                           (s . :self)
                           (vp . :self)
                           (vg . :self)
                           (np/subject . person)
                           (np/object . NP)))))


;;this one is less obvious, and probably requires more attention to detail
;;the problem is "instead" can be used without an overt object
;;e.g. "Instead, the government decided to pull the troops."
;;where the 'object' of "instead" would be someother sentence in the previous discourse
;;this feature is absent from all the above, *"In place of, the government..."
(define-category  instead
  :specializes in-predicate
  :instantiates self
  :rule-label in-predicate
  :binds ((who person)
          (of-what NP))
  :index (:key who)
  :realization ((:adjective "instead of") ;;more discourse than predicate like
                (:tree-family transitive/passive
                 :mapping ((agent . who)
                           (patient . of-what)
                           (s . :self)
                           (vp . :self)
                           (vg . :self)
                           (np/subject . person)
                           (np/object . NP)))))


;;;------------
;;; cfrs
;;;------------

;;cfr to absorb the copula
;;it does carry tense/aspectual information
;;but it has no contribution to the semantic interpretation
;;however, absence of the copula will indicate a left or right dislocation
;;and seems very adjunct like
;;e.g. "In command of the army, General Patton..."
;;versus "General Patton is in command of the army."
(def-cfr in-predicate (be in-predicate)
  :form adjective
  :referent (:head right-edge))
