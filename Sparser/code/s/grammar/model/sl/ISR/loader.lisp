;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  October 2013

;; Initiated 10/8/13 to hold the model/grammar for the ISR domain
;; of the GBOSS chat logs, along with more general categories that
;; we're only trying out for C3. 

(in-package :sparser)

(gload "isr;draft-categories")
(gload "isr;container-and-SUV")