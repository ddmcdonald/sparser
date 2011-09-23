;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "inc terms"
;;;   Module:  "model;core:companies:"
;;;  version:  February 2005

;; initiated 5/25/93 v2.3. 12/7/94 added String printer
;; 8/11/95 added "<cap'd-word>, <inc-term>".  10/30 tweeked string printer.
;; 12/12 added autodef.  1/5/96 added the obvious other cs rule  2/14/05 Revised
;; the binding call in Add-inc-term-to-company-name to accommodate psi.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  inc-term
  :instantiates self
  :specializes name
  :binds ((name :primitive word))
  :index (:permanent  :key name)
  :realization (:word name))


;;;-----------------------
;;; simple string printer
;;;-----------------------

(defun string/inc-term (ic)
  (let ((name (value-of 'name ic)))
    (etypecase name
      (word (word-pname name))
      (polyword (pw-pname name)))))


;;;---------
;;; autodef
;;;---------

(defun define-incorporation-term (string)
  (define-individual 'inc-term :name string))

(define-autodef-data  'inc-term
  :display-string "incorporation terms"
  :form 'define-incorporation-term
  :dossier "dossiers;inc terms"
  :module *companies*
  :description "A word or polyword (especially an acronym or set of initials) that names a kind of incorporation or similar notion. These are definitive internal evidence that a capitalized sequence is a company. The invariably occur at the end of the sequence."
  :examples "\"Inc.\", \"G.m.b.H.\"" )



;;;---------------
;;; context rules
;;;---------------

(def-cfr comma-inc ("," inc-term)
  :form appositive-prefix
  :referent (:daughter right-edge))


(def-cfr company (capitalized-word comma-inc)
  :form np
  :referent (:function inc-term-recognizes-company
                       left-edge right-edge))

(def-cfr company (name comma-inc)
  :form np
  :referent (:function inc-term-recognizes-company
                       left-edge right-edge))


(def-cfr company (company comma-inc)
  ;; This rule applies if we've seen the company without its incorporation
  ;; term before we've seen it in its full form.
  :form np
  :referent (:function add-inc-term-to-company-name
                       left-edge right-edge))

(def-cfr company (company inc-term)
  ;; This rule applies if we've seen the company without its incorporation
  ;; term before we've seen it in its full form.
  :form np
  :referent (:function add-inc-term-to-company-name
                       left-edge right-edge))



(defun inc-term-recognizes-company (word/name inc-term)
  (let ((company (interpret-name-as-company/aux word/name)))
    (add-inc-term-to-company-name company inc-term)))

(defun add-inc-term-to-company-name (company inc-term)
  (let ((name (value-of 'name company)))
    (when name
      ;; //// This isn't enough to get the inc-term
      ;; to show up in the print-form of the company.
      (add-binding-to name 'inc-term inc-term))
    company ))

