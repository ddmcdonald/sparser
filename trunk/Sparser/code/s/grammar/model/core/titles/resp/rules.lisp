;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "responsibilities rules"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  February 1991      system version 1.8.1

;; initiated 2/13

(in-package :CTI-source)


;;;-------------------------------------------
;;; setup for composition into larger phrases
;;;-------------------------------------------

(def-cfr of-company-activity ("of" company-activity)
  :referent (:daughter right-edge))

