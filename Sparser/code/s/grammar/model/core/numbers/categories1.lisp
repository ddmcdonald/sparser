;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "categories"
;;;   Module:  "model;core:numbers:"
;;;  Version:   1.4 August 1999

;; redesigned 7/92
;; 1.1 (12/22/93 v2.3) Added hyphenated-number and slashed-sequence-of-numbers
;; 1.2 (10/13/97) removed the digits categories to allow the fsa to be an
;;      independent module. 
;; 1.3 (6/12/99) moved the definition of multplier to objects so that it could
;;      be a proper referential category.
;; 1.4 (8/12) Reworked how the number-words fsa is added so that it doesn't
;;      overwrite any rule information that already exists, presently the case
;;      for multiplier.

(in-package :sparser)

;;;------------------------------
;;; identifying the FSA routines
;;;------------------------------

(or (boundp '*fsa-for-number-words*)
    (defparameter *fsa-for-number-words*  'number-word-fsa))


;;;----------------------------------------------------
;;; defining categories for different kinds of numbers
;;; and linking up the FSAs
;;;----------------------------------------------------

(defun add-fsa (category fsa)
  (let ((rule-set (cat-rule-set category)))
    (unless rule-set
      (setq rule-set (make-rule-set :backpointer category)))
    (let ((fsa-field (rs-fsa rule-set)))
      (if fsa-field
        (unless (memq fsa fsa-field)
          (push fsa fsa-field))
        (setf (rs-fsa rule-set) (list fsa)))
      rule-set)))


;(define-category multiplier) now defined in numbers;object1
(add-fsa category::multiplier *fsa-for-number-words*)

(define-category tens-number)
(add-fsa category::tens-number *fsa-for-number-words*)

(define-category teens-number)
(add-fsa category::teens-number *fsa-for-number-words*)

(define-category ones-number)
(add-fsa category::ones-number *fsa-for-number-words*)


;;;------------------
;;; other categories
;;;------------------

(define-category hyphenated-number)

(define-category slashed-sequence-of-numbers)

