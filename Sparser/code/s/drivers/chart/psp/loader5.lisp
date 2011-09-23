;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  5.9 October 1995

;; initiated summer 1990
;;  3.0  (9/2/92) bumped to 3 and moved in the newly rationalized set
;;         of files.  9/12 added [terminate] because it got lost.
;;  4.0 (10/2 v2.3) initiating changes to the detail of scan/assess
;;  4.1 (12/6) bumping traversal to 1
;;  5.0 (4/23/93 v2.3) starting to put in the debugged word-level that
;;       fits the new tokenizer and treatment of word-triggered ops.
;;       Did [march/seg] -> 4 5/7
;;  5.1 (5/11) pulled in forest-level drivers, moving them out of 
;;       analyzers;forest:, added [scan], 5/14 pulled in [trigger]
;;  5.2 (7/16) commented out [tt manager] as obsolescent
;;  5.3 (9/27) moving [traversal] up to chart; and loading it from
;;       the master-loader
;;  5.4 (3/17/94) bumped [march/seg] to 5.  5/5 bumped [scan] to 1
;;  5.5 (5/12) bumped [scan] to 2
;;  5.6 (5/13) added [adjudicators]
;;  5.7 (7/13) bumped [PPTT] to 8   (8/1) bumped [adjudicators] to 1
;;  5.8 (11/1) bumped [trigger] to 5
;;  5.9 (10/4/95) bumped [scan] to 2, added [initiate pattern scan]

(in-package :sparser)

(lload "psp-drivers;flags")
(lload "psp-drivers;initiate pattern scan")
(lload "psp-drivers;scan3")
(lload "psp-drivers;adjudicators1")
(lload "psp-drivers;pts5")
(lload "psp-drivers;march-seg5")
;;(lload "psp-drivers;tt manager6")
(lload "psp-drivers;march-forest3")
(lload "psp-drivers;PPTT8")
(lload "psp-drivers;trigger5")

