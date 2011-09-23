;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "financial data items"
;;;   Module:  "model;dossiers:"
;;;  version:  April 2005

;; Tweaked by hand 7/20/98 to correct literal clippings of verbs sampled
;; in conjugated circumstances, e.g. "totaled" -> "total". 7/28 commented
;; out "post" because I hadn't gotten to announcements yet, the comparatives
;; neither. 4/10/03 Renamed the def-routine for the "financials" to fit the
;; wording change that happened in the interim.  2/10/05 Brought the qualifiers
;; back up. 4/1 brought 'total' back up.

(in-package :sparser)


;;--- financials 

;; 12/26/95
(define-financial "earnings")

;; 1/2/96
(define-financial "income")

;; 12/26/95
(define-financial "profit")

;; 1/2/96
(define-financial "profit margin")

;; 1/3/96
(define-financial "results")

;; 12/26/95
(define-financial "revenue")

;; 12/26/95
(define-financial "sales")



;;--- datum qualifiers

;; 1/2/96
(define-financial-datum-qualifier "unit")

;; 1/2/96
(define-financial-datum-qualifier "volume")

;; 12/26/95
(define-financial-datum-qualifier "net")

;; 1/2/96
(define-financial-datum-qualifier "operating")

;; 1/2/96
(define-financial-datum-qualifier "investment")



;;--- verbs

;; 12/26/95
;;;(define-financial-datum-ANNOUNCEMENT-VERB "post")

;; 12/26/95
(define-financial-datum-value-verb "total")



;;------- randomness

;(define-hack-comparative-marker "last year") ;; Echlin
;(define-hack-comparative-marker "compared to")  
;(define-hack-comparative-marker "over")
