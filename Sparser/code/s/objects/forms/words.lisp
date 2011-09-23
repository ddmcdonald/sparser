;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1991,1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "words"
;;;    Module:   "grammar;forms:"
;;;   Version:   2.0   June 1990

(in-package :sparser)

;;;---------------------
;;; conventional words 
;;;---------------------

(defun define-word (string)
  (define-word/expr string))

