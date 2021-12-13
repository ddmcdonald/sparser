(in-package :sparser)

;; problematic
(def-indiv-with-id bio-process "re-arrangement" "NCIT:C21069" :name "DNA sequence rearrangement") 
(def-indiv-with-id bio-process "invasion" "NCIT:C20625" :name "tumor cell invasion") 
(def-indiv-with-id bio-process "replication" "NCIT:C16514" :name "DNA replication") 
(def-indiv-with-id bio-process "Splicing" "NCIT:C17106" :name "RNA splicing")
(def-indiv-with-id bio-process "phlebotomy" "GO:0044369" :name "feeding on blood of other organism")
(def-indiv-with-id bio-process "checkpoint" "NCIT:C18689" :name "cell cycle checkpoint") 
(def-indiv-with-id bio-process "break-down" "GO:0009056" :name "catabolic process" :adj "catabolic") 
(def-indiv-with-id bio-process "desensitization" "NCIT:C45549" :name "receptor desensitization") 
(def-indiv-with-id bio-process "integration" "NCIT:C18855" :name "DNA integration") 

;; slightly problematic
(def-indiv-with-id bio-process "Flight" "GO:0060361" :name "flight")
(def-indiv-with-id bio-process "Memory" "GO:0007613" :name "memory") 
(def-indiv-with-id bio-process "conjugation" "GO:0000746" :name "conjugation") 
(def-indiv-with-id bio-process "ocular" "NCIT:C38533" :name "sight") 
(def-indiv-with-id bio-process "permissiveness" "NCIT:C19311" :name "biologic permissiveness") 
(def-indiv-with-id bio-process "sequestering" "GO:0051235" :name "maintenance of location")
(def-indiv-with-id bio-process "acidification" "GO:0045851" :name "pH reduction") 
(def-indiv-with-id bio-process "immunity" "NCIT:C16710" :name "immunity") 
(def-indiv-with-id bio-process "pigmentation" "GO:0043473" :name "pigmentation")

 

(def-indiv-with-id bio-process "endocytosis" "GO:0006897" :name "endocytosis") 
;(def-indiv-with-id bio-process "exocytosis" "GO:0006887" :name "exocytosis") cell-proc




(def-indiv-with-id bio-process "biosynthesis" "NCIT:C17702" :name "biosynthesis" :adj "biosynthetic") 
(def-indiv-with-id bio-process "angiogenesis" "GO:0001525" :name "angiogenesis" :adj "angiogenic") 
(def-indiv-with-id bio-process "neo-angiogenesis" "NCIT:C16900" :name "neovascularization" :synonyms ("vascularization"))
(def-indiv-with-id bio-process "aggrephagy" "GO:0035973" :name "aggrephagy") 
(def-indiv-with-id bio-process "adaption" "NCIT:C68767" :name "acclimatization")
(def-indiv-with-id bio-process "acclimation" "NCIT:C68767" :name "acclimatization")
(def-indiv-with-id bio-process "chelating" "NCIT:C40483" :name "chelating activity" :synonyms ("chelation")) 

;(def-indiv-with-id bio-process "gestation" "GO:0007565" :name "female pregnancy") 
(def-indiv-with-id bio-process "hematopoiesis" "NCIT:C16674" :name "hematopoiesis" :adj "hematopoietic") 
(def-indiv-with-id bio-process "resorption" "NCIT:C93204" :name "resorption") 
(def-indiv-with-id bio-process "metabolized" "NCIT:C19536" :name "metabolic process" :adj "metabolic" :synonyms ("metabolism")) 



(def-indiv-with-id bio-process "antigen-presentation" "NCIT:C17663" :name "antigen presentation") 
(def-indiv-with-id bio-process "contact-inhibition" "GO:0060242" :name "contact inhibition") 
(def-indiv-with-id bio-process "covalent" "NCIT:C41573" :name "covalent interaction") 
(def-indiv-with-id bio-process "drug-resistance" "NCIT:C16523" :name "drug resistance process") 
(def-indiv-with-id bio-process "perfusion" "NCIT:C150246" :name "perfusion") 


(def-indiv-with-id bio-process "membrane fusion" "GO:0006897" :name "cellular membrane fusion")
(def-indiv-with-id bio-process "LOH" "NCIT:C18016" :name "loss of heterozygosity") 
(def-indiv-with-id bio-process "trans-differentiation" "GO:0060290" :name "transdifferentiation") 

(def-indiv-with-id bio-process "lysis" "NCIT:C37889" :name "lysis" :adj "lytic") 
(def-indiv-with-id bio-process "lipid-metabolism" "GO:0006629" :name "lipid metabolic process") 
(def-indiv-with-id bio-process "hypoplasia" "NCIT:C120893" :name "hypoplasia") 
(def-indiv-with-id bio-process "cross-talk" "NCIT:C94304" :name "cross-talk") 
(def-indiv-with-id bio-process "cross-reaction" "NCIT:C96482" :name "cross reaction") 

