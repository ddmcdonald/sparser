;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "records"
;;;   module:  "drivers;sinks:"
;;;  Version:   1.0  January 1991

(in-package :sparser)

#| 1/29/14 The initialize and readout methods are not part of
  the current build, though they would be good to revive in
  some form. So blocking out this whole file to cut down on
  the compiler complaints.

;;;------------------
;;; toplevel drivers
;;;------------------

(defun analyze-text/from-string/write-records (string)
  (initialize-salient-object-record)
  (analyze-text-from-string string)
  (readout-pending-salient-objects))

(defun w (string) (analyze-text/from-string/write-records string))



(defun analyze-text/from-file/write-records (namestring)
  (when *open-file-for-db-records*
    ;; This is here is case we error'd out from the last run.
    ;; If files are left open the Mac OS gets wierded out.
    (close-file-for-db-records))
  (initialize-salient-object-record)
  (analyze-text-from-file namestring)
  (readout-pending-salient-objects))

(defun wf (string) (analyze-text/from-file/write-records string))

|#
