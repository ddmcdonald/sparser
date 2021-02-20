;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2013-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   module:  "model;core:amounts:"
;;;  Version:  March 2016

;; completely made over 9/18/93 in new semantics
;; 12/22/95 added adjuncts that appear in the ERN domain. They'll probably
;; usually be instantiated only at subtypes. 
;; 2/22/13 added category to provide basis for the words "amount", "number"
;; "quantity" and presumably others. 

(in-package :sparser)


#|  An 'amount' is some quantity of stuff, e.g. "530 tons of liquid
  nitrogen".  It's the type of any answer to "how much?".   |#

;;;--------
;;; object
;;;--------
   
(define-category amount-of-stuff
  :specializes abstract ;; delimits a region in a quantity space
  :instantiates self
  :index (:temporary :sequential-keys stuff measurement)
  :binds ((measurement (:or measurement 
                            fractional-term ordinal))
          (stuff)
          ;; adjuncts that can be expected
          (alternative-amount)
          (time-period))
  :documentation "")


(defgeneric make-an-amount-of-stuff (measurement stuff)
  (:documentation "Uniform method for creating these even
    if the details change at some point")
  (:method ((measurement individual) (stuff individual))
    (define-or-find-individual 'amount-of-stuff
        :measurement measurement
        :stuff stuff)))

#| and so are active in catalytic amounts.
the amount of α-catenin
the total amounts of α-catenin ;; similar, same, initial
their relative amounts remained unchanged
for various amounts of time
increasing amounts of recombinant XRCC1.
(dynamic-model 54 "Double the amount of total BRAF.")
|#


;;;-----------------------------------------------------
;;; words that denote vague or just unspecified amounts
;;;-----------------------------------------------------
#|
(define-category vague-amount 
  :specializes amount
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

;;(define-individual 'vague-amount :name "number")
;;   causes problems with R3 biology
;;(define-individual 'vague-amount :name "quantity")
|#
