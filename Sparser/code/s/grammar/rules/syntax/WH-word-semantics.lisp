;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "WH-word-semantics"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.2 January 2013

;; initiated 8/8/07. Added relatives 1/1/08
;; 0.1 Changed the names of the categories to just be the name of the pronoun.
;;     Had been, e.g., WHERE-OBLIQUE-PRONOUN-PRONOUN. Changed the from from NP to
;;     wh-pronoun.
;; 0.2 (1/18/13) Complete make over on the style of prepositions


(in-package :sparser)

;;;---------------
;;; base category
;;;---------------
#|
  In the course of a parse, a wh-pronoun can serve several different
grammatical functions, and we have to look at a larger context to see
which one applies. 
  We use the same style of definition as with prepositions. Supply a
standard set of brackets to the word qua function word. Define a category
for the word and a rule that rewrite to it.

|#

(define-category wh-pronoun
  :specializes pronoun)


;;;---------------
;;; defining form
;;;---------------

(defun define-wh-pronoun (string)
  (let* ((word (define-function-word string
                 :brackets `( ].phrase .[np  np].  phrase.[ )
                 :form category::wh-pronoun))
         (category-name (name-to-use-for-category string))
         (expr `(define-category ,category-name
                  :specializes wh-pronoun
                  :instantiates :self))
         (category (eval expr))
         (word-rule 
          (define-cfr category `(,word)
            :form category::np
            :schema (get-schematic-word-rule :word) ;;/// make one for wh ??
            :referent category)))
    (push-onto-plist category word-rule :rule)
    (values category
            word-rule
            word)))

 
;;;-------
;;; cases
;;;-------

;; keep this in sync with rules/words/WH words

(define-wh-pronoun "who")
(define-wh-pronoun "which")
(define-wh-pronoun "what")
(define-wh-pronoun "where")
(define-wh-pronoun "when")
(define-wh-pronoun "whom")
(define-wh-pronoun "whose")
(define-wh-pronoun "why")
(define-wh-pronoun "how")
(define-wh-pronoun "whether")

;;/// There's a whole flock of these -- need a proper treatment
;;(define-wh-pronoun "how many")
