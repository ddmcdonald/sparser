;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "printers"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; initiated 1/8/96.

(in-package :sparser)

;;;----------------------------------------------------------------------
;;; categories automatically printed by 'name' just need string routines
;;;----------------------------------------------------------------------

(defun string/financial-data (fd)
  (let ((w/pw (value-of 'name fd)))
    (etypecase w/pw
      (word (word-pname w/pw))
      (polyword (pw-pname w/pw)))))

(defun string/Fin-dat-Qualifier (q)
  (let ((w/pw (value-of 'name q)))
    (etypecase w/pw
      (word (word-pname w/pw))
      (polyword (pw-pname w/pw)))))


(define-special-printing-routine-for-category  qualified-financial-data
  :full
  ((let ((*print-short* t)
         (q (value-of 'qualifier obj))
         (fd (value-of 'financial-datum obj)))
     (format stream "#<qualified fin-dat ~A ~A>" (string-for q) (string-for fd))))
  :short
  ((let ((*print-short* t)
         (q (value-of 'qualifier obj))
         (fd (value-of 'financial-datum obj)))
     (format stream "~A ~A" (string-for q) (string-for fd)))))

(defun string/qualified-financial-data (o)
  (let ((*print-short* t)
        (q (value-of 'qualifier o))
        (fd (value-of 'financial-datum o)))
    (format nil "~A ~A" (string-for q) (string-for fd))))



;;;---------
;;; numbers
;;;---------

(define-special-printing-routine-for-category  number 
  :full ((format stream "#<number ")
         (princ-number obj stream)
         (format stream ">"))
  :short ((princ-number obj stream)))


(defun string/ordinal-fraction (of)
  (let ((unit (value-of 'unit of))
        (selector (value-of 'selector of))
        (*print-short* t))
    (cond
      ((eq unit (category-named 'quarter))
       (format nil "~A/4" (string-for selector)))
      ((eq unit (category-named 'half))
       (format nil "~A/2" (string-for selector)))
      (t (format nil "~A/~A" (string-for selector) unit)))))



;;;-------
;;; times
;;;-------

(defun string/amount-of-time (aot)
  (let ((quantity (value-of 'quantity aot))
        (unit (value-of 'units aot))
        (*print-short* t))
    (format nil "~A ~As" (string-for quantity) (string-for unit))))


(defun string/fraction-of-amount-of-time (fot)
  (let ((selector (value-of 'selector fot))  ;; "first"
        (portion (value-of 'portion fot))    ;; "9 months"
        (*print-short* t))
    (if (null portion) ;; wierd situation
      (format nil "~Ast --" (string-for selector))
      (format nil "~Ast ~A" (string-for selector) (string-for portion)))))


(defun string/fiscal-year (fy)
  (let ((year (value-of 'year fy)))
    (format nil "FY~A" (string-for year))))
        


(define-special-printing-routine-for-category  part-of-a-fiscal-year
  :full
  ((let ((unit (value-of 'unit obj))
         (selector (value-of 'selector obj))
         (*print-short* t))
     (cond
      ((eq unit (category-named 'quarter))
       (format stream "#<part-of-a-fiscal-year Q~A>" (string-for selector)))
      ((eq unit (category-named 'half))
       (format stream "#<part-of-a-fiscal-year H~A>" (string-for selector)))
      (t (format stream "#<~A ~A>" (string-for selector) unit)))
     ))
  :short
  ((let ((unit (value-of 'unit obj))
         (selector (value-of 'selector obj))
         (*print-short* t))
     (cond
      ((eq unit (category-named 'quarter))
       (format stream "#<Q~A>" (string-for selector)))
      ((eq unit (category-named 'half))
       (format stream "#<H~A>" (string-for selector)))
      (t (format stream "#<~A ~A>" (string-for selector) unit))))))


(defun string/part-of-a-fiscal-year (obj)
  (let ((unit (value-of 'unit obj))
         (selector (value-of 'selector obj))
         (*print-short* t))
     (cond
      ((eq unit (category-named 'quarter))
       (format nil "Q~A" (string-for selector)))
      ((eq unit (category-named 'half))
       (format nil "H~A" (string-for selector)))
      (t (format nil "~A ~A" (string-for selector) unit)))))


;;;---------------------------------
;;; small combinations over fin-dat
;;;---------------------------------

(define-special-printing-routine-for-category  time-anchored-financial-datum
  :full
  ((let ((*print-short* t)
         (datum (value-of 'datum obj))
         (time (value-of 'time-interval obj)))
     (format stream "#<fin-dat+time ~A - ~A>"
             (string-for datum) (string-for time))))
  :short
  ((let ((*print-short* t)
         (datum (value-of 'datum obj))
         (time (value-of 'time-interval obj)))
     (format stream "#<~A - ~A>"
             (string-for datum) (string-for time)))))

(defun string/time-anchored-financial-datum (obj)
  (let ((*print-short* t)
         (datum (value-of 'datum obj))
         (time (value-of 'time-interval obj)))
     (format nil "~A - ~A"
             (string-for datum) (string-for time))))
  


(define-special-printing-routine-for-category  financial-data-with-value
  :full
  ((let ((*print-short* t)
         (fin-dat (value-of 'datum obj))
         (value (value-of 'value obj)))
     (format stream "#<fin-dat+value ~A - ~A>"
             (string-for fin-dat) (string-for value))))
  :short
  ((let ((*print-short* t)
         (fin-dat (value-of 'datum obj))
         (value (value-of 'value obj)))
     (format stream "#<~A - ~A>"
             (string-for fin-dat) (string-for value)))))

(defun string/financial-data-with-value (obj)
  (let ((*print-short* t)
         (fin-dat (value-of 'datum obj))
         (value (value-of 'value obj)))
     (format nil "~A - ~A"
             (string-for fin-dat) (string-for value))))



(define-special-printing-routine-for-category  company-anchored-financial-datum
  :full
  ((let ((*print-short* t)
         (co (value-of 'company obj))
         (fd (value-of 'datum obj)))
     (format stream "#<fin-dat+co ~A ~A>"
             (string-for co) (string-for fd))))
  :short
  ((let ((*print-short* t)
         (co (value-of 'company obj))
         (fd (value-of 'datum obj)))
     (format stream "#<~A ~A>"
             (string-for co) (string-for fd)))))

(defun string/company-anchored-financial-datum (obj)
  (let ((*print-short* t)
         (co (value-of 'company obj))
         (fd (value-of 'datum obj)))
     (format nil "#~A ~A"
             (string-for co) (string-for fd))))



;;;---------
;;; amounts
;;;---------

(define-special-printing-routine-for-category  amount-per-share
  :full
  ((let ((*print-short* t)
         (amt (value-of 'quantity obj)))
     (format stream "#<amt/share ~A>" (string-for amt))))
  :short
  ((let ((*print-short* t)
         (amt (value-of 'quantity obj)))
     (format stream "#<~A/share>" (string-for amt)))))


(defun string/amount-per-share (obj)
  (let ((*print-short* t)
         (amt (value-of 'quantity obj)))
     (format nil "~A/share" (string-for amt))))



;;;---------
;;; changes
;;;---------

(define-special-printing-routine-for-category  change-by-amount
  :full
  ((let ((*print-short* t)
         (amount (value-of 'amount obj))
         (direction (value-of 'direction obj)))
     (format stream "#<change-by-amount ~A ~A>"
             (string-for direction) (string-for amount))))
  :short
  ((let ((*print-short* t)
         (amount (value-of 'amount obj))
         (direction (value-of 'direction obj)))
     (format stream "#<~A ~A>"
             (string-for direction) (string-for amount)))))

(defun string/change-by-amount (obj)
   (let ((*print-short* t)
         (amount (value-of 'amount obj))
         (direction (value-of 'direction obj)))
     (format nil "#<~A ~A>"
             (string-for direction) (string-for amount))))




(define-special-printing-routine-for-category  change-in-value-of-fin-dat
  :full
  ((let ((*print-short* t)
         (fin-dat (value-of 'datum obj))
         (change (value-of 'change obj)))
     (format stream "#<fin-dat's value changed: ~A ~A>"
             (string-for fin-dat) (string-for change))
        ))
  :short
  ((let ((*print-short* t)
         (fin-dat (value-of 'datum obj))
         (change (value-of 'change obj)))
     (format stream "#<~A ~A>"
             (string-for fin-dat) (string-for change)))))

(defun string/change-in-value-of-fin-dat (obj)
  (let ((*print-short* t)
         (fin-dat (value-of 'datum obj))
         (change (value-of 'change obj)))
     (format nil "~A ~A"
             (string-for fin-dat) (string-for change))))







#|
(define-special-printing-routine-for-category  
  :full
  ((let ((*print-short* t))

        ))
  :short
  ((let ((*print-short* t))

        ))) |#

