;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "acumen-grammar"
;;;    Module:  "init/config/grammars/"
;;;   version:  December 2021

;; created 8/13/21 from a copy of the score grammar configuration.

(in-package :sparser)

(include-grammar-module  *other*)
(include-grammar-module  *testing*)
(include-grammar-module  *citations*)
(include-grammar-module  *miscellaneous*)


;;;-----------------------------------
;;; large-scale structure of the text
;;;-----------------------------------

(include-grammar-module  *orthographic-structure*)

(include-grammar-module  *paragraph-detection*)
(include-grammar-module  *specific-sources*)
(include-grammar-module  *recognize-sections-within-articles*)
(include-grammar-module  *sgml*)
(include-grammar-module  *paired-punctuation*)
(include-grammar-module  *context-variables*)
(include-grammar-module  *glifs*)


;;;------------------------------------------
;;; empty definitions for closed-class words
;;;------------------------------------------
;; these are read in the loader for rules;words

(include-grammar-module  *general-words*)
(include-grammar-module  *brackets*)
(include-grammar-module  *auxiliary-verbs*)
(include-grammar-module  *irregular-verbs*)
(include-grammar-module  *known-verbs*)
(include-grammar-module  *punctuation*)
(include-grammar-module  *conjunctions*)
(include-grammar-module  *adjectives*)
(include-grammar-module  *adverbs*)
(include-grammar-module  *interjections*)
(include-grammar-module  *prepositions*)
(include-grammar-module  *pronouns*)
(include-grammar-module  *comparatives*)
(include-grammar-module  *WH-words*)
(include-grammar-module  *quantifiers*)
(include-grammar-module  *determiners*)
(include-grammar-module  *contractions*)



;;;------------------------------------
;;; optional facities (done with FSAs)
;;;------------------------------------

(include-grammar-module  *finite-state-automata*)

(include-grammar-module  *polywords*)
(include-grammar-module  *abbreviations*)
(include-grammar-module  *initials*)
(include-grammar-module  *single-quote*)
(include-grammar-module  *hyphen*)



;;;-------------------------
;;; general syntactic rules
;;;-------------------------
;; these are read in the loader for rules;syntax

(include-grammar-module  *syntax*)

(include-grammar-module  *standard-syntactic-categories*)

(include-grammar-module  *tree-families*)

(include-grammar-module  *standard-syntactic-constructions*)
(include-grammar-module  *default-semantics-for-vg*)
(include-grammar-module  *semantics-of-WH-words*)
(include-grammar-module  *verbs-with-weak-semantics*)
(include-grammar-module  *default-semantics-for-NP*)
(include-grammar-module  *heuristics-from-morphology*)
(include-grammar-module  *conjunction*)
(include-grammar-module  *relative-clauses*)
(include-grammar-module  *possessive*)
(include-grammar-module  *default-quantifier-semantics*)


;;;-----------------------
;;; core semantic modules
;;;-----------------------

(include-grammar-module  *model-core*)

(include-grammar-module  *kinds*)
(include-grammar-module  *mid-level-ontology*)
(include-grammar-module  *standard-adjuncts*)
  (include-grammar-module  *approximators*)
  (include-grammar-module  *frequency*)
  (include-grammar-module  *sequencers*)

(include-grammar-module *qualities*)

(include-grammar-module  *collections*)
(include-grammar-module  *proper-names*)
(include-grammar-module  *people*)

(include-grammar-module  *companies*)
  (include-grammar-module  *company-core*)
  (include-grammar-module  *kinds-of-companies*)
  (include-grammar-module  *company-generalization-words*)
  (include-grammar-module  *company-activity-words*)
  (include-grammar-module  *generic-company-words*)
  (include-grammar-module  *company-activity-nominals*)
  (include-grammar-module  *subsidiaries*)

(include-grammar-module  *numbers*)
(include-grammar-module  *digits-fsa*)
(include-grammar-module  *amounts*)

(include-grammar-module  *time*)
(include-grammar-module  *money*)
;; (include-grammar-module  *finance*)

;; May want a narrower breakdown here to avoid gratuitous
;; overlap with abbreviations of statistical properties
(include-grammar-module  *titles*)
  (include-grammar-module *titles-core*)
  (include-grammar-module *full-titles*)
  (include-grammar-module *title-heads*)
  (include-grammar-module *title-modifiers*)
(include-grammar-module *title-qualifiers*)

(include-grammar-module  *location*)
 (include-grammar-module  *locations-core*)

 (include-grammar-module  *countries*)
 (include-grammar-module  *US-States*)
 (include-grammar-module  *cities*)

 (include-grammar-module  *other-locations*)




;;;-----------------------
;;; more heuristic things
;;;-----------------------

(include-grammar-module  *heuristics*)

(include-grammar-module  *pronoun-objects*)
(include-grammar-module  *resolve-pronouns*)
(include-grammar-module  *incrementally-resolve-pronouns*)
(include-grammar-module  *topic*)

(include-grammar-module  *ha*)
  (include-grammar-module  *both-ends-of-segment-heuristic*)
  (include-grammar-module  *pending-determiner-heuristic*)

(include-grammar-module  *ca*)
  (include-grammar-module  *find-subject-for-VP*)


;;;-----------------
;;; debris analysis
;;;-----------------

(include-grammar-module  *da*)


;;;------------------------------
;;; domain mining and populating
;;;------------------------------

;;(include-grammar-module  *DM&P*)
(include-grammar-module  *SDM&P*)


;;;--------------------------------------
;;; reversibility (connection to Mumble)
;;;--------------------------------------

(include-grammar-module  *reversable*)


;;;--------------
;;; sublanguages
;;;--------------

(include-grammar-module  *sublanguages*)

(include-grammar-module *acumen-motifs*)

;; (include-grammar-module  *pct*)

;; (include-grammar-module  *whos-news*)
;; (include-grammar-module  *whos-news/core*)
;; (include-grammar-module  *job-events*)
;; (include-grammar-module  *whos-news-special-grammar*)

;; (include-grammar-module  *ern*)

(include-grammar-module  *reports*)

(include-grammar-module  *internet*)

;; (include-grammar-module  *ambush*)
;; (include-grammar-module  *call-signs*)
;; (include-grammar-module  *checkpoint-ops*)
(include-grammar-module  *disease*)
;;(include-grammar-module  *biology*)
(include-grammar-module  *non-academic-biology*)

;; preliminary version of sublanguage where statistical tests and measures are getting defined - temporarily commented out until it's more functional
(include-grammar-module  *score-stats*)
(include-grammar-module *score-verbs*)

;; (include-grammar-module  *musica*) -- include it?
;; (include-grammar-module  *hurricanes*)
;;(include-grammar-module  *generic-military*)

;; (include-grammar-module *middle-east*)
(include-grammar-module *academics*)
;; (include-grammar-module *Banking*)
;; (include-grammar-module *ISR*)
;; (include-grammar-module *waypoints*)
(include-grammar-module *blocks-world*)
;; (include-grammar-module *biocuration*)

;; (include-grammar-module  *load-Tipster-grammar-into-image*)
;; (include-grammar-module  *jv/phrases*)
;; (include-grammar-module  *jv/relations-via-categories*)


