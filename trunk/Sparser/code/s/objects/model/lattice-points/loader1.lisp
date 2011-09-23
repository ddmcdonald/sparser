;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2000 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  October 2009

;; initiated 11/29/97. 3/7/98 added annotation, psi. 7/9 added c+v.
;; 7/29 broke up "psi" into find and make. 9/12 added runtime. 
;; 6/21/00 put in a make routine that setup indexing. 7/29/07 bumped
;; v+v-objects. 7/15 removed structure since it's loaded by objects/
;; model/loader2. 
;; 1.0 (6/19/09) Bumping files for the make-over. 7/22 initialize=>1,
;;   [find or make at runtime]=>1 v+v-objects=>2 traverse=>1.
;;   7/23 operations=>1 8/6 find=>1, make=>1. 10/23 Added ad-hoc-annotation.
;;   10/27 moved it to model/sl/poirot/ because it references the ltml package

(in-package :sparser)

(lload "lattice-points;v+v objects2")
(lload "lattice-points;c+v objects")
(lload "lattice-points;printers")
(lload "lattice-points;annotation")
(lload "lattice-points;make1")
(lload "lattice-points;find1")
(lload "lattice-points;find or make at runtime1")
(lload "lattice-points;initialize1")
(lload "lattice-points;traverse1")
(lload "lattice-points;specialize")
(lload "lattice-points;dependent terms")
(lload "lattice-points;operations1")

