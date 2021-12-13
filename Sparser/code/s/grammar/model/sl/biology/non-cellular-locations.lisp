;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017-2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "non-cellular-locations"
;;;  Module: "grammar/model/sl/biology/
;;; version: July 2021

;; Broken out from terms 5/8/17
;; contains organs, tissues, tumors, secretions
;; July 2021 -- took non-academic definitions out of new-noncell-loc
;; added them and additional body-parts here
;; new-noncell-loc can now be delegated to load in only research article loads


(in-package :sparser)

(define-category non-cellular-location  :specializes bio-location
  :instantiates self
  :index (:permanent :key name))

;;;-------------
;;; organs/tissue
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
    (:noun "organ"))

(define-category bone :specializes tissue
  :mixins (has-UID)
  :binds ((organism organism))
  :bindings (uid "UBERON:0001474")
  :instantiates self
  :index (:permanent :key name)
  :realization
  (:noun "bone" :adj "osteal"))
(def-synonym bone (:noun "osseous"))

(noun ("acinus" :plural "acini") :super tissue) ;; any cluster of cells that resembles a many-lobed "berry"
(noun "vasculature" :super tissue) ; to replace erroneous protein definition
(noun "sac" :super tissue) ; replace erroneous protein definition ;; UBERON:0009856
(def-indiv-with-id bio-organ "soft tissue" "NCIT:C12471" :name "soft tissue")
(noun "muscle" :super tissue)
(noun "skeletal muscle" :super muscle)
(def-indiv-with-id muscle "smooth muscle" "TS-0943") 

(def-indiv-with-id bio-organ "skin" "UBERON:0002097")
(def-indiv-with-id tissue "epidermis" "TS-0283" :adj "epidermal")
(def-indiv-with-id bio-organ "dermis" "UBERON:0002067" :adj "dermal") 

(def-indiv-with-id bio-organ "head" "UBERON:0000033")
(def-indiv-with-id bio-organ "face" "UBERON:0001456" :adj "facial")
(def-indiv-with-id bio-organ "eye" "BTO:0000439" :adj "optic") ;; ocular could also be adjective here
(def-indiv-with-id bio-organ "pupil" "UBERON:0001771")
(def-indiv-with-id bio-organ "cornea" "UBERON:0000964" :adj "corneal")
(def-indiv-with-id bio-organ "lens" "UBERON:0000965" :adj "lenticular")
(def-indiv-with-id bio-organ "uvea" "UBERON:0001768" :adj "uveal")
(def-indiv-with-id bio-organ "iris" "UBERON:0001769" :adj "iritic")
(def-indiv-with-id bio-organ "retina" "UBERON:0000966" :adj "retinal")
(def-indiv-with-id bio-organ "eyebrow" "UBERON:0010163")
(def-indiv-with-id bio-organ "eyelid" "UBERON:0001711")
(def-indiv-with-id bio-organ "eyelash" "UBERON:0001702")

(def-indiv-with-id bio-organ "nose" "UBERON:0000004" :adj "nasal")
(def-indiv-with-id bio-organ "nostril" "UBERON:0005928")
(def-indiv-with-id bio-organ "ear" "UBERON:0001690" :adj "otic")
(def-indiv-with-id bio-organ "earlobe" "UBERON:0001847")
(def-indiv-with-id bio-organ "mouth" "UBERON:0000165" :adj "oral")
(def-indiv-with-id bio-organ "lip" "UBERON:0001833" :adj "labial")
(def-indiv-with-id bio-organ "tongue" "UBERON:0001723" :adj "lingual")
(def-indiv-with-id bio-organ "tooth" "EFO:0000839" :name "tooth" :plural ("teeth") :adj "dental") 
(def-indiv-with-id bone "skull" "UBERON:0003129")
(def-indiv-with-id bone "mandible" "UBERON:0001684" :name "jawbone" :adj "mandibular")
(def-indiv-with-id bio-organ "neck" "UBERON:0000974")
(def-indiv-with-id bio-organ "nape of neck" "UBERON:0012477") 
(def-indiv-with-id bio-organ "throat" "UBERON:0000341")

