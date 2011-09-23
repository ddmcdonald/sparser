;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "approximations"
;;;   Module:  "model;dossiers:"
;;;  version:  0.1 November 1994

;; initiated 6/6/93 v2.3.  5/27/94 removed "several".
;; 0.1 (11/17) distinguished determiners from adverbs

(in-package :sparser)


(define-approximator/determiner "about")
(define-approximator/determiner "around")

(define-approximator/adverbial "fairly")
(define-approximator/adverbial "only")

;; 11/15
(define-approximator/determiner "almost")

