;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993-1997  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:HA:"
;;;  Version:  1.1 January 1995

;; 1.0 (6/13/93 v2.3) Bumped everything up for their new designs based
;;      on brackets, flushed a [predicates] file made irrelevant by brackets
;;      and added a common [driver]
;; 1.1 (1/5/95) added [colon header]

(in-package :sparser)

(gate-grammar *both-ends-of-segment-heuristic*
  (gload "ha;driver")
  (gload "ha;both ends1"))

(gate-grammar *pending-determiner-heuristic*
  (gload "ha;determiner1"))

(gate-grammar *recognize-sections-within-articles*
  (gload "ha;colon header"))

