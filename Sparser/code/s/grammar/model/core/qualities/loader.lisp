;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;   Module:  "grammar/core/qualities/
;;;  version:  December 2015

;; Initiated 10/8/13 to provide a place to put size, weight, color
;; and similar properties that inhere in endurants of particular sorts.
;; 11/21/13 added attribute. 12/3/15 added size.

(in-package :sparser)

(gload "qualities;color")
(gload "qualities;size")
(gload "qualities;attribute")