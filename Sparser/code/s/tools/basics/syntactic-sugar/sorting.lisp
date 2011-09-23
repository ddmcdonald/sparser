;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "sorting"
;;;    Module:   "tools:basics:syntactic sugar"
;;;   Version:   1.0  July 1991

(in-package :sparser)


(defun symbol-name-string-lessp (s1 s2)
  (let ((pname1 (symbol-name s1))
        (pname2 (symbol-name s2)))
    (string-lessp pname1 pname2)))

