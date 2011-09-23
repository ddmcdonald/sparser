;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "treetops"
;;;   Module:  "objects;traces:"
;;;  Version:   1.0  October 1990         (v1.5)

(in-package :sparser)


(defparameter *trace-treetops* nil
  "Flag read in Do-treetops.")

(defparameter *trace-treetop-hits* nil
  "Signals there being a treetop routine, as opposed to just
   the treetop being checked.")

