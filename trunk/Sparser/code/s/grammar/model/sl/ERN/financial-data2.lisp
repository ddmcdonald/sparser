;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "financial data"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  2.0 September 2013

;; initiated 12/20/95. Elaborated through 1/9/96
;; 1.0 (7/12/98) Started to rework the files into the new era of lattice-points.
;; 2.0 (9/5/00) Started completely reworking the model given psi.  (2/10/05) Bringing
;;  back the qualifiers. 9/25/13 financial -> financial-datum to avoid swallowing
;;  the actual word gratuitously. 

(in-package :sparser)

;;;---------
;;; objects
;;;---------

#|  A 'financial' is just the kind of thing whose values are reported,
 such as '(net) income, not any of the relationships that involve them.  |#

(define-category financial-datum
  :specializes nil
  :instantiates self
  :binds ((name :primitive (:or word polyword)))
  :realization ((:common-noun name)
                (:tree-family  modifier-creates-subtype  ;; "net ___"
                 :mapping  ((n-bar . :self)
                            (subtyping-modifier . financial-qualifier)
                            (np-head . :self)))))



(defun define-financial (string)
  (let ((w/pw (resolve-string-to-word/make string)))
    (define-individual 'financial-datum
      :name w/pw)))

(define-autodef-data  'financial-datum
  :module *finance*
  :display-string "kind of data"
  :dossier "dossiers;financial data items"
  :form 'define-financial
  :description "One of the kinds of financial data that a company reports at periodic intervals such as the end of a quarter"
  :examples "\"income\", \"revenue\", \"profit\"" )




;;------- qualifiers: "net", "gross", "per-share"

(define-category financial-qualifier
  :specializes nil
  :instantiates self
  :binds ((name :primitive (:or word polyword)))
  :index (:permanent :key name)
  :realization (:common-noun name))

(defun define-financial-datum-qualifier (string)
  (let ((w/pw (resolve-string-to-word/make string)))
    (define-individual 'financial-qualifier
      :name w/pw)))

(define-autodef-data 'financial-qualifier
  :module *finance*
  :display-string "data qualifier"
  :dossier "dossiers;financial data items"
  :form 'define-financial-datum-qualifier
  :description "A word or phrase that modifiers a financial data term to make it a specialized form of that kind of data"
  :examples "\"net\"")



#|    ;;--------------------------- the old rules ----------------

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
                       left-referent right-referent))

----------------  |#

