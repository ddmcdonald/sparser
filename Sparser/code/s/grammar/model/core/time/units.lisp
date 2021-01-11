;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1994,2011,2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "units"
;;;   Module:  "model;core:time:"
;;;  version:  April 2016

;; initiated 4/9/91 v1.8.2
;; redone in Krisp 12/92 v2.3, sharpened with rdata 9/18/93.
;; 0.1 (4/27/94) moved out the individuals to a dossier

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category time-unit
  :instantiates  self
  :specializes  unit-of-measure
  :binds ((name :primitive word)
          (from-start top)
          (within top)) ;; maybe perdurant?
  :index (:permanent :key name)
  :realization (:common-noun name
                :in within
                :into from-start
                :during within)) ;; "one month into lockdown"

;; dossier is time-units.lisp
