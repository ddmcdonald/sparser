;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Package:MUMBLE; -*-
;;; Copyright (c) 2017 David D. McDonald. All Rights Reserved
;;; Distributed under the Eclipse Public License.
;;;
;;;  Mumble/interface/interface.lisp
;;;  July 2017

;; Defines the generic functions for determining person, number, etc.
;; that are needed by the grammar.

(in-package :mumble)

;;--- Person

(defgeneric grammatical-person (item)
  (:documentation "Should this item be referred to using 'first',
    'second', or 'third' person: I vs. you vs. it. The default
    is third.")
  
  (:method ((item specification))
    (let ((acc (get-accessory-value ':person item)))
      (and acc (name acc))))
  (:method ((item derivation-tree-node))
    (let ((acc (get-accessory-value ':person item)))
      (and acc (name acc))))

  (:method ((item node))
    (let ((phrase-type (name item)))
      (case phrase-type ;;/// test conjunctions
        (np (state-value :person (state (context-object item)))))))

  (:method ((item ttrace))
    (let ((orig (original-specification item)))
      (typecase orig
        ((or specification derivation-tree-node)
         (let ((acc (get-accessory-value ':person orig)))
           (and acc (name acc))))
        (pronoun (person orig)))))

  (:method ((item pronoun)) (person item)))


;;--- Number

(defgeneric grammatical-number (item)
  (:documentation "From the perspective of English grmmar, is this
   item 'singular' or 'plural'? When the item is the grammatical
   subject of a tensed clause this determines number concord on
   the verb: 'We are ready, but he is not'.
      The within-Mumble cases are handled here. See the Sparser
   mumble interface for example methods for outside cases.
   The principle consumer of this function is number-of-current-subject
   in grammar/morphology.lisp. If we fall through an don't return 
   a value it will default to singular.")
  
  (:method ((item specification))
    "Number specified in a bundle-style input specification"
    (let ((acc (get-accessory-value ':number item)))
      (and acc (name acc))))
  (:method ((item derivation-tree-node))
    "Specified on derivation-tree input specification"
    (let ((acc (get-accessory-value ':number item)))
      (and acc (name acc))))

  (:method ((item node))
    "Number is cached on the current dominating phrase"
    (let ((phrase-type (name item)))
      (case phrase-type
        (np (state-value :number (state (context-object item))))
        (conjunction (state-value :number (state (context-object item)))))))

  (:method ((item ttrace))
    "We're looking at a trace. Take the number off of the object
     this is a trace of"
    (let ((orig (original-specification item)))
      (typecase orig
        ((or specification derivation-tree-node)
         (let ((acc (get-accessory-value ':number orig)))
           (and acc (name acc))))
        (pronoun (number orig)))))

  (:method ((item pronoun))
    (number item)))
 
