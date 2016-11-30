;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "quantifiers"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  September 2015

;; initiated 8/31/11. Revised 8/22/13 so that it returns the head of
;; the relation (real-body) rather than simply creating the relationship
;; 9/22/15 Make quantified specialize predication 

(in-package :sparser)

(define-category quantified
  :specializes predication
  :instantiates :self
  :binds ((quantifier . quantifier)
          (body)))

(def-k-function quantify (quantifier body)
  (:documentation "Provides for specializing the relationship between
a particular category of quantifier and category of body.")
  (:method ((q category::quantifier) body)
    (define-individual 'quantified :quantifier q :body body)
    body))
