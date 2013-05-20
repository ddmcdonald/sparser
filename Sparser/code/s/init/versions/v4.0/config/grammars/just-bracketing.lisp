;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:  "just bracketing"
;;;    Module:  "init;versions:v3.1:config:grammars:"
;;;   version:  May 2013

;; Initiated 2/20/10 by cutting down the 2/10 version of full-grammar
;; 5/27/10 removed the few core semantic modules that had been there
;; 6/6/10 Blocked SGML because its rules (e.g. for "p") runs outside 
;; of angle brackets. Put the core modules back after fixing problem
;; with "also".  5/9/13 added reversible

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
;(include-grammar-module  *sgml*) ;; missrecognizes "p" by itself
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
  ;; Needed at least for pronouns

;(include-grammar-module  *standard-syntactic-constructions*)
(include-grammar-module  *default-semantics-for-vg*)
;(include-grammar-module  *semantics-of-WH-words*)
;(include-grammar-module  *verbs-with-weak-semantics*)
(include-grammar-module  *default-semantics-for-NP*)
(include-grammar-module  *heuristics-from-morphology*)
;(include-grammar-module  *conjunction*)
;(include-grammar-module  *relative-clauses*)
(include-grammar-module  *possessive*)


;;;-----------------------
;;; core semantic modules
;;;-----------------------

(include-grammar-module  *standard-adjuncts*)
(include-grammar-module  *approximators*)
(include-grammar-module  *frequency*)
(include-grammar-module  *sequencers*)


;;;-----------------------
;;; more heuristic things
;;;-----------------------

(include-grammar-module  *heuristics*)

(include-grammar-module  *pronoun-objects*)
;(include-grammar-module  *resolve-pronouns*)
;(include-grammar-module  *topic*)

(include-grammar-module  *ha*)
  (include-grammar-module  *both-ends-of-segment-heuristic*)
  (include-grammar-module  *pending-determiner-heuristic*)

;(include-grammar-module  *ca*)
;  (include-grammar-module  *find-subject-for-VP*)



;;;-----------------
;;; debris analysis
;;;-----------------

(include-grammar-module  *da*)



;;;------------------------------
;;; domain mining and populating
;;;------------------------------

(include-grammar-module  *DM&P*)
(include-grammar-module  *SDM&P*)


;;;--------------------------------------
;;; reversibility (connection to Mumble)
;;;--------------------------------------

(include-grammar-module  *reversable*)


