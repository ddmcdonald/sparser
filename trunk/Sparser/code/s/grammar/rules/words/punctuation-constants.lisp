;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "punctuation-constants"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   January 2015

;; Broken out from punctuation1 1/29/15 because the ACL compiler
;; doesn't know how to serialize a word object. 

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


(defparameter *punctuation-words*
  `(,*the-punctuation-period* ,*the-punctuation-comma*
    ,*the-punctuation-colon* ,*the-punctuation-semicolon*
    ,*the-punctuation-hyphen* ))

(defun edge-over-punctuation? (edge)
  (memq (edge-category edge) *punctuation-words*))