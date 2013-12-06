;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;   Module:  "grammar/core/qualities/
;;;  version:  November 2013

;; Initiated 10/8/13 to provide a place to put size, weight, color
;; and similar properties that inhere in endurants of particular sorts.
;; 11/21/13 added attribute

(in-package :sparser)

(gload "qualities;color")
(gload "qualities;attribute")