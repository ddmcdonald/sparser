;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1991-1992,2921  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "words"
;;;    Module:   "objects;forms:"
;;;   Version:   March 2021

(in-package :sparser)

;;;---------------------
;;; conventional words 
;;;---------------------

(defun define-word (string)
 (unless (stringp string)
    (error "The argument to Define-word has to be a string~
            ~%~A is a ~A" string (type-of string)))
 (define-word/expr string))

