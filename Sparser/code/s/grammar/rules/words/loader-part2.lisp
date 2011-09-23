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
;; loaded.

(in-package :sparser)

(gate-grammar *adverbs*
  (gload "words;adverbs1"))