(def-indiv-with-id bio-organ "arm" "UBERON:0001460")
(def-indiv-with-id bio-organ "shoulder" "UBERON:0001467")
(def-indiv-with-id bone "humerus" "UBERON:0000976")
(def-indiv-with-id bio-organ "elbow" "UBERON:0001461")
(def-indiv-with-id bone "ulna" "UBERON:0001424" :adj "ulnar")
(def-indiv-with-id bone "radius bone" "UBERON:0001423") ;; leaving out just "radius" and "radial" for now
(def-indiv-with-id bio-organ "wrist" "UBERON:0001491" :name "wrist joint")
(def-indiv-with-id bone "carpal" "UBERON:0001435")
(def-indiv-with-id bone "metacarpal" "UBERON:0002374")
(def-indiv-with-id bio-organ "manus" "UBERON:0002398" :name "hand") ;; adj "manual"? but confusing
(def-indiv-with-id bio-organ "manual digit" "UBERON:0002389" :name "finger")
(def-indiv-with-id bio-organ "nail of manual digit" "UBERON:0009565" :name "fingernail") 
(def-indiv-with-id bio-organ "manual digit 1" "UBERON:0001463" :name "thumb")
(def-indiv-with-id bio-organ "nail of manual digit 1" "UBERON:0011273" :name "thumbnail") ;; probably less likely meaning
(def-indiv-with-id bio-organ "manual digit 2" "UBERON:0003622" :name "index finger")
(def-indiv-with-id bio-organ "manual digit 3" "UBERON:0003623" :name "middle finger")
(def-indiv-with-id bio-organ "manual digit 4" "UBERON:0003624" :name "ring finger")
(def-indiv-with-id bio-organ "manual digit 5" "UBERON:0003625" :name "little finger" :synonyms ("pinky finger" "pinkie" "pinky"))
                   
(def-indiv-with-id bio-organ "leg" "UBERON:0000978")
(def-indiv-with-id bio-organ "hip" "UBERON:0001464" :adj "iliac")
(def-indiv-with-id bone "pelvis" "UBERON:0002355" :adj "pelvic")
(def-indiv-with-id bio-organ "hindlimb stylopod" "UBERON:0000376" :name "thigh")
(def-indiv-with-id bone "femur" "UBERON:0000981" :adj "femoral")
(def-indiv-with-id bio-organ "knee" "UBERON:0001465")
(def-indiv-with-id bone "knee cap" "UBERON:0002446" :name "patella" :adj "patellar")
(def-indiv-with-id bone "femur" "UBERON:0000981" :adj "femoral")
(def-indiv-with-id bone "fibula" "UBERON:0001446" :adj "fibular")
(def-indiv-with-id bone "tibia" "UBERON:0000979" :adj "tibial")
(def-indiv-with-id bio-organ "ankle" "UBERON:0001488")
(def-indiv-with-id bone "tarsal" "UBERON:0001447")
(def-indiv-with-id bone "metatarsal" "UBERON:0001448")
(def-indiv-with-id bio-organ "pes" "UBERON:0002387" :name "foot" :plural ("feet")) ;; adj "pedal"? but confusing
(def-indiv-with-id bio-organ "pedal digit" "UBERON:0001466" :name "toe")
(def-indiv-with-id bio-organ "nail of pedal digit" "UBERON:0009567" :name "toenail")
(def-indiv-with-id bio-organ "pedal digit 1" "UBERON:0003631" :name "big toe" :synonyms ("hallux"))
(def-indiv-with-id bio-organ "pedal digit 5" "UBERON:0003635" :name "little toe" :synonyms ("pinky toe"))

