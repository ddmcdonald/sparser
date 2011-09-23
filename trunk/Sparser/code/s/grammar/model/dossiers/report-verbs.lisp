;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995,1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "report verbs"
;;;   Module:  "grammar;model:dossiers:"
;;;  version:  January 1996

;; initiated 10/22/93 v2.3 restarting from scratch. Added some cases 1/8/96.

(in-package :sparser)

(define-report-verb "announce")

(define-report-verb "report")

(define-report-verb '("say" :past-tense "said"))
