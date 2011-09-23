;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;psp:fill chart:"
;;;  Version:  4.2 January 1995

;; 4.0 (9/28 v2.3) bumped for version change to accomodate changes in
;;      the tokenizer.
;; 4.1 (11/25) bumped [store] to make major modifications in what position it
;;       clears.
;; 4.2 (1/24/95) added [testing]

(in-package :sparser)

(lload "fill chart;globals")
(lload "fill chart;add5")
(lload "fill chart;store5")
(lload "fill chart;newline")
(lload "fill chart;testing")

