;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "conjunctions"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.1 September 1994

;; broken out from "fn words - cases" 12/17/92 v2.3.  Added some 1/11/94
;; added conjunction.] to "and" and "or" 3/17
;; 0.1 (5/12) removed conjunction.] -- solved segmentation problem better.
;;     (9/27) added "instead"
;;     (4/17/10] Added "thus"

(in-package :sparser)


(define-function-word "and" :brackets '( ].conjunction conjunction.[ ))
(define-function-word "or"  :brackets '( ].conjunction conjunction.[ ))


;;;------ subordinating conjunctions

(define-function-word "although" :brackets '( ].phrase  phrase.[ ))
(define-function-word "among"    :brackets '( ].phrase  phrase.[ ))
(define-function-word "because"  :brackets '( ].phrase  phrase.[ ))
(define-function-word "but"      :brackets '( ].phrase  phrase.[ ))
(define-function-word "even"     :brackets '( ].phrase  phrase.[ ))
(define-function-word "however"  :brackets '( ].phrase  phrase.[ ))
(define-function-word "instead"  :brackets '( ].phrase  phrase.[ ))
(define-function-word "since"    :brackets '( ].phrase  phrase.[ ))
(define-function-word "so"       :brackets '( ].phrase  phrase.[ ))
(define-function-word "thus"     :brackets '( ].phrase  phrase.[ ))
(define-function-word "whenever" :brackets '( ].phrase  phrase.[ ))
(define-function-word "while"    :brackets '( ].phrase  phrase.[ ))
(define-function-word "unless"   :brackets '( ].phrase  phrase.[ ))
(define-function-word "until"    :brackets '( ].phrase  phrase.[ ))


(define-function-word "if"    :brackets '( ].phrase  phrase.[ ))
(define-function-word "then"  :brackets '( ].phrase  phrase.[ ))

