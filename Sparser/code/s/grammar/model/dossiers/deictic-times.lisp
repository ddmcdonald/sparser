;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "deictic times"
;;;   Module:  "model;dossiers:"
;;;  version:  0.1 October 1993

;; initiated 7/8/93 v2.3.  Added another set 5/24/94.
;; 0.1 (10/19) promulgated the revised conceptalization

(in-package :sparser)


(define-individual 'relative-time-adverb :name "immediately")


(define-individual 'relative-time-noun :name "soon")


(define-individual 'calculated-time :name "now")
(define-individual 'calculated-time :name "then")

(define-individual 'calculated-day :name "today")
(define-individual 'calculated-day :name "tomorrow")
(define-individual 'calculated-day :name "yesterday")


