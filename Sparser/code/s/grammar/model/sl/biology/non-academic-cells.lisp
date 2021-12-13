;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "non-academic-cells"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2021

;; broken out from cells and new-defs/new-cells

(def-indiv-with-id cell-type "host cell" "GO:0043657" :name "host cell")

(def-indiv-with-id cell-type "stem cell" "CO:0000034" :synonyms ("SC")) ;; should be category, also SC is confounding
(def-indiv-with-id cell-type "embryonic stem cell" "TS-0263") 

;; reproductive cells
(def-indiv-with-id cell-type "gamete" "CO:0000300")
(def-indiv-with-id cell-type "meiocyte" "BTO:0000845" :name "meiotic cell") 
(def-indiv-with-id cell-type "germ-cell" "BTO:0000535" :name "germ cell") 
(def-indiv-with-id cell-type "ovum" "BTO:0003801" :name "ovum" :plural ("ovums" "ova")) 
(def-indiv-with-id cell-type "oogonia" "BTO:0000964" :name "oocyte")
(def-indiv-with-id cell-type "spermatozoa" "BTO:0001277" :name "spermatozoon") 
(def-indiv-with-id cell-type "sperm" "CO:0000019" :name "sperm") 

;; brain cells/neurons
(def-indiv-with-id cell-type "neuron" "CO:0000540" :name "neuron" :synonyms ("neurone") :adj "neoronal") ;; should probably be category
(def-indiv-with-id cell-type "neuronal cell" "TS-0683") 
(def-indiv-with-id cell-type "motoneuron" "CO:0000100" :name "motor neuron" :synonyms ("motoneurone"))
(def-indiv-with-id cell-type "primary neuron" "CO:0000530") 
(def-indiv-with-id cell-type "interneuron" "CO:0000099" :name "interneuron")
(def-indiv-with-id cell-type "pyramidal neuron" "CO:0000598")
(def-indiv-with-id cell-type "neural stem cell" "CO:0000047")
(def-indiv-with-id cell-type "cortical neuron" "CO:0002609") 

(def-indiv-with-id cell-type "retinal cell" "CO:0009004") 
(def-indiv-with-id cell-type "RGC" "CO:0000740" :name "retinal ganglion cell")
(def-indiv-with-id cell-type "retinal pigment epithelial cell" "CO:0002586") 
(def-indiv-with-id cell-type "primary sensory neuron" "CO:0000531") 
(def-indiv-with-id cell-type "mechanoreceptor" "CO:0000199" :name "mechanoreceptor cell") 
(def-indiv-with-id cell-type "nociceptor" "CO:0000198" :name "pain receptor cell")
(def-indiv-with-id cell-type "dopaminergic cell" "CO:0000700" :name "dopaminergic neuron")
(def-indiv-with-id cell-type "cerebellar granule cell" "CO:0001031") 
(def-indiv-with-id cell-type "cerebellar neuron" "CO:1001611") 
(def-indiv-with-id cell-type "hippocampal neuron" "CO:0002608") 

(def-indiv-with-id cell-type "neuroblast" "CO:0000031" :name "neuroblast") 
(def-indiv-with-id cell-type "neuroglia" "CO:0000125" :name "glial cell" :synonyms ("glia"))  ;; should be category
(def-indiv-with-id cell-type "astrocyte" "BTO:0000099" :name "astrocyte")
(def-indiv-with-id cell-type "microglia" "BTO:0000078" :name "microglia") 
(def-indiv-with-id cell-type "microglial cell" "TS-0627") 
(def-indiv-with-id cell-type "oligodendroglia" "BTO:0000770" :name "oligodendroglia")
(def-indiv-with-id cell-type "oligodendrocyte" "BTO:0000962" :name "oligodendrocyte")
(def-indiv-with-id cell-type "Muller cell" "CO:0011107") ;; retinal glia
(def-indiv-with-id cell-type "Schwann-cell" "BTO:0001220" :name "Schwann cell") ;; PNS glia


