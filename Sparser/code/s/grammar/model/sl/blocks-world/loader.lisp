;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2017 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "loader"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  June 2017

;; Initiated 10/6/15. Added vocabulary 12/3/15. interface on 1/2/16.
;; resources 1/17/16. Entities 1/20/16. Staging 2/25/16.

(in-package :sparser)

(when (find-package :mumble)
  ;;  (gload "blocks;resources")  empty -- recycle
  
  (gload "blocks;experiments") ;; rather dusty.
  ;;Mostly same as regression tests

  (gload "blocks;subcat-patterns")
  (gload "blocks;vocabulary")
  (gload "blocks;verbs")

  (gload "blocks;entities")
  ;; defines B6 etc. and the named blocks

  (gload "blocks;specialists") ;; mine for heuristics
  (gload "blocks;speech-acts") ;; ditto

  ;;(gload "blocks;test-messages")
  ;; Depends on entities. Mine for treatment of context

  ;;(gload "blocks;interface")
  ;; OBE interface to sgp planner

  (gload "blocks;staging")  ;; experiment in higher abstraction
  
  (gload "blocks;blocksworld-sents")
  ;; list of examples roughly corresponding to a conversation

  )
