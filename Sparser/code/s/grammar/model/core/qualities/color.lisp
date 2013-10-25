;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "color"
;;;   Module:  "grammar/core/qualities/
;;;  version:  October 2013

;; Initiated 10/9/13.

(in-package :sparser)

;;;--------------
;;; color per-se
;;;--------------

(define-category color
  :specializes nil
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name))

(defun define-color (string) ;; syntactic sugar
  (define-or-find-individual 'color :name string))

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