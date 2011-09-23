;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1999-2000 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "single words"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  July 2009 

;; initiated 10/2/99. Re-examined 10/10 and conceptualized as a supplier of schema
;; references to single-word category realization instantiations. See make-rules-for-rdata.
;; 11/18 added prepositions. 11/26 added all the rest that are defined in 
;; Head-word-rule-construction-dispatch. 3/17/00 added :number case to the etf
;; for single-words. (7/11/00) Added quantifier. 7/25 added define-type-of-single-word
;; to help decipher realization data. (7/23/09) Added interjection

(in-package :sparser)

;;;---------------
;;; minimal names
;;;---------------

(defun get-schematic-word-rule (word-type-keyword)
  (let* ((cases (etf-cases *single-words*))
         (schematic-rule (find word-type-keyword cases
                               :key #'schr-relation :test #'eq)))
    (unless schematic-rule
      (break "Incomplete/bad setup: no schematic-rule named ~a ~
              in~%   ~a" word-type-keyword *single-words*))
    schematic-rule ))


(defun defined-type-of-single-word (keyword)
  (or (eq keyword :verb)
      (eq keyword :common-noun)
      (eq keyword :proper-noun)
      (eq keyword :adjective)
      (eq keyword :adverb)
      (eq keyword :interjection)
      (eq keyword :preposition)
      (eq keyword :word)
      (eq keyword :quantifier)
      (eq keyword :number)))
      

(define-exploded-tree-family  single-words
  :description "This is just a stub to provide a schema to use in the generation direction. Use a proper noun keyword to actually get the name slot setup for a rule."
  :binding-parameters ( type individual )
  :labels ( proper-noun preposition interjection )
  :cases
    ((:verb (type (verb)
               :head individual))
     (:common-noun (type (common-noun)
                      :head individual))
     (:proper-noun (type (proper-noun)
                       :head individual))
     (:adjective (type (adjective)
                    :head individual))
     (:adverb (type (adverb)
                 :head individual))
     (:interjection (type (interjection)
                       :head individual))
     (:preposition (type (preposition)
                       :head individual))
     (:word (type (content-word)
               :head individual))
     (:quantifier (type (quantifier)
                    :head individual))
     (:number (type (common-noun)
                :head individual))
     ;(:standalone-word (type (content-word) ;; redundant with :word and
     ;                     :head individual));; can't have both in one etf
     ))

(defvar *single-words* (exploded-tree-family-named 'single-words))



