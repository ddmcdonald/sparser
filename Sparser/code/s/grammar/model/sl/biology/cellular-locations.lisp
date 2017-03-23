;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from taxonomy 2/3/17

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

       
(define-cellular-location "Golgi apparatus" "GO:0005794")
(define-cellular-location "basolateral plasma membrane" "GO:0016323")
(define-cellular-location "caveola" "GO:0005901")
(define-cellular-location "cell leading edge" "GO:0031252")
(define-cellular-location "cell-cell junction" "GO:0005911")
(define-cellular-location "cytoplasm" "GO:0005737" :adj "cytoplasmic")
(define-cellular-location "cytoplasmic vesicle" "GO:0031410")
(define-cellular-location "cytoskeleton" "GO:0005856")
(define-cellular-location "cytosol" "GO:0005829" :adj "cytosolic")
(define-cellular-location "dendritic spine" "GO:0043197")
(define-cellular-location "early endosome" "GO:0005769")
(define-cellular-location "endoplasmic reticulum membrane" "GO:0005789")
(define-cellular-location "endoplasmic reticulum" "GO:0005783")
(define-cellular-location "endosome" "GO:0005768" :adj "endosomal")
(define-cellular-location "extracellular matrix" "GO:0031012")
(define-cellular-location "extracellular region" "GO:0005576")
(define-cellular-location "focal adhesion" "GO:0005925")
(define-cellular-location "growth cone" "GO:0030426")
(define-cellular-location "hemidesmosome" "GO:0030056")
(define-cellular-location "integral to membrane" "GO:0016021")
(define-cellular-location "intracellular" "GO:0005622")
(define-cellular-location "lamellipodium" "GO:0030027")
(define-cellular-location "lamellipodia" "GO:0030027")
(define-cellular-location "filopodium" "GO:0030175")
(define-cellular-location "filopodia" "GO:0030175")
(define-cellular-location "membrane raft" "GO:0045121")
(define-cellular-location "membrane" "GO:0016020")
(define-cellular-location "mitochondrial inner membrane" "GO:0005743")
(define-cellular-location "mitochondrial intermembrane space" "GO:0005758")
(define-cellular-location "mitochondrial matrix" "GO:0005759")
(define-cellular-location "neuromuscular junction" "GO:0031594")
(define-cellular-location "nucleoplasm" "GO:0005654")
(define-cellular-location "nucleus" "GO:0005634" :adj "nuclear")
(define-cellular-location "plasma membrane" "GO:0005886")
(def-synonym plasma-membrane (:noun "PM"))
(define-cellular-location "platelet dense granule lumen" "GO:0031089")
(define-cellular-location "trailing edge" "GO:0031254")
(define-cellular-location "juxtamembrane" "GO:????") ;; corresponds to both the plasma membrane and a side of the plasma membrane, so can be any of 4 GO#s: GO:0005886, GO:0019897, GO:0009898, GO:0009897

(noun "plasma" :super cellular-location)
(noun "cell adhesive  structure" :super cellular-location)


(define-category stress-granule :specializes cellular-location
  :realization
     (:noun "SG"))
(def-synonym stress-granule
  (:noun "stress granule"))


;;;-------------------------------------
;;; cellular locations from TRIPS/Reach
;;;-------------------------------------

