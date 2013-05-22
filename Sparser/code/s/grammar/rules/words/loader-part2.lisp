;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2013 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader-part2"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   May 2013

;; Broken out from words;loader1 on 9/16/11. Handles problem of
;; defining function words that want categorial interpretations
;; like the adverbs do. Positioned in load-the-grammar after
;; the tree-families and upper-model just before syntax is
;; loaded. 9/29/11 Moved in prepositions2 and repositioned this
;; after the adjuncts since the prepositions need them.
;; 5/22/13 Bumped adverbs to 2 to make them over using define-
;; function-term

(in-package :sparser)

(gate-grammar *adverbs*
  (gload "words;adverbs2"))

(gate-grammar *prepositions*
  (if *include-model-facilities*
    (gload "words;prepositions2")
    (gload "words;prepositions1")))

