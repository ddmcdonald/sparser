;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1998  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "'total' verbs"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  1.0 July 1998

;; initiated 12/20/95. Elaborated through 1/8/96.
;; 1.0 (7/12/98) reworked for lattice-points. All the consequential rules went
;;      to [value of fin-dat1].

(in-package :sparser)

;;;-----------------------------------
;;; category for the verbs themselves
;;;-----------------------------------

(define-category  financial-datum-value-verb
  :specializes nil
  :instantiates self
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:main-verb name))


;;--- autodef

(defun define-financial-datum-value-verb (string)
  (define-individual 'financial-datum-value-verb
    :name string))

(define-autodef-data 'financial-datum-value-verb
  :module *ern*
  :display-string "value-is verbs"
  :dossier "dossiers;financial data items"
  :form 'define-financial-datum-value-verb
  :description "A verb that takes a financial indicator as its subject and its value as its direct object"
  :examples "\"total\"" )

