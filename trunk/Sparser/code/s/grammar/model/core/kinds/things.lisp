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
  "A physical object ('physobj' ??) has a location, a spatial extent,
 and is constitued of something (e.g. the clay in a statue).")

(define-category object 
  :specializes physical-object
  :documentation
  "Conventional physical objects: chairs, amoeba, mountains, breaths of air.")