;; blood/immune cells
(def-indiv-with-id cell-type "platelet" "CO:0000233" :name "platelet")
(def-indiv-with-id cell-type "haemocyte" "BTO:0000571" :name "hemocyte") 
(def-indiv-with-id cell-type "erythroblast" "BTO:0001571" :name "erythroblast") 
(def-indiv-with-id cell-type "erythrocyte" "BTO:0000424" :name "erythrocyte"
                   :synonyms ("red blood cell" "RBC")) 
(def-indiv-with-id cell-type "pBSC" "CO:0002246" :name "peripheral blood stem cell")
(def-indiv-with-id cell-type "sickle-cell" "BTO:0002656" :name "sickle cell") 

(def-indiv-with-id cell-type "Immune Cell" "CO:0000738") 
(def-indiv-with-id cell-type "B-cell" "CO:0000236" :name "B cell" :synonyms ("B lymphocyte" "B-lymphocyte" "Bcell")) ;; "BTO:0000776"
(def-indiv-with-id cell-type "B-lymphoblast" "BTO:0001528" :name "B-lymphoblast")
(def-indiv-with-id cell-type "pre-B-cell" "BTO:0001133" :name "pre-B-lymphocyte" :synonyms ("pre-B cell")) ;; "TS-0819"
(def-indiv-with-id cell-type "transitional B cell" "CO:0000818") 
(def-indiv-with-id cell-type "mature B cell" "CO:0000785") 
(def-indiv-with-id cell-type "Breg" "CO:0000969" :name "regulatory B cell") 

(def-indiv-with-id cell-type "T-cell" "BTO:0000782" :name "T-lymphocyte"
                   :synonyms ("TCell" "tcell" "Tlymphocyte" "T cell")) ;; "TS-1001" 
(def-indiv-with-id cell-type "leukocyte" "BTO:0000751" :name "leukocyte"
                   :synonyms ("leucocyte" "PMNC"))
(def-indiv-with-id cell-type "CD4+ T cell" "NCIT:C12537" :synonyms ("CD4 lymphocyte" "CD4-positive T lymphocyte" "CD4+"))
(def-indiv-with-id cell-type "cytotoxic T cell" "CO:0000910" :synonyms ("cytotoxic T lymphocyte" "CTL" "T-killer cell" "cytolytic T cell" "CD8+ T-cell" "CD8+ T cell" "CD8+ T lymphocyte" "CD8-positive T-cell" "CD8-positive T lymphocyte" "killer T cell" "CD8+"))
(def-indiv-with-id cell-type "NK-cell" "CO:0000623" :name "natural killer cell" :synonyms ("NK cell" "Natural Killer cell")) 
(def-indiv-with-id cell-type "helper T cell" "CO:0000912")
(def-indiv-with-id cell-type "memory-Tcell" "CO:0000813" :name "memory T cell")
(def-indiv-with-id cell-type "Treg" "CO:0000792" :name "CD4-positive, CD25-positive, alpha-beta regulatory T cell")
(def-indiv-with-id cell-type "aTreg" "CO:0000902" :name "induced T-regulatory cell") 
(def-indiv-with-id cell-type "iTreg" "CO:0000902" :name "induced T-regulatory cell") 
(def-indiv-with-id cell-type "nTreg" "CO:0000903" :name "natural T-regulatory cell") 

(def-indiv-with-id cell-type "monocyte" "BTO:0000876" :name "monocyte") 
(def-indiv-with-id cell-type "histiocyte" "CO:0000235" :name "macrophage" ) 
(def-indiv-with-id cell-type "lymphocyte" "BTO:0000775" :name "lymphocyte") 
(def-indiv-with-id cell-type "lymphoblast" "BTO:0000772" :name "lymphoblast") 
(def-indiv-with-id cell-type "neutrophil" "BTO:0000130" :name "neutrophil") 
(def-indiv-with-id cell-type "granulocyte" "BTO:0000539" :name "granulocyte")
(def-indiv-with-id cell-type "myelocyte" "CO:0002193" :name "myelocyte")

