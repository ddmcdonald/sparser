;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "size"
;;;   Module:  "grammar/core/qualities/
;;;  version:  June 2015

;; Initiated 12/3/15, on the model of color.

(in-package :sparser)

#| N.b. this is utterly devoid of real meaning |#

(define-category size
  :specializes quality
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name)
  :documentation "This is for representing the qualitative
 values for sizes. It's analogous to a measurement of
 a scalar like length. It is not attributing this size
 to some object. That is is the purpose of XXXXX
")

(defun define-size (string) ;; syntactic sugar
  (define-or-find-individual 'size :name string))

;; a few cases as need for trival blocks world
(define-size "big")
(define-size "little")

#| lifted from biology/terms-to-move

We could treat this a a property (inherited variable) 
on physical objects -- would benefit from a organized
notion of dimension since height/weight/etc are also
properties.

(define-category size :specializes abstract
  :binds ((measured-item biological))
  :realization
  (:noun "size" :of measured-item))

|#
