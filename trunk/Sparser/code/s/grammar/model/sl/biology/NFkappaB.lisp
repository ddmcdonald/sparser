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

;;;-------------------------
;;; relations and processes
;;;-------------------------

;;----------- S1  (kappa-1)
;;--- "p100 processing" "the processing of p100"
;;/// abstract the rspec and add to shortcuts
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

(vo "generate" 'bio-process ;;/// as a vp it's not 'event'
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

;;-- <event, bio-process> is regulated positively by <bio-entity>

(adj/adv "positive" "positively" :super-category 'scalar-quality)
;;/// refine the supercategory - Related to up and down?
#|? (p "is regulated positively by")
[is regulated][ positively]

                                 source-start
e3    REGULATE+ED             1 "is regulated" 3
e4    POSITIVE                3 "positively" 4
e5 e6                            "by" :: by, BY |#

(define-category positive-regulation
  :specializes regulate)
(define-category negative-regulation
  :specializes regulate)






;;------------ s3 (kappa-3)
;; However, the precise mechanisms by which NIK and IKKalpha 
;; induce p100 processing remain unclear.

(define-adjective "precise") ;;/// "precisely"

(np-head "mechanism" :super 'perdurant)
;;/// place-holder superc. These 'do' things, need to see moe

;;--- induction 
;; GO:0048518  BP  positive regulation of biological process  Not exactly, but close enough for government work. ;)
;  "NF-κB-inducing kinase"
;  "IKKα induce p100 processing"
;  "for inducible processing of p100"
;  "overexpression of IKKα ... fails to induce p100 processing"



;;------------ s5, (kappa-5)
;; This novel function of NIK requires two specific amino acid residues,
;; serine 866 and serine 870, of p100 
;; that are known to be essential for inducible processing of p100.

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
;; We also show that, after being recruited into p100 complex, 
;; activated IKKalpha phosphorylates specific serines 
;; located in both N- and C-terminal regions of p100 
;; (serines 99, 108, 115, 123, and 872).

;;--- phosphorylation
;

;;------------ s7 (kappa-7)
;; The phosphorylation of these specific serines is 
;; the prerequisite for ubiquitination and 
;; subsequent processing of p100 
;; mediated by the beta-TrCP ubiquitin ligase 
;; and 26 S proteasome, respectively.


;;------------ s8 (kappa-8)
;; These results highlight the critical but different roles of 
;; NIK and IKKalpha in regulating p100 processing 
;; and shed light on the mechanisms mediating 
;; the tight control of p100 processing.

;;------------ s9 (kappa-9)
;; These data also provide the first evidence for explaining 
;; why overexpression of IKKalpha or its activation by many other stimuli 
;; such as tumor necrosis factor and mitogens fails to induce p100 processing.


