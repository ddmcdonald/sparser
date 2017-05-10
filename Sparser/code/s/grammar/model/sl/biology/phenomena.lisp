;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "phenomena"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2015

;; Initiated 12/28/14 to handle moderately complicated notions
;; like cell line and mutation. Conformation and isoform and such
;; would go here. Reorganizes some items in terms. Incremental
;; extensions through 1/6/15
;; 1/9/2015 give ubiquitinate a site variable, and define "pro-apoptotic" as a subclass of "apoptotoic"
;; 1/14/2015 tweaks on N and C-terminus
;; 2/15/15 trying to make some headway with ubiquitination
;; 4/23/15 Pulled in dimer material from other files
;; 5/29/15 Added the rest of the Mitre-designated modification features
;; 5/10/17 Split out into new files: bio-complexes,
;; bio-methods-processes, cellular-processes, pathways,
;; post-trans-mods, protein-terminals-domains -- all that's left is a
;; description of transcription and its control which never had any
;; realizations
(in-package :sparser)

;;;-------------------------------
;;; transcription and its control
;;;-------------------------------
; the ZFN217 transcription factor
; Wikipedia for 'transcription factor'
;    factor – a substance, such as a protein, that contributes to 
;      the cause of a specific biochemical reaction or bodily process
; and CtBP1/CtBP2 corepressors, CtBPs
; the HER3 promoter
; expression of HER3
; inhibition of HER3 transcription
; "enhances the transcription function of p53"




;;; accumulation 

; that ERK1 nuclear accumulation increased
; ERK1-4 ... accumulated in the nucleus to the same level as ...

