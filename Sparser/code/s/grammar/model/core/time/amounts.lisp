;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1996,2018-2023  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "amounts"
;;;   Module:  "model;core:time:"
;;;  version:  August 2023

;; initiated 4/27/94 v2.3. 1/1/96 Added fractions and a few explicit rules.
;; 2/10/10 Something has changed such that the period => "period" rule is
;; reading the lhs as a word, leading to circular rule application

(in-package :sparser)


(define-category amount-of-time   ;; "three months"
  :specializes amount-of-stuff
  :mixins (time)
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

(defun range-of-time (hyphenated-number time-unit)
  ;; called from syntax-function so these are individuals
  (let ((range (convert-hyphenated-number hyphenated-number)))
    (define-or-find-individual 'amount-of-time
        :units time-unit
        :quantity range)))

(defun make-amount-of-time (amount unit)
  "Called from the of-handler in interpret-pp-adjunct-to-np,
   could have been done by a method invoked from there"
  (define-or-find-individual 'amount-of-time
      :units unit
      :quantity amount))


;;;-----------------------------
;;; approximate amounts of time
;;;-----------------------------
;; "four months or more"

(def-cfr amount-of-time (amount-of-time approximator)
  :form np
  :referent (:function make-approximate-time left-edge right-edge))

(define-early-pattern-rule amt-time+approximator
  :pattern (amount-of-time approximator)
  :action (:function make-approximate-time first second))
;; early rule insufficient to solve "Breastfeeding for four months or more
;;  is associated with fewer behavioural problems in children")

;; n.b. called from referent-from-rule
(defun make-approximate-time (time approx)
  (let ((time-edge (left-edge-for-referent))
        (approx-edge (right-edge-for-referent)))
    (let ((i (specialize-object time (category-named 'approximate))))
      (let ((j (bind-variable 'qualifier approx i)))
        ;;(push-debug `(,time ,i ,j)) (break "j = ~a" j)
        j))))


#| ;; 'or more' is an adverb, so we have to get it before the chunker does
 --- this has a different edge/referent assembly signature
(define-early-pattern-rule time+approximator
    :pattern ( amount-of-time approximator )
    :action (:function make-approximate-time first second)) |#

;; in ws/late-July-2022_worknotes, on 7/29 -- this signature
;; did the right thing with "four months or more"
#+ignore(defun make-approximate-time/refs (time approx &optional time-edge approx-edge)
  (let* ((i (specialize-object time (category-named 'approximate)))
         (j (bind-variable 'qualifier approx i)))
    (make-chart-edge
     :category (category-named 'time)
     :form (category-named 'np)
     :referent j
     :rule 'make-approximate-time
     :left-daughter time-edge
     :right-daughter approx-edge
     :starting-position (pos-edge-starts-at time-edge)
     :ending-position (pos-edge-ends-at approx-edge)
     :constituents (list time-edge approx-edge))))


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


;;;----------------------------------
;;; temporally specified quantities
;;;----------------------------------

(define-category temporal-amount-of-stuff
  :specializes amount-of-stuff
  ;;  ?? :mixins (time)
  :instantiates self
  :restrict ((measurement amount-of-time))
  :documentation "Just like ordinary measurement of stuff
    except we're measuring with time.")

(defun make-temporal-amount-of-stuff (time stuff)
  "Abstracting the creation of this to accomodate conceptual sifts"
  (define-or-find-individual 'temporal-amount-of-stuff
      :measurement time
      :stuff stuff))


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


