;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "partial grammar"
;;;    Module:  "init;versions:v2.3a:config:grammar:"
;;;   version:  July 1995

;; copied from [grammar-configs;full grammar] 4/19/94
;; made extensive blockings 4/20,21.   Updated from 2.3 again 8/3
;; and some blockings removed.  1/9/95 added *adjectives*
;; 1/26 added *specific-sources*
;; 0.1 (7/10/95) updated from [v2.3g:config:grammars:public grammar]
;;     7/13 broke *resolve-pronouns* into that and *pronoun-objects*

(in-package :sparser)

;;;-------------------------------------------------
;;; flags controlling what goes on the Sparser menu
;;;-------------------------------------------------
;;  n.b. these aren't grammar modules, but there's a utility to
;;  being able to conditionalize the contents of the menu by version,
;;  and this is just such a place.

(defparameter *spm/include-grammar-modules*  t) ;; nil) <<<<<<<<<<<<<<<
(defparameter *spm/include-backup*           t) ;; nil) <<<<<<<<<<<<<<<
(defparameter *spm/include-citations*        t) ;; nil) <<<<<<<<<<<<<<<
(defparameter *spm/include-workbench* t)


;;---------------------------------------------------------

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
(include-grammar-module  *irregular-verbs*)
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
(include-grammar-module  *auxiliary-verbs*)



;;;------------------------------------
;;; optional facities (done with FSAs)
;;;------------------------------------

(include-grammar-module  *finite-state-automata*)

(include-grammar-module  *polywords*)
(include-grammar-module  *abbreviations*)
;;(include-grammar-module  *initials*)
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
(include-grammar-module  *verbs-with-weak-semantics*)
(include-grammar-module  *default-semantics-for-NP*)
(include-grammar-module  *heuristics-from-morphology*)
(include-grammar-module  *conjunction*)
(include-grammar-module  *relative-clauses*)
(include-grammar-module  *possessive*)


;;;-----------------------
;;; core semantic modules
;;;-----------------------

(include-grammar-module  *model-core*)

(include-grammar-module  *standard-adjuncts*)
(include-grammar-module  *approximators*)
(include-grammar-module  *frequency*)
(include-grammar-module  *sequencers*)
(include-grammar-module  *collections*)
(include-grammar-module  *proper-names*)
;;(include-grammar-module  *people*)
#|(include-grammar-module  *companies*)
  (include-grammar-module  *company-core*)
  (include-grammar-module  *kinds-of-companies*)
  (include-grammar-module  *company-generalization-words*)
  (include-grammar-module  *generic-company-words*)
  (include-grammar-module  *company-activity-nominals*)
  (include-grammar-module  *subsidiaries*)|#
(include-grammar-module  *numbers*)
(include-grammar-module  *amounts*)
(include-grammar-module  *time*)
(include-grammar-module  *money*)
;;(include-grammar-module  *finance*)
#|(include-grammar-module  *titles*)
  (include-grammar-module *titles-core*)
  (include-grammar-module *full-titles*)
  (include-grammar-module *title-heads*)
  (include-grammar-module *title-modifiers*)
  (include-grammar-module *title-qualifiers*)|#
#|(include-grammar-module  *location*)
  (include-grammar-module  *countries*)
  (include-grammar-module  *US-States*)
  (include-grammar-module  *cities*)
  (include-grammar-module  *other-locations*)
  (include-grammar-module  *locations-core*)|#



;;;-----------------------
;;; more heuristic things
;;;-----------------------


(include-grammar-module  *pronoun-objects*)
;;(include-grammar-module  *resolve-pronouns*)

#|
(include-grammar-module  *heuristics*)

(include-grammar-module  *ha*)
  (include-grammar-module  *both-ends-of-segment-heuristic*)
  (include-grammar-module  *pending-determiner-heuristic*)
|#
;;(include-grammar-module  *ca*)
  ;;(include-grammar-module  *topic*)
  ;;(include-grammar-module  *find-subject-for-VP*)
  

;;;-----------------
;;; debris analysis
;;;-----------------

(include-grammar-module  *da*)



;;;------------------------------
;;; domain mining and populating
;;;------------------------------

(include-grammar-module  *DM&P*)


;;;--------------
;;; sublanguages
;;;--------------

#|
(include-grammar-module  *sublanguages*)

(include-grammar-module  *pct*)

(include-grammar-module  *whos-news*)
(include-grammar-module  *whos-news/core*)
(include-grammar-module  *job-events*)
(include-grammar-module  *whos-news-special-grammar*)

(include-grammar-module  *reports*)

(include-grammar-module  *load-Tipster-grammar-into-image*)
(include-grammar-module  *jv/phrases*)
(include-grammar-module  *jv/relations-via-categories*)
;;(include-grammar-module  *gl*)  |#



;;;----------------------------------
;;; grammar modules to make 'public'
;;;----------------------------------

(public-grammar-module *numbers*)
(public-grammar-module *amounts*)
(public-grammar-module *money*)