(def-indiv-with-id bio-process "anti-apoptosis" "GO:0043066" :name "negative regulation of apoptotic process") 
(def-indiv-with-id bio-process "anergy" "NCIT:C17706" :name "anergy") 
(def-indiv-with-id bio-process "UPR" "NCIT:C118900" :name "unfolded protein response") 
(def-indiv-with-id bio-process "SOCE" "GO:0002115" :name "store-operated calcium entry") 
(def-indiv-with-id bio-process "OIS" "GO:0090402" :name "oncogene-induced cell senescence") 
(def-indiv-with-id bio-process "MPT" "GO:0035794" :name "positive regulation of mitochondrial membrane permeability") 
(def-indiv-with-id bio-process "IL-35" "GO:0070748" :name "interleukin-35 receptor binding") 
(def-indiv-with-id bio-process "GG-NER" "GO:0070911" :name "global genome nucleotide-excision repair") 

(def-indiv-with-id bio-process "pyrexia" "GO:0001660" :name "fever generation") 
(def-indiv-with-id bio-process "GvL" "NCIT:C18156" :name "graft-vs-leukemia effect") 
(def-indiv-with-id bio-process "Granulopoiesis" "NCIT:C26080" :name "granulopoiesis") 
(def-indiv-with-id bio-process "HRR" "GO:0000724" :name "double-strand break repair via homologous recombination") 
(def-indiv-with-id bio-process "Neto" "GO:0051519" :name "activation of bipolar cell growth" :synonyms ("new-end take off")) 
(def-indiv-with-id bio-process "NRP" "GO:0085015" :name "dormancy maintenance of symbiont in host") 
(def-indiv-with-id bio-process "NMD" "NCIT:C29648" :name "nonsense-mediated decay") 
(def-indiv-with-id bio-process "NHEJ" "GO:0006303" :name "double-strand break repair via nonhomologous end joining") 
(def-indiv-with-id bio-process "PTGS" "GO:0016441" :name "posttranscriptional gene silencing") 
(def-indiv-with-id bio-process "Resolution" "NCIT:C25655" :name "resolution") ;Return to the normal structure and/or function, e.g. the subsidence of a pathologic process, as the subsidence of an inflammatory lesion or new growth.
(def-indiv-with-id bio-process "RdDM" "GO:0080188" :name "RNA-directed DNA methylation") 
(def-indiv-with-id bio-process "SOC" "GO:0031578" :name "mitotic spindle orientation checkpoint") 
(def-indiv-with-id bio-process "SDSA" "GO:0045003" :name "double-strand break repair via synthesis-dependent strand annealing") 

(def-indiv-with-id bio-process "ectasia" "NCIT:C120877" :name "ectasia") 

(def-indiv-with-id bio-process "delamination" "GO:0060232" :name "delamination") 
(def-indiv-with-id bio-process "degranulation" "NCIT:C114629" :name "mast cell degranulation") 
;(def-indiv-with-id bio-process "glycosidase" "GO:0016798" :name "hydrolase activity, acting on glycosyl bonds" :synonyms ("glycosylase")) ;should be protein family
(def-indiv-with-id bio-process "fibroplasia" "NCIT:C120881" :name "fibroplasia") 
(def-indiv-with-id bio-process "fibrinolysis" "GO:0042730" :name "fibrinolysis") 
(def-indiv-with-id bio-process "ferroptosis" "GO:0097707" :name "ferroptosis") 
(def-indiv-with-id bio-process "erythropoiesis" "NCIT:C16559" :name "erythropoiesis") 
(def-indiv-with-id bio-process "engraftment" "NCIT:C37947" :name "engraftment") 

(def-indiv-with-id bio-process "macropinocytosis" "GO:0044351" :name "macropinocytosis") 
(def-indiv-with-id bio-process "macrometastasis" "NCIT:C106296" :name "macrometastasis" :plural ("macrometastasises" "macrometastases")) 
(def-indiv-with-id bio-process "macroautophagy" "GO:0016236" :name "macroautophagy") 
(def-indiv-with-id bio-process "mDR" "NCIT:C17745" :name "multidrug resistance") 
(def-indiv-with-id bio-process "lymphomagenesis" "NCIT:C18128" :name "leukemogenesis") 
(def-indiv-with-id bio-process "lymphangiogenesis" "GO:0001946" :name "lymphangiogenesis") 
(def-indiv-with-id bio-process "lipophagy" "GO:0061724" :name "lipophagy") 
(def-indiv-with-id bio-process "lipolysis" "GO:0016042" :name "lipid catabolic process") 
(def-indiv-with-id bio-process "intravasation" "NCIT:C48197" :name "intravasation") 

(def-indiv-with-id bio-process "mtUPR" "GO:0034514" :name "mitochondrial unfolded protein response") 
(def-indiv-with-id bio-process "morphogenesis" "NCIT:C16879" :name "morphogenesis") 
(def-indiv-with-id bio-process "mitogenesis" "NCIT:C20863" :name "stimulation of cell proliferation") 

