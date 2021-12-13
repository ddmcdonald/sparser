;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "non-academic-proteins"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2021

;; Broken out from terms, protein-fam-with-id, protein-fam-no-id 10/2021
(in-package :sparser)

;;;--------------
;;; protein-types
;;;--------------
;; very general protein classes (functionally defined)

(define-category antibody :specializes protein
                 :binds ((antigen molecule))
                 :bindings (uid "NCIT:C16295")
  :realization
        (:noun ("antibody" "anti-" "anti" "Ab") ;; often plural "Abs"
         :m antigen
         :to antigen
         :against antigen
         :for antigen))

;; note: monoclonal antibody and polyclonal antibody are currently
;; defined as drugs, because they are frequently used for that
;; purpose-- currently they are individuals despite the fact that we
;; have several monoclonal antibodies defined that could be under a
;; subcategory and possibly we should have a whole biological drug
;; category that are both drugs and proteins

;; immunoglobulin is basically a synonym for antibody, at least by
;; wikipedia, but it had been defined as a protein familly. It's very
;; unclear whether to consider the immunoglobulin isotypes complexes
;; or proteins, and then there are subclasses of those. For now, I've
;; moved immunoglobulin and its isotypes and subclasses to
;; bio-complexes where it specializes antibody and has bio-complex as
;; a mixin
;; 

(define-category effector :specializes protein ;; NOT SURE WHAT THE RIGHT SUPER is
  :binds ((for-process bio-process))
  :realization
  (:noun "effector"
         :for for-process
         :in for-process))

(define-category receptor :specializes protein
                 :bindings (uid "GO:0038023")
                 :realization (:noun "receptor"))

(define-category cytokine-receptor :specializes receptor
                 :realization (:noun "cytokine receptor"))

(define-category innate-immunity-receptor :specializes receptor
                 :realization (:noun "innate-immunity receptor"))

(noun "receptor protein" :super protein)
(noun "receptor protein-tyrosine kinase" :super kinase)
(noun ("scaffold" "scaffolding protein") :super protein)
(noun "coactivator" :super protein)
(define-category transporter :specializes protein
                 :bindings (uid "GO:0005215")
                 :realization (:noun "transporter"))

(noun ("anti-oncogene" "antioncogene") :super protein)
(noun ("tumor suppressor gene" "TSG" "tsg") :super protein)

(noun "isomerase" :super enzyme)
(noun "ligase" :super enzyme)
(noun "ubiquitinase" :super enzyme)
(noun "polymerase" :super enzyme)
(noun "esterase" :super enzyme)

(noun "oxidase" :super enzyme)
(noun ("deubiquitinase" "deubiquitylase" "DUB") :super enzyme)
(noun "isozyme" :super enzyme)
(noun "phospholipase" :super enzyme)
(noun "aminopeptidase" :super enzyme)
(noun "hydrogenase" :super enzyme)
(noun "nuclease" :super enzyme)
(noun "glucosyltransferase" :super enzyme)

(noun "nonintegrin" :super protein)
(noun "growth factor" :super protein) ;; actually, either a protein or hormone, but occasionally some other molecule

(noun "polyprotein" :super protein) ;; any protein cleaved into multiple peptide proteins, often but not always viruses

(noun "lactase" :super protein) ;; in lieu of family def

;; ion channels
(def-family-with-id "ion channel" "XFAM:PF07885") 
(def-family-with-id "calcium channel" "FPLX:Calcium_channels")
(def-family-with-id "cation channel" "FPLX:Cation_channels")
(def-family-with-id "chloride channel" "FPLX:Chloride_channels")
(def-family-with-id "ligand-gated ion channel" "FPLX:Ligand_gated_ion_channels")
(def-family-with-id "potassium channel" "FPLX:KCN")
(def-family-with-id "sodium channel" "FPLX:Sodium_channels")
(def-family-with-id "voltage gated" "FPLX:Voltage_gated_ion_channels" :synonyms ("voltage gated ion channel" "voltage-gated" "voltage-gated ion channel"))
(def-family-with-id "epithelial sodium channel" "IPR004724") 

(def-family-with-id "multi-pass" "UP:SL-9909" :name "Multi-pass membrane protein")
(def-family-with-id "multipass" "UP:SL-9909" :name "Multi-pass membrane protein") 
(def-family-with-id "multispan" "UP:SL-9909" :name "Multi-pass membrane protein") 
(def-family-with-id "single-pass" "UP:SL-9904" :name "Single-pass membrane protein") 

(def-family-with-id "co-receptor" "GO:0015026" :name "coreceptor");; :members ("UP:P61073")) ; many more
(def-family-with-id "symporter" "GO:0015293" :name "symporter" :synonyms ("cotransporter" "co-transporter"))
(def-family-with-id "antiporter" "GO:0015297" :name "antiporter")
(def-family-with-id "uniporter" "GO:0015292" :name "uniporter")
(def-family-with-id "auto-transporter" "GO:0015474" :name "autotransporter")

