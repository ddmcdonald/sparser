;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2017co David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;   Module:  "grammar/core/qualities/
;;;  version:  January 2017

;; Initiated 10/8/13 to provide a place to put size, weight, color
;; and similar properties that inhere in endurants of particular sorts.
;; 11/21/13 added attribute. 12/3/15 added size.

(in-package :sparser)

(gload "qualities;color")
(gload "qualities;height")
(gload "qualities;size")

;; This is being mined for its technique,
;; but it's not intented to be used as it.
(gload "qualities;attribute")
