;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2017  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "single letters"
;;;   Module:  "model;core:names:"
;;;  version:  September 2017

;; 2.0 (11/20/92 v2.3) Completely made over for new semantics
;;     (5/15/93) finished the makeover, 5/26 finished debugging it
;;     (11/94) added a parameter to point to "A"

(in-package :sparser)


;;;------------
;;; the object
;;;------------

(define-category single-capitalized-letter
  :instantiates self
  :specializes  name
  :binds ((letter :primitive word))  ;;///// should inherit !!
  :index (:key letter  :permanent))



;;;--------------
;;; instantiator
;;;--------------

(defun define-single-capitalized-letter (string)
  (let* ((word (define-word/expr string))
         new?  rule
         (individual
          (or (find-individual 'single-capitalized-letter
                               :letter word)
              (progn
                (setq new? t)
                (define-individual 'single-capitalized-letter
                    :letter word)))))
    (when new?
      (setq rule (define-cfr category::single-capitalized-letter
                         `( ,word )
                   :form category::proper-noun
                   :referent individual))
      (add-rule rule individual))

    (values individual rule)))

 

;;;-------
;;; cases
;;;-------

(mapc #'define-single-capitalized-letter 
      '("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M"
        "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"))

(defparameter *capital-a* (find-individual 'single-capitalized-letter
                            :letter "A"))

