;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "quantities"
;;;   module:  "model;dossiers:"
;;;  Version:  June 2020

;; initiated 9/18/93 v2.3

(in-package :sparser)

#| These act like quantifiers but they also take determiners. |#

(define-quantity "majority")
(define-quantity "minority")
(define-quantity "plurality")

(define-quantity "bulk")
