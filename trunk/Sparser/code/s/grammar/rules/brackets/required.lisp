;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994.1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "required"
;;;   Module:  "grammar;rules:brackets:"
;;;  Version:  January 1995

;; initiated 3/17/94. Added ranks 1/27/95

(in-package :sparser)

(define-bracket :[ :after  phrase 5)          ;;  phrase.[
(assign-bracket source-start   phrase.[ )

(define-bracket :] :before phrase 5)
(assign-bracket end-of-source  ].phrase )   ;;  ].phrase

