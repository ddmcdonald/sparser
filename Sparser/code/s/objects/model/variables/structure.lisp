;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2013-2017 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:variables:"
;;;  version:  January 2017

;; broken out from [object] file 8/12/94
;; 1.0 (6/16/09) Switching to a lexical treatment and tighter
;;    integration with indexing of psi. Removed binding-sites and
;;    lattice-position
;; 1.1 (7/20/09) Added notion of an 'anonymous-variable' to handle
;;    the case where a category or individual simply cannot be
;;    determined. Motivating case was a form rule.  7/23 added category
;;    backpointer.
;;   (11/13/13) Added 'shadow' slot for use in methods 
;; 3/22/2015 speed up access to var-instances by using hash table
;; 4/20/2015 change var-instance hash-table to use #'equal and not #'eq
;;   Deal with strings as values


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

  (instances (make-hash-table :test #'equal :size 100))
  ;; list of bindings -- find/binding
  ;; using #'equal because some values are lists
  
  v+v-table ;; alist of v+v by value
  category  ;; backpointer to the category that (lexically) defines it

  )

(defstruct (disjunctive-lambda-variable
	     (:include lambda-variable)
	     (:conc-name #:dvar-)
	     (:print-function print-disjunctive-lambda-variable-structure))
  variables )
  


(defstruct (anonymous-variable
            (:include unit)
            (:conc-name #:avar-)
            (:print-function print-anonymous-variable-structure))
  name )


(defmethod pname ((lv lambda-variable))
  (var-name lv))

(defmethod pname ((lv anonymous-variable))
  (avar-name lv))
