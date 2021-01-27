;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1996,2018  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "amounts"
;;;   Module:  "model;core:time:"
;;;  version:  March 2018

;; initiated 4/27/94 v2.3. 1/1/96 Added fractions and a few explicit rules.
;; 2/10/10 Something has changed such that the period => "period" rule is
;; reading the lhs as a word, leading to circular rule application

(in-package :sparser)


(define-category  amount-of-time   ;; "three months"
  :specializes amount-of-stuff
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

;;///  these are too weak a representation
(def-cfr amount-of-time ("the" amount-of-time)
  :form np
  :referent (:daughter right-edge))

(def-cfr frequency-of-event ("every" amount-of-time)
  :form adverb
  :referent (:daughter right-edge))


;; Common noun referring to amount of time
;;
;(def-cfr period ("period")
;  :form np-head
;  :referent amount-of-time )




;;;----------------------
;;; fractions of amounts
;;;----------------------

(define-category fraction-of-amount-of-time  ;; "the first three months"
  ;; by analogy to ordinal-fraction
  :specializes amount-of-time
  :instantiates self
  :binds ((selector . ordinal)
          (portion . amount-of-time))
  :index (:sequential-keys portion selector))

(def-cfr fraction-of-amount-of-time (ordinal amount-of-time)
  :form n-bar
  :referent (:instantiate-individual fraction-of-amount-of-time
             :with (selector left-edge
                    portion right-edge)))

