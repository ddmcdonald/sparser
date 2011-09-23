;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2011  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "form"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   6.5 August 2011

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
        (form-object
         (when form (resolve/make form :source :def-category)))
        (decoded-referent-exp
         (when referent (resolve-referent-expression referent))))
    
    (let ((existing-cfr (if (null (cdr rhs)) ;; unary rule
                          (lookup/cfr lhs rhs)
                          (lookup/cfr nil rhs))))

      (if existing-cfr
        (if (redefinition-of-rule lhs existing-cfr)
          (then
            ;; pick out the rule with the matching lhs (when multiple
            ;; lhs are allowed) and replace its form and referent
            (changes-to-known-rule existing-cfr
                                   lhs
                                   form-object
                                   decoded-referent-exp))
          (duplication-check
           ;; its a new lhs for the rhs so check that it's allowed
           existing-cfr lhs rhs form-object decoded-referent-exp :def-cfr))

        (else
          (construct-cfr lhs
                         rhs
                         form-object
                         decoded-referent-exp
                         :def-cfr
                         schema ))))))

