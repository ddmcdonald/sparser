;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2022 David D. McDonald  -- all rights reserved
;;;
;;;     File: "content-output"
;;;   Module: "objects/doc/"
;;;  Version: January 2022

;; initiated 1/11/22 to organize printing content to files.
;; Modeled on scheme used in comlex output: model/sl/score/.

;;---------------------------------------------

;; First use it to preserve the uncategorized edge records without
;; requiring reading through the output of a large run in the REPL
;; to find them. Intended for by-eye consumption.

(in-package :sparser)

;;;---------
;;; streams
;;;---------

(defparameter *motif-configurations-stream* *standard-output*
  "Will be set to the open file stream we should write the data
   to")

(defparameter *pathname-for-storing-configurations*
  (asdf:system-relative-pathname
   :sparser
   "Sparser/code/s/grammar/model/sl/motifs/configs-remaining.lisp"))


;;;--------------------------------------------------------------------
;;; open the outfile to explicitly turn it on the shunting to the file
;;;--------------------------------------------------------------------

(defun open-file-for-uncategorized-records ()
  "Wanted to use with-open-file (as in write-word-definitions-to-file)
   but the stream is only open within the dynamic context of that call.
   We can't setup article handling within that constraint in any easy
   way, so we're depending on an explicit close to be done somewhere
   (maybe by hand). The file isn't examinable until the stream is closed."
  (declare (special *motif-configurations-stream*))
  (let ((stream
         (open *pathname-for-storing-configurations*
               :direction :output
               :if-exists :supersede
               :if-does-not-exist :create)))
    (edge-record-outfile-preamble stream)
    (setq *motif-configurations-stream* stream)))

(defun close-uncategorized-records-stream ()
  (close *motif-configurations-stream*))


(defun edge-record-outfile-preamble (stream)
  (format stream
          "~&;;; Uncategorized edge records~
           ~%;;; Written ~a~%~%"
          (date-&-time-as-formatted-string)))
