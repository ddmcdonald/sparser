;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1989,1993,2011.2016  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "strings"
;;;    module:  "util:"
;;;   Version:  May 2016

;; (3/9/11) Reworked to fit in ddm-util. 7/5 fixed old case in
;; string-append. 2/1/16 added strings-to-hyphenated-string.
;; (3/24/16) Stripped down.

(in-package :ddm-util)

(defun string-append (&rest list-of-strings)
  "Sugar for (concatenate 'string ...)"
  (with-standard-io-syntax
    (apply #'concatenate 'string (mapcar #'princ-to-string list-of-strings))))

;;;--------------------------------------
;;; Lifted from Peter Clark's km-strings
;;;--------------------------------------

(defparameter *whitespace-chars*
  '(#\Space #\Tab #\Newline #\Return #\Linefeed #\Page))

;; " a " -> "a "
;; "  " -> ""
(defun remove-leading-whitespace (string) 
  (string-left-trim *whitespace-chars* string))

(defun remove-trailing-whitespace (string) 
  (string-right-trim *whitespace-chars* string))

;;; " a " -> "a"
(defun trim-whitespace (string)
  (string-trim *whitespace-chars* string))

;;; " a " -> t
(defun contains-whitespace (string)
  (some #'(lambda (char) (find char string)) *whitespace-chars*))
