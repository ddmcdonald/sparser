;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: July 2014

;; Initiated 11/5/13. 3/3/14 Added mechanics and NFkappaB while
;; commenting out the original molecules and verbs as OBE and requiring
;; revision. 7/23/14 Added terms and verbs to try to impose some order
;; on all this for at least expository purposes. Commented out loading
;; of NFkappaB since it's worth rethinking those fast an loose treatements.
;; Moved likely resuseable parts to terms and verbs. 

(in-package :sparser)

(gload "bio;mechanics")
(gload "bio;terms")
(gload "bio;verbs")

;(gload "bio;NFkappaB")
;(gload "bio;molecules") 

