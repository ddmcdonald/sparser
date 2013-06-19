;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "typed/no-headers"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  May 1994

;; initiated 12/29/93 v2.3.
;; 0.1 (5/4/94) added value for line adjustment  (7/22) added capitalization master 
;;      control

(in-package :sparser)

;;;------------------
;;; the style object
;;;------------------

(define-document-style  hand-typed/no-headers
  :init-fn setup-for-typed/no-headers)


;;;------------------------------------
;;; setting up the runtime environment
;;;------------------------------------

(defun setup-for-typed/no-headers ()
  ;; funcall'ed from initialize-by-current-style

  (setq *adjust-text-to-fixed-line-length* nil)
  
  ;; trivial model of NL
  (use-return-newline-tokens-fsa)

  (setq *ignore-capitalization* nil)

  (establish-version-of-next-terminal-to-use :pass-through-all-tokens))

