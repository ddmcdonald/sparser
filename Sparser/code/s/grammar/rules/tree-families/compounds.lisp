;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2001 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "compounds"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  February 2001

;; initiated 2/24/01 for compositions of major categories. Initial motivation
;; is "$2.3 million or 2 cents per share", but presumably if there were patterns
;; involving clauses, say with discourse connectives, they would go here as well.

(in-package :sparser)


(define-exploded-tree-family  conventional-or
  :description "For the pattern 'A {,} or B', where B is always associated with A as an alternative way of expressing it. The surface category of the result is always 'A', but the pair is a new object with both elements in it. The motivating instance is '$2.3 million or 2 cents per share' from the financial domain"
  :binding-parameters ( first second result )
  :labels ( A B tail top )
  :cases ((:conjunct-tail (tail ("or" B)
                            :head right-edge
                            :daughter right-edge))
          (:comma-conjunct-tail (tail ("," tail)
                                  :head right-edge
                                  :daughter right-edge))
          (:term (top (A tail)
                   :head left-edge
                   :instantiate-individual result
                   :binds (first left-edge
                           second right-edge)))))

