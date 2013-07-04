;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1999 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "season-year"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  June 2013

;;

(in-package :sparser)

#| This is a very simple pattern. |#

(define-exploded-tree-family  season-year-pattern
  :description ""
  :binding-parameters ( type term1 ;; season
                             term2 ;; year
                             )
  :labels ( np n1 ;; season
               n2 ;; year
               )
  :cases
     (
      ;; "summer of 1992"
      (:np (np (n1 n2)
               :head right-edge
               :instantiate-individual type
               :binds (term1 left-edge
                       term2 right-edge)))))
