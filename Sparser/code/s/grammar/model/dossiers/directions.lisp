;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995-1999,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "directions"
;;;   Module:  "model;dossiers:"
;;;  version:  September 2011

;; Functions defined in model/core/places/directions.
;; initiated in 1/9/95. 11/25/99 reanalyzed the prepositional directions as
;; spatial prepositions and moved them to that file. 9/5/07 Replaced 'adjectival'
;; with 'ward', added cases. 9/5/11 Added up/downhill.

(in-package :sparser)


;; take "the"

(define-standalone-direction "left")
(define-standalone-direction "right")

(define-standalone-direction "up")
(define-standalone-direction "down")

(define-standalone-direction "front")
(define-standalone-direction "back")

(define-standalone-direction "rear")


;; stand by themselves
;; do the 's' forms as well?  They're marked in Longmans as British

(define-ward-direction "leftward")
(define-ward-direction "rightward")

(define-ward-direction "upward")
(define-ward-direction "downward")

(define-ward-direction "uphill")
(define-ward-direction "downhill")

(define-ward-direction "inward")
(define-ward-direction "outward")

(define-ward-direction "forward")
(define-ward-direction "backward")



