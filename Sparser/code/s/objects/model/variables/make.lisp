;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,2013-2014,2024 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "form"
;;;   Module:  "objects;model:variables:"
;;;  version:  April 2024

;; initiated 11/18/91  v2.1
;; 1.1 (7/92 v2.3) shifted from gl entries to straight categories
;; 1.2 (8/31) Removed the /check from the category lookup for the
;;     restrictions on variables.
;; 2.0 (6/19/09) Shifts to a lexical treatment, eliminates global indexes.
;;   (7/20) Accommodations for the toplevel form using symbols, first
;;   encountered in the load-order in sl/ambush/checkpoint
;; 2.1 (3/9/13) trying to allow a mix of categories and a primitive
;;    in a value restriction. 
;; 2.2 (4/5/13) Storing free-defined variables with the category's
;;    other binding variables.
;; 2.3 (5/26/13) Changed the variable-restriction category lookup from
;;    the check variant that complains if a category is not yet defined
;;    to resolve-or-make/symbol-to-category which makes it. Everything
;;    goes to referential categories now that the model is ubiquitous,
;;    so the object will just be fleshed out when it's finally encountered.
;;   (11/13/13) Added registration. 12/24/13 Let resolve-variable-restriction
;;    be fed categories directly. 2/1/14 fixed resolve-variable-restriction
;;    treatment of combination of categories and :primitive. 

(in-package :sparser)

;;;-------------------------------------
;;; defining variables from expressions
;;;-------------------------------------

(defun define-lambda-variable (name-symbol
                               restriction-expression
                               category)
  "This is called from define-variables to convert an expression
   for a binding variable to the corresponding object."
  (when (symbolp category)
    (setq category (category-named category t)))

  (let ((*constructing-value-restriction* t))
    (declare (special *constructing-value-restriction*))

    (let ((restriction (resolve-variable-restriction
                        restriction-expression)))

      (let ((v (find/make-lambda-variable-for-category 
                name-symbol restriction category))
            (bindings (cat-slots category)))

        (cond
          ((null bindings)
           (setf (cat-slots category) `(,v)))
          ((memq v bindings))
          (t (tail-cons v bindings)))

        (register-var-name-to-category-list 
         name-symbol v category)

        (catalog-binding-variable v)

        v))))


(defun define-disjunctive-lambda-variable (vars category)
  (let* ((v (find/make-disjunctive-lambda-variable-for-category vars category))
	 (cat (var-category v))
	 (bindings (cat-slots category)))
    (cond
      ((null bindings)
       (setf (cat-slots category) `(,v)))
      ((member v bindings))
      (t (tail-cons v bindings)))
    (register-var-name-to-category-list (var-name v) v category)
    v))
      



(defun resolve-variable-restriction (restriction-expression)
  ;; called from define-lambda-variable to convert expressions
  ;; into objects
  (if restriction-expression
    (typecase restriction-expression
      (list
       (case (first restriction-expression)
         (:or
;          `(:or ,@(mapcar #'resolve-symbol-to-category/check
;                          (rest restriction-expression)) )
          (let ((primitive-section (memq :primitive restriction-expression))
                categories-etc  )
            (do ((item (car (cdr restriction-expression)) (car rest))
                 (rest (cddr restriction-expression) (cdr rest)))
                ((null item))
              (if (eq item :primitive)
                (then
                 ;(push (car rest) categories-etc)
                 ;(push :primitive categories-etc)
                 (return))
                (push (resolve-or-make/symbol-to-category item)
                      categories-etc)))
            (let ((result
                   (or (when (and categories-etc primitive-section)
                         (append (nreverse categories-etc) primitive-section))
                       (nreverse categories-etc)
                       primitive-section)))
              (cons :or result))))

         (:primitive  ;; e.g. "(:lisp-primitive number)"
          restriction-expression)

         (otherwise
          (error "Unknown key, ~A, in the restriction expression~
                  ~%   ~A"
                 (first restriction-expression) restriction-expression))))
      (symbol
       (resolve-or-make/symbol-to-category restriction-expression))

      (referential-category restriction-expression)

      (otherwise
       (error "Unknown type of restriction expression on lambda ~
               variable:~%    ~A" restriction-expression)))
    nil))

