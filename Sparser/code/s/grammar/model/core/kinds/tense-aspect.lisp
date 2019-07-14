;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "tense-aspect"
;;;   Module:  "model;core:kinds:"
;;;  version:  October 2018

;; Broken out of rules/syntax/tense.lisp 8/23/16

(in-package :sparser)

;;--- plurality

(define-mixin-category plural
  :specializes linguistic
  :binds ((items :primitive list)
          (number :primitive integer)))


;;--- negation

(define-category  negative
  :specializes  linguistic
  :instantiates nil)
;; "no" and "not" are quantifiers in words/quantifiers1

(define-mixin-category takes-neg
  :binds ((negation)))


;;--- tense & aspect 

(define-category  tense/aspect
  :instantiates nil
  :specializes  linguistic)


(define-category  future
  :instantiates nil
  :specializes  tense/aspect)


(define-category  past
  :instantiates nil
  :specializes  tense/aspect)

(define-category  present
  :instantiates nil
  :specializes  tense/aspect)


(define-category  progressive    ;; be + ing
  :instantiates nil
  :specializes  tense/aspect )


(define-category  perfect   ;; have + en
  :instantiates nil
  :specializes  tense/aspect )


(defgeneric indicates-tense? (individual)
  (:documentation "Does the individual bind any of the variables
    that carry information about tense. If a category is passed
    in then we're certain that it doesn't already have any tense
    information since the variables only pertain to individuals.")
  (:method ((i individual))
    (or (value-of 'occurs-at-moment i)
        (value-of 'modal i)
        (value-of 'present i)
        (value-of 'past i)
        (value-of 'progressive i)
        (value-of 'perfect i)))
  (:method ((c referential-category))
    nil))
    
