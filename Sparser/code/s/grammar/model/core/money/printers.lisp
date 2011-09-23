;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printers"
;;;   Module:  "model;core:money:"
;;;  version:  November 1995

;; initiated 4/19/95. Added special printer 11/15

(in-package :sparser)


(defun string/money (m)
  (let ((number (value-of 'number m))
        (currency (value-of 'currency m)))

    ;; hack hack hack
    (format nil "$~A" (string/number number))))


(define-special-printing-routine-for-category  money
  :full  ((let ((number (value-of 'number obj)))
            (format stream "#<money ~A,  ~A ~A>"
                    (string/number number)
                    (indiv-id obj)
                    (indiv-uid obj))))

  :short ((let ((number (value-of 'number obj)))
            (format stream "#<~A>"
                    (string/number number))))

  :string ((string/money obj)))

