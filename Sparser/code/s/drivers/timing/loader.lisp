;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1994,2017-2018 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;timing:"
;;;  Version:   April 2018

;; initiated 2/91

(in-package :sparser)

;;(lload "timing;calculation")
;;  loaded directly by the-master-loader 

(lload "timing;quiet")
(lload "timing;presentation")
(lload "timing;cases")
(lload "timing;profiling")

