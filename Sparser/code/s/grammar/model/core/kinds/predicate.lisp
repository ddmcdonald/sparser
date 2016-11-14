;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "predicate"
;;;   Module:  "model;core:kinds:"
;;;  version:  August 2016

;; Broken out of upper-model 8/23/16

(in-package :sparser)


;;;------------------------------------------------
;;;--------- subcategories of relation -------------
;;;------------------------------------------------

(define-category dependent-substrate
   :specializes relation
   ;; See dependent-of ETF and paths (exit-turnpike)
   ;; Related to feature in things.lisp
   :binds ((dependent)
           (substrate)))



(define-category predicate
  :instantiates nil
  :specializes has-name ;; which is a specialization of relation
  :mixins (takes-adverb takes-tense-aspect-modal)
  :documentation "A predicate attributes or predicates
 some property to something. Depending of what sort of
 predicate it is, this property may be implicit in the
 identity of the predicate itself (e.g. for many simple
 NP modifiers like adjectives), or may be explicitly
 represented in a variable.")

(define-category predication
  :specializes state
  :mixins (takes-adverb takes-tense-aspect-modal) 
  :binds ((predicate predicate))
  :documentation "Represents the application of a predicate
 to one or more terms, what terms and under what relationships
 (variable) is determined by the specific predicate. As the
 basis of an eventuality (clause, sentence) a predication 
 describes a state of affairs. These are a specialization
 of the category state, and the documentation on that category
 applies here as well.")


(define-category modifier
  :specializes predicate
  :documentation "There are 313 direct specializations of
 this category (8/28/16) and appears to be no rhyme or reason
 to why some these terms are classified like this. At some
 point it will need to be sorted out where we give this category
 a real semantic consequence from which we can get a rationale
 for why something should be classified as a modifier or
 a specialization of it. See note with 'modifies'.")

(define-category adverbial
  :specializes modifier)

(define-category modifies
  :specializes relation
  :instantiates :self
  :binds ((modifier . modifier)
          (modified))
  :documentation "See the modified method in syntax/adverbs
 and the very similar relation set up by the modifer+noun
 method deployed in syntax/adjectives. Those both bind a
 modifier variable on the head rather than standup a explicit
 modifies individual as this category suggests be done.
 They all need to be unified at some point.")



