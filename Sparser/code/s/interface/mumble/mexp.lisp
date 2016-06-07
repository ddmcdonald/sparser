;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;     File: "mexp"
;;;   Module: "interface;mumble;"
;;;  Version: March 2016

;;; M-expressions are S-expressions that are compiled into DTNs.

(in-package :mumble)

(defgeneric augment-context (context sub-context)
  (:method ((context null) sub-context)
    (list sub-context))
  (:method ((context cons) sub-context)
    (cons sub-context context))
  #+spire
  (:method ((context symbol) sub-context)
    (augment-context (spire::expr->container context) sub-context))
  #+spire
  (:method ((context spire::container) sub-context)
    (spire::add-sub-context context sub-context)))

(defgeneric find-in-context (object context)
  (:method (object (context list))
    (cdr (assoc object context :test #'string-equal)))
  #+spire
  (:method (object (context symbol))
    (when context
      (find-in-context object (spire::expr->container context))))
  #+spire
  (:method (object (context spire::container))
    (car (spire::q `(isa ?x ,object) :context context :answer '?x))))

(defgeneric mexp-w/head (expr head &key context &allow-other-keys))
(defgeneric mexp (expr &key context &allow-other-keys)
  (:documentation "Compile a Mumble expression to a realizable phrase.
Compound expressions are punted to MEXP-W/HEAD. Methods should return
two values: the compiled expression and a possibly augmented context.")
  (:method ((expr null) &key context)
    (values nil context))
  (:method ((expr cons) &rest args)
    (apply #'mexp-w/head expr (car expr) args)))

;; Emacs: (put 'define-mexp 'common-lisp-indent-function 1)
(defmacro define-mexp (mexp expr &key context &aux (head (make-symbol "HEAD"))
                       (context (if context
                                  `(augment-context context ,context)
                                  'context)))
  "Make MEXP compile to EXPR."
  (if (atom mexp)
    `(defmethod mexp ((expr (eql ',mexp)) &rest args &key context)
       (apply #'mexp ,expr
              :context ,context
              args))
    `(defmethod mexp-w/head ((expr cons) (head (eql ',(car mexp))) &rest args &key context)
       (destructuring-bind (,head ,@(cdr mexp)) expr
         (assert (eql ,head head))
         (apply #'mexp ,expr
                :context ,context
                args)))))

;;; Mumble realizations via derivation trees.

(defmethod mexp ((expr derivation-tree-node) &key context)
  "DTNs are the target language, and so compile to themselves."
  (values expr context))

(defmethod mexp ((expr mobject) &key context)
  "Mumble objects (e.g., words) also compile to themselves."
  (values expr context))

(defmethod mexp ((expr string) &key context)
  "Strings denote words."
  (values (make-dtn :referent (find-word expr)
                    :resource (or (get-lexicalized-phrase expr)
                                  (noun expr)))
          context))

(defmethod mexp ((expr symbol) &rest args &key context)
  "Symbols name either individuals in the current context or Sparser categories."
  (apply #'mexp (or (find-in-context expr context)
                    (sp::category-named (sp::sparser-symbol expr) t))
         args))

(defmethod mexp ((expr sp::category) &key context)
  "Sparser categories denote themselves, realized by name."
  (values (make-dtn :referent expr
                    :resource (get-lexicalized-phrase (sp::cat-symbol expr)))
          context))

(defmethod mexp ((expr sp::individual) &key context)
  "Individuals name themselves."
  (values (neuter-&-third-person
           (singular
            (make-dtn :referent expr
                      :resource (let ((name (sp::value-of 'sp::name expr)))
                                  (if name
                                    (noun (sp::get-mumble-word-for-sparser-word name))
                                    (get-lexicalized-phrase (sp::pname-for expr)))))))
          context))

(defgeneric mexp-type (type)
  (:documentation "Return a realizable type representation.")
  (:method ((type string)) type)
  (:method ((type symbol)) type)
  (:method ((type derivation-tree-node)) (mexp-type (referent type)))
  (:method ((type sp::individual)) (mexp-type (sp::itype-of type)))
  (:method ((type sp::category)) (sp::cat-symbol type)))

(defun in/definite-mexp (expr &key context)
  "Construct a DTN for a(n in)definite object of a given type."
  (destructuring-bind (article type) expr
    (let* ((type (mexp-type type))
           (type-name (string-downcase type))
           (object-name (format nil "~(~a~) ~a" article type-name))
           (object (sp::make-temporary-individual type :name object-name))
           (dtn (make-dtn :referent object
                          :resource (get-lexicalized-phrase type-name))))
      (values dtn context))))

(macrolet ((define-article (article in/definite)
             `(defmethod mexp-w/head ((expr cons) (head (eql ',article)) &key context)
                (multiple-value-bind (expr context)
                    (in/definite-mexp expr :context context)
                  (values (neuter-&-third-person (singular (,in/definite expr))) context)))))
  (define-article a initially-indefinite)
  (define-article any initially-indefinite)
  (define-article the always-definite))

(defmethod mexp-w/head ((expr cons) (head (eql 'and)) &key context)
  "Compile a conjunction. Only handles two-item conjunctions right now,
but could easily be extended to use CONJUNCTION-S for higher arities."
  (destructuring-bind (operation y x &rest more) expr ; reverse order of conjuncts
    (assert (eql operation head))
    (multiple-value-setq (x context) (mexp x :context context))
    (multiple-value-setq (y context) (mexp y :context context))
    (let* ((conjunction (phrase-named 'two-item-conjunction))
           (dtn (make-dtn :referent `(,x ,y)
                          :resource conjunction)))
      (make-complement-node 'one x dtn)
      (make-complement-node 'two y dtn)
      (if more
        (mexp `(and ,dtn ,@more) :context context)
        (values dtn context)))))

(defmethod mexp-w/head ((expr cons) head &key context)
  "General compound mexpression compiler.
If the operator is fbound, call it with the compiled arguments.
Otherwise, try to compile the head and attach the arguments as
named parameters."
  (destructuring-bind (operation &rest args) expr
    (assert (eq operation head))
    (if (and (symbolp operation)
	     (not (eq (symbol-package operation) (find-package :cl)))
	     (fboundp (sp::mumble-symbol operation)))
      (values (apply (fdefinition (sp::mumble-symbol operation))
                     (mapcar (lambda (arg)
                               (multiple-value-setq (expr context)
                                 (mexp arg :context context)))
                             args))
              context)
      (loop with dtn and i
            initially (multiple-value-setq (dtn context)
                        (mexp operation :context context))
            for (parameter-name value) on args by #'cddr
            do (multiple-value-setq (i context) (mexp value :context context))
               (make-complement-node (sp::mumble-symbol parameter-name) i dtn)
            finally (return (values dtn context))))))

(defun prepositional-location (prep object &key context)
  "E.g., on the table."
  (check-type prep symbol) ; (member in on to)
  (let* ((pp (or (get-lexicalized-phrase prep)
                 (prep (string-downcase (symbol-name prep)))))
         (dtn (make-dtn :referent object
                        :resource pp)))
    (make-complement-node 'p (find-word prep) dtn)
    (make-complement-node 'prep-object object dtn)
    (values dtn context)))

(defun restrict (subject predicate &key context)
  "For restrictive relative clauses, e.g. 'drug that targets KRAS'"
  (make-adjunction-node (make-lexicalized-attachment 'restrictive-relative-clause predicate)
			subject)
  (values subject context))
