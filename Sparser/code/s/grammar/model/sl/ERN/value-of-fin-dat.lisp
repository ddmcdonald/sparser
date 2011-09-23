;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "value of fin-dat"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; initiated 12/22/95. Elaborated through 1/9/96

(in-package :sparser)

;;;----------------------------------------------
;;; simple association of a fin-dat with a value
;;;----------------------------------------------

(define-category  financial-data-with-value
  :specializes financial-data
  :instantiates self
  :binds ((datum . financial-data)
          (value . money)
          (amt-per-share . amount-per-share)
          (time-interval . time))
  :index (:temporary :sequential-keys datum value))

#| There looks to be a wide range of patterns for this, so I'll set them down
case by case rather than look for an encompasing family (perhaps one will emerge)  |#


;;--- "net of $106.3 million"

(def-cfr financial-data (financial-data of-money)
  :form np
  :referent (:instantiate-individual financial-data-with-value
             :with (datum left-edge
                    value right-edge)))

(when-binding time-anchored-financial-datum datum financial-data-with-value
  :transfer ((time-interval . time-interval)))

(when-binding money value financial-data-with-value
  :transfer ((alternative-amount . amt-per-share)))

