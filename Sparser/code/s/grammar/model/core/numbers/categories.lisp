;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999,2015-2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "categories"
;;;   Module:  "model;core:numbers:"
;;;  Version:   June 2019

;; redesigned 7/92
;; 1.1 (12/22/93 v2.3) Added hyphenated-number and slashed-sequence-of-numbers
;; 1.2 (10/13/97) removed the digits categories to allow the fsa to be an
;;      independent module. 
;; 1.3 (6/12/99) moved the definition of multplier to objects so that it could
;;      be a proper referential category.
;; 1.4 (8/12/99) Reworked how the number-words fsa is added so that it doesn't
;;      overwrite any rule information that already exists, presently the case
;;      for multiplier.
;;     (2/5/15) put some content on hyphenated-number

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

(define-category class-of-numbers
  :specializes designator
  :instantiates nil
  :documentation "Just a marker class for the tens, teens, etc.")

(define-category tens-number :specializes class-of-numbers)
(add-fsa category::tens-number *fsa-for-number-words*)

(define-category teens-number :specializes class-of-numbers)
(add-fsa category::teens-number *fsa-for-number-words*)

(define-category ones-number :specializes class-of-numbers)
(add-fsa category::ones-number *fsa-for-number-words*)

(add-fsa category::multiplier *fsa-for-number-words*)

(define-category number-product
  :specializes class-of-numbers
  :documentation "Labels edges over pairs of edges whose
    value is the product of the values of the edges") 

;;;----------------
;;; paired numbers
;;;----------------

(define-category hyphenated-number
  :specializes number
  :binds ((left number)
          (right number))
  :index (:sequential-keys left right))

(define-category number-range
  :specializes number
  :binds ((value number)
          (range number))
  :index (:sequential-keys left right))

(define-category range
  :specializes number
  :binds ((low number)
          (high number)
          (includes-low)
          (includes-high)
          )
  :index (:sequential-keys low high includes-low includes-high)
  :documentation "This is the interpretation for constructions
 like 'read chapters 3 through 5'. This is -not- (yet) the
 relationship of 'ranging from'. That verb could be defined
 on this category, but would be good to see what that comes to
 in practice.")
