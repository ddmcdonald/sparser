;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "methods"
;;;  Module: "grammar/model/sl/biology/
;;; version: August 2015

;; Initiated 8/3/15 as the last file of the biology sublanguage to be
;; loaded. All k-methods should go here, as well as any other composite
;; structure that depends on the existence of categories that are
;; defined at many points in the load sequence.

(in-package :sparser)


;;; Type-markers

(defparameter *trap-needed-extensions-to-type-marker* nil)

(def-k-method compose ((i category::bio-entity) (marker category::type-marker))
  ;; So far triggered from noun-noun-compound with a phrase
  ;; like "the Ras protein"
  (push-debug`(,i ,marker)) ;;(break "type-marker compose")
  (let ((category (itype-of marker)))
    (or (itypep i category)
        (case (cat-symbol category)
                                        ;(pathway
                                        ; (
          (otherwise
           (when *trap-needed-extensions-to-type-marker*
             (push-debug `(,i ,marker ,category ,(parent-edge-for-referent)))
             (error "Haven't defined a constructor for the ~
                      type-marker ~a" category)))))
    i))

(def-k-method compose ((p category::protein-pair) (c category::bio-complex))
  ;; for "Shc-EGFR complex" called from noun-noun-compound
  ;; (push-debug `(,p ,c)) (lsp-break "got here with ~a and ~a" p c)
  (let ((head (bind-dli-variable 'component p c)))
    head))
