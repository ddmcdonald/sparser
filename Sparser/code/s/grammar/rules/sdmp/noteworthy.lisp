;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2021 David D. McDonald all rights reserved
;;;
;;;      File: "noteworthy"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: May 2021

;; Initiated 1/29/20 to hold the actual notes and their generalization

(in-package :sparser)

(defun mark-as-noteworthy (list-of-categories)
  (loop for name in list-of-categories
     as category = (category-named name :error)
     do (noteworthy category)))

(mark-as-noteworthy
 '(person named-object
   name name-word proper-name
   initial

   company

   title role-based-person

   location  location-of
   direction
   city us-state country

   time
   date day-of-the-month
   year month weekday time-unit

   amount
   measurement unit-of-measure
   number ordinal multiplier

   approximator

   money currency

   modal
   pronoun  ;;plural --> texture

   acknowledgement


   ))
;; (noteworthy 'xxxx)

;; commas, colons, semicolons, slashes
;; exclamation-points
;; parentheses, quotation, other braces

;; past tense, qualified with modals, future(?)
;; become

;; report verbs -- other interesting classes of verb
;; tell report said announced


