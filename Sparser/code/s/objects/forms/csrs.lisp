;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "csrs"                 "context sensitive rules"
;;;    Module:   "grammar;forms:"
;;;   Version:   1.2  January 1992

;; 1.1 (1/16 v1.8) Changed the routine that interpreted referent expressions
;;     to be the same as for binary rules.
;; 1.2 (2/20/92 v2.2) moved Def-csr/expr to objects;rules:csr

(in-package :sparser)


(defmacro def-csr (lhs-label rhs-label ;&rest keys-and-values)
                   &key left-context right-context
                        form referent )

  "A constituent labeled with the left-hand-side label is rewritten
   as (gains the parent edge) the right-hand-side label whenever
   it appears either after a constituent indicated by the left-context
   or before a constituent indicated by the right-context."
  
  `(def-csr/expr ',lhs-label
                 ',rhs-label
                 :left-context  ',left-context
                 :right-context ',right-context
                 :form-exp      ',form
                 :referent-exp  ',referent ))

