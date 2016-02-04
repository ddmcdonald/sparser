;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "entities"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  February 2016

;; Initiated 12/3/15.

(in-package :mumble)

#| Table is defined in vocabulary.lisp as a Sparser category.|#
(defvar *the-table* (sp::define-individual 'sp::table))

(stipulate-to-be-unique *the-table*)

(defvar *b1* (sp::define-individual 'sp::block :name "B1"))
(defvar *b2* (sp::define-individual 'sp::block :name "B2"))

(defvar *the-two-blocks-he-put-down*
  (sp::define-individual 'sp::collection
    :items (list *b1* *b2*)
    :type (sp::category-named 'sp::collection)
    :number 2))