;; neurotransmitter receptors
(def-family-with-id "dopamine receptor" "FPLX:DRD") 
(def-family-with-id "GABA receptor" "FPLX:GABR") 
(def-family-with-id "adrenergic receptor" "GO:0004935" :synonyms ("adrenoreceptor")); :members ("UP:P07550" "UP:P08588" "UP:P08913" "UP:P13945" "UP:P25100" "UP:P18825" "UP:P18089"))
(def-family-with-id "alpha-adrenergic receptor" "FPLX:ADRA" :synonyms ("a-adrenoreceptor" "alpha adrenoceptor" "alpha-adrenoreceptor" "alpha1 adrenoceptor" "α-adrenergic receptor" "α-adrenoreceptor")) ; :members ("UP:P08913" "UP:P25100" "UP:P18825" "UP:P18089")
(def-family-with-id "alpha2-AR" "FPLX:ADRA2" :synonyms ("alpha(2)-adrenoceptor" "alpha(2)-AR" "alpha2 adrenoceptor" "ofalpha(2)-adrenoceptor" "ofα(2)-adrenoceptor" "α(2)-adrenoceptor" "α(2)-AR" "α2-AR")) ;  :members ("UP:P08913" "UP:P18825" "UP:P18089")
(def-family-with-id "betaAR" "FPLX:ADRB" :synonyms ("βAR" "β-adrenergic receptor" "β-adrenoreceptor" "beta-adrenergic receptor")); :members ("UP:P08588" "UP:P07550" "UP:P13945")) 
(def-family-with-id "betaARK" "FPLX:ADRBK")
(def-family-with-id "nicotinic acetylcholine receptor" "FPLX:CHRN" :synonyms ("nAChR"))
(def-family-with-id "opioid receptor" "IPR001418"); :members ("UP:P35372" "UP:P41143" "UP:P41145" "UP:P41146" "UP:Q14982"))
(def-family-with-id "ER" "FPLX:ESR" :name "estrogen receptor" :synonyms ("Er" "ESR" "estradiol receptor" "estro-gen receptor" "estrogen receptor" "estrogen-receptor" "E/R" "oestrogen-receptor")) ;  :members ("UP:P03372" "UP:Q92731") ;"GO:0030284"


(def-family-with-id "chemoattractant" "GO:0042056" :name "chemoattractant activity" :synonyms ("attractant" "attractants" "chemo-attractant"))
(def-family-with-id "chemorepellent" "GO:0045499" :name "chemorepellent activity")

(def-family-with-id "casein" "IPR001588") ;; :members ("UP:P47710" "UP:P05814" "UP:P07498")
(def-family-with-id "collagen" "MESH:D003094");; :members ("UP:P02452" "UP:P02461" "UP:P08123" "UP:P17301")) 
(def-family-with-id "collagen type IV" "FPLX:COL4" :synonyms ("Collagen Type IV" "collagen type IV" "ColIV" "Col4" "collagen IV" "type IV collagen"))
(def-family-with-id "keratin" "IPR003461") ;; there are more than 80 human members including :members ("UP:P05783" "UP:P05787" "UP:P04259" "UP:P04264" "UP:P08727" "UP:P08779" "UP:P12035" "UP:P13645" "UP:P13646" "UP:P13647" "UP:P19012" "UP:P19013" "UP:P35527" "UP:P35900" "UP:P48668" "UP:Q04695" "UP:Q14533" "UP:Q2M2I5" "UP:Q5XKE5" "UP:Q6A162" "UP:Q6KB66" "UP:Q7Z3Z0")
(def-family-with-id "prion" "FA:03015" :name "prion family" :synonyms ("prion-protein" "IPR000817"))

(def-family-with-id "G protein" "FPLX:G_protein" :name "G-protein" :synonyms ("NCIT:C17458" "Gprotein" "g protein" "g-protein" "Guanine Nucleotide Binding Protein" "GTP-Binding Protein"))
(def-family-with-id "phosphoprotein" "NCIT:C16982")
(def-family-with-id "glycoprotein" "CHEBI:17089")
(def-family-with-id "immunoprotein" "NCIT:C16725") 
(def-family-with-id "ubiquitin" "FPLX:Ubiquitin" :synonyms ("ub" "Ub" "UB")); :members ("UP:P0CG47" "UP:P0CG48")) 
(def-family-with-id "profilin" "FPLX:PFN" :synonyms ("PFN" "Pfn" "PFn")); :members ("UP:P07737" "UP:P35080" "UP:P60673" "UP:Q8NHR9")) 
(def-family-with-id "protease" "FPLX:Protease"); :members ("UP:C3VI15" "UP:P10265" "UP:P63120" "UP:P63121" "UP:P63122" "UP:P63123" "UP:P63124" "UP:P63125" "UP:P63127" "UP:P63129" "UP:P63131" "UP:Q07CK6" "UP:Q9Y6I0"))
(def-family-with-id "proteasome" "FPLX:Proteasome" :synonyms ("XFAM:PF00227.24"))
(def-family-with-id "actin" "FPLX:Actin" :synonyms ("actin filament" "f-actin" "F-actin")) ; :members ("UP:P63267" "UP:P68133")

