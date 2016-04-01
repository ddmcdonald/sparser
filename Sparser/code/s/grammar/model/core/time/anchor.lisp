;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "anchor"
;;;   Module:  "model;core:time:"
;;;  version:  April 2016

;; Initialized as a shell 8/27/13. Finished copying over what the shell
;; was supposed to do 5/27/14 and started setting up computations. 
;; This file subsumes the former anchor-date and anchor-amount 


;; the anchor-date captures the complex time adverbials of sequencers followed by date
;; should this category also include seasons/season-year ? 

;; captures "after March 1"
(define-category anchor-date
  :specializes time-interval  ;; sequencer determines what sort of interval
  :instantiates self
  :binds ((sequencer . sequencer)
          (date . date))
  )  ;;; note to put in a real one:realization (:common-noun "anchor-date"))

;(def-cfr anchor-date (sequencer date)
;  :referent (:instantiate-individual anchor-date))


;; captures "last three years", "two months later"
;;   hmm -- very different sort of things -- interval vs. reference point
(define-category anchor-amount
  :specializes time-interval
  :instantiates self
  :binds ((sequencer . sequencer)
          (amount-of-time . amount-of-time))
  :realization (:common-noun "anchor-amount"))

;(def-cfr anchor-amount (sequencer amount-of-time)
;  :referent (:instantiate-individual anchor-amount))

