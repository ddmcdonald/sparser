;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis CwC project
;;;
;;;     File:  "attributes"
;;;   Module:  "grammar/core/mid-level/
;;;  version:  February 2017

;; Initiated 1/11/17 to collect all the attributes together

(in-package :sparser)

(define-attribute color)  ;; "blue"
(define-attribute size)   ;; "big"
(define-attribute height) ;; "tall"
(define-attribute width)  ;; "narrow"
(define-attribute length) ;; "long"

(define-attribute amount-as-level) ;; high, low
;; The word "level" is a bio-scalar in bio, and used extensively
;; so have to prepare for fanout when naming this 'level'

(define-attribute rate-of-change) ;; fast, slow
;; vs 'rate' as defined in amounts/measurements.lisp

