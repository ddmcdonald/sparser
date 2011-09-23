;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1991,1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "dummy words"
;;;    Module:   "objects;chart:words:"
;;;   Version:   March 1992

;; inititated 10/90
;; 12/91 tweeked package
;; 3/21/92 Added capitalization keyword for the benefit of the word
;;   sorting routine

(in-package :sparser)


(defun define-dummy-word/expr (symbol
                               &key capitalization )
  ;; These are for such purposes as calculating word frequencies, where
  ;; we want to accumulate counts on Capitalized-words, numbers, etc.
  (let ((w-symbol (intern (concatenate 'string
                                       "ABSTRACT-WORD-"
                                       (symbol-name symbol))
                          *word-package*)))

    (let ((new? (not (boundp w-symbol)))
          (word
           (if (boundp w-symbol)
             (symbol-value w-symbol)
             (make-word  :symbol w-symbol
                         :pname  ""))))
      (when new?
        (catalog/word word w-symbol)
        (setf (unit-plist word)
              (list :use-symbol-name-when-printing
                    ;; :sectionizing-marker
                    ))
        (setf (word-rule-set word)
              (make-rule-set
               :backpointer word)))

      (when capitalization
        (setf (word-capitalization word) capitalization))
    
      word)))

