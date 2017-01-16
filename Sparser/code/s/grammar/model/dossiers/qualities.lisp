;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "modifiers"
;;;    Module:   "model;dossiers:"
;;;   Version:   January 2017

;; Moved out of the definition files 1/11/17

(in-package :sparser)

;;--- color
(define-color "black") ;; all :+ by default
(define-color "white")
(define-color "red")
(define-color "yellow")
(define-color "blue")
(define-color "green")

;;--- size
(define-size "big" :dir :+)
(define-size "little" :dir :-)

(define-size "large" :dir :+)
(define-size "small" :dir :-)

;;--- height
(define-height "short" :dir :-)
(define-height "tall" :dir :+)

;;(define-height "high" :dir :+) ;; not quite the same thing
;;(define-height "low" :dir :-)
;;  separable task of coersing to a state

;;--- width
(define-width "narrow" :dir :-)
(define-width "wide" :dir :+)

;;--- length
(define-length "long" :dir :+)
(define-length "short" :dir :-)

;;--- amount
;;(define-amount "few" :dir :-)

;; more/less -- see quantifiers too
;; most/least
