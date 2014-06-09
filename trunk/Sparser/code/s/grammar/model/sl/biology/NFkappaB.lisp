;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "NFkappaB"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2014

;; Initiated 3/2/14, adding items through 3/5/14, then through 6/9/14

(in-package :sparser)

;;;----------
;;; entities
;;;----------

(def-bio "nfkappab2" nil 'protein ;; transcription factor ???
  :identifier "PR:000011178" 
  :greek "kappa")

(def-bio "NF-kappab" nil 'protein 
  :identifier "GO:0071159" 
  :greek "kappa")

(def-bio "p100" nil 'protein :identifier "PR:000011178")

(def-bio "p52" nil 'protein)  ;; :identifier ??

(def-bio "NIK" "NF-kappaB-inducing kinase" 'kinase
  :identifier "GO:0004704"
  :greek "kappa")

;; its downstream kinase, IkappaB kinase alpha (IKKalpha).
(def-bio "IKKalpha" "IkappaB kinase alpha" 'kinase
  :identifier "PR:000001775"
  :greek '("kappa" "alpha"))



;;;-------------------------
;;; relations and processes
;;;-------------------------

;;----------- S1  (kappa-1)
;;--- "p100 processing" "the processing of p100"
;;/// abstract and add to shortcuts
(define-category protein-processing ;; GO:0016485	
  :specializes event
  ;; could mix in has-UID, but might be simpler to do it
  ;; in a second pass afterwards
  :instantiates event ;; vs :self and look it up/
  :binds ((protein . protein))
  :index (:permanent :key protein)
  :realization (:tree-family of/genitive/self-base/no-poss-marker
                :mapping ((bound . protein)
                          (result-type . :self)
                          (np . :self)
                          (base-np . :self)
                          (possessive . bio-entity)
                          (complement . bio-entity))
                :common-noun "processing"))

;; "the nfκb2 gene product p100"
;; p100 is a "precursor protein" to NF-kappaB2 (and to p52
;; sometimes written NF-bappaB2/p100
;; There's such a gene, so it's something that's "expressed"
;; It was identified as a G-protein
;; NFKB1 is a gene
;; NF-kappaB is a transcription factor
;; Google ["nf-kappab2 gene product"]
;
; So "gene product" takes p100 on its right
; and that then takes nfkappab2 on its left
; or does it roll up the other way?
;
; Unclear what the pattern here is so writing raw rules rather
; than using a shortcut. 
; Also unclear whether this high-frequency phrase is worth
; decomposing in it's representation, as opposed to in
; it's axioms
;   This is a characterization of p100

(define-category gene ;; "NFkappaB2 gene"
  :specializes bio-entity
  :mixins (has-name)
  :binds ((transcription-factor . protein))
  :index (:permanent :key transcription-factor)
  ;; Well the name is also defintive?  /// need an 'or' index
  :realization (:tree-family modifier-creates-instance
                :mapping ((head . :self)
                          (property . transcription-factor)
                          (n-bar . :self)
                          (modifier . protein)
                          (np-head . :self))
                :common-noun "gene"))

;; gene product <=> product of gene



;;--- "to generate p52"

(vo "generate" 'event ;;/// as a vp it's not 'event'
  :object 'bio-entity)

;;//// should be a new file in rules/syntax/ for infinitives and these
(def-form-category to-vp) ;;/// to categories.lisp 
;;/// read the purpose-clause paper.

(def-form-rule ("to" vp)
  :form to-vp
  :referent (:daughter right-edge))

;; syntactic rule?  np + to-vp
#+ignore(def-cfr event (event generate)
  :form np
  :referent (:daughter left-edge))

;;//// Yeuch
(define-category do-for-a-purpose
  :binds ((what)
          (why)))
;; This does the composition, but can't get the scope right.
;; It binds the to-vp low to the first np to its left.
;; Clear demonstration of the benefit of semantic rules
(def-syntax-rule (np to-vp)
  :head :left-edge
  :form np
  :referent (:instantiate-individual do-for-a-purpose
             :with (what left-edge
                    why right-edge)))


;;----- Regulation & event
;;
;;  "... is a regulated event"
;;  "this tightly controlled event"
;;  "is regulated positively by"
;;  "the ... roles of ... in regulating p100 processing"
;;  "the tight control of p100 processing"
#| Presumably the "regulated" of event is the same
 as the positive/negative regulation in the canonical use. 
  -- Related to "monitored event" but not "popular event"
unless we go all the way out to 'regulated by' and 'popular to'
and pull in an agent and a <what?>
|#



;;------------ s2 (kappa-2)

;; "We previously demonstrated that"

(svcomp "demonstrate" nil 
  :subject person :complement processs)

;(adj/adv "positive" "positively") 
;; :super-categpry ?? some sort of scalar-quality ? Related to up and down?


;;------------ s3 (kappa-3)

(define-adjective "precise") ;;/// "precisely"

(np-head "mechanism" :super 'perdurant)
;;/// place-holder superc. These 'do' things, need to see moe

;;--- induction 
;; GO:0048518  BP  positive regulation of biological process  Not exactly, but close enough for government work. ;)
;  "NF-κB-inducing kinase"
;  "IKKα induce p100 processing"
;  "for inducible processing of p100"
;  "overexpression of IKKα ... fails to induce p100 processing"

(svo/nominal/adjective "induce" "induction" "inducible"
                       :subject 'bio-entity :theme 'event) ;; processing of p100
;;/// want subtypes, want to understand the syntax of "-inducing"


;;------------ s4, (kappa-4)

(svo/nominal "activate" "activation"
   :subject 'bio-entity
   :theme 'bio-entity)




;;------------ s5, (kappa-5)

;; two specific amino acid residues, serine 866 and serine 870, of p100

;(np-head "residue" :super 'molecule) ;; odd interaction with next.
;; but it's more like a 'residue of' than a thing in itself

; (amino acid residue) of protein
;;/// but this loses the composition
(np-head/of "amino acid residue" :super 'molecule :of 'bio-entity)
;;/// This would be better
;; (def-subtype 'amino-acid 'residue :of 'protein)

;/// waiting on resolution of variable/word in realization
;(find-or-make-individual 'amino-acid :name "serine")

;; Additional realization on aa residue to create instance with numbers
;; for "serine 866"




;;------------ s6 (kappa-6)

;;--- phosphorylation
;; GO:0016310	
;  "activated IKKα phosphorylates specific serines"
;  "The phosphorylation of these specific serines"

(svo/nominal "phosphorylate" "phosphorylation" 
             :subject 'bio-entity :theme 'bio-entity)



