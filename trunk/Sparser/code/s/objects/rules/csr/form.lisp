;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "form"
;;;    Module:   "objects;rules:csr:"
;;;   Version:   February 1992     

;; (2/20/92 v2.2) Changed the calls so that the "source"
;;     could be passed through to the grammar module registry.

(in-package :sparser)


(defun define-csr (daughter
                   parent
                   &key right-context left-context
                        form referent
                        source )

  ;; This form takes only objects and does no translations.
  ;; It is assumed to only be called internally to object-defining
  ;; routines, rather than at toplevel.

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

    cfr ))




(defun def-csr/expr (lhs-label rhs-label
                     &key left-context right-context
                          form-exp referent-exp )
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

  (let ((lhs (resolve/make lhs-label :source :def-category))
        (rhs (resolve/make rhs-label :source :def-category))
        (lc (when left-context
              (resolve/make left-context :source :def-category)))
        (rc (when right-context
              (resolve/make right-context :source :def-category)))
        (form (when form-exp
                (resolve/make form-exp :source :def-category)))
        (referent (resolve-referent-expression referent-exp)))

    (define-csr lhs rhs
      :right-context rc   :left-context lc
      :form form
      :referent referent
      :source :def-csr )))

