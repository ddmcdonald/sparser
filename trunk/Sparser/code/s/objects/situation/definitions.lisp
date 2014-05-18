;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "definitions"
;;;            objects/situation/
;;;  version:  May 2014

;; Initiated 5/15/14 for the code that associates words with packets.

(in-package :sparser)

(defmacro def-rspec (string form type-spec)
  `(def-rspec/expr ,string ',form ',type-spec))

(defun def-rspec/expr (string form-name type-expression)
  (let ((word (resolve/make string))
        (form (resolve/make form-name)))
    (multiple-value-bind (label referent)
                         (decode-rspec-type-spec type-expression)
      ;; Make a record of this somewhere ??
      ;; Need something if we're going to define synonyms
      ;; by referring to the word
      (cache-rspec word label form referent)
      (define-cfr label `(,word)
        :form form
        :referent referent))))

(defun decode-rspec-type-spec (type-exp)
  (push-debug `(,type-exp))
  (typecase type-exp
    (symbol
     (let* ((category (category-named type-exp :break-if-none))
            (label (compute-label type-exp category)))
       (values label category)))

    (cons
     (unless (= 3 (length type-exp))
       (push-debug `(,type-exp)) (error "New case"))
     (let* ((category (resolve (car type-exp)))
            (var (find-variable-in-category (cadr type-exp) category))
            (value-exp (caddr type-exp))
            (value (typecase value-exp
                     (symbol (resolve value-exp))
                     (otherwise
                      (push-debug `(,value-exp))
                      (error "Unanticiated type of value-expression: ~a~%~a"
                             (type-of value-exp) value-exp)))))
       (push-debug `(,category ,var ,value-exp))
       ;; construct-referent 
       (let ((referent-form
              `(:instantiate-individual-with-binding
                ,category
                (,var ,value)))
             (label (compute-label (car type-exp) category value)))
         (push-debug `(,referent-form)) ;;(break "form")
         (values label referent-form))))            

    (otherwise
     (push-debug `(,type-exp))
     (error "Unknown type of def-rspec type-spec: ~a~%~a"
            (type-of type-exp) type-exp))))

(defun compute-label (name category &optional embedded-category)
  (case name
    (ppeople 'people)
    (collection embedded-category)
    (otherwise category)))




(defclass rspec-cache (named-object)
  ;; bind the name to the word-symbol
  ((label :type category :initarg :label :accessor rspec-label)
   (form :type category :initarg :form :accessor rspec-form)
   (referent :initarg :ref :accessor rspec-referent))
  (:documentation "Ad-hoc. Present motivation is synonyms"))

;; Need to revise it to take more than the name argument
;; in the define- case
;; (setup-find-or-make rspec-cache)

;; Wait for the revision before making it real.
(defun cache-rspec (word label form referent)
  (push-debug `(,word ,label ,form ,referent)))

