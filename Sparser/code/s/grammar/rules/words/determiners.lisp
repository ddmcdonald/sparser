;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2012-2017  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "determiners"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   August 2017

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
  :specializes linguistic
  :binds ((word  :primitive word))
  :index (:permanent :key word)
  :documentation "Determiner is for functions/methods that
 treat it as a supercategory, as distinct from the form category 'det'")


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
        (add-rule cfr object)
        object))))



(define-category demonstrative
  :specializes linguistic
  :documentation "Like determiner, this category is for reasoning 
 about these terms, particularly to organize their anaphoric aspects.
 A demonstrative by itself 'that is a red block' will have a denotation
 in context. Can also refer to eventualities: 'I don't know how to
 do that'. When we know what to with them we can add variables to
 model notions like distal vs. proxal.")

(mark-as-form-category (category-named 'demonstrative))

#| The grammar already refers to the demonstratives individually
by their label as a category. Shifting the type of the category
is transparent in the grammar but does provide a descriminating
type for variable restrictions and reference. |#

(defun define-demonstrative (string &key brackets)
  (unless brackets
    (setq brackets '( ].phrase .[article)))
  (let ((word (define-function-word string
                :brackets brackets
                :form 'det))
        (category-name (name-to-use-for-category string)))

    (let* ((category-form
            `(define-category ,category-name
               :specializes demonstrative
               :instantiates :self
               :bindings (word ,word)))
           (category (eval category-form)))

      (let* ((object (define-individual category
                        :word word))
             (cfr ;; the base rule for the word
               (def-cfr/expr category ;; lhs
                             (list word) ;; rhs
                 :form (category-named 'demonstrative)
                 :referent object)))
        (add-rule cfr object)
        object))))

;;;-------
;;; cases
;;;-------

(define-determiner "the")
(define-determiner "an")
(define-determiner "a")
(define-determiner "A") ;;/// still needed?


;; 'that' gets its own brackets because of its functional ambiguity
;; with a subordinate conjunction.
(define-demonstrative "that"  :brackets '( ].phrase  |.[that| ))
(define-demonstrative "this"  :brackets '( ].phrase .[np ))
(define-demonstrative "these"  :brackets '( ].phrase .[np ))
(define-demonstrative "those"  :brackets '( ].phrase .[np ))

