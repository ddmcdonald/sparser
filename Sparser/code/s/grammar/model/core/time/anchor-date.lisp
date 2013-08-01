;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "anchor-date"
;;;   Module:  "model;core:time:"
;;;  version:  1.0 July 2013

;;the anchor category is meant to capture time expressions which put events/entities at specific points
;;i.e., these timex 'anchor' the event to a particular time
;;the anchor-date captures the complex time adverbials of sequencers followed by dates
;;should this category also include seasons/season-year ? 
;;captures "after March 1"
(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category anchor-date
  :specializes anchor
  :instantiates self
  :binds ((sequencer . sequencer)
          (date . date))
  :realization (:common-noun "anchor-date"))

(def-cfr anchor-date (sequencer date)
  :referent (:instantiate-individual anchor-date))