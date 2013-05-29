;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "title heads"
;;;   Module:  "model;dossiers:"
;;;  version:  May 2013

;; initiated 6/10/93 v2.3. Initially populated 12/8/95. 3/25/08 added
;; "minister". 5/24/13 "chief of staff" as a polyword. 

(in-package :sparser)

(define-single-word-title "actuary")
(define-single-word-title "advisor")
(define-single-word-title "attorney")
(define-single-word-title "cashier")
(define-single-word-title "chairman")
(define-single-word-title "commissioner")
(define-single-word-title "counsel")
(define-single-word-title "controller")
(define-single-word-title "manager")
(define-single-word-title "minister")
(define-single-word-title "president")
(define-single-word-title "professor")
(define-single-word-title "publisher")
(define-single-word-title "secretary")
(define-single-word-title "treasurer")
(define-single-word-title "trustee")


(define-title-base-word "executive")

(define-single-word-title "Chief of Staff")
;; If this is lowercase, like it should be, PNF will see it
;; as a name. 

;;-------------- added from the workbench ------------------




;; 12/10
(define-title-base-word "officer")

;; 12/10
(define-title-base-word "executive")

;; 12/11
(define-single-word-title "director")

;; 1/17/96
(define-single-word-title "partner")

