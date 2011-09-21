;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992-1993,2011  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "then&else"
;;;    Module:  /Sparser/util/"
;;;   Version:   

;; (3/9/11) Reworked to fit in ddm-util.

(in-package :ddm-util)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (export '(then
            else)))


(defmacro else (&body forms)
  "Helps make `if' forms self-documenting when they get
   complex and you can't always parse the parens by eye."
  `(progn ,@forms) )

(defmacro then (&body forms)
  "Helps make `if' forms self-documenting when they get
   complex and you can't always parse the parens by eye."
  `(progn ,@forms) )

