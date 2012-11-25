;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2012 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "WH words"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.1 November 2012

;; broken out from "fn words - cases" 12/17/92 v2.3
;; 0.1 (6/18/93) added  .[np  np]. brackets
;;     (1/11/94) added some more.  6/8 added "whether"   10/24 added "how many"
;;     (11/23/12) "whenever", "wherever"

(in-package :sparser)

;; keep this in sync with rules/syntax/WH-word-semantics

(define-function-word "who"   :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "which" :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "what"  :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "where" :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "wherever" :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "when"     :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "whenever" :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "whom"  :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "whose" :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "why"   :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "how"   :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "whether" :brackets '( ].phrase .[np  np].  phrase.[ ))

(define-function-word "how many" :brackets '( ].phrase .[np  np].  phrase.[ ))

