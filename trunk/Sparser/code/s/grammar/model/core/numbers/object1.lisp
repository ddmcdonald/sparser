;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1999 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;; 
;;;     File:  "object"
;;;   Module:  "model;core:numbers:"
;;;  Version:  1.3 September 1999

;; 1.2 (7/19/92 v2.3) made over as "real" category. 8/4/94 finished princ routine
;;     (10/3) improved the printer.  11/15/95 added a sort routine.
;; 1.3 (6/12/99) Added referential category for multiplier. 6/25 Added a realization
;;      for number. (9/20) moved over set-illion-distribution since it makes more
;;      sense here along with its category.

(in-package :sparser)

;;;---------
;;; objects
;;;---------

(define-category  number
  :instantiates  self
  :specializes   nil
  :binds  ((value :primitive number))
  :index (:key value))


(define-category multiplier
  :instantiates self
  :specializes number
  :binds ((name :primitive word)
          (value number))
  :index (:key name)
  :realization (:common-noun name))


(define-category illions-distribution
  :binds ((number number)      ;; #<number 1,110,087.0>
          (illion multiplier)  ;; #<multiplier "million">
          (value number)))     ;; #<number 110>


;;; -----------------------------
;;; making illions-distributions
;;; -----------------------------

;; Nothing in English parses directly to an illions-distribution.
;; We establish them by hand in the various special-purpose
;; routines for numbers. See Set-illion-distribution-from-edge
;; and Apply-multiplier.

(defun set-illion-distribution (number value illion)
  (define-individual 'illions-distribution
    :number number
    :illion illion
    :value value))


#| (make-unindexed-temporary-individual
            ;; These need something to index off of.
            (category-named 'illions-distribution))))
    (bind-variable 'number number i)
    (bind-variable 'illion illion i)
    (bind-variable 'value value i)
     i ))  |#
    


;;;-------
;;; rules
;;;-------

(define-realization1 number   ;; "10 million"
  (:tree-family number-of-quantity
   ;; This etf is special purpose to this particular type
   ;; and pattern (/// maybe not a good idea). It calls
   ;; Apply-multiplier to find/make the number object.
   :mapping ((np . :self)
             (modifier . number)
             (np-head . multiplier))))

(assign-bracket number .[np)





;;;----------------
;;; print routines
;;;----------------

;; hook for specialized print routine
(setf (cat-ops-print (cat-operations category::number))
      'print-individual/number)

(defun print-individual/number (n stream)
  (write-string "#<number " stream)
  (let ((word (cadr (member :digit-sequence (unit-plist n)))))
    (if word
      (princ-word word stream)
      (let ((value (value-of 'value n)))  ;; the integer
        (princ value stream)))          
    (write-string ">" stream)))



(defun princ-number (n &optional (stream *standard-output*))
  (format stream "~A" (number-value n)))


(defun string/number (n)
  (let ((word (cadr (member :digit-sequence (unit-plist n)))))
    (if word
      (word-pname word)
      (let ((value (value-of 'value n)))
        (format nil "~A" value)))))


;;;--------------
;;; sort routine
;;;--------------

#+ccl(define-sort-function 'number 'sort-number-individuals-by-value)

(defun sort-number-individuals-by-value (n1 n2)
  (let ((lisp-number1 (value-of 'value n1))
        (lisp-number2 (value-of 'value n2)))
    (< lisp-number1 lisp-number2)))


;;;-----------
;;; functions
;;;-----------

(defun number-value (indiv-number)
  (value-of 'value indiv-number))



;;;-------------------------------
;;; routines for the plist fields
;;;-------------------------------

(defun number-ones (number)
  (get :ones (unit-plist number)))

(defun set-number-ones (number word)
  (if (unit-plist number)
    (setf (unit-plist number)
          (cons :ones (cons word (unit-plist number))))
    (setf (unit-plist number) `(:ones ,word))))


(defun number-teens (number)
  (get :teens (unit-plist number)))

(defun set-number-teens (number word)
  (if (unit-plist number)
    (setf (unit-plist number)
          (cons :teens (cons word (unit-plist number))))
    (setf (unit-plist number) `(:teens ,word))))


(defun number-tens (number)
  (get :tens (unit-plist number)))

(defun set-number-tens (number word)
  (if (unit-plist number)
    (setf (unit-plist number)
          (cons :tens (cons word (unit-plist number))))
    (setf (unit-plist number) `(:tens ,word))))


(defun number-multiplicand (number)
  (get :multiplicand (unit-plist number)))

(defun set-number-multiplicand (number word)
  (if (unit-plist number)
    (setf (unit-plist number)
          (cons :multiplicand (cons word (unit-plist number))))
    (setf (unit-plist number) `(:multiplicand ,word))))



#|  original stuff

(defstruct (number/obj
            ;; n.b. this can't be a "number" because that's a
            ;; built-in Lisp type
            (:conc-name #:number-)
            (:print-function  print-number-structure))
  rules
  value
  digit-sequence
  plist )


;;;---------------
;;; print routine
;;;---------------

(defun print-number-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<number " stream)
  (format stream "~A" (number-value obj))
  (write-string ">" stream))


;;;------------
;;; ancilaries
;;;------------

(setf (cat-index (category-named 'number))
      (make-index/hash-on-slot))

(defun find/number (lisp-number)
  (gethash lisp-number
           (cat-index (category-named/c-symbol 'category::number))))

(defun number-named (lisp-number)
  (unless (numberp lisp-number)
    (error "The argument to Number-named should be a lisp number"))
  (find/number lisp-number))

(defun index/number (lisp-number number)
  (setf (gethash lisp-number
                 (cat-index (category-named/c-symbol 'category::number)))
        number))

(defun delete/number (lisp-number)
  (let ((number (find/number lisp-number)))
    (dolist (rule (number-rules number))
      (delete/cfr rule))
    (remhash lisp-number
             (cat-index (category-named/c-symbol 'category::number)))
    number ))
|#

