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

;;the anchor category is meant to capture time expressions which put events/entities at specific points
;;i.e., these timex 'anchor' the event to a particular time
;;the anchor-date captures the complex time adverbials of sequencers followed by dates
;;should this category also include seasons/season-year ? 
;;captures "after March 1"

;;captures "last three years", "two months later" 