;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "time of day"
;;;   Module:  "model;dossiers:"
;;;  version:  September 2013
;;;   author:  Charlie Greenbacker 8/08, completely revised by ddm 9/13

;; initiated 8/26/08. 9/23/13 Total makeover since there are no referents
;; behind the rules. Commenting out the clock time for the moment

;;; rules for identifying instances of time-of-day

(in-package :sparser)

;;;-----------------------
;;; based on ISO 8601 standard numeric representations
;;;-----------------------
#|
; example: 23:59:59 or 23:59:59.9942
; should be restricted to (0-23):(0-59):(0-60).(0-999999...)
(def-cfr numeric-time (number colon numeric-time))

; example: 23:59
; should be restricted to (0-23):(0-59)
(def-cfr numeric-time (number colon number))

; also need 235959, 23:59, 2359, 23, 235959.9942, and perhaps 19951231T235959

;;;-----------------------
;;; old English 12h notation
;;;-----------------------

; should be restricted to (1-12):(0-59):(0-60) for consistency
(def-cfr numeric-time (numeric-time "am")) ;conflicts with verb 'to be'?
(def-cfr numeric-time (numeric-time "a.m."))
(def-cfr numeric-time (numeric-time "pm"))
(def-cfr numeric-time (numeric-time "p.m."))

; should be restricted to (1-12)
(def-cfr numeric-time (number "o'clock"))
(def-cfr numeric-time (number "o'clock am")) ;conflicts with verb 'to be'?
(def-cfr numeric-time (number "o'clock a.m."))
(def-cfr numeric-time (number "o'clock pm"))
(def-cfr numeric-time (number "o'clock p.m."))

;;;-----------------------
;;; adding timezones
;;;-----------------------

(def-cfr numeric-time (numeric-time timezone))
(def-cfr numeric-time (numeric-time "z")) ;conflicts with 'SINGLE-CAPITALIZED-LETTER'?
; also need rule w/function to match 4-digit number from 0000-2359 plus 'z'
|#
;;;-----------------------
;;; time of day
;;;-----------------------

(define-meal-time "breakfast")
(define-meal-time "brunch")
(define-meal-time "lunch")
(define-meal-time "supper")
(define-meal-time "dinner")
;; (def-cfr time-of-day (sequencer meal-time))

(define-time-of-day "noon")
(define-time-of-day "midnight")
(define-time-of-day "midnite")
;(def-cfr time-of-day (sequencer "noon"))

(define-time-of-day "dawn")
(define-time-of-day "dusk")


(define-phase-of-day "morning")
(define-phase-of-day "afternoon")
(define-phase-of-day "evening")
(define-phase-of-day "night")

;; These are much more general
#|
(def-cfr phase-offset ("early"))
(def-cfr phase-offset ("mid"))
(def-cfr phase-offset ("late"))  |#

;; (def-cfr time-of-day (phase-offset phase-of-day))

; maybe add UNIX time as well? would have to combine with date rules...
