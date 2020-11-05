;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "form"
;;;   Module:  "objects;rules:DA:"
;;;  Version:  November 2020

;; initiated 5/5/95

(in-package :sparser)


(defmacro define-debris-analysis-rule (name
                                       &key pattern action)

  `(define-debris-analysis-rule/expr ',name ',pattern ',action))


(defmacro define-early-pattern-rule (name
                                             &key pattern action)
  `(let ((*make-early-da-rule* t))
     (declare (special *make-early-da-rule*))
     (define-debris-analysis-rule/expr ',name ',pattern ',action)))
