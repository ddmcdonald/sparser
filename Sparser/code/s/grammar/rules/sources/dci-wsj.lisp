;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "DCI wsj"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  May 1994

;; initiated 5/4/94 v2.3. 5/19 Tweeked the call that adjusts line lengths.

(in-package :sparser)


;;---- style object

(define-document-style  Data-collection-initiative/1989-wsj
  :init-fn setup-for-DCI/1989-wsj )


(defun setup-for-DCI/1989-wsj ()

  (adjust-text-to-fixed-line-length)

  (setq *ignore-capitalization* nil)

  (establish-version-of-next-terminal-to-use :pass-through-all-tokens))

