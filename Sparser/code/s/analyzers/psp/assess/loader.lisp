;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "analyzers;psp:assess:"
;;;   Version:   6.0 May 1993
;;;
;;; Change Log:
;;; 1.1  Reconfigures the design to add a "switch" for the Assess procedures.
;;;      Breaks the specific actions (vs. the dispatch) out into its own
;;;      file.
;;; 1.2  shields v1.4 from changes to the specifics file
;;; 1.3  Puts the specifics and edge code under the all/top switch
;;; 1.4  (4/11 v1.8.2) Saved a copy of pos/pw[2]
;;; 1.5  (1/16/92 v2.2) moved in the "new" set
;;; 6.0  (9/3 v2.3) cleaned out the dead wood, bumped [switch] to 2,
;;;      (9/12) bumped [terminal edges] to 2.
;;;      (5/22/93) bumped [nonterminals] to 1

(in-package :sparser)

(lload "assess;terminal edges2")
(lload "assess;nonterminals1")
(lload "assess;switch2")