(def-indiv-with-id bio-process "phagocytosis" "GO:0006909" :name "phagocytosis") 
(def-indiv-with-id bio-process "rme" "NCIT:C18107" :name "receptor mediated endocytosis") 
(def-indiv-with-id bio-process "retrotransposition" "NCIT:C19915" :name "retrotransposition") 
(def-indiv-with-id bio-process "tropism" "GO:0009606" :name "tropism") 
(def-indiv-with-id bio-process "transcytosis" "GO:0045056" :name "transcytosis") 
(def-indiv-with-id bio-process "xenophagy" "GO:0098792" :name "xenophagy") 
(def-indiv-with-id bio-process "F1-ATPase" "GO:0046961" :name "proton-transporting ATPase activity, rotational mechanism") 
(def-indiv-with-id bio-process "cytogamy" "GO:0000755" :name "cytogamy") 
(def-indiv-with-id bio-process "rhophilin" "GO:0017048" :name "Rho GTPase binding")


(def-indiv-with-id bio-process "zinc-binding" "GO:0008270" :name "zinc ion binding") 
(def-indiv-with-id bio-process "blebbing" "GO:0032060" :name "bleb assembly") 
(def-indiv-with-id bio-process "carbohydrate-binding" "GO:0030246" :name "carbohydrate binding") 
(def-indiv-with-id bio-process "gluconeogenesis" "GO:0006094" :name "gluconeogenesis") 

;; post covid
(def-indiv-with-id bio-process "gravitropism" "GO:0009630" :name "gravitropism")

(def-indiv-with-id bio-process "ERAD" "GO:0030433" :name "ubiquitin-dependent ERAD pathway") 
(def-indiv-with-id bio-process "XDR" "NCIT:C102633" :name "extensively drug resistance process") 
(def-indiv-with-id bio-process "neuronophagia" "NCIT:C120901" :name "neuronophagia")
(def-indiv-with-id bio-process "cross-reactive" "NCIT:C96482" :name "cross reaction") 
(def-indiv-with-id bio-process "cross-priming" "GO:0042590" :name "antigen processing and presentation of exogenous peptide antigen via MHC class I") 
(def-indiv-with-id bio-process "cross-presentation" "GO:0002479" :name "antigen processing and presentation of exogenous peptide antigen via MHC class I, TAP-dependent") 
(def-indiv-with-id bio-process "pseudo-uridylation" "GO:0001522" :name "pseudouridine synthesis") 
(def-indiv-with-id bio-process "self-tolerance" "NCIT:C17712" :name "immunologic tolerance") 


(def-indiv-with-id bio-process "VIGS" "GO:0009616" :name "virus induced gene silencing") 
(def-indiv-with-id bio-process "chemotropism" "GO:0043577" :name "chemotropism") 
(def-indiv-with-id bio-process "phototropism" "GO:0009638" :name "phototropism") 
(def-indiv-with-id bio-process "geotropism" "GO:0009630" :name "gravitropism") 
(def-indiv-with-id bio-process "thigmotaxis" "GO:0001966" :name "thigmotaxis") 
(def-indiv-with-id bio-process "geotaxis" "GO:0042332" :name "gravitaxis") 
(def-indiv-with-id bio-process "schizogony" "GO:0020014" :name "schizogony") 
(def-indiv-with-id bio-process "hematophagy" "GO:0044369" :name "feeding on blood of other organism") 
(def-indiv-with-id bio-process "ribophagy" "GO:0034517" :name "ribophagy") 
(def-indiv-with-id bio-process "glycophagy" "GO:0061723" :name "glycophagy") 
(def-indiv-with-id bio-process "heterotrophy" "GO:0015976" :name "carbon utilization") 
(def-indiv-with-id bio-process "pseudomembrane" "NCIT:C67353" :name "pseudomembrane formation") 
(def-indiv-with-id bio-process "reticulophagy" "GO:0061709" :name "reticulophagy") 
(def-indiv-with-id bio-process "anabolism" "GO:0009058" :name "biosynthetic process") 
(def-indiv-with-id bio-process "ERphagy" "GO:0061709" :name "reticulophagy")
;; EndoMT and EndMT have been vetted
(def-indiv-with-id bio-process "EndoMT" "GO:0140074" :name "cardiac endothelial to mesenchymal transition") 
(def-indiv-with-id bio-process "EndMT" "GO:0140074" :name "cardiac endothelial to mesenchymal transition") 
(def-indiv-with-id bio-process "Commensalism" "GO:0044403" :name "symbiotic process") 
(def-indiv-with-id bio-process "Mitophagy" "GO:0000423" :name "mitophagy") 
(def-indiv-with-id bio-process "Lysophagy" "GO:0062093" :name "lysophagy") 
(def-indiv-with-id bio-process "Pexophagy" "GO:0000425" :name "pexophagy") 

(def-indiv-with-id bio-process "agglutination" "GO:0000752" :name "agglutination involved in conjugation with cellular fusion") 
(def-indiv-with-id bio-process "pinocytosis" "GO:0006907" :name "pinocytosis") 
