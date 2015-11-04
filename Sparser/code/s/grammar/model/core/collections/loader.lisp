;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:collections:"
;;;  version:  1.0 February 2005

;; initiated 6/7/93 v2.3.  Redid calls as logicals 3/18/95
;; 1.0 (3/21/00) bumped object to 1, commented out operations and printers
;;      for the time being to rework all this for the use of lattice points.
;;     (2/2/05) Bumped operations to 1.

(in-package :sparser)

(gload "collections;object1")
(gload "collections;operations2")
(gload "collections;obj specific printers")
