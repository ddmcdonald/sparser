;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2021 David D. McDonald all rights reserved
;;;
;;;      File: "noteworthy"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: December 2021

;; Initiated 1/29/20 to hold the actual notes and their generalization

(in-package :sparser)

#+ignore ;; original -- moved to note-classes.lisp
(defun mark-as-noteworthy (list-of-categories)
  (loop for name in list-of-categories
     as category = (category-named name :error)
     do (noteworthy category)))


(defparameter *noteworthy-categories*
 
 '((vague-names
    named-object pronoun
    name name-word proper-name
    initial)

   (identified-names
    person
    company
    title
    role-based-person)

   (places
    location  location-of
    direction
    city us-state country)

   (time
    time
    date day-of-the-month
    year month weekday time-unit)

   (quantities
    amount
    measurement unit-of-measure
    number ordinal multiplier
    number-sequence hyphenated-number
    approximator)

   (finance
     money currency)

   (verbs modal)

   (speech-acts
    acknowledgement)

   ;; (punctuation
   ;;  comma ;; have to be categories for regular mach. to work
   ;;  colon)
   
   (brackets
    parentheses
    quotation
    square-brackets) ; angle-brackets, curly-brackets ?

   ))


(defparameter *note-groups* ;; parameter so we can update it
  (takeup-noteworthy-categories *noteworthy-categories*))


;; commas, colons, semicolons, slashes
;; exclamation-points
;; parentheses, quotation, other braces

;; past tense, qualified with modals, future(?)
;; become

;; report verbs -- other interesting classes of verb
;; tell report said announced


