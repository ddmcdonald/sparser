;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011.2020  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "storms"
;;;   Module:  "grammar/model/sl/hurricanes/"
;;;  version:  December 2020

;; Initiated 12/17/11

(in-package :sparser)

(define-category storm
  :specializes perdurant
  :instantiates self
  :realization (:common-noun "storm"))

(define-category make-landfall
  :specializes accomplishment)

(def-cfr make-landfall (make landfall)
  :form vg)
