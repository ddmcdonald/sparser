;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:bindings:"
;;;  version:  July 2009

;; initiated 11/30/91 v2.1, resource added 12/1
;; 7/16/92 v2.3 bumped for the new regime
;; 0.1 (8/12/94) boke out [structure] for loading earlier
;; 2.0 Bumped for the complete rebuild of psi indexing. Bumps make->2,
;;   7/14/09 object->2 

(in-package :sparser)

;(lload "individuals;structure")
;;  already loaded by [model;] level

(lload "bindings;object2")
(lload "bindings;printers1")
(lload "bindings;index")
(lload "bindings;make2")
(lload "bindings;hooks")
(lload "bindings;resource")
(lload "bindings;alloc1")

