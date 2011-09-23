;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:bindings:"
;;;  version:  August 1994   

;; initiated 11/30/91 v2.1, resource added 12/1
;; 7/16/92 v2.3 bumped for the new regime
;; 0.1 (8/12/94) boke out [structure] for loading earlier

(in-package :sparser)

;(lload "individuals;structure")
;;  already loaded by [model;] level

(lload "bindings;object1")
(lload "bindings;printers1")
(lload "bindings;index")
(lload "bindings;make1")
(lload "bindings;hooks")
(lload "bindings;resource")
(lload "bindings;alloc1")

