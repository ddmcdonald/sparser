;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "form"
;;;   Module:  "objects;rules:DA:"
;;;  Version:  May 1995

;; initiated 5/5/95

(in-package :sparser)


(defmacro define-debris-analysis-rule (name
                                       &key pattern action)

  `(define-debris-analysis-rule/expr ',name ',pattern ',action))

