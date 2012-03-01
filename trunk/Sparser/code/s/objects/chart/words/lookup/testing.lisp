;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,2012  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "testing"
;;;   Module:  "objects;words:"
;;;  Version:  March 2012

;; initiated 1/16/92, populated 9/28. 3/1/12 Quiet compiler

(in-package :sparser)

; (test_scan-string *short-string*)


(defun test_scan-string (string)
  (declare (special *source-exhausted*))
  (establish-character-source/string string)
  (initialize-tokenizer-state)
  (initialize-chart-state)
  (loop
    (when *source-exhausted*
      (return))
    (scan-next-position)))


