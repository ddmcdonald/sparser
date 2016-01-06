;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "switches"
;;;  Module: "grammar/model/sl/biology/
;;; version: November 2014

;; Initiated 11/12/14. Starting giving it content 3/10/15

(in-package :sparser)


;; The Ras switch is a two state system / has two alternative states
;; Like other two-state systems (a lightbulb), 
;;   one of them is 'on', the other is 'off'
;; A switch has (usually) two states.
; in terms:  (noun "state" :super bio-entity) /// of a system

;; Something is in this state, e.g. Ras, the traffc light


(define-category switch-state
  :specializes state
  :binds ((name :primitive word)))

(defun define-switch-state (name)
  (find-or-make-individual 'switch-state :name name))

(defparameter *on-state* (define-switch-state "on"))
(defparameter *off-state* (define-switch-state "off"))

  
;; "active" is in modifiers
;; "inactive" is in terms


;; Individual Ras molecules are in a state
(define-category protein-in-a-state
  :specializes abstract
  :binds ((protein protein)
          (state switch-state)))
#|
(specialize-category 
  :category protein-in-a-state
  :new-name Ras-in-a-state
  :bind (protein (get-protein "Ras")))

|#

;;(np-head "switch") ;;/// trivial standin

