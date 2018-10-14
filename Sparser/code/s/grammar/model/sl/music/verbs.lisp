;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018 SIFT, LLC.
;;;
;;;     File:  "verbs"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  September 2018

;; Initiated 9/3/18 for verbs used in Museci sentences to avoid gratuitous
;; clash with bio. 

(in-package :sparser)

;; "Delete everything before beat 2 of measure 1"
;;
(define-category delete
  :specializes process
  :mixins (simple-action)
  :restrict ((theme (:or endurant sequence)))
  :realization (:verb "delete"))

;; "transpose the C up 1 half step"
;;
(define-category transpose
  :specializes process
  :mixins (simple-action)
  :binds ((amount step))
  :realization (:verb "transpose"
                :up amount))
