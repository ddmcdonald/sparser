;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014,2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "sequences"
;;;   Module:  grammar/model/core/time/
;;;  version:  February 2018

;; initiated 5/25/14 to create real sequences out of months, years,
;; days, etc. 12/30/14 Fanout from binding restriction. 

(in-package :sparser)

;;;-----------------
;;; toplevel driver
;;;-----------------

(defun make-temporal-sequences ()
  "Called directly from load-the-grammar after everything it needs
   has been loaded. Sets up relationships between particular time 
   objects and calls today to initialize the temporal-index."
  (let ((*legal-to-add-bindings-to-categories* t))
    (declare (special *legal-to-add-bindings-to-categories*))
    (make-months-sequence)
    (make-weekdays-sequence)
    (make-seasons-sequence)
    (today))) ;; makes a temporal-index


;;;--------
;;; months
;;;--------

(defparameter *month-names*
  '("January" "February" "March" "April" "May"
    "June" "July" "August" "September"
    "October" "November" "December")
  "This might be useful in something else, so not 
   burying it inline in the call")

(defun make-months-sequence ()
  (let* ((the-months
          (mapcar #'(lambda (string) (get-month string))
                  *month-names*))
         (sequence (create-sequence the-months)))
    (old-bind-variable 'sequence sequence category::month)
    (old-bind-variable 'cycle-length 12 category::month)
    (thread-sequence sequence)))


;;;----------
;;; weekdays
;;;----------

(defparameter *weekday-names*
  '("Monday" "Tuesday" "Wednesday" "Thursday"
    "Friday" "Saturday" "Sunday")
  "Starts with Monday because that's how get-decoded-time
   thinks of weekdays")

(defun make-weekdays-sequence ()
  (let* ((the-weekdays
          (mapcar #'(lambda (string) (get-weekday string))
                  *weekday-names*))
         (sequence (create-sequence the-weekdays)))
    (old-bind-variable 'sequence sequence category::weekday)
    (old-bind-variable 'cycle-length 7 category::weekday)
    (thread-sequence sequence)))


;;;------------------
;;; printing utility
;;;------------------

(def-k-function as-a-number (time-unit)
  (:documentation "Motivated by the slash format for dates.
    Return the sequence number for the individual.")
  (:method ((y category::year))
    (word-pname (value-of 'name y)))
  (:method ((m category::month))
    (value-of 'value (value-of 'number (value-of 'position-in-year m))))
  (:method ((n NULL))
    ;; this case came up in printing the bound-in bindings of a month
    nil))

