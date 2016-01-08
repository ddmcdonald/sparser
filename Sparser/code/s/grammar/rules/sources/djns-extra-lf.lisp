;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "DJNS/extra-LF"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  December 1993

;; initiated 12/27/93 v2.3

(in-package :sparser)


(defun setup-for-DJNS/1990-91 ()
  ;; funcall'ed from initialize-by-current-style

  ;; The DJNS Who's News articles collected at Sandpoint had
  ;; Linefeed characters in them. These need to be flushed from
  ;; the display stream or a Mac won't be able to print that
  ;; buffer. 
  (use-flush-LF-&-return-NL-tokens-FSA))




;;;---------------
;;; hooking it up
;;;---------------

(define-document-style  Dow-Jones-New-Service/1990-91
  :init-fn setup-for-DJNS/1990-91)

