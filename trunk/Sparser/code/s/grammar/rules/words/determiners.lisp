;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;      File:   "determiners"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.6 June 2008

;; broken out from "fn words - cases" 12/17/92 v2.3
;; 0.1 (6/8) added Define-determiner
;; 0.2 (7/11) changed assignment on the, a, & an to .[article from .[np
;; 0.3 (11/16) gave them all form categories on their literal edges
;; 0.4 (12/5) flushed "additional" which had been included because of LS's judgement
;; 0.5 (1/30/95) gave 'that' its own '[' bracket
;; 0.6 (6/16/08) Adding a set of brackets for the single-capitalized-letter
;;      form of "a". 

(in-package :sparser)


(defun define-determiner (string  &key brackets)
  (let ((word (define-function-word string
                :brackets brackets
                :form 'det)))
    word ))



(define-determiner "the"  :brackets '( ].phrase .[article ))
(define-determiner "an"   :brackets '( ].phrase .[article ))
(define-determiner "a"    :brackets '( ].phrase .[article ))
(define-determiner "A"    :brackets '( ].phrase .[article ))

(define-determiner "this"  :brackets '( ].phrase .[np ))

(define-determiner "these"  :brackets '( ].phrase .[np ))
(define-determiner "those"  :brackets '( ].phrase .[np ))


;; gets its own brackets because of its functional ambiguity
;; with a subordinate conjunction. Giving it a different opening
;; bracket than 'article' or 'np' will let the close bracket from
;; any immediately following verb to go through rather than
;; be overridden (i.e. with that, we assume that a spelling form
;; that can be a verb -is- one in this case, rather than assume
;; its noun/verb ambiguous and should be taken in its noun
;; reading.
;;
(define-determiner "that"  :brackets '( ].phrase  |.[that| ))

