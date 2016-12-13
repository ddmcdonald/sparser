;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1989,1993,2011.2016  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "strings"
;;;    module:  "util:"
;;;   Version:  December 2016

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
  '(#\Space #\Tab #\Newline #\Return #\Linefeed #\Page
    #\HAIR_SPACE #\ZERO_WIDTH_SPACE #\THIN_SPACE
    #\FOUR-PER-EM_SPACE #\EN_SPACE ))

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



(defun spaced-string (list)
  "given a list, probably of words, return a string where
   there is a space between each word. Based on string-append"
  (apply #'string-append (spaced-list list)))

(defun spaced-list (list)
  (cond ((endp list) nil)
	((null (cdr list)) list)
	(t (cons (first list) (cons " " (spaced-list (rest list)))))))
