;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "NL buffer"
;;;   Module:  "analyzers:tokenizer:"
;;;  Version:  March 2010

;; initiated 2/15/91, v1.8.1
;; 10/31 moved to tokenizer
;; 3/15/10 *trace-next-terminal* => *trace-next-token*. Original flag lost
;;  in the sands of time.

(in-package :sparser)


(defvar *word-buffered* nil
  "Set by the NewLine fsa, read and reset by Next-token/buffer")


(defun next-token/buffer ()
  (declare (special *trace-next-token*))
  (let* ((word-buffered *word-buffered*)
         (token
          (if word-buffered
            (then (setq *word-buffered* nil)
                  word-buffered)
            (next-token))))
    (when *trace-next-token*
      (format t "~&Next terminal: ~A~%" token))
    token))

