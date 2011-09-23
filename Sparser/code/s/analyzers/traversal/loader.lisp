;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;traversal:"
;;;  Version:  0.2 June 1994

;; initiated 10/19/91
;; 0.1 (5/6/94 v2.3) moved in the form from [objects;forms] and added
;;      [forest scan]
;; 0.2 (6/9) bumped [interiors] to 1.  6/15 added [dispatch]

(in-package :sparser)

(lload "traversal-routines;form")
(lload "traversal-routines;forest scan")
(lload "traversal-routines;dispatch")
(lload "traversal-routines;interiors1")

