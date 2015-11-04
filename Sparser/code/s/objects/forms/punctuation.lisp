;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1991,1992 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "punctuation"
;;;    Module:   "grammar;forms:"
;;;   Version:   1.1  April 1991   

(in-package :sparser)

;;;---------------
;;;  punctuation
;;;---------------

(defmacro define-punctuation (symbol char)
  `(define-punctuation/expr ',symbol ,char))

