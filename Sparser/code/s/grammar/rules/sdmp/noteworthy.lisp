;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2021 David D. McDonald all rights reserved
;;;
;;;      File: "noteworthy"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: April 2021

;; Initiated 1/29/20 to hold the actual notes and their generalization

(in-package :sparser)

(defun mark-as-noteworthy (list-of-categories)
  (loop for name in list-of-categories
     as category = (category-named name :error)
     do (noteworthy category)))

(mark-as-noteworthy
 '(person
   name name-word
   initial

   company

   title

   location

   time

   amount
   number ordinal multiplier

   approximator

   money currency

   pronoun  plural


   ))
;; (noteworthy 'xxxx)

;; report verbs -- other interesting classes of verb
;; commas, colons, semicolons, slashes
;; parentheses, quotation, other braces

  


