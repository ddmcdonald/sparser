;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;treetop:"
;;;  Version:  0.4 April 1995

;; 0.2 (7/16/93 v2.3) flushed [boundaries], bumped [CA] -> 3
;; 0.3 (8/16) gated CA to facilitate parser-only version
;; 0.4 (4/27/95) bumped [ca] to 4

(in-package :sparser)

(when *heuristics*
  (lload "forest-drivers;CA4"))

(lload "forest-drivers;actions1")
(lload "forest-drivers;trap2")

