;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1991,1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "analyzers;psp:complete:"
;;;   Version:   1.4 November 1993

;; 1.1 (5/2 v1.8.4) bumped "complete HA" -> 1 to shelter the changes
;;     for the new parsing protocol.
;; 1.2 (10/21 v2.0) blocked out everything except hugin to see if they
;;     are really not being used and could be omitted.  Also bumped
;;     [complete HA] -> 2
;;     (11/28 v2.1) separated the referent into its own directory
;; 1.3 (7/14/92 v2.3) bumped HA to 3, bumped this loader to 1
;; 1.3 (11/12/93) bumped HA to 4

(in-package :sparser)

(lload "complete;complete HA3")
(lload "complete;switch complete")

