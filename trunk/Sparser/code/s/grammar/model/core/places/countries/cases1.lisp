;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "cases"
;;;   Module:  "model;core:names:places:countries:"
;;;  version:  1.0 September 1993

;; initiated in December 1990, v1.6
;; 1.0 (10/12/92 v2.1) introducing new semantics
;;     (9/7 v2.3) revived the existing set of cases

(in-package :sparser)


(define-country "Britian" :adjective "British")

(define-country "Canada"  :adjective "Canadian")

(define-country "Germany" :adjective "German")

(define-country "India"   :adjective "Indian")

(define-country "Japan"   :adjective "Japanese")

(define-country "Kenya"   :adjective "Kenyian")

(define-country "Sweden"  :adjective "Swedish")

(define-country "United States"
                :aliases '("US" "U.S." "U.S.A."
                           "America"
                            ))

