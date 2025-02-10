;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2010,2024  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "categories"
;;;    Module:   "objects;forms:"
;;;   Version:   March 2024

;; 1.1 (2/20/92 v2.2) Changed the call out of the macro so the source
;;     of the category could be disentangled.
;; 1.2 (7/16 v2.3) moved in the Define-category macro, which now dispatches
;; 1.3 (10/13) added form for define-mixin-category
;; 1.4 (9/28/93) changed the condition on the choice of definition for Def-category
;;      to something more precise

(in-package :sparser)

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
    `(define-category/expr ',symbol ',full-args #+sbcl (sb-c:source-location))
    `(find-or-make-category-object ',symbol :define-category #+sbcl (sb-c:source-location))))

(defmacro define-mixin-category (symbol &rest full-args)
  `(define-mixin-category/expr ',symbol ',full-args))



;;;-------------------------------------------------------
;;; version used for categories that are purely syntactic
;;;-------------------------------------------------------

(defmacro def-category (symbol &rest keys)
  (unless (member :lattice-position keys)
    (break "check need to switch to defINE-category~
                ~%  or put in :lattice-position :non-terminal"))
  `(def-category/expr/toplevel ',symbol
       ,@(quote-every-other-one keys :odd)))

#| def-category grep results 10/5/21
grammar/rules/sectionizing/header.lisp:(def-category header :lattice-position :non-terminal)
grammar/rules/traversal/angle-brackets.lisp:(def-category  angle-brackets :lattice-position :non-terminal)
grammar/rules/traversal/other-brackets.lisp:(def-category  curly-brackets :lattice-position :non-terminal)
grammar/rules/traversal/other-brackets.lisp:(def-category  square-brackets :lattice-position :non-terminal)
grammar/rules/traversal/parenthesis.lisp:(def-category  parentheses :lattice-position :non-terminal)
grammar/rules/traversal/quotations.lisp:(def-category  quotation :lattice-position :non-terminal)
grammar/rules/traversal/single-capitalized-word.lisp:(def-category  single-capitalized-word-in-parentheses 
grammar/model/core/companies/defco.lisp:(def-category  DefCo :lattice-position :non-terminal)
grammar/model/core/companies/indicators.lisp:(def-category  category-of-company/proper-name)
grammar/model/core/companies/thisco.lisp:(def-category this-company :lattice-position :non-terminal)
grammar/model/core/companies/thisco.lisp:(def-category  ThisCo :lattice-position :non-terminal)
grammar/model/core/companies/thisco.lisp:(def-category ThisCo-bar :lattice-position :non-terminal)
grammar/model/core/people/people-rules.lisp:(def-category and/person :lattice-position :non-terminal)
grammar/model/core/people/people-rules.lisp:(def-category and/name   :lattice-position :non-terminal)
grammar/model/core/titles/def-form.lisp:(def-category  title/caps        :lattice-position :non-terminal)
grammar/model/core/titles/def-form.lisp:(def-category  title/caps/plural :lattice-position :non-terminal)
grammar/model/sl/jv/patches.lisp:(def-category not-yet :lattice-position :non-terminal)
grammar/model/core/companies/subsid/subsidiary-nouns.lisp:(def-category subsidiary-head :lattice-position :non-terminal)
|#

