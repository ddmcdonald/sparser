;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:words:"
;;;  version:  April 1995

;; initiated in 1/9/95. Redone in terms of fn words 4/12

(in-package :sparser)


(defun define-adjective (string)
  (define-function-word string
    :brackets '( ].phrase .[np )
    :form (category-named 'adjective)))

