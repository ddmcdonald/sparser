;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "anchor-time"
;;;   Module:  "model;core:time:"
;;;  version:  1.0 July 2013

;;the anchor category is meant to capture timex that place events/entities at specific points
;;i.e., these timex 'anchor' the event to a particular time
;;any sequencer followed by a timex
;;captures "during winter", "before the summer of 1992", "after Monday"
(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category anchor-time
  :specializes anchor
  :instantiates self
  :binds ((sequencer . sequencer)
          (time . time))
  ) ;; note :realization (:common-noun "anchor-time"))

(def-cfr anchor-time (sequencer time)
  :referent (:instantiate-individual anchor-time))