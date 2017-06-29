;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2017 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "subcat-patterns"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  March 2017

;; Broken out of vocabulary 3/7/17

(in-package :sparser)

;; These two are replaced with partonymic
#+ignore(define-category composite-object :specializes object
  :mixins (artifact)
  :binds ((composed-of object))
  :realization (:of composed-of))
#+ginore(define-category component-part
  :specializes object
  :binds ((part-of object))
  :realization (:of part-of))
#|
(define-category relative-position :specializes component-part)

(define-category has-relative-position :specializes physical-object
  :binds ((position relative-position))
  :realization (:m position)) |#

;;;------------------
;;; location resouce

(define-mixin-category with-specified-location
  :specializes relation
  :mixins (has-location)
  :restrict ((location location))
  :binds ((supported-by physical)
          (next-to physical)
          (at-relative-location (:or location physical)) ;;relative-position)
          (goal (:or location physical)))
  :realization (;; :next\ to next-to
                :on supported-by
                ;; :on\ top\ of supported-by
                :at at-relative-location ;; at the end
                :on at-relative-location ;; on the left
                :to goal))
