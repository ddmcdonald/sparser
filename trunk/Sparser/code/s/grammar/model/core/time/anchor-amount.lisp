;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "anchor-amount"
;;;   Module:  "model;core:time:"
;;;  version:  1.0 July 2013

;;the anchor category is meant to capture timex that place events/entities at specific points
;;i.e., these timex 'anchor' the event to a particular time
;;the anchor-date captures the complex time adverbials of sequencers followed by amount-of-time
;;should this category also include seasons/season-year ? 
;;captures "last three years", "two months later" 
(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category anchor-amount
  :specializes anchor
  :instantiates self
  :binds ((sequencer . sequencer)
          (amount-of-time . amount-of-time))
  )  ;;; note to put in a real one :realization (:common-noun "anchor-amount"))

(def-cfr anchor-amount (sequencer amount-of-time)
  :referent (:instantiate-individual anchor-amount))