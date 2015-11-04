;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1994,2011  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "units"
;;;   Module:  "model;core:time:"
;;;  version:  0.1 April 1994

;; initiated 4/9/91 v1.8.2
;; redone in Krisp 12/92 v2.3, sharpened with rdata 9/18/93.
;; 0.1 (4/27/94) moved out the individuals to a dossier

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category time-unit
  :instantiates  self
  :specializes  nil
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))


