;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "predicate"
;;;   Module:  "model;core:kinds:"
;;;  version:  October 2021

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

(define-category part-of-a-whole
  :specializes relation
  :binds ((whole))
  :documentation "This identifies/names the relation that
 some 'part' of holds towards some bigger thing that contains it:
 'member' is a natural specialization. Specializations will
 refine what sort of whole is involved (a bucket, a country)
 and what sorts of things constitute a part. ")

(define-category predicate
  :specializes relation
  :lemma (:common-noun "predicate")  
  :documentation "A predicate attributes or predicates
 some property to something. Depending of what sort of
 predicate it is, this property may be implicit in the
 identity of the predicate itself (e.g. for many simple
 NP modifiers like adjectives), or may be explicitly
 represented in a variable.
    In general, predicates are 'partial', or 'unsaturated'
 relations. Some of the terms in the relation have values
 and some are 'open'. In this sense predicates are functions,
 in that the can compose with terms to form complete,
 'saturated' relations, often characterized as predications.")

(define-category predication
  :specializes state
  :lemma (:common-noun "predication")
  :binds ((predicate predicate))
  :documentation "Represents the application of a predicate
 to one or more terms, what terms and under what relationships
 (variables) is determined by the specific predicate. As the
 basis of an eventuality (clause, sentence) a predication 
 describes a state of affairs. These are a specialization
 of the category state, and the documentation on that category
 applies here as well.")


(define-category modifier
  :specializes predicate
  :mixins (with-theme)
  :realization (:s theme)
  :documentation "Modifier is the default super class of all
 adjectives (see define-adjective). One of the principle
 ways that adjectives enter into predications is in copular
 constructions, e.g. 'the block is red' where the color attribute
 is being predicated of its theme, 'the block'")

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

(define-category prepositional
  :specializes linguistic ;; to supply 'word'
  :mixins (predicate) ;; for their verb-like nature
  :instantiates nil
  :documentation "Intended to be the common parent of every
 sort of operator that can be realized as a preposition. 
 These have the semantic force of predicates and (arguably)
 form predications by being used in prepositional phrases.
 There is an argument as to whether the meaning of the
 preposition is established just from the meaning of its
 complement in the pp, or whether we must also consider the
 meaning of the head to which the pp is attached. 
    English prepositions are notoriously weird so we've
 been handling this on a case by case basis. Prepositions qua
 semantic operators is the most worked out in the model of
 relative locations.")
