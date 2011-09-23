;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2000 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:  "new decodings"
;;;    Module:  "analyzers;psp:referent:"
;;;   Version:  1.0 March 2000

;; broken out from cases 9/21/93 v2.3
;; 0.1 (10/22) added Decode-var-in-cats-vars, extending the semantics
;;      of bindings a bit.  6/26/94 improved an error stmt
;; 1.0 (2/26/98) Started rewriting everything to work with lattice points.
;;     (3/23/00) Tweaked Decode-binding-exp-pair to appreciate the possibility
;;      of dereferenced individuals/categories in the value-exp field and gave
;;      a serious full-bore treatment to decode-subtype.
;;     (1/7/07) #+ccl'd calls to ed-beep

(in-package :sparser)

;;;--------
;;; cases
;;;--------

(defun decode-head (args)
  (unless (= 1 (length args))
    (break "Expected only one argument to the :head keyword,~
            ~%but got:  ~A" args))

  (let ((laundered-args
         (replace-with-canonical-ref-vars args)))

    (when (null (first laundered-args))
      ;; it isn't one of the standard edge-designating symbols
      (if (null (cdr args))
        (cond ((symbolp (first args))
               ;; There's only one symbol, so is it the name of a catgory?
               (let ((category (category-named (first args))))
                 (unless category
                   (break "Expected this symbol, ~A, to name a category~
                           ~%since it is the argument of a :head referent ~
                           expression, but it doesn't."
                          (first args)))
                 (setq laundered-args (list category))))
              ((or (referential-category-p (first args))
                   (mixin-category-p (first args)))
               (setq laundered-args (list (first args))))
              ((individual-p (first args))
               (setq laundered-args (list (first args))))
              (t 
               (break "This argument to the :Head referent expression:~
                       ~%  ~A~
                       ~%doesn't make sense." (first args))))

        (break "These arguments to the :Head referent expression:~
                ~%  ~A~
                ~%don't make sense." args)))

    `(:head ,@laundered-args)  ))




(defun decode-instantiate-individual (args)
  (unless (= 1 (length args))
    (break "Expected only one argument to the :daughter keyword,~
            ~%but got:  ~A" args))
  (let* ((arg (first args))
         (launders? (canonical-ref-var arg))) ;; e.g. "left-edge"

    (if launders?
      `(:instantiate-individual ,launders?)

      (etypecase arg
        (symbol
         (let ((category (category-named arg)))
           (unless category
             (error "Any non-canonical symbol to be instantiated as ~
                     an individual in a referent action~
                     ~%is expected to name a category. ~A is not."
                    arg))
           `(:instantiate-individual ,category) ))))))




(defun decode-instantiate-individual-with-binding (args)
  ;; e.g. 
  ;;   :instantiate-individual  position-at-co
  ;;      :with (title left-edge
  ;;             company right-edge)
  ;;
  ;; There can be any number of variable-value pairs (in plist format)
  ;; after the :with keyword.  This compound referent expression is
  ;; checked for explicitly and given its special packaging in
  ;; Pull-out-sub-referent-expression

  (let ((category-symbol (first args))
        (binding-exps (caddr args))
        category  binding-instructions )

    (when (canonical-ref-var category-symbol)
      (error "The argument to :instantiate-individual has to be a ~
              category,~%~A is not." (first args)))

    (unless (symbolp category-symbol)
      (error "The argument to :instantiate-individual should be a symbol ~
              that names~%a category.  ~A is not." (first args)))

    (setq category (category-named category-symbol))
    (unless category
      (error "Undefined category in :instantiate-individual action:~
              ~%  ~A" category-symbol))

    (setq binding-instructions
          (do ((variable-name (first binding-exps)
                              (first rest-of-bindings))
               (value-exp (second binding-exps)
                          (second rest-of-bindings))
               (rest-of-bindings (cddr binding-exps)
                                 (cddr rest-of-bindings))
               pairs )
              ((null variable-name)
               (nreverse pairs))

            (push (decode-binding-exp-pair variable-name
                                           value-exp
                                           category)
                  pairs)))

    `(:instantiate-individual-with-binding ,category
                                           ,@binding-instructions)  ))



(defun decode-binds (args)
  ;; e.g.
  ;;  (:bind (modifier right-edge
  ;;          foo left-edge))

  (let ((pairs  ;; The args are a plist
         (dereference-binding-expressions args)))

    (if (second pairs) ;; is there more than one
      `(:bindings ,pairs)
      `(:binding ,@pairs))))


(defun dereference-binding-expressions (variable-value-pairs)
  ;; subroutine to Decode-binds
  (let ( variable-expression  variable
         value-expression  value
         result-pairs )
    (dolist (pair variable-value-pairs)
      (setq variable-expression (car pair)
            value-expression (if (consp (cdr pair))
                               (cadr pair)   ;; e.g. (var value)
                               (cdr pair)))  ;; e.g. (var . value)

      (push (decode-binding-exp-pair variable-expression
                                     value-expression)
            result-pairs))

    (nreverse result-pairs)))



(defun decode-binding-exp-pair (var-symbol value-exp
                                &optional category )
  ;; subroutine of Dereference-binding-expressions and
  ;; Decode-instantiate-individual-with-binding
  (let ( variable value )
    (unless (symbolp var-symbol)
      (error "The variable in a bind action should be a symbol~
              ~A is not." var-symbol))

    (setq variable
          (if category
            (find-variable-for-category var-symbol category)
            (lambda-variable-named var-symbol)))

    (unless variable
      (unless category
        (error "Cannot find a variable corresponding to: ~A"
               var-symbol))
      (unless (setq variable
                    (decode-var-in-cats-vars var-symbol
                                             category))
        (error "Undefined variable in referent: ~A" var-symbol)))

    (when (listp variable)
      #+ccl(ed-beep)
      #+ccl(ed-beep)
      (format t "~&~%!! the variable named ~A can't be uniquely ~
                 dereferenced ~%because it has several versions ~
                 with different restrictions~%and no category is ~
                 available" var-symbol)
      (setq variable (cadr variable)))

    (setq value 
          (if (or (referential-category-p value-exp)
                  (individual-p value-exp))
            value-exp
            (canonical-ref-var value-exp)))

    (unless value
      (error "The value ~A in the bind action ~A - ~A~
              ~%is not one of the canonical value terms"
             value-exp var-symbol value-exp))

    `(,variable . ,value) ))




(defun decode-var-in-cats-vars (var-name category)
  ;; A recursive search. If this variable isn't bound by this
  ;; category, maybe it's bound by one of the categories from
  ;; which this one is constructed.  We look through the value-
  ;; restrictions of this category's variables and check whether
  ;; any of those categories bind this variable.
  (let ((vars (cat-slots category))
        v/r  variable )

    (dolist (var vars)
      (setq v/r (var-value-restriction var))
      (etypecase v/r
        (referential-category
         (setq variable
               (find-variable-for-category var-name v/r)))
        (list ;; e.g. (:primitive number)
         ))
      (when variable
        (return-from decode-var-in-cats-vars variable)))
    nil ))




(defun decode-subtype (args)
  (let ((inner-expansion
         (resolve-referent-expression (car args))))
    `(:subtype ,inner-expansion)))

