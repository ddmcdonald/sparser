;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: January 2015

;; Initiated 11/5/13. 3/3/14 Added mechanics and NFkappaB while
;; commenting out the original molecules and verbs as OBE and requiring
;; revision. 7/23/14 Added terms and verbs to try to impose some order
;; on all this for at least expository purposes. Commented out loading
;; of NFkappaB since it's worth rethinking those fast an loose treatements.
;; Moved likely resuseable parts to terms and verbs.
;; 9/8/14 added [amino-acids], [proteins], and [taxonomy] to improve 
;; searching through these. 11/12/14 added [switches]. Bumped verbs
;; to 1, 12/11/14. 12/28/14 added [phenomena]. 1/16/15 added 
;; [rules]. 

(in-package :sparser)

(gload "bio;mechanics")
(gload "bio;taxonomy")
(gload "bio;proteins")
(gload "bio;amino-acids")
;;(gload "bio;terms")
(gload "bio;terms1")
(gload "bio;drugs") ;; needed by verbs
(gload "bio;phenomena") ;; after proteins
(gload "bio;verbs1")
(gload "bio;switches")
(gload "bio;rules")

;(gload "bio;NFkappaB")
;(gload "bio;molecules") 

