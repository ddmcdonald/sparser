;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2014-2017  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "comparatives"
;;;    Module:   "grammar;rules:syntax:"
;;;   Version:   January 2017

;; initiated 7/29/94. 10/24/94 added defdata
;; 7/20/14 Added a lemma for "comparative"

(in-package :sparser)

#| obviously these don't start NPs really -- rather then start
 adjective phrases which then start nps -- but that's subtler than
 we need since modals are being glossed as starting vg's etc.  |#

;;; comparit

#| The predicate that's based on comparative adjectives (or superlatives)
makes a statement about the value of some attribute of its open argument 
that compares it to those values on some reference set. When applied to
an individual to form a predication that 'subject' individual must
be able to take that attribute (e.g. it isa 'has-size'). The attribute,
e.g. size, is scalar. Comparative also convey the 'direction' of the
difference from the reference set. Trips says 'orientation'. 

(define-size "big" :er "bigger" :est "biggest")
(define-size 

abstract > region > attribute-value > size-value 
  > comparative-size-value > bigger
|#

(define-category  comparative
  :specializes attribute-value
  :instantiates nil
  :documentation "Functionally this is a mixin.
"
  :binds (;;(word  :primitive word)
          ;; inherits name, attribute
          (direction comparative))
  :index (:permanent :key name)
  :lemma (:adjective "comparative")
  :realization (:word name))


;; "bigger than a breadbox"
(define-category comparative-attribution
  :specializes predicate
  :documentation "Analogous to quality-value-predicate
   in the attribution system. This represents the 
   combination of the comparative (or superlative) term
   and the reference set it's being compared to."
  )

(defun define-comparatives-of-attribute (attribute
                                      er-string est-string
                                      direction-flag)
  "Given an attribute and the strings for its comparative and
   superlative, create the category objects for these two words
   and their unary rules. Thread all the requiste bindings that
   tie the new categories to the attribute."
  )


(defun define-comparative (string &key rule-label discriminator)
  (define-function-term string 'comparative
    :rule-label rule-label
    :discriminator discriminator
    :tree-families '(pre-adv-adverb pre-adj-adverb)))
                     

(defun define-superlative (string &key rule-label discriminator)
  (define-function-term string 'superlative
    :rule-label rule-label
    :discriminator discriminator
    :tree-families '(pre-adv-adverb pre-adj-adverb)))


(define-autodef-data  'comparative
  :display-string  "comparative adjectives"
  :form 'define-comparative
  :dossier "dossiers;comparatives"
  :module *comparatives*
  :description "a word, often ending in 'er', that fits in the context '___ than'"
  :examples "\"fewer\", \"more\", \"better\"" )


