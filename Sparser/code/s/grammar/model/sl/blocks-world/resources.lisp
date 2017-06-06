;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "resources"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  July 2016

;; Initiated 1/17/16 to provide a place for extra ontology or vocabular

(in-package :mumble)

;;;-----------------------------
;;; pre-built lexical resources
;;;-----------------------------

;;--- vocabulary
#|
(define-word "let" (verb))

(defun setup-lexicalized-trees ()
  (define-lexicalized-phrase common-noun ("staircase") (n))
  (define-lexicalized-phrase SVO ("build") (v))
  (define-lexicalized-phrase SVOC ("let") (v))
  (define-lexicalized-phrase SVBeComp ("be") (v)) ;; s, c
  )
(setup-lexicalized-trees)

;;//// one-off that should go away. Reanalyze as conventional attachment
(define-dtn-operator let-us (let s sp::*you* o sp::*us*) command )

|#
