;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1991 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "polyword"
;;;    Module:   "grammar;forms:"
;;;   Version:   1.2  December 1990

(in-package :sparser)

;;;----------------
;;; Defining Form
;;;----------------

(defun define-polyword (multi-word-string)
  ;; external form intended for use at toplevel
  (define-polyword/expr multi-word-string))

