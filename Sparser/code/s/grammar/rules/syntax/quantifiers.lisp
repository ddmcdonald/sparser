;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011 David D. McDonald  -- all rights reserved
;;; $Id:$
;;; 
;;;     File:  "quantifiers"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  August 2011

;; initiated 8/31/11. 

(in-package :sparser)

(define-category quantified
  :specializes nil
  :instantiates :self
  :binds ((quantifier . quantifier)
          (body)))


(defgeneric quantify (quantifier body)
  (:documentation "Provides for specializing the relationship between
 a particular category of quantifier and category of body."))

(defmethod quantify ((q sh::quantifier) (body t))
  (let ((real-q (dereference-shadow-individual q))
        (real-body (dereference-shadow-individual body)))
    (define-individual 'quantified
        :quantifier real-q
        :body real-body)))