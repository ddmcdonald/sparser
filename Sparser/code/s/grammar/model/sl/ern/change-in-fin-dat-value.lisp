;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "change in fin-dat value"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  March 1996

;; initiated 12/26/95. Elaborated through 1/9/96.
;; 3/14 removed "a"+np form rule.

(in-package :sparser)


#| This is a clause-level relation. An instance of it could well have
 the company or an amount embedded in it and so be convertable to a financial-report. |#

(define-category  change-in-value-of-fin-dat
  :specializes event
  :instantiates self
  :binds ((datum . financial-data)
          (change)
          (direction-of-change . direction)
          (value-reached)
          (time-period)
          (company . company))
  :index (:temporary :sequential-keys datum change))



;;--- "net income climbed 28%"

(def-cfr change-in-amount-of-financial-datum (financial-data change-by-amount)
  :form s
  :referent (:instantiate-individual change-in-value-of-fin-dat
               :with (datum left-edge
                      change right-edge)))

(when-binding financial-data-with-value datum change-in-value-of-fin-dat
  :transfer ((value . value-reached)
             (time-interval . time-period)))

(when-binding change-by-amount change change-in-value-of-fin-dat
  :transfer ((direction . direction-of-change)
             (amount . value-reached))) ;; <<<--------- two types!!




#| Given that we've reified the vps for change-in-amount there is no available
 ETF that fits this pattern directly since all the clauses are verb-based
 rather than starting from a full vp.  |#

(def-cfr change-in-value-of-fin-dat (financial-data change-in-amount)
  :form s
  :referent (:instantiate-individual change-in-value-of-fin-dat
             :with (datum left-edge)
                    change right-edge))

;; If there's no specification of the amount, then we'll just have
;; a change-in-amount-verb there. If the amount is there then we'll get
;; the whole vp change-in-amount unless there's a gap.
;;    This handles the intransitives: "Echlin's profit margins fell"
;;
(def-cfr change-in-value-of-fin-dat (financial-data change-in-amount-verb)
  :form s
  :referent (:instantiate-individual change-in-value-of-fin-dat
             :with (datum left-edge)
                    change right-edge))




;;--- This builds off a q&d nominal, so it could be brittle.
;;
(def-cfr change-in-value-of-fin-dat (change-by-amount in-financial-data)
  :form np
  :referent (:instantiate-individual change-in-value-of-fin-dat
             :with (datum right-edge)
                    change left-edge))


(def-cfr change-in-amount-verb (fin-dat-qualifier change-in-amount-verb)
  :form np  ;; assuming the qualifier is a participle like "operating"
  :referent (:instantiate-individual qualified-financial-data
             :with (qualifier left-edge
                    financial-datum right-edge)))


;; This text doesn't get through w/o the form rule below
;;   "a 61% increase in first-quarter net income"
;;
#|  3/14 but it spuriously generates HA over "a non-executive director Nov. 29"
(def-form-rule ("a" np)
  :form np
  :referent (:daughter right-edge))  |#



;;;---------------------------------------------
;;; adjunct that changes the type of the clause
;;;---------------------------------------------

;; "Revenue rose 7.3% to $11.38 billion"

(def-cfr financial-data-with-value
         (change-in-value-of-fin-dat to-money)
  :form s
  :referent (:instantiate-individual financial-data-with-value
             :with (datum left-edge)
                    value right-edge))


;;;--------------
;;; time adjunct
;;;--------------

(def-cfr change-in-value-of-fin-dat (change-in-value-of-fin-dat
                                     in-part-of-a-fiscal-year)
  :form s
  :referent (:head left-edge
             :bind (time-interval right-edge)))

