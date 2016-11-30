;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2016 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2016

;; Initiated 11/5/13. 3/3/14 Added mechanics and NFkappaB while
;; commenting out the original molecules and verbs as OBE and requiring
;; revision. 7/23/14 Added terms and verbs to try to impose some order
;; on all this for at least expository purposes. Commented out loading
;; of NFkappaB since it's worth rethinking those fast an loose treatements.
;; Moved likely resuseable parts to terms and verbs.
;; 9/8/14 added [amino-acids], [proteins], and [taxonomy] to improve
;; searching through these. 11/12/14 added [switches]. Bumped verbs
;; to 1, 12/11/14. 12/28/14 added [phenomena]. 1/16/15 added
;; [rules]. 2/20/15 added doc-structure. 5/17/15 gated parse-biopax
;; when xmls moved out of normal Sparser load. 6/4/15 added [rhetoric]
;; so all elements can go in one place. 8/3/15 added [methods] to
;; avoid load-time category dependencies. It must be loaded last.
;; 10/8/15 added examples. 10/26/15 added citations.
;; 4/10/16 moved new-words to R3.

(in-package :sparser)

(gload "bio;mechanics")
(gload "bio;taxonomy")
;; move RAS2 proteins first, so that the ras-model field is not blocked
(gload "bio;new-RAS2-proteins")
(gload "bio;proteins")
(gload "bio;amino-acids")
(gload "bio;terms-to-move")
(gload "bio;terms")
(gload "bio;drugs") ;; needed by verbs

(gload "bio;rhetoric")
(gload "bio;doc-structure")
(gload "bio;switches")
(gload "bio;rules")

(gload "bio;UCD-proteins")
(gload "bio;protein-families")
(gload "bio;phenomena") ;; after proteins
(gload "bio;verbs") ;; after phenomena

;(gload "bio;NFkappaB")
(gload "bio;molecules")

;(gload "bio;methods.lisp")
(gload "bio;trips-terms.lisp")
(gload "bio;reach-terms.lisp")

(gload "bio;citations")
(gload "bio;examples.lisp") ;; no definitions in here
(gload "bio;talking-about-a-model.lisp");; no definitions in here

