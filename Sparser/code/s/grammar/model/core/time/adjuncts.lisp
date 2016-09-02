;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "adjuncts"
;;;   Module:  "model;core:time:"
;;;  version:  September 2016

;; pulled out of terms-to-move 9/2/16


(in-package :sparser)

(define-category temporally-localized
  :specializes relation
  :instantiates :self
  :index (:list)
  :binds ((following process)
          (preceding process)
	  (during process)
          (after (:or time-unit
                      time ;; for "any time"
                      amount-of-time))
          (before (:or time-unit time amount-of-time))
	  (timeperiod (:or time-unit time amount-of-time)))
  :realization (:for timeperiod
		:over timeperiod
                :upon following
                :after following
                :upon following
                :following following
                :before preceding
                :during during
                :at timeperiod
                :over timeperiod
                :in timeperiod
                :after after
                :before before))
