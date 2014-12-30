;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "sequences"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  December 2014

;; initiated 5/25/14 to create real sequences out of months, years,
;; days, etc. 12/30/14 Fanout from binding restriction. 

(in-package :sparser)

;;;-----------------
;;; toplevel driver
;;;-----------------

(defun make-temporal-sequences ()
  (let ((*legal-to-add-bindings-to-categories* t))
    (declare (special *legal-to-add-bindings-to-categories*))
    (make-months-sequence)
    (make-weekdays-sequence)
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
          (mapcar #'(lambda (string)
                      (find-individual 'month 'name string))
                  *month-names*))
         (sequence (create-sequence the-months)))
    (bind-variable 'sequence sequence category::month)
    (bind-variable 'cycle-length 12 category::month)))

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
          (mapcar #'(lambda (string)
                      (find-individual 'weekday :name string))
                  *weekday-names*))
         (sequence (create-sequence the-weekdays)))
    (bind-variable 'sequence sequence category::weekday)))



;;;------------------------------------------
;;; Computing position is temporal sequences
;;;------------------------------------------

(defun relative-time-value (category before/after)
  ;; The day after today -- the unit after current
  ;; or before, or two days before, ...
  ;; The index unit always matches the category of the unit
  (let* ((index (current-temporal-index))
         (sequence ;; caller knows it's sequential
          (value-of 'sequence category))
         (cycle-length (when (category-inherits-type? 
                              category category::cyclic)
                         (value-of 'cycle-length category)))
         (category-name (cat-symbol category))
         (reference
          (time-current-value index category-name)))
    (push-debug `(,index ,before/after ,reference))

    ;; That gives us an individual, e.g., month
    ;; and we need is position in its sequence.
    ;;/// perhaps collapse all variables that bind ordinals
    ;; to 'position' ??
    (let ((ordinal
           (ecase category-name ;; mimics case in
             ;; category-of-time-unit for its range
             (category::month
              (value-of 'position-in-year reference)))))
      (push-debug `(,ordinal ,sequence))


      (break "next"))))
        

