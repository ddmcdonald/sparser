;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:variables:"
;;;  version:  July 2009

;; initiated 11/18 v2.1
;; 7/16/92 v2.3 bumped for the new regime
;; 0.1 (8/12/94) boke out [structure] for loading earlier
;; 2.0 (6/16/09) Switching to a lexical treatment and tighter integration
;;      with indexing of psi. Bumping index, make, object to 2.
;;     (7/20/090 Bumped printers to 2 for anonymous-variable

(in-package :sparser)

;(lload "individuals;structure")
;;  already loaded by [model;] level

(lload "variables;object2")
(lload "variables;printers2")
(lload "variables;index2")
(lload "variables;form")
(lload "variables;make2")

