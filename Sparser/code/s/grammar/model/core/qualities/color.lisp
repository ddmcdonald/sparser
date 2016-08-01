;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "color"
;;;   Module:  "grammar/core/qualities/
;;;  version:  September 2016

;; Initiated 10/9/13. 8/10/15 Make it specialize quality.

(in-package :sparser)

;;;--------------
;;; color per-se
;;;--------------

(define-attribute color)
#|
(define-category color-value
  :specializes attribute
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name))

(defun define-color (string) ;; syntactic sugar
  (define-or-find-individual 'color-value :name string)) |#

;;--- move to a dossier before growing this list by too much more
(define-color "black")
(define-color "white")
(define-color "red")
(define-color "yellow")
(define-color "blue")
(define-color "green")


;;;------------------------------------
;;; something being of a certain color
;;;------------------------------------
 
;;////  Does "the color of"  go here?  
