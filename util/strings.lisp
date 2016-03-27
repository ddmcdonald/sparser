;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1989,1993,2011.2016  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "strings"
;;;    module:  "util:"
;;;   Version:  March 2016

;; (3/9/11) Reworked to fit in ddm-util. 7/5 fixed old case in
;; string-append. 2/1/16 added strings-to-hyphenated-string.
;; (3/24/16) Stripped down.

(in-package :ddm-util)

(defun string-append (&rest list-of-strings)
  "Sugar for (concatenate 'string ...)"
  (apply #'concatenate 'string (mapcar #'princ-to-string list-of-strings)))
