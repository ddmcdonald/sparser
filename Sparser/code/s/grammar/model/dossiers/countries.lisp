;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "countries"
;;;   Module:  "model;dossiers:"
;;;  version:  0.1 May 2010

;; 0.1 (10/12/92 v2.1) introducing new semantics
;;     (9/7 v2.3) revived the existing set of cases
;;     (10/29) added Hong Kong  (9/26/94) added Holland  (5/3/95) "United Kingdom"
;;     (7/16/07) "France". (5/22/10) "Hati"

(in-package :sparser)

(define-country "Australia" :adjective "Australian")

(define-country "Britain" :adjective "British"
  :aliases '("U.K." "United Kingdom" "England" "Great Britain"))

(define-country "Canada"  :adjective "Canadian")

(define-country "France" :adjective "french")

(define-country "Germany" :adjective "german")

(define-country "the Netherlands"
                :adjective "Dutch"
                :aliases '("Holland"))

(define-country "Hati" :adjective "Haitian")    

(define-country "Hong Kong" )

(define-country "India"   :adjective "Indian")

(define-country "Iraq"   :adjective "Iraqi")

(define-country "Japan"   :adjective "Japanese")

(define-country "Kenya"   :adjective "Kenyian")

(define-country "Sweden"  :adjective "Swedish")

(define-country "United States"  :adjective "American"
                :aliases '("US" "U.S." ;;"U.S.A."
                           "America"
                            ))

