;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "company of fin-dat"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; initiated 12/26/95. Elaborated through 1/9/96

(in-package :sparser)

;;;----------
;;; category
;;;----------

(define-category  company-anchored-financial-datum
  :specializes financial-data
  :instantiates nil
  :binds ((datum . financial-data)
          (company . company))
  :index (:temporary :sequential-keys datum company))


;;;---------------
;;; cases (rules)
;;;---------------

;; "Dun & Bradstreet Corp.'s first-quarter profit"
;;
(def-cfr financial-data (company-s financial-data)
  :form np
  :referent (:instantiate-individual company-anchored-financial-datum
             :with (datum right-edge
                    company left-edge)))

(def-cfr financial-data (company financial-data)
  :form np
  :referent (:instantiate-individual company-anchored-financial-datum
             :with (datum right-edge
                    company left-edge)))



;;;----------------------------
;;; connection via 'reporting'
;;;----------------------------

(def-cfr reports-financial-result (report-verb financial-data)
  :form vp
  :referent (:daughter right-edge))


#| What is the combination with company?  It isn't a financial-report given
 that those are indexed by fin-dat+value, and we can't know at this level
 whether the fin-dat constituent includes information about the value. 
    For the moment anyway, I'll go with putting the fin-dat in both the
 slots that financial-report needs -- binding-movement rules might make up
 the difference. |#

;; problematic: "Value Line reports second quarter earnings"

(def-cfr financial-report (company  reports-financial-result)
  :form s
  :referent (:instantiate-individual financial-report
             :with (datum right-edge
                    value right-edge ;; this is the one that would require elevation
                    company left-edge)))


;;-- context for name->company

(def-csr name company
  :right-context reports-financial-result
  :form np
  :referent (:function interpret-name-as-company left-edge))

