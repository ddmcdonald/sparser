;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers:FSA:"
;;;  Version:  4.4 April 1994

(in-package :sparser)

;; 4.0 (10/5/92 v2.3) bumped to shadow old versions while promulgating
;;      changes to the tokenizer, etc. 
;; 4.2 (5/5/93) restoring 4.1's effects, which were lost in the disk crash
;;      Flushing [edge over word] and [driver] as no longer needed
;; 4.3 (12/10) added [dispatches]
;; 4.4 (4/4/94) bumped [words] to 2

(lload "run FSAs;dispatches")
(lload "run FSAs;words2")
(lload "run FSAs;edges1")

