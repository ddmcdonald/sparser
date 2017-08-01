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
 
