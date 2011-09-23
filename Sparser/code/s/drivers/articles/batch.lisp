;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "batch"
;;;   Module:  "drivers;articles:"
;;;  Version:   November 1991

;; initiated 2/91
;; (11/25 v2.1) Commented out the error traps

(in-package :sparser)


(defun batch-run (document-source)
  ;(preempt-all-fns-that-stop-execution 'abort-article/batch)
  (do-source document-source)
  ;(restore-original-break-error-&-cerror-definitions)
  )


(defun abort-article/batch (string &rest args)
  (format t "~%~
             ~%----------------------------------------------~
             ~%  Error/break in article~
             ~%          ~
             ~%" *article-under-analysis*)
  (apply #'format t string args)
  (terpri)
  ;(chart)
  (terpri)
  ;(tts)
  (throw '*abort-article* :error/break-occured))

