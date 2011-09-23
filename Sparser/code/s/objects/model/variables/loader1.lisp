;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:variables:"
;;;  version:  August 1994

;; initiated 11/18 v2.1
;; 7/16/92 v2.3 bumped for the new regime
;; 0.1 (8/12/94) boke out [structure] for loading earlier

(in-package :sparser)

;(lload "individuals;structure")
;;  already loaded by [model;] level

(lload "variables;object1")
(lload "variables;printers1")
(lload "variables;index1")
(lload "variables;form")
(lload "variables;make1")

