;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from terms 2/27/17
;; contains organs, tissues, tumors, secretions, and organisms/species

(in-package :sparser)


(define-category non-cellular-location  :specializes bio-location
  :instantiates self
  :index (:permanent :key name))


;;;-------------
;;; organs
;;;-------------

(define-category bio-organ :specializes non-cellular-location
  :mixins (has-UID has-name)
  :binds ((organism organism))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:noun "organ"
     :in organism
     :of organism))

(noun "brain" :super bio-organ)
(noun "colon" :super bio-organ)
(noun "breast" :super bio-organ)
(noun "eye" :super bio-organ)
(noun "prostate" :super bio-organ)
(noun "kidney" :super bio-organ)
(define-category pancreas :specializes bio-organ
  :realization
  (:noun "pancreas" :adj "pancreatic"))

(define-category liver :specializes bio-organ
  :realization
  (:noun "liver" :adj "hepatic"))

(define-category lung :specializes bio-organ
  :realization
  (:noun "lung"))

(noun "trophectoderm" :super bio-organ)
(def-synonym trophectoderm (:noun "TE"))

(define-category inner_cell_mass :specializes bio-organ
              :realization (:noun "inner cell mass" ))
(def-synonym inner_cell_mass (:noun "ICM"))

;;;----------------
;;; organs with IDs
;;;----------------

(def-ided-indiv bio-organ "PPS" "EFO:0003397" :name "hypopharyngeal sense organ") 
(def-ided-indiv bio-organ "backbone" "UBERON:0001130") 
(def-ided-indiv bio-organ "cardiac mesoderm" "UBERON:0007005") 
(def-ided-indiv bio-organ "cerebrovascular system" "UBERON:0008998") 
(def-ided-indiv bio-organ "cervical spinal cord" "UBERON:0002726") 
(def-ided-indiv bio-organ "cortical plate" "UBERON:0005343") 
(def-ided-indiv bio-organ "dermis" "UBERON:0002067") 
(def-ided-indiv bio-organ "ganglionic eminence" "UBERON:0004023") 
(def-ided-indiv bio-organ "hematopoietic system" "UBERON:0002390") 
(def-ided-indiv bio-organ "hind paw" "UBERON:0002387") 
(def-ided-indiv bio-organ "immune system" "UBERON:0002405") 
(def-ided-indiv bio-organ "lamina propria" "UBERON:0000030") 
(def-ided-indiv bio-organ "nape of neck" "UBERON:0012477") 
(def-ided-indiv bio-organ "renin-angiotensin system" "UBERON:0018229") 
(def-ided-indiv bio-organ "respiratory tract" "UBERON:0000065") 
;;(def-ided-indiv bio-organ "sex specific" "UBERON:0014402") this doesn't make sense as an organ
(def-ided-indiv bio-organ "stroma" "UBERON:0003891") 
(def-ided-indiv bio-organ "subventricular zone" "UBERON:0004922") 
(def-ided-indiv bio-organ "syncytia" "BTO:0005784" :name "syncytium") 
(def-ided-indiv bio-organ "synovium" "EFO:0001393" :name "synovial membrane") 
(def-ided-indiv bio-organ "tail vein" "UBERON:0003481") 
(def-ided-indiv bio-organ "trabeculae" "EFO:0003706" :name "trabecular layer") 
(def-ided-indiv bio-organ "vaginal mucosa" "UBERON:0004983") 
(def-ided-indiv bio-organ "white matter" "UBERON:0002316") 

;;;-------------
;;; tissue
;;;-------------

(define-category tissue :specializes non-cellular-location
  :mixins (has-UID has-name)
  :binds ((organism organism))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:noun "tissue"
     :in organism
     :of organism))

;;;-----------------
;;; tissues with IDs
;;;-----------------

