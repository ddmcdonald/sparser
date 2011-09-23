;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "form rules"
;;;    Module:   "objects;forms:"
;;;   Version:   0.2 December 1994

;; initiated 9/3/92 v2.3
;; 0.1 (10/12) changed the arguments
;; 0.2 (6/6/93) ditto -- added new-category
;;     (12/30/94) added Def-syntax-rule

(in-package :sparser)



(defmacro def-form-rule (rhs-labels
                         &key form referent new-category)

  `(def-form-rule/expr ',rhs-labels
     :form ',form
     :referent ',referent
     :new-category ',new-category )  )



(defmacro def-syntax-rule (;;lhs  ??use as variant??
                           rhs-labels
                           &key head form referent)

  `(def-syntax-rule/expr ',rhs-labels
     :head ',head
     :form ',form
     :referent ',referent )  )

