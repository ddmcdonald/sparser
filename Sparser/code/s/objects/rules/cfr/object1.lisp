;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "object"
;;;    Module:   "objects;rules:cfr:"   ;; "context free rules"
;;;   Version:   1.4 February 2005

;; 1.1  (v1.5) added new fields to handle the new rule regime
;; 1.2  (1/29 v1.8) Moved in Binary-rule?
;; 1.3  (7/30 v1.8.6) Added Polyword-rule?
;; 1.4  (2/16/98) added 'schema' field to cfrs.
;;      (2/7/05) added Unary-rule?

(in-package :sparser)


(defstruct (cfr
            (:print-function print-cfr-structure))
  symbol
  category    ;; the lhs ("parent")
  rhs         ;; ordered list of categories or words
  completion  ;; a specialized expression or structure
  form        ;; the form category of the parent
  relation    ;; the grammatical relation this rule reflects
  referent    ;; the model object the edge will denote
  schema      ;; the case that spawned this rule when it comes from an etf
  plist
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
  (member :polyword (cfr-plist cfr)))


(defun has-property/cfr (cfr tag)
  (let ((plist (cfr-plist cfr)))
    (when plist
      (cadr (member tag plist)))))
