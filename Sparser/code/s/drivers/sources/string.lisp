;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-1991  Content Technologies Inc.
;;; copyright (c) 1992,2013,2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "string"
;;;   Module:  "drivers;sources:"
;;;  Version:  August 2016

;; Created February 1991 or earlier
;; 5/1/13 Added section and paragraph initialization that will not be
;;  in place in the normal use of this form via the abbreviation p.
;;  Might be overkill, but we don't want anything inhibited. 9/23/13
;;  added paragraph initialization
;; 0.1 (10/3/13) Reorganized the initialization. Push out to commmon path

(in-package :sparser)

(export 'analyze-text-from-string)


(defun analyze-text-from-string (string)
  (declare (special *trap-error-skip-sentence*
                    *string-from-analyze-text-from-string*
                    *prescan-character-input-buffer*))
  (setq *string-from-analyze-text-from-string* string)
  (establish-character-source/string string)
  (when *prescan-character-input-buffer*
    (scan-and-swap-character-buffer))
  (cond
    (*trap-error-skip-sentence*
      (handler-case
          (analysis-core)         
        (error (e)
          (ignore-errors
            (format t "~&Error in ~s~%~a~%~%" (current-string) e)))))
    (t
     (analysis-core))))

