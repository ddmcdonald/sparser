;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "title heads"
;;;   Module:  "model;dossiers:"
;;;  version:  July 2013

;; initiated 6/10/93 v2.3. Initially populated 12/8/95. 3/25/08 added
;; "minister". 5/24/13 "chief of staff" as a polyword. 7/17/13 "scientist"

(in-package :sparser)

(define-single-word-title "actuary")
(define-single-word-title "advisor")
(define-single-word-title "attorney")
(define-single-word-title "cashier")
(define-single-word-title "chairman")
(define-single-word-title "chief")
(define-single-word-title "commissioner")
(define-single-word-title "counsel")
(define-single-word-title "controller")
(define-single-word-title "director")
(define-single-word-title "forecaster")
(define-single-word-title "journalist")
(define-single-word-title "manager")
(define-single-word-title "minister")
(define-single-word-title "partner")
(define-single-word-title "president")
(define-single-word-title "professor")
(define-single-word-title "publisher")
(define-single-word-title "secretary")
(define-single-word-title "scientist")
(define-single-word-title "treasurer")
(define-single-word-title "trustee")

(define-single-word-title "official") ; "Beijing officials"
(define-single-word-title "ambassador") 
(define-single-word-title "figher") ; "riot fighters"
(define-single-word-title "demonstrator")
(define-single-word-title "protestor")
(define-single-word-title "activist")
(define-single-word-title "envoy") ; i.e. ambasador
(define-single-word-title "radical")
(define-single-word-title "separatist")
(define-single-word-title "chancellor")
(define-single-word-title "leader")
#|(define-single-word-title "")
(define-single-word-title "")
(define-single-word-title "")|#

(define-title-base-word "executive")
(define-title-base-word "officer")
