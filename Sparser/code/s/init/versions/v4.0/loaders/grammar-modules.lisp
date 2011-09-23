;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1999,2010-2010  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:  "grammar modules"
;;;    Module:  "init;versions:v2.7:loaders:"
;;;   version:  August 2011

;; 12/4/92 pulled word options made irrelevant in master-loader
;; 5/11/93 added refinements in words and syntax
;; 5/16 sorted out division of labor b/t rules;words and syntax
;; 6/11 added pct module
;; 6/21 (PB) fleshed out name and parent fields
;; 7/21 cleaned up the threading
;; 8/17 *pronouns* was ambiguous, added *resolve-pronouns*
;; 9/13 added *da*.  9/21 added *standard-adjuncts* and below
;; 3/15/94 added cases for companies and titles
;; 3/17 added *brackets*, Reordered everything to set up a better ordering in the menu
;; 3/28 added *hyphen* and *DM&P*.  4/4 added 'other' and 'core' to locations
;; 4/11 added *whos-news/core*  4/13 added *tree-families and *standard-
;; syntactic-constructions*.  4/26 broke out heuristics, adding *ca* and *ha*
;; 5/12 added *glifs*   7/25 added *irregular-verbs*  7/29 added *comparatives*
;; 9/28 added *company-activity-words*  1/9/95 added *adjectives*
;; 1/26 added *specific-sources*. 1/26 added *specific-sources*
;; 2/28 put them into reverse order so they's come out right in the menu
;; 3/7 fixed time-of-definition bug in that new ordering.  tweeked order 4/12
;; 4/28 added *verbs-with-weak-semantics* and *known-verbs*.   5/8 moved
;; some heuristics up a level on the chance that it effects their menu layout
;; 7/13 broke *resolve-pronouns* into that and *pronoun-objects*
;; 9/21 added *internet*  12/26 added *ern*  7/21 added *nih*.
;; 10/17/97 broke out *digits-fsa*. 12/13/99 added *kinds*. 2/9/07 added
;; *SDM&P*. 7/16 Added set for ambush. 8/8 added *semantics-of-WH-words*
;; 6/09 added *checkpoint-ops*. 8/27/09 added *poirot*. 11/12/10 removed it,
;; added *reversable*. 7/19/11 added *generic-military* since none of the
;; others looked right. 8/31/11 added *default-quantifier-semantics*

(in-package :sparser)

#|  This is the set of all grammar modules known to the loaders.
    By default they are all off, and must be explicitly activated
    in a configuration file before they will be loaded.   |#



;;;-------------------------
;;; general syntactic rules
;;;-------------------------
;; these are read in the loader for rules;syntax

(define-summary-grammar-module  *syntax*
                                :name "syntax")

(define-grammar-module  *heuristics-from-morphology*
                        :parent *syntax*
                        :name "morphological rules")


(define-grammar-module  *tree-families*
                        :parent *syntax*
                        :name "tree families")


(define-grammar-module  *standard-syntactic-constructions*
                        :parent *syntax*
                        :name "constructions" )

(define-grammar-module  *conjunction*
                        :parent *standard-syntactic-constructions*
                        :name "conjunction")

(define-grammar-module  *relative-clauses*
                        :parent *standard-syntactic-constructions*
                        :name "relative clauses")

(define-grammar-module  *possessive*
                        :parent *standard-syntactic-constructions*
                        :name "possessive")

(define-grammar-module  *default-quantifier-semantics*
                        :parent *standard-syntactic-constructions*
                        :name "quantifiers")

(define-grammar-module  *default-semantics-for-NP*
                        :parent *standard-syntactic-constructions*
                        :name "NP modifiers")

(define-grammar-module  *verbs-with-weak-semantics*
                        :parent *standard-syntactic-constructions*
                        :name "weak verbs")

(define-grammar-module  *default-semantics-for-vg*
                        :parent *standard-syntactic-constructions*
                        :name "auxiliary verbs" )

(define-grammar-module  *semantics-of-WH-words*
                        :parent *standard-syntactic-constructions*
			:name "semantics of WH")


(define-grammar-module  *standard-syntactic-categories*
                        :parent *syntax*
                        :name "syntactic labels" )



;;;------------------------------------------
;;; empty definitions for closed-class words
;;;------------------------------------------
;; These are read in the loader for rules;words
;; They define bracket properties but not any semantics

(define-grammar-module *general-words*
                       :name "closed class words"
                       :parent *syntax* )

(define-grammar-module  *brackets*
                        :parent *general-words* )

(define-grammar-module  *WH-words*
                        :parent *general-words*
                        )

(define-grammar-module  *punctuation*
                        :parent *general-words* )

(define-grammar-module  *quantifiers*
                        :parent *general-words*
                        )

(define-grammar-module  *pronouns*
                        :parent *general-words*
                        )

(define-grammar-module  *prepositions*
                        :parent *general-words*
                        )

(define-grammar-module  *interjections*
                        :parent *general-words*
                        )

