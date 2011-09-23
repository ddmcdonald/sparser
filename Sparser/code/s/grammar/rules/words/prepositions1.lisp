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
;; 1.0 (1/30) changed all the brackets to be 'treetop', and moved them into
;;      the defaults of the def-form

(in-package :sparser)

(defun define-preposition (string &key brackets)
  (unless brackets
    (setq brackets (list  ].treetop  treetop.[ )))

  (let ((word (define-function-word string
                :brackets brackets
                :form category::preposition)))
    word ))



(define-preposition  "of" )
(define-preposition  "to" )


(define-preposition "above" )
(define-preposition "ahead" )
(define-preposition "after" )
(define-preposition "along" )
(define-preposition "as" )
(define-preposition "at" )
(define-preposition "before" )
(define-preposition "behind" )
(define-preposition "below" )
(define-preposition "by" )
(define-preposition "for" )
(define-preposition "from" )
(define-preposition "in" )
(define-preposition "into" )
(define-preposition "on" )
(define-preposition "off" )
(define-preposition "out" )
(define-preposition "through" )
(define-preposition "under" )
(define-preposition "with" )
(define-preposition "within"  )
(define-preposition "without" )


(define-function-word "up" )
(define-function-word "down"  )

(define-function-word "inside" )
(define-function-word "outside" )