(def-ided-indiv tissue "adipose tissue" "TS-0013") 
(def-ided-indiv tissue "airway smooth muscle" "TS-0024") 
(def-ided-indiv tissue "ascite" "TS-0058") 
(def-ided-indiv tissue "bone marrow" "TS-0087") 
(def-ided-indiv tissue "bowel" "TS-0490") 
(def-ided-indiv tissue "cervical ganglia" "TS-0132") 
(def-ided-indiv tissue "chorioallantoic membrane" "TS-0140") 
(def-ided-indiv tissue "colonic epithelium" "TS-0163") 
(def-ided-indiv tissue "coronary artery" "TS-0176") 
(def-ided-indiv tissue "corpus striatum" "TS-0183") 
(def-ided-indiv tissue "dental pulp" "TS-0195") 
(def-ided-indiv tissue "dorsal root ganglia" "TS-0954") 
(def-ided-indiv tissue "embryonic ectoderm" "TS-0216") 
(def-ided-indiv tissue "endothelium" "TS-0278") 
(def-ided-indiv tissue "epidermis" "TS-0283") 
(def-ided-indiv tissue "gastric corpus" "TS-0401") 
(def-ided-indiv tissue "gastric mucosa" "TS-0404") 
(def-ided-indiv tissue "granulation tissue" "UBERON:0010211") 
(def-ided-indiv tissue "hair follicle" "TS-0432") 
(def-ided-indiv tissue "head kidney" "TS-1206") 
(def-ided-indiv tissue "hippocampus" "TS-0460") 
(def-ided-indiv tissue "hypothalamus" "TS-0469") 
(def-ided-indiv tissue "intestinal mucosa" "TS-0488") 
(def-ided-indiv tissue "lymph node" "TS-0579") 
(def-ided-indiv tissue "mucosa associated lymphoid tissue" "UBERON:0001961") 
(def-ided-indiv tissue "neural crest" "TS-0676") 
(def-ided-indiv tissue "neural tissue" "UBERON:0003714") 
(def-ided-indiv tissue "organ of Corti" "TS-0717") 
(def-ided-indiv tissue "oviduct epithelium" "TS-1316") 
(def-ided-indiv tissue "periodontal ligament" "TS-0763") 
(def-ided-indiv tissue "peripheral blood" "TS-0771") 
(def-ided-indiv tissue "peripheral nerve" "TS-0772") 
(def-ided-indiv tissue "peripheral nervous system" "TS-0808") 
(def-ided-indiv tissue "prefrontal cortex" "TS-1219") 
(def-ided-indiv tissue "pulmonary artery" "TS-0839") 
(def-ided-indiv tissue "shell" "TS-0925") 
(def-ided-indiv tissue "small intestine" "TS-0942") 
(def-ided-indiv tissue "smooth muscle" "TS-0943") 
(def-ided-indiv tissue "spinal cord" "TS-0953") 
(def-ided-indiv tissue "substantia nigra" "TS-0990") 
(def-ided-indiv tissue "testis" "TS-1030") 
(def-ided-indiv tissue "umbilical vein" "TS-1082") 
(def-ided-indiv tissue "uterus" "TS-1102") 

;;;-------------
;;; tumor
;;;-------------

(define-category tumor :specializes non-cellular-location
  :mixins (has-UID has-name)
  :binds ((organism organism))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:noun ("tumor" "tumour")
     :in organism
     :of organism)) ;; should add organ or organ-adjective tumor


;;;----------------
;;; tumors with IDs
;;;----------------

(def-ided-indiv tumor "breast tumor" "TS-0597") 
(def-ided-indiv tumor "liver tumor" "TS-0563") 
(def-ided-indiv tumor "lung tumour" "TS-0577") 
(def-ided-indiv tumor "mammary tumor" "TS-0597") 
(def-ided-indiv tumor "pancreatic tumor" "TS-0742") 
(def-ided-indiv tumor "thyroid tumor" "TS-1046") 

;;;-------------
;;; secretions
;;;-------------

;; for fluids, secretions, feces, and other organism substances --
;; currently only used when pulling in terms defined by reach
(define-category secretion :specializes non-cellular-location
  :mixins (has-UID has-name)
  :binds ((organism organism))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:noun "secretion"
     :in organism
     :of organism))

;;;--------------------
;;; secretions with IDs
;;;--------------------

(def-ided-indiv secretion "body fluid" "UBERON:0006314") 
(def-ided-indiv secretion "feces" "UBERON:0001988") 
(def-ided-indiv secretion "follicular fluid" "UBERON:0000038") 
(def-ided-indiv secretion "pancreatic secretion" "UBERON:0004795") 
(def-ided-indiv secretion "pleural effusion" "UBERON:0000175") 

;;;-------------
;;; organisms
;;;-------------

(adj "mammalian" :super organism) ;; changed from species to organism

(noun ("mouse" :plural "mice") :super organism) ;; changed from species to organism
(noun "Xenopus" :super species)
(noun "zebrafish" :super species)
(noun "human" :super species)

;;;-------------------
;;; organisms with IDs
;;;-------------------

(def-ided-indiv organism "C57BL" "NCIT:C37375" :name "C57BL mouse") 
(def-ided-indiv organism "Caenorhabditis elegans" "TI:6239") 
(def-ided-indiv organism "DBA" "NCIT:C37402" :name "DBA mouse") 
(def-ided-indiv organism "FVB" "NCIT:C37406" :name "FVB mouse") 
(def-ided-indiv organism "Leishmania" "NCIT:C123421" :name "leishmania") ;; protozoa -- arguably should be pathogen 
(def-ided-indiv organism "Sprague-Dawley rat" "NCIT:C76189" :name "SD rat strain") ;; manually changed from ID: "TI:10116" to have the same ID and name as Sprague-Dawley
(def-ided-indiv organism "Sprague-Dawley" "NCIT:C76189" :name "SD rat strain") 
(def-ided-indiv organism "WKY" "NCIT:C76192" :name "WKY rat strain") 
(def-ided-indiv organism "Wistar rat" "TI:10116") 
(def-ided-indiv organism "Yorkie" "NCIT:C53946" :name "yorkshire terrier") 
(def-ided-indiv organism "guinea pig" "TI:10141") 
(def-ided-indiv organism "nematode" "NCIT:C14248" :name "nematode") 
(def-ided-indiv organism "nude mice" "TI:10090") 
(def-ided-indiv organism "transgenic mice" "TI:10090") 