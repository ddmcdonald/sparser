;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,1995,1996  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "amounts"
;;;   Module:  "model;core:time:"
;;;  version:  February 2010

;; initiated 4/27/94 v2.3. 1/1/96 Added fractions and a few explicit rules.
;; 2/10/10 Something has changed such that the period => "period" rule is
;; reading the lhs as a word, leading to circular rule application

(in-package :sparser)


;;; amounts



(define-category  amount-of-time   ;; "three months"
  :specializes amount
  :instantiates self
  :binds ((units . time-unit)
          (quantity  :or quantity number))
  :bindings (stuff category::time)
  :index (:sequential-keys units quantity)
  :realization (:tree-family  quantity+kind
          :mapping ((np . :self)
                    (modifier . number)
                    (np-head . time-unit)
                    (quantity . quantity)
                    (base . units)
                    (result-type . :self))))

#| Is this really an NP?  Given "the six months ended Oct. 31, 1995"
 you have to worry about what the justification of that determiner is.
 If it is dependent on the participle (which defines a set that makes
 the amount specific), then how would we represent the intermediate
 state of that parse while waiting for the qualifier to show up? |#

(def-cfr amount-of-time ("the" amount-of-time)
  :form np
  :referent (:daughter right-edge))

;;deleted the cfr #<PSR544  amount ->  number time>
;;otherwise, it parses things like "June 26 2010" as [June]_TIME [26 2010]_AMOUNT
(delete/cfr# 544)


;; Common noun referring to amount of time
;;
;(def-cfr period ("period")
;  :form np-head
;  :referent amount-of-time )




;;;----------------------
;;; fractions of amounts
;;;----------------------

(define-category  fraction-of-amount-of-time  ;; "the first three months"
  ;; by analogy to ordinal-fraction
  :specializes amount
  :instantiates self
  :binds ((selector . ordinal)
          (portion . amount-of-time))
  :index (:sequential-keys portion selector))


(def-cfr fraction-of-amount-of-time (ordinal amount-of-time)
  :form n-bar
  :referent (:instantiate-individual fraction-of-amount-of-time
             :with (selector left-edge)
                    portion right-edge))



