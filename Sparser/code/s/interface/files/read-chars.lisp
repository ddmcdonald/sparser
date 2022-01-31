;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990 Content Technologies Inc.
;;; copyright (c) 1992,2022 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "read chars"
;;;   Module:  "interface;file ops:"
;;;  Version:  January 2022

;;  initiated 1/90
;;  0.1 (12/19/90, v1.6)  Driver renamed so it could be governed by
;;       a switch.
;;  1.1 (9/25/92 v2.3) Redone to fit new tokenizer

(in-package :sparser)


(defun read-chars-into-buffer/no-changes (first-index
                                          character-array
                                          file-stream
                                          maximum-count)
  "Called from establish-character-source/open-file. The 'first-index'
   is relevant when using small character buffers that have to be
   regularly refilled. Otherwise until we reach the maximum-count
   (essentially the length of the character buffer),  we read a
   character from the file and insert it in to the character array."
  (let ((eof (code-char 0))
        char )
    (dotimes (i maximum-count)
      (unless (< i first-index)
        (setq char (read-char file-stream nil eof))
        (setf (schar character-array i) char)
        (when (eq char eof)
          (setf (schar character-array i) #\^B)
          (return))))))



(defun read-from-source-to-window (file window)
  (let ((eof-marker (gensym))
        char )
    (with-open-file (file-stream file
                     :direction :input)
      (loop
        (setq char (read-char file-stream nil eof-marker))
        (when (eq char eof-marker)
          (return))
        (write-char char window)))))
