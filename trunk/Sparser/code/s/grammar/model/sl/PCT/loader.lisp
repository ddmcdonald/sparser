;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1997  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;sl:pct:"
;;;  version:  March 1994

;; initiated 6/11/93 v2.3.  10/7/94 added [board of directors]   10/12 added
;; [title+company].  Redid calls as logical 3/18/95

(in-package :sparser)

(gate-grammar *pct*
  (gload "pct;board of directors")
  (gload "pct;position object")
  (gload "pct;employment object")
  (gload "pct;position rules")
  (gload "pct;person+title")
  (gload "pct;title+company"))

