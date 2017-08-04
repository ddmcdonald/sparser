;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "template-library"
;;;   Module:  "model;dossiers:"
;;;  version:  July 2017

;; Initiated 7/26/17

(in-package :sparser)


(define-krisp-template there-is (value)
  (there-exists
     (value (block (has-determiner (a))))
     (predicate (be))))
 
;; (m::there-is '(block (has-determiner (a (word (wd "a"))))))

(define-wrapper-template can (model (can)))
;;/// add macro to iterate over all the modals

(define-wrapper-template not (negation (not))) ;; => not-template

(def-noun "gene")

(def-verb "call")