;; bone cells
(def-indiv-with-id cell-type "osteocyte" "BTO:0002038" :name "osteocyte")
(def-indiv-with-id cell-type "osteoclast" "BTO:0000968" :name "osteoclast") 
(def-indiv-with-id cell-type "osteoblast" "BTO:0001593" :name "osteoblast") 
 

;; skin cells
(def-indiv-with-id cell-type "keratinocyte" "BTO:0000667" :name "keratinocyte") 
(def-indiv-with-id cell-type "skin epidermal cell" "TS-0283")
(def-indiv-with-id cell-type "epithelial cell" "TS-0288")
(def-indiv-with-id cell-type "endothelial cell" "TS-0278") 
(def-indiv-with-id cell-type "squamous cell" "TS-1249") 

;; muscle cells
(def-indiv-with-id cell-type "myoblast" "CO:0000056" :name "myoblast") 
(def-indiv-with-id cell-type "myocyte" "CO:0000187" :name "muscle cell") 
(def-indiv-with-id cell-type "smooth muscle cell" "CO:0000192")
(def-indiv-with-id cell-type "aortic smooth muscle cell" "CO:0002539") 
(def-indiv-with-id cell-type "vascular smooth muscle cell" "CO:0000359") 
(def-indiv-with-id cell-type "ventricular myocyte" "CO:0002131") 


;; other cells
(def-indiv-with-id cell-type "airway epithelial cell" "TS-0023")
(def-indiv-with-id cell-type "alveolar epithelial cell" "CO:0000322")
(def-indiv-with-id cell-type "aortic endothelial cell" "CO:0002544") 
(def-indiv-with-id cell-type "bronchial epithelial cell" "CO:0002328") 
(def-indiv-with-id cell-type "capillary endothelial cell" "CO:0002144")
(def-indiv-with-id cell-type "colonic epithelial cell" "CO:0011108") 
(def-indiv-with-id cell-type "intestinal epithelial cell" "CO:0002563")
(def-indiv-with-id cell-type "lung endothelial cell" "CO:1001567") 
(def-indiv-with-id cell-type "lung epithelial cell" "CO:0000082") 
(def-indiv-with-id cell-type "lung fibroblast" "TS-0575") 
(def-indiv-with-id cell-type "mammary epithelial cell" "CO:0002327" :synonyms ("mammary gland epithelial cell" "breast epithelial cell"))
(def-indiv-with-id cell-type "pancreatic epithelial cell" "CO:0000083") 
(def-indiv-with-id cell-type "prostate epithelial cell" "CO:0002231") 
(def-indiv-with-id cell-type "renal epithelial cell" "TS-0505")
(def-indiv-with-id cell-type "umbilical vein endothelial cell" "TS-1081") 
(def-indiv-with-id cell-type "type II alveolar epithelial cell" "CO:0002063") 
(def-indiv-with-id cell-type "vascular endothelial cell" "TS-1106") 
(def-indiv-with-id cell-type "venous endothelial cell" "CO:0002543")

