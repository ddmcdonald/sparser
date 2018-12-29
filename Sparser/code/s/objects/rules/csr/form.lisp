;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2018 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "form"
;;;    Module:   "objects;rules:csr:"
;;;   Version:   December 2018

;; (2/20/92 v2.2) Changed the calls so that the "source"
;;     could be passed through to the grammar module registry.

(in-package :sparser)


(defun define-csr (daughter
                   parent
                   &key right-context left-context
                        form referent
                        source )

  "Called by def-csr/expr to build the rule. Structurally, context-sensitive
   rules are the same as binary context free rules. The difference lies
   in the information in the completion field of the rule.
   See context-sensitive-rule-completion for the details."

  (unless source
    (setq source :define-csr))

  (let ((cfr
         (define-cfr parent
                     (cond (right-context
                            (list daughter right-context))
                           (left-context
                            (list left-context daughter)))
            :form form
            :referent referent
            :source source)))

    (setf (cfr-completion cfr)
          (cons (cond (left-context  :right-daughter)
                      (right-context :left-daughter))
                parent))

    (remove-tag :semantic-rule cfr) ;; put on by construct-cfr
    (setf (get-tag :context-sensitive-rule cfr) t)

    cfr ))




(defun def-csr/expr (lhs-label rhs-label
                     &key left-context right-context
                       form-exp referent-exp )
  
  "Invoked from the def-csr macro in objects/forms/csrs.lisp.
   Does data checks and sets up the call to define-csr with the
   correct data given the direction of the context."
  
  (when (and left-context
             right-context)
    (error "A context-sensitive phrase structure rule is only allowed ~
            to have ONE context~%specification.  Either :left-context ~
            or :right-context.~%   The rule ~A -> ~A has both:~
            ~%     left-context: ~A~
            ~%    right-context: ~A" lhs-label rhs-label
           left-context right-context))

  (unless (or left-context right-context)
    (error "A context-sensitive rule must have either a :left-context ~
            or a :right-context.~%   ~A -> ~A"
           lhs-label rhs-label))

  (let ((lhs (resolve/make lhs-label))
        (rhs (resolve/make rhs-label))
        (lc (when left-context (resolve/make left-context)))
        (rc (when right-context (resolve/make right-context)))
        (form (when form-exp (resolve/make form-exp)))
        (referent (resolve-referent-expression referent-exp)))

    (define-csr lhs rhs
      :right-context rc   :left-context lc
      :form form
      :referent referent
      :source :def-csr )))

