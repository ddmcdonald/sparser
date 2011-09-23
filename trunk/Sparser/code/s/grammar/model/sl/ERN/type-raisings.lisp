;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "type raisings"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; initiated 1/9/96

(in-package :sparser)

#| These are ruiles and 'with-binding' statements that go with Financial-report.
 They need to be loaded separately at the end of the loading sequence
 so that all the categories they refer to will be defined. |#


;;;-------------------------------------------------------------------
;;; rules that yield Financial-reports (usually only partially saturated)
;;;-------------------------------------------------------------------

(def-cfr financial-report (financial-data valued-at-value)
  :form s
  :referent (:instantiate-individual financial-report
             :with (datum left-edge
                    value right-edge)))


(when-binding  time-anchored-financial-datum  datum  financial-report
  :transfer ((datum . datum)
             (time-interval . reporting-period)))

(when-binding  valued-at-value/money  value  financial-report
  :transfer ((money . value)
             (amt-per-share . value-per-share)))

(when-binding  valued-at-value/amt-per-share  value  financial-report
  :transfer ((amt-per-share . value-per-share)
             (money . value)))

