;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$
;;; Copyright (c) 2010 David D. McDonald

;;; /Sparser/Mumble/derivation-trees/poirot-after-sparser.asd

;; initiated 12/23/10

(defpackage :mumble-after-sparser-asd
  (:use :common-lisp :asdf))

(in-package :mumble-after-sparser-asd)

(defsystem :mumble-after-sparser
  :serial t
  ;; depends on classes in Sparser, which isn't under asdf control
  :components ((:file "conversions")))