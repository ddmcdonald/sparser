;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2012  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "objects;chart:edges:"
;;;  Version:  3.1 March 2012

;; 2.0 (7/20/91 v1.8.6)  Saved a copy of resource, bumping it to 2
;; 3.0 (9/2/92 v2.3) bumped loader to 3 and multiplication to 1 (new)
;;       flushed [active queue], bumped [object] to 3
;;     (9/7) bumped [resource] to 3 for consistency in its calls
;; 3.1 (1/24/95) bumped [resource] to 4. (3/4/12) added globals as first
;;      thing loaded so as to quiet the compiler.

(in-package :sparser)

(lload "edges;globals")
(lload "edges;object3")
(lload "edges;printers")
(lload "edges;multiplication1")
(lload "edges;resource4")

