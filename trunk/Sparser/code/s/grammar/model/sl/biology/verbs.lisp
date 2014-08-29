;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved

;;;    File: "verbs"
;;;  Module: "grammar/model/sl/biology/
;;; version: July 2014

;; Initiated 7/23/14 by lifting verbs from NFkappaB experiment.

(in-package :sparser)


(svo "act")


;;--- "activate"
;; "NIK  activates IKKalpha"
;; "turn on Ras by activating <p>"

(svo/nominal "activate" "activation"
  :subject 'bio-entity
  :theme 'bio-entity)

(svo "call")

;;--- "encode"
;; <enzyme> encoded by <gene>
(svo "encode")  ;;/// wrong -- placeholder

(svo/passive/nominal "enhance" "enhancement"
  :super-category bio-process
  :patient bio-process  ;; inhibiton of <process>
  :agent bio-entity)

;;--- "increase"
;; Observed as a verb: 
;;  "Other less frequently observed mutations, such as those found in the
;;  G4 and G5 boxes, increase the rate of nucleotide exchange, thereby
;;  mimicking the GEFs and increasing the GTP-bound state."
;; But the noun form is probably in there too.
;; Note that there's a dossier of change-in-amount-verbs though it's
;; not being loaded which goes with, e.g., define-change-in-amount-verb/up
;; which presumes a 'standalone-direction' category which exists
;; in places/directions but doesn't work the way it used to or was
;; abandoned between directions and directions1
(svo "increase")

;;--- "induce"
;; "which induce transcription of the p53 gene"
;; "induce processing of p100"

(svo/nominal/adjective "induce" "induction" "inducible"
   :subject 'bio-entity 
   :theme 'event)
;;/// want subtypes, want to understand the syntax of "-inducing"


;;--- inhibit
;; "by inhibiting <p>"
(svo/passive/nominal "inhibit" "inhibition"
  :super-category bio-process
  :patient bio-process  ;; inhibiton of <process>
  :agent bio-entity)

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


(svo/passive/nominal "suggest" "suggestion"
  :super-category bio-process
  :patient bio-process 
  :agent bio-entity)


;;--- "regulate"
;;
(svo/passive/nominal "regulate" "regulation"
  :super-category bio-process
  :patient bio-process  ;; regulation of <process>
  :agent bio-entity)    ;; by <entity>





;;--- "turn on" (off)
;; "Growth factors can turn on Ras"

(sv-prep-marked-o "turn" "on")


