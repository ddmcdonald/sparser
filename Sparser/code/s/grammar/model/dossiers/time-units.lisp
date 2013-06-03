;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "time units"
;;;   Module:  "model;dossiers:"
;;;  version:  April 1994

;; initiated 4/27/94 v2.3
;; 2.0 (5/30/13) added in new time units: hour, minute, second--added by Seth Dworman

(in-package :sparser)


(define-individual 'time-unit :name "day")
(define-individual 'time-unit :name "week")
(define-individual 'time-unit :name "month")
(define-individual 'time-unit :name "year")

;;new time units 
(define-individual 'time-unit :name "second")
(define-individual 'time-unit :name "minute")
(define-individual 'time-unit :name "hour")


