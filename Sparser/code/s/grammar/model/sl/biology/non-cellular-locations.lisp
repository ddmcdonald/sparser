;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "non-cellular-locations"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from terms 5/8/17
;; contains organs, tissues, tumors, secretions, and organisms/species

(in-package :sparser)

(define-category non-cellular-location  :specializes bio-location
  :instantiates self
  :index (:permanent :key name))

;;;-------------
;;; organs
;;;-------------
(define-category tissue :specializes non-cellular-location
  :mixins (has-UID)
  :binds ((organism organism))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:noun "tissue"
     :in organism
     :of organism))

(define-category bio-organ :specializes tissue
  :mixins (has-UID)
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
(noun "thyroid" :super bio-organ)
(noun "parathyroid" :super bio-organ) ;; UBERON_0001132
(noun "spleen" :super bio-organ)
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

;;;-------------
;;; tissue
;;;-------------



(noun ("acinus" :plural "acini") :super tissue) ;; any cluster of cells that resembles a many-lobed "berry"
(noun "vasculature" :super tissue) ; to replace erroneous protein definition
(noun "sac" :super tissue) ; replace erroneous protein definition
(noun "muscle" :super tissue)
(noun "skeletal muscle" :super muscle)

;;;-------------
;;; tumor
;;;-------------

(define-category tumor :specializes non-cellular-location
  :mixins (has-UID)
  :binds ((organism organism))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:noun ("tumor" "tumour")
     :in organism
     :of organism)) ;; should add organ or organ-adjective tumor

;;;-------------
;;; secretions
;;;-------------

;; for fluids, secretions, feces, and other organism substances --
;; currently only used when pulling in terms defined by reach
(define-category secretion :specializes non-cellular-location
  :mixins (has-UID)
  :binds ((organism organism))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:noun "secretion"
     :in organism
     :of organism))

;;;-------------
;;; organisms
;;;-------------

(define-category mammal :specializes animal
  :mixins (has-UID)
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:noun "mammal"
     :adj "mammalian"))

(noun "dam" :super mammal) ; dam is the female parent, generally for rodents -- this is to replace an erroneous protein definition of "dams"
(noun "female" :super animal) 
(noun "male" :super animal) 

;;;-------------------
;;; organisms with IDs
;;;-------------------

(def-indiv-with-id organism "Caenorhabditis elegans" "TI:6239" :synonyms ("C. elegans")) 
(def-indiv-with-id organism "drosophila" "NCIT:C14202" :synonyms ("fruit fly")) 
(def-indiv-with-id organism "mouse" "NCIT:C14238" :plural "mice" :synonyms ("mus") :adj "murine")
(def-indiv-with-id organism "rat" "NCIT:C14266")
(def-indiv-with-id organism "goat" "NCIT:C14210")
(def-indiv-with-id organism "xenopus" "NCIT:C14285") 
(def-indiv-with-id organism "zebrafish" "NCIT:C14287") 

(def-indiv-with-id species "Saccharomyces cerevisiae" "NCIT:C14271" :synonyms ("saccharomyces" "yeast" "S. cerevisiae"))
(define-category human :specializes species
                 :mixins (has-UID mammal) ;; not sure if mixins is the right thing?
                   :instantiates self
                   :index (:permanent :key name)
                   :bindings (uid "NCIT:C14225")
                   :realization (:noun ("human" "homo sapiens"))) ;;possibly add "person" and "people"
(def-indiv-with-id human "man" "NCIT:C14366" :name "man" :plural "men")
(def-indiv-with-id human "woman" "NCITC14284" :name "woman" :plural "women")
