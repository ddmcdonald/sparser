;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1997  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  0.2 August 2009

;; 0.1 (6/15/94) bumped [angle brackets] to 1
;;     (9/13/95) added [other brackets]
;; 0.2 (8/31/09) broke out single-capitalized-word and gated on *proper-names*

(in-package :sparser)

(gload "traversal;parenthesis")
(gload "traversal;quotations")
(gload "traversal;angle brackets1")
(gload "traversal;other brackets")

(gate-grammar *proper-names*
  (gload "traversal;single-capitalized-word"))

