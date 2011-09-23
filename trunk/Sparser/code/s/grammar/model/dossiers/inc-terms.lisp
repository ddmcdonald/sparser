;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995,1996 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "kinds of companies"
;;;   Module:  "model;dossiers:"
;;;  version:  May 1993

;; initiated 5/26/93 v2.3, copying most words from companies;inc:inc cases
;; but with drastically different conceptualization.

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


;; 1/5/96
(define-incorporation-term "L.L.C.")

;; 1/17/96
(define-incorporation-term "L.P.")

;; 3/13/96
(define-incorporation-term "N.V.")

