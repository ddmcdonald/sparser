;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "analyzers;forest:"
;;;   Version:   1.0 July 1993

;; (4/26/91 v1.8.4) started adding extensions for new scheme
;; 1.0 (5/11/93 v2.3) moved [tt manager], [march/forest] and [PPTT] to psp drivers
;;      5/14 moved over [trigger]

(in-package :sparser)

(lload "forest;treetops")
(lload "forest;sequence")
(lload "forest;printers")
(lload "forest;adjacency")

(lload "forest;extract")
(lload "forest;layout")

