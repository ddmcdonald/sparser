;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1999 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "anchor"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  March 2007


(in-package :sparser)



(define-exploded-tree-family  anchor-pattern
  :description ""
  :binding-parameters ( type term1 ;; sequencer
                             term2 ;; date
                             term3 ;; amount-of-time
                             term4 ;; season-year
                             term5 ;; season
                             term6 ;; adverb
                             )
  :labels ( np n1 ;; sequencer
               n2 ;; date
               n3 ;; amount-of-time
               n4 ;; season-year
               n5 ;; season
               n6 ;; adverb
               )
  :cases
     (
      ;; "(the) last three years"
      (:np (np (n1 n3)
               :head right-edge
               :instantiate-individual type
               :binds (term1 left-edge
                       term3 right-edge)))

      ;; "after March 1, 2013"
      (:np (np (n1 n2)
               :head right-edge
               :instantiate-individual type
               :binds (term1 left-edge
                       term2 right-edge)))

      ;; "during the winter of 1992"
      (:np (np (n1 n4)
               :head right-edge
               :instantiate-individual type
               :binds (term1 left-edge
                       term4 right-edge)))

      ;; "during the summer"
      (:np (np (n1 n5)
               :head right-edge
               :instantiate-individual type
               :binds (term1 left-edge
                       term5 right-edge)))

      ;; "two months after"
      (:np (np (n3 n1)
               :head left-edge
               :instantiate-individual type
               :binds (term3 left-edge
                       term1 right-edge)))

      ;; "two months later"
      (:np (np (n3 n6)
               :head left-edge
               :instantiate-individual type
               :binds (term6 right-edge
                       term3 left-edge)))))
