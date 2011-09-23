;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "'total' verbs"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1995

;; initiated 12/20/95. Elaborated through 1/8/96

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




;;;----------------------------------------------
;;; 'intermediate' category for the vp they make
;;;----------------------------------------------

(define-category  valued-at-value
  :specializes nil
  :instantiates self
  :binds ((alternative-value)) ;; see specializations below
  :index (:temporary :key value))


;;/// Krisp should be extended to permit alternative keys in its
;; index depending on which one happens to be filled by the rule.
;; Here we have to break the cases out into their own subcategories
;; and specialize the rules accordingly. 
;;   The utility of this is that it maintains a crucial type distinction
;; that is to be propagated up to different fields in the full
;; financial-report relation. 

(define-category  valued-at-value/money
  :specializes valued-at-value
  :instantiates valued-at-value
  :binds ((money . money)
          (amt-per-share . amount-per-share))
  :index (:temporary :key money))

(define-category  valued-at-value/amt-per-share
  :specializes valued-at-value
  :instantiates valued-at-value
  :binds ((amt-per-share . amount-per-share)
          (money . money))
  :index (:temporary :key amt-per-share))



;;;------------------
;;; rules for the vp
;;;------------------

#| The rules for the clause are in [earnings report]  |#

(def-cfr valued-at-value (financial-datum-value-verb money)
  :form vp
  :referent (:instantiate-individual valued-at-value/money
             :with (money right-edge)))

(def-cfr valued-at-value (financial-datum-value-verb amount-per-share)
  :form vp
  :referent (:instantiate-individual valued-at-value/amt-per-share
             :with (amt-per-share right-edge)))


(when-binding money money valued-at-value/money
  :transfer ((alternative-amount . amt-per-share)))

(when-binding amount-per-share amt-per-share valued-at-value/amt-per-share
  :transfer ((alternative-amount . money)))


;;--- special cases for "be"
;;
(def-cfr valued-at-value (be money)
  :form vp
  :referent (:instantiate-individual valued-at-value/money
             :with (money right-edge)))

(def-cfr valued-at-value (be amount-per-share)
  :form vp
  :referent (:instantiate-individual valued-at-value/amt-per-share
             :with (amt-per-share right-edge)))

