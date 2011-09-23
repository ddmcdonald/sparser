;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;HA:"
;;;  Version:  0.4 January 1995

;; 0.1 (8/27/91 v2.0) dropped [driver] since that's now being done quite differently
;; 0.2 (3/28/94 v2.3) added [segment] as part of cleaning up version separations
;; 0.3 (5/12) adding [inter-segment boundaries]
;; 0.4 (1/24/95) bumped [place brackets] to 1

(in-package :sparser)

(lload "do HA;look")
(lload "do HA;segment")
(lload "do HA;place brackets1")
(lload "do HA;inter-segment boundaries")

