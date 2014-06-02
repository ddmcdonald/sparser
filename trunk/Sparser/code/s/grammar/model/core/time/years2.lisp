;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2000,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "years"
;;;   Module:  "model;core:time:"
;;;  version:  2.2 May 2014

;; initiated in February 1991
;; 0.1 (4/9 v1.8.2)  Added the years from 1959 to 1979
;; 0.2 (7/31 v1.8.6)  Gave years "month" fields to facilitate real indexing
;; 1.0 (12/15/92 v2.3) setting up for new semantics
;; 1.1 (9/18/93) actually doing it.   10/20/94 breaking out the cases.
;; 2.0 (7/9/00) Reworked as psi.
;; 2.1 (8/20/08) shifting from proper to common noun because proper noun introduces
;;      a leading ].proper-noun, which seems like overkill. Also rewriting the
;;      category to go to self instead of time.
;; 2.2 (7/25/13) Added csr and function for one case of contextually establishing
;;      that a number is a year. 5/26/14 Moved comma-year here from dates2

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category year
  :specializes time
  :instantiates self
  :binds ((name  :primitive word)
          (year-of-century :primitive number))
  :realization (:common-noun name)) ;; strands the 2 digit version!


;;;---------------
;;; defining form
;;;---------------

(defun define-year (string integer)
  (let ((word (define-word string))
        year )

    (unless (setq year (find-individual 'year :name word))
      (setq year (define-individual 'year
                   :name word
                   :year-of-century integer)))
    year ))


;;;---------------------------
;;; making years from context
;;;---------------------------

;;csr for year from javan-online.text
;;captures instances of "the year 90"
;;this works, but has no referent.  
(def-csr number year
  :left-context time-unit
  :form np
  ;; n.b. context-sensitive rules are effectively binary,
  ;; so the number will be  under the right-edge
  :referent (:function make-year-from-constituent right-edge))

(defun make-year-from-constituent (number)
  (let ((string (string/number number))
        (integer (number-value number)))
    (define-year string integer)))



;;;---------------
;;; stranded year
;;;---------------

; In the standard pattern for dates, "June 26, 2004", the comma will
; terminate the segment. If there's more in the segment than just the
; month-day combination (e.g. "for [its fiscal 2004 third quarter
; ended June 26, 2004"), then the date edge of the date->date comma-year
; rule will be covered before the comma-year can see it. 
; So we look under the hood of the edge-vector and extend the date
; edge if we find one.   ////Consider whether this should be a standard
; check within pts.

;;/// This category would have come from the all-in-one date model
;; but trying the old month+day month+year conception of dates
;; so it's not loaded (5/27/14)
(def-cfr comma-year ("," year)
  :form apposative
  :referent (:daughter right-edge))

(set-ca-action category::comma-year 'check-for-stranded-date)

(defun check-for-stranded-date (comma-year-edge)
  (let* ((position (pos-edge-starts-at comma-year-edge))
         (ev (pos-ends-here position))
         (date-edge (vector-contains-edge-of-category ev category::date)))
    (when date-edge
      (let ((rule (multiply-edges date-edge comma-year-edge)))
        (when rule
          (make-edge-below-top-edge date-edge comma-year-edge rule))))))

