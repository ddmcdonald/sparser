;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 David D. McDonald all rights reserved
;;;
;;;      File: "infer-rules"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: July 2020

;; Initiated 7/15/20 to hold the actual 'grammar' for inferring
;; new rules from patterns in the debris

(in-package :sparser)


(defun infer-preposition-rule (word pp head)
  (push-debug `(,word ,pp ,head))
  (break "~a takes ~s" head word))

(make-preposition-trigger "as")
(make-preposition-trigger "in")
(make-preposition-trigger "of")
(make-preposition-trigger "with")
