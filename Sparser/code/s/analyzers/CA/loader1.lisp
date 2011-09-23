;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;CA:"
;;;  Version:  1.6 August 1994

;; 1.1 (7/14/92 v2.3) bumped the number on this file to 1 and bumped
;;       [anaphora] to 1, [search] -> 2
;; 1.2 (9/7) bumped the [replace] loader to 1 for continuity in field definitions
;; 1.3 (7/16/93) flushed the routines that will never be resurected:
;;      [replace], [prepositions], [incr search]
;; 1.4 (8/17) gated [anaphora]
;; 1.5 (4/24/94) removed the 'resolve-pronouns' gate around anaphora since that
;;      code is now used more generally
;; 1.6 (8/29) bumped [anaphora] to 2.  8/30 and again to 3.

(in-package :sparser)

(lload "do CA;actions")
(lload "do CA;scanners1")
(lload "do CA;search2")
(lload "do CA;anaphora3")

