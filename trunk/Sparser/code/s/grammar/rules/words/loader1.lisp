;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1999,2011-2012  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   1.9 December 2012

;; initiated 2/1/91, added "other adverbs" & "vague" 2/12, added
;;    "conjunctions" 2/20, added scheme for function words and
;;    some cases 3/20, 4/23 added contractions.  11/17 elevated
;;    format1 as [spaces], 12/28 put in the load flags
;; 1.0 (9/7/92 v2.3) bumped this file to shadow some files for
;;      conversion to the new semantics
;; 1.1 (9/21) pulled the punctuation file out to the masterloader
;;      for coordination with populating the dispatch array for the
;;      tokenizer
;; 1.2 (12/4) cleaning up the loading and module control
;; 1.3 (12/17) made submodules for kinds of function words
;; 1.4 (5/6/93) added [aux verbs] from syntax;
;; 1.5 (3/17/94) moved in [punctuation bracketing] from bracket assignments
;; 1.6 (11/16) bumped [quantifiers] to 1.  12/12 added *brackets* gate to punct.
;;     (1/9/95) added [adjectives].
;; 1.7 (1/30) bumped [prepositions] to 1
;; 1.8 (10/14/99) bumped it to 2 contingent on this being a load with the model
;; 1.9 (9/16/11) moved out adverbs to loader-part2 because they're creating
;;      categories now. Others might follow. 9/29/11 Moved prepositions over.
;;     (12/3/12) Moved in comlex priming

(in-package :sparser)

(gload "words;fn word routine")

(gate-grammar *brackets*
  (gate-grammar *punctuation*
    (gload "words;punctuation bracketing")
    (gload "words;punctuation rules"))
  (gload "words;comlex priming"))

(gate-grammar *determiners*
  (gload "words;determiners"))

(gate-grammar *conjunctions*
  (gload "words;conjunctions"))

(gate-grammar *interjections*
  (gload "words;interjections"))

(gate-grammar *pronouns*
  (gload "words;pronouns"))

(gate-grammar *quantifiers*
  (gload "words;quantifiers1"))


(gate-grammar *WH-words*
  (gload "words;WH words"))

(gate-grammar *auxiliary-verbs*
  (gload "words;aux verbs"))

(gate-grammar *contractions*
  (gload "words;contractions"))

(gate-grammar *adjectives*
  (gload "words;adjectives"))

