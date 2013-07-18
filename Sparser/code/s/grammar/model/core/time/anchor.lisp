;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "anchor"
;;;   Module:  "model;core:time:"
;;;  version:  1.0 July 2013

;;

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category anchor
  :specializes time
  :instantiates time
  :binds ((sequencer . sequencer)
          (date . date)
          (amount-of-time . amount-of-time)
          (season-year . season-year)
          (season . season))
  :realization (:tree-family  anchor-pattern
                :mapping ((type . :self)
                          (np . :self)
                          (n1 . sequencer)
                          (term1 . sequencer)
                          (n2 . date)
                          (term2 . date)
                          (n3 . amount-of-time)
                          (term3 . amount-of-time)
                          (n4 . season-year)
                          (term4 . season-year)
                          (n5 . season)
                          (term5 . season))
                :common-noun "anchor"))
