;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 SIFT LLC. All Rights Reserved
;;;
;;;    File: "molecules"
;;;  Module: "grammar/model/sl/biology/
;;; version: November 2013

;; Initiated 11/5/13

(in-package :sparser)

;; Stand-in just to avoid collision with word in Comlex that
;; have the same spelling, e.g. "camp" -- as in the outdoors.
;; It also makes them nouns with noun brackets. 
;; Gratuitously it gives them plurals, which they don't take
#+ignore
(define-category small-named-molecule
  :instantiates self
  :binds ((name :primitive word))
  :realization (:common-noun name))

;; These should be spelled out and more precisely categorized.
;; In some way that looks plausible if we read it.
;;was (find-or-make-individual 'small-named-molecule :name "cAMP")
(noun "cAMP" :super small-molecule)

(noun "GTP" :super nucleotide)
(noun "GDP" :super nucleotide)

(noun "AMP" :super nucleotide)
(noun "ATP" :super nucleotide)
(noun "ADP" :super nucleotide)

(noun "dUDP" :super small-molecule)
(noun "dUMP" :super small-molecule)
(noun "TDP" :super small-molecule)
(noun "TMP" :super small-molecule)

            
