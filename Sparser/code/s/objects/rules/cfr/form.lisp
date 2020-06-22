;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2011-2020  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "form"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   June 2020

;; 6.0 (9/4/92 v2.3) Reworked the definition for parsimony with other cases
;;      and to have form and referent redone for already existing rules
;; 6.1 (12/21) Added option to allow duplications and redesigned the
;;      duplication check, which looked like it wouldn't work for the polywords
;;      it was designed for.
;; 6.2 (3/9/93) changed update on known rule to use a subroutine
;;     (8/17) changed the subroutine's arguments
;; 6.3 (8/27) renamed the calls that handle possible duplication and
;;      made the threading more obvious
;; 6.4 (4/25/95) Changed the lookup call that checks for duplicate rules
;;      because it wasn't working, with the effect that the actual dup. check
;;      was being done in the Multiply, with a reversed set of args.
;; 6.5 (8/3/11) Added a schema keyword so the default can be overriden.
;; 6.6 (3/18/13) Refactored def-cfr/expr to break out define-cfr/resolved so
;;      there's a resolved entry point with the duplicate check
;; (1/18/16) Somewhere along the line, the ability to make multiple rules
;;   (with different referents) for the same word was lost. Put it back.

(in-package :sparser)


;;;-----------------------------
;;; expansion of the macro form
;;;-----------------------------

(defun def-cfr/expr (lhs-expression
                     rhs-expressions
                     &key form
                          referent
                          schema )

  ;; Called as the expansion of the macro def-cfr, and by the function
  ;; def-cfr/multiple-rhs/expr which expands def-cfr/multiple-rhs (and
  ;; does not allow form or referent arguments!)
  ;;   Takes expressions (i.e. symbols acting as names, lists, and
  ;; strings) as its arguments. Checks that it's not an illegal
  ;; duplication of a rhs and passes it through to construct-cfr.
  
  (let ((lhs (resolve/make lhs-expression :source :def-category))
        (rhs (if (and (eq 1 (length rhs-expressions))
                      (stringp (first rhs-expressions))
                      (not-all-same-character-type (first rhs-expressions)))
               (list (or (polyword-named (first rhs-expressions))
                         (define-polyword/expr (first rhs-expressions))))
               (mapcar #'resolve/make rhs-expressions)))
        (form-object (and form (resolve/make form :source :def-category)))
        (decoded-referent-exp (resolve-referent-expression referent)))
    (define-cfr/resolved lhs rhs form-object decoded-referent-exp schema)))


(defun define-cfr/resolved (lhs rhs form-object referent schema)
  (let ((existing-cfr (if (null (cdr rhs)) ;; unary rule
                        (lookup-unary-rule lhs rhs)
                        (lookup-semantic-rule/rhs rhs))))
    (if existing-cfr
      (cond
       ((probably-new-unary-rule? existing-cfr referent)
        (construct-cfr lhs rhs form-object
                       referent :def-cfr schema))
       ((redefinition-of-rule existing-cfr lhs rhs form-object)
        ;; pick out the rule with the matching lhs (when multiple
        ;; lhs are allowed) and replace its form and referent
        (changes-to-known-rule existing-cfr
                               lhs rhs
                               form-object
                               referent
                               nil)) ;; source
       (t (duplication-check
           ;; its a new lhs for the rhs so check that it's allowed
           existing-cfr lhs rhs form-object referent :def-cfr)))

      (else ;; new case of the rhs
       (construct-cfr lhs
                      rhs
                      form-object
                      referent
                      :def-cfr
                      schema )))))

(defun probably-new-unary-rule? (existing-cfr referent)
  "A word can have multiple readings, each represented by its own rule."
  (let* ((rhs (cfr-rhs existing-cfr))
         (unary? (null (cdr rhs)))
         (term (when unary? (car rhs)))
         (word? (when unary? (or (word-p term)
                                 (polyword-p term)))))
    (when word?  
      (not (eq (cfr-referent existing-cfr) referent)))))
