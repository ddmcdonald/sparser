;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1998  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "value of fin-dat"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  1.0 July 1998

;; initiated 12/22/95. Elaborated through 1/9/96
;; 1.0 (7/12/98) reworked for lattice-points. Gave the object a realization.


(in-package :sparser)

;;;----------------------------------------------
;;; simple association of a fin-dat with a value
;;;----------------------------------------------

#| cases: "net of $106.3 million"
 |#

(define-category  financial-data-with-value
  :specializes financial-data
  :instantiates self
  :binds ((datum . financial-data)
          (value . money))
  :realization ((;; "<fd> totaled <amt>", "<fd> is <amt>"
                 :tree-family  transitive/new-head
                 :mapping ((agent . datum)
                           (patient . value)
                           (result-type . :self)
                           (s . financial-report)
                           (vp . valued-at-value)
                           (vg . (financial-datum-value-verb
                                  be))
                           (np/subject . financial-data)
                           (np/object . (money amt-per-share))))

                (;; "<fd> of <amt>"
                 :tree-family  item-of-value
                 :mapping ((item . datum)
                           (value . value)
                           (result-np . financial-data)
                           (np . financial-data)
                           (complement . (money amt-per-share))))))


