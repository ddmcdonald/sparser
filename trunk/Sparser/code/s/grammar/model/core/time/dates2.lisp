;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2012 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "dates"
;;;   Module:  "model;core:time:"
;;;  version:  2.0 May 2012

;; 1.0 (12/15/92 v2.3) setting up for new semantics
;; 1.1 (9/18/93) actually doing it
;; 1.2 (9/13/95) redoing the rules as binaries to get around bug in
;;      the referent calcuation for final dotted cfrs.
;;     (1/2/96) added other weekday+date rule
;; 2.0 (9/27/99) Started completely reworking the design to take advantage
;;      of psi.  (3/11/05) Added CA check for stranded years.
;;     (5/14/12) Added "date" to supply an empty head in, e.g. "today's date"
;;     (6/6/13)  Added two new cfrs to capture longer dates like "Monday, June 26, 2010"
;;     (6/11/13) Removed cfrs and moved to rules-over-referents.lisp (in grammar;kinds)

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category date
  :specializes time
  :instantiates time
  :binds ((day  :primitive number)
          (month . month)
          (year . year)
          (weekday . weekday)
          ;;added in time, for phrases like "Monday, June 26, 2010"
          (time . time))
  :realization (:tree-family  date-pattern
                :mapping ((type . :self)
                          (np . :self)
                          (n1 . month)
                          (term1 . month)
                          (n2 . number)
                          (term2 . day)
                          (n3 . year)
                          (term3 . year)
                          (n4 . weekday)
                          (term4 . weekday))
                :common-noun "date"))






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

(set-ca-action category::comma-year 'check-for-stranded-date)

(defun check-for-stranded-date (comma-year-edge)
  (let* ((position (pos-edge-starts-at comma-year-edge))
         (ev (pos-ends-here position))
         (date-edge (vector-contains-edge-of-category ev category::date)))
    (when date-edge
      (let ((rule (multiply-edges date-edge comma-year-edge)))
        (when rule
          (make-edge-below-top-edge date-edge comma-year-edge rule))))))

