;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992-1993,2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "objects;chart:edge vectors:"
;;;  Version:  3.2 September 2013

(in-package :sparser)

;; ChangeLog:
;;  1.0 -> 1.1  8/90 continued development tracking release of version 1.1
;;  1.2  rebuilt object to deal backpointer field into (new) position
;;       and direction fields.  Changed other files to fit.
;; 3.0 (11/26/92 v2.3) bumped everything to 2 on general principles
;; 3.1 (4/6/93) Added the array/list switch in [switch]
;; 3.2 (9/19/13) Consolidated material out of other files into [peek] and
;;      [tuck].

(lload "ev;switch")
(lload "ev;object2")
(lload "ev;printers2")
(lload "ev;vectors2")
(lload "ev;init2")
(lload "ev;peek")
(lload "ev;tuck")

