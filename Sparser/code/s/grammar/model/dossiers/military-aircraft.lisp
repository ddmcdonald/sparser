;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2022-2023 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "military-aircraft"
;;;   Module:  "model/dossiers/
;;;  version:  October 2023

;; initiated 7/10/22 for NGA prototyping

(in-package :sparser)

;; names
(define-aircraft-designator "MiG-15")
(define-aircraft-designator "MiG-17")
(define-aircraft-designator "MiG-21")
(define-aircraft-designator "MiG-29")
(define-aircraft-designator "Su-25")
(define-aircraft-designator "Il-28")
(define-aircraft-designator "Hughes 500")
(define-aircraft-designator "Mi-2 Hoplite")
(define-aircraft-designator "Mi-8")
(define-aircraft-designator "Mi-14")
(define-aircraft-designator "An-2 Colt")


;; kinds
(define-kind-of-aircraft "fighter")
(define-kind-of-aircraft "close support")
(define-kind-of-aircraft "bomber")
(define-kind-of-aircraft "transport")
#|(define-kind-of-aircraft "")
(define-kind-of-aircraft "")
(define-kind-of-aircraft "") |#

#|  Redesign to adapt general scale to this function
;; attributes
(define-aircraft-property "small")
(define-aircraft-property "medium")
(define-aircraft-property "light")
;;(define-aircraft-property "")
|#
