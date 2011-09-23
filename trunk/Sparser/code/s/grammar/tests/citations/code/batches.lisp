;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "batches"
;;;   Module:  "grammar;tests:citations:code:"
;;;  version:  December 1993

;; initiated 12/23/93 v2.3

(in-package :sparser)


(defun test-all-citations ()
  (dolist (c *citations-defined*)
    (test-citation c)))

