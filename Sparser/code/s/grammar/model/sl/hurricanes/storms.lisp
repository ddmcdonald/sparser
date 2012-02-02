;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "storms"
;;;   Module:  "grammar/model/sl/hurricanes/"
;;;  version:  December 2011

;; Initiated 12/17/11

(in-package :sparser)

(define-category storm
  :specializes perdurant
  :instantiates self
  :realization (:common-noun "storm"))