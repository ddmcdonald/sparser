;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "discourse"
;;;   Module:  "model;core:mid-level:"
;;;  version:  September 2016

;; Initiated 9/6/16, initially as a common resting place for the
;; "interjections", with contributions from checkpoint/vocabulary.lisp

(in-package :sparser)

;;;-------------------------------------
;;; Formulaic responses, greetings, etc.
;;;-------------------------------------
#| Strictly speaking, these are formulaic reaction signals. 
 See Quirk et al. pg 852, 11.54.
 Interjections proper are quite different: 11.55. |#


;;-- Acknowledgements
(define-category  acknowledgement
  :instantiates  self
  :specializes   linguistic
  :binds ((name :primitive word))
  :realization (:interjection name))

(define-individual 'acknowledgement :name "yes")
(define-individual 'acknowledgement :name "no")
(define-individual 'acknowledgement :name "ok")
(define-individual 'acknowledgement :name "good")



;;-- Greetings
(define-category  greeting
  :instantiates  self
  :specializes   linguistic
  :binds ((name :primitive word))
  :realization (:interjection name))

(define-individual 'greeting :name "hello")
(define-individual 'greeting :name "hi")
(define-individual 'greeting :name "goodbye")
(define-individual 'greeting :name "bye")


;;;----------------------
;;; markers of proposals
;;;----------------------

;; suppose
;; what if

;; "Let's enjoy ourselves, shall we?"  QGLS pg 341

(sentential-interjection "let's")
;; "let him go", "let go of the ball" -- aux?

