;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "assign-lemmas"
;;;   Module:  "model;core:kinds:"
;;;  version:  September 2015

;; initiated 9/22/15 so that the upper model can be loaded
;; (in 1st-loader) without needing word machinery

(in-package :sparser)


(defmacro assign-lemma (category-name word-expr)
  `(assign-lemma/expr ',category-name ',word-expr))

(defun assign-lemma/expr (name word-expr)
  (let ((category (category-named name :break-if-none)))
    (setup-category-lemma category word-expr)))

(assign-lemma event (:common-noun "event"))
(assign-lemma process (:common-noun "process")) ;; used phrasally in prepositions
(assign-lemma transition (:common-noun "transition"))

(assign-lemma quality (:common-noun "quality"))
(assign-lemma abstract (:common-noun "abstract"))
(assign-lemma relation (:common-noun "relation"))

(assign-lemma individual (common-noun "individual"))
(assign-lemma physical (adjective "physical"))
(assign-lemma kind (common-noun "kind"))

(assign-lemma object (common-noun "object"))
(assign-lemma feature (common-noun "feature"))
(assign-lemma aggregate(common-noun "aggregate"))

(assign-lemma has-name (:proper-noun "name"))



;;;------------------------------------------------
;;; Deictics  -- needs a story about dereferencing
;;;------------------------------------------------

(define-category  deictic-location 
  :instantiates  location ;;self
  :specializes   location
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-individual 'deictic-location :name "over there")

(define-individual 'deictic-location :name "over here")

(define-individual 'deictic-location :name "here")

(unless (eq (script) :biology)
  ;; unlikely in bio -- causes problems with construction "THERE IS"
 (define-individual 'deictic-location :name "there"))


