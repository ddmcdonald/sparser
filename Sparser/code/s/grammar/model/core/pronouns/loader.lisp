;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1997  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:pronouns:"
;;;  version:  2.1 July 1995

;; 2.0 (7/11/94) bumped all the files to start anew from scratch
;;     (5/10/95) bumped [ref] to 4 to save some of the old stuff
;; 2.1 (7/13) refined the gating

(in-package :sparser)

(gload "pronouns;object")
(gload "pronouns;cases")
(gate-grammar *resolve-pronouns*
  (gload "pronouns;ref"))
