;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "decode pattern"
;;;   Module:  "objects;rules:DA:"
;;;  Version:  May 1995

;; initiated 5/5/95

(in-package :sparser)


(defun decode-da-pattern (list-of-items)
  ;; called from define-da-rule

  (let ( dereferenced-items )

    (dolist (item list-of-items)
      (etypecase item
        (symbol
         (let ((category (category-named item)))
           (unless category
             (break "There is no category named ~A" item))
           (push category dereferenced-items)))

        (string
         (let ((word (resolve-string-to-word item)))  ;; words or polywords
           (unless word
             (break "There is no word (or polyword) already defined ~
                   ~%for the string \"~A\"" item))
           (push word dereferenced-items)))

        (cons
         (let ((keyword (first item))
               (specs (rest item)))
           (declare (ignore specs))
           (unless (member keyword
                           '( :morph :word :gap ))
             (break "The pattern keyword ~A is not defined" keyword))
           
           (push (construct-pattern-item item)
                 dereferenced-items)))))

    (nreverse dereferenced-items)))