(def-family-with-id "globin" "XFAM:PF01152")
(def-family-with-id "globulin" "NCIT:C17125" :name "serum globulin")

;; immunoglobulins
(def-family-with-id "immunoglobulin superfamily" "FA:01833" :name "immunoglobulin superfamily" :synonyms ("XFAM:PF00047" "IgSF"))
;; moved immunoglobulin and its isotypes/subclasses to bio-complexes but we do need some way to merge families and complexes. also the receptors  

(def-family-with-id "HGNC:5853" ("IGL" "igl" "immunoglobulin lambda locus" "IgGl")) ;; will add members later

(def-family-with-id "IgE-receptor" "GO:0019767" :name "IgE receptor activity" :synonyms ("FCER" "IgE receptor activity" "Fc epsilon R" "Lymphocyte IgE receptor")) ; :members ("UP:P06734" "UP:Q01362")
(define-protein "NCIT:C127014" ("IGHV3-21" "V-H" "q16927" "Immunoglobulin Heavy Variable 3-21 wt Allele"))

(def-family-with-id "Hemagglutinin" "XFAM:PF00509.16" :synonyms ("haemagglutinin" "haemoagglutinin" "hemagglutinin" "hemagglutinins"))
(def-family-with-id "histone" "NCIT:C16687")
(def-family-with-id "histone H2B" "FA:01763" :synonyms ("histone 2B" "H2B") );:members ("UP:Q16778"))
(def-family-with-id "histone H3" "FPLX:Histone_H3" :synonyms ("histone-H3" "histoneH3" "NCIT:C16685")) 
(def-family-with-id "histone H4" "FPLX:Histone_H4" :synonyms ("h4 histone family")); :members ("UP:P62805"))

(def-family-with-id "integrin" "NCIT:C16748") 

(def-family-with-id "inhibin" "NCIT:C2276"); :members ("UP:P05111" "UP:P08476" "UP:P09529"))
(def-family-with-id "inhibin A" "FPLX:Inhibin_A" :synonyms ("inhibin-A")); :members ("UP:P05111"))

;; cytokines
(def-family-with-id "cytokine" "NCIT:C20464"); :members ("UP:P23219" "UP:P35354")) ;; many more
(def-family-with-id "chemokine" "FPLX:Chemokine" :name "Chemokine") 
(def-family-with-id "adipokine" "NCIT:C123810" :name "adipokine") 
(def-family-with-id "cyclooxygenase" "NCIT:C17015" :synonyms ("cyclo-oxygenases" "cyclo-oxygenase")); :members ("UP:P23219" "UP:P35354"))
(def-family-with-id "angiokine" "NCIT:C113246" :name "angiokine") 
(def-family-with-id "gastrokine" "FA:01473" :name "gastrokine family") 
(def-family-with-id "myokine" "NCIT:C157583" :name "myokine") 
(def-family-with-id "lymphokine" "NCIT:C20498" :name "lymphokine") 


