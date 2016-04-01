;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2016 SIFT, LLC.  All Rights Reserved
;;;
;;;    File: "contact"
;;;  Module: "grammar/model/sl/ambush/
;;; version: April 2016

;; Citations collected 8/1/07. Started in on it 9/4/07

(in-package :sparser)

;;;------------------------------------
;;; The fact of contact and where from
;;;------------------------------------
;; "contact left"
;; we got contact from rear

(define-category contact-from
  :instantiates self
  :specializes linguistic
  :binds ((where . direction)))



;;;-----------------
;;; "break contact"
;;;-----------------

;; break contact just go keep driving through


;;;----------------------------------------------------------------
;;; related direction-including expressions: "cover" "return fire"
;;;----------------------------------------------------------------

;; can you cover the left side OF ROAD
;; can you cover your left the left road

;; return fire return fire let's keep going return fire in the direction it's coming from




