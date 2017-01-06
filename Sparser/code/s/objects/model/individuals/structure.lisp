;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1998.2012 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:individuals:"
;;;  version:  December 2012

;; broken out from [object] file 8/12/94
;; (6/30/98) added rnodes field to hold the realization annotations
;; that the individual receives. (12/14/12) Addes shadow to support
;; regular lisp methods.
;; 7/7/2015 added restrictions field to support test for more specific restrictions

(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (individual
            (:include unit)
            (:conc-name #:indiv-)
            (:print-function print-individual-structure))

  id
  type
  old-binds
  bound-in
  rnodes

  (downlinks (make-hash-table))
   ;; A hash-table with keys that are either categories or vv = {variable, category} items
  ;; a category takes us to the dli for the meet with that category,
  ;;  a vv takes us to the lattice point that binds one more variable

  (uplinks ) ;; (make-hash-table :size 4 :test #'eq)) ;; no longer a hash table. 
  ;;  1) If binds=nil, then the keys are categories, and the values are dli's for the pairwise joins
  ;;  2) if binds is not null, then the keys are vv items, and the values are the dli for the one less binding
  ;; (all-subs nil) ;; (make-hash-table :test #'eq)) -obsolete
  (all-supers (make-hash-table :test #'eq)) ;; (make-hash-table :size 30 :test #'eq)
  restrictions ;; the set of all modifiers as dl-vv pairs, 
            ;; that define this dli -- starts with the
            ;; the referential category or conjunctive set of categories that defines a join
            ;; that is at the top of this branch, 
            ;; then adds all bindings (as dli-vv's) that
            ;; distingusih this individual from its bare category parent
  (not-super (make-hash-table :test #'eq)) ;; (make-hash-table :size 100 :test #'eq)

  shadow
  )

(defun indiv-binds (i) (indiv-old-binds i))
(defun set-indiv-binds (i v)(setf (indiv-old-binds i) v))
(defsetf indiv-binds set-indiv-binds)
