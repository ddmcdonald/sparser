;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2017-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:time:"
;;;  version:  April 2018

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
