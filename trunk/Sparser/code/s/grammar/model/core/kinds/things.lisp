;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "things"
;;;   Module:  "model;core:kinds:"
;;;  version:  March 2014

;; Broken out from upper-model and added long definitions 3/31/14.

(in-package :sparser)

;;;------------------------------------------
;;; work-a-day categories already in Sparser
;;;------------------------------------------

(define-category  kind
  :instantiates :self
  :binds ((name :primitive word)))

(define-category  individual ;; purely a placeholder like "kind"
  ;; This is the default nominal restriction 
  ;; on circa-2009 abbreviations
  :binds ((modifier)))


;;;------------------------------------------------
;;; categories for C3 from Dolce by way of Stratus
;;;------------------------------------------------

(define-category endurant 
  :specializes top
  :documentation
  "Endurants (aka objects, things) have an identity that doesn't depend
 on the identity of their parts, see axe handles and greek ships. The
 split below Endurant is physical vs. non-physical.")

(define-category physical
  :specializes endurant
  :binds ((location)) ;; c3-location?
  :documentation
  "Common parent to the physical subclasses.This is the level at
 which to state that every physical object has a real location.")

(define-category physical-object 
  :specializes physical
  :documentation 
  "A physical object ('physobj' ??) has a spatial extent,
 and is constitued of something (e.g. the clay in a statue).")


(define-category object 
  :specializes physical-object
  :documentation
  "Conventional physical objects: chairs, amoeba, mountains, breaths of air.")

(define-mixin-category agent
  :specializes physical-object
  ;; Making it a mix-in is my compromise since it feels to me is more
  ;; of a role sometimes rather than a supertype. 
  :documentation ;; from foundation.prxo
  "We call something an agent if we ascribe intentions, beliefs, and desires
 to it, so besides this class covering people it can also cover robots and
 many computer programs. Agents are capable of deliberately dealing with
 objects or states in the world. As opposed to the unintended effects of
 a mudslide or a tree disrupting the sidewalk as its roots grow.
 Agency is not to be equated with causality.
   Agentive objects are usually constituted of (are made out of) regular
 Object's. People have bodies. Robots are assembled out of engines and
 sensors and such (Legos). "
  :realization (:common-noun "agent")) ;; n.b. "Mossad agent"


(define-category feature
  :specializes physical
  realization (:common-noun "feature"))
  :documentation
  "These are things like stains, holes, boundaries, or surfaces that are
 dependent on some other PhysicalObject as the 'host'. Other examples would
 be the region under a table (dependent on the table, moves when it moves)
 or the front of a house.")

(define-category aggregate 
  :specializes physical
  :documentation
  "Aggregates have no unity. They aren't wholes. They don't have good
  connection relations among their parts or a sensible notion of their
  bounderies.
    There are two kinds of aggregates we could break out as subclasses:
  amounts of matter (e.g. water or clay that has been individuated by
  some criterion), and arbitrary collections of things that are individually
  wholes (i.e. feature or physical objects). My college class, the red
  things in this room.")


(define-category non-physical 
  :specializes endurant
  :documentation
  "Non-physical objects have no location. They often dependent in some way
 on physical objects")

(define-category mental-object 
  :specializes non-physical
  :documentation
  "Ideas, sensations, dreams, maybe unicorns. Mental objects are dependent
 on something with a mind, Perhaps the conclusions drawn by a program
 fall into this category, while the program itself is a process.")

(define-category social-object 
  :specializes non-physical
  :documentation
  "Social objects are dependent on a community of agents. They don't have
 to be people. Army ants and mercats form societies as well.")

(define-category social-agent 
  :specializes social-object
  :documentation
  "This lets us reify social roles, like President of the United States,
 which is dependent on a person, but is not the person but the role
 they play. 'Dependent' in the same way that a boundary depends of the
 thing it bounds. Other examples are corporations, super-pacs, nations,
 the U.N., AAAI. Thse are constitued of Agents (board of directors,
 employees, members).")

(define-category social-nonagentivive 
  :specializes social-object
  :documentation
  "laws, normls, shares in a corporation, peace treaties. These are
 generically dependent on societies but not on particular agents.")

