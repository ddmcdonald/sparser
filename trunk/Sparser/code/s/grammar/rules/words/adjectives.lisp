;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2014  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:words:"
;;;  version:  June 2014

;; initiated in 1/9/95. Redone in terms of fn words 4/12/95,
;; Rewritten from scratch 6/4/14. Added the other options 6/9/14

(in-package :sparser)


(defun define-adjective (string
                         &key form super-category rule-label discriminator)
  (define-function-term string 'adjective
    :form form
    :super-category (or super-category 
                        (super-category-for-POS :adjective))
    :rule-label (or rule-label
                    'modifier)
    :discriminator discriminator
    :tree-families '(prenominal-adjective)))

