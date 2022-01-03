;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2013,2021-2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "person prefixes"
;;;   Module:  "model;dossiers:"
;;;  version:  January 2022

;; initiated 6/8/93 v2.3.  Moved the form to main file 2/23/95
;; 7/15/13 added "Saint".

(in-package :sparser)


#|  ?? should these always be capitalized ??  |#

(define-person-prefix :abbrev "mr")
(define-person-prefix :abbrev "mrs")
(define-person-prefix :abbrev "ms")
(define-person-prefix :abbrev "messrs")
(define-person-prefix :abbrev "dr")
(define-person-prefix :full "Saint" :abbrev "St")
(define-person-prefix :full "sir")

(define-person-prefix :full "el")

(define-person-prefix :full "Right" :abbrev "Rt")
(define-person-prefix :full "Honorable" :abbrev "Hon")

(define-person-prefix :full "Professor" :abbrev "Prof")
