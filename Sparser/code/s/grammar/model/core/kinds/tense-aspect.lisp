;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "tense-aspect"
;;;   Module:  "model;core:kinds:"
;;;  version:  August 2016

;; Broken out of rules/syntax/tense.lisp 8/23/16

(in-package :sparser)

;;--- negation

(define-category  negative
  :specializes  linguistic
  :instantiates nil)
;; "no" and "not" are quantifiers in words/quantifiers1

(define-mixin-category takes-neg
  :binds ((negation)))


;;--- container

;; Needs a better name
(define-category  tense/aspect-vector
  :instantiates nil
  :specializes  linguistic
  :binds ((occurs-at-moment) ;; future, past
          (modal)
          (present)
          (past)
          (progressive)
          (perfect))
  :mixins (takes-neg)
  :documentation "Stored on the aspect variable of
  any event, see find-or-make-aspect-vector.")

(define-mixin-category carries-tense
  :binds ((aspect  tense/aspect-vector)))


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

