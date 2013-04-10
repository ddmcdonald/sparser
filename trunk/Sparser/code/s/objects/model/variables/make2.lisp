;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "form"
;;;   Module:  "objects;model:variables:"
;;;  version:  April 2013

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

(in-package :sparser)

;;;-------------------------------------
;;; defining variables from expressions
;;;-------------------------------------

(defun define-lambda-variable (name-symbol
                               restriction-expression
                               category)

  (when (symbolp category)
    (setq category (resolve-symbol-to-category/check category)))

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

      ;;///// index them independently because they can't always
      ;; be found

      v)))
      



(defun resolve-variable-restriction (restriction-expression)
  ;; called fromdefine-lambda-variable to convert from expressions
  ;; to objects
  (if restriction-expression
    (typecase restriction-expression
      (list
       (case (first restriction-expression)
         (:or
;          `(:or ,@(mapcar #'resolve-symbol-to-category/check
;                          (rest restriction-expression)) )
          (let ( categories-etc )
            (do ((item (car (cdr restriction-expression)) (car rest))
                 (rest (cddr restriction-expression) (cdr rest)))
                ((null item))
              (if (eq item :primitive)
                (then
                 (unless (= (length rest) 1)
                   (error "new decoder has wrong pattern"))
                 (push (car rest) categories-etc)
                 (push :primitive categories-etc)
                 (return))
                (push (resolve-symbol-to-category/check item)
                      categories-etc)))
            (cons :or (nreverse categories-etc))))

         (:primitive  ;; e.g. "(:lisp-primitive number)"
          restriction-expression)

         (otherwise
          (error "Unknown key, ~A, in the restriction expression~
                  ~%   ~A"
                 (first restriction-expression) restriction-expression))))
      (symbol
       (resolve-symbol-to-category restriction-expression))
      (otherwise
       (error "Unknown type of restriction expression on lambda ~
               variable:~%    ~A" restriction-expression)))
    nil))

