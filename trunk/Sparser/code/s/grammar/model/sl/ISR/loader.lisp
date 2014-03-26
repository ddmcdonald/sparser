;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  March 20114

;; Initiated 10/8/13 to hold the model/grammar for the ISR domain
;; of the GBOSS chat logs, along with more general categories that
;; we're only trying out for C3. 3/20/14 added movement.

(in-package :sparser)

(gload "isr;draft-categories")
(gload "isr;space")
(gload "isr;container-and-SUV")
(gload "isr;movement")
(gload "isr;entities")

;; Don't load until the code runs
;; (gload "isr;draft-lexicon")