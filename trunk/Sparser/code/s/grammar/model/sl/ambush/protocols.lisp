;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;    File: "protocols"
;;;  Module: "grammar/model/sl/ambush/
;;; version: August 2007

;; Initiated 8/9/07. Added polar answers 8/14

(in-package :sparser)

;;;---------------
;;; "affirmative"
;;;---------------

(define-category answer-to-a-question 
  :binds ((question)))

(define-category answer-is-affirmative
  :instantiates self
  :specializes answer-to-a-question 
  :realization (:word "affirmative"))

(define-category answer-is-negative
  :instantiates answer-to-a-question 
  :specializes answer-to-a-question 
  :realization (:word "negative"))



;;;---------------
;;; "respond ..."
;;;---------------

;;--- quick hack to block the collision of this use of "sequence" with
;; the build-in category of the same name.

(define-category respond-in-sequence
  :instantiates self)
;; It should inherit from action and be caught up in form rules that
;; scarf up who's issuing this command

(define-category respond
  :instantiates self
  ;; inherits from action -- and gets form rules there, but unlike
  ;; just above this form is just a VG since we're not trying to
  ;; encode the ETF that go with this verb (the subcategorization
  ;; patterns and their transformations)
  :realization (:main-verb "respond"))
  

(def-cfr in-sequence ("in" "sequence")) ;; what's its form??

(def-cfr respond-in-sequence (respond in-sequence)
  :form vp
  :referent (:instantiate-individual respond-in-sequence))
