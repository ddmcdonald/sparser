;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "kinds of companies"
;;;   Module:  "model;dossiers:"
;;;  version:  March 2013

;; initiated 5/26/93 v2.3, copying most words from companies;inc:inc cases
;; but with drastically different conceptualization. Added S.P.A. 3/8/13

(in-package :sparser)


(define-individual 'inc-term  :name "ag")

(define-individual 'inc-term  :name "bv")

(define-individual 'inc-term  :name "g.m.b.h.")

(define-individual 'inc-term  :name "incorporated")
(define-abbreviation "incorporated" "inc")

(define-individual 'inc-term  :name "ixl")

(define-individual 'inc-term  :name "limited")
(define-abbreviation "limited" "ltd")

(define-individual 'inc-term  :name "l.p.")  ;; "limited partnership"

(define-individual 'inc-term  :name "n.a.")

(define-individual 'inc-term  :name "plc")

(define-individual 'inc-term  :name "pt")

(define-individual 'inc-term  :name "s.a.")

(define-individual 'inc-term  :name "s.p.a.")


;; 1/5/96
(define-incorporation-term "L.L.C.")

;; 1/17/96
(define-incorporation-term "L.P.")

;; 3/13/96
(define-incorporation-term "N.V.")

