;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "comparative phrases"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; initiated 1/16/96

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  hack-comparative-marker
  :instantiates self
  :specializes nil
  :binds ((name  (:primitive word polyword)))
  :index (:permanent :key name)
  :realization (:word name))


;;--- autodef

(defun define-hack-comparative-marker (string)
  (define-individual 'hack-comparative-marker
    :name string))

(define-autodef-data  'hack-comparative-marker
  :display-string "comparative indicator"
  :form 'define-hack-comparative-marker
  :dossier "dossiers;financial data items"
  :module *ern*
  :description "This is a bit of a hack. This is a word or polyword that typically occurs between a 'current' result and the report of 'comparative' result for the comparable period before this one. Such words/polywords would probably have a very different (content-full) treatment in a proper model of these comparatives."
  :examples "\"compared to\", \"vs.\"" )

