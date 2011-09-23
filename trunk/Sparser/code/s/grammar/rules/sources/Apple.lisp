;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "Apple"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  July 1994

;; initiated 6/6/94 v2.3  (7/22) added capitalization master control

(in-package :sparser)

;;;------------------
;;; the style object
;;;------------------

(define-document-style  Apple
  :init-fn setup-for-Apple
  :features ( :sections-cover-whole-document ))


;;;------------------------------------
;;; setting up the runtime environment
;;;------------------------------------

(defun setup-for-Apple ()
  ;; funcall'ed from initialize-by-current-style

  (setq *adjust-text-to-fixed-line-length* nil)

  (use-NL-is-meaningless)

  ;(setq *ignore-capitalization* t)

  (unless *invisible-markup-trie*
    (make-the-invisible-markup-trie))
  (allow-invisible-markup))