(define-grammar-module  *determiners*
                        :parent *general-words*
                        )

(define-grammar-module  *contractions*
                        :parent *general-words*
                        )

(define-grammar-module  *conjunctions*
                        :parent *general-words*
                        )

(define-grammar-module  *comparatives*
                        :parent *general-words*
                        )

(define-grammar-module  *known-verbs*
                        :name "words marked as verbs"
                        :parent *general-words* )

(define-grammar-module  *irregular-verbs*
                        :parent *general-words* )

(define-grammar-module  *auxiliary-verbs*
                        :parent *general-words*
                        )

(define-grammar-module  *adverbs*
                        :parent *general-words*
                        )

(define-grammar-module  *adjectives*
                        :parent *general-words*
                        )



;;;-----------------------
;;; core semantic modules
;;;-----------------------

(define-summary-grammar-module  *model-core*
                                :name "semantic core")

(define-grammar-module  *kinds*
                        :name "kinds"
                        :parent *model-core*
                        )

(define-grammar-module  *standard-adjuncts*
                        :name "adjuncts"
                        :parent *model-core*
                        )

(define-grammar-module  *approximators*
                        :name "approximators"
                        :parent *standard-adjuncts*
                        )

(define-grammar-module  *frequency*
                        :name "frequency"
                        :parent *standard-adjuncts*
                        )

(define-grammar-module  *sequencers*
                        :name "sequencers"
                        :parent *standard-adjuncts*
                        )




(define-grammar-module  *titles*
                        :name "titles"
                        :parent *model-core* )

(define-grammar-module  *titles-core*
                        :parent *titles*
                        :name "core")

(define-grammar-module  *full-titles*
                        :parent *titles*
                        :name "full titles")

(define-grammar-module  *title-heads*
                        :parent *titles*
                        :name "title heads")

(define-grammar-module  *title-modifiers*
                        :parent *titles*
                        :name "title modifiers")

(define-grammar-module  *title-qualifiers*
                        :parent *titles*
                        :name "title qualifiers")




(define-grammar-module  *finance*
                        :name "finance"
                        :parent *model-core*
                        )

(define-grammar-module  *money*
                        :name "money"
                        :parent *model-core*
                        )

(define-grammar-module  *numbers*
                        :name "numbers"
                        :parent *model-core*
                        )

(define-grammar-module  *digits-fsa*
                        :name "digits fsa"
                        :parent *model-core*
                        )

(define-grammar-module  *amounts*
                        :name "amounts"
                        :parent *model-core*
                        )



(define-grammar-module  *time*
                        :name "time"
                        :parent *model-core*
                        )



(define-grammar-module  *location*
                        :name "location"
                        :parent *model-core*
                        )

(define-grammar-module  *other-locations*
                        :name "other"
                        :parent *location* )

(define-grammar-module  *cities*
                        :name "cities"
                        :parent *location* )

(define-grammar-module  *US-States*
                        :name "States of the US"
                        :parent *location* )

(define-grammar-module  *countries*
                        :name "countries"
                        :parent *location* )

(define-grammar-module  *locations-core*
                        :name "core"
                        :parent *location* )



(define-grammar-module  *companies*
                        :name "companies"
                        :parent *model-core* )

(define-grammar-module  *company-core*
                        :name "core"
                        :parent *companies* )

(define-grammar-module  *kinds-of-companies*
                        :name "kinds of companies"
                        :parent *companies* )

(define-grammar-module  *company-generalization-words*
                        :name "generalization words"
                        :parent *companies* )

(define-grammar-module  *company-activity-words*
                        :name "activity words"
                        :parent *companies* )

(define-grammar-module  *generic-company-words*
                        :name "generic words"
                        :parent *companies* )

(define-grammar-module  *company-activity-nominals*
                        :name "activity-er words"
                        :parent *companies* )

(define-grammar-module  *subsidiaries*
                        :name "subsidiaries"
                        :parent *companies* )



(define-grammar-module  *people*
                        :name "people"
                        :parent *model-core*
                        )


(define-grammar-module  *proper-names*
                        :name "proper names"
                        :parent *model-core*
                        )


(define-grammar-module  *collections*
                        :name "collections"
                        :parent *model-core*
                        )


;;;--------------
;;; sublanguages
;;;--------------

(define-summary-grammar-module  *sublanguages*)



(define-grammar-module  *load-Tipster-grammar-into-image*
                        :name "joint ventures"
                        :parent *sublanguages*)

(define-grammar-module  *jv/phrases*
                        :name "phrases for JV"
                        :parent *load-Tipster-grammar-into-image*)

(define-grammar-module  *jv/relations-via-categories*
                        :name "JV relations (by category)"
                        :parent *load-Tipster-grammar-into-image*)



(define-grammar-module  *nih*
                        :name "molecular biology"
                        :parent *sublanguages*)


(define-grammar-module  *ern*
                        :name "earnings reports"
                        :parent *sublanguages*)


