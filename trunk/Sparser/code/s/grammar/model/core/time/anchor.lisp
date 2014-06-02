;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "anchor"
;;;   Module:  "model;core:time:"
;;;  version:  May 2014

;; Initialized as a shell 8/27/13. Finished copying over what the shell
;; was supposed to do 5/27/14 and started setting up computations. 
;; This file subsumes the former anchor-date and anchor-amount 


;;the anchor category is meant to capture time expressions which put events/entities at specific points
;;i.e., these timex 'anchor' the event to a particular time
;;currently the anchor captures the linear order of sequencers and different timex
;;should flesh out into multiple categories, with super class as a general anchor?
;;this is the abstract class for anchors

(define-category anchor
  :documentation "May be little here")


;;the anchor category is meant to capture time expressions which put events/entities at specific points
;;i.e., these timex 'anchor' the event to a particular time
;;the anchor-date captures the complex time adverbials of sequencers followed by dates
;;should this category also include seasons/season-year ? 
;;captures "after March 1"

(define-category anchor-date
  :specializes anchor
  :instantiates self
  :binds ((sequencer . sequencer)
          (date . date))
  )  ;;; note to put in a real one:realization (:common-noun "anchor-date"))

;(def-cfr anchor-date (sequencer date)
;  :referent (:instantiate-individual anchor-date))


;; captures "last three years", "two months later"

(define-category anchor-amount
  :specializes anchor
  :instantiates self
  :binds ((sequencer . sequencer)
          (amount-of-time . amount-of-time))
  :realization (:common-noun "anchor-amount"))

;(def-cfr anchor-amount (sequencer amount-of-time)
;  :referent (:instantiate-individual anchor-amount))

