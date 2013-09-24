;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2011-2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "form rules"
;;;    Module:   "objects;forms:"
;;;   Version:   0.3 September 2013

;; initiated 9/3/92 v2.3
;; 0.1 (10/12) changed the arguments
;; 0.2 (6/6/93) ditto -- added new-category
;;     (12/30/94) added def-syntax-rule
;; 0.3 (10/27/11) added :head arg to form rules. 4/9/13 added :schema
;;      to syntax rules. 9/18/13 added it to form rules

(in-package :sparser)



(defmacro def-form-rule (rhs-labels
                         &key form head referent new-category
                              schema)

  `(def-form-rule/expr ',rhs-labels
     :form ',form
     :head ',head
     :referent ',referent
     :new-category ',new-category
     :schema ',schema )  )



(defmacro def-syntax-rule (;;lhs  ??use as variant??
                           rhs-labels
                           &key head form referent schema)

  `(def-syntax-rule/expr ',rhs-labels
     :head ',head
     :form ',form
     :referent ',referent
     :schema ',schema )  )

