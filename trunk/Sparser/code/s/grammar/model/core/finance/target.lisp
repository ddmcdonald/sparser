;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "target"
;;;   Module:  "model;core:finance:"
;;;  Version:  December 2011

;; initiated 12/15/11

(in-package :sparser)

;;-------- "12 month target of 62"

(define-category target ;; the word by itself
  :instantiates self
  :realization ((:common-noun "target")))

(define-category target-at-time
  :specializes target
  :instantiates target
  :binds ((target . target)
          (time . time))  ;; "12-month" means '12 months from now'
       ;; and that needs to be here in the construstrual of the
       ;; time interval to get the full generality on the NLG side
  :realization ((:tree-family modifier-creates-individual
                 :mapping ((n-bar . target)
                           (subtyping-modifier . (:or time amount-of-time))
                           (np-head . target)
                           (result-category . :self)
                           (modifier . time)
                           (head . target)))))

(define-category stock-price-target
  :specializes target
  :instantiates self
  :binds ((value . number) ;; it's a reduction of a stock price
          ;; but that's a metonomy that we don't need yet.
          (target . target))
  :realization ((:tree-family simple-of-complement
                 :mapping ((np . target)
                           (base-np . target)
                           (complement . number)
                           (result-type . :self)
                           (np-item . target)
                           (of-item . value)))))

