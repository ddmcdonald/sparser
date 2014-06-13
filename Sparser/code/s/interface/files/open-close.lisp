;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; copyright (c) 2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "open/close"
;;;   Module:  "interface;file ops:"
;;;  Version:  June 2014

;; First version circa July 1990. 6/13/14 Added CCL-specific requirement
;; on the open that it use UTF-8

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
        #+openmcl (open pathname
                        :external-format :UTF-8
                        :direction :input)
        #-openmcl (open pathname
                        :direction :input)))


;;;-----------------------
;;; help while debugging
;;;-----------------------

(defun close-character-source-accidentally-left-open ()
  (when *open-stream-of-source-characters*
    (close-character-source-file)))

(export 'Close-character-source-accidentally-left-open)
