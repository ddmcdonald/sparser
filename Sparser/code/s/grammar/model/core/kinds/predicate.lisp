;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "predicate"
;;;   Module:  "model;core:kinds:"
;;;  version:  Decembe 2016

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

(define-category partonomic
  :specializes relation
  :binds ((parts)
          (part-type :primitive category)
          (has-part)
          (part-of))
  :documentation "A composite and its parts may be
 organized into a partonomy. If we were modeling
 lexical facts rather than phyical ones we'd call it
 a meronymy. Standard parts typically have names that 
 implicitly indicate what kind of thing they are part of:
 People and their faces and hands (etc). Staircases and
 their steps.
   'parts' will hold a list of particular parts
   'part-type' is the category of the parts, which
      is complicated when the things are complicated,
      e.g. people, cells, cars
   'has-part' is the relation from the whole to a
      single particular part
   'part-of' is the inverse from a particular to its 
      whole.")


(define-category predicate
  :instantiates nil
  :specializes has-name ;; which is a specialization of relation
  :documentation "A predicate attributes or predicates
 some property to something. Depending of what sort of
 predicate it is, this property may be implicit in the
 identity of the predicate itself (e.g. for many simple
 NP modifiers like adjectives), or may be explicitly
 represented in a variable.")

(define-category predication
  :specializes state
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



