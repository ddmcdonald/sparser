;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1999 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "loader"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  March 2007

;; initiated 9/27/99. 3/22/07 Found a typo in the mapping - the year was getting
;; the label for days.

(in-package :sparser)

#| This is a very ad-hoc pattern, but then so are dates. |#

(define-exploded-tree-family  date-pattern
  :description ""
  :binding-parameters ( type term1 ;; month
                             term2 ;; day
                             term3 ;; year
                             term4 ;; weekday
                             )
  :labels ( np n1 ;; month
               n2 ;; number
               n3 ;; year
               n4 ;; weekday
               )
  :cases
     (
      ;; "March 10"
      (:np (np (n1 n2)
               :head right-edge
               :instantiate-individual type
               :binds (term1 left-edge
                       term2 right-edge)))

      ;; ", 1999"
      (:consume-comma (comma-/n3 ("," n3)
                         :head right-edge))

      ;; "(March 10), 1999"
      (:appositive (np (np comma-/n3)
               :head left-edge
               :binds (term3 right-edge)))

      ;; ", (March10, 1999)"
      (:consume-comma (comma-/np ("," np)
                         :head right-edge))

      
      ;; "Wednesday (, March10, 1999)"
      (:appositive (np (n4 comma-/np)
               :head right-edge
               :binds (term4 left-edge)))

      ;; "August 1990"
      (:np (np (n1 n3)
               :head left-edge
               :instantiate-individual type
               :binds (term1 left-edge
                       term3 right-edge)))

      ))
