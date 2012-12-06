;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2012 David D. McDonald
;;;
;;;     File: "comlex-unpacking"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  December 2012

;; initiated 12/3/12 when it looked like more would go into this
;; directory. Removed load calls from grammar loader. 12/4/12 added
;; assignments.

(in-package :sparser)

;; required is loaded by the master loader

(gload "brackets;types")
(gload "brackets;assignments")
(gload "brackets;judgements1")
(gload "brackets;comlex-unpacking")
