;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1991-1992,2023 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "dummy words"
;;;    Module:   "objects;chart:words:"
;;;   Version:   October 2023

;; inititated 10/90
;; 12/91 tweeked package
;; 3/21/92 Added capitalization keyword for the benefit of the word
;;   sorting routine

(in-package :sparser)

(defun define-dummy-word (symbol &key capitalization )
  ;; These are for such purposes as calculating word frequencies, where
  ;; we want to accumulate counts on Capitalized-words, numbers, etc.
  (let ((w-symbol (intern (symbol-name symbol) *word-package*)))

    (let ((new? (not (boundp w-symbol)))
          (word (if (boundp w-symbol)
                  (symbol-value w-symbol)
                  (make-word :symbol w-symbol :pname ""))))
      (when new?
        (catalog/word word w-symbol)
        (establish-rule-set-for word)
        (setf (get-tag :use-symbol-name-when-printing word) t))

      (when capitalization
        (setf (word-capitalization word) capitalization))
    
      word)))

