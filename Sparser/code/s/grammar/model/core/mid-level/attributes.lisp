;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis CwC project
;;;
;;;     File:  "height"
;;;   Module:  "grammar/core/qualities/
;;;  version:  February 2017

;; Initiated 1/11/17 to collect all the attributes together

(in-package :sparser)

(define-attribute color)  ;; "blue"
(define-attribute size)   ;; "big"
(define-attribute height) ;; "tall"
(define-attribute width)  ;; "narrow"
(define-attribute length) ;; "long"

(define-attribute rate-of-change) ;; fast, slow
;; vs 'rate' as defined in amounts/measurements.lisp

