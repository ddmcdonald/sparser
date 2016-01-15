;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "object"
;;;    Module:   "objects;rules:cfr:"   ;; "context free rules"
;;;   Version:   1.4 September 2013

;; 1.1  (v1.5) added new fields to handle the new rule regime
;; 1.2  (1/29 v1.8) Moved in Binary-rule?
;; 1.3  (7/30 v1.8.6) Added Polyword-rule?
;; 1.4  (2/16/98) added 'schema' field to cfrs.
;;      (2/7/05) added Unary-rule?
;;      (9/16/13) added category-to-apply
;; 1/5/2015 MAJOR CHANGE -- added new field rhs-forms to cfrs, and fill it from the ETF schema -- used to check syntactic plausibility of rule applications

(in-package :sparser)


(defstruct (cfr
            (:include unit)
            (:print-function print-cfr-structure))
  symbol
  category    ;; the lhs ("parent")
  rhs         ;; ordered list of categories or words
  rhs-forms   ;; orderd list of forms for the rhs (first start on syntax)
  completion  ;; a specialized expression or structure
  form        ;; the form category of the parent
  relation    ;; the grammatical relation this rule reflects
  referent    ;; the model object the edge will denote
  schema      ;; the case that spawned this rule when it comes from an etf
  )

;;;------------
;;; predicates
;;;------------

(defun binary-rule? (cfr)
  (and (null (cfr-completion cfr))
       (= 2 (length (cfr-rhs cfr)))))

(defun unary-rule? (cfr)
  (and (null (cfr-completion cfr))
       (= 1 (length (cfr-rhs cfr)))))

(defun polyword-rule? (cfr)
  (get-tag :polyword cfr))

;;;----------
;;; decoders
;;;----------

(defun category-to-apply (rule)
  "The rule was retrieved by hand and is being used for its parts.
This sorts out what to use as the category in the unusual cases."
  (ecase (cfr-completion rule)
    ((nil) (cfr-category rule))
    (:right-edge (form-rule-head-category rule :right-edge))
    (:left-edge (form-rule-head-category rule :left-edge))))
