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
  :mixins (physical)
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
    dependent locations that occur more than once on the object 
    they depend on."
  :instantiates self
  :index (:permanent :key name)
  :realization (:common-noun name))


;;;---------
;;; compose
;;;---------

(def-k-function compose (left right)
  (:documentation "This provides a hook for co-composition or simply
   for type specialization or adding additional relations to a 'daughter'
   style rule. Expecially well suited for form rules. Can be used as
   a dispatch point for more specific binary compostions. Intended to be
   the most generic way to compose the referents of two edges.")
  (:method (left right)
    (declare (ignore left right))))

(def-k-method compose ((np category::has-location) (pp category::location))
  (declare (special *subcat-test*))
  (if *subcat-test*
    ;; given this specific a pattern, if we get here
    ;; then the interpretation/rule will go through
    t
    (let ((i (bind-variable 'location pp np)))
      ;;(format t "~&i = ~a~%" i)
      i)))


(def-k-method compose ((operator category::spatial-operator) (place category::endurant))
  ;; called by make-pp so it's forming a referent in a largely
  ;; syntactic environment and we can make the edge label
  ;; whatever we like.
  (declare (special *subcat-test*))
  (if *subcat-test*
    ;; If we've gotten here with this signature then we'll complete
    t
    (let ((i (find-or-make-individual 'relative-location
                                      :prep operator
                                      :ground place)))
      ;;(format t "~&Created ~a~%" i)
      (revise-parent-edge :category (category-named 'location))
      i)))
