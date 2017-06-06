;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "deictic times"
;;;   Module:  "model;dossiers:"
;;;  version:  June 2017

;; initiated 7/8/93 v2.3.  Added another set 5/24/94.
;; 0.1 (10/19) promulgated the revised conceptalization

(in-package :sparser)



(define-calulated-time "now")
;;(define-individual 'calculated-time :name "then") too many "then"s

(define-calculated-day "today" 'today)
(define-individual 'calculated-day :name "tomorrow")
(define-individual 'calculated-day :name "yesterday")


