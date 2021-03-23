;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-1991  Content Technologies Inc.
;;; copyright (c) 1992,2013,2020-20201 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "directory"
;;;   Module:  "drivers;sources:"
;;;  Version:   March 2021

;; 1/30/13 Added .txt to the string passed to directory so it would work.
;;  Might be Clozure-specific requirement. 3/29/13 Added keyword to pass
;;  through. 
;; 5/1/13 Made this largely superfluous since analyze-document-stream can
;;  do the same thing, and with a real document stream. Revised arguments
;;  to fit the new ones.

(in-package :sparser)


(defun analyze-directory-files (directory
                                &key (file-extension ".txt")
                                  ((:paragraph orthographic-paragraphs) t) ; *paragraphs-from-orthography*
                                  ((:prescan prescan-buffer?) t) ; *prescan-character-input-buffer*
                                  ((:trace run-traces) t)
                                  ((:skip ignore-errors?) t))
                                  
  "Collect the files in the directory then analyze each one in sequence.
   Most of the keyword arguments are for use by analyze-text-from-file
   which is the ultimate driver"
  (let* ((pathname (decode-file-expression/pathname directory))
         (wildcard-namestring (string-append pathname "*" file-extension)))
    (push-debug `(,wildcard-namestring))
    (let ((files (directory wildcard-namestring)))
      (when (null files)
        (break "No files retrived:~%~a" wildcard-namestring))
      (loop for filename in files
         do (progn
              (when run-traces
                (format t "~&~%~%analyzing ~A~%~%" filename))
              (analyze-text-from-file filename
                                      :paragraph orthographic-paragraphs
                                      :prescan prescan-buffer?
                                      :trace run-traces
                                      :skip ignore-errors?))))))

