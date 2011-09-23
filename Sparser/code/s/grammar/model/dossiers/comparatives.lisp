;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "comparatives"
;;;    Module:   "model;dossiers:"
;;;   Version:   0.1 February 2010

;; initiated 7/29/94. Added some polywords 9/10/09.
;; 0.1 (2/17/10) added "rather than", which isn't at all the same thing, but
;;  since it's just going for a parse, rather than an interpretation, that's
;;  ok for now. ///Could we generalize the "than" part? It will certainly
;;  have a common interpretation.

(in-package :sparser)

(define-comparative "fewer"   :brackets '( ].phrase  .[np ))
(define-comparative "fewer than"   :brackets '( ].phrase  .[np ))

;; Strictly speaking, the "than" cases have different grammatical properties
;; since then can act as determiners whereas the 'bare' versions demand 
;; a preceding determiner. Given the bracket algebra for NPs though, I think
;; this will come out in the wash (ddm 9/10/09)

(define-comparative "greater than"   :brackets '( ].phrase  .[np ))

(define-comparative "less"    :brackets '( ].phrase  .[np ))
(define-comparative "less than"    :brackets '( ].phrase  .[np ))

(define-comparative "more"    :brackets '( ].phrase  .[np ))
(define-comparative "more than"    :brackets '( ].phrase  .[np ))

(define-comparative "better"  :brackets '( ].phrase  .[np ))
(define-comparative "better than"  :brackets '( ].phrase  .[np ))
(define-comparative "worse"   :brackets '( ].phrase  .[np ))
(define-comparative "worse than"   :brackets '( ].phrase  .[np ))

;; 10/24/94
(define-comparative "smaller")

;;/// Goes somewhere else when we get serious about meaning
(define-comparative "rather than" :brackets '( ].phrase  .[np ))

