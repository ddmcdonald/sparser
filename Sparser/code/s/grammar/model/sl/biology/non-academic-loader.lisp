;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2020 SIFT LLC. All Rights Reserved
;;;
;;;    File: "non-academic-loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2021

;; This holds a subset of biology files have definitions useful
;; outside of biology contexts, such as in acumen, without loading the
;; excessive and confounding definitions of proteins, cell types, etc.

(in-package :sparser)

(gload "bio;mechanics") ;; necessary because it defines add-bio-synonyms

(gload "bio;taxonomy")
(gload "disease;medical-taxonomy") ;; defines 'drug' 

(gload "bio;attributes") ;;start to move the (general) attributes out of biology


(gload "bio;non-academic-cell-locs")
(gload "bio;non-cellular-locations") 

(gload "bio;aux-taxonomy")

(gload "bio;non-academic-proteins") ;; probably needs to include a few more, but for now is ok

(gload "bio;general-verbs") ;; akin to terms-to-move. also, new-cell-proc has dependency on this

;; may want some things from these but mostly not
;(gload "bio;bio-complexes")
;(gload "bio;new-defs;new-bio-complexes")

(gload "bio;bio-methods") ;; (overly academmic ones are separated)
(gload "bio;non-biology-tech") ;; pieces of software/apps (like "EndNote" and "GitHub" and "WhatsApp") -- currently still defined a bio-methods but should be something else eventually and move out of bio
(gload "bio;bio-stats") ;; new set, broken out from bio-methods

(gload "bio;bio-processes") ;; has overly specific definitions for some things, but I think still more helpful than not. also some things in new-bio-proc should still get pulled in here

(gload "bio;bio-predications")
(gload "bio;non-academic-cells")

;; may want some things from these but mostly too specific and need generalized forms of these words
;;(gload "bio;cellular-processes")
;;(gload "bio;new-defs;new-cell-proc")

(gload "bio;measurements")
(gload "bio;new-defs;new-units")

(gload "bio;plasmids-rna") ;; has some academic defs, but nothing confounding

(gload "bio;substances")

(gload "bio;amino-acids") ;; may be problematic for individual letters or "his", but keeping for now since the pronoun still seems to be winning for "his" in some test sentences

;; these definitely need more work
(gload "bio;terms-to-move")
(gload "bio;terms")
(gload "bio;harvard-terms")

(gload "bio;non-academic-drugs") ;; needed by verbs

(gload "bio;rhetoric")

;;(gload "bio;pathways") ;; need non-bio versions of some of these
(gload "bio;verbs") ;; needs work to make less specific definitions

(gload "bio;non-academic-molecules")

;;(gload "bio;visualization.lisp") need non-bio versions
