;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "loader"
;;;    Module:  "grammar;model:core:adjuncts:sequence:"
;;;   version:  September 1993

;; initiated 9/21/93 v2.3

(in-package :sparser)

(gate-grammar *sequencers*
  (lload "sequence;object"))

