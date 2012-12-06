;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2012  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "pronouns"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.4 December 2012

;; broken out from "fn words - cases" 12/17/92 v2.3
;; 0.1 (6/18/93) added  .[np  np]. brackets
;; 0.2 (1/11/94) "I" -> "i" because of change in treatment of capitalization
;;     (1/12) changed possessives to be np initiators.  (1/13) added reflexives
;;     (7/11) added "us".  4/3 added "here" "there". (8/7/07) added "me", "its"
;;     (8/13) added wrapping eval-when.
;; 0.3 (6/1/08) "i" => "I" for compatibility with model/core/pronouns.
;; 0.4 (12/4/12) Except that if you do that, you lose the bracket information
;;      beause that's not checked on the actual variant, which is probably
;;      should be
;; 0.5 (12/5/12) Changed all 'phrase' cases to 'pronoun' to be more definitive.

(in-package :sparser)

(eval-when (:execute :compile-toplevel :load-toplevel)

;; miscl.
(define-function-word "i"     :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "me"    :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "mine"  :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "we"    :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "ours"  :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "us"    :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "you"   :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "yours" :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "he"    :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "she"   :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "it"    :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "its"   :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "him"   :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "they"  :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "them"  :brackets '( ].pronoun .[np  np].  pronoun.[ ))
(define-function-word "theirs":brackets '( ].pronoun .[np  np].  pronoun.[ ))

;; possessives
(define-function-word "my"    :brackets '( ].pronoun  .[np ))
(define-function-word "our"   :brackets '( ].pronoun  .[np ))
(define-function-word "your"  :brackets '( ].pronoun  .[np ))
(define-function-word "his"   :brackets '( ].pronoun  .[np ))
(define-function-word "her"   :brackets '( ].pronoun  .[np ))
(define-function-word "its"   :brackets '( ].pronoun  .[np ))
(define-function-word "their" :brackets '( ].pronoun  .[np ))

;; reflexives
(define-function-word "myself"     :brackets '( ].pronoun  .[np  np]. ))
(define-function-word "ourselves"  :brackets '( ].pronoun  .[np  np]. ))
(define-function-word "yourself"   :brackets '( ].pronoun  .[np  np]. ))
(define-function-word "yourselves" :brackets '( ].pronoun  .[np  np]. ))
(define-function-word "himself"    :brackets '( ].pronoun  .[np  np]. ))
(define-function-word "herself"    :brackets '( ].pronoun  .[np  np]. ))
(define-function-word "itself"     :brackets '( ].pronoun  .[np  np]. ))
(define-function-word "themselves" :brackets '( ].pronoun  .[np  np]. ))


;; locatives
(define-function-word "here"  :brackets '( ].pronoun  .[np  np]. ))
(define-function-word "there" :brackets '( ].pronoun  .[np  np]. ))

) ;; eval-when

