;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "required"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   1.2 July 1993

;; 0.1 (2/15/91 v1.8.1) Added comma and period.
;;     (11/17 v2.1) elevated to words; from words;basics:
;; 0.2 (1/13/92 v2.2) Shifted definition of newline to #\newline
;; 1.0 (9/21 v2.3) Moved the punctuation over to that file.
;; 1.1 (4/7/93) Added defconstants so references to the word package
;;      could be removed.
;; 1.2 (7/15) changed them to defparameters because they were blocking the
;;      compilation

(in-package :sparser)


;;;--------- marking the start and end of the source character stream

(define-punctuation source-start  #\^A)  ;; ascii 1

(defparameter *source-start* (punctuation-named #\^A))



(define-punctuation end-of-source #\^B)  ;; ascii 2

(defparameter *end-of-source* (punctuation-named #\^B))



;;;-------- the most frequent word

(define-number-of-spaces one-space " ")

(defparameter *one-space* (number-of-spaces-named 1))


(define-punctuation newline  #\newline)     ;; 13
  ;; "newline" is a pseudo character that lisp supports as a hack to
  ;; transparently reflect whatever the operating system takes as
  ;; indicating newlines, i.e. on the Mac it's #\return (13), but in 
  ;; Unix it's #\linefeed (12).  It's not clear what Lisp does if the
  ;; operating system uses two characters the way a typewriter would
  ;; and OS/2 may well do.

(defparameter *newline* (punctuation-named #\newline))



(unless (boundp '*sm-paragraph-start*)
  (defvar *paragraph-start* nil
    "Referenced in sort-out-result-of-newline-analysis so it has
     to be available even if its native file -- paragraphs:section-rule
     isn't loaded."))

