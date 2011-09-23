;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;categories:"
;;;  Version:   1.3 September 1992

;; initiated 6/90
;; 1.1 (v1.5) added new fields to handle the new rule regime
;; 1.2 (7/16/92 v2.3) Drastically adjusted the field list to fit the
;;       new representation regime -- replaced 'unit' with 'label',
;;       which subsumed the symbol and rule-set fields
;; 1.3 (9/1 v2.3) gutted the fields in the object down to zip (all included
;;       from 'label') and moved them to objects;model:categories:object
;;       to make 'referential-category' that has more slots than this one
;;       used to.

(in-package :sparser)



(defstruct (category
            (:include label)
            (:conc-name #:cat-)
            (:print-function print-category-structures))

  )

