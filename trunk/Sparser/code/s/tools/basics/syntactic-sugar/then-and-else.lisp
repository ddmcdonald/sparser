;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "then&else"
;;;    Module:   "tools:basics:syntactic sugar"
;;;   Version:   2.0     June 1990

(in-package :sparser)


(defmacro else (&body forms)
  "Helps make `if' forms self-documenting when they get
   complex and you can't always parse the parens by eye."
  `(progn ,@forms) )

(defmacro then (&body forms)
  "Helps make `if' forms self-documenting when they get
   complex and you can't always parse the parens by eye."
  `(progn ,@forms) )

