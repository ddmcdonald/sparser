;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013,2016-2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "WH-word-semantics"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  March 2017

;; initiated 8/8/07. Added relatives 1/1/08
;; 0.1 Changed the names of the categories to just be the name of the pronoun.
;;     Had been, e.g., WHERE-OBLIQUE-PRONOUN-PRONOUN. Changed the from from NP to
;;     wh-pronoun.
;; 0.2 (1/18/13) Complete make over on the style of prepositions
;;     (2/28/13) Changed the form of the rule to wh-pronoun
;; 4/24/2015 remove whether as a wh-pronoun, to allow adding whethercomp as a type of verb complement

(in-package :sparser)

;;;---------------
;;; base category
;;;---------------
#|  In the course of a parse, a wh-pronoun can serve several different
grammatical functions, and we have to look at a larger context to see
which one applies. 
  We use the same style of definition as with prepositions. Supply a
standard set of brackets to the word qua function word. Define a category
for the word and a rule that rewrite to it. |#

(define-category wh-pronoun
  :specializes pronoun
  :binds ((variable :primitive lambda-variable))
  :documentation "")

;;;---------------
;;; defining form
;;;---------------

(defun define-wh-pronoun (string &key variable)
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
            :form category::wh-pronoun
            :schema (get-schematic-word-rule :word) ;;/// make schema for wh ??
            :referent category)))
    (add-rule word-rule category)
    (values category
            word-rule
            word)))

 
;;;-------
;;; cases
;;;-------

;; N.b. this replaces rules/words/WH words

(define-wh-pronoun "who" :variable 'actor)
(define-wh-pronoun "whom")
(define-wh-pronoun "whose") ;; possession
(define-wh-pronoun "which")
(define-wh-pronoun "what"  :variable 'patient)
(define-wh-pronoun "where" :variable 'location)
(define-wh-pronoun "when"  :variable 'time)

(define-wh-pronoun "why"   :variable 'purpose)
;;  more like reason, motive.
;; 'purpose' is more like an attribute

(define-wh-pronoun "how"   :variable 'manner)
;; not really manner, more 'method'

(define-wh-pronoun "whether") ;; polarity ?
;; overnight #15, aspp2 #20

;;/// There's a whole flock of these -- need a proper treatment
;;(define-wh-pronoun "how many")

;; "who else <vp>"

(define-wh-pronoun "whoever")
;; wherever, whenever

;;;----------
;;; grammmar
;;;----------


;;---- What

;; (p/s "tell me what you want to do now.")

(def-k-method compose ((wh category::what) (i individual))
  ;; called from make-subordinate-clause for wh + s
  (declare (special category::wh-question))
  (let ((j (define-an-individual category::wh-question
               :wh wh
               :statement i)))
    ;; The individual is probably open in their object
    ;; and the statement is a essentially a description of it
    (let* ((var (object-variable i))
           (wh-var
            (if (and var (null (value-of 'variable i)))
              var
              (value-of 'variable wh))))
      (setq j ;;/// bind-variable should do this for us (!!)
            (bind-variable 'var wh-var j))

      (setq j (add-category-to-individual j (itype-of i)))
      (format t "~&j = ~a ~%"  j)
      j)))

