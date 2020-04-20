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
(define-named-individual-with-synonyms time-unit ("week" "wk"))
(define-individual 'time-unit :name "month")
(define-individual 'time-unit :name "year")

;;new time units
(define-named-individual-with-synonyms time-unit ("minute" "min"))
(define-named-individual-with-synonyms time-unit ("hour" "hr" "h"))
(define-named-individual-with-synonyms time-unit ("second" "sec" "s"))
(def-indiv-with-id time-unit "microsecond" "UO:0000029" :name "microsecond" :synonyms ("μs"))
(def-indiv-with-id time-unit "nanosecond" "UO:0000150" :name "nanosecond" :synonyms ("ns"))



