;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-1991  Content Technologies Inc.
;;; copyright (c) 1992,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "string"
;;;   Module:  "drivers;sources:"
;;;  Version:  0.1 October 2013

;; Created February 1991 or earlier
;; 5/1/13 Added section and paragraph initialization that will not be
;;  in place in the normal use of this form via the abbreviation p.
;;  Might be overkill, but we don't want anything inhibited. 9/23/13
;;  added paragraph initialization
;; 0.1 (10/3/13) Reorganized the initialization. Push out to commmon path

(in-package :sparser)

(export 'analyze-text-from-string)

(defparameter *string-from-analyze-text-from-string* nil)
(defun analyze-text-from-string (string)
  (declare (special *trap-error-skip-sentence*))
  (if *trap-error-skip-sentence*
      (handler-case
          (analyze-text-from-string-guts string) 
        (error (e)
          (ignore-errors ;; got an error with something printing once
            (format t "~&Error in ~s~%~a~%~%" (current-string) e))))
      (analyze-text-from-string-guts string)))

(defun analyze-text-from-string-guts (string)
  (setq *string-from-analyze-text-from-string* string)
  (set-initial-state :name 'text-string)
  (establish-character-source/string string)
  (analysis-core))
