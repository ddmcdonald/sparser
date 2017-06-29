;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "predicate"
;;;   Module:  "model;core:kinds:"
;;;  version:  June 2017

;; To move all the standard thematic roles up to a place that
;; loads early so they're available for restriction as lower levels
;; of the hierarchy. Written as mixins without restrictions.

(in-package :sparser)

(define-mixin-category with-an-agent
  :specializes relation
  :binds ((agent (:or pronoun physical-agent))))
;; Dolce has 'agency' as the union of physical and social agent

(define-mixin-category actor
  :specializes relation
  :binds ((actor))
  :documentation "")

(define-mixin-category takes-adverb
  :specializes relation
  :binds ((adverb)))

(define-mixin-category beneficiary
  :specializes relation
  :binds ((beneficiary))
  :documentation "")

(define-mixin-category experiencer
  :specializes relation
  :binds ((experiencer))
  :documentation "")

(define-category has-location
  :specializes relation
  :binds ((location)) ;; location))
  :documentation "Said of something that must have a location
    Supplies a location variable whose value says where
    this thing is.")

(define-mixin-category patient
  :specializes relation
  :binds ((patient))
  :documentation "")

(define-mixin-category theme
  :specializes relation
  :binds ((theme))
  :documentation "Often characterized as the thing that moves.
    Specialized (restricted) by move.")

