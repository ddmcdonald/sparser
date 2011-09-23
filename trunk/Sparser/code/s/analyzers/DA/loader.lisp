;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;DA:"
;;;  Version:  May 1995

;; initiated 7/8/93 v2.3, added gate 9/13. Gave it substantial content 5/5/95

(in-package :sparser)

(gate-grammar *da*

  (lload "DA;trie object")
  (lload "DA;index")
  (lload "DA;add pattern")
  (lload "DA;delete pattern")
  (lload "DA;vertexes")
  (lload "DA;arcs")
  (lload "DA;knit")
  (lload "DA;match")
  (lload "DA;do action")

  ;; old files from earlier use of this directory
  (lload "DA;prefix dispatch")
  (lload "DA;NP heads"))

