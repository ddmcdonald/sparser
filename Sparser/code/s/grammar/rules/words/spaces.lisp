;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "spaces"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   1.3 November 1991

;; 1.1 (1/2, v1.6) Moved one-space, newline, and end-of-source to Required.
;; 1.2 (7/15 v1.8.6) moved out the nl+indentation section marker
;; 1.3 (11/17 v2.1) moved tab to punctuation and elevated this file
;;     to the rest of the words file, flushing "basics:"

(in-package :sparser)



;;;----------
;;;  spaces
;;;----------

(define-number-of-spaces 2-spaces  "  ")
(define-number-of-spaces 3-spaces  "   ")
(define-number-of-spaces 4-spaces  "    ")
(define-number-of-spaces 5-spaces  "     ")
(define-number-of-spaces 6-spaces  "      ")
(define-number-of-spaces 7-spaces  "       ")
(define-number-of-spaces 8-spaces  "        ")
(define-number-of-spaces 9-spaces  "         ")
(define-number-of-spaces 10-spaces "          ")
(define-number-of-spaces 11-spaces "           ")
(define-number-of-spaces 12-spaces "            ")
(define-number-of-spaces 13-spaces "             ")
(define-number-of-spaces 14-spaces "              ")
(define-number-of-spaces 15-spaces "               ")
(define-number-of-spaces 16-spaces "                ")

