;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "interventions"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  January 2021

;; Initiated 1/13/21 to let us experiment with extensions to the suite
;; of control structures we use to apply rules, etc.

(in-package :sparser)

#| We salt the standard two-phase 'island-driven' control structure
with calls to one or more highly parameterized 'intervention' functions
according to what processessing we want to be completed before engaging
these additional operations.
  This mechanism lets us experiment with alternatives in the control
structure freely while staying tentative about whether we are doing
operations in the appropriate order.

The control parameters should be define in this file. The action code
can of course be anywhere. The intervention functions are organized as
as series of (when <parameter> <do action>) clauses, which will let us
pose self-contradictory operations as the same time driven by different
values of the parameters

|#

(defparameter *introduce-likely-prep-args* nil
  "Sweep over the post phrase one debris for standed preposition
   and uncomposed prepositional phrases and write rules to handle
   them.")


(defun operations-after-phase-one (sentence)
  (sweep-debris-in-sentence sentence)
  (when *introduce-likely-prep-args*
    )
  )
