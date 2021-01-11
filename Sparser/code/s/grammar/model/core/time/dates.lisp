;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2012-2014,2017-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "dates"
;;;   Module:  "model;core:time:"
;;;  version:  February 2018

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
  :mixins (cyclic)
  :index (:permanent :sequential-keys month day year)
  ;; replaced by DATE-OF
  ;;:realization (:common-noun "date")
  )


(define-category-princ-fn date ;; => princ-date
  (let ((day (value-of 'day i))
        (month (value-of 'month i))
        (year (value-of 'year i)))
    (format stream "#<~a/~a/~a>"
            (as-a-number month) day (as-a-number year))))


;;;-------------
;;; constructor
;;;-------------

(def-k-function construct-date (day month year day-of-week)
  (:method ((day integer) (m integer) (y integer) (dow integer))
    (assert (and (< day 32) (< m 13) (< dow 8)))
    (let ((month (nth-item (1- m) category::month))
          (year (get-year y))
          (weekday (nth-item dow category::weekday)))
      (construct-date day month year weekday)))
  (:method ((day integer) (month category::month)
            (year category::year) (dow category::weekday))
    (define-or-find-individual 'date
        :day day
        :month month
        :year year
        :weekday dow)))


;;;---------------------
;;; next/previous dates
;;;---------------------

(def-k-method next-item ((date category::date))
  ;; What date follows the argument date. Wraps as needed.
  ;; Caches its result
  (or (value-of 'next date)
      (with-bindings (day month year weekday) date
        (let* ((day* (1+ day))
               (month* (if (date-is-in-month day* month)
                         month
                         (next-item month)))
               (year* (if (last-of month) ;; i.e. December
                        (next-item year)
                        year))
               (dow* (next-item weekday)))
          (when (not (eq month month*))
            (setq day* 1))
          (let ((next-date
                 (construct-date day* month* year* dow*)))
            (old-bind-variable 'previous date next-date)
            (old-bind-variable 'next next-date date)
            next-date)))))

(def-k-method prior-item ((date category::date))
  (or (value-of 'previous date)
      (with-bindings (day month year weekday) date
        (let* ((day* (1- day))

               (month* (if (date-is-in-month day* month)
                         month
                         (prior-item month)))
               (year* (if (first-of month) ;; i.e. January
                        (prior-item year)
                        year))
               (dow* (prior-item weekday)))
          (when (not (eq month month*))
            (setq day (value-of 'value (value-of 'number-of-days month*))))
          (let ((prior-date
                 (construct-date day* month* year* dow*)))
            (old-bind-variable 'previous prior-date date)
            (old-bind-variable 'next date prior-date)
            prior-date)))))


;;;----------------
;;; assembly rules
;;;----------------

(def-k-function compose-date (left right)
  (:documentation "Used for composition in time rules. 
    Find or make a date from the teo time units.")
  (:method ((dom category::day-of-the-month) (y category::year))
    (with-bindings (month number) dom
      (when (itypep number 'number) ;; use Lisp number
        (setq number (value-of 'value number)))
      (let ((i (define-or-find-individual 'date
                   :month month :day number :year y)))
        i)))
  (:method ((w category::weekday) (d category::date))
    (bind-variable 'weekday w d)))


(defun assemble-date (left right)
  "Easiest to organize as a set of methods. This is the driver.
   Since this is driven by a semantic grammar we trust that
   if we get here we can apply the methods."
  (or *subcat-test*
      (let ((result (compose-date left right)))
        (unless result (error "Need make-date method for a ~a and a ~a"
                              (itype-of left) (itypep-of right)))
        result)))

(def-cfr date (day-of-the-month year) ;; "June 26 2010"
  :form np
  :referent (:function assemble-date left-edge right-edge))

(def-cfr date (day-of-the-month comma-year) ;; "June 26, 2010"
  :form np
  :referent (:function assemble-date left-edge right-edge))


(def-cfr date (weekday date) ;; "Tuesday June 26 2010"
  :form np
  :referent (:function assemble-date left-edge right-edge))


(def-cfr date (weekday day-of-the-month) ;; "Tuesday June 26"
  :form np
  :referent (:function assemble-date left-edge right-edge))

