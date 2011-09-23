;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "redefine"
;;;   Module:  "objects;rules:DA:"
;;;  Version:  May 1995

;; initiated 5/5/95.  Elaborated ..5/11

(in-package :sparser)


(defun redefine-da-rule (rule pattern action)
  ;; called from define-debris-analysis-rule/expr. We update
  ;; the parts that have changed. 
  (tr :redefining-da-rule rule)
  (when (not (equal pattern (da-pattern-description rule)))
    (break "new pattern for existing rule")
    (setup-da-pattern pattern rule))

  (setup-da-action action rule)
  rule )

