;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "adverbs"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  1.0 September 2011

;; initiated 5/16/93 v2.3, added form rules 6/6
;; 0.1 (10/13/95) worded out a real analysis and moved in the def form for
;;      a word that's marked as an adverb but not given any semantics.
;; 0.2 (4/24/08) moved the category and def form out to words/adverbs.
;; 1.0 (9/19/11) Flushed the explicit form rule in favor of generated set
;;      by using the tree-family. See words;adverbs1. Put in the generic
;;      method and abstract one using revived modified category

(in-package :sparser)


(define-category  modified
  ;; analogous to quantified -- both should have same parent
  :specializes nil
  :instantiates :self
  :binds ((modifier . modifier)
          (body)))


(defgeneric modified (modifier modified)
  (:documentation "Motivated by adverbs like 'just' and 'almost',
 but could be used with adjectives or anything else. The default
 method just added another binding to the pair to record the
 event. Specific cases (by the category of the specific adverb)
 could be more ambitious."))

(defmethod modified ((adv sh::adverbial) (body t))
  (let ((real-adv (dereference-shadow-individual adv))
        (real-body (dereference-shadow-individual body)))
    (define-individual 'modified
      :modifier real-adv
      :body real-body)))

