;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;inits:"
;;;  Version:  7.1 September 1993

;; (8/8/91 v1.9) Bumped the version on this file to shelter changes
;;      against version 1.8.5
;; (2/6/92 v2.2) bumped [switches] to 3.
;; (7/13 v2.3) bumped [setup] to 2.  7/14 [articles] -> 2
;; 7.1 (9/2/93) moved [switches] to toplevel in master-loader so that
;;      it could be loaded after all the drivers since it references
;;      some flags they define.

(in-package :sparser)

(lload "session-inits;globals1")
(lload "init-drivers;articles2")
(lload "init-drivers;runs1")

#| loaded from the master-loader:
(lload "session-inits;setup2")
(lload "init-drivers;switches2")  |#

