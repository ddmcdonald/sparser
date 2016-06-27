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




(noun "GTP" :super nucleotide)
(noun "dGTP" :super nucleotide)
(noun "GDP" :super nucleotide)
(noun "dGDP" :super nucleotide)

(noun ("AMP" "adenosine 3',5'-monophosphate") :super nucleotide)
(noun ("cAMP" "cyclic adenosine 3',5'-monophosphate") :super small-molecule)

(noun "dAMP" :super nucleotide)
(noun "ATP" :super nucleotide)
(noun "dATP" :super nucleotide)
(noun "ADP" :super nucleotide)
(noun "dADP" :super nucleotide)


(noun "dCDP" :super nucleotide)
(noun "CDP" :super nucleotide)
(noun "dUDP" :super nucleotide)
(noun "UDP" :super nucleotide)
(noun "dGMP" :super nucleotide)
(noun "GMP" :super nucleotide)
(noun "CMP" :super nucleotide)
(noun "dCMP" :super nucleotide)
(noun "dUMP" :super nucleotide)
(noun "UMP" :super nucleotide)
(noun "TDP" :super small-molecule)
(noun "TMP" :super small-molecule)
(noun "cytidine monophosphate" :super nucleotide)
(noun "thymidine monophosphate" :super nucleotide)
(noun "uridine monophosphate" :super nucleotide)


(noun "(deoxy)cytidine monophosphate" :super nucleotide)
(noun "(deoxy)thymidine monophosphate" :super nucleotide)
(noun "(deoxy)uridine monophosphate" :super nucleotide)



            
