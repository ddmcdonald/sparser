;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "operators"
;;;   Module:  "model;core:places:"
;;;  version:  November 2016

;; instantiates 11/2/16 to provide a semantic grounding to spatial
;; prepositions and such as functions. 


(in-package :sparser)

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
    The result of applying a spatial operator to something that
    has-location is usually a relative-location.")

;; Now to partition prepositions et al. to reflect more specific
;; figure - ground relationships

 
;;; grammar rules

(def-k-method compose ((np has-location) (pp location))
  (declare (special *subcat-test*))
  (if *subcat-test*
    ;; given this specific a pattern, if we get here
    ;; then the interpretation/rule will go through
    t
    (let ((i (bind-variable 'location pp np)))
      ;;(format t "~&i = ~a~%" i)
      i)))
