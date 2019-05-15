;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "substances"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; For items identified as substances from TRIPS

(in-package :sparser)

(define-category serum :specializes experimental-condition
 :mixins (substance)
 :realization (:noun ("serum" :plural "sera")))

(define-category buffer :specializes experimental-condition
 :mixins (substance)
 :realization (:noun "buffer")) ;maybe add verb?

(noun ("HPB" "high phosphate buffer") :super buffer)

(noun "air" :super substance) ;; could be better but replaces the spurious definition where it was a name for a random chemical
