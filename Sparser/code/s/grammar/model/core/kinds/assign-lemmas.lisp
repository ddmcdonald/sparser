;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "assign-lemmas"
;;;   Module:  "model;core:kinds:"
;;;  version:  December 2018

;; initiated 9/22/15 so that the upper model can be loaded
;; (in 1st-loader) without needing word machinery

(in-package :sparser)

;;;--------
;;; lemmas
;;;--------

(defmacro assign-lemma (category-name word-expr)
  `(assign-lemma/expr ',category-name ',word-expr))

(defun assign-lemma/expr (name word-expr)
  (let ((category (category-named name :break-if-none)))
    (setup-category-lemma category word-expr)))

(assign-lemma transition (:common-noun "transition"))

(noun "quality"
      :mixins (takes-of)
      :realization (:noun "quality"
             ))
(assign-lemma abstract (:common-noun "abstract"))
(noun "relation" :binds ((participants top))
  :realization (:noun "relation" :between participants))

(assign-lemma physical (adjective "physical"))

(assign-lemma object (common-noun "object"))
(assign-lemma feature (common-noun "feature"))
(assign-lemma aggregate(common-noun "aggregate"))

(assign-lemma negative (adjective "negative"))


