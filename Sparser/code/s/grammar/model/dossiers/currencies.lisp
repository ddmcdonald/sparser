;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "currencies"
;;;   Module:  "grammar;model:dossiers:"
;;;  version:  October 1993

;; initiated 10/22/93 v2.3 from treatment of 11/91

(in-package :sparser)


(define-individual 'currency  :denomination "dollar"
                              :country "United States" )

(define-individual 'currency  :denomination "dollar"
                              :country "Australia" )


(define-individual 'currency  :denomination "pound"
                              :country "Britain" )

(define-individual 'currency  :denomination "pence"
                              :country "Britain" )

