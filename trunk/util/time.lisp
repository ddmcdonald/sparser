;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1989-1995,2011-2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "time"
;;;   Module:  /Sparser/util/
;;;  Version:  March 2013

;; initiated 11/89, substantially hacked 10/91
;; 9/8/93 v2.3 added Month-day.  3/29/95 included check against
;; Time-as.. having been loaded already.  5/1 added month-day-year
;; (3/9/11) Reworked to fit in ddm-util. 8/7/12 minor tweaks, updates. 
;; 3/30/13 fixed call to time in date-&-time-as-formatted-string

(in-package :ddm-util)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (export '(decoded-to-encoded-time
            date-as-formatted-string
            time-as-formatted-string
            month-day
            month-day-year
            date-&-time-as-formatted-string
            day-&-month-as-formatted-string
            day-month-&-year-as-formatted-string
            write-time-readably)))


;; Date-as-formatted-string (&optional time)
;; Time-as-formatted-string (&key
;;                              ((:dot dot-instead-of-colon) nil))
;; Date-&-time-as-formatted-string (&key
;;                                  ((:dot dot-instead-of-colon)
;;                                    nil))


;; (month-day-year (decoded-to-encoded-time :month 11 :day 30 :year 2010))
(defun decoded-to-encoded-time (&key second minute hour
                                day month year day-of-week
                                daylight-savings-time-p time-zone)
  (encode-universal-time (or second 0)
                         (or minute 0)
                         (or hour 0)
                         (or day 1)
                         (or month 1)
                         (or year 2012)
                         (or day-of-week 0) ;; Monday
                         (or daylight-savings-time-p t)
                         (or time-zone 5))) ;; Boston

;;;-----------------------
;;;     components
;;;-----------------------

(unless (fboundp 'date-as-formatted-string)
  ;; it might have been already loaded with LLoad

  (defun date-as-formatted-string (&optional time)
    (multiple-value-bind (second minute hour
                          date month year day-of-week
                          daylight-savings-time-p time-zone)
                         (if time
                           (decode-universal-time time)
                           (get-decoded-time))

      (declare (ignore second minute hour
                       day-of-week daylight-savings-time-p
                       time-zone))

      (let ((year-abbrev (mod year 100)))
        (format nil "~A/~A/~A" month date year-abbrev)))))



(unless (fboundp 'time-as-formatted-string)
  ;; it might have been already loaded with LLoad
  
  (defun time-as-formatted-string (&optional time
                                   &key ((:dot dot-instead-of-colon)
                                         nil))
    (multiple-value-bind (second minute hour
                          date month year day-of-week
                          daylight-savings-time-p time-zone)
                         (if time
                           (decode-universal-time time)
                           (get-decoded-time))
      
      (declare (ignore date month year day-of-week
                       daylight-savings-time-p time-zone))
      
      (if dot-instead-of-colon
        (format nil "~A.~A.~A" hour minute second)
        (format nil "~A:~A:~A" hour minute second)))))



(defun month-day ()
  (multiple-value-bind (second minute hour
                        date month year day-of-week
                        daylight-savings-time-p time-zone)
                       (get-decoded-time)

      (declare (ignore second minute hour year
                       day-of-week daylight-savings-time-p
                       time-zone))

      (values month date)))

(defun month-day-year ()
  (multiple-value-bind (second minute hour
                        date month year day-of-week
                        daylight-savings-time-p time-zone)
                       (get-decoded-time)

      (declare (ignore second minute hour
                       day-of-week daylight-savings-time-p
                       time-zone))

      (values month date year)))



;;;-----------------------
;;;     output
;;;-----------------------

(defun date-&-time-as-formatted-string (&key
                                        ((:dot dot-instead-of-colon) nil))
  (format nil "~A ~A"
          (date-as-formatted-string)
          (time-as-formatted-string nil :dot dot-instead-of-colon)))


(defun day-&-month-as-formatted-string ()
  (multiple-value-bind (month day)
                       (month-day)
    (format nil "~A/~A" month day)))


(defun day-month-&-year-as-formatted-string ()
  (multiple-value-bind (month day year)
                       (month-day-year)
    (format nil "~A/~A/~A" month day year)))


;; from LKB
(defun write-time-readably (&optional stream)
  (multiple-value-bind
      (sec min hour date month year)
      (get-decoded-time)
    (format (or stream t) "~%~A:~A:~A ~A ~A ~A~%" hour min sec date 
            (ecase month
              (1 "Jan") (2 "Feb") (3 "Mar") (4 "Apr") (5 "May") 
              (6 "Jun") (7 "Jul") (8 "Aug") (9 "Sep") (10 "Oct")
              (11 "Nov") (12 "Dec"))
            year)))

