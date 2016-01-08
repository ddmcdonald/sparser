;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "Knowledge Factory"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  January 1996

;; initiated 12/28/95. Added background companies 1/8/96. Stubbed case
;; for the email set 1/13

(in-package :sparser)

;;;-------
;;; style
;;;-------

(define-document-style  KF/web-page
  :init-fn  setup-for-KF-web-page
  :features nil )


(defun setup-for-KF-web-page ()
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (setq *ignore-capitalization* nil)

  (adjust-text-to-fixed-line-length)
  (setq *paragraph-is-not-paired-sgml* t)
  (use-NL-is-meaningless)

  (establish-companies-as-part-of-the-background
   '("Knowledge Factory Partners, L.L.C."
     "Business Factory")))


;;--------------

(define-document-style  KF/just-ascii
  :init-fn  setup-for-KF-typed-in
  :features nil )


(defun setup-for-KF-typed-in ()
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (setq *ignore-capitalization* nil)

  (use-original-lines-of-text)
  (use-blank-line-nl-fsa)

  (establish-companies-as-part-of-the-background
   '("Knowledge Factory Partners, L.L.C."
     "Business Factory")))

