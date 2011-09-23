;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2000  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "financial data"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  2.0 September 2000

;; initiated 12/20/95. Elaborated through 1/9/96
;; 1.0 (7/12/98) Started to rework the files into the new era of lattice-points.
;; 2.0 (9/5/00) Started completely reworking the model given psi.

(in-package :sparser)

;;;---------
;;; objects
;;;---------

#|  A 'financial' is just the kind of thing whose values are reported,
 such as '(net) income, not any of the relationships that involve them.  |#

(define-category financial
  :specializes nil
  :instantiates self
  :binds ((name :primitive (:or word polyword)))
  :realization (:common-noun name))

(defun define-financial (string)
  (let ((w/pw (resolve-string-to-word/make string)))
    (define-individual 'financial
      :name w/pw)))

(define-autodef-data  'financial-data
  :module *finance*
  :display-string "kind of data"
  :dossier "dossiers;financial data items"
  :form 'define-financial
  :description "One of the kinds of financial data that a company reports at periodic intervals such as the end of a quarter"
  :examples "\"income\", \"revenue\", \"profit\"" )

#|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;------- qualifiers: "net", "gross", "per-share"

(define-category fin-dat-qualifier
  :specializes nil
  :instantiates self
  :binds ((name :primitive (:or word polyword)))
  :index (:permanent :key name)
  :realization (:common-noun name))

(defun define-financial-datum-qualifier (string)
  (let ((w/pw (resolve-string-to-word/make string)))
    (define-individual 'fin-dat-qualifier
      :name w/pw)))

(define-autodef-data 'fin-dat-qualifier
  :module *finance*
  :display-string "data qualifier"
  :dossier "dossiers;financial data items"
  :form 'define-financial-datum-qualifier
  :description "A word or phrase that modifiers a financial data term to make it a specialized form of that kind of data"
  :examples "\"net\"")


;;;--------------------------
;;; the compound subtype
;;;--------------------------

#| A refinement to the individual in order to capture all the information
 that doesn't seem to be reflected in the patterning. |#

(define-category  qualified-financial-data
  :specializes financial-data
  :instantiates financial-data
  :binds ((qualifier)
          (financial-datum . financial-data))
  :realization (:tree-family  modifier-creates-individual
                :mapping ((head . financial-datum)
                          (modifier . qualifier)
                          (n-bar . financial-data)
                          (np-head . financial-data)
                          (subtyping-modifier . fin-dat-qualifier)
                          (result-category . :self))))



;; "earnings per share"
;;
(def-cfr financial-data (financial-data per-share)
  :form np
  :referent (:instantiate-individual qualified-financial-data
             :with (qualifier right-edge
                    financial-datum left-edge)))







;;;-------------------------------------------
;;; as a context to take names into companies
;;;-------------------------------------------

(def-cfr name-word-s (name-word apostrophe-s)
  :form possessive
  :referent (:daughter left-edge))

(def-csr name-word-s company
  :right-context financial-data
  :referent (:function interpret-name-as-company left-edge))




;;;-------------------------------------------
;;; as a context to take fractions into times
;;;-------------------------------------------

(defun convert-ordinal-fraction-to-part-of-a-fiscal-year (left right)
  (find-or-make-psi-1 'part-of-a-fiscal-year
     (variable/category 'selector 'part-of-a-fiscal-year) left
     (variable/category 'unit 'part-of-a-fiscal-year) right))


;; "second quarter profit"

(def-csr ordinal-fraction  part-of-a-fiscal-year
  :right-context financial-data
  :referent (:function convert-ordinal-fraction-to-part-of-a-fiscal-year
                       left-referent right-referent))  |#

