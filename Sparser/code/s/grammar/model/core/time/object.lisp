;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2017-2018,2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:time:"
;;;  version:  July 2022

;; initiated 7/8/93 v2.3. Moved to core/kinds/space 2/1/16

(in-package :sparser)

(adj "spatio-temporal" :specializes modifier)
#| Both words are defined, but we haven't needed to model
this notion, so this short-cut will do.|#


(define-category temporal-index
  :specializes index
  :instantiates nil
  :documentation "Terms like pm or BCE provide reference points
 that modify the interpretation of the associated time phrase
 to be an offset from that point, or to move it into a given
 region of time when it's ambiguous.")


(defgeneric temporal-adverb? (e)
  (:documentation "Is this the sort of time term that can be
 part of a verb group?")
  (:method ((e edge))
    (when (eq (edge-cat-name e) 'time)
      (temporal-adverb? (edge-form e))))  
  (:method ((c category))
    (itypep c 'calculated-time))) ; "now", "today"