(def-indiv-with-id cell-type "acinar cell" "CO:0000622") 
(def-indiv-with-id cell-type "adipocyte" "CO:0000136" :name "fat cell") 
(def-indiv-with-id cell-type "alveolar macrophage" "CO:0000583") 
(def-indiv-with-id cell-type "ameloblast" "BTO:0001663" :name "ameloblast") 
(def-indiv-with-id cell-type "antibody secreting cell" "CO:0000946") 
(def-indiv-with-id cell-type "basal cell" "CO:0000646") 
(def-indiv-with-id cell-type "basophil" "BTO:0000129" :name "basophil") 
(def-indiv-with-id cell-type "beta-cell" "BTO:0000783" :name "pancreatic beta cell")
(def-indiv-with-id cell-type "blastomere" "CO:0000353" :name "blastoderm cell") 
(def-indiv-with-id cell-type "bone marrow cell" "CO:0002092") 
(def-indiv-with-id cell-type "bone marrow macrophage" "CO:0002476") 
(def-indiv-with-id cell-type "bone marrow mononuclear cell" "CO:0010004") 
(def-indiv-with-id cell-type "bone marrow stromal cell" "CO:0010001") 
(def-indiv-with-id cell-type "cardiac cell" "TS-0115") 
(def-indiv-with-id cell-type "cardiac fibroblast" "CO:0002548") 
(def-indiv-with-id cell-type "cardiac neuron" "CO:0010022") 
(def-indiv-with-id cell-type "cardiomyocyte" "CO:0000746" :name "cardiac muscle cell") 
(def-indiv-with-id cell-type "centroblast" "CO:0000965" :name "Bm3 B cell") 
(def-indiv-with-id cell-type "centrocyte" "CO:0000966" :name "Bm4 B cell") 
(def-indiv-with-id cell-type "cholangiocyte" "CO:1000488" :name "cholangiocyte") 
(def-indiv-with-id cell-type "chondroblast" "CO:0000058" :name "chondroblast")
(def-indiv-with-id cell-type "chondrocyte" "CO:0000138" :name "chondrocyte") 
(def-indiv-with-id cell-type "chromatophore" "CO:0000147" :name "pigment cell") 
(def-indiv-with-id cell-type "corneocyte" "CO:0002153" :name "corneocyte") 
(def-indiv-with-id cell-type "crypt cell" "CO:0000849") 
(def-indiv-with-id cell-type "cumulus cell" "CO:0000711") 
(def-indiv-with-id cell-type "dendritic cell" "CO:0000451") 
(def-indiv-with-id cell-type "dikaryon" "CO:0000603" :name "dikaryon") 
(def-indiv-with-id cell-type "enterocyte" "CO:0000584" :name "enterocyte") 
(def-indiv-with-id cell-type "eosinophil" "BTO:0000399" :name "eosinophil") 
(def-indiv-with-id cell-type "eukaryotic cell" "CO:0000255") 
(def-indiv-with-id cell-type "fibrocyte" "CO:0000135" :name "fibrocyte") 
(def-indiv-with-id cell-type "fibroblast" "CO:0000057" :name "fibroblast")
(def-indiv-with-id cell-type "embryonic fibroblast" "CO:2000042")
(def-indiv-with-id cell-type "glomerular cell" "CO:1000746") 
(def-indiv-with-id cell-type "goblet-cell" "BTO:0001540" :name "goblet cell") 
(def-indiv-with-id cell-type "gonadotrope" "CO:0000437" :name "gonadtroph" :synonyms ("gonadotroph")) 
(def-indiv-with-id cell-type "gonocyte" "BTO:0004982" :name "gonocyte") 
(def-indiv-with-id cell-type "granulosa cell" "CO:0000501")
(def-indiv-with-id cell-type "hematopoietic cell" "CO:0000988") 
(def-indiv-with-id cell-type "hepatic stellate cell" "CO:0000632") 
(def-indiv-with-id cell-type "hepatocyte" "CO:0000182" :name "hepatocyte") 
(def-indiv-with-id cell-type "heterokaryon" "CO:0000600" :name "heterokaryon") 
(def-indiv-with-id cell-type "inflammatory cell" "CO:0009002") 
(def-indiv-with-id cell-type "keratocyte" "CO:0002363" :name "keratocyte")
(def-indiv-with-id cell-type "kidney cell" "CO:1000497") 
(def-indiv-with-id cell-type "Kupffer cell" "CO:0000091") 
(def-indiv-with-id cell-type "lactotroph" "CO:0002311" :name "mammotroph" :synonyms ("lactotrope")) 
(def-indiv-with-id cell-type "lipocyte" "CO:0000632" :name "hepatic stellate cell") 
(def-indiv-with-id cell-type "mDC" "CO:0000782" :name "myeloid dendritic cell" :maintain-case t) 
(def-indiv-with-id cell-type "macrocyte" "CO:0002357" :name "fetal derived definitive erythrocyte") 
(def-indiv-with-id cell-type "mammosomatotroph" "CO:0002310" :name "mammosomatotroph") 
(def-indiv-with-id cell-type "mast cell" "TS-0603") 
(def-indiv-with-id cell-type "mature oocyte" "CO:0000025") 
(def-indiv-with-id cell-type "megakaryocyte" "BTO:0000843" :name "megakaryocyte")
(def-indiv-with-id cell-type "melanoblast" "CO:0000541") 
(def-indiv-with-id cell-type "melanocyte" "BTO:0000847" :name "melanocyte") 
(def-indiv-with-id cell-type "melanophore" "BTO:0001711" :name "melanophore") 
(def-indiv-with-id cell-type "melanotroph" "CO:0000440" :name "melanocyte stimulating hormone secreting cell") 
(def-indiv-with-id cell-type "mesangial cell" "CO:0000650") 
(def-indiv-with-id cell-type "metamyelocyte" "CO:0002192" :name "metamyelocyte") 
(def-indiv-with-id cell-type "microvascular endothelial cell" "CO:2000008") 
(def-indiv-with-id cell-type "mononuclear cell" "CO:0000842") 
(def-indiv-with-id cell-type "myeloblast" "CO:0000835" :name "myeloblast") 
(def-indiv-with-id cell-type "myeloid cell" "TS-0647") 
(def-indiv-with-id cell-type "myotube" "CO:0002372" :name "myotube") 
(def-indiv-with-id cell-type "normoblast" "BTO:0003095" :name "normoblast") 
(def-indiv-with-id cell-type "odontoblast" "CO:0000060") 
(def-indiv-with-id cell-type "pericyte" "CO:0000669" :name "pericyte cell")
(def-indiv-with-id cell-type "peritoneal macrophage" "CO:0000581") 
(def-indiv-with-id cell-type "plasmocyte" "BTO:0000392" :name "plasma cell") 
(def-indiv-with-id cell-type "podocyte" "CL:0000653") 
(def-indiv-with-id cell-type "pre-osteoblast" "BTO:0002051" :name "preosteoblast") 
(def-indiv-with-id cell-type "precursor cell" "CO:0011115") 
(def-indiv-with-id cell-type "promonocyte" "CO:0000559" :name "promonocyte") 
(def-indiv-with-id cell-type "promyelocyte" "BTO:0005790" :name "promyelocyte") 
(def-indiv-with-id cell-type "protoplast" "CO:0000371" :name "protoplast") 
(def-indiv-with-id cell-type "reticulocyte" "BTO:0001173" :name "reticulocyte") 
(def-indiv-with-id cell-type "satellite cell" "TS-1205") 
(def-indiv-with-id cell-type "spermatid" "CO:0000018" :name "spermatid") 
(def-indiv-with-id cell-type "spermatocyte" "BTO:0001275" :name "spermatocyte") 
(def-indiv-with-id cell-type "spermatogonium" "BTO:0000958" :name "spermatogonium" :plural ("spermatogoniums" "spermatogonia")) 
(def-indiv-with-id cell-type "spheroplast" "CO:0000524" :name "spheroplast") 
(def-indiv-with-id cell-type "splenocyte" "CO:2000074" :name "splenocyte") 
(def-indiv-with-id cell-type "Stromal cell" "TS-0984") 
(def-indiv-with-id cell-type "syncitium" "CO:0000228" :name "multinucleate cell") 
(def-indiv-with-id cell-type "synoviocyte" "CO:0000214" :name "synovial cell") 
(def-indiv-with-id cell-type "thymocyte" "BTO:0001372" :name "thymocyte") 
(def-indiv-with-id cell-type "thyrotrope" "CO:0000476" :name "thyrotroph")
(def-indiv-with-id cell-type "yolk cell" "CO:0000428")


;; cancer cells
(def-indiv-with-id cell-type "cancercell" "CO:0001064" :name "malignant cell") 
(def-indiv-with-id cell-type "glioma cell" "TS-0416")
(def-indiv-with-id cell-type "leukemia cell" "TS-0547") 
(def-indiv-with-id cell-type "OSCC" "BTO:0003614" :name "oral squamous cell carcinoma cell") ;; OSCC should possibly map to the disease not the cell

;; complicated - line and type should relate somehow
(def-indiv-with-id cell-line "HeLa" "EFO:0001185" :maintain-case t) 
(def-indiv-with-id cell-type "HeLa cell" "TS-0136")
