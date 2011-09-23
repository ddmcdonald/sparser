;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "compass points"
;;;   Module:  "model;dossiers:"
;;;  version:  September 2007

;; initiated in 1/9/95. Added more cases 9/5/07

(in-package :sparser)

;; n.b. define-compass-point adds an adjective form with the "ern" suffix
;; in the non-ward cases

(define-compass-point "north")
(define-compass-point "south")
(define-compass-point "east")
(define-compass-point "west")

(define-compass-point "northeast")
(define-compass-point "southeast")

(define-compass-point "northwest")
(define-compass-point "southwest")

(define-compass-point "northward" :ward)
(define-compass-point "southward" :ward)
(define-compass-point "eastward" :ward)
(define-compass-point "westward" :ward)


