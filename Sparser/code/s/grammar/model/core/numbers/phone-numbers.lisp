;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "phone-numbers"
;;;    Module:   "analyzers;psp:word-spotting:"
;;;   Version:   July 2021

;; Initiated 7/13/21

(in-package :sparser)


(defun make-an-edge-over-phone-number (3-digit-edge 4-digits-edge start-pos)
  "Called from digits-fsa whose charter is to make an edge over the full span
   of digits it sees, so we have to do the same. We also need to look for
   a preceding area code, likely inside parentheses."
  (push-debug `(,3-digit-edge ,4-digits-edge ,start-pos)) (break "got here"))
