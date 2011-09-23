;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994.1005  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "prepositions"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   January 1995

;; broken out from "fn words - cases" 12/17/92 v2.3
;; 1/11/94 added "through"  7/14 added "up" & "down"  8/19 added "off"
;; 9/1 added "ahead"
;; 0.1 (11/16) restated the definitions in terms of Define-preposition, which
;;      gives their literal edges form categories
;;     (1/6/95) added some locatives  1/9 put in default for brackets

(in-package :sparser)

(defun define-preposition (string &key brackets)
  (unless brackets
    (setq brackets (list ].phrase  phrase.[ )))

  (let ((word (define-function-word string
                :brackets brackets
                :form category::preposition)))
    word ))



(define-function-word  "of"    :brackets '( ].phrase  phrase.[ ))
(define-function-word  "to"    :brackets '( ].treetop  treetop.[ ))


(define-preposition "above"   :brackets '( ].phrase  phrase.[ ))
(define-preposition "ahead"   :brackets '( ].phrase  phrase.[ ))
(define-preposition "after"   :brackets '( ].phrase  phrase.[ ))
(define-preposition "along"   :brackets '( ].phrase  phrase.[ ))
(define-preposition "as"      :brackets '( ].phrase  phrase.[ ))
(define-preposition "at"      :brackets '( ].phrase  phrase.[ ))
(define-preposition "before"  :brackets '( ].phrase  phrase.[ ))
(define-preposition "behind"  :brackets '( ].phrase  phrase.[ ))
(define-preposition "below"   :brackets '( ].phrase  phrase.[ ))
(define-preposition "by"      :brackets '( ].phrase  phrase.[ ))
(define-preposition "for"     :brackets '( ].phrase  phrase.[ ))
(define-preposition "from"    :brackets '( ].phrase  phrase.[ ))
(define-preposition "in"      :brackets '( ].phrase  phrase.[ ))
(define-preposition "into"    :brackets '( ].phrase  phrase.[ ))
(define-preposition "on"      :brackets '( ].phrase  phrase.[ ))
(define-preposition "off"     :brackets '( ].phrase  phrase.[ ))
(define-preposition "out"     :brackets '( ].phrase  phrase.[ ))
(define-preposition "through" :brackets '( ].phrase  phrase.[ ))
(define-preposition "under"   :brackets '( ].phrase  phrase.[ ))
(define-preposition "with"    :brackets '( ].phrase  phrase.[ ))
(define-preposition "within"  :brackets '( ].phrase  phrase.[ ))
(define-preposition "without" :brackets '( ].phrase  phrase.[ ))


(define-function-word "up"     :brackets '( ].phrase  phrase.[ ))
(define-function-word "down"   :brackets '( ].phrase  phrase.[ ))

(define-function-word "inside"   :brackets '( ].phrase  phrase.[ ))
(define-function-word "outside"  :brackets '( ].phrase  phrase.[ ))

