;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Biology-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  November 2013

;; Initiated 11/6/13 to setup experiments in reading biology texts
;; and constructing process models from them. 

(in-package :sparser)

; (fire-setting)  ;; what we get by default

;; N.b. this is a draft of the arrangement of the sublanguage.
;; When it's ok we knit it into the usual set of files

(define-grammar-module *biology*
                       :name "Waypoints and related concepts"
                       :parent *sublanguages*)
(include-grammar-module *biology*)
(def-logical-pathname "bio;" "sl;biology:")

; Load it by hand
;  (gload "bio;loader")

; (f "/Users/ddm/sift/nlp/corpus/biology/cholera.txt")
