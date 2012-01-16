;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader-part2"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   September 2011

;; Broken out from words;loader1 on 9/16/11. Handles problem of
;; defining function words that want categorial interpretations
;; like the adverbs do. Positioned in load-the-grammar after
;; the tree-families and upper-model just before syntax is
;; loaded. 9/29/11 Moved in prepositions2 and repositioned this
;; after the adjuncts since the prepositions need them.

(in-package :sparser)

(gate-grammar *adverbs*
  (gload "words;adverbs1"))

(gate-grammar *prepositions*
  (if *include-model-facilities*
    (gload "words;prepositions2")
    (gload "words;prepositions1")))

