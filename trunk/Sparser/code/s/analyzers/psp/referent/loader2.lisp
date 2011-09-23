;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1991,1992,1993 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   2.4 September 1993

;; (11/17/91 v2.1) bumped referent to 1
;; (11/28) broke out the single file into a set of files
;; 2.0 (7/17/92 v2.3) bumped loader -> 2 for new semantics, bumps [decode exp]
;;      to 1 and [cases] to 1
;; 2.1 (8/28) bumped [driver] to 1 to add the global that refers to the
;;      referent so that it doesn't have to be given explicitly in the bindings.
;; 2.2 (10/23) bumped all the others to new versions visa-vie 2.3 so I could
;;      safely remove all the obsolete referent actions.
;; 2.3 (8/24/93) gated [new cases] so that it wouldn't be included in all loads
;; 2.4 (9/21) broke out the new cases in the decoders

(in-package :sparser)

(lload "referent;driver1")       ;; -> 1 for loader2
(lload "referent;dispatch1")     ;; -> 1 for loader2
(lload "referent;decode exp1")   ;; -> 1 for loader2
(lload "referent;unary driver1") ;; -> 1 for loader2
(lload "referent;cases1")        ;; -> 1 for loader2

(when *include-model-facilities*
  (lload "referent;new decodings")
  (lload "referent;new cases"))