(define-grammar-module  *whos-news*
                        :name "Who's News"
                        :parent *sublanguages*
                        )

(define-grammar-module  *whos-news/core*
                        :name "core"
                        :parent *whos-news*
                        )

(define-grammar-module  *job-events*
                        :name "Job events"
                        :parent *whos-news*
                        )

(define-grammar-module  *whos-news-special-grammar*
                        :name "special grammar"
                        :parent *whos-news*
                        )




(define-grammar-module  *reports*
                        :name "reports"
                        :parent *sublanguages*)


(define-grammar-module  *pct*
                        :name "person, company, title"
                        :parent *sublanguages*
                        )



(define-grammar-module  *internet*
                        :name "Internet items"
                        :parent *sublanguages*
                        )




(define-grammar-module  *ambush*
    :name "Ambush: convoy ops"
    :parent *sublanguages*)

(define-grammar-module  *call-signs*
    :name "Call signs"
    :parent *ambush*)

(define-grammar-module *checkpoint-ops*
    :name "Checkpoint Operations"
    :parent *sublanguages*)

(define-grammar-module *generic-military*
    :name "Generic Military"
    :parent *sublanguages*)



(define-grammar-module *disease*  ;; for bird flu
                       :name "Disease and death"
		       :parent *sublanguages*)
		       



;;;-----------------------------------------------------
;;; toplevel module to group all the random stuff under
;;;-----------------------------------------------------

(define-summary-grammar-module  *other* )


;;;------------------
;;; testing routines
;;;------------------

(define-grammar-module *testing*
                       :parent *other* )

;; timing, distance b/w brackets, line count
(define-grammar-module *miscellaneous*
                       :parent *testing* )

(define-grammar-module *citations*
                       :parent *testing* )



;;;-----------------------------------
;;; large-scale structure of the text
;;;-----------------------------------

(define-grammar-module *orthographic-structure*
                       :parent *other* )

(define-grammar-module  *glifs*
                        :parent *orthographic-structure*)

(define-grammar-module  *paired-punctuation*
                        :parent *orthographic-structure*)

(define-grammar-module  *context-variables*
                        :parent *orthographic-structure*)

(define-grammar-module  *recognize-sections-within-articles*
                        :parent *orthographic-structure*)

(define-grammar-module  *sgml*
                        :parent *orthographic-structure*)

(define-grammar-module  *specific-sources*
                        :parent *orthographic-structure*)

(define-grammar-module  *paragraph-detection*
                        :parent *orthographic-structure*)



;;;-----------------------
;;; more heuristic things
;;;-----------------------

(define-grammar-module  *heuristics*
                        :parent *other*
                        :name "heuristics")


(define-grammar-module  *pronoun-objects*
                        :name "pronouns"
                        :parent *other* )

(define-grammar-module  *resolve-pronouns*
                        :name "resolve pronouns"
                        :parent *other* )


(define-grammar-module  *topic*
                        :name "topic company"
                        :parent *other* )



;;;--------------------
;;; Heuristic analysis
;;;--------------------

(define-grammar-module *ha*
                       :name "Heuristic Analysis"
                       ;;:parent *heuristics*
                       :parent *other* )

(define-grammar-module  *both-ends-of-segment-heuristic*
                        :name "both ends of segment"
                        :parent *ha*)

(define-grammar-module  *pending-determiner-heuristic*
                        :name "pending determiner"
                        :parent *ha*)


;;;---------------------
;;; Conceptual analysis
;;;---------------------

(define-grammar-module *ca*
                       :name "Conceptual Analysis"
                       ;;:parent *heuristics*
                       :parent *other* )

(define-grammar-module  *find-subject-for-VP*
                        :name "search for subject"
                        :parent *ca*)



;;;-----------------
;;; debris analysis
;;;-----------------

(define-grammar-module *da*
                       :name "Debris Analysis"
                       :parent *other* )



;;;------------------------------
;;; domain mining and populating
;;;------------------------------

(define-grammar-module *DM&P*
                       :name "Domain Mining"
                       :parent *other* )

(define-grammar-module *SDM&P*
                       :name "Strong Domain Mining"
                       :parent *other* )



;;;--------------------------------------
;;; reversibility (connection to Mumble)
;;;--------------------------------------

(define-grammar-module *reversable*
                       :name "Reversing parsing results"
		       :parent *other*)


;;;------------------------------------
;;; optional facities (done with FSAs)
;;;------------------------------------

(define-grammar-module  *finite-state-automata*
                        :parent *other* )

(define-grammar-module  *polywords*
                        :parent *finite-state-automata* )

(define-grammar-module  *abbreviations*
                        :parent *finite-state-automata* )

(define-grammar-module  *initials*
                        :parent *finite-state-automata* )

(define-grammar-module  *single-quote*
                        :parent *finite-state-automata* )

(define-grammar-module  *hyphen*
                        :parent *finite-state-automata* )


