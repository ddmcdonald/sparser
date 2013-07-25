;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2000,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "years"
;;;   Module:  "model;core:time:"
;;;  version:  2.0 July 2013

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
;;      that a number is a year.

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
