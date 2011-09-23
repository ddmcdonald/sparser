;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "pronouns"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.3 June 2008

;; broken out from "fn words - cases" 12/17/92 v2.3
;; 0.1 (6/18/93) added  .[np  np]. brackets
;; 0.2 (1/11/94) "I" -> "i" because of change in treatment of capitalization
;;     (1/12) changed possessives to be np initiators.  (1/13) added reflexives
;;     (7/11) added "us".  4/3 added "here" "there". (8/7/07) added "me", "its"
;;     (8/13) added wrapping eval-when.
;; 0.3 (6/1/08) "i" => "I" for compatibility with model/core/pronouns.

(in-package :sparser)

(eval-when (:execute :compile-toplevel :load-toplevel)

;; miscl.
(define-function-word "I"     :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "me"    :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "mine"  :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "we"    :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "ours"  :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "us"    :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "you"   :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "yours" :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "he"    :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "she"   :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "it"    :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "its"   :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "him"   :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "they"  :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "them"  :brackets '( ].phrase .[np  np].  phrase.[ ))
(define-function-word "theirs":brackets '( ].phrase .[np  np].  phrase.[ ))

;; possessives
(define-function-word "my"    :brackets '( ].phrase  .[np ))
(define-function-word "our"   :brackets '( ].phrase  .[np ))
(define-function-word "your"  :brackets '( ].phrase  .[np ))
(define-function-word "his"   :brackets '( ].phrase  .[np ))
(define-function-word "her"   :brackets '( ].phrase  .[np ))
(define-function-word "its"   :brackets '( ].phrase  .[np ))
(define-function-word "their" :brackets '( ].phrase  .[np ))

;; reflexives
(define-function-word "myself"     :brackets '( ].phrase  .[np  np]. ))
(define-function-word "ourselves"  :brackets '( ].phrase  .[np  np]. ))
(define-function-word "yourself"   :brackets '( ].phrase  .[np  np]. ))
(define-function-word "yourselves" :brackets '( ].phrase  .[np  np]. ))
(define-function-word "himself"    :brackets '( ].phrase  .[np  np]. ))
(define-function-word "herself"    :brackets '( ].phrase  .[np  np]. ))
(define-function-word "itself"     :brackets '( ].phrase  .[np  np]. ))
(define-function-word "themselves" :brackets '( ].phrase  .[np  np]. ))


;; locatives
(define-function-word "here"  :brackets '( ].phrase  .[np  np]. ))
(define-function-word "there" :brackets '( ].phrase  .[np  np]. ))

) ;; eval-when

