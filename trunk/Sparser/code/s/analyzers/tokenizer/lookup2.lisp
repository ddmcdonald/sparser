;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "lookup"
;;;   Module:  "tokenizer;"
;;;  Version:  2.0 September 1992

;;  1.1 (v1.6 12/14/90) Cleans up the mess in Lookup as part of doing :ignore
;;      unknown words.
;;  2.0 (9/15/92 v2.3) utterly revamped to handle the different tokenizer

(in-package :sparser)


(defun find-word (char-type)
  (let ((symbol (lookup-word-symbol)))
    (if symbol
      (symbol-value symbol)
      (establish-unknown-word char-type))))

