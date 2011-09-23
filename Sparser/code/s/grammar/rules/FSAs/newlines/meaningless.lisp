;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "meaningless"
;;;   Module:  "grammar;rules:FSAs:newlines:"
;;;  Version:  January 1995

;; initiated 1/5/95

(in-package :sparser)

;;;---------------------------------------------------------------------
;;; FSA where NL's are meaningless and the line-count is done elsewhere
;;;---------------------------------------------------------------------

(defun use-nl-is-meaningless ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'nl-fsa/nl-is-meaningless/no-counting))
  (setq *newline-fsa-in-use* 'nl-fsa/nl-is-meaningless/no-counting))


;(use-nl-is-meaningless)

(defun nL-fsa/nl-is-meaningless/no-counting (position-being-filled)
  ;; There is a nl charcter at this position. Depending on whether
  ;; display output is going to the LL or the display we return
  ;; a NL or a space respectively.   We also do a lookahead directly
  ;; into the character buffer for immediately following NL's --
  ;; if there are any we move the buffer pointer over them.
  (declare (ignore position-being-filled))
  (unless *adjust-text-to-fixed-line-length*
    (increment-line-count))
  (if *adjust-text-to-fixed-line-length*
    *one-space*
    *newline*))

