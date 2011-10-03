;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "compass points"
;;;   Module:  "model;dossiers:"
;;;  version:  October 2011

;; initiated in 1/9/95. Added more cases 9/5/07

(in-package :sparser)

;; n.b. define-compass-point adds an adjective form with the "ern" suffix
;; in the non-ward cases. Added abbreviations 10/3/11

(define-compass-point "north" "N")
(define-compass-point "south" "S")
(define-compass-point "east"  "E")
(define-compass-point "west"  "W")

(define-compass-point "northeast" "NE")
(define-compass-point "southeast" "SE")

(define-compass-point "northwest" "NW")
(define-compass-point "southwest" "SW")

(define-compass-point "northward" nil :ward)
(define-compass-point "southward" nil :ward)
(define-compass-point "eastward" nil :ward)
(define-compass-point "westward" nil :ward)


