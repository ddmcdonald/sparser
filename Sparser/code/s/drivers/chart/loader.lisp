;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;chart:"
;;;  Version:  June 1994

;; broken out from the master loader 4/11/91,  bumped the version of
;; "switch" to save the clean copy while putting in a more flexible
;; control structure.  12/7/93 v2.3 added [header labels].  6/13/94 added
;; [hidden markup].  6/15 added [annotate last]

(in-package :sparser)

#|  This loads the switch and the miscelaneous chart drivers.
    The substantial driver sets are loaded under control of flags
      that are read in the master load file.                       |#


(lload "chart-drivers;select2")  ;; 9/12 -- shouldn't affect v2.2

;; Alternative protocol for, e.g., doing word-frequency counts
;;  where there's no need to parse
(lload "chart-drivers;scan-all-terminals")

;; This was used in a hack in defining titles that's been superceded
;;(lload "chart-drivers;examination buffer")


;; These are used to swap chart protocols in WSJ headers
(lload "chart-drivers;switch")   
(lload "chart-drivers;headers")

;; stray operations hooked into word-level operations
;;
#| directly loaded from the master-loader:
(lload "chart-drivers;traversal1") |#

(lload "chart-drivers;header labels")
(lload "chart-drivers;hidden markup")
(lload "chart-drivers;annotate last")

