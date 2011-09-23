;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "loader"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   3.3 September 2011

;; (11/17/91 v2.1) bumped referent to 1
;; (11/28) broke out the single file into a set of files
;; 2.0 (7/17/92 v2.3) bumped loader -> 2 for new semantics, bumps [decode exp]
;;      to 1 and [cases] to 1
;; 2.1 (8/28) bumped [driver] to 1 to add the global that refers to the
;;      referent so that it doesn't have to be given explicitly in the bindings.
;; 2.2 (10/23) bumped all the others to new versions visa-vie 2.3 so I could
;;      safely remove all the obsolete referent actions.
;; 2.3 (8/24/93) gated [new cases] so that it wouldn't be included in all loads
;; 2.4 (9/21) broke out the new cases in the decoders.
;; 3.0 (2/26/98) bumped [new cases] to 1.  3/22 bumped driver and dispatch to 2.
;;     3/23 bumped [unary driver] to 2.
;; 3.1 (4/12/00) Added 
;; 3.2 (2/6/05) bumped 'new cases' to 2.
;; 3.3 (7/22/09) put in a conditional on *psi-2009* for files that need
;;    to be bumped. 9/1/11 added [ref-method]

(in-package :sparser)

(lload "referent;composite referent")
(lload "referent;driver2")
(lload "referent;dispatch2")
(lload "referent;decode exp1")
(if cl-user::*psi-2009*
  (lload "referent;unary driver3")
  (lload "referent;unary driver2"))
(lload "referent;cases1")

(when *include-model-facilities*
  (lload "referent;new decodings1")
  (lload "referent;ref-method")
  (if cl-user::*psi-2009*
    (lload "referent;new cases3")
    (lload "referent;new cases2")))
