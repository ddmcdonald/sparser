;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "size"
;;;   Module:  "grammar/core/qualities/
;;;  version:  December 2015

;; Initiated 12/3/15, on the model of color.

(in-package :sparser)

#| N.b. this is utterly devoid of real meaning |#

(define-category size
  :specializes quality
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name))

(defun define-size (string) ;; syntactic sugar
  (define-or-find-individual 'size :name string))

;; a few cases as need for trival blocks world
(define-size "big")
