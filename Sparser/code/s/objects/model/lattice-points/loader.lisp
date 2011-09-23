;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2000 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  July 2007

;; initiated 11/29/97. 3/7/98 added annotation, psi. 7/9 added c+v.
;; 7/29 broke up "psi" into find and make. 9/12 added runtime. 
;; 6/21/00 put in a make routine that setup indexing. 7/29/07 bumped
;; v+v-objects. 7/15 removed structure since it's loaded by objects/
;; model/loader2. 

(in-package :sparser)

(lload "lattice-points;v+v objects1")
(lload "lattice-points;c+v objects")
(lload "lattice-points;printers")
(lload "lattice-points;annotation")
(lload "lattice-points;make")
(lload "lattice-points;find")
(lload "lattice-points;find or make at runtime")
(lload "lattice-points;initialize")
(lload "lattice-points;traverse")
(lload "lattice-points;specialize")
(lload "lattice-points;dependent terms")
(lload "lattice-points;operations")

