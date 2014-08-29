 ;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: July 2014

;; Initiated 7/23/14 by lifting proteins from NFkappaB experiment.

(in-package :sparser)

;;;--------------------------------------------
;;; for (some of) the abstract in the proposal
;;;--------------------------------------------

(def-bio "nfkappab2" protein 
  :identifier "PR:000011178" 
  :greek "kappa")

(def-bio "NF-kappab" protein 
  :identifier "GO:0071159" 
  :greek "kappa")

(def-bio "p100" protein :identifier "PR:000011178")

(def-bio "p52" protein)  ;; :identifier ??

(def-bio "NIK" kinase 
  :long "NF-kappaB-inducing kinase" 
  :identifier "GO:0004704"
  :greek "kappa")

(def-bio "IKKalpha" kinase 
  :long "IkappaB kinase alpha" 
  :identifier "PR:000001775"
  :greek ("kappa" "alpha"))


;;;-----------------------------------
;;; for an example in the starter kit
;;;-----------------------------------

(def-bio "APC" protein) 
;; n.b. could be mouse APC for all we know w/o context

(def-bio "GSK-3" protein)

;;; amino acids

(def-bio "serine" amino-acid :synonyms ("ser"))
;; Capitalization variants aren't needed

; (p "before Ser1507)

;; numbered-residue -- counting from the N terminus
(define-category residue-on-protein   
  :specializes bio-entity ;; same as protein
  :binds ((amino-acid . amino-acid)
          (position :primitive integer)
          (on-protein . protein))
  ;; Throwaway treatment just to play with the parsing
  :index (:sequential-keys amino-acid position))

(def-cfr residue-on-protein (amino-acid digit-sequence)
  :form proper-noun
  :referent (:head left-edge
             :instantiate-individual residue-on-protein
             :with (amino-acid left-edge
                    position right-edge)))


;;;-------------------------
;;; for the August 15th set
;;;-------------------------

(def-bio "KRAS" gene)
(def-bio "PIK3CA" gene)
(def-bio "BRAF" gene)

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


#| 8. Growth factors can turn on Ras by activating Guanine nucleotide
Exchange Factors (GEFs) or by inhibiting the GTPase Activating
Proteins (GAPs) or by both mechanisms. |#
; (p "Growth factors can turn on Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms.")

(def-bio "ras" protein ;; to accomodate all the variant capitalization
  :identifier "GO:0003930"
  :long "GTPase" ;; RAS small monomeric GTPase activity
  ;; Are we going to see that in texts?
  )

(def-bio "GEF" small-molecule :synonyms ("Guanine nucleotide Exchange Factors"))
(def-bio "GAP" small-molecule :synonyms ("GTPase Activating Proteins"))
;; compositional version of the long forms would be better
;;/// are these small molecules like GDP or are the larger? -- protein
;; And these are families of particulars, not the particulars that are
;;  actually doing participating in the reactions

;; http://en.wikipedia.org/wiki/Growth_factor
;; Again, it's a family, not a particular
(def-bio "growth factor" protein)

