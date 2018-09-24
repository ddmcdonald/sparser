;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018 SIFT, LLC.
;;;
;;;     File:  "objects"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  September 2018

;; Initiated 8/30/18

(in-package :sparser)


;;--- goes in upper-model

(define-category symbolic
  :specializes non-physical)

;; (define-category symbol-structure
;;   :specializes symbol


;;--- Music things

(define-category beat
  :specializes symbolic
  :mixins (part-of-a-sequence)
  :realization (:common-noun "beat"))

(define-category measure
  :specializes symbolic
  :mixins (container ;; of note stuff
           partonomic ;; comprised of parts
           part-of-a-sequence ;; fits into a larger sequence
           sequence ;;// alternative to partonomic
           )
  :bindings (part-type 'beat)
  ;;:restrict ((part-type beat))
  :realization (:common-noun "measure"))


(define-category note
  :specializes symbolic
  :mixins (part-of-a-sequence) ;; "the fifth note"
  :realization (:common-noun "note"))

(define-category rest
  :specializes symbolic
  :mixins (part-of-a-sequence)
  :realization (:common-noun "rest"))
