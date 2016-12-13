;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "special-ontology"
;;;   Module:  "grammar/sl/isr/
;;;  version:  October 2016

;; Moved out of middle/ontology.lisp 10/28/16 because this notion
;; of a surface is only used in ISR/C3-specific definitions and moving
;; it out of the core is much quicker than revisiting all that and
;; revising it.

(in-package :sparser)

(define-category has-spatial-location
  :specializes has-location)

(define-mixin-category physical-surface
  :specializes quality  ;; maybe border?
  :mixins (has-color) ;; supplies color variable
  :realization ((:tree-family premodifier-adds-property
                 :mapping ((property . color)
                           (np-head . :self)
                           (modifier . color)))))
