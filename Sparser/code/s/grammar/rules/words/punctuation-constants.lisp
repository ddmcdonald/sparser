;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "punctuation-constants"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   July 2015

;; Broken out from punctuation1 1/29/15 because the ACL compiler
;; doesn't know how to serialize a word object. Added right-arrow 4/23/15.
;; Plus-minus 7/28/15

(in-package :sparser)

;;;------------------------------------------------------
;;; global pointers to frequently referred to characters
;;;------------------------------------------------------

;; These are used in (at least) Could-be-the-start-of-a-sentence

(defconstant *the-punctuation-period* (punctuation-named #\.))
(defconstant *the-punctuation-comma* (punctuation-named #\,))
(defconstant *the-punctuation-colon* (punctuation-named #\:))
(defconstant *the-punctuation-semicolon* (punctuation-named #\;))

(defconstant *the-punctuation-hyphen* (punctuation-named #\-))

(defconstant *the-punctuation-open-angle-bracket* (punctuation-named #\<))

(defconstant *the-punctuation-open-parenthesis* (punctuation-named #\())
(defconstant *the-punctuation-close-parenthesis* (punctuation-named #\)))

(defconstant *the-punctuation-rightwards-arrow* word::rightwards-arrow)
(defconstant *the-punctuation-plus-minus* word::plus-minus)

(defparameter *punctuation-words*
  `(,*the-punctuation-period* ,*the-punctuation-comma*
    ,*the-punctuation-colon* ,*the-punctuation-semicolon*
    ,*the-punctuation-hyphen* ))

(defun edge-over-punctuation? (edge)
  (memq (edge-category edge) *punctuation-words*))