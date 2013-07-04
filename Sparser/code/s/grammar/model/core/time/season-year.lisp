;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2012 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "season-year"
;;;   Module:  "model;core:time:"
;;;  version:  1.0 June 2013

;;

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category season-year
  :specializes time
  :instantiates time
  :binds ((season . season)
          (year . year))
  :realization (:tree-family  season-year-pattern
                :mapping ((type . :self)
                          (np . :self)
                          (n1 . season)
                          (term1 . season)
                          (n2 . year)
                          (term2 . year))
                :common-noun "season-year"))

