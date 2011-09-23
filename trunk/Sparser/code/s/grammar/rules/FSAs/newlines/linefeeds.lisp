;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "linefeeds"
;;;   Module:  "grammar;rules:FSAs:newlines:"
;;;  Version:  January 1995

;; initiated 1/5/95

(in-package :sparser)

;;;--------------------------------------
;;; FSA for texts with Linefeeds in them
;;;--------------------------------------

(defun use-flush-lf-&-return-nl-tokens-fsa ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'return-newline-tokens/linefeed))
  (setq *newline-fsa-in-use* 'return-newline-tokens/linefeed))

;(use-flush-lf-&-return-nl-tokens-FSA)
(defun return-newline-tokens/linefeed (position-being-filled)
  ;; the end-of-line characters in these files consist of a newline
  ;; followed by a linefeed. We ignore the linefeed -- printing it
  ;; to a Fred editor has frozen the system when one tried to print
  ;; that file.  
  ;;   However, by not printing the LF, we get out of sync with the
  ;; character count in buffer, so we have to subtract from its
  ;; counter so that any display of this text will have the position
  ;; character indexes in sync with the display.

  (declare (ignore position-being-filled))
  (let ((word-after-nl (next-token)))
    (if (eq word-after-nl (punctuation-named #\Linefeed))
      (incf *number-of-characters-to-subtract*)
      (break "new case: next token is ~A" word-after-nl))
    (increment-line-count)
    *newline* ))