(def-indiv-with-id bio-organ "torso" "UBERON:0002100") ;; maybe add trunk?
(def-indiv-with-id bone "rib cage" "UBERON:0003252") ;; need better relationship here
(def-indiv-with-id bone "clavicle" "UBERON:0001105" :name "collarbone")
(def-indiv-with-id bone "rib" "UBERON:0001466")
(def-indiv-with-id bone "sternum" "UBERON:0000975" :adj "sternal" :synonyms ("breastbone"))

(def-indiv-with-id bio-organ "breast" "BTO:0000149" :adj "mammary")
(def-indiv-with-id bio-organ "lung" "BTO:0000763" :adj "pulmonary")
(def-indiv-with-id bio-organ "respiratory tract" "UBERON:0000065" :synonyms ("wind pipe")) 
(def-indiv-with-id bio-organ "heart" "BTO:0000562" :name "heart" :adj "cardiac")
(def-indiv-with-id vasculature "cardiovascular system" "BTO:0000088" :name "cardiovascular system")
(def-indiv-with-id bio-organ "blood" "BTO:0000089" :name "blood")
(def-indiv-with-id vasculature "coronary artery" "TS-0176") 
(def-indiv-with-id vasculature "pulmonary artery" "TS-0839") 

(def-indiv-with-id bio-organ "immune system" "UBERON:0002405") 
(def-indiv-with-id tissue "lymph node" "TS-0579") 
(def-indiv-with-id bio-organ "thymus" "NCIT:C12433" :name "thymus" :plural ("thymuses" "thymi")) 

(def-indiv-with-id bio-organ "abdomen" "UBERON:0000916" :adj "abdominal")
(def-indiv-with-id bio-organ "digestive system" "UBERON:0001007")
(def-indiv-with-id bio-organ "gastrointestinal system" "BTO:0000511" :name "gastrointestinal tract" 
                   :synonyms ("gastroinstestinal system")) ;; mis-spelling
(def-indiv-with-id bio-organ "stomach" "UBERON:0000945" :adj "gastric")
(def-indiv-with-id bio-organ "intestine" "UBERON:0000160" :adj "intestinal")
(def-indiv-with-id tissue "small intestine" "TS-0942") 
(def-indiv-with-id tissue "intestinal mucosa" "TS-0488")
(def-indiv-with-id tissue "bowel" "TS-0490") 
(def-indiv-with-id bio-organ "colon" "BTO:0000269")
(def-indiv-with-id bio-organ "rectum" "UBERON:0001052" :adj "rectal")
(def-indiv-with-id bio-organ "anus" "UBERON:0001245" :adj "anal")

(def-indiv-with-id bio-organ "kidney" "BTO:0000671" :adj "renal")
(def-indiv-with-id bio-organ "bladder" "BTO:0001418" :name "bladder")

(def-indiv-with-id bio-organ "liver" "BTO:0000759" :adj "hepatic")
(def-indiv-with-id bio-organ "pancreas" "BTO:0000988" :adj "pancreatic")
(def-indiv-with-id bio-organ "spleen" "BTO:0001281" :adj "splenic")
(def-indiv-with-id bio-organ "parathyroid" "BTO:0000997" :name "parathyroid gland")
(def-indiv-with-id bio-organ "thyroid" "BTO:0001379" :name "thyroid gland")

(def-indiv-with-id bone "skeleton" "UBERON:0004288" :adj "skeletal") ;; need better relation to bone
(def-indiv-with-id tissue "bone marrow" "TS-0087") 
(def-indiv-with-id bone "backbone" "UBERON:0001130" :name "spine"
                   :synonyms ("spinal column" "vertebral column") :adj "spinal")

(def-indiv-with-id bone "cranium" "UBERON:0003128" :adj "cranial")
(def-indiv-with-id bio-organ "brain" "BTO:0000142" :adj "cerebral")
(def-indiv-with-id bio-organ "CNS" "NCIT:C12433" :name "central nervous system"
                   :synonyms ("Central Nervous System") :maintain-case t)
