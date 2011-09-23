;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1989,1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "time"
;;;   Module:  "tools;basics:"
;;;  Version:  May 1995

;; initiated 11/89, substantially hacked 10/91
;; 9/8/93 v2.3 added Month-day.  3/29/95 included check against
;; Time-as.. having been loaded already.  5/1 added month-day-year

(in-package :sparser)


;; Date-as-formatted-string (&optional time)
;; Time-as-formatted-string (&key
;;                              ((:dot dot-instead-of-colon) nil))
;; Date-&-time-as-formatted-string (&key
;;                                  ((:dot dot-instead-of-colon)
;;                                    nil))

;;;-----------------------
;;;     components
;;;-----------------------

(unless (fboundp 'Date-as-formatted-string)
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



(unless (fboundp 'Time-as-formatted-string)
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
                                        ((:dot dot-instead-of-colon)
                                         nil))
  (format nil "~A ~A"
          (date-as-formatted-string)
          (time-as-formatted-string :dot dot-instead-of-colon)))


(defun day-&-month-as-formatted-string ()
  (multiple-value-bind (month day)
                       (month-day)
    (format nil "~A/~A" month day)))


(defun day-month-&-year-as-formatted-string ()
  (multiple-value-bind (month day year)
                       (month-day-year)
    (format nil "~A/~A/~A" month day year)))
