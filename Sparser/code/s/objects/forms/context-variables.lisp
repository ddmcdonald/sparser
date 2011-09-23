;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "context variables"
;;;    Module:   "grammar;forms:"
;;;   Version:   June 1992

;; initiated 6/18/92

(in-package :sparser)


(defmacro define-context-variable (symbol initial-value
                                   &optional comment)
  `(define-context-variable/expr ',symbol ',initial-value ',comment))

