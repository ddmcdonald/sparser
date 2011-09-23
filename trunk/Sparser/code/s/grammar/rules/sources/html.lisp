;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "html"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  September 1995

;; initiated 9/15/95

(in-package :sparser)


;;;-------
;;; style
;;;-------

(define-document-style  web-page
  :init-fn  setup-for-web-page
  :features nil )

(defun setup-for-web-page ()
  (use-original-lines-of-text)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (use-NL-is-meaningless))

