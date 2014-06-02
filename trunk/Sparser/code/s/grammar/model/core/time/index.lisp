;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "index"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  May 2014

;; initiated 5/27/14 to hold and compute real calendar times
;; that can be referenced for the temporal indexicals in anaphors.

(in-package :sparser)


(defclass temporal-index ()
  ((year :accessor current-year
    :documentation "A year object")
   (month :accessor current-month
    :documentation "A month object")
   (day-of-month :accessor current-day
    :documentation "A number object")
   (day-of-week :accessor current-day-of-week
    :documentation "A weekday object")
   (date :accessor current-date
    :documentation "A date object")
   (dmydow :initarg :signature :accessor temporal-index-signature
    :documentation "A list of the day month year day-of-week
      integers returned from system time. Used for a fast
      find-or-make-calculation."))
  (:documentation "Holds Krisp objects for the current year,
    month, date, etc. Intended to have one basic instance
    that stands for the real today, i.e. load time. Should be
    instantiated for document-relative times. See the code
    in rules/content/. "))

(defmethod print-object (stream (index temporal-index))
  (let* ((dmydow (temporal-index-signature index))
         (day (first dmydow))
         (month (second dmydow))
         (year (third dmydow))) ;;/// need weekday lookup
    (print-unreadable-object (index stream :type t)
      (format stream "~a/~a/~a" month day year))))


(defun time-current-value (index category-name)
  ;; draft use case is relative-time-value, e.g. for 'next month'
  (case category-name
    (category::year (current-year index))
    (category::month (current-month index))
    (category::day (current-day index))
    (category::weekday (current-day-of-week index))
    (otherwise
     (push-debug `(,index ,category-name))
     (error "Unexpected category reference to temporal-index: ~a"
            category-name))))


(defvar *current-temporal-index* nil)
(defun current-temporal-index ()
  ;; hook for more interesting contextual handling
  ;; Should always be one because it's initialized by
  ;; the call to make-temporal-sequences during loading
  *current-temporal-index*)

(defun set-temporal-index (i)
  (setq *current-temporal-index* i))

(defun today ()
  (multiple-value-bind (date month year day-of-week)
                       ;; => 27 5 2014 1  (where Monday = 0)
                       (extract-d-m-y-dow-from-system-time)
    (let* ((signature (list date month year day-of-week))
           (current (current-temporal-index))
           (new? nil)
           (index 
            (if (and current
                     (equal (temporal-index-signature current)
                            signature))
              current
              (let ((new (make-instance 'temporal-index
                           :signature signature)))
                (set-temporal-index new)
                (setq new? t)
                new))))
      (if (null new?)
        (current-date index)
        (let* ((year-word (resolve/make (format nil "~a" year)))
               (iyear (find-individual 'year :name year-word))
               (imonth (call-nth-item month category::month))
               (iweekday (call-nth-item day-of-week category::weekday)))
          (setf (current-year index) iyear)
          (setf (current-month index) imonth)
          (setf (current-day index) date)
          (setf (current-day-of-week index) iweekday)
          (let ((date (define-or-find-individual'date
                        :day date
                        :month imonth
                        :year iyear
                        :weekday iweekday)))
            (setf (current-date index) date)
            date))))))




;;;----------------------------
;;; packaging system time data
;;;----------------------------

;; => 27 5 2014 1   Monday = 0
(defun extract-d-m-y-dow-from-system-time ()
  (multiple-value-bind (second minute hour
                        date month year day-of-week
                        daylight-savings-time-p time-zone)
      (get-decoded-time)
    (declare (ignore second minute hour
                     daylight-savings-time-p time-zone))
    #+ignore(when (= day-of-week 0)
      (format t "The number ~a does not identify any day of the week.~
               ~%Declaring it to be Monday" day-of-week)
      (setq day-of-week 2))
    (values date month year day-of-week)))

