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

  (uplinks (make-hash-table)) ;; a hash table. 
  ;;  1) If binds=nil, then the keys are categories, and the values are dli's for the pairwise joins
  ;;  2) if binds is not null, then the keys are vv items, and the values are the dli for the one less binding


  shadow
  )

(defun indiv-binds (i) (indiv-old-binds i))
(defun set-indiv-binds (i v)(setf (indiv-old-binds i) v))
(defsetf indiv-binds set-indiv-binds)