(def-family-with-id "interferon" "FPLX:Interferon" :synonyms ("IFN")); :members ("UP:P01563" "UP:P01562" "UP:P01566" "UP:P01567" "UP:P01568" "UP:P01569" "UP:P01570" "UP:P01571" "UP:P01574" "UP:Q9P0W0" "UP:P05000" "UP:Q8IU54" "UP:Q8IZJ0" "UP:Q8IZI9" "UP:K9M1U5" "UP:P01579"))
(def-family-with-id "interferon alpha" "FPLX:IFNA" :synonyms ("NCIT:C20494" "IFN-alpha" "IFN-α" "IFNA" "IFNalpha" "IFNα" "IFN-a" "IFNa" "ifnα")); :members ("UP:P01563" "UP:P01562" "UP:P01566" "UP:P01567" "UP:P01568" "UP:P01569" "UP:P01570" "UP:P01571" "UP:Q8IU54" "UP:Q8IZJ0" "UP:Q8IZI9" "UP:K9M1U5"))
(def-family-with-id "interferon beta"  "FPLX:IFNB" :synonyms ("IFN-beta" "IFN beta" "IFN-β" "IFNB" "IFNbeta")); :members ("UP:P01574")) ;; not sure why HMS has this family because it seems to just have one member and they overload the synonyms to point to both so now we do too...
(def-family-with-id "IFN-I" "IPR000471" :name "interferon type I" :synonyms ("type I interferon"  "IFN I" "type I IFN" "interferon-I" "interferon I")); :members ("UP:P01563" "UP:P01562" "UP:P01566" "UP:P01567" "UP:P01568" "UP:P01569" "UP:P01570" "UP:P01571" "UP:P01574" "UP:Q9P0W0" "UP:P05000"))
;; type II consists of one protein in humans - interferon-gamma - so that's why it's not family
(def-family-with-id "IFN-III" "IPR029177" :name "interferon type III" :synonyms ("type III interferon"  "IFN III" "type III IFN" "IFN-lambda" "IFN-λ" "IFNL" "IFN-L" "IFNlambda" "IFN lambda" "IFNλ" "interferon lambda" "ifnλ" "IFN-k" "IFNk")); :members ("UP:Q8IU54" "UP:Q8IZJ0" "UP:Q8IZI9" "UP:K9M1U5")) ;; note: while there  is an IFN-kappa, "IFN-k" is much more frequently a bad OCR of "IFN-λ" -- nearly all google hits are for "IFN-ks" are for this while IFNK is the real

(def-family-with-id "IL" "NCIT:C20497" :name "interleukin" :synonyms ("interleukine")); :members ("UP:P01583" "UP:P01584" "UP:P05231" "UP:P08700" "UP:P10145" "UP:P13232" "UP:P60568" "UP:O95760")) 
(def-family-with-id "IL-1" "FPLX:IL1" :synonyms ("NCIT:C20506" "IL1" "il-1" "interleukin 1" "interleukin-1" "FA:01820" "interleukin 1 family")); :members ("UP:P01583" "UP:P01584"))
(def-family-with-id "IL-12" "FPLX:IL12" :synonyms ("IL12" "il12" "interleukin-12" "interleukin 12" "IL-12p70" "IL12p70")); :members ("UP:P29459" "UP:P29460"))
(def-family-with-id "IL2R" "FPLX:IL2R" :synonyms ("IL-2-R" "IL-2R" "IL2R" "interleukin-2 receptor" "interleukin-2 receptor activity")); :members ("UP:P14784" "UP:P31785")) ;more members
(def-family-with-id "IL23" "XFAM:PF16649.3" :synonyms ("Il23" "il23"))
(def-family-with-id "Interleukin-27" "NCIT:C118114" :name "interleukin-27" :synonyms ("Il27" "il27" "IL-27" "IL-27")); :members ("UP:Q8NEV9" "UP:Q14213"))
;; (define-protein "NCIT:C20514" ("IL-12" "interleukin-12")) 
(def-family-with-id "interleukin-17" "NCIT:C20519"); :members ("UP:Q16552" "UP:Q8TAD2" "UP:Q9H293" "UP:Q9P0M4" "UP:Q9UHF5")) 
(def-family-with-id "interleukin 31" "XFAM:PF15209") 

(def-family-with-id "FSH" "FPLX:FSH" :name "follicle-stimulating hormone" :synonyms ("follicle stimulating hormone")); :members ("UP:P01215" "UP:P01225"))
(def-family-with-id "luteinizing hormone" "FPLX:LH")
(def-family-with-id "thyroid hormone receptor" "FPLX:THR") 
(def-family-with-id "TSH" "NCIT:C2280" :synonyms ("thyroid stimulating hormone")); :members ("UP:P01215" "UP:P01222"))
(def-family-with-id "neurotrophin" "PR:000021998"); :members ("UP:P20783" "UP:P34130" "UP:Q9UBD9")) 
(def-family-with-id "gonadotropin" "IPR000476" :synonyms ("gonadotrophin"))
(def-family-with-id "relaxin" "IPR022421"); :members ("UP:P04808" "UP:P04090" "UP:Q8WXF3"))
(def-family-with-id "replicase" "XFAM:PF03090")
(def-family-with-id "RNA polymerase" "NCIT:C20076" :synonyms ("RdRp" "RNA-polymerase"));"GO:0097747"

(def-family-with-id "pertussis toxin" "FPLX:Pertussis_toxin") 
(def-family-with-id "oncoprotein" "NCIT:C16934" :name "oncoprotein"); :members ("UP:P16949")) ; many more
(def-family-with-id "autoantibody" "NCIT:C48966" :synonyms ("auto-antibody" )) 
(def-family-with-id "antinuclear antibody" "NCIT:C70547" :synonyms ("ana" "ANA" "anti-nuclear antibody" "antinuclear factor" "ANF")) 
