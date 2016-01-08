;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "pattern item"
;;;   Module:  "drivers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95

(in-package :sparser)


(defstruct (pattern-item
            (:include unit)
            (:print-function print-pattern-item-structure))
  type
  spec
  )

(defun print-pattern-item-structure (obj stream depth)
  (declare (ignore depth))
  (format stream "#<pattern: ~A ~A>"
          (pattern-item-type obj)
          (pattern-item-spec obj)))

(defun string-for-pattern-item (pa)
  (format nil "(~A ~A)"
          (pattern-item-type pa)
          (pattern-item-spec pa)))


(defun construct-pattern-item (list)
  (let ((keyword (first list))
        (specs (rest list)))

    (make-pattern-item :type keyword
                       :spec specs)))

