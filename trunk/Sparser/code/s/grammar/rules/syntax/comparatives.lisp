;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2014  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "comparatives"
;;;    Module:   "grammar;rules:syntax:"
;;;   Version:   July 2014

;; initiated 7/29/94. 10/24/94 added defdata
;; 7/20/14 Added a lemma for "comparative"

(in-package :sparser)

#| obviously these don't start NPs really -- rather then start
 adjective phrases which then start nps -- but that's subtler than
 we need since modals are being glossed as starting vg's etc.  |#

(define-category  comparative
  :instantiates nil
  :specializes nil
  :binds ((word  :primitive word))   ;; just a stand-in
  :index (:permanent :key word)
  :lemma (:adjective "comparative")
  :realization (:word word))

#|
(defun define-comparative (string &key (brackets
                                        (list ].phrase
                                              .[np )))
  (let ((word
         (define-function-word string  :brackets brackets)))

    (let ((cmp (define-individual 'comparative
                 :word word)))
      cmp )))

|#


(defun define-comparative (string &key rule-label discriminator)
  (define-function-term string 'comparative
    :rule-label rule-label
    :discriminator discriminator
    :tree-families '(pre-adv-adverb)))
                     




(define-autodef-data  'comparative
  :display-string  "comparative adjectives"
  :form 'define-comparative
  :dossier "dossiers;comparatives"
  :module *comparatives*
  :description "a word, often ending in 'er', that fits in the context '___ than'"
  :examples "\"fewer\", \"more\", \"better\"" )

