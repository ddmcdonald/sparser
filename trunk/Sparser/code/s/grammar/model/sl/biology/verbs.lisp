;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved

;;;    File: "verbs"
;;;  Module: "grammar/model/sl/biology/
;;; version: July 2014

;; Initiated 7/23/14 by lifting verbs from NFkappaB experiment.

(in-package :sparser)

;;--- "activate"
;; "NIK  activates IKKalpha"

(svo/nominal "activate" "activation"
  :subject 'bio-entity
  :theme 'bio-entity)


;;--- "induce"
;; "which induce transcription of the p53 gene"
;; "induce processing of p100"

(svo/nominal/adjective "induce" "induction" "inducible"
   :subject 'bio-entity 
   :theme 'event)
;;/// want subtypes, want to understand the syntax of "-inducing"


;;--- "mutation"
;; "mutated oncogenes"
;; "oncogenic mutations"
;; "in BRAF mutant thyroid cell"

;;--- "phosphorylate"
;; GO:0016310	
;; "activated IKKα phosphorylates specific serines"
;;  "The phosphorylation of these specific serines"

(svo/nominal "phosphorylate" "phosphorylation" 
             :subject 'bio-entity :theme 'bio-entity)



;;--- "regulate"
;;
(svo/passive/nominal "regulate" "regulation"
  :super-category bio-process
  :patient bio-process  ;; regulation of <process>
  :agent bio-entity)    ;; by <entity>
