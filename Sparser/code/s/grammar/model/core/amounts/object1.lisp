;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   module:  "model;core:amounts:"
;;;  Version:  December 1995

;; completely made over 9/18/93 in new semantics
;; 12/22/95 added adjuncts that appear in the ERN domain. They'll probably
;; usually be instantiated only at subtypes. 

(in-package :sparser)


#|  An 'amount' is some quantity of stuff, e.g. "530 tons of liquid
  nitrogen".  It's the type of any answer to "how much?".   |#

;;;--------
;;; object
;;;--------

(define-category amount
  :specializes nil
  :instantiates self
  :binds ((measurement . measurement)
          (stuff)

          ;; adjuncts that can be expected
          (alternative-amount)
          (time-period))

  :index (:temporary :sequential-keys stuff measurement))