(def-ided-indiv cellular-location "Cross-Bridge" "GO:0097595" :name "ventral disc crossbridge") 
(def-ided-indiv cellular-location "MVBs" "GO:0005771" :name "multivesicular body") 
(def-ided-indiv cellular-location "MVE" "GO:0005771" :name "multivesicular body") 
(def-ided-indiv cellular-location "P-bodies" "UP:SL-0230" :name "P-body") 
(def-ided-indiv cellular-location "PML-NB" "GO:0016605" :name "PML body") 
(def-ided-indiv cellular-location "TER" "GO:0097047" :name "DNA replication termination region") 
(def-ided-indiv cellular-location "X-chromosome" "GO:0000805" :name "X chromosome") 
(def-ided-indiv cellular-location "actin cytoskeleton" "GO:0015629") 
(def-ided-indiv cellular-location "actomyosin" "GO:0042641" :name "actomyosin") 
(def-ided-indiv cellular-location "adherens junction" "GO:0005912") 
(def-ided-indiv cellular-location "aggresome" "GO:0016235") 
(def-ided-indiv cellular-location "autophagosome" "UP:SL-0023" :name "Autophagosome") 
(def-ided-indiv cellular-location "basal lamina" "GO:0005605") 
(def-ided-indiv cellular-location "basement membrane" "GO:0005604") 
(def-ided-indiv cellular-location "cell surface" "GO:0009986") 
(def-ided-indiv cellular-location "cell wall" "GO:0005618") 
(def-ided-indiv cellular-location "centriole" "UP:SL-0046" :name "Centriole") 
(def-ided-indiv cellular-location "centromere" "UP:SL-0047" :name "Centromere") 
(def-ided-indiv cellular-location "centrosome" "UP:SL-0048" :name "Centrosome") 
(def-ided-indiv cellular-location "cilium" "UP:SL-0066" :name "Cilium") 
(def-ided-indiv cellular-location "dendrite" "UP:SL-0283" :name "Dendrite") 
(def-ided-indiv cellular-location "endo-lysosomes" "GO:0036019" :name "endolysosome") 
(def-ided-indiv cellular-location "endocytic vesicle" "GO:0030139") 
(def-ided-indiv cellular-location "endomembrane" "UP:SL-0147" :name "Endomembrane system") 
(def-ided-indiv cellular-location "exosome" "UP:SL-0466" :name "Exosome") 
(def-ided-indiv cellular-location "extracellular space" "GO:0005615") 
(def-ided-indiv cellular-location "fibril" "GO:0043205" :name "fibril") 
(def-ided-indiv cellular-location "immunological synapse" "GO:0001772") 
(def-ided-indiv cellular-location "inflammasome" "UP:SL-0488" :name "Inflammasome") 
(def-ided-indiv cellular-location "invadopodia" "UP:SL-0148" :name "Invadopodium") 
(def-ided-indiv cellular-location "kinetochore" "UP:SL-0149" :name "Kinetochore") 
(def-ided-indiv cellular-location "LE" "GO:0005770" :name "late endosome") ;; manually added "LE"
(def-ided-indiv cellular-location "lysosome" "UP:SL-0158" :name "Lysosome") 
(def-ided-indiv cellular-location "mOsM" "GO:0036407" :name "mycolate outer membrane") 
(def-ided-indiv cellular-location "micronucleus" "GO:0031040" :name "micronucleus") 
(def-ided-indiv cellular-location "microsomes" "UP:SL-0166" :name "Microsome") 
(def-ided-indiv cellular-location "mid-body" "UP:SL-0469" :name "Midbody") 
(def-ided-indiv cellular-location "mitochondrial membrane" "GO:0031966") 
(def-ided-indiv cellular-location "mitochondrial outer membrane" "GO:0005741") 
(def-ided-indiv cellular-location "mitochondrial respiratory chain" "GO:0005746") 
(def-ided-indiv cellular-location "mitotic spindle" "GO:0072686") 
(def-ided-indiv cellular-location "mtDNA" "GO:0000262" :name "mitochondrial chromosome") ;; maybe shouldn't be a location
(def-ided-indiv cellular-location "neurofibrillary tangle" "GO:0097418") 
(def-ided-indiv cellular-location "nucleolus" "GO:0005730") 
(def-ided-indiv cellular-location "organelle" "GO:0043226" :name "organelle") 
(def-ided-indiv cellular-location "podosome" "UP:SL-0295" :name "Podosome") 
(def-ided-indiv cellular-location "post-synapse" "GO:0098794" :name "postsynapse") 
(def-ided-indiv cellular-location "primary cilium" "GO:0072372") 
(def-ided-indiv cellular-location "pseudopodia" "UP:SL-0298" :name "Pseudopodium") 
(def-ided-indiv cellular-location "recycling endosome" "GO:0055037") 
(def-ided-indiv cellular-location "replication fork" "GO:0005657") 
(def-ided-indiv cellular-location "ruffle" "GO:0001726") 
(def-ided-indiv cellular-location "sarcomere" "UP:SL-0313" :name "Sarcomere") 
(def-ided-indiv cellular-location "stress fiber" "GO:0001725") 
;;(def-ided-indiv cellular-location "stress fibers" "GO:0001725") ;;unnecessary but plural must have gotten defined first
(def-ided-indiv cellular-location "trans-golgi" "UP:SL-0266" :name "trans-Golgi network") 
(def-ided-indiv cellular-location "vacuole" "UP:SL-0272" :name "Vacuole") 
(def-synonym caveola (:noun "caveolae")) 