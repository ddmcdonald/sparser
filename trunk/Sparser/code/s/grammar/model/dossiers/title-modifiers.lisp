;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "title modifiers"
;;;   Module:  "model;dossiers:"
;;;  version:  December 1995

;; initiated 6/10/93 v2.3. Initially populated 12/8/95

(in-package :sparser)


;;--- relative status

(define-title-modifier "assistant")
(define-title-modifier "associate")
(define-title-modifier "chief")
(define-title-modifier "deputy")
(define-title-modifier "executive")
(define-title-modifier "full")
(define-title-modifier "general")
(define-title-modifier "managing")
(define-title-modifier "senior")
(define-title-modifier "vice")


;;--- area of responsibility

(define-title-modifier "administrative")
(define-title-modifier "corporate")
(define-title-modifier "credit")
(define-title-modifier "district")
(define-title-modifier "group")     ;; hmm... problematic overgeneration
(define-title-modifier "operating")


;;-------------- added from the workbench ------------------



;; 3/13/96
(define-title-modifier "non-executive")

