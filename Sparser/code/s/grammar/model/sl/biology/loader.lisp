;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: March 2014

;; Initiated 11/5/13. 3/3/14 Added mechanics and NFkappaB while
;; commenting out the original molecules and verbs as OBE and requiring
;; revision. 

(in-package :sparser)

(gload "bio;mechanics")
(gload "bio;NFkappaB")

;(gload "bio;molecules") ;; e.g. ATP
;(gload "bio;verbs") ;; too simple
