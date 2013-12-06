;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "attribute"
;;;   Module:  "grammar/core/qualities/
;;;  version:  December 2013

;; Initiated 11/21/13. 12/2/13 Added the "the radius is 2.5 miles" case.

(in-package :sparser)

#| This is for the relationship between an attributed quality/property
and the one it's attributed to. Also supplies a short cut for defining
them quickly.
|#

(defmacro def-attribution (attr-word super-category 
                           &key subject-type attribute-type)
  (attribution attr-word super-category subject-type attribute-type))

(defun attribution (name super subject-type attribute-type)
  ;; The name parameter is a word (string). It defines an attribute
  ;; that specializes the category 'super' (symbol) that can be
  ;; expressed by the word 'name', which is presumed to be a common noun.
  ;; The keyword arguments for 'subject' and 'attribute' specify the
  ;; value restrictions for the tree family mappings. They are required.
  ;; Using keywords for them just lays things out in a nicer pattern.
  ;; This is the paradigm. It has some additional obscure cases.
  ;; The <attr> is often as not a measurement
  ;;
  ;;   [The <name> of the <subj>] is <attr>
  ;;   [<subj>'s <name>] is <attr>
  ;;   <name> is <attr>
  ;;
  ;; The items in brackets are defined as their own category since
  ;; they spell out an NP that is independent and couldn't be stated
  ;; in a single tree family given the present treatment.

  (let* ((category-name (name-to-use-for-category
                         (string-append name "-of")))
         (s+attr-name (name-to-use-for-category
                       (string-append name "-description")))
         (form-for-predicate ;;/// what's the correct term?
          `(define-category ,s+attr-name
             :instantiates :self
             :specializes ,super ;; not really
             :binds ((subject . ,subject-type)
                     (name :primitive word))
             :index (:permanent :key subject)))
         
         (description-category (eval form-for-predicate))
         (description-realization-form
          ;; Break it out like this so we can reference the category name
          ;; within the mapping
          `(define-additional-realization 
               ,description-category
               (:common-noun ,name)
               (:tree-family possessive/new-object
                ;; <subj>'s <name>
                :mapping ((result-type . :self)
                          (pos-slot . subject)
                          (head-slot . name)
                          (np . :self)
                          (possessive . ,subject-type)
                          (np-head . ,name)))
               (:tree-family simple-of-complement
                ;; The <name> of the <subj>
                :mapping ((np-item . name)
                          (of-item . subject)
                          (result-type . :self)
                          (np . :self)
                          (base-np . (,name ,s+attr-name))
                          (complement . ,subject-type))))))

    (eval description-realization-form)

    (push-debug `(,name ,super ,subject-type ,attribute-type))
    (push-debug `(,description-category))

    (let ((form-for-relation
           `(define-category ,category-name
              :instantiates :self
              :specializes ,super
              :binds ((subject . ,subject-type)
                      (complement . ,attribute-type))
              :index (:temporary :key subject complement)
              :realization (:tree-family thing-is-description
                            ;; [  } is <attr>
                            :mapping ((result . :self)
                                      (individual . subject)
                                      (description . complement)
                                      (s . event) ;; ????
                                      (np/subject . (,subject-type
                                                     ,s+attr-name ;; the generated category
                                                     ,name))
                                      (vp . 
                                      (complement . ,attribute-type)))))))
      (let ((category (eval form-for-relation)))
        `(list ,category ,description-category)))))
                            