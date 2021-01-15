;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "syntactic-classes"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2017

;; Extracted from syntax-functions 12/5/16

(in-package :sparser)

(define-category to-comp
  :specializes phrase-interpretation
  :binds ((prep :primitive category)
          (comp))
  :documentation "Provides a scaffolding to hold
   a generic to-comp as identified by
   the pp rules in grammar/rules/syntactic-rules.
   Primary consumer is the subcategorization checking
   code below. Note that if we make these with an
   unindexed individual (in make-pp) then the index
   information doesn't come into play")

(define-category as-comp
  :specializes phrase-interpretation
  :binds ((prep :primitive category)
          (comp))
  :documentation "Provides a scaffolding to hold
   a generic as-comp as identified by
   the pp rules in grammar/rules/syntactic-rules.")

(define-category prepositional-phrase
  :specializes phrase-interpretation
  :binds ((prep :primitive category)
          (pobj))
  :documentation "Provides a scafolding to hold
  a generic prepositional phrase as identified by
  the pp rules in grammar/rules/syntactic-rules.")
(mark-as-form-category category::prepositional-phrase)

(define-category prep-comp
  :specializes phrase-interpretation
  :binds ((prep)
          (comp))
  :documentation "If to-comp picks up infinitive complements
  this picks up all the rest, e.g. 'by being phosphorylated'
  though the head decides what to do with it based on the
  composition")

(define-category subordinate-clause
  :specializes phrase-interpretation
  :binds ((conj)
          (comp))
  :documentation "This picks up phrases like 'Thus MEK phosphorylates ERK...'
  though the head decides what to do with it based on the
  composition.")
(mark-as-form-category category::subordinate-clause)

(define-category subordinate-s
    :specializes subordinate-clause)
(mark-as-form-category category::subordinate-s)

#| Used to mark the subordinatated np when we are making 
a subordinate np like 'such as this book' or 'with the exception of this book'
Added to the interpretation of the subordinate conjunction (similar to the way
an np is added to a PP) that indicates the subordinating relation.
Deemed to be overkill to use a scafolding class
like prepositional-phase (see syntax/syntactic-classes.lisp) |#

(define-category subordinate-np 
  :specializes phrase-interpretation
  :binds ((subordinated-np top)
          (subordinate-conjunction top)))

(mark-as-form-category category::subordinate-np)






;;--- pied-piping

(define-category relativized-prepositional-phrase
  :specializes prepositional-phrase
  :binds ((prep)
          (pobj))
  :index (:temporary :sequential-keys prep pobj)
  :documentation "Will be instantiated by make-relativized-pp for
    phrase like 'by which' (dec #19). The pobj will hold a
    wh-pronoun, and the prep a preposition, both as individuals.")
(mark-as-form-category category::relativized-prepositional-phrase)

(define-category pp-relative-clause
  :specializes phrase-interpretation
  :binds ((pp)
          (clause))
  :documentation "Provides a scafolding to hold
  a generic pp-relative clause such as 'in which ERK is phosphorylated
  in grammar/rules/syntactic-rules.")

(define-category partitive-relativizer
  :specializes phrase-interpretation
  :binds ((quantifier (:or quantifier number))
          (relativizer)) ;; e.g. 'which'
  :documentation "Provides a scafold for relativizers like
 'all of which' or 'three of which'. Should be cached out
 in a 'portion' object (a kind of collection) when the
 relative clause is attached to its head np (which should
 refer to a collection)."
  :index (:temporary :sequential-keys quantifier relativizer))

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
