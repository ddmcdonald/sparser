;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "sl;disease:"
;;;   version:   May 2013

;; initiated 12/27/07. Started expanding 5/6/13 with [named-entities],
;; [h-n-scanner]

(in-package :sparser)

(gload "disease;death")
(gload "disease;pathogen")
(gload "disease;pathogen-type")
(gload "disease;outbreak")
(gload "disease;contract")
(gload "disease;spread")
(gload "disease;h-n-scanner")
(gload "disease;named-entities")


