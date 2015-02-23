;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "doc-structure"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2015

;; Initiated 2/20/15 to manage how we organize the structure and
;; recorded content of a biology documents. Could have called the
;; file discourse-structure


(in-package :sparser)

(defun note-biological (referent)
  ;; called from edge-denotes-interesting-object as part of the
  ;; post-segment processing done by note-text-relations-in-segment
  referent) ;; purely a placeholder
