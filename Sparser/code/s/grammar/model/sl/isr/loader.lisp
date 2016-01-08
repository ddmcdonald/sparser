;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  April 2014

;; Initiated 10/8/13 to hold the model/grammar for the ISR domain
;; of the GBOSS chat logs, along with more general categories that
;; we're only trying out for C3. 3/20/14 added movement. 4/14/14 moved
;; out general categories to kinds. Added [specifics] for the ISR categories
;; in the files that were moved out

(in-package :sparser)

(gload "isr;draft-categories")
(gload "isr;container-and-SUV")
(gload "isr;specifics")
(gload "isr;entities")

;; Don't load until the code runs
;; (gload "isr;draft-lexicon")