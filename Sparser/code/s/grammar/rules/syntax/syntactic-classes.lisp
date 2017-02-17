;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "syntactic-classes"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  December 2016

;; Extracted from syntax-functions 12/5/16

(in-package :sparser)

(define-category to-comp
  :specializes phrase-interpretation
  :binds ((prep :primitive category)
          (comp))
  :documentation "Provides a scafolding to hold
   a generic to-comp as identified by
   the pp rules in grammar/rules/syntactic-rules.
   Primary consumer is the subcategorization checking
   code below. Note that if we make these with an
   unindexed individual (in make-pp) then the index
   information doesn't come into play"
  :index (:temporary :sequential-keys prep comp))

(define-category as-comp
  :specializes phrase-interpretation
  :binds ((prep :primitive category)
          (comp))
  :documentation "Provides a scafolding to hold
   a generic to-comp as identified by
   the pp rules in grammar/rules/syntactic-rules.
   Primary consumer is the subcategorization checking
   code below. Note that if we make these with an
   unindexed individual (in make-pp) then the index
   information doesn't come into play"
  :index (:temporary :sequential-keys prep comp))

(define-category prepositional-phrase
  :specializes phrase-interpretation
  :binds ((prep :primitive category)
          (pobj))
  :documentation "Provides a scafolding to hold
  a generic prepositional phrase as identified by
  the pp rules in grammar/rules/syntactic-rules.
  Primary consumer is the subcategorization checking
  code below. Note that if we make these with an
  unindexed individual (in make-pp) then the index
  information doesn't come into play"
  :index (:temporary :sequential-keys prep pobj))
(mark-as-form-category category::prepositional-phrase)

(define-category relativized-prepositional-phrase
  :specializes prepositional-phrase
  :binds ((prep)
          (pobj))
  :index (:temporary :sequential-keys prep pobj))
(mark-as-form-category category::relativized-prepositional-phrase)

(define-category prep-comp
  :specializes phrase-interpretation
  :binds ((prep)
          (comp))
  :documentation "If to-comp picks up infinitive complements
  this picks up all the rest, e.g. 'by being phosphorylated'
  though the head decides what to do with it based on the
  composition. Same design as pps."
  :index (:temporary :sequential-keys prep comp)) 

(define-category subordinate-clause
  :specializes phrase-interpretation
  :binds ((conj)
          (comp))
  :documentation "This picks up phrases like 'Thus MEK phosphorylates ERK...'
  though the head decides what to do with it based on the
  composition. Same design as pps."
  :index (:temporary :sequential-keys conj comp))
(mark-as-form-category category::subordinate-clause)

(define-category pp-relative-clause
  :specializes phrase-interpretation
  :binds ((pp)
          (clause))
  :documentation "Provides a scafolding to hold
  a generic pp-relative clause such as 'in which ERK is phosphorylated
  in grammar/rules/syntactic-rules.
  Primary consumer is the subcategorization checking
  code below. Note that if we make these with an
  unindexed individual (in make-pp) then the index
  information doesn't come into play"
  :index (:temporary :sequential-keys prep pobj))


(define-category copular-pp-rel-clause
  :specializes phrase-interpretation
  :binds ((copular-pp copular-pp)))


(define-category upon-condition
  ;; Consumed as 'circumstance' at event level by adjoin-pp-to-vg
  :instantiates :self
  :specializes predication
     ;; should be a contingency or 'when' or some such
  :binds ((condition))
  :index (:key condition))
