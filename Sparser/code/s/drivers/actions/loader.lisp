;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;actions"
;;;  Version:   1.1  October 1991

;; initiated 10/90
;; 1.1 (10/21 v2.0) bumped [trigger] -> 2, [hook] -> 1, added
;;     [object]

(in-package :sparser)

(lload "action-drivers;object")
(lload "action-drivers;hook1")
(lload "action-drivers;trigger2")

