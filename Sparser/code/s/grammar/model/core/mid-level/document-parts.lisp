;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:mid-level:"
;;;  version:  November 2021

;; Broken out of sl/biology/terms.lisp 1/13/21.

(in-package :sparser)


(define-mixin-category visual-representation ;; figures, arrows, stars, etc.
  :specializes abstract)

(define-category document-part :specializes abstract
  :binds ((topic (:or medical-condition bio-chemical-entity)))
  :realization (:m topic
                :about topic))

(define-category bib-reference
  :specializes document-part) ;; to allow "et al." to be easily ignored

(noun "et al." :super bib-reference)
(noun "et al.," :super bib-reference)

(noun "xref" :super bib-reference)


(define-category published-article :specializes document-part
  :realization (:noun "article"))

(define-category article-paragraph :specializes document-part
  :realization (:noun "paragraph"))

(define-category article-sentence :specializes document-part
  :realization (:noun "sentence"))

(define-category article-figure :specializes document-part
  :mixins (visual-representation)
  :binds ((label two-part-label))
  :realization (:noun "figure"))

(def-synonym article-figure (:noun "Fig."))
(def-synonym article-figure (:noun "Fig"))

(define-category article-table :specializes document-part
  :mixins (visual-representation)
  :binds ((label two-part-label))
  :realization (:noun "table"))

(def-synonym article-table (:noun "Tab."))
(def-synonym article-table (:noun "Tab"))

(define-category arrow :specializes document-part
    :mixins (visual-representation)
    :realization (:noun "arrow"))

(define-category star :specializes document-part
    :mixins (visual-representation)
    :realization (:noun "star"))

(define-category diagram :specializes document-part
    :mixins (visual-representation)
    :realization (:noun "diagram"))

(define-category four-stars :specializes document-part
  :mixins (visual-representation)
  :realization (:word "****"))

(define-category three-stars :specializes document-part
  :mixins (visual-representation)
  :realization (:word "***"))

(define-category two-stars :specializes document-part
  :mixins (visual-representation)
  :realization (:word "**"))

(define-category elipsis-dots :specializes visual-representation ;???
  :realization (:word "..."))

 
(def-cfr article-figure (article-figure two-part-label)
  :form proper-noun
  :referent (:head left-edge
             :bind (label right-edge)))

(def-cfr article-figure (article-figure number)
  :form proper-noun
  :referent (:head left-edge
             :bind (label right-edge)))

