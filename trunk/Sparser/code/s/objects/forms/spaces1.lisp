;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1991,1992 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "spaces"
;;;    Module:   "grammar;forms:"
;;;   Version:   1.1 November 1990

;; initiated 6/90

(in-package :sparser)

;;;----------
;;;  spaces
;;;----------

(defmacro define-number-of-spaces (symbol string)
  `(define-number-of-spaces/expr ',symbol ,string))

