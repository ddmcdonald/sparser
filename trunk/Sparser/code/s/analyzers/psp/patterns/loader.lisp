;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  October 1995

;; initiated 9/21/95. Moved over [take transitions] 10/5

(in-package :sparser)

(lload "scan-patterns;take transitions")
(lload "scan-patterns;start")  ;; empty as of 10/5
(lload "scan-patterns;driver")
(lload "scan-patterns;follow-out")
(lload "scan-patterns;accept")

