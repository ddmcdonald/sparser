;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "whitespace assignments"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   April 1994

;; initiated 4/29/94 v2.3

(in-package :sparser)


(define-to-be-whitespace (punctuation-named #\tab))
