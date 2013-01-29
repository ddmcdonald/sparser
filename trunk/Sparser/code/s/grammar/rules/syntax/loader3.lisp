;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1997,2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  3.8 January 2013

;; 3.0 (10/11/92 v2.3) Bumped to shadow old versions from extensive
;;      changes involving form rules and the new semantics
;; 3.1 (10/25) added [articles]
;; 3.2 (12/28) shifted categories to master loader
;; 3.3 (5/6/93) pulled aux's to words;
;;     (6/18) put in subject relatives
;; 3.4 (9/21) pulled out the approx. and frequency to [core:adjuncts:]
;; 3.5 (7/26/94) put [possessive] back in.  (7/28) added [comparatives]
;; 3.6 (12/29) bumped [conjunction]
;;     (3/18/95) put in fine-grained logicals.
;;     (8/8/07) added semantics of wh words.
;; 3.7 (6/17/09) Added [questions]. (8/31/11) added semantics for [quantifiers]
;;     (9/19/11) Bumped [adverbs]. (9/30/11) added [prepositions]
;; 3.8 (1/18/13) Moved relatives after WH since it references them. 
;;     (1/22/13) Added [adjectives]

(in-package :sparser)

(gate-grammar *standard-syntactic-categories*
  ;;(gload "syntax;categories") -- logically this goes here,
  ;;  but it needs to be loaded before bracket definitions that
  ;;  reference these categories, so it's been moved into the
  ;;  master loader
  )

(gate-grammar *heuristics-from-morphology*
  (gload "syntax-morph;affix rules"))

(gate-grammar *default-semantics-for-vg*
  (gload "syntax-vg;tense")
  (gload "syntax-vg;have")
  (gload "syntax-vg;be")
  (gload "syntax-vg;modals")   ;; references #<have>
  (gload "syntax-vg;adverbs1"))


(gate-grammar *default-semantics-for-NP*
  (gload "syntax-art;articles")
  (gload "syntax-art;adjectives")
  (gload "syntax-art;prepositions"))

(gate-grammar *conjunction*
  (gload "syntax-conj;conjunction7"))

(gate-grammar *possessive*
  (gload "syntax-poss;possessive"))

(gate-grammar *default-quantifier-semantics*
  (gload "syntax-quant;quantifiers"))

(gate-grammar *comparatives*
  (gload "syntax-comp;comparatives"))

(gate-grammar *semantics-of-WH-words*
  (gload "syntax-comp;WH-word-semantics")
  (gload "syntax-comp;questions"))

(gate-grammar *relative-clauses* ;; references WH categories
  (gload "syntax-rel;subject relatives"))

