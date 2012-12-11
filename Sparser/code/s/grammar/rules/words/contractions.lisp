;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,2012  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "contractions"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   November 1994

;; redone from scratch 7/25/94.  Added "ve" 8/16.  'm' 9/6
;; 11/21 added comment about timing. 12/7/12 Commented out
;; the ].phrase in front of apostrophe-s because it complicate

(in-package :sparser)

;;;-----------------------------------------
;;;  word definitions for all the fragments
;;;-----------------------------------------
;; (n.b. in their capitalized variant, they have interpretations 
;;   as single-capitalized-letter's )

(define-function-word "s")  ;; possessive, 'is', 'has'

(define-function-word "t")  ;; 'not'

(define-function-word "m")  ;; 'am'

;; 'are'
(define-function-word "re")

;; 'have'
(define-function-word "ve")

;; 'will'
(define-function-word "ll")


;;;----------------------------------------------------
;;; bracket assignments for their combination with "'"
;;;----------------------------------------------------

#| The definition of these categories is in [rules;FSAs:single quote]  |#

#|  this version won't compile -- unclear why the macro is invisible
(assign-brackets apostrophe-s  ( ].phrase ))
;;   apostrophe-t  -- no brackets
(assign-brackets apostrophe-re ( ].verb .[verb ))
(assign-brackets apostrophe-ll ( ].verb .[verb ))  |#


;; N.b. these assignments will only be reacted to during the scan 
;; if the edges with these labels aren't immediately rewritten, otherwise
;; the rewritten label is where the scan routine is going to look for
;; edge-introduced labels since the rewriting happens during the formation
;; of the edge rather than as an explicit step in the scan.


;; 12/7/12 This is too strong when running Grok
;;(assign-brackets/expr (category-named 'apostrophe-s)
;;                      (list (symbol-value '].phrase)))

(assign-brackets/expr (category-named 'apostrophe-re)
                      (list (symbol-value '].verb) (symbol-value '.[verb )))

(assign-brackets/expr (category-named 'apostrophe-m)
                      (list (symbol-value '].verb) (symbol-value '.[verb )))

(assign-brackets/expr (category-named 'apostrophe-ve)
                      (list (symbol-value '].verb) (symbol-value '.[verb )))

(assign-brackets/expr (category-named 'apostrophe-ll)
                      (list (symbol-value '].verb) (symbol-value '.[verb )))

