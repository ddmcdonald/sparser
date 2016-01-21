;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "entities"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  January 2016

;; Initiated 12/3/15.

(in-package :mumble)

#| Table is defined in vocabulary.lisp as a Sparser category.|#
(defvar *the-table* (sp::define-individual 'sp::table))

(stipulate-to-be-unique *the-table*)

