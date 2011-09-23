;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1997 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:categories:"
;;;  version:  November 1997

;; initiated 7/16/92 v2.3, copied over [object] 9/1
;; Added [index instances] 8/9/94 - bumped to save old permanent/temp scheme
;; 0.1 (8/12) boke out [structure] for loading earlier
;;     (9/28) added [lattice point]
;; 1.0 (11/29/97) modifications for lattice-points. [define] -> 1, moved out
;;      lattice-points as [lattice-points;operations].

(in-package :sparser)

;;(lload "categories;structure")
;;  already loaded by [model;] level

(lload "categories;printing")
(lload "categories;index instances1")
(lload "categories;define1")

