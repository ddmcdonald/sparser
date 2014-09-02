;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;forest:"
;;;  Version:  0.4 August 2014

;; 0.2 (7/16/93 v2.3) flushed [boundaries], bumped [CA] -> 3
;; 0.3 (8/16) gated CA to facilitate parser-only version
;; 0.4 (4/27/95) bumped [ca] to 4
;;     (8/4/14) added [new-forest-protocol] 8/6/14 [parsing-containers]
;;     (8/30/14) added [sweep], [forest-gophers], and [island-driving]

(in-package :sparser)

(when *heuristics*
  (lload "forest-drivers;CA4"))

(lload "forest-drivers;actions1")
(lload "forest-drivers;trap2")

(lload "forest-drivers;parsing-containers")
(lload "forest-drivers;forest-gophers")
(lload "forest-drivers;sweep")
(lload "forest-drivers;new-forest-protocol")
(lload "forest-drivers;island-driving")
