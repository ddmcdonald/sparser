;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "model;core:finance:"
;;;  Version:  December 2011

;; initiated 12/14/11

(in-package :sparser)

;; See examples in /model/sl/ERN/workspace.lisp

;; The word "stock" out of context could be "beef stock" (:food,
;; :soup, :ingredient) or "share of common stock" (:corporate-stock),
;; and presumably a lot of other things. 

;; Qua 'stock in a company' it's treated as something that has a value
;; that rises and falls. Instances would be linked to particular companies
;; and have values at times. Would be nice it these could be bound-in
;; relations and let us put relatively little on #<stock>.

(define-category stock)
;; N.b. need this if only to supply a category value for
;; the rule-label 'stock' in corporate-stock

(define-category corporate-stock
  :specializes nil  ;; thing with a value ?? share-of-stock ????
  :instantiates self
  :rule-label stock
  :binds ()
  :realization (:common-noun "stock"))
