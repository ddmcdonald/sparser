;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "parameters"
;;;   Module:  "objects;chart:"
;;;  Version:  February 1991
;;;

(in-package :CTI-source)


;;;-------------------------
;;; establishing the chart
;;;-------------------------

(unless (boundp '*number-of-positions-in-the-chart*)
  (defparameter *number-of-positions-in-the-chart* 250))

