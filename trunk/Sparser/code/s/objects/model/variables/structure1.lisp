;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:variables:"
;;;  version:  July 2009

;; broken out from [object] file 8/12/94
;; 1.0 (6/16/09) Switching to a lexical treatment and tighter
;;    integration with indexing of psi. Removed binding-sites and
;;    lattice-position
;; 1.1 (7/20/09) Added notion of an 'anonymous-variable' to handle
;;    the case where a category or individual simply cannot be
;;    determined. Motivating case was a form rule.  7/23 added category
;;    backpointer.

(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (lambda-variable
            (:include unit)
            (:conc-name #:var-)
            (:print-function print-lambda-variable-structure))

  name
  value-restriction
  instances ;; list of bindings -- find/binding
  v+v-table ;; alist of v+v by value
  category  ;; backpointer to the category that (lexically) defines it
  )


(defstruct (anonymous-variable
            (:include unit)
            (:conc-name #:avar-)
            (:print-function print-anonymous-variable-structure))
  name
  )
