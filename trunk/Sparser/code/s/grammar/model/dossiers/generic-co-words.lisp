;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "generic co words"
;;;   Module:  "model;dossiers:"
;;;  version:  February 2005

;; initiated 10/29/93 v2.3. Reoriented in what it should hold 1/20/94
;; 2/14/05 Added "partners" by hand

(in-package :sparser)


(define-generic-company-word  "business")
(define-generic-company-word  "concern")
(define-generic-company-word  "company" :abbrev '("co" "cos"))
(define-generic-company-word  "corporation" :abbrev '("corp"))

(define-generic-company-word  "organization")
(define-generic-company-word  "organisation")

;; 9/13
(define-generic-company-word "systems")

(define-generic-company-word "partners")

;; 1/1/96
(define-generic-company-word "corp")
 ;; n.b. This should be handled by some kind of default on the
 ;; treatment of abbreviations. Added here because it presented
 ;; without its period: "Devtek Corp" (in a KF press release)

