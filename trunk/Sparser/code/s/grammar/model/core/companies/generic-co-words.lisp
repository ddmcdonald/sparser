;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "generic co words"
;;;   Module:  "model;core:companies:"
;;;  version:  October 1993

;; initiated 10/29/93 v2.3

(in-package :sparser)


;;;--------
;;; object
;;;--------

(define-category  generic-co-word
  :instantiates self
  :specializes name
  :binds ((name :primitive word))
  :index (:permanent  :key name)
  :realization (:word name))

