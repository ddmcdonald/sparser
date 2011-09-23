;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;rules:DA:"
;;;  Version:  May 1995

;; initiated 5/5/95

(in-package :sparser)


;;; object

(defstruct (da-rule
            (:include unit)  ;; plist
            (:conc-name #:da-)
            (:print-function print-da-rule-structure))

  name                 ;; a symbol -- the basis of its indexing
  pattern-description  ;; the original given with the definition
  action-description   ;; ditto
  action-fn            ;; what executes at runtime
  )


(defun print-da-rule-structure (obj stream depth)
  (declare (ignore depth))
  (format stream "#<~A>" (da-name obj)))


;;; interning

(defparameter *debris-analysis-rules* (make-hash-table :test #'eq))

(defun da-rule-named (symbol)
  (gethash symbol *debris-analysis-rules*))

(defun intern-da-rule (rule)
  (let ((symbol (da-name rule)))
    (setf (gethash symbol *debris-analysis-rules*) rule)))



;;; item printers

(defun pattern-item-as-string (item)
  (etypecase item
    ((or category referential-category mixin-category)
     (string-downcase (symbol-name (cat-symbol item))))
    (pattern-item
     (string-for-pattern-item item))
    (word
     (word-pname item))
    (polyword
     (pw-pname item))))

