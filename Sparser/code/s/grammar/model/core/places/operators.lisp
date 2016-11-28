;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "operators"
;;;   Module:  "model;core:places:"
;;;  version:  November 2016

;; instantiates 11/2/16 to provide a semantic grounding to spatial
;; prepositions and such as functions. 

(in-package :sparser)

;;;------------------------------------------------
;;; prepositions that designate relative locations
;;;------------------------------------------------

#| This treats spatial propositions ("on", "under") as well as
orientation-base geometical terms like "top" as functions from
objects to spatial relationships or selected component parts.
  The specific relationship between the figure and ground is
determined by the operator and the types of the two objects,
|#

(define-category spatial-operator
  :specializes predicate
  :documentation "Provides a super type for spatial prespositions.
    See define-preposition. Allows more specific type-based
    treatment of prepositional phrases as locations, see analyse-pp.
    The result of aqpplying a spatial operator to something that
    has-location is usually a relative-location.")

;; Now to partition prepositions et al. to reflect more specific
;; figure - ground relationships



;;;------------------------------------------------------------------
;;; nouns and such that define object-dependent-locations ("bottom")
;;;------------------------------------------------------------------
;; dossier: dependent-locations

(define-category dependent-location
  :specializes spatial-operator
  :documentation "Goes with the category object-dependent-location to
    in the same way that spatial-operator goes with relative-location.
    Typical instances would be 'bottom' and 'side'"
  :instantiates self
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-category multiple-dependent-location
  :specializes dependent-location
  :mixins (partonomic)
  :documentation "Used for 'sides' and any similar functional
    locations that occur more than once on the object they
    depend on."
  :instantiates self
  :index (:permanent :key name)
  :realization (:common-noun name))
