;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2000,2013-2019 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "years"
;;;   Module:  "model;core:time:"
;;;  version:  March 2019

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
  :mixins (takes-numerical-value sequential)
  :binds ((year-of-century :primitive number))
  :index (:permanent :key name :get)
  :realization (:common-noun name)) ;; strands the 2 digit version!


;;;---------------
;;; defining form
;;;---------------

(defun define-year (string integer)  ;; e.g. "2015" & 15
  (let ((number (find-or-make-number string)))
    (or (find-individual 'year :name string)
        (define-individual 'year
            :name string
            :value (value-of 'value number)
            :year-of-century integer))))


;;;-----------
;;; functions
;;;-----------

(defun get-year (name)
  (if *description-lattice*
    (let ((word
           (etypecase name
             (string (resolve/make name))
             (number
              (resolve/make (format nil "~a" name)))
             (word name))))     
      (get-by-name category::year word))
    (find-individual 'year :name name)))


(def-k-method next-item ((year category::year))
  (or (value-of 'next year)
      (with-bindings (value) year
        (let* ((value* (1+ value))
               (next-year (or (get-year value*)
                              (define-individual 'year
                                  :name (format nil "~a" value*)
                                  :value value*))))
          (old-bind-variable 'previous next-year year)
          (old-bind-variable 'next next-year year)
          next-year))))

(def-k-method prior-item ((year category::year))
  (or (value-of 'previous year)
      (with-bindings (value) year
        (let* ((value* (1- value))
               (prior-year (or (get-year value*)
                              (define-individual 'year
                                  :name (format nil "~a" value*)
                                  :value value*))))
          (old-bind-variable 'previous prior-year year)
          (old-bind-variable 'next prior-year year)
          prior-year))))


;;;---------------------------
;;; making years from context
;;;---------------------------

;; csr for year from javan-online.text
;; captures instances of "the year 90"

(def-csr number year
  :left-context time-unit
  :form np
  ;; n.b. context-sensitive rules are effectively binary,
  ;; so the number will be  under the right-edge
  :referent (:function make-year-from-constituent left-edge right-edge))

(defun make-year-from-constituent (time-unit number)
  (declare (special *subcat-test*))
  (cond
    (*subcat-test* ;; rule out "second" and such
     (itypep time-unit 'year))
    (t
     (let ((string (string/number number)))
       (when string 
         (define-year string (number-value number)))))))


;;;---------------
;;; stranded year
;;;---------------

; In the standard pattern for dates, "June 26, 2004", the comma will
; terminate the segment. If there's more in the segment than just the
; month-day combination (e.g. "for [its fiscal 2004 third quarter
; ended June 26], 2004"), then the date edge of the date->date comma-year
; rule will be covered before the comma-year can see it. 
; So we look under the hood of the edge-vector and extend the date
; edge if we find one.   ////Consider whether this should be a standard
; check within pts.

(def-cfr comma-year ("," year)
  :form appositive
  :referent (:daughter right-edge))

(set-ca-action category::comma-year 'check-for-stranded-date)

(defun check-for-stranded-date (comma-year-edge)
  (declare (special category::date))
  (let* ((position (pos-edge-starts-at comma-year-edge))
         (ev (pos-ends-here position))
         (date-edge (vector-contains-edge-of-category ev category::date)))
    (when date-edge
      (let ((rule (multiply-edges date-edge comma-year-edge)))
        (when rule
          (make-edge-below-top-edge date-edge comma-year-edge rule))))))
