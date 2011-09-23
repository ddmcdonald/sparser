;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995,2010  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "categories"
;;;    Module:   "grammar;forms:"
;;;   Version:   1.4 September 1993

;; 1.1 (2/20/92 v2.2) Changed the call out of the macro so the source
;;     of the category could be disentangled.
;; 1.2 (7/16 v2.3) moved in the Define-category macro, which now dispatches
;; 1.3 (10/13) added form for define-mixin-category
;; 1.4 (9/28/93) changed the condition on the choice of definition for Def-category
;;      to something more precise

(in-package :sparser)

;;;-------------------------------------------------------
;;; version used for categories that are purely syntactic
;;;-------------------------------------------------------

(if *include-model-facilities*
  (then
    (defmacro def-category (symbol &rest keys)
      (unless (member :lattice-position keys)
        (ed *file-being-lloaded*)
        (break "check need to switch to defINE-category~
                ~%  or put in :lattice-position :non-terminal"))
      `(def-category/expr/toplevel ',symbol
         ,@(quote-every-second-one keys)) ))
  (else
    (defmacro def-category (symbol)
      `(def-category/expr ',symbol :source :def-category))))



;;;---------------------------------------------------
;;; version for real categories of stuff in the model
;;;---------------------------------------------------

(defmacro define-category (symbol &rest full-args)
  ;; 7/16/92 -- This form is already in wide-spread use in its
  ;; trivial version with only the single argument, symbol. 
  ;;    We make a dispatch here to the expr routine in
  ;; "objects;model:categories:define" whenever there is more
  ;; than that one argument.
  (if full-args
    `(define-category/expr ',symbol ',full-args)
    `(find-or-make-category-object ',symbol :define-category) ))


(defmacro define-mixin-category (symbol &rest full-args)
  `(define-mixin-category/expr ',symbol ',full-args))



