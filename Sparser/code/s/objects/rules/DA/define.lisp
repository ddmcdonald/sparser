;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "define"
;;;   Module:  "objects;rules:DA:"
;;;  Version:  May 1995

;; initiated 5/5/95

(in-package :sparser)


(defun define-debris-analysis-rule/expr (name pattern action)
  (let ((existing-rule (da-rule-named name)))
    (if existing-rule
      (redefine-da-rule existing-rule pattern action)
      (define-da-rule name pattern action))))



(defun define-da-rule (symbol pattern action)
  (let ((rule (make-da-rule
               :name symbol)))
    
    (setup-da-pattern pattern rule)
    (setup-da-action action rule)
    (intern-da-rule rule)  ;; puts it on the hashtable
    
    rule ))



(defun setup-da-pattern (pattern rule)
  (let ((dereferenced-pattern
           (decode-da-pattern pattern)))

    (setf (da-pattern-description rule) pattern)

    (check-for-clash-with-other-da-rules rule dereferenced-pattern)

    (make-and-index-da-pattern dereferenced-pattern rule)
    
    rule ))



#|  original before remodularizing
(defun define-da-rule (symbol pattern action)
  (let ((rule (make-da-rule
               :name symbol)))

    (let ((dereferenced-pattern
           (decode-da-pattern pattern)))

      (check-for-clash-with-other-da-rules rule
                                           dereferenced-pattern)

      (setf (da-pattern-description rule)
            dereferenced-pattern)

      (make-and-index-da-pattern dereferenced-pattern rule)

      (setup-da-action action rule)

      (intern-da-rule rule)  ;; puts it on the hashtable

      rule )))  |#


