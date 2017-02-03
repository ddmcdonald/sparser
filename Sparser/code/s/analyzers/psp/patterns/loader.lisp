;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2013-2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  November 2015

;; initiated 9/21/95. Moved over [take transitions] 10/5/95.
;; 2/5/2013 broke out the traces and the uniform scan as their own files
;; 9/9/14 added [character-specialists]. 11/18/14 bumped uniform-
;; scan to 1. 12/4/14 added [patterns]. [pattern-gophers] 12/11/12.
;; [scan-gophers] and [charaterize-words] 5/15/15. Added [edge-patterns],
;; [slash-patterns], [hyphen-patterns], [colon-patterns]. 
;; 11/12/15 added [edge-gophers], [pattern-resolvers]. 11/19/15 [hyphen-subrs}
;; 11/27/15 remove edge-patterns from load. 

(in-package :sparser)

(lload "scan-patterns;traces")

(lload "scan-patterns;patterns")

;;(lload "scan-patterns;edge-patterns") mine for useful parts then delete
(lload "scan-patterns;slash-patterns")
(lload "scan-patterns;hyphen-patterns")
(lload "scan-patterns;colon-patterns")
(lload "scan-patterns;protein-patterns")

(lload "scan-patterns;hyphen-subrs")

(lload "scan-patterns;edge-gophers")
(lload "scan-patterns;pattern-resolvers")

(lload "scan-patterns;character-specialists")
(lload "scan-patterns;pattern-gophers")

(lload "scan-patterns;scan-gophers") ;; help the scan
(lload "scan-patterns;charaterize-words")
(lload "scan-patterns;uniform-scan") ;; driver / entry-point
(lload "scan-patterns;ns-analysis") ;; tools to explore ns patterns

(lload "scan-patterns;take transitions")
(lload "scan-patterns;start")  ;; empty as of 10/5/95
(lload "scan-patterns;driver")
(lload "scan-patterns;follow-out")
(lload "scan-patterns;accept")

