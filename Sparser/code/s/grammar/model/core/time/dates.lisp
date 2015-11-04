;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2012-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "dates"
;;;   Module:  "model;core:time:"
;;;  version:  2.1 May 2014

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
;; 2.1 (5/27/14) Flushed the all-in-one realization in favor of the original
;;      day-in-month, month-in-year, weekday arrangement, which is easier to
;;      organize and map to real calendar time, which this now represents.

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
          (weekday . weekday))
  :index (:permanent :sequential-keys month day year)
  :realization (:common-noun "date"))

#|  The all-in-one realization, which is harder to index
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
                          (term4 . weekday)))
|#                




