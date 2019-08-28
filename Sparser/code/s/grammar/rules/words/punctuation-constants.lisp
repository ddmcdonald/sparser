;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2019 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "punctuation-constants"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   August 2019

;; Broken out from punctuation1 1/29/15 because the ACL compiler
;; doesn't know how to serialize a word object. Added right-arrow 4/23/15.
;; Plus-minus 7/28/15

(in-package :sparser)

;;;------------------------------------------------------
;;; global pointers to frequently referred to characters
;;;------------------------------------------------------

;; These are used in (at least) Could-be-the-start-of-a-sentence

(defparameter *the-punctuation-period* (punctuation-named #\.))
(defparameter *the-punctuation-comma* (punctuation-named #\,))
(defparameter *the-punctuation-colon* (punctuation-named #\:))
(defparameter *the-punctuation-semicolon* (punctuation-named #\;))
(defparameter *the-punctuation-question-mark* (punctuation-named #\?))
(defparameter *the-punctuation-percent* (punctuation-named #\%))
(defparameter *the-punctuation-single-quote* (punctuation-named #\'))
(defparameter *the-punctuation-double-quote* (punctuation-named #\"))
(defparameter *the-punctuation-prime* (resolve "PRIME"))

(defparameter *the-punctuation-hyphen* (punctuation-named #\-))

(defparameter *the-punctuation-open-angle-bracket* (punctuation-named #\<))

(defparameter *the-punctuation-open-parenthesis* (punctuation-named #\())
(defparameter *the-punctuation-close-parenthesis* (punctuation-named #\)))

(defparameter *the-punctuation-rightwards-arrow* word::rightwards-arrow)
(defparameter *the-punctuation-plus-minus* word::plus-minus)

(defparameter *punctuation-words*
  `(,*the-punctuation-period* ,*the-punctuation-comma*
    ,*the-punctuation-colon* ,*the-punctuation-semicolon*
    ,*the-punctuation-hyphen* ,*the-punctuation-question-mark*))

(defparameter *sentence-terminating-punctuation*
  `(,*the-punctuation-period* ,*the-punctuation-question-mark*))

(defun edge-over-punctuation? (edge)
  (memq (edge-category edge) *punctuation-words*))
