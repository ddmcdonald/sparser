;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "generic"
;;;   Module:  "objects;chart:"
;;;  Version:   2.0     August 1990

(in-package :sparser)


(defun label-on-chart-object (obj)
  "Generic function that dispatches according to the specific kind
   of object involved.  Tacitly knowns what object types are legitimate
   contents of the chart."
  (etypecase obj
    (word obj)
    (polyword obj)
    ))

