;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "attribute"
;;;   Module:  "grammar/core/qualities/
;;;  version:  January 2014

;; Initiated 11/21/13. 12/2/13 Added the "the radius is 2.5 miles" case.
;; Finished debugging basic patter 12/16/13. 1/7/14 Looks like it both
;; works and is sensible now, modulo additional tests.

(in-package :sparser)

#| This is for the relationship between an attributed quality/property
and the one it's attributed to. Also supplies a short cut for defining
them quickly.

(def-attribution "speed" quality 
  :subject-type waypoint
  :value-type rate)

|#

(define-category attribute-of-entity
  :rule-label attribute
  ;; completely unclear how this fits in. It's a tuple of convenience
  ;; more than anything else. 
  :instantiates :self
  :binds ((attribute)
          (entity))
  :index (:sequential-keys entity attribute))


(defmacro def-attribution (attr-word super-category 
                           &key subject-type value-type)
  (define-attribution attr-word super-category subject-type value-type))

;; The attr-word parameter is a word (string). It specifies an attribute
;; that specializes the category 'super' (symbol) that can be
;; expressed by 'attr-word'. For that, and also the range of values
;; that the attribute can take on, it calls define-scalar-quality,
;; though eventually that's going to need to do a lot more work.
;;
;; The attribute-value ("the speed is 50") forms the base of the
;; pradigm. The subject this is predicated of will fold-in as adjunct
;; to the attribute ("the speed of LVN", "LVN's speed"). We need to
;; take that NP to a tuple -- an instance of 'entity-attribute', and
;; from there we can have methods that redistribute the information.

(defun define-attribution (attribute-pname super subject-type value-type)
  (let* ((attribute-name (name-to-use-for-category attribute-pname))
         (attribute (or (category-named attribute-name)
                        (define-scalar-quality/expr attribute-pname 
                          `(:value ,value-type
                            :super-category super)))))
    ;;/// is there a consumer for attribute ????

    ;; Now we make a subclass of attribute-of-entity tuned to
    ;; this specific combination of categories
    (let* ((subject-name subject-type)
           (subject-category (category-named subject-name :break-if-none))
           (pair-name (name-to-use-for-category
                       (string-append subject-name "-" attribute-name)))
           (form `(define-category ,pair-name
                    :specializes attribute-of-entity
                    :rule-label ,attribute-name
                    :instantiates :self
                    ;; the bindings should be specializations,
                    ;; but that's not yet spread through the machinery
                    :binds ((attribute . ,attribute-name)
                            (entity . ,subject-name))
                    ;;/// do we inherit the indexing pattern?
                    :realization
                       (:tree-family of/genetive
                        :mapping ((larger . entity)
                                  (smaller . attribute)
                                  (np . :self) ;; should pick up the rule label
                                  (possessive . ,subject-name)
                                  (complement . ,subject-name)
                                  (base-np . ,attribute-name)
                                  (result-type . ,pair-name) ;; Not :self because of rule-label
                                  )))))
      (push-debug `(,form ,attribute-pname ,super ,subject-type ,value-type))
      (let ((category (eval form)))
        (values category
                subject-category
                attribute)))))
  



;;;--------------------------------
;;; attribute and its legal values
;;;--------------------------------

;; (define-scalar-quality "speed" :value (rate number))
;; speed, altitude, etc. as typed values not predicates
;; "speed is 200 knots"  "altitude is 2000 feet"

;; This defines the quality as a category. Burns in its name and
;; assigns it its string as a common-noun. It creates predicates
;; for all of the categories given in the value (e.g. is-rate)
;; It then augments the category attribute-value with the pattern
;; for <quality> <is-value>. 
;; Ignores the fact that these are scalars. ///That has to go into
;; the super-category and go with the modifiers. Which will mean
;; a larger def-form with more keywords, e.g. for "faster", "slower"
;;
;;//// It should be extended to cast shorted realizations (number)
;; to the slot that number binds in the individual that should be
;; bound (rate).  ////Need to figure out how to make that cleanly
;; reversible though. Some sort of description that a standard
;; post-rule referent method reads that the generator can too.
;;
;; The code pattern of the macro is taken from define-category and define-category/expr

(defmacro define-scalar-quality (name &rest keyword-args)
  (unless (stringp name)
    (error "bad argument: 1st argument to is the ~
            string that names the type"))
  `(define-scalar-quality/expr ,name ',keyword-args))

(defun define-scalar-quality/expr (string parameter-list)
  (let* ((word (resolve/make string))
         (category-name (name-to-use-for-category string)))
    (apply #'decode-quality-parameter-list
           category-name word string parameter-list)))

(defun decode-quality-parameter-list (category-name 
                                      word word-pname 
                                      &key value ;; predicate values
                                           (super-category 'attribute)
                                      )
  (push-debug `(,category-name ,word ,value))
  (let ((predicate-types ;; is-value
         (find-or-make-value-categories value))
        (form
          `(define-category ,category-name ;; speed
             :instantiates ,super-category ;; attribute ;; "attribute (is value)"
             :specializes ,super-category ;;attribute
             :bindings (name ,word) ;; plist
             :index (:permanent :key name)
             ;;/// ought to inherit the realization
             :realization (:common-noun ,word-pname))))

    (let ((attr-category (eval form))
          (predicate-names (loop for c in predicate-types
                             collect (cat-symbol c))))
      (let ((rspec-form
             `(define-additional-realization
                  ,(category-named 'attribute-value)
                  (:tree-family subject-predicate
                   ;; (the) speed (is (150 knots)) 
                   :mapping ((result . :self)
                             (subject . attribute)
                             (predicate . value)
                             (np/subject . ,category-name) ;; speed
                             (vp . ,predicate-names)))))) ;; is-number, is-rate
        (eval rspec-form)
        attr-category))))

;;;------------
;;; 'is value'
;;;------------

;; "is 200 knots"
(defun find-or-make-value-categories (value-category/s)
  (etypecase value-category/s (symbol) (cons)) 
  ;;/// that calls for a macro that makes conditions
  (flet ((name-for-value-category (symbol)
           (name-to-use-for-category (string-append "is-" symbol)))
         (find-value-category (name)
           (category-named name))
         (make-value-category (category-name base-category)
           (let ((form `(define-category ,category-name
                          :instantiates :self
                          :specializes state
                          :binds ((value . ,base-category))
                          :index (:temporary :key value))))
             (push-debug `(,form ,category-name ,base-category))
             (let ((category (eval form)))
               (create-rdata-for-value-category category base-category)
               category))))
    (when (symbolp value-category/s)
      (setq value-category/s (list value-category/s)))
    (loop for symbol in value-category/s
      as base-category = (category-named symbol :break-if-missing)
      as name = (name-for-value-category symbol)
      collect (or (find-value-category name)
                  (make-value-category name base-category)))))

(defun create-rdata-for-value-category (value-category base-category)
  (let* ((name-of-value-category (cat-symbol value-category))
         (name-of-base-category (cat-symbol base-category))
         (form `(define-additional-realization
                    ,value-category
                    (:tree-family be-description
                     :mapping ((result . :self)
                               (description . value)
                               (vp . ,name-of-value-category)
                               (complement . ,name-of-base-category))))))
    (eval form)))
                  





