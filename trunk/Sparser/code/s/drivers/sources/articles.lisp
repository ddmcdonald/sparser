;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "articles"
;;;   Module:  "drivers;sources:"
;;;  Version:  September 1994

;; initialized 8/10/94 v2.3.  8/17 Added call to set *current-article* with an arg
;; 9/1 added style management.  9/15 move it to [drivers;articles:style]

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun do-article (source-designator &key style)

  ;; called from Do-source or one of the leaves of Analyze-document-stream

  (set-the-current-article source-designator)

  (setup-explicit-style style)

  (etypecase source-designator
    (pathname (analyze-text-from-file source-designator))
    (string (analyze-text-from-string source-designator))))

