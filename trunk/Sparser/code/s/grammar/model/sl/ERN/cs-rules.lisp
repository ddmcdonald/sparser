;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "cs rules"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; initiated 1/13/96 from other parts. 

(in-package :sparser)


;;;--------------------------------------------------------------
;;; contextually interpreting factions as parts of a fiscal year
;;;--------------------------------------------------------------

(def-csr ordinal-fraction  part-of-a-fiscal-year
  :right-context ending-date 
  :referent (:instantiate-individual part-of-a-fiscal-year
             :with (selector left-edge)))

(def-csr ordinal-fraction  part-of-a-fiscal-year
  :right-context of-fiscal-year 
  :referent (:instantiate-individual part-of-a-fiscal-year
             :with (selector left-edge)))

(def-csr  ordinal-fraction  part-of-a-fiscal-year
  :right-context financial-data
  :referent (:instantiate-individual part-of-a-fiscal-year
             :with (selector left-edge)))

(def-csr ordinal-fraction  part-of-a-fiscal-year
  :left-context "for" 
  :referent (:instantiate-individual part-of-a-fiscal-year
             :with (selector right-edge)))

(def-csr ordinal-fraction  part-of-a-fiscal-year
  :left-context "in" 
  :referent (:instantiate-individual part-of-a-fiscal-year
             :with (selector right-edge)))


(when-binding  ordinal-fraction selector part-of-a-fiscal-year
  :transfer ((selector . selector)
             (unit . unit)))

