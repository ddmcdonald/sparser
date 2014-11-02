;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2012-2014  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "determiners"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.7 October 2014

;; broken out from "fn words - cases" 12/17/92 v2.3
;; 0.1 (6/8) added Define-determiner
;; 0.2 (7/11) changed assignment on the, a, & an to .[article from .[np
;; 0.3 (11/16) gave them all form categories on their literal edges
;; 0.4 (12/5) flushed "additional" which had been included because of LS's judgement
;; 0.5 (1/30/95) gave 'that' its own '[' bracket
;; 0.6 (6/16/08) Adding a set of brackets for the single-capitalized-letter
;;      form of "a". (11/10/12) neither, either. 12/4/12 "those".
;; 0.7 (10/29/14) Makeover sort of following the pattern in conjunctions.

(in-package :sparser)


(define-category determiner
  :binds ((word  :primitive word)))
;; This is for functions/methods as a supercategory,
;; as distinct from the form category 'det'


(defun define-determiner (string &key brackets)
  (unless brackets
    (setq brackets '( ].phrase .[article)))
  (let ((word (define-function-word string
                :brackets brackets
                :form 'det))
        (category-name (name-to-use-for-category string)))

    (let* ((category-form
            `(define-category ,category-name
               :specializes determiner
               :instantiates :self
               :bindings (word ,word)))
           (category (eval category-form)))

      (let* ((object (define-individual category
                        :word word))
             (cfr ;; the base rule for the word
               (def-cfr/expr category ;; lhs
                             (list word) ;; rhs
                :form (category-named 'det)
                 :referent object)))
        (add-rule-to-individual cfr object)
        object))))



(define-determiner "the")
(define-determiner "an")
(define-determiner "a")
(define-determiner "A") ;;/// still needed?

(define-determiner "this"  :brackets '( ].phrase .[np ))

(define-determiner "these"  :brackets '( ].phrase .[np ))
(define-determiner "those"  :brackets '( ].phrase .[np ))

(define-determiner "either"  :brackets '( ].phrase .[np ))
(define-determiner "neither" :brackets '( ].phrase .[np ))



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

