;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994.3-13  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "cfrs"               ; "context free rules"
;;;    Module:   "grammar;forms:"
;;;   Version:   1.5 April 2013

(in-package :sparser)

;; Change Log:
;;  1.1  Added the multi-RHS define form and the deletion routines
;;  1.2  Added undef-cfr, corresponding to the multi-rhs case.
;;  1.3  (10/90 v1.5) Dealt out all the substantial routines to the cfr directory
;;  1.4  (7/21/92 v2.3) added stub for relation keyword.
;;  1.5  (4/1/13) Added argument for schema

(export '(def-cfr
          def-cfr/multiple-rhs
          ))

;;;---------------
;;; standard form
;;;---------------

(defmacro def-cfr (lhs-category
                   rhs-list-of-categories
                   &key form
                        relation
                        referent
                        schema)

  (declare (ignore relation))  ;; 7/21 to be fleshed out later

  `(def-cfr/expr ',lhs-category
                 ',rhs-list-of-categories
                 :form ',form
                 :referent ',referent
                 :schema  ',schema) )


;;;--------------
;;; multiple RHS
;;;--------------

(defmacro def-cfr/multiple-rhs (lhs-category
                                list-of-rhss)
  `(def-cfr/multiple-rhs/expr ',lhs-category
                              ',list-of-rhss) )


(defun def-cfr/multiple-rhs/expr (lhs-category
                                  list-of-rhss)
  (dolist (rhs list-of-rhss)
    (def-cfr/expr lhs-category rhs)))

