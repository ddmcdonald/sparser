;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "operations"
;;;   Module:  "interface;records:"
;;;  Version:   1.0  January 1991

(in-package :sparser)


;;;-------------------------------------------
;;; routines called from the readout routines
;;;-------------------------------------------

(defvar *delimiter-needed* nil
  "A state variable of the record writing operations. When it
   is Nil a delimiter is not needed before the next field is
   written.")

(defun initialize-record ()
  (write-char #\newline  *db-record-stream*)
  (write-char #\newline  *db-record-stream*)
  (setq *delimiter-needed* nil))

(defun write-next-field (string)
  (when *delimiter-needed*
    (write-delimiter))
  (write-char #\" *db-record-stream*)
  (write-string string *db-record-stream*)
  (write-char #\" *db-record-stream*)
  (setq *delimiter-needed* t))

(defun write-delimiter ()
  (write-char #\tab *db-record-stream*))

(defun terminate-record ()
  (write-char #\newline  *db-record-stream*))

