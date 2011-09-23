;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "open/close"
;;;   Module:  "interface;file ops:"
;;;  Version:  0.0  July 1990

(in-package :sparser)

;;;----------
;;; globals
;;;----------

(defvar *open-stream-of-source-characters* nil
  "Set to the stream characters are read from when working from
   a file.")


;;;------------
;;; operations
;;;------------

(defun close-character-source-file ()
  (close *open-stream-of-source-characters*)
  (setq *open-stream-of-source-characters* nil))


(defun open-character-source/file (pathname)
  (setq *open-stream-of-source-characters*
        (open pathname
              :direction :input)))


;;;-----------------------
;;; help while debugging
;;;-----------------------

(defun close-character-source-accidentally-left-open ()
  (when *open-stream-of-source-characters*
    (close-character-source-file)))

(export 'Close-character-source-accidentally-left-open)