(def-indiv-with-id tissue "spinal cord" "TS-0953")
(def-indiv-with-id bio-organ "cervical spinal cord" "UBERON:0002726")
(def-indiv-with-id tissue "prefrontal cortex" "TS-1219" :synonyms ("prefrontal lobe")) 
(def-indiv-with-id bio-organ "white matter" "UBERON:0002316") 
(def-indiv-with-id bio-organ "striatum" "UBERON:0002435" :adj "striatal")
(def-indiv-with-id tissue "substantia nigra" "TS-0990")
(def-indiv-with-id tissue "hippocampus" "TS-0460" :adj "hippocampal")
(def-indiv-with-id tissue "thalamus" "UBERON:0001897" :adj "thalamic")
(def-indiv-with-id tissue "hypothalamus" "TS-0469")
(def-indiv-with-id tissue "pituitary" "UBERON:0000007" :name "pituitary gland" :adj "pituitary")
(def-indiv-with-id bio-organ "cerebrovascular system" "UBERON:0008998")

(def-indiv-with-id tissue "PNS" "TS-0808" :name "peripheral nervous system"
                   :synonyms ("Peripheral Nervous System") :maintain-case t)
(def-indiv-with-id tissue "peripheral nerve" "TS-0772")

(def-indiv-with-id bio-organ "ovary" "EFO:0000973" :name "animal ovary" :adj "ovarian")
(def-indiv-with-id tissue "uterus" "TS-1102" :adj "uterine") 
(def-indiv-with-id bio-organ "vagina" "UBERON:0000996" :adj "vaginal")
(def-indiv-with-id bio-organ "vaginal mucosa" "UBERON:0004983") 
(def-indiv-with-id bio-organ "vulva" "UBERON:0000997" :name "vulva") 
(def-indiv-with-id tissue "testis" "TS-1030" :plural("testes") :adj "testicular")
(def-indiv-with-id bio-organ "prostate" "BTO:0001129" :name "prostate gland")
(def-indiv-with-id bio-organ "penis" "UBERON:0000989" :adj "penile")

(def-indiv-with-id bio-organ "germ" "BTO:0000514" :name "germ")
(def-indiv-with-id bio-organ "gonad" "NCIT:C12725" :name "gonad")
(def-indiv-with-id bio-organ "fetus" "BTO:0000449" :name "fetus" :adj "fetal") 
(def-indiv-with-id bio-organ "embryo" "BTO:0000379" :name "embryo" :adj "embryonic") 
(def-indiv-with-id bio-organ "zygote" "BTO:0000854" :name "zygote") 
(def-indiv-with-id bio-organ "spore" "BTO:0001171" :name "spore") 

(def-indiv-with-id bio-organ "vibrissae" "EFO:0000958" :name "hair") 
(def-indiv-with-id tissue "shell" "TS-0925") 

(def-indiv-with-id bio-organ "cyst" "BTO:0000320" :name "cyst") 
(def-indiv-with-id bio-organ "biofilm" "BTO:0002690" :name "biofilm") 

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

(def-indiv-with-id tumor "breast tumor" "TS-0597") 
(def-indiv-with-id tumor "liver tumor" "TS-0563") 
(def-indiv-with-id tumor "lung tumour" "TS-0577") 
(def-indiv-with-id tumor "mammary tumor" "TS-0597") 
(def-indiv-with-id tumor "pancreatic tumor" "TS-0742") 
(def-indiv-with-id tumor "thyroid tumor" "TS-1046")

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

(def-indiv-with-id secretion "body fluid" "UBERON:0006314") 
(def-indiv-with-id secretion "feces" "UBERON:0001988" :synonyms ("faeces" "stool") :adj "fecal") 
(def-indiv-with-id secretion "sap" "EFO:0001047" :name "sap") ;; would bee useful to tie to plants somehow
