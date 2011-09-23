;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "next token"
;;;   Module:  "tokenizer;"
;;;  Version:  3.0 September 1992

;;  1.1  (12/17/90 v1.6)  Reactivated *display-word-stream* trace.  It uses
;;       a subroutine defined in word;lookup.
;;  1.2  (1/14/92 v2.2)  Moved *display-word-stream* to Bump-&-store-word
;;  3.0  (9/15 v2.3) Accomodates new fsa, no longer uses tsv object

(in-package :sparser)


(defun next-token ()
  (run-token-fsa))

