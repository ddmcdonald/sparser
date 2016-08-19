;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1999-2000,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "single words"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  May 2013

;; initiated 10/2/99. Re-examined 10/10 and conceptualized as a supplier of schema
;; references to single-word category realization instantiations. See make-rules-for-rdata.
;; 11/18 added prepositions. 11/26 added all the rest that are defined in 
;; Head-word-rule-construction-dispatch. 3/17/00 added :number case to the etf
;; for single-words. (7/11/00) Added quantifier. 7/25 added define-type-of-single-word
;; to help decipher realization data. (7/23/09) Added interjection.
;; (5/22/12) Added modal.

(in-package :sparser)

;;;-----------------
;;; the tree family
;;;----------------

(define-exploded-tree-family single-words
  :binding-parameters (type individual)
  :labels (proper-noun preposition interjection)
  :cases ((:verb (type (verb) :head individual))
          (:modal (type (modal) :head individual))
          (:common-noun (type (common-noun) :head individual))
          (:proper-noun (type (proper-noun) :head individual))
          (:adjective (type (adjective) :head individual))
          (:adverb (type (adverb) :head individual))
          (:interjection (type (interjection) :head individual))
          (:preposition (type (preposition) :head individual))
          (:word (type (content-word) :head individual))
          (:quantifier (type (quantifier) :head individual))
          (:number (type (common-noun) :head individual))))

(defvar *single-words*
  (exploded-tree-family-named 'single-words))


;;;---------------
;;; minimal names
;;;---------------

(defun get-schematic-word-rule (pos)
  (or (find pos (etf-cases *single-words*) :key #'schr-relation)
      (error "There is no schematic rule named ~a." pos)))

(defun form-category (pos)
  (schr-form (get-schematic-word-rule pos)))
