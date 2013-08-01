;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "anchor"
;;;   Module:  "model;core:time:"
;;;  version:  1.0 July 2013

;;the anchor category is meant to capture time expressions which put events/entities at specific points
;;i.e., these timex 'anchor' the event to a particular time
;;currently the anchor captures the linear order of sequencers and different timex
;;should flesh out into multiple categories, with super class as a general anchor?
;;this is the abstract class for anchors

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category anchor
  :specializes time
  :instantiates anchor)

#|(define-category anchor
  :specializes time
  :instantiates time
  :binds ((sequencer . sequencer)
          (date . date)
          (amount-of-time . amount-of-time)
          (season-year . season-year)
          (season . season)
          (adverb . adverb))
  :realization (:tree-family  anchor-pattern
                :mapping ((type . :self)
                          (np . :self)
                          (n1 . sequencer)
                          (term1 . sequencer)
                          (n2 . date)
                          (term2 . date)
                          (n3 . amount-of-time)
                          (term3 . amount-of-time)
                          (n4 . season-year)
                          (term4 . season-year)
                          (n5 . season)
                          (term5 . season)
                          (n6 . adverb)
                          (term6 . adverb))
                :common-noun "anchor"))|#

;; "10 days ago"
(def-cfr anchor (age-ago)
  :referent (:instantiate-individual anchor))

;;;------------
;;; form
;;;------------

;;Any pre-defined anchors?