;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "loader"
;;;    Module:  "grammar;model:core:adjuncts:frequency:"
;;;   version:  September 1993

;; initiated 9/21/93 v2.3.  10/24 added [frequency idioms]

(in-package :sparser)

(gate-grammar *frequency*
  (lload "frequency;object")
  (lload "frequency;aux rules")
  (lload "dossiers;frequency idioms"))  ;; stopgap measure

