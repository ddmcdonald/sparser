;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2014  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:words:"
;;;  version:  June 2014

;; initiated in 1/9/95. Redone in terms of fn words 4/12/95,
;; Rewritten from scratch 6/4/14.

(in-package :sparser)


(defun define-adjective (string)
  (define-function-term string 'adjective
    :super-category 'modifier
    :rule-label 'modifier
    :tree-families '(prenominal-adjective)))

