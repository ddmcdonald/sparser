;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "things"
;;;   Module:  "model;core:kinds:"
;;;  version:  December 2018

;; Broken out from upper-model and added long definitions 3/31/14.
;; 7/20/14 Added lemmas and realizations as needed to hold the
;; words for categories whose names are ordinary words. 11/20/14
;; rationalizing the very top. 1/20/15 tentatively added number
;; and quantifier to endurant. 9/22/15 pulled the lemmas so the 
;; upper model could be loaded early

(in-package :sparser)

;;;------------------------------------------------
;;; categories for C3 from Dolce by way of Stratus
;;;------------------------------------------------

(define-category endurant 
  :specializes top
  :binds ((number) ;; could also be amount -- handle count vs mass distinction better
          (quantifier))
  :documentation
  "Endurants (aka objects, things) have an identity that doesn't depend
 on the identity of their parts, see axe handles and greek ships. The
 split below Endurant is physical vs. non-physical. 
   Number is bound here possibly as an expediency since actual instances
 ('three swans', 'four drugs') should almost certainly be analyzed as
 collections.")


(define-category region
  :instantiates nil
  :specializes endurant
  :documentation 
   "Fundamentally, this is the same concept as the 'abstract-region'
 in upper-model.lisp. It demarcates, sets a boundary around a portion
 of some stuff. But because 'regions' are central to the geography
 of space, where using the simple name 'region' here as a type of
 endurant.")


(define-category physical
  :specializes endurant
  :binds ((location))
  :documentation
  "Common parent to the physical subclasses.This is the level at
 which to state that every physical object has a real location.")


(define-category physical-object 
  :specializes physical
  :documentation
 "Conventional physical objects: chairs, amoeba, mountains, 
  breaths of air, blocks on a table.
     A physical object ('physobj' ??) has a spatial extent,
 and is constitued of something (e.g. the clay in a statue).
 N.b. see the category 'object' in mid-level/ontology. Need 
 to figure out a what to merge them if that's technical possible
 given when properties are defined.")


(define-category physical-agent
  :specializes physical-object
  :documentation ;; from Dolce ExtDnS_397 agentive-physical-object
                 ;; and foundation.prxo
    "Within Physical objects, a special place have those to which
 we ascribe generic intentionality (compatibly to Brentano's 
 distinction, the ability to internally represent a description). 
 These are called Agentive, as opposite to Non-agentive. 
 In general, we assume that agentive objects are constituted by 
 non-agentive objects: an organism is constituted by bodily organs, 
 a robot is constituted by some machinery, and so on. 
 Among non-agentive physical objects we have for example houses, 
 bodily organs, pieces of wood, etc. Generic agentivity is defined 
 here in a wide sense as implying representation or conception 
 (to be characterized in a dedicated - but not developed as yet - 
 ontology of mind). A representation or conception only requires 
 intentionality in Brentano's terms (i.e., the ability to represent 
 something to oneself). See also 'rational physical object'.

 We call something an agent if we ascribe intentions, beliefs, and desires
 to it, so besides this class covering people it can also cover robots and
 many computer programs. Agents are capable of deliberately dealing with
 objects or states in the world. As opposed to the unintended effects of
 a mudslide or a tree disrupting the sidewalk as its roots grow.
 Agency is not to be equated with causality.
   Agentive objects are usually constituted of (are made out of) regular
 Object's. People have bodies. Robots are assembled out of engines and
 sensors and such (Legos). ") ;; n.b. "Mossad agent"



(define-category feature
  :specializes physical
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
  "Non-physical objects have no location. They often depend in some way
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

