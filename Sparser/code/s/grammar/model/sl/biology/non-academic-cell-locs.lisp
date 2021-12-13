;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "non-academic-cell-locs"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2021

;; Broken out from cellular locations and new-defs/new-cell-loc 10/2021
(in-package :sparser)

(define-category cellular-location  :specializes bio-location
  :mixins (has-uid)
  :instantiates self
  :index (:permanent :key name))


;; These came from the MITRE RAS1 owl file

(defmacro define-cellular-location (name id &key (adj nil)(synonyms nil))
  (def-cell-loc name id :adj adj :synonyms synonyms))

(defun def-cell-loc (name id &key adj synonyms)
  (flet ((hyphen-subs (str)
           (substitute #\- #\space str)))
    (let ((cat-name (intern (string-upcase (hyphen-subs name))
                            (find-package :sparser))))
      `(progn
         (define-category ,cat-name :specializes cellular-location
           :bindings (uid ,id name ,name)
           :realization
             (:noun ,name
              ,@(when adj `(:adj ,adj))))
         (handle-mitre-link
          ,(find-symbol (symbol-name cat-name) (find-package :category)) ,id)
         ,@(loop for syn in synonyms collect `(def-synonym ,cat-name (:noun ,syn)))))))

;; unclear if these should really be locations per se 
(define-cellular-location "chromosome" "UP:SL-0468" :adj "chromosomal") 
(def-indiv-with-id chromosome "Y-chromosome" "GO:0000806" :name "Y chromosome") 
(def-indiv-with-id chromosome "X-chromosome" "GO:0000805" :name "X chromosome") 
(def-indiv-with-id chromosome "mtDNA" "GO:0000262" :name "mitochondrial chromosome")
(def-indiv-with-id cellular-location "telomere" "UP:SL-0276" :name "Telomere" :adj "telomeric") ;; part of chromosome

(define-cellular-location "cytoplasm" "GO:0005737" :adj "cytoplasmic")
(define-cellular-location "cytoplasmic vesicle" "GO:0031410")
(define-cellular-location "cytosol" "GO:0005829" :adj "cytosolic")

(define-cellular-location "organelle" "GO:0043226") 
(def-indiv-with-id organelle "nucleolus" "UP:SL-0188" :name "Nucleolus" :plural ("Nucleoluses" "nucleoli"))
(define-cellular-location "nucleus" "GO:0005634" :adj "nuclear" :synonyms ("nuclei")) ;; nucleus and nuclear also both need non-bio defs
(def-indiv-with-id cellular-location "perinuclear region" "UP:SL-0198") 
(def-indiv-with-id organelle "Golgi body" "GO:0005794" :name "Golgi apparatus" :synonyms ("Golgi" "golgi"))
(def-indiv-with-id cellular-location "cisGolgi" "UP:SL-0067" :name "cis-Golgi network") 
(def-indiv-with-id cellular-location "transGolgi" "UP:SL-0266" :name "trans-Golgi network") 

(def-indiv-with-id organelle "lysosome" "UP:SL-0158" :name "Lysosome") 
(def-indiv-with-id cellular-location "endo-lysosome" "GO:0036019" :name "endolysosome") 
(def-indiv-with-id organelle "Endoplasmic Reticulum" "GO:0005783" :name "endoplasmic reticulum") ;; not including "ER" abbreviation since that's more likely to be a confound outside of academia
(def-indiv-with-id organelle "rER" "GO:0005791" :name "rough endoplasmic reticulum")
(def-indiv-with-id organelle "smooth endoplasmic reticulum" "GO:0005790" :name "smooth endoplasmic reticulum")
(def-indiv-with-id organelle "plastid" "UP:SL-0209" :name "Plastid") 

(def-indiv-with-id organelle "mitochondrion" "UP:SL-0173" :name "Mitochondrion" :plural ("mitochondrions" "mitochondria") :synonyms ("GO:0005680") :adj "mitochondrial") 
(def-indiv-with-id cellular-location "mitochondrial membrane" "GO:0031966") 
(def-indiv-with-id cellular-location "mitochondrial outer membrane" "GO:0005741") 
(def-indiv-with-id cellular-location "mitochondrial inner membrane" "GO:0005743") 
(def-indiv-with-id cellular-location "mitochondrial intermembrane space" "GO:0005758") 
(def-indiv-with-id cellular-location "mitochondrial matrix" "GO:0005759") 
(def-indiv-with-id cellular-location "mitochondrial respiratory chain" "GO:0005746") 

(def-indiv-with-id organelle "vesicle" "GO:0031982" :name "vesicle") 
(def-indiv-with-id organelle "vacuole" "UP:SL-0272" :name "Vacuole") 
;; these two are only kind of cellular locations - they're like vacuoles used for drug delivery
(def-indiv-with-id cellular-location "immunoliposome" "NCIT:C19813" :name "immunoliposome")
(def-indiv-with-id cellular-location "liposome" "NCIT:C18208" :name "liposome")

(def-indiv-with-id cellular-location "centrosome" "UP:SL-0048" :name "Centrosome") 
(def-indiv-with-id cellular-location "centriole" "UP:SL-0046" :name "Centriole")
(define-cellular-location "cytoskeleton" "GO:0005856" :adj "cytoskeletal")
(def-indiv-with-id cellular-location "microtubule" "GO:0005874" :name "microtubule") 
(def-indiv-with-id cellular-location "actin cytoskeleton" "GO:0015629")
(def-indiv-with-id cellular-location "actomyosin" "GO:0042641" :name "actomyosin")

(def-indiv-with-id cellular-location "mitotic spindle" "GO:0072686") 
(def-indiv-with-id cellular-location "centromere" "UP:SL-0047" :name "Centromere") 
(def-indiv-with-id cellular-location "kinetochore" "UP:SL-0149" :name "Kinetochore")

(def-indiv-with-id cellular-location "melanosome" "UP:SL-0161" :name "Melanosome") 
(def-indiv-with-id cellular-location "inflammasome" "UP:SL-0488" :name "Inflammasome") 


;; neuronal locations
(def-indiv-with-id cellular-location "neurite" "GO:0043005" :name "neuron projection")
(def-indiv-with-id cellular-location "myelin" "UP:SL-0176" :name "Myelin membrane") 
(def-indiv-with-id cellular-location "axon" "UP:SL-0279" :name "Axon" :adj "axonal") 
(def-indiv-with-id cellular-location "dendrite" "UP:SL-0283" :name "Dendrite" :adj "dendritic")
(def-indiv-with-id cellular-location "dendritic spine" "GO:0043197")
(def-indiv-with-id cellular-location "synapse" "UP:SL-0258" :name "Synapse" :adj "synaptic") 
(def-indiv-with-id cellular-location "synaptosome" "UP:SL-0261" :name "Synaptosome") 
(def-indiv-with-id cellular-location "presynapse" "GO:0098793" :name "presynapse" :adj "presynaptic") 
(def-indiv-with-id cellular-location "post-synapse" "GO:0098794" :name "postsynapse" :adj "postsynaptic")
(def-indiv-with-id cellular-location "bouton" "GO:0043195" :name "terminal bouton" :synonyms ("synaptic bouton"))
(def-indiv-with-id cellular-location "neurofilament" "GO:0005883" :name "neurofilament") 
(def-indiv-with-id cellular-location "neurofibrillary tangle" "GO:0097418") 
(def-indiv-with-id cellular-location "C-fiber" "GO:0044299" :name "C-fiber" :plural ("C-fibers" "c-fibers" "c-fibres") :synonyms ("c-fibre")) ;; pain nerve fiber
(define-cellular-location "neuromuscular junction" "GO:0031594")

(def-indiv-with-id cellular-location "cSMAC" "GO:0001772" :name "immunological synapse" :synonyms ("supramolecular activation cluster" "central supramolecular activation cluster" "c-SMAC" "immune synapse") :maintain-case t)

(def-indiv-with-id cellular-location "mucus" "GO:0070701" :name "mucus layer" :synonyms ("mucous"))  ;; arguably should be substance

(def-indiv-with-id cellular-location "cell wall" "GO:0005618") 
(def-indiv-with-id organelle "Chloroplast" "UP:SL-0049" :name "Chloroplast" :plural ("Chloroplasts" "chloroplasts"))

(def-indiv-with-id cellular-location "Flagellum" "UP:SL-0117" :name "Flagellum" :plural ("Flagellums" "flagella")) 


(def-indiv-with-id cellular-location "virion" "UP:SL-0274" :name "Virion") 
(def-indiv-with-id cellular-location "nucleocapsid" "GO:0019013" :name "viral nucleocapsid") 
(define-cellular-location "viral membrane" "GO:0036338")
