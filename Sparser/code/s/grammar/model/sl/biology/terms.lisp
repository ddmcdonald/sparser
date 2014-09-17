 ;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: September 2014

;; Initiated 7/23/14 by lifting proteins from NFkappaB experiment.
;; Moved proteins out to their own file 9/8/14

(in-package :sparser)

;;---- j1

;; These presumably have OBO indexes, but that's for a second pass.

(np-head "oncogene")

(adj "mutated")

(adj "deadliest") ;;//// no -- define shortcut, morphology extensions
;; to define the whole comparative paradigm

(np-head "cancer")

(adj "responsible") ;; adj/noun "resposibility"
(assign-preposition "responsible" "for")

(np-head "human") ;;/// check people code
(np-head "mortality") ;;/// relationship to "mortal" ??


;;--- j2

#| Importantly the signaling enzymes encoded by PIK3CA and BRAF are, in part,
regulated by direct binding to activated forms of the Ras proteins
suggesting that dysregulation of this key step in signaling is
critical for tumor formation. |#

;; "importantly"
;; An attribute of the entire fact, not the eventuallity
;; in it. All the rhetorical/status markers should go
;; in the same place. A field in the container will suffice

;; "signalling enzyme" 
;; A particular kind of enzyme specified by its function
;; See mechanics file for a hacked up version


#| This switch mechanism is common to a wide variety of GTP-binding
proteins and is mediated by a conserved structure called the G-domain
that consists of five conserved G boxes. |#

(np-head "switch") ;;/// trivial standin
(np-head "mechanism")

(define-adverb "in part")

;; activated forms of the Ras proteins
;; Needs a whole model
(np-head "form")

(np-head "tumor")
(np-head "formation")


;;--- j5 
(define-adjective "physiological")
(np-head "condition")

(np-head "G-domain")
(define-adjective "slow")



;;;-------------------------------------------------------
;;; Hacked up to 'get through' the 9/4/14 target abstract
;;;-------------------------------------------------------

(define-category signal-transduction ;;// same flaw as small molecute
  :specializes bio-process
  :lemma (common-noun "signal transduction"))




