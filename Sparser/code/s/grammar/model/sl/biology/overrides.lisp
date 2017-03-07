;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "overrides"
;;;  Module: "grammar/model/sl/biology/
;;; version: March 2017

;; Initiated 3/6/17 to hold all the statements that blow away earlier,
;; usually general definitions of words. Designed to aggregate all the
;; cases for verbs. Could of course be generalized.

(in-package :sparser)


;; For verbs defined in harvard-terms.lisp
(delete-rules-of-category 'fail)
(delete-rules-of-category 'find)

;; in general-verbs
(delete-rules-of-category 'know)
