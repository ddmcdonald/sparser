(in-package :sparser)

(defun define-trips-term (term)
    (eval (trips/reach-term->def-bio term #'trips-class->krisp)))


    
(defun trips-class->krisp (term)
  (ecase (intern (subseq (second term) 4)) ;; drop the ONT:
    ((protein gene-protein) 'protein) ;; we treat genes as if they name the protein
    (gene 'gene)
    (bacterium 'bacterium)
    (biological-process 'bio-process)
    ((internal-body-part body-part) 'bio-organ)
    (cancer 'cancer)
    (cell 'cell-type)
    (cell-line 'cell-line)
    (cell-part 'cellular-location)
    (chemical 'molecule)
    (macromolecular-complex 'bio-complex)
    (measure-unit 'unit-of-measure)
    (medical-disorders-and-conditions 'disease)
    (medical-instrument 'bio-method) ;; not quite, but we don't distinguish the instruments from the methods
    (molecular-domain 'protein-domain)
    (molecule 'molecule)
    (molecular-site 'residue-on-protein)
    ((organism nonhuman-animal fish invertebrate) 'organism)
    (pharmacologic-substance 'drug)
    (physical-condition 'disease)
    (procedure 'bio-method)
    (process 'bio-method) ;; the one case we have here is a bio-method -- transplantation
    (protein-family 'protein-family)
    (referential-sem 'referential-sem) ;; huh?
    (rna 'rna)
    (virus 'virus)))


;;("D770_N771insNPG" "ONT:MUTATION" :ID NIL :NAME NIL) 
;;("K224A" "ONT:MUTATION" :ID NIL :NAME NIL) 
;;("L747_E749del" "ONT:MUTATION" :ID NIL :NAME NIL) 
;; ("A375P" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("A3R" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("B2A" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("D1R" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("E1A" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("H2R" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("H2S" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("H3R" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("I3C" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("P2X" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("P2Y" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("S13A" "ONT:MUTATION" :ID NIL :NAME NIL)
;; ("S7A" "ONT:MUTATION" :ID NIL :NAME NIL)



(defparameter *trips-terms*
  '(
    ("CNS" "ONT:BACTERIUM" :ID "NCIT:C62584" :NAME
     "coagulase-negative staphylococcus") 
    ("Erwinia" "ONT:BACTERIUM" :ID "NCIT:C127280" :NAME "dickeya") 
    ("ADCC" "ONT:BIOLOGICAL-PROCESS" :ID "GO:0001788" :NAME
     "antibody-dependent cellular cytotoxicity") 
    ("MDR" "ONT:BIOLOGICAL-PROCESS" :ID "NCIT:C17745" :NAME
     "multidrug resistance") 
    ("MPT" "ONT:BIOLOGICAL-PROCESS" :ID "GO:0035794" :NAME
     "positive regulation of mitochondrial membrane permeability") 
    ("PTM" "ONT:BIOLOGICAL-PROCESS" :ID "GO:0043687" :NAME
     "post-translational protein modification") 
    ("SOCE" "ONT:BIOLOGICAL-PROCESS" :ID "GO:0002115" :NAME
     "store-operated calcium entry") 
    ("UPR" "ONT:BIOLOGICAL-PROCESS" :ID "NCIT:C118900" :NAME
     "unfolded protein response") 
    ("metastases" "ONT:BIOLOGICAL-PROCESS" :ID "NCIT:C19151" :NAME "metastasis") 
    ("parasitism" "ONT:BIOLOGICAL-PROCESS" :ID "GO:0072519" :NAME "parasitism") 
    ("trabeculae" "ONT:BODY-PART" :ID "EFO:0003706" :NAME "trabecular layer") 
    ("AML" "ONT:CANCER" :ID "EFO:0000222" :NAME "acute myeloid leukemia") 
    ("Cas" "ONT:CANCER" :ID "NCIT:C9305" :NAME "malignant neoplasm") 
    ("IPMN" "ONT:CANCER" :ID "NCIT:C38342" :NAME
     "pancreatic intraductal papillary-mucinous neoplasm") 
    ("MCL" "ONT:CANCER" :ID "EFO:1001469" :NAME "Mantle cell lymphoma") 
    ("MPN" "ONT:CANCER" :ID "NCIT:C4345" :NAME
     "chronic myeloproliferative disorder") 
    ("MPNST" "ONT:CANCER" :ID "EFO:0000760" :NAME
     "malignant peripheral nerve sheath tumor") 
    ("PanIN" "ONT:CANCER" :ID "NCIT:C4845" :NAME
     "pancreatic intraepithelial neoplasia") 
    ("RCC" "ONT:CANCER" :ID "EFO:0000681" :NAME "renal cell carcinoma") 
    ("RT" "ONT:CANCER" :ID "NCIT:C82594" :NAME "refractory thrombocytopenia") 
    ("SCLC" "ONT:CANCER" :ID "EFO:0000702" :NAME "small cell lung carcinoma") 
    ("B-cell" "ONT:CELL" :ID "CO:0000236" :NAME "B cell") 
    ("HSC" "ONT:CELL" :ID "BTO:0000725" :NAME "hematopoietic stem cell") 
    ("ICC" "ONT:CELL" :ID "CO:0002088" :NAME "interstitial cell of Cajal") 
    ("NSC" "ONT:CELL" :ID "CO:0000047" :NAME "neuronal stem cell") 
    ("OVA" "ONT:CELL" :ID "BTO:0003801" :NAME "ovum") 
    ("PBMCs" "ONT:CELL" :ID "BTO:0001025" :NAME
     "peripheral blood mononuclear cell") 
    ("RGC" "ONT:CELL" :ID "CO:0000740" :NAME "retinal ganglion cell") 
    ("RGCs" "ONT:CELL" :ID "CO:0000740" :NAME "retinal ganglion cell") 
    ("Tcells" "ONT:CELL" :ID "BTO:0000782" :NAME "T-lymphocyte") 
    ("Treg" "ONT:CELL" :ID "CO:0000792" :NAME
     "CD4-positive, CD25-positive, alpha-beta regulatory T cell") 
    ("VSMC" "ONT:CELL" :ID "CO:0000359" :NAME
     "vascular associated smooth muscle cell") 
    ("cardiomyocytes" "ONT:CELL" :ID "CO:0000746" :NAME "cardiac muscle cell") 
    ("enterocytes" "ONT:CELL" :ID "CO:0000584" :NAME "enterocyte") 
    ("eosinophils" "ONT:CELL" :ID "BTO:0000399" :NAME "eosinophil") 
    ("erythrocytes" "ONT:CELL" :ID "BTO:0000424" :NAME "erythrocyte") 
    ("granulocytes" "ONT:CELL" :ID "BTO:0000539" :NAME "granulocyte") 
    ("oocytes" "ONT:CELL" :ID "BTO:0000964" :NAME "oocyte") 
    ("osteoclast" "ONT:CELL" :ID "BTO:0000968" :NAME "osteoclast") 
    ("platelet" "ONT:CELL" :ID "CO:0000233" :NAME "platelet") 
    ("synoviocytes" "ONT:CELL" :ID "CO:0000214" :NAME "synovial cell") 
    ("AP2" "ONT:CELL-LINE" :ID "CVCL:W419" :NAME "AP2") 
    ("ASO" "ONT:CELL-LINE" :ID "CVCL:R967" :NAME "ASO") 
    ("AtT20" "ONT:CELL-LINE" :ID "CVCL:2300" :NAME "AtT-20") 
    ("B16F0" "ONT:CELL-LINE" :ID "CVCL:0604" :NAME "B16-F0") 
    ("BAS" "ONT:CELL-LINE" :ID "CVCL:U803" :NAME "BA") 
    ("BBM" "ONT:CELL-LINE" :ID "CVCL:4400" :NAME "BBM") 
    ("BCPAP" "ONT:CELL-LINE" :ID "CVCL:0153" :NAME "B-CPAP") 
    ("BFA" "ONT:CELL-LINE" :ID "CVCL:4124" :NAME "BFA") 
    ("BM" "ONT:CELL-LINE" :ID "CVCL:S926" :NAME "BM") 
    ("BV2" "ONT:CELL-LINE" :ID "CVCL:0182" :NAME "BV-2") 
    ("Brn-2" "ONT:CELL-LINE" :ID "CVCL:0U16" :NAME "BRN-2") 
    ("C4-2" "ONT:CELL-LINE" :ID "CVCL:4782" :NAME "LNCaP C4-2") 
    ("CA" "ONT:CELL-LINE" :ID "CVCL:E319" :NAME "CA") 
    ("CA2" "ONT:CELL-LINE" :ID "CVCL:B845" :NAME "CA2") 
    ("CAF" "ONT:CELL-LINE" :ID "CVCL:R883" :NAME "CAF") 
    ("CB1" "ONT:CELL-LINE" :ID "CVCL:U652" :NAME "CB1") 
    ("CC" "ONT:CELL-LINE" :ID "CVCL:E520" :NAME "CC") 
    ("CCL4" "ONT:CELL-LINE" :ID "CVCL:M024" :NAME "CCL4") 
    ("CD" "ONT:CELL-LINE" :ID "CVCL:W955" :NAME "CD") 
    ("CDK" "ONT:CELL-LINE" :ID "CVCL:R774" :NAME "DK1 [Tursiops]") 
    ("CE" "ONT:CELL-LINE" :ID "CVCL:6D96" :NAME "CE") 
    ("COL1" "ONT:CELL-LINE" :ID "CVCL:2A40" :NAME "Col-1") 
    ("CP" "ONT:CELL-LINE" :ID "CVCL:6F78" :NAME "CP") 
    ("Cas9" "ONT:CELL-LINE" :ID "CVCL:8537" :NAME "CAS-9") 
    ("Cos-1" "ONT:CELL-LINE" :ID "NCIT:C17968" :NAME "COS-1") 
    ("DAPT" "ONT:CELL-LINE" :ID "CVCL:D279" :NAME "DAPT") 
    ("DEN" "ONT:CELL-LINE" :ID "CVCL:1R33" :NAME "DEN-HSA") 
    ("DG" "ONT:CELL-LINE" :ID "CVCL:S101" :NAME "DG") 
    ("DM" "ONT:CELL-LINE" :ID "CVCL:F549" :NAME "DM") 
    ("EA" "ONT:CELL-LINE" :ID "CVCL:E575" :NAME "EA") 
    ("FG" "ONT:CELL-LINE" :ID "CVCL:8196" :NAME "FG") 
    ("Fer" "ONT:CELL-LINE" :ID "CVCL:4200" :NAME "FER") 
    ("GM2" "ONT:CELL-LINE" :ID "CVCL:Z795" :NAME "GM2") 
    ("GM3" "ONT:CELL-LINE" :ID "CVCL:Z796" :NAME "GM3") 
    ("GP" "ONT:CELL-LINE" :ID "CVCL:S009" :NAME "GP") 
    ("GS" "ONT:CELL-LINE" :ID "CVCL:S933" :NAME "GS") 
    ("GSC" "ONT:CELL-LINE" :ID "CVCL:M752" :NAME "GSC") 
    ("HHT" "ONT:CELL-LINE" :ID "CVCL:Y541" :NAME "iPS-HHT") 
    ("HK" "ONT:CELL-LINE" :ID "CVCL:L805" :NAME "HK") 
    ("HL-60" "ONT:CELL-LINE" :ID "NCIT:C19433" :NAME "HL60") 
    ("HN6" "ONT:CELL-LINE" :ID "CVCL:8129" :NAME "HN-6") 
    ("HO" "ONT:CELL-LINE" :ID "CVCL:M698" :NAME "Ho") 
    ("HPA" "ONT:CELL-LINE" :ID "CVCL:W418" :NAME "HPA") 
    ("HS" "ONT:CELL-LINE" :ID "CVCL:W404" :NAME "Hs") 
    ("HT-29" "ONT:CELL-LINE" :ID "EFO:0001193" :NAME "HT-29") 
    ("HT29" "ONT:CELL-LINE" :ID "CVCL:0320" :NAME "HT-29") 
    ("HUVEC" "ONT:CELL-LINE" :ID "BTO:0001949" :NAME "HUVEC cell") 
    ("IEG" "ONT:CELL-LINE" :ID "CVCL:W364" :NAME "IEG") 
    ("IM" "ONT:CELL-LINE" :ID "CVCL:W444" :NAME "IM") 
    ("Ishikawa" "ONT:CELL-LINE" :ID "CVCL:2529" :NAME "Ishikawa") 
    ("KMP" "ONT:CELL-LINE" :ID "CVCL:4531" :NAME "KMP") 
    ("KP2" "ONT:CELL-LINE" :ID "CVCL:3004" :NAME "KP-2") 
    ("LBS" "ONT:CELL-LINE" :ID "CVCL:E751" :NAME "LB") 
    ("LH" "ONT:CELL-LINE" :ID "CVCL:V626" :NAME "PrEC LH") 
    ("Lovo" "ONT:CELL-LINE" :ID "CVCL:0399" :NAME "LoVo") 
    ("MA" "ONT:CELL-LINE" :ID "CVCL:Z027" :NAME "ACC-LC-78") 
    ("MC" "ONT:CELL-LINE" :ID "CVCL:W203" :NAME "MC") 
    ("MDA-MB-231" "ONT:CELL-LINE" :ID "EFO:0001209" :NAME "MDAMB231") 
    ("MH2" "ONT:CELL-LINE" :ID "CVCL:AT89" :NAME "MH-2") 
    ("MO" "ONT:CELL-LINE" :ID "CVCL:1439" :NAME "Mo") 
    ("MOR" "ONT:CELL-LINE" :ID "CVCL:2618" :NAME "MOR") 
    ("Maver-1" "ONT:CELL-LINE" :ID "CVCL:1831" :NAME "MAVER-1") 
    ("Mst1" "ONT:CELL-LINE" :ID "CVCL:0J34" :NAME "MST-1") 
    ("Mst2" "ONT:CELL-LINE" :ID "CVCL:0J35" :NAME "MST-2") 
    ("NCM460" "ONT:CELL-LINE" :ID "CVCL:0460" :NAME "NCM460") 
    ("NHEKs" "ONT:CELL-LINE" :ID "EFO:0002799" :NAME "NHEK") 
    ("NIH3T3" "ONT:CELL-LINE" :ID "EFO:0001222" :NAME "NIH3T3") 
    ("PAC1" "ONT:CELL-LINE" :ID "CVCL:U511" :NAME "PAC1") 
    ("PBA" "ONT:CELL-LINE" :ID "CVCL:4T88" :NAME "Patas-BARF1") 
    ("PC3" "ONT:CELL-LINE" :ID "CVCL:0035" :NAME "PC-3") 
    ("PD" "ONT:CELL-LINE" :ID "CVCL:8401" :NAME "PD PaCa") 
    ("PE" "ONT:CELL-LINE" :ID "CVCL:1D86" :NAME "PE") 
    ("PF" "ONT:CELL-LINE" :ID "CVCL:R981" :NAME "PF") 
    ("PFC" "ONT:CELL-LINE" :ID "CVCL:6F45" :NAME "PFC") 
    ("PK" "ONT:CELL-LINE" :ID "CVCL:AZ81" :NAME "PK") 
    ("PKR" "ONT:CELL-LINE" :ID "CVCL:2693" :NAME "PKR") 
    ("PMo" "ONT:CELL-LINE" :ID "CVCL:V647" :NAME "PMO") 
    ("PSC" "ONT:CELL-LINE" :ID "CVCL:6G33" :NAME "P-SC(1)") 
    ("Panc-Tu-I" "ONT:CELL-LINE" :ID "CVCL:4012" :NAME "PancTu-I") 
    ("RAW264.7" "ONT:CELL-LINE" :ID "EFO:0001231" :NAME "RAW264.7") 
    ;;("RB" "ONT:CELL-LINE" :ID "CVCL:L985" :NAME "RB") 
    ("RCP" "ONT:CELL-LINE" :ID "CVCL:4285" :NAME "RCP") 
    ("RKO" "ONT:CELL-LINE" :ID "CVCL:0504" :NAME "RKO") 
    ("SA" "ONT:CELL-LINE" :ID "CVCL:E822" :NAME "SA") 
    ("SB" "ONT:CELL-LINE" :ID "CVCL:M146" :NAME "NCI-EWS-95") 
    ("SC" "ONT:CELL-LINE" :ID "CVCL:6444" :NAME "SC") 
    ("SCP" "ONT:CELL-LINE" :ID "CVCL:4298" :NAME "SCP") 
    ("SE" "ONT:CELL-LINE" :ID "CVCL:6D91" :NAME "SE") 
    ("SFK" "ONT:CELL-LINE" :ID "CVCL:R925" :NAME "SFK") 
    ("SGC7901" "ONT:CELL-LINE" :ID "CVCL:0520" :NAME "SGC-7901") 
    ("SHS" "ONT:CELL-LINE" :ID "CVCL:6F94" :NAME "SHS") 
    ("SK-RC-26B" "ONT:CELL-LINE" :ID "CVCL:3120" :NAME "SK-RC-26B") 
    ("SK-RC-45" "ONT:CELL-LINE" :ID "CVCL:4016" :NAME "SK-RC-45") 
    ("SNA" "ONT:CELL-LINE" :ID "CVCL:E831" :NAME "SNA-BLL") 
    ("SP" "ONT:CELL-LINE" :ID "CVCL:L986" :NAME "SpR") 
    ("SQ20B" "ONT:CELL-LINE" :ID "CVCL:7138" :NAME "SQ-20B") 
    ("SakA" "ONT:CELL-LINE" :ID "CVCL:4803" :NAME "Saka") 
    ("TF" "ONT:CELL-LINE" :ID "CVCL:8274" :NAME "TF") 
    ("TLR3" "ONT:CELL-LINE" :ID "CVCL:5601" :NAME "TLR3") 
    ("U2OS" "ONT:CELL-LINE" :ID "CVCL:0042" :NAME "U2OS") 
    ("UM1" "ONT:CELL-LINE" :ID "CVCL:W392" :NAME "UM-1") 
    ("YAP" "ONT:CELL-LINE" :ID "CVCL:8467" :NAME "YAP") 
    ("c26" "ONT:CELL-LINE" :ID "CVCL:J690" :NAME "HT 29/26") 
    ("hsp" "ONT:CELL-LINE" :ID "CVCL:5291" :NAME "HS-P") 
    ("p15" "ONT:CELL-LINE" :ID "CVCL:6G55" :NAME "GEM-81 clone P15") 
    
    ("TER" "ONT:CELL-PART" :ID "GO:0097047" :NAME
     "DNA replication termination region") 
    ("TJ" "ONT:CELL-PART" :ID "UP:SL-0265" :NAME "Tight junction") 
    ("autophagosome" "ONT:CELL-PART" :ID "UP:SL-0023" :NAME "Autophagosome") 
    ("axon" "ONT:CELL-PART" :ID "UP:SL-0279" :NAME "Axon") 
    ("cilium" "ONT:CELL-PART" :ID "UP:SL-0066" :NAME "Cilium") 
    ("dendrite" "ONT:CELL-PART" :ID "UP:SL-0283" :NAME "Dendrite") 
    ("exosome" "ONT:CELL-PART" :ID "UP:SL-0466" :NAME "Exosome") 
    ("fibril" "ONT:CELL-PART" :ID "GO:0043205" :NAME "fibril") 
    ("microsomes" "ONT:CELL-PART" :ID "UP:SL-0166" :NAME "Microsome") 
    ("microtubule" "ONT:CELL-PART" :ID "GO:0005874" :NAME "microtubule") 
    ("mtDNA" "ONT:CELL-PART" :ID "GO:0000262" :NAME "mitochondrial chromosome") 
    ("organelles" "ONT:CELL-PART" :ID "GO:0043226" :NAME "organelle") 
    ("sarcomeres" "ONT:CELL-PART" :ID "UP:SL-0313" :NAME "Sarcomere") 
    ("synapse" "ONT:CELL-PART" :ID "UP:SL-0258" :NAME "Synapse") 
    ("vacuole" "ONT:CELL-PART" :ID "UP:SL-0272" :NAME "Vacuole") 
    ("vacuoles" "ONT:CELL-PART" :ID "UP:SL-0272" :NAME "Vacuole") 
    ("AOH" "ONT:CHEMICAL" :ID "CHEBI:64983" :NAME "alternariol") 
    ("ActD" "ONT:CHEMICAL" :ID "CHEBI:27666" :NAME "actinomycin D") 
    ("BAPTA" "ONT:CHEMICAL" :ID "CHEBI:60888" :NAME "BAPTA") 
    ("CMXRos" "ONT:CHEMICAL" :ID "CHEBI:52156" :NAME "mitoTracker Red") 
    ("Cd" "ONT:CHEMICAL" :ID "NCIT:C44348" :NAME "cadmium") 
    ("DA" "ONT:CHEMICAL" :ID "CHEBI:73826" :NAME "Asp-Ala") 
    ("DHA" "ONT:CHEMICAL" :ID "CHEBI:36005" :NAME "docosahexaenoic acid") 
    ("DR" "ONT:CHEMICAL" :ID "CHEBI:73445" :NAME "Asp-Arg") 
    ("EGTA" "ONT:CHEMICAL" :ID "NCIT:C72097" :NAME "egtazic acid") 
    ("estrogen" "ONT:CHEMICAL" :ID "CHEBI:50114" :NAME "estrogen") 
    ("FAD" "ONT:CHEMICAL" :ID "CHEBI:16238" :NAME "FAD") 
    ("GD3" "ONT:CHEMICAL" :ID "CHEBI:28424" :NAME
     "alpha-N-acetylneuraminosyl-(2->8)-alpha-N-acetylneuraminosyl-(2->3)-beta-D-galactosyl-(1->4)-beta-D-glucosyl-(1<->1')-ceramide") 
    ("GV" "ONT:CHEMICAL" :ID "CHEBI:73922" :NAME "Gly-Val") 
    ("Haem" "ONT:CHEMICAL" :ID "CHEBI:30413" :NAME "heme") 
    ("IH" "ONT:CHEMICAL" :ID "CHEBI:73520" :NAME "Ile-His") 
    ("Icariin" "ONT:CHEMICAL" :ID "CHEBI:78420" :NAME "icariin") 
    ("KCl" "ONT:CHEMICAL" :ID "CHEBI:32588" :NAME "potassium chloride") 
    ("KN93" "ONT:CHEMICAL" :ID "CHEBI:91460" :NAME "KN-93") 
    ("LV" "ONT:CHEMICAL" :ID "CHEBI:73579" :NAME "Leu-Val") 
    ("MH" "ONT:CHEMICAL" :ID "CHEBI:74703" :NAME "Met-His") 
    ("N-acetyl-L-cysteine" "ONT:CHEMICAL" :ID "CHEBI:28939" :NAME
     "N-acetyl-L-cysteine") 
    ("N-methyl-d-aspartate" "ONT:CHEMICAL" :ID "CHEBI:31882" :NAME
     "N-methyl-D-aspartic acid") 
    ("NAD+" "ONT:CHEMICAL" :ID "CHEBI:15846" :NAME "NAD(+)") 
    ("NMDA" "ONT:CHEMICAL" :ID "CHEBI:31882" :NAME "N-methyl-D-aspartic acid") 
    ("NNK" "ONT:CHEMICAL" :ID "NCIT:C29801" :NAME
     "4-methylnitrosamino 1-3-pyridyl 1-butanone") 
    ("Ni" "ONT:CHEMICAL" :ID "NCIT:C690" :NAME "nickel") 
    ("PBN" "ONT:CHEMICAL" :ID "CHEBI:27889" :NAME "lead(0)") 
    ("RR" "ONT:CHEMICAL" :ID "CHEBI:73811" :NAME "Arg-Arg") 
    ("SAM" "ONT:CHEMICAL" :ID "CHEBI:67040" :NAME "S-adenosyl-L-methioninate") 
    ("SGX523" "ONT:CHEMICAL" :ID "CHEBI:90624" :NAME "SGX-523") 
    ("TNBS" "ONT:CHEMICAL" :ID "CHEBI:53063" :NAME
     "2,4,6-trinitrobenzenesulfonic acid") 
    ("XAN" "ONT:CHEMICAL" :ID "CHEBI:17712" :NAME "9H-xanthine") 
    ("XMD8-92" "ONT:CHEMICAL" :ID "CHEBI:60325" :NAME "XMD8-92") 
    ("acrylamide" "ONT:CHEMICAL" :ID "NCIT:C44329" :NAME "acrylamide") 
    ("antigen" "ONT:CHEMICAL" :ID "CHEBI:59132" :NAME "antigen") 
    ("aphanin" "ONT:CHEMICAL" :ID "CHEBI:4746" :NAME "echinenone") 
    ("arachidonate" "ONT:CHEMICAL" :ID "CHEBI:32395" :NAME "arachidonate") 
    ("biomarker" "ONT:CHEMICAL" :ID "CHEBI:59163" :NAME "biomarker") 
    ("carrageenan" "ONT:CHEMICAL" :ID "CHEBI:3435" :NAME "carrageenan") 
    ("celastrol" "ONT:CHEMICAL" :ID "CHEBI:63959" :NAME "celastrol") 
    ("chitosan" "ONT:CHEMICAL" :ID "CHEBI:16261" :NAME "chitosan") 
    ("cystine" "ONT:CHEMICAL" :ID "CHEBI:17376" :NAME "cystine") 
    ("dUTP" "ONT:CHEMICAL" :ID "CHEBI:17625" :NAME "dUTP") 
    ("digoxigenin" "ONT:CHEMICAL" :ID "CHEBI:42098" :NAME "digoxigenin") 
    ("dinitrofluorobenzene" "ONT:CHEMICAL" :ID "CHEBI:53049" :NAME
     "1-fluoro-2,4-dinitrobenzene") 
    ("ecdysone" "ONT:CHEMICAL" :ID "CHEBI:16688" :NAME "ecdysone") 
    ("endotoxin" "ONT:CHEMICAL" :ID "NCIT:C50918" :NAME "endotoxin") 
    ("estrogen" "ONT:CHEMICAL" :ID "CHEBI:50114" :NAME "estrogen") 
    ("gallein" "ONT:CHEMICAL" :ID "CHEBI:88294" :NAME "gallein") 
    ("haem" "ONT:CHEMICAL" :ID "CHEBI:30413" :NAME "heme") 
    ("hexane" "ONT:CHEMICAL" :ID "CHEBI:29021" :NAME "hexane") 
    ("hydroxydopamine" "ONT:CHEMICAL" :ID "CHEBI:78741" :NAME "oxidopamine") 
    ("ionomycin" "ONT:CHEMICAL" :ID "CHEBI:63954" :NAME "ionomycin") 
    ("iopamidol" "ONT:CHEMICAL" :ID "CHEBI:31711" :NAME "iopamidol") 
    ("melanin" "ONT:CHEMICAL" :ID "CHEBI:89634" :NAME "Melanin") 
    ("metabolite" "ONT:CHEMICAL" :ID "CHEBI:25212" :NAME "metabolite") 
    ("methylhistamine" "ONT:CHEMICAL" :ID "CHEBI:29009" :NAME
     "N(tele)-methylhistamine") 
    ("oligomycin" "ONT:CHEMICAL" :ID "CHEBI:25675" :NAME "oligomycin") 
    ("oxLDL" "ONT:CHEMICAL" :ID "CHEBI:60151" :NAME "oxidised LDL") 
    ("peroxynitrite" "ONT:CHEMICAL" :ID "CHEBI:25941" :NAME "peroxynitrite") 
    ("progestin" "ONT:CHEMICAL" :ID "CHEBI:59826" :NAME "progestin") 
    ("superoxide" "ONT:CHEMICAL" :ID "CHEBI:18421" :NAME "superoxide") 
    ("surfactin" "ONT:CHEMICAL" :ID "CHEBI:29681" :NAME "surfactin") 
    ("tBHP" "ONT:CHEMICAL" :ID "CHEBI:64090" :NAME "tert-butyl hydroperoxide") 
    ("thapsigargin" "ONT:CHEMICAL" :ID "CHEBI:9516" :NAME "thapsigargin") 
    ("ABCA1" "ONT:GENE" :ID "HGNC:29" :NAME
     "ATP binding cassette subfamily A member 1") 
    ("ABCA7" "ONT:GENE" :ID "HGNC:37" :NAME
     "ATP binding cassette subfamily A member 7") 
    ("ABCG1" "ONT:GENE" :ID "HGNC:73" :NAME
     "ATP binding cassette subfamily G member 1") 
    ("AID" "ONT:GENE" :ID "NCIT:C101414" :NAME "AICDA") 
    ("ANF" "ONT:GENE" :ID "HGNC:4877" :NAME "HESX homeobox 1") 
    ("ANGPTL4" "ONT:GENE" :ID "HGNC:16039" :NAME "angiopoietin like 4") 
    ("APJ" "ONT:GENE" :ID "HGNC:339" :NAME "apelin receptor") 
    ("ARID1B" "ONT:GENE" :ID "HGNC:18040" :NAME "AT-rich interaction domain 1B") 
    ("ASCT2" "ONT:GENE" :ID "NCIT:C118926" :NAME "SLC1A5") 
    ("ASK3" "ONT:GENE" :ID "HGNC:31689" :NAME
     "mitogen-activated protein kinase kinase kinase 15") 
    ("ATF4" "ONT:GENE" :ID "HGNC:786" :NAME "activating transcription factor 4") 
    ("ApoA1" "ONT:GENE" :ID "HGNC:600" :NAME "apolipoprotein A1") 
    ("BECN1" "ONT:GENE" :ID "HGNC:1034" :NAME "beclin 1") 
    ("BFT" "ONT:GENE" :ID "HGNC:9004" :NAME "paired like homeodomain 1") 
    ("Bis" "ONT:GENE" :ID "NCIT:C105995" :NAME "BAG3") 
    ("C/EBPbeta" "ONT:GENE" :ID "NCIT:C104117" :NAME "CEBPB") 
    ("CCL28" "ONT:GENE" :ID "HGNC:17700" :NAME "C-C motif chemokine ligand 28") 
    ("CD31" "ONT:GENE" :ID "NCIT:C51186" :NAME "PECAM1") 
    ("CD39" "ONT:GENE" :ID "NCIT:C113580" :NAME "ENTPD1") 
    ("CDT2" "ONT:GENE" :ID "NCIT:C101609" :NAME "DTL") 
    ("CEBPD" "ONT:GENE" :ID "HGNC:1835" :NAME
     "CCAAT/enhancer binding protein delta") 
    ("CGREF1" "ONT:GENE" :ID "HGNC:16962" :NAME
     "cell growth regulator with EF-hand domain 1") 
    ("CLCA1" "ONT:GENE" :ID "HGNC:2015" :NAME "chloride channel accessory 1") 
    ("CLK4" "ONT:GENE" :ID "HGNC:13659" :NAME "CDC like kinase 4") 
    ("CORT" "ONT:GENE" :ID "HGNC:2257" :NAME "cortistatin") 
    ("CRL4" "ONT:GENE" :ID "NCIT:C97969" :NAME "IL17RB") 
    ("CRS" "ONT:GENE" :ID "HGNC:12428" :NAME
     "twist family bHLH transcription factor 1") 
    ("CSE" "ONT:GENE" :ID "HGNC:11005" :NAME "solute carrier family 2 member 1") 
    ("CTGF" "ONT:GENE" :ID "HGNC:2500" :NAME "connective tissue growth factor") 
    ("Cited1" "ONT:GENE" :ID "HGNC:1986" :NAME
     "Cbp/p300 interacting transactivator with Glu/Asp rich carboxy-terminal domain 1") 
    ("Cten" "ONT:GENE" :ID "HGNC:24352" :NAME "tensin 4") 
    ("DMRTA1" "ONT:GENE" :ID "HGNC:13826" :NAME "DMRT like family A1") 
    ("DRG" "ONT:GENE" :ID "NCIT:C126990" :NAME "DRG1") 
    ("DSG2" "ONT:GENE" :ID "HGNC:3049" :NAME "desmoglein 2") 
    ("DSS" "ONT:GENE" :ID "NCIT:C75901" :NAME "PMP22") 
    ("Dab1" "ONT:GENE" :ID "HGNC:2661" :NAME "DAB1, reelin adaptor protein") 
    ("DclK1" "ONT:GENE" :ID "HGNC:2700" :NAME "doublecortin like kinase 1") 
    ("ECM" "ONT:GENE" :ID "NCIT:C115183" :NAME "MMRN1") 
    ("EEA1" "ONT:GENE" :ID "HGNC:3185" :NAME "early endosome antigen 1") 
    ("EED" "ONT:GENE" :ID "HGNC:3188" :NAME "embryonic ectoderm development") 
    ("ERRF" "ONT:GENE" :ID "HGNC:28339" :NAME
     "chromosome 1 open reading frame 64") 
    ("Epac" "ONT:GENE" :ID "HGNC:16629" :NAME
     "Rap guanine nucleotide exchange factor 3") 
    ("ErbB" "ONT:GENE" :ID "NCIT:C17763" :NAME "oncogene ERB-B") 
    ("FAL1" "ONT:GENE" :ID "NCIT:C119656" :NAME "FALEC") 
    ("FAM3A" "ONT:GENE" :ID "HGNC:13749" :NAME
     "family with sequence similarity 3 member A") 
    ("FBS" "ONT:GENE" :ID "HGNC:20442" :NAME "fibrosin") 
    ("FBW7" "ONT:GENE" :ID "NCIT:C50390" :NAME "FBXW7") 
    ("FES" "ONT:GENE" :ID "HGNC:3657" :NAME "FES proto-oncogene, tyrosine kinase") 
    ("FGE" "ONT:GENE" :ID "NCIT:C127892" :NAME "SUMF1") 
    ("FPRL1" "ONT:GENE" :ID "HGNC:3827" :NAME "formyl peptide receptor 2") 
    ("FSTL1" "ONT:GENE" :ID "HGNC:3972" :NAME "follistatin like 1") 
    ("Fn14" "ONT:GENE" :ID "NCIT:C117072" :NAME "TNFRSF12A") 
    ("GAG" "ONT:GENE" :ID "NCIT:C16614" :NAME "GAG gene") 
    ("GMPR" "ONT:GENE" :ID "HGNC:4376" :NAME "guanosine monophosphate reductase") 
    ("GalN" "ONT:GENE" :ID "HGNC:4114" :NAME "galanin and GMAP prepropeptide") 
    ("Gata4" "ONT:GENE" :ID "HGNC:4173" :NAME "GATA binding protein 4") 
    ("Gpr34" "ONT:GENE" :ID "HGNC:4490" :NAME "G protein-coupled receptor 34") 
    ("HCRP1" "ONT:GENE" :ID "HGNC:24928" :NAME "VPS37A, ESCRT-I subunit") 
    ("HES1" "ONT:GENE" :ID "HGNC:5192" :NAME
     "hes family bHLH transcription factor 1") 
    ("HES5" "ONT:GENE" :ID "HGNC:19764" :NAME
     "hes family bHLH transcription factor 5") 
    ("HHLA2" "ONT:GENE" :ID "HGNC:4905" :NAME "HERV-H LTR-associating 2") 
    ("HOTAIR" "ONT:GENE" :ID "NCIT:C116285" :NAME "HOTAIR") 
    ("HSP47" "ONT:GENE" :ID "HGNC:1546" :NAME "serpin family H member 1") 
    ("Ikaros" "ONT:GENE" :ID "NCIT:C68731" :NAME "IKZF1") 
    ("Ink4a" "ONT:GENE" :ID "NCIT:C49511" :NAME "CDKN2A") 
    ("Jub" "ONT:GENE" :ID "NCIT:C115437" :NAME "AJUBA") 
    ("KCC2" "ONT:GENE" :ID "HGNC:13818" :NAME "solute carrier family 12 member 5") 
    ("KD" "ONT:GENE" :ID "NCIT:C51572" :NAME "AR") 
    ("KDM2B" "ONT:GENE" :ID "HGNC:13610" :NAME "lysine demethylase 2B") 
    ("KLF4" "ONT:GENE" :ID "HGNC:6348" :NAME "Kruppel like factor 4") 
    ("KLHL12" "ONT:GENE" :ID "HGNC:19360" :NAME "kelch like family member 12") 
    ("Klf5" "ONT:GENE" :ID "HGNC:6349" :NAME "Kruppel like factor 5") 
    ("Krox20" "ONT:GENE" :ID "HGNC:3239" :NAME "early growth response 2") 
    ("LAMA4" "ONT:GENE" :ID "HGNC:6484" :NAME "laminin subunit alpha 4") 
    ("LC3B" "ONT:GENE" :ID "NCIT:C116659" :NAME "MAP1LC3B") 
    ("LRCC" "ONT:GENE" :ID "NCIT:C95269" :NAME "FH") 
    ("LRIG1" "ONT:GENE" :ID "HGNC:17360" :NAME
     "leucine rich repeats and immunoglobulin like domains 1") 
    ("Lgi4" "ONT:GENE" :ID "HGNC:18712" :NAME
     "leucine rich repeat LGI family member 4") 
    ("Lnk" "ONT:GENE" :ID "NCIT:C102803" :NAME "SH2B3") 
    ("MANF" "ONT:GENE" :ID "HGNC:15461" :NAME
     "mesencephalic astrocyte derived neurotrophic factor") 
    ("MAP3K17" "ONT:GENE" :ID "HGNC:16835" :NAME "TAO kinase 2") 
    ("MBNL1" "ONT:GENE" :ID "HGNC:6923" :NAME
     "muscleblind like splicing regulator 1") 
    ("MEF" "ONT:GENE" :ID "NCIT:C97473" :NAME "ELF4") 
    ("MEST" "ONT:GENE" :ID "HGNC:7028" :NAME "mesoderm specific transcript") 
    ("MLK1" "ONT:GENE" :ID "HGNC:6861" :NAME
     "mitogen-activated protein kinase kinase kinase 9") 
    ("MRE11" "ONT:GENE" :ID "NCIT:C98168" :NAME "MRE11A") 
    ("MTA1" "ONT:GENE" :ID "HGNC:7410" :NAME "metastasis associated 1") 
    ("MYPT1" "ONT:GENE" :ID "HGNC:7618" :NAME
     "protein phosphatase 1 regulatory subunit 12A") 
    ("Mfn2" "ONT:GENE" :ID "HGNC:16877" :NAME "mitofusin 2") 
    ("Mid1" "ONT:GENE" :ID "HGNC:7095" :NAME "midline 1") 
    ("MrgX2" "ONT:GENE" :ID "NCIT:C124963" :NAME "MRGPRX2") 
    ("MrgX3" "ONT:GENE" :ID "HGNC:17980" :NAME "MAS related GPR family member X3") 
    ("MrgX4" "ONT:GENE" :ID "HGNC:17617" :NAME "MAS related GPR family member X4") 
    ("MyoD1" "ONT:GENE" :ID "HGNC:7611" :NAME "myogenic differentiation 1") 
    ("NEIL1" "ONT:GENE" :ID "HGNC:18448" :NAME "nei like DNA glycosylase 1") 
    ("NEU3" "ONT:GENE" :ID "HGNC:7760" :NAME "neuraminidase 3") 
    ("NEUROG2" "ONT:GENE" :ID "HGNC:13805" :NAME "neurogenin 2") 
    ("NK2" "ONT:GENE" :ID "NCIT:C52389" :NAME "TAC1") 
    ("NKCC1" "ONT:GENE" :ID "NCIT:C102514" :NAME "SLC12A2") 
    ("NKD1" "ONT:GENE" :ID "HGNC:17045" :NAME "naked cuticle homolog 1") 
    ("NKG2D" "ONT:GENE" :ID "NCIT:C101751" :NAME "KLRK1") 
    ("NLRP3" "ONT:GENE" :ID "HGNC:16400" :NAME
     "NLR family pyrin domain containing 3") 
    ("NORE1A" "ONT:GENE" :ID "NCIT:C104721" :NAME "RASSF5") 
    ("NOX2" "ONT:GENE" :ID "NCIT:C106595" :NAME "CYBB") 
    ("NOX4" "ONT:GENE" :ID "HGNC:7891" :NAME "NADPH oxidase 4") 
    ("NR4A2" "ONT:GENE" :ID "HGNC:7981" :NAME
     "nuclear receptor subfamily 4 group A member 2") 
    ("NaV1.7" "ONT:GENE" :ID "NCIT:C114811" :NAME "SCN9A") 
    ("Nalp3" "ONT:GENE" :ID "NCIT:C77203" :NAME "NLRP3") 
    ("Nmnat1" "ONT:GENE" :ID "HGNC:17877" :NAME
     "nicotinamide nucleotide adenylyltransferase 1") 
    ("Nrf-2" "ONT:GENE" :ID "NCIT:C54238" :NAME "NFE2L2") 
    ("OB" "ONT:GENE" :ID "NCIT:C95049" :NAME "LEP") 
    ("OCN" "ONT:GENE" :ID "HGNC:1043" :NAME "bone gamma-carboxyglutamate protein") 
    ("OGD" "ONT:GENE" :ID "NCIT:C51542" :NAME "FGFR1") 
    ("OS" "ONT:GENE" :ID "NCIT:C75731" :NAME "MID1") 
    ("OTX1" "ONT:GENE" :ID "HGNC:8521" :NAME "orthodenticle homeobox 1") 
    ("PDK4" "ONT:GENE" :ID "HGNC:8812" :NAME "pyruvate dehydrogenase kinase 4") 
    ("PDZK1" "ONT:GENE" :ID "HGNC:8821" :NAME "PDZ domain containing 1") 
    ("PGRMC1" "ONT:GENE" :ID "HGNC:16090" :NAME
     "progesterone receptor membrane component 1") 
    ("PHB1" "ONT:GENE" :ID "HGNC:8912" :NAME "prohibitin") 
    ("PI" "ONT:GENE" :ID "NCIT:C105011" :NAME "SERPINA1") 
    ("PI4KA" "ONT:GENE" :ID "HGNC:8983" :NAME
     "phosphatidylinositol 4-kinase alpha") 
    ("PLCzeta" "ONT:GENE" :ID "HGNC:19218" :NAME "phospholipase C zeta 1") 
    ("PLN" "ONT:GENE" :ID "HGNC:9080" :NAME "phospholamban") 
    ("PNN" "ONT:GENE" :ID "HGNC:9162" :NAME "pinin, desmosome associated protein") 
    ("PTER" "ONT:GENE" :ID "HGNC:9590" :NAME "phosphotriesterase related") 
    ("PTX3" "ONT:GENE" :ID "HGNC:9692" :NAME "pentraxin 3") 
    ("Piezo1" "ONT:GENE" :ID "HGNC:28993" :NAME
     "piezo type mechanosensitive ion channel component 1") 
    ("Prdx3" "ONT:GENE" :ID "HGNC:9354" :NAME "peroxiredoxin 3") 
    ("Ptf1a" "ONT:GENE" :ID "HGNC:23734" :NAME
     "pancreas specific transcription factor, 1a") 
    ("RELN" "ONT:GENE" :ID "HGNC:9957" :NAME "reelin") 
    ("RHBDD1" "ONT:GENE" :ID "HGNC:23081" :NAME "rhomboid domain containing 1") 
    ("RNF43" "ONT:GENE" :ID "HGNC:18505" :NAME "ring finger protein 43") 
    ("RPS6" "ONT:GENE" :ID "HGNC:10429" :NAME "ribosomal protein S6") 
    ("RSK" "ONT:GENE" :ID "NCIT:C104765" :NAME "RPS6KA1") 
    ("Reln" "ONT:GENE" :ID "HGNC:9957" :NAME "reelin") 
    ("S100A4" "ONT:GENE" :ID "HGNC:10494" :NAME "S100 calcium binding protein A4") 
    ("SCD1" "ONT:GENE" :ID "NCIT:C102777" :NAME "SCD") 
    ("SDS" "ONT:GENE" :ID "HGNC:10691" :NAME "serine dehydratase") 
    ("SET8" "ONT:GENE" :ID "NCIT:C73665" :NAME "SETD8") 
    ("SF2" "ONT:GENE" :ID "NCIT:C116044" :NAME "SRSF1") 
    ("SHCBP1" "ONT:GENE" :ID "HGNC:29547" :NAME
     "SHC binding and spindle associated 1") 
    ("SIRT6" "ONT:GENE" :ID "HGNC:14934" :NAME "sirtuin 6") 
    ("SLC25A22" "ONT:GENE" :ID "HGNC:19954" :NAME
     "solute carrier family 25 member 22") 
    ("SNAI2" "ONT:GENE" :ID "HGNC:11094" :NAME
     "snail family transcriptional repressor 2") 
    ("SPRR2A" "ONT:GENE" :ID "HGNC:11261" :NAME "small proline rich protein 2A") 
    ("SQSTM1" "ONT:GENE" :ID "HGNC:11280" :NAME "sequestosome 1") 
    ("SREBP1C" "ONT:GENE" :ID "NCIT:C105086" :NAME "SREBF1") 
    ("SRSF1" "ONT:GENE" :ID "HGNC:10780" :NAME
     "serine and arginine rich splicing factor 1") 
    ("STAG2" "ONT:GENE" :ID "HGNC:11355" :NAME "stromal antigen 2") 
    ("STAG3" "ONT:GENE" :ID "HGNC:11356" :NAME "stromal antigen 3") 
    ("SW" "ONT:GENE" :ID "NCIT:C105065" :NAME "SLC4A1") 
    ("SYN" "ONT:GENE" :ID "NCIT:C51117" :NAME "FYN") 
    ("Sac1" "ONT:GENE" :ID "HGNC:17059" :NAME
     "SAC1 suppressor of actin mutations 1-like (yeast)") 
    ("Sox9" "ONT:GENE" :ID "HGNC:11204" :NAME "SRY-box 9") 
    ("Sur8" "ONT:GENE" :ID "HGNC:15454" :NAME
     "SHOC2, leucine rich repeat scaffold protein") 
    ("TAK1" "ONT:GENE" :ID "NCIT:C106598" :NAME "NR2C2") 
    ("TNS2" "ONT:GENE" :ID "HGNC:19737" :NAME "tensin 2") 
    ("ULK1" "ONT:GENE" :ID "HGNC:12558" :NAME
     "unc-51 like autophagy activating kinase 1") 
    ("UbcH5a" "ONT:GENE" :ID "HGNC:12474" :NAME
     "ubiquitin conjugating enzyme E2 D1") 
    ("VIII" "ONT:GENE" :ID "HGNC:2294" :NAME "cytochrome c oxidase subunit 8A") 
    ("VRK3" "ONT:GENE" :ID "HGNC:18996" :NAME "vaccinia related kinase 3") 
    ("WNK1" "ONT:GENE" :ID "HGNC:14540" :NAME
     "WNK lysine deficient protein kinase 1") 
    ("WTIP" "ONT:GENE" :ID "HGNC:20964" :NAME "Wilms tumor 1 interacting protein") 
    ("Yki" "ONT:GENE" :ID "NCIT:C96031" :NAME "YAP1") 
    ("ZEB1" "ONT:GENE" :ID "HGNC:11642" :NAME
     "zinc finger E-box binding homeobox 1") 
    ("alpha1A-AR" "ONT:GENE" :ID "NCIT:C51401" :NAME "ADRA1A") 
    ("alpha1B-AR" "ONT:GENE" :ID "NCIT:C51402" :NAME "ADRA1B") 
    ("alpha4" "ONT:GENE" :ID "NCIT:C51259" :NAME "IGBP1") 
    ("fMLP" "ONT:GENE" :ID "NCIT:C51444" :NAME "FPR1") 
    ("gC1qR" "ONT:GENE" :ID "HGNC:1243" :NAME "complement C1q binding protein") 
    ("hBDs" "ONT:GENE" :ID "HGNC:4829" :NAME "hemoglobin subunit delta") 
    ("krox20" "ONT:GENE" :ID "HGNC:3239" :NAME "early growth response 2") 
    ("mdr1" "ONT:GENE" :ID "NCIT:C52273" :NAME "ABCB1") 
    ("osterix" "ONT:GENE" :ID "HGNC:17321" :NAME "Sp7 transcription factor") 
    ("p190RhoGAP" "ONT:GENE" :ID "NCIT:C97269" :NAME "GRLF1") 
    ("p38alpha" "ONT:GENE" :ID "NCIT:C51219" :NAME "MAPK14") 
    ("p38gamma" "ONT:GENE" :ID "NCIT:C51217" :NAME "MAPK12") 
    ("p85alpha" "ONT:GENE" :ID "NCIT:C97734" :NAME "PIK3R1") 
    ("ptf1a" "ONT:GENE" :ID "HGNC:23734" :NAME
     "pancreas specific transcription factor, 1a") 
    ("ssk1" "ONT:GENE" :ID "NCIT:C95593" :NAME "BUB1B") 
    ("4E-BP-1" "ONT:GENE-PROTEIN" :ID "UP:Q0P5A7" :NAME
     "Eukaryotic translation initiation factor 4E-binding protein 1") 
    ("4EBP-1" "ONT:GENE-PROTEIN" :ID "UP:Q0P5A7" :NAME
     "Eukaryotic translation initiation factor 4E-binding protein 1") 
    ("A3AR" "ONT:GENE-PROTEIN" :ID "NCIT:C51399" :NAME "ADORA3") 
    ("ABCB1" "ONT:GENE-PROTEIN" :ID "HGNC:40" :NAME
     "ATP binding cassette subfamily B member 1") 
    ("ABCC2" "ONT:GENE-PROTEIN" :ID "HGNC:53" :NAME
     "ATP binding cassette subfamily C member 2") 
    ("ACTA2" "ONT:GENE-PROTEIN" :ID "HGNC:130" :NAME
     "actin, alpha 2, smooth muscle, aorta") 
    ("ADC" "ONT:GENE-PROTEIN" :ID "XFAM:PF06314.9" :NAME "ADC") 
    ("ALK" "ONT:GENE-PROTEIN" :ID "HGNC:427" :NAME
     "anaplastic lymphoma receptor tyrosine kinase") 
    ("ALP" "ONT:GENE-PROTEIN" :ID "UP:P03973" :NAME "Antileukoproteinase") 
    ("AQP1" "ONT:GENE-PROTEIN" :ID "HGNC:633" :NAME
     "aquaporin 1 (Colton blood group)") 
    ("ARC" "ONT:GENE-PROTEIN" :ID "HGNC:648" :NAME
     "activity regulated cytoskeleton associated protein") 
    ("ATF2" "ONT:GENE-PROTEIN" :ID "HGNC:784" :NAME
     "activating transcription factor 2") 
    ("ATG14" "ONT:GENE-PROTEIN" :ID "HGNC:19962" :NAME "autophagy related 14") 
    ("ATRX" "ONT:GENE-PROTEIN" :ID "HGNC:886" :NAME "ATRX, chromatin remodeler") 
    ("Abl" "ONT:GENE-PROTEIN" :ID "UP:Q00022" :NAME "Agaricus bisporus lectin") 
    ("Amigo-2" "ONT:GENE-PROTEIN" :ID "NCIT:C119684" :NAME "AMIGO2") 
    ("Amigo2" "ONT:GENE-PROTEIN" :ID "NCIT:C119684" :NAME "AMIGO2") 
    ("Amigo3" "ONT:GENE-PROTEIN" :ID "HGNC:24075" :NAME
     "adhesion molecule with Ig like domain 3") 
    ("Ang1" "ONT:GENE-PROTEIN" :ID "UP:Q15389" :NAME "Angiopoietin-1") 
    ("Angiopoietin-2" "ONT:GENE-PROTEIN" :ID "HGNC:485" :NAME "angiopoietin 2") 
    ("ApoER2" "ONT:GENE-PROTEIN" :ID "NCIT:C95250" :NAME "LRP8") 
    ("Apod" "ONT:GENE-PROTEIN" :ID "HGNC:612" :NAME "apolipoprotein D") 
    ("Arf" "ONT:GENE-PROTEIN" :ID "FA:03659" :NAME "arf family") 
    ("BAFFR" "ONT:GENE-PROTEIN" :ID "NCIT:C111796" :NAME "TNFRSF13C") 
    ("BCL6" "ONT:GENE-PROTEIN" :ID "HGNC:1001" :NAME "B-cell CLL/lymphoma 6") 
    ("BET" "ONT:GENE-PROTEIN" :ID "XFAM:PF17035.3" :NAME "BET") 
    ("BMI1" "ONT:GENE-PROTEIN" :ID "HGNC:1066" :NAME
     "BMI1 proto-oncogene, polycomb ring finger") 
    ("BRCA1" "ONT:GENE-PROTEIN" :ID "HGNC:1100" :NAME
     "BRCA1, DNA repair associated") 
    ("BRCA2" "ONT:GENE-PROTEIN" :ID "HGNC:1101" :NAME
     "BRCA2, DNA repair associated") 
    ("BRD4" "ONT:GENE-PROTEIN" :ID "HGNC:13575" :NAME "bromodomain containing 4") 
    ("BRG1" "ONT:GENE-PROTEIN" :ID "NCIT:C52111" :NAME "SMARCA4") 
    ("BRIP1" "ONT:GENE-PROTEIN" :ID "HGNC:20473" :NAME
     "BRCA1 interacting protein C-terminal helicase 1") 
    ("Beclin1" "ONT:GENE-PROTEIN" :ID "UP:Q14457" :NAME "Beclin-1") 
    ("Bip" "ONT:GENE-PROTEIN" :ID "NCIT:C26293" :NAME
     "bone morphogenetic protein-3B") 
    ("Btg2" "ONT:GENE-PROTEIN" :ID "HGNC:1131" :NAME
     "BTG anti-proliferation factor 2") 
    ("CAII" "ONT:GENE-PROTEIN" :ID "HGNC:1373" :NAME "carbonic anhydrase 2") 
    ("CART" "ONT:GENE-PROTEIN" :ID "FA:00467" :NAME "CART family") 
    ("CASP3" "ONT:GENE-PROTEIN" :ID "HGNC:1504" :NAME "caspase 3") 
    ("CASP8" "ONT:GENE-PROTEIN" :ID "HGNC:1509" :NAME "caspase 8") 
    ("CASP9" "ONT:GENE-PROTEIN" :ID "NCIT:C49561" :NAME "CASP9") 
    ("CBP" "ONT:GENE-PROTEIN" :ID "UP:O42720" :NAME "Calcium-binding protein") 
    ("CCL2" "ONT:GENE-PROTEIN" :ID "HGNC:10618" :NAME
     "C-C motif chemokine ligand 2") 
    ("CCL21" "ONT:GENE-PROTEIN" :ID "HGNC:10620" :NAME
     "C-C motif chemokine ligand 21") 
    ("CCL5" "ONT:GENE-PROTEIN" :ID "HGNC:10632" :NAME
     "C-C motif chemokine ligand 5") 
    ("CD133" "ONT:GENE-PROTEIN" :ID "NCIT:C64330" :NAME "PROM1") 
    ("CD14" "ONT:GENE-PROTEIN" :ID "HGNC:1628" :NAME "CD14 molecule") 
    ("CD147" "ONT:GENE-PROTEIN" :ID "NCIT:C95070" :NAME "basigin") 
    ("CD40" "ONT:GENE-PROTEIN" :ID "HGNC:11919" :NAME "CD40 molecule") 
    ("CD40L" "ONT:GENE-PROTEIN" :ID "UP:P29965" :NAME "CD40 ligand") 
    ("CD71" "ONT:GENE-PROTEIN" :ID "NCIT:C38519" :NAME "transferrin receptor-1") 
    ("CDH5" "ONT:GENE-PROTEIN" :ID "HGNC:1764" :NAME "cadherin 5") 
    ("CDK9" "ONT:GENE-PROTEIN" :ID "HGNC:1780" :NAME "cyclin dependent kinase 9") 
    ("CDKN1C" "ONT:GENE-PROTEIN" :ID "HGNC:1786" :NAME
     "cyclin dependent kinase inhibitor 1C") 
    ("CDKN2A" "ONT:GENE-PROTEIN" :ID "HGNC:1787" :NAME
     "cyclin dependent kinase inhibitor 2A") 
    ("CDT1" "ONT:GENE-PROTEIN" :ID "HGNC:24576" :NAME
     "chromatin licensing and DNA replication factor 1") 
    ("CDX2" "ONT:GENE-PROTEIN" :ID "HGNC:1806" :NAME "caudal type homeobox 2") 
    ("CK2" "ONT:GENE-PROTEIN" :ID "FA:03101" :NAME "CK2 subfamily") 
    ("CLU" "ONT:GENE-PROTEIN" :ID "HGNC:2095" :NAME "clusterin") 
    ("CPEB" "ONT:GENE-PROTEIN" :ID "UP:P0C279" :NAME
     "Cytoplasmic polyadenylation element-binding protein 1") 
    ("CRP" "ONT:GENE-PROTEIN" :ID "HGNC:2367" :NAME "C-reactive protein") 
    ("CRY2" "ONT:GENE-PROTEIN" :ID "HGNC:2385" :NAME
     "cryptochrome circadian clock 2") 
    ("CS" "ONT:GENE-PROTEIN" :ID "HGNC:2422" :NAME "citrate synthase") 
    ("CTA" "ONT:GENE-PROTEIN" :ID "NCIT:C104954" :NAME "PCYT1A") 
    ("CTLA4" "ONT:GENE-PROTEIN" :ID "NCIT:C51345" :NAME "CTLA4") 
    ("CTR" "ONT:GENE-PROTEIN" :ID "UP:P30988" :NAME "Calcitonin receptor") 
    ("CTR1" "ONT:GENE-PROTEIN" :ID "NCIT:C127859" :NAME "SLC31A1") 
    ("CTSB" "ONT:GENE-PROTEIN" :ID "HGNC:2527" :NAME "cathepsin B") 
    ("CTSK" "ONT:GENE-PROTEIN" :ID "HGNC:2536" :NAME "cathepsin K") 
    ("CTSS" "ONT:GENE-PROTEIN" :ID "HGNC:2545" :NAME "cathepsin S") 
    ("CX3CL1" "ONT:GENE-PROTEIN" :ID "HGNC:10647" :NAME
     "C-X3-C motif chemokine ligand 1") 
    ("CXCL2" "ONT:GENE-PROTEIN" :ID "HGNC:4603" :NAME
     "C-X-C motif chemokine ligand 2") 
    ("CXCL3" "ONT:GENE-PROTEIN" :ID "HGNC:4604" :NAME
     "C-X-C motif chemokine ligand 3") 
    ("CXCL5" "ONT:GENE-PROTEIN" :ID "HGNC:10642" :NAME
     "C-X-C motif chemokine ligand 5") 
    ("CXCR7" "ONT:GENE-PROTEIN" :ID "NCIT:C91370" :NAME "CXCR7") 
    ("CYP2B6" "ONT:GENE-PROTEIN" :ID "HGNC:2615" :NAME
     "cytochrome P450 family 2 subfamily B member 6") 
    ("CaMKI" "ONT:GENE-PROTEIN" :ID "UP:Q9P7I2" :NAME
     "Calcium/calmodulin-dependent protein kinase type I") 
    ("CaSR" "ONT:GENE-PROTEIN" :ID "HGNC:1514" :NAME "calcium sensing receptor") 
    ("Cdk3" "ONT:GENE-PROTEIN" :ID "HGNC:1772" :NAME "cyclin dependent kinase 3") 
    ("Connexin43" "ONT:GENE-PROTEIN" :ID "XFAM:PF03508.11" :NAME "connexin43") 
    ("CsA" "ONT:GENE-PROTEIN" :ID "UP:P08796" :NAME "Contact site A protein") 
    ("Cul-5" "ONT:GENE-PROTEIN" :ID "UP:Q93034" :NAME "Cullin-5") 
    ("Cullin3" "ONT:GENE-PROTEIN" :ID "HGNC:2553" :NAME "cullin 3") 
    ("CyclinD1" "ONT:GENE-PROTEIN" :ID "HGNC:1582" :NAME "cyclin D1") 
    ("Cyp2b" "ONT:GENE-PROTEIN" :ID "NCIT:C40050" :NAME "cytochrome P450-2B6") 
    ("DDR1" "ONT:GENE-PROTEIN" :ID "HGNC:2730" :NAME
     "discoidin domain receptor tyrosine kinase 1") 
    ("DHP" "ONT:GENE-PROTEIN" :ID "UP:Q55DL0" :NAME "Dihydropyrimidinase") 
    ("DMP1" "ONT:GENE-PROTEIN" :ID "NCIT:C95576" :NAME "DMP1") 
    ("DR4" "ONT:GENE-PROTEIN" :ID "NCIT:C62757" :NAME
     "HLA class II histocompatibility antigen DRB1-4 beta chain protein") 
    ("DRD1" "ONT:GENE-PROTEIN" :ID "HGNC:3020" :NAME "dopamine receptor D1") 
    ("DUSP1" "ONT:GENE-PROTEIN" :ID "HGNC:3064" :NAME
     "dual specificity phosphatase 1") 
    ("DUSP4" "ONT:GENE-PROTEIN" :ID "HGNC:3070" :NAME
     "dual specificity phosphatase 4") 
    ("Dusp1" "ONT:GENE-PROTEIN" :ID "HGNC:3064" :NAME
     "dual specificity phosphatase 1") 
    ("E2F1" "ONT:GENE-PROTEIN" :ID "NCIT:C52538" :NAME "E2F1") 
    ("EHF" "ONT:GENE-PROTEIN" :ID "HGNC:3246" :NAME "ETS homologous factor") 
    ("EL" "ONT:GENE-PROTEIN" :ID "UP:Q5QJ74" :NAME
     "Tubulin-specific chaperone cofactor E-like protein") 
    ("ELF3" "ONT:GENE-PROTEIN" :ID "HGNC:3318" :NAME
     "E74 like ETS transcription factor 3") 
    ("EMP2" "ONT:GENE-PROTEIN" :ID "HGNC:3334" :NAME
     "epithelial membrane protein 2") 
    ("ETS1" "ONT:GENE-PROTEIN" :ID "HGNC:3488" :NAME
     "ETS proto-oncogene 1, transcription factor") 
    ("EZH2" "ONT:GENE-PROTEIN" :ID "HGNC:3527" :NAME
     "enhancer of zeste 2 polycomb repressive complex 2 subunit") 
    ("Egf" "ONT:GENE-PROTEIN" :ID "HGNC:3229" :NAME "epidermal growth factor") 
    ("Egr1" "ONT:GENE-PROTEIN" :ID "HGNC:3238" :NAME "early growth response 1") 
    ("FA" "ONT:GENE-PROTEIN" :ID "XFAM:PF08736.9" :NAME "FA") 
    ("FAA" "ONT:GENE-PROTEIN" :ID "UP:P16930" :NAME "Fumarylacetoacetase") 
    ("FABP4" "ONT:GENE-PROTEIN" :ID "HGNC:3559" :NAME
     "fatty acid binding protein 4") 
    ("FADD" "ONT:GENE-PROTEIN" :ID "HGNC:3573" :NAME
     "Fas associated via death domain") 
    ("FAE" "ONT:GENE-PROTEIN" :ID "NCIT:C86552" :NAME "FANCE") 
    ("FATP1" "ONT:GENE-PROTEIN" :ID "UP:Q3ZKN0" :NAME
     "Long-chain fatty acid transport protein 1") 
    ("FKBP" "ONT:GENE-PROTEIN" :ID "UP:P48375" :NAME
     "12 kDa FK506-binding protein") 
    ("FLIP" "ONT:GENE-PROTEIN" :ID "NCIT:C96017" :NAME "CFLAR") 
    ("FLT3" "ONT:GENE-PROTEIN" :ID "HGNC:3765" :NAME
     "fms related tyrosine kinase 3") 
    ("FOXA2" "ONT:GENE-PROTEIN" :ID "HGNC:5022" :NAME "forkhead box A2") 
    ("FOXO3" "ONT:GENE-PROTEIN" :ID "HGNC:3821" :NAME "forkhead box O3") 
    ("FPR1" "ONT:GENE-PROTEIN" :ID "HGNC:3826" :NAME "formyl peptide receptor 1") 
    ("FSHr" "ONT:GENE-PROTEIN" :ID "HGNC:3969" :NAME
     "follicle stimulating hormone receptor") 
    ("FTS" "ONT:GENE-PROTEIN" :ID "FA:04283" :NAME "FTS subfamily") 
    ("FcRIIIb" "ONT:GENE-PROTEIN" :ID "NCIT:C51394" :NAME "FCGR3B") 
    ("Fos" "ONT:GENE-PROTEIN" :ID "FA:00408" :NAME "fos subfamily") 
    ("GAS6" "ONT:GENE-PROTEIN" :ID "HGNC:4168" :NAME "growth arrest specific 6") 
    ("GLK" "ONT:GENE-PROTEIN" :ID "NCIT:C116307" :NAME
     "mitogen-activated protein kinase kinase kinase kinase 3") 
    ("GRP78" "ONT:GENE-PROTEIN" :ID "UP:P11021" :NAME
     "78 kDa glucose-regulated protein") 
    ("GSK3alpha" "ONT:GENE-PROTEIN" :ID "NCIT:C51206" :NAME "GSK3A") 
    ("Gadd45b" "ONT:GENE-PROTEIN" :ID "HGNC:4096" :NAME
     "growth arrest and DNA damage inducible beta") 
    ("Gata3" "ONT:GENE-PROTEIN" :ID "HGNC:4172" :NAME "GATA binding protein 3") 
    ("Gclm" "ONT:GENE-PROTEIN" :ID "HGNC:4312" :NAME
     "glutamate-cysteine ligase modifier subunit") 
    ("HCC" "ONT:GENE-PROTEIN" :ID "UP:Q9NFL6" :NAME "Hemocyanin C chain") 
    ("HDAC" "ONT:GENE-PROTEIN" :ID "NCIT:C16682" :NAME "histone deacetylase") 
    ("HDAC1" "ONT:GENE-PROTEIN" :ID "HGNC:4852" :NAME "histone deacetylase 1") 
    ("HDAC6" "ONT:GENE-PROTEIN" :ID "HGNC:14064" :NAME "histone deacetylase 6") 
    ("HES2" "ONT:GENE-PROTEIN" :ID "NCIT:C114518" :NAME "HES2") 
    ("HFREP1" "ONT:GENE-PROTEIN" :ID "HGNC:3695" :NAME "fibrinogen like 1") 
    ("HHAT" "ONT:GENE-PROTEIN" :ID "HGNC:18270" :NAME "hedgehog acyltransferase") 
    ("HIF-1alpha" "ONT:GENE-PROTEIN" :ID "UP:Q16665" :NAME
     "Hypoxia-inducible factor 1-alpha") 
    ("HMGA2" "ONT:GENE-PROTEIN" :ID "HGNC:5009" :NAME
     "high mobility group AT-hook 2") 
    ("HR" "ONT:GENE-PROTEIN" :ID "HGNC:5172" :NAME "hair growth associated") 
    ("HS1" "ONT:GENE-PROTEIN" :ID "UP:P0C2F4" :NAME "Heteroscorpine-1") 
    ("HSP60" "ONT:GENE-PROTEIN" :ID "NCIT:C104339" :NAME "HSPD1") 
    ("HSP70" "ONT:GENE-PROTEIN" :ID "NCIT:C17765" :NAME "heat shock protein-70") 
    ("Hgf" "ONT:GENE-PROTEIN" :ID "HGNC:4893" :NAME "hepatocyte growth factor") 
    ("Hras" "ONT:GENE-PROTEIN" :ID "NCIT:C52545" :NAME "HRAS") 
    ("ICAM1" "ONT:GENE-PROTEIN" :ID "HGNC:5344" :NAME
     "intercellular adhesion molecule 1") 
    ("ICAM2" "ONT:GENE-PROTEIN" :ID "HGNC:5345" :NAME
     "intercellular adhesion molecule 2") 
    ("IFNalpha" "ONT:GENE-PROTEIN" :ID "UP:P35849" :NAME "Interferon alpha") 
    ("IGF-1R" "ONT:GENE-PROTEIN" :ID "HGNC:5465" :NAME
     "insulin like growth factor 1 receptor") 
    ("IGF2R" "ONT:GENE-PROTEIN" :ID "HGNC:5467" :NAME
     "insulin like growth factor 2 receptor") 
    ("IGFBP5" "ONT:GENE-PROTEIN" :ID "HGNC:5474" :NAME
     "insulin like growth factor binding protein 5") 
    ("IGFBP7" "ONT:GENE-PROTEIN" :ID "HGNC:5476" :NAME
     "insulin like growth factor binding protein 7") 
    ("IKKbeta" "ONT:GENE-PROTEIN" :ID "UP:Q95KV0" :NAME
     "Inhibitor of nuclear factor kappa-B kinase subunit beta") 
    ("IL-6R" "ONT:GENE-PROTEIN" :ID "HGNC:6019" :NAME "interleukin 6 receptor") 
    ("IL27" "ONT:GENE-PROTEIN" :ID "HGNC:19157" :NAME "interleukin 27") 
    ("ITCH" "ONT:GENE-PROTEIN" :ID "HGNC:13890" :NAME
     "itchy E3 ubiquitin protein ligase") 
    ("IgM" "ONT:GENE-PROTEIN" :ID "NCIT:C569" :NAME "IgM") 
    ("Il-1beta" "ONT:GENE-PROTEIN" :ID "NCIT:C20522" :NAME "interleukin-1-beta") 
    ("Imp7" "ONT:GENE-PROTEIN" :ID "UP:O95373" :NAME "Importin-7") 
    ("JAK" "ONT:GENE-PROTEIN" :ID "FA:03129" :NAME "JAK subfamily") 
    ("JUN" "ONT:GENE-PROTEIN" :ID "HGNC:6204" :NAME
     "Jun proto-oncogene, AP-1 transcription factor subunit") 
    ("JUNB" "ONT:GENE-PROTEIN" :ID "HGNC:6205" :NAME
     "JunB proto-oncogene, AP-1 transcription factor subunit") 
    ("Jun" "ONT:GENE-PROTEIN" :ID "FA:00409" :NAME "jun subfamily") 
    ("Junb" "ONT:GENE-PROTEIN" :ID "HGNC:6205" :NAME
     "JunB proto-oncogene, AP-1 transcription factor subunit") 
    ("Kras" "ONT:GENE-PROTEIN" :ID "HGNC:6407" :NAME
     "KRAS proto-oncogene, GTPase") 
    ("LASP1" "ONT:GENE-PROTEIN" :ID "HGNC:6513" :NAME "LIM and SH3 protein 1") 
    ("LATS1" "ONT:GENE-PROTEIN" :ID "HGNC:6514" :NAME
     "large tumor suppressor kinase 1") 
    ("LOX" "ONT:GENE-PROTEIN" :ID "HGNC:6664" :NAME "lysyl oxidase") 
    ("LSD1" "ONT:GENE-PROTEIN" :ID "NCIT:C78142" :NAME "AOF2") 
    ("LTB" "ONT:GENE-PROTEIN" :ID "HGNC:6711" :NAME "lymphotoxin beta") 
    ("MAL" "ONT:GENE-PROTEIN" :ID "HGNC:6817" :NAME
     "mal, T-cell differentiation protein") 
    ("MALT1" "ONT:GENE-PROTEIN" :ID "HGNC:6819" :NAME "MALT1 paracaspase") 
    ("MCL1" "ONT:GENE-PROTEIN" :ID "HGNC:6943" :NAME
     "BCL2 family apoptosis regulator") 
    ("MIG6" "ONT:GENE-PROTEIN" :ID "FA:02304" :NAME "MIG6 family") 
    ("MITF" "ONT:GENE-PROTEIN" :ID "HGNC:7105" :NAME
     "melanogenesis associated transcription factor") 
    ("MKP3" "ONT:GENE-PROTEIN" :ID "NCIT:C106025" :NAME "DUSP6") 
    ("MMP-10" "ONT:GENE-PROTEIN" :ID "HGNC:7156" :NAME
     "matrix metallopeptidase 10") 
    ("MMP13" "ONT:GENE-PROTEIN" :ID "HGNC:7159" :NAME
     "matrix metallopeptidase 13") 
    ("MMP14" "ONT:GENE-PROTEIN" :ID "HGNC:7160" :NAME
     "matrix metallopeptidase 14") 
    ("MMP2" "ONT:GENE-PROTEIN" :ID "HGNC:7166" :NAME "matrix metallopeptidase 2") 
    ("MMP9" "ONT:GENE-PROTEIN" :ID "HGNC:7176" :NAME "matrix metallopeptidase 9") 
    ("MNK1" "ONT:GENE-PROTEIN" :ID "NCIT:C33991" :NAME
     "MAP-kinase interacting kinase-1") 
    ("MUC1" "ONT:GENE-PROTEIN" :ID "HGNC:7508" :NAME
     "mucin 1, cell surface associated") 
    ("MUC16" "ONT:GENE-PROTEIN" :ID "HGNC:15582" :NAME
     "mucin 16, cell surface associated") 
    ("MUC5AC" "ONT:GENE-PROTEIN" :ID "HGNC:7515" :NAME
     "mucin 5AC, oligomeric mucus/gel-forming") 
    ("MUC5B" "ONT:GENE-PROTEIN" :ID "HGNC:7516" :NAME
     "mucin 5B, oligomeric mucus/gel-forming") 
    ("MYD88" "ONT:GENE-PROTEIN" :ID "HGNC:7562" :NAME
     "myeloid differentiation primary response 88") 
    ("MaR1" "ONT:GENE-PROTEIN" :ID "UP:Q91175" :NAME
     "Alpha-1A adrenergic receptor") 
    ("Max" "ONT:GENE-PROTEIN" :ID "HGNC:6913" :NAME "MYC associated factor X") 
    ("Munc18-1" "ONT:GENE-PROTEIN" :ID "HGNC:11444" :NAME
     "syntaxin binding protein 1") 
    ("NBL1" "ONT:GENE-PROTEIN" :ID "HGNC:7650" :NAME
     "neuroblastoma 1, DAN family BMP antagonist") 
    ("NDRG1" "ONT:GENE-PROTEIN" :ID "HGNC:7679" :NAME
     "N-myc downstream regulated 1") 
    ("NEDD8" "ONT:GENE-PROTEIN" :ID "UP:Q15843" :NAME "NEDD8") 
    ("NFkappaB" "ONT:GENE-PROTEIN" :ID "NCIT:C94298" :NAME "NFKB1") 
    ("NHE1" "ONT:GENE-PROTEIN" :ID "UP:Q552S0" :NAME
     "Sodium/hydrogen exchanger 1") 
    ("NIS" "ONT:GENE-PROTEIN" :ID "NCIT:C17536" :NAME "sodium-iodide symporter") 
    ("NK1r" "ONT:GENE-PROTEIN" :ID "NCIT:C41023" :NAME "tachykinin receptor-1") 
    ("NKD" "ONT:GENE-PROTEIN" :ID "UP:P30974" :NAME
     "Tachykinin-like peptides receptor 86C") 
    ("NLK" "ONT:GENE-PROTEIN" :ID "HGNC:29858" :NAME "nemo like kinase") 
    ("NP1" "ONT:GENE-PROTEIN" :ID "UP:Q26239" :NAME "Nitrophorin-1") 
    ("NPY" "ONT:GENE-PROTEIN" :ID "HGNC:7955" :NAME "neuropeptide Y") 
    ("NQO1" "ONT:GENE-PROTEIN" :ID "HGNC:2874" :NAME
     "NAD(P)H quinone dehydrogenase 1") 
    ("OGG1" "ONT:GENE-PROTEIN" :ID "HGNC:8125" :NAME
     "8-oxoguanine DNA glycosylase") 
    ("OSMR" "ONT:GENE-PROTEIN" :ID "HGNC:8507" :NAME "oncostatin M receptor") 
    ("P-gp" "ONT:GENE-PROTEIN" :ID "HGNC:8909" :NAME
     "phosphoglycolate phosphatase") 
    ("P70S6K" "ONT:GENE-PROTEIN" :ID "NCIT:C84317" :NAME
     "ribosomal protein S6 kinase beta-1") 
    ("PACAP" "ONT:GENE-PROTEIN" :ID "UP:P18509" :NAME
     "Pituitary adenylate cyclase-activating polypeptide") 
    ("PAI1" "ONT:GENE-PROTEIN" :ID "UP:P05121" :NAME
     "Plasminogen activator inhibitor 1") 
    ("PARP" "ONT:GENE-PROTEIN" :ID "UP:P35875" :NAME
     "Poly [ADP-ribose] polymerase") 
    ("PAX3" "ONT:GENE-PROTEIN" :ID "HGNC:8617" :NAME "paired box 3") 
    ("PD1" "ONT:GENE-PROTEIN" :ID "NCIT:C94696" :NAME "PDCD1") 
    ("PDC" "ONT:GENE-PROTEIN" :ID "HGNC:8759" :NAME "phosducin") 
    ("PDL1" "ONT:GENE-PROTEIN" :ID "UP:Q9NZQ7" :NAME
     "Programmed cell death 1 ligand 1") 
    ("PEG3" "ONT:GENE-PROTEIN" :ID "HGNC:8826" :NAME "paternally expressed 3") 
    ("PLAGL1" "ONT:GENE-PROTEIN" :ID "HGNC:9046" :NAME "PLAG1 like zinc finger 1") 
    ("PLCgamma1" "ONT:GENE-PROTEIN" :ID "NCIT:C104822" :NAME "PLCG1") 
    ("PP1" "ONT:GENE-PROTEIN" :ID "FA:03001" :NAME "PP-1 subfamily") 
    ("PPARalpha" "ONT:GENE-PROTEIN" :ID "UP:Q07869" :NAME
     "Peroxisome proliferator-activated receptor alpha") 
    ("PPARgamma" "ONT:GENE-PROTEIN" :ID "UP:P37231" :NAME
     "Peroxisome proliferator-activated receptor gamma") 
    ("PPE" "ONT:GENE-PROTEIN" :ID "XFAM:PF00823.17" :NAME "PPE") 
    ("PRL-3" "ONT:GENE-PROTEIN" :ID "HGNC:9636" :NAME
     "protein tyrosine phosphatase type IVA, member 3") 
    ("PSMA" "ONT:GENE-PROTEIN" :ID "NCIT:C49386" :NAME "FOLH1") 
    ("PTPRC" "ONT:GENE-PROTEIN" :ID "HGNC:9666" :NAME
     "protein tyrosine phosphatase, receptor type C") 
    ("PUMA" "ONT:GENE-PROTEIN" :ID "XFAM:PF15826.3" :NAME "PUMA") 
    ("Persephin" "ONT:GENE-PROTEIN" :ID "HGNC:9579" :NAME "persephin") 
    ("Pinin" "ONT:GENE-PROTEIN" :ID "UP:P79122" :NAME "Pinin") 
    ("Pparg" "ONT:GENE-PROTEIN" :ID "HGNC:9236" :NAME
     "peroxisome proliferator activated receptor gamma") 
    ("RAGE" "ONT:GENE-PROTEIN" :ID "NCIT:C51275" :NAME "RAGE") 
    ("RANK" "ONT:GENE-PROTEIN" :ID "NCIT:C84994" :NAME
     "tumor necrosis factor receptor superfamily member 11A") 
    ("RANKL" "ONT:GENE-PROTEIN" :ID "NCIT:C50965" :NAME "TNFSF11") 
    ("RAPTOR" "ONT:GENE-PROTEIN" :ID "UP:Q8N122" :NAME
     "Regulatory-associated protein of mTOR") 
    ("RARB" "ONT:GENE-PROTEIN" :ID "HGNC:9865" :NAME
     "retinoic acid receptor beta") 
    ("RCC1" "ONT:GENE-PROTEIN" :ID "HGNC:1913" :NAME
     "regulator of chromosome condensation 1") 
    ("REP" "ONT:GENE-PROTEIN" :ID "UP:P18919" :NAME
     "Replication-associated protein") 
    ("RGS11" "ONT:GENE-PROTEIN" :ID "HGNC:9993" :NAME
     "regulator of G-protein signaling 11") 
    ("RGS2" "ONT:GENE-PROTEIN" :ID "HGNC:9998" :NAME
     "regulator of G-protein signaling 2") 
    ("RHOJ" "ONT:GENE-PROTEIN" :ID "HGNC:688" :NAME "ras homolog family member J") 
    ("RIG" "ONT:GENE-PROTEIN" :ID "NCIT:C95420" :NAME "DKK3") 
    ("ROS1" "ONT:GENE-PROTEIN" :ID "HGNC:10261" :NAME
     "ROS proto-oncogene 1, receptor tyrosine kinase") 
    ("RRM2" "ONT:GENE-PROTEIN" :ID "HGNC:10452" :NAME
     "ribonucleotide reductase regulatory subunit M2") 
    ("RSK4" "ONT:GENE-PROTEIN" :ID "HGNC:10435" :NAME
     "ribosomal protein S6 kinase A6") 
    ("RYK" "ONT:GENE-PROTEIN" :ID "HGNC:10481" :NAME
     "receptor-like tyrosine kinase") 
    ("RasGRP" "ONT:GENE-PROTEIN" :ID "FA:03235" :NAME "RASGRP family") 
    ("Rasgrf-1" "ONT:GENE-PROTEIN" :ID "NCIT:C52912" :NAME "RASGRF1") 
    ("Rho" "ONT:GENE-PROTEIN" :ID "FA:03668" :NAME "rho family") 
    ("RhoA" "ONT:GENE-PROTEIN" :ID "HGNC:667" :NAME "ras homolog family member A") 
    ("S100A9" "ONT:GENE-PROTEIN" :ID "HGNC:10499" :NAME
     "S100 calcium binding protein A9") 
    ("SDH" "ONT:GENE-PROTEIN" :ID "UP:P20132" :NAME
     "L-serine dehydratase/L-threonine deaminase") 
    ("SEP" "ONT:GENE-PROTEIN" :ID "UP:P49907" :NAME "Selenoprotein P") 
    ("SI" "ONT:GENE-PROTEIN" :ID "HGNC:10856" :NAME "sucrase-isomaltase") 
    ("SIVA" "ONT:GENE-PROTEIN" :ID "XFAM:PF05458.10" :NAME "siva") 
    ("SMC" "ONT:GENE-PROTEIN" :ID "FA:03684" :NAME "SMC family") 
    ("SMCs" "ONT:GENE-PROTEIN" :ID "FA:03684" :NAME "SMC family") 
    ("SOX2" "ONT:GENE-PROTEIN" :ID "HGNC:11195" :NAME "SRY-box 2") 
    ("SPA" "ONT:GENE-PROTEIN" :ID "UP:Q8IWL1" :NAME
     "Pulmonary surfactant-associated protein A2") 
    ("SPC" "ONT:GENE-PROTEIN" :ID "UP:P11686" :NAME
     "Pulmonary surfactant-associated protein C") 
    ("SPF" "ONT:GENE-PROTEIN" :ID "HGNC:10699" :NAME "SEC14 like lipid binding 2") 
    ("SPRY1" "ONT:GENE-PROTEIN" :ID "HGNC:11269" :NAME
     "sprouty RTK signaling antagonist 1") 
    ("SPRY4" "ONT:GENE-PROTEIN" :ID "HGNC:15533" :NAME
     "sprouty RTK signaling antagonist 4") 
    ("SREBP1" "ONT:GENE-PROTEIN" :ID "UP:Q60416" :NAME
     "Sterol regulatory element-binding protein 1") 
    ("SSa" "ONT:GENE-PROTEIN" :ID "NCIT:C95314" :NAME "CALR") 
    ("STAT-3" "ONT:GENE-PROTEIN" :ID "HGNC:11364" :NAME
     "signal transducer and activator of transcription 3") 
    ("STIM1" "ONT:GENE-PROTEIN" :ID "HGNC:11386" :NAME
     "stromal interaction molecule 1") 
    ("STK11" "ONT:GENE-PROTEIN" :ID "HGNC:11389" :NAME
     "serine/threonine kinase 11") 
    ("STRAP" "ONT:GENE-PROTEIN" :ID "HGNC:30796" :NAME
     "serine/threonine kinase receptor associated protein") 
    ("STS" "ONT:GENE-PROTEIN" :ID "HGNC:11425" :NAME
     "steroid sulfatase (microsomal), isozyme S") 
    ("SUZ12" "ONT:GENE-PROTEIN" :ID "HGNC:17101" :NAME
     "SUZ12 polycomb repressive complex 2 subunit") 
    ("SVCT2" "ONT:GENE-PROTEIN" :ID "HGNC:10973" :NAME
     "solute carrier family 23 member 2") 
    ("SerpinE1" "ONT:GENE-PROTEIN" :ID "HGNC:8583" :NAME
     "serpin family E member 1") 
    ("Siva" "ONT:GENE-PROTEIN" :ID "XFAM:PF05458.10" :NAME "siva") 
    ("Spry1" "ONT:GENE-PROTEIN" :ID "UP:A5D992" :NAME "Protein sprouty homolog 1") 
 
    ("TAL1" "ONT:GENE-PROTEIN" :ID "HGNC:11556" :NAME
     "TAL bHLH transcription factor 1, erythroid differentiation factor") 
    ("TAZ" "ONT:GENE-PROTEIN" :ID "HGNC:11577" :NAME "tafazzin") 
    ("TBK1" "ONT:GENE-PROTEIN" :ID "HGNC:11584" :NAME "TANK binding kinase 1") 
    ("TCF4" "ONT:GENE-PROTEIN" :ID "NCIT:C105957" :NAME "TCF4") 
    ("TCF7L2" "ONT:GENE-PROTEIN" :ID "HGNC:11641" :NAME
     "transcription factor 7 like 2") 
    ("TFPI" "ONT:GENE-PROTEIN" :ID "HGNC:11760" :NAME
     "tissue factor pathway inhibitor") 
    ("TG" "ONT:GENE-PROTEIN" :ID "HGNC:11764" :NAME "thyroglobulin") 
    ("TIMP1" "ONT:GENE-PROTEIN" :ID "HGNC:11820" :NAME
     "TIMP metallopeptidase inhibitor 1") 
    ("TK" "ONT:GENE-PROTEIN" :ID "UP:P29401" :NAME "Transketolase") 
    ("TLR5" "ONT:GENE-PROTEIN" :ID "HGNC:11851" :NAME "toll like receptor 5") 
    ("TNFR1" "ONT:GENE-PROTEIN" :ID "NCIT:C51380" :NAME "TNFRSF1A") 
    ("TNFalpha" "ONT:GENE-PROTEIN" :ID "NCIT:C20535" :NAME
     "tumor necrosis factor-alpha") 
    ("TOR" "ONT:GENE-PROTEIN" :ID "GO:0050626" :NAME
     "trimethylamine-N-oxide reductase (cytochrome c) activity") 
    ("TPA" "ONT:GENE-PROTEIN" :ID "UP:P00750" :NAME
     "Tissue-type plasminogen activator") 
    ("TPL2" "ONT:GENE-PROTEIN" :ID "NCIT:C20585" :NAME
     "MAP-kinase kinase kinase 8") 
    ("TRAF2" "ONT:GENE-PROTEIN" :ID "HGNC:12032" :NAME
     "TNF receptor associated factor 2") 
    ("TRAIL" "ONT:GENE-PROTEIN" :ID "NCIT:C50962" :NAME "TNFSF10") 
    ("TRX2" "ONT:GENE-PROTEIN" :ID "UP:Q8KE49" :NAME "Thioredoxin-2") 
    ("TSLP" "ONT:GENE-PROTEIN" :ID "HGNC:30743" :NAME
     "thymic stromal lymphopoietin") 
    ("TUBB3" "ONT:GENE-PROTEIN" :ID "HGNC:20772" :NAME "tubulin beta 3 class III") 
    ("TWEAK" "ONT:GENE-PROTEIN" :ID "NCIT:C117068" :NAME
     "tumor necrosis factor ligand superfamily member 12") 
    ("Tcf3" "ONT:GENE-PROTEIN" :ID "HGNC:11633" :NAME "transcription factor 3") 
    ("Trk" "ONT:GENE-PROTEIN" :ID "NCIT:C17660" :NAME "receptor tyrosine kinase") 
    ("TrkB" "ONT:GENE-PROTEIN" :ID "NCIT:C33983" :NAME
     "neurotrophic tyrosine kinase receptor type-2") 
    ("USF1" "ONT:GENE-PROTEIN" :ID "HGNC:12593" :NAME
     "upstream transcription factor 1") 
    ("VCAM1" "ONT:GENE-PROTEIN" :ID "UP:Q28260" :NAME
     "Vascular cell adhesion protein 1") 
    ("VDAC" "ONT:GENE-PROTEIN" :ID "NCIT:C51093" :NAME "VDAC1") 
    ("VEGFR" "ONT:GENE-PROTEIN" :ID "GO:0005021" :NAME
     "vascular endothelial growth factor-activated receptor activity") 
    ("VIP" "ONT:GENE-PROTEIN" :ID "HGNC:12693" :NAME
     "vasoactive intestinal peptide") 
    ("VLDLR" "ONT:GENE-PROTEIN" :ID "HGNC:12698" :NAME
     "very low density lipoprotein receptor") 
    ("WBP2" "ONT:GENE-PROTEIN" :ID "HGNC:12738" :NAME
     "WW domain binding protein 2") 
    ("WEE1" "ONT:GENE-PROTEIN" :ID "HGNC:12761" :NAME "WEE1 G2 checkpoint kinase") 
    ("WIPI1" "ONT:GENE-PROTEIN" :ID "HGNC:25471" :NAME
     "WD repeat domain, phosphoinositide interacting 1") 
    ("WISP1" "ONT:GENE-PROTEIN" :ID "HGNC:12769" :NAME
     "WNT1 inducible signaling pathway protein 1") 
    ("Wnt3" "ONT:GENE-PROTEIN" :ID "HGNC:12782" :NAME "Wnt family member 3") 
    ("XBP1" "ONT:GENE-PROTEIN" :ID "HGNC:12801" :NAME "X-box binding protein 1") 
    ("XO" "ONT:GENE-PROTEIN" :ID "NCIT:C50947" :NAME "XDH") 
    ("YAP1" "ONT:GENE-PROTEIN" :ID "HGNC:16262" :NAME "Yes associated protein 1") 
    ("adrenomedullin" "ONT:GENE-PROTEIN" :ID "HGNC:259" :NAME "adrenomedullin") 
    ("amphiregulin" "ONT:GENE-PROTEIN" :ID "HGNC:651" :NAME "amphiregulin") 
    ("bdnf" "ONT:GENE-PROTEIN" :ID "HGNC:1033" :NAME
     "brain derived neurotrophic factor") 
    ("beta3" "ONT:GENE-PROTEIN" :ID "NCIT:C79757" :NAME "BHLHB5") 
    ("cyclases" "ONT:GENE-PROTEIN" :ID "GO:0009975" :NAME "cyclase activity") 
    ("cyclinB1" "ONT:GENE-PROTEIN" :ID "HGNC:1579" :NAME "cyclin B1") 
    ("eIF2alpha" "ONT:GENE-PROTEIN" :ID "FA:01067" :NAME "eIF-2-alpha family") 
    ("eIF4A1" "ONT:GENE-PROTEIN" :ID "UP:P41376" :NAME
     "Eukaryotic initiation factor 4A-1") 
    ("eIF4G1" "ONT:GENE-PROTEIN" :ID "UP:Q04637" :NAME
     "Eukaryotic translation initiation factor 4 gamma 1") 
    ("ephrinA1" "ONT:GENE-PROTEIN" :ID "HGNC:3221" :NAME "ephrin A1") 
    ("filaggrin" "ONT:GENE-PROTEIN" :ID "HGNC:3748" :NAME "filaggrin") 
    ("galectin-3" "ONT:GENE-PROTEIN" :ID "UP:P17931" :NAME "Galectin-3") 
    ("ghrelin" "ONT:GENE-PROTEIN" :ID "UP:Q8JFY4" :NAME "Ghrelin") 
    ("hCG" "ONT:GENE-PROTEIN" :ID "UP:Q9NFL4" :NAME "Hemocyanin G chain") 
    ("hemolysin" "ONT:GENE-PROTEIN" :ID "UP:Q06304" :NAME "Aerolysin") 
    ("immunoglobulin" "ONT:GENE-PROTEIN" :ID "FA:01833" :NAME
     "immunoglobulin superfamily") 
    ("mGluR2" "ONT:GENE-PROTEIN" :ID "UP:Q14416" :NAME
     "Metabotropic glutamate receptor 2") 
    ("merlin" "ONT:GENE-PROTEIN" :ID "UP:P35240" :NAME "Merlin") 
    ("mesothelin" "ONT:GENE-PROTEIN" :ID "HGNC:7371" :NAME "mesothelin") 
    ("neu" "ONT:GENE-PROTEIN" :ID "NCIT:C17319" :NAME
     "ERBB2 receptor protein-tyrosine kinase") 
    ("neurotensin" "ONT:GENE-PROTEIN" :ID "HGNC:8038" :NAME "neurotensin") 
    ("neurotrophin-3" "ONT:GENE-PROTEIN" :ID "UP:P20783" :NAME "Neurotrophin-3") 
    ("osteoprotegerin" "ONT:GENE-PROTEIN" :ID "NCIT:C30111" :NAME
     "osteoprotegerin") 
    ("p16" "ONT:GENE-PROTEIN" :ID "NCIT:C49511" :NAME "CDKN2A") 
    ("p16INK4a" "ONT:GENE-PROTEIN" :ID "NCIT:C49511" :NAME "CDKN2A") 
    ("p300" "ONT:GENE-PROTEIN" :ID "NCIT:C52127" :NAME "EP300") 
    ("p42" "ONT:GENE-PROTEIN" :ID "HGNC:21420" :NAME "cyclin dependent kinase 20") 
    ("p44" "ONT:GENE-PROTEIN" :ID "UP:Q8TCB0" :NAME
     "Interferon-induced protein 44") 
    ("p44MAPK" "ONT:GENE-PROTEIN" :ID "NCIT:C17408" :NAME "MAP-kinase-3") 
    ("p47phox" "ONT:GENE-PROTEIN" :ID "HGNC:7660" :NAME
     "neutrophil cytosolic factor 1") 
    ("p48" "ONT:GENE-PROTEIN" :ID "NCIT:C104656" :NAME
     "interferon regulatory factor-9") 
    ("p50" "ONT:GENE-PROTEIN" :ID "NCIT:C94298" :NAME "NFKB1") 
    ("p67phox" "ONT:GENE-PROTEIN" :ID "NCIT:C104565" :NAME
     "neutrophil cytosolic factor-2") 
    ("p70S6K" "ONT:GENE-PROTEIN" :ID "NCIT:C84317" :NAME
     "ribosomal protein S6 kinase beta-1") 
    ("parafibromin" "ONT:GENE-PROTEIN" :ID "UP:Q5ZLM0" :NAME "Parafibromin") 
    ("pten" "ONT:GENE-PROTEIN" :ID "HGNC:9588" :NAME
     "phosphatase and tensin homolog") 
    ("rabaptin5" "ONT:GENE-PROTEIN" :ID "NCIT:C97753" :NAME
     "rab GTPase-binding effector protein 1") 
    ("sFRP2" "ONT:GENE-PROTEIN" :ID "UP:Q863H1" :NAME
     "Secreted frizzled-related protein 2") 
    ("thrombopoietin" "ONT:GENE-PROTEIN" :ID "HGNC:11795" :NAME "thrombopoietin") 
    ("tropomyosin" "ONT:GENE-PROTEIN" :ID "UP:O01673" :NAME "Tropomyosin") 
    ("F-actin" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0031941" :NAME
     "filamentous actin") 
    ("PIK" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0019035" :NAME
     "viral integration complex") 
    ("eIF2" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0005850" :NAME
     "eukaryotic translation initiation factor 2 complex") 
    ("eIF4F" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0016281" :NAME
     "eukaryotic translation initiation factor 4F complex") 
    ("ribosome" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0005840" :NAME "ribosome") 
    ("bp" "ONT:MEASURE-UNIT" :ID "UO:0000244" :NAME "base pair") 
    ("ng/ml" "ONT:MEASURE-UNIT" :ID "UO:0000275" :NAME "nanogram per milliliter") 
    ("pH" "ONT:MEASURE-UNIT" :ID "UO:0000196" :NAME "pH") 
    ("ALI" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0004610" :NAME
     "acute lung injury") 
    ("ARDS" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:1000637" :NAME
     "acute respiratory distress syndrome") 
    ("BMD" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:1243" :NAME
     "Best vitelliform macular dystrophy") 
    ("BV" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C116973" :NAME
     "bacterial vaginosis") 
    ("CIN" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C7346" :NAME
     "cervical squamous intraepithelial neoplasia") 
    ("CSC" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C115124" :NAME
     "central serous chorioretinopathy") 
    ("DC" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:1775" :NAME
     "Dyskeratosis congenita") 
    ("DCs" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:1775" :NAME
     "Dyskeratosis congenita") 
    ("IPF" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0000768" :NAME
     "idiopathic pulmonary fibrosis") 
    ("MNK" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:565" :NAME
     "Menkes disease") 
    ("MPA" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:1000784" :NAME
     "microscopic polyangiitis") 
    ("NKA" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:407" :NAME
     "Glycine encephalopathy") 
    ("OHSS" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:64739" :NAME
     "Ovarian hyperstimulation syndrome") 
    ("PDA" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C84492" :NAME
     "patent ductus arteriosus") 
    ("SEI" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:455" :NAME
     "Superficial epidermolytic ichthyosis") 
    ("TBS" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:857" :NAME
     "Townes-Brocks syndrome") 
    ("TCA" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C101040" :NAME
     "total colonic aganglionisis") 
    ("adenomas" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0000232" :NAME
     "adenoma") 
    ("cardiomyopathy" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C34830"
     :NAME "cardiomyopathy") 
    ("iPS" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:88621" :NAME
     "Ichthyosis prematurity syndrome") 
    ("nephropathy" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C34843" :NAME
     "nephropathy") 
    ("nevus" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0000625" :NAME
     "nevus") 
    ("pruritus" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "HP:0000989" :NAME
     "Pruritus") 
    ;;("microarray" "ONT:MEDICAL-INSTRUMENT" :ID "EFO:0002698" :NAME "array") 
    ("BRK" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF07533.14" :NAME "BRK") 
    ("CRISPR" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF08798.9" :NAME "CRISPR assoc") 
    ("DED" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF01335.19" :NAME "DED") 
    ("DMA" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF03474.12" :NAME "DMA") 
    ("DbpA" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF03880.13" :NAME "DbpA") 
    ("FGF" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00167.16" :NAME "FGF") 
    ("Fgf" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00167.16" :NAME "FGF") 
    ("HA" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF03457.12" :NAME "HA") 
    ("LTD" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00932.17" :NAME "LTD") 
    ("MenSCs" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF07502.12" :NAME "MANEC") 
    ("NTR" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF01759.19" :NAME "NTR") 
    ("RES" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF08808.9" :NAME "RES") 
    ("Res" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF08808.9" :NAME "RES") 
    ("endothelin" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00322.15" :NAME "endothelin") 
    ("proteasome" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00227.24" :NAME "proteasome") 
    #| ;; These should have be parsed by Sparser as residue-on-protein
    ("B16" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Asparagine or aspartic acid") 
    ("H19" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Histidine") 
    ("H1975" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Histidine") 
    ("N19" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Asparagine") 
    ("S70" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Serine") 
    ("U1026" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Selenocysteine") 
    ("V12" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Valine") 
    ("V12" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Valine") 
    ("G12" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Glycine") 
    ("M14" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Methionine") 
    ("V12" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Valine") 
    |#
    ("Aplotaxene" "ONT:MOLECULE" :ID "CHEBI:81167" :NAME "Aplotaxene") 
    ("Berberine" "ONT:MOLECULE" :ID "CHEBI:16118" :NAME "berberine") 
    ("CoCl2" "ONT:MOLECULE" :ID "CHEBI:29365" :NAME "phosgene") 
    ("DDF" "ONT:MOLECULE" :ID "CHEBI:35095" :NAME
     "4-(dimethylamino)benzenediazonium tetrafluoroborate") 
    ("EtOH" "ONT:MOLECULE" :ID "CHEBI:16236" :NAME "ethanol") 
    ("FITC" "ONT:MOLECULE" :ID "CHEBI:37926" :NAME "fluorescein isothiocyanate") 
    ("GA" "ONT:MOLECULE" :ID "CHEBI:5206" :NAME "GA") 
    ("GTPgammaS" "ONT:MOLECULE" :ID "CHEBI:43000" :NAME
     "guanosine 5'-[gamma-thio]triphosphate") 
    ("H3K27ac" "ONT:MOLECULE" :ID "CHEBI:85044" :NAME "H3K27Ac") 
    ("MK-801" "ONT:MOLECULE" :ID "CHEBI:34725" :NAME "Dizocilpine") 
    ("MK801" "ONT:MOLECULE" :ID "CHEBI:34725" :NAME "Dizocilpine") 
    ("N-formyl-methionyl-leucyl-phenylalanine" "ONT:MOLECULE" :ID "CHEBI:53490"
     :NAME "N-formyl-L-methionyl-L-leucyl-L-phenylalanine") 
    ("NAC" "ONT:MOLECULE" :ID "CHEBI:7421" :NAME "NAC") 
    ("PDAC" "ONT:MOLECULE" :ID "CHEBI:53355" :NAME
     "poly(diallyldimethylammonium chloride) macromolecule") 
    ("Sulfide" "ONT:MOLECULE" :ID "CHEBI:26822" :NAME "sulfide") 
    ("Tiron" "ONT:MOLECULE" :ID "CHEBI:9607" :NAME "Tiron") 
    ("acetyl" "ONT:MOLECULE" :ID "CHEBI:46887" :NAME "acetyl") 
    ("anthocyanins" "ONT:MOLECULE" :ID "CHEBI:35218" :NAME "anthocyanin cation") 
    ("astaxanthin" "ONT:MOLECULE" :ID "CHEBI:40968" :NAME "astaxanthin") 
    ("corticosteroid" "ONT:MOLECULE" :ID "CHEBI:50858" :NAME "corticosteroid") 
    ("dinucleotide" "ONT:MOLECULE" :ID "CHEBI:47885" :NAME "dinucleotide") 
    ("fMLF" "ONT:MOLECULE" :ID "CHEBI:53490" :NAME
     "N-formyl-L-methionyl-L-leucyl-L-phenylalanine") 
    ("glycan" "ONT:MOLECULE" :ID "CHEBI:18154" :NAME "polysaccharide") 
    ("glycans" "ONT:MOLECULE" :ID "CHEBI:18154" :NAME "polysaccharide") 
    ("glycerol" "ONT:MOLECULE" :ID "CHEBI:17754" :NAME "glycerol") 
    ("glycosides" "ONT:MOLECULE" :ID "CHEBI:24400" :NAME "glycoside") 
    ("isothiocyanate" "ONT:MOLECULE" :ID "CHEBI:52221" :NAME "isothiocyanate") 
    ("lignans" "ONT:MOLECULE" :ID "CHEBI:25036" :NAME "lignan") 
    ("macromolecules" "ONT:MOLECULE" :ID "CHEBI:33839" :NAME "macromolecule") 
    ("miR-106a" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR-125a-5p" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR-1269a" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR-181a" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR-193b" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR-29b" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR-339-5p" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR-96-5p" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR122" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("monoamine" "ONT:MOLECULE" :ID "CHEBI:63534" :NAME "monoamine") 
    ("nanoparticles" "ONT:MOLECULE" :ID "CHEBI:50803" :NAME "nanoparticle") 
    ("oligonucleotide" "ONT:MOLECULE" :ID "CHEBI:7754" :NAME "oligonucleotide") 
    ("oligosaccharides" "ONT:MOLECULE" :ID "CHEBI:50699" :NAME "oligosaccharide") 
    ("oxyresveratrol" "ONT:MOLECULE" :ID "CHEBI:7870" :NAME "Oxyresveratrol") 
    ("polyphenol" "ONT:MOLECULE" :ID "CHEBI:26195" :NAME "polyphenol") 
    ("quercetin" "ONT:MOLECULE" :ID "CHEBI:16243" :NAME "quercetin") 
    ("ruscogenin" "ONT:MOLECULE" :ID "CHEBI:8913" :NAME "Ruscogenin") 
    ("salidroside" "ONT:MOLECULE" :ID "CHEBI:9009" :NAME "Salidroside") 
    ("sapogenin" "ONT:MOLECULE" :ID "CHEBI:26606" :NAME "sapogenin") 
    ("statin" "ONT:MOLECULE" :ID "CHEBI:87631" :NAME "statin") 
    ("succinate" "ONT:MOLECULE" :ID "CHEBI:26806" :NAME "succinate") 
    ("sulfide" "ONT:MOLECULE" :ID "CHEBI:26822" :NAME "sulfide") 
    ("tamoxifen" "ONT:MOLECULE" :ID "CHEBI:41774" :NAME "tamoxifen") 
    ("WKY" "ONT:NONHUMAN-ANIMAL" :ID "NCIT:C76192" :NAME "WKY rat strain") 
    ("Leishmania" "ONT:ORGANISM" :ID "NCIT:C123421" :NAME "leishmania") 
    ("3alphaHP" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C052610" :NAME
     "3-hydroxypregn-4-en-20-one") 
    ("5FU" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C505" :NAME "fluorouracil") 
    ("5Z-7-oxozeaenol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:67559" :NAME
     "5Z-7-oxozeaenol") 
    ("ABT-263" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C64776" :NAME "ABT-263") 
    ("ABT-737-" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C501332" :NAME "ABT-737") 
    ("AG-30" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C069027" :NAME "AG 30") 
    ("AG1478" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C101044" :NAME
     "tyrphostin AG 1478") 
    ("ATC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C2354" :NAME
     "thiazolidine carboxylic acid") 
    ("ATRA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C900" :NAME "vitamin A acid") 
    ("AUY922" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C71467" :NAME
     "hsp90 inhibitor AUY922") 
    ("Artemisinin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C78093" :NAME
     "artemisinin") 
    ("Astilbin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C099069" :NAME "astilbin") 
    ("BEZ235" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C74072" :NAME
     "PI3K inhibitor BEZ235") 
    ("BIX02189" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C533207" :NAME
     "BIX 02189") 
    ("BrdU" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C318" :NAME
     "bromodeoxyuridine") 
    ("CAL101" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C78825" :NAME
     "PI3K-delta inhibitor CAL-101") 
    ("CCL" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:3478" :NAME "cefaclor") 
    ("CDDP" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C376" :NAME "cisplatin") 
    ("CGP57380" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C466997" :NAME
     "CGP 57380") 
    ("Cyclosporin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C406" :NAME
     "cyclosporine") 
    ("Cypermethrin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C017160" :NAME
     "cypermethrin") 
    ("DCFDA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C029569" :NAME
     "diacetyldichlorofluorescein") 
    ("DCP" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C107676" :NAME "dicycloplatin") 
    ("DFC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C76928" :NAME
     "dexelvucitabine") 
    ("DOX" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1326" :NAME
     "doxorubicin hydrochloride") 
    ("Deltarasin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C581772" :NAME
     "deltarasin") 
    ("Dieckol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C503840" :NAME "dieckol") 
    ("ECG" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29773" :NAME
     "pregnant mare serum gonadotropin") 
    ("FK506" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:61049" :NAME
     "tacrolimus (anhydrous)") 
    ("FR180204" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C505241" :NAME
     "FR 180204") 
    ("FSH" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C71762" :NAME "folitropin") 
    ("FTY720" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C72782" :NAME
     "fingolimod hydrochloride") 
    ("Flavopiridol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1571" :NAME
     "flavopiridol") 
    ("GDC-0879" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:83405" :NAME "GDC-0879") 
    ("GSH" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C523" :NAME "glutathione") 
    ("GSSG" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C62624" :NAME
     "oxidized glutathione") 
    ("GW3965" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C473027" :NAME "GW 3965") 
    ("Go6976" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C081021" :NAME "Go 6976") 
    ("H2O2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C28156" :NAME
     "hydrogen peroxide") 
    ("HA15" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:132781" :NAME "HA15") 
    ("HX630" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C422175" :NAME "HX 630") 
    ("Homoharringtonine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C001652" :NAME
     "homoharringtonine") 
    ("ICG-001" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C492448" :NAME "ICG 001") 
    ("IFN" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C584" :NAME
     "therapeutic interferon") 
    ("Iguratimod" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C65886" :NAME
     "iguratimod") 
    ("KLH" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1139" :NAME
     "keyhole limpet hemocyanin") 
    ("LL202" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C000589248" :NAME "LL-202") 
    ("LiCl" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:48607" :NAME
     "lithium chloride") 
    ("Liraglutide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C82239" :NAME
     "liraglutide") 
    ("Lupeol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C010480" :NAME "lupeol") 
    ("MDA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C80152" :NAME "tenamfetamine") 
    ("N-acetylcysteine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C200" :NAME
     "acetylcysteine") 
    ("NSC23766" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C487513" :NAME
     "NSC 23766") 
    ("NVP" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29277" :NAME "nevirapine") 
    ("NaHS" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C025451" :NAME
     "sodium bisulfide") 
    ("Naringenin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C005273" :NAME
     "naringenin") 
    ("Nifurtimox" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C71734" :NAME
     "nifurtimox") 
    ("OSI-906" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C70982" :NAME
     "IGF-1R inhibitor OSI-906") 
    ("PD98058" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C466090" :NAME "PD 98058") 
    ("PDTC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C64185" :NAME
     "prolinedithiocarbamate") 
    ("PEGPH20" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C82659" :NAME
     "pegylated recombinant human hyaluronidase PH20") 
    ("PF02341066" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C74061" :NAME
     "MET tyrosine kinase inhibitor PF-02341066") 
    ("PGE2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:15551" :NAME
     "prostaglandin E2") 
    ("PI-103" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C522973" :NAME "PI103") 
    ("PKI166" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1871" :NAME "PKI166") 
    ("PP2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:78331" :NAME "PP2") 
    ("Paeoniflorin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C015423" :NAME
     "peoniflorin") 
    ("Piceatannol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1195" :NAME
     "piceatannol") 
    ("S-adenosylmethionine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C63661" :NAME
     "S-adenosylmethionine") 
    ("SKF96365" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C063159" :NAME
     "1-(2-(3-(4-methoxyphenyl)propoxy)-4-methoxyphenylethyl)-1H-imidazole") 
    ("STO-609" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C458525" :NAME "STO 609") 
    ("STZ" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C845" :NAME "streptozocin") 
    ("Simvastatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29454" :NAME
     "simvastatin") 
    ("TMZ" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:72564" :NAME "temozolomide") 
    ("TO901317" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C423915" :NAME
     "TO-901317") 
    ("Taxol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1411" :NAME "paclitaxel") 
    ("Tianeptine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C050504" :NAME
     "tianeptine") 
    ("Tinzaparin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C081247" :NAME
     "tinzaparin") 
    ("UO126" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C113580" :NAME "U 0126") 
    ("acteoside" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C058956" :NAME
     "acteoside") 
    ("allopurinol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C224" :NAME
     "allopurinol") 
    ("amlexanox" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C47395" :NAME
     "amlexanox") 
    ("anandamide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C078814" :NAME
     "anandamide") 
    ("anserine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C118877" :NAME "anserine") 
    ("antidepressant" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:35469" :NAME
     "antidepressant") 
    ("arsenite" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C015001" :NAME "arsenite") 
    ("astragalin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C001579" :NAME
     "astragalin") 
    ("atorvastatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C065179" :NAME
     "atorvastatin") 
    ("baicalein" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C006680" :NAME
     "baicalein") 
    ("biotin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:15956" :NAME "biotin") 
    ("bleomycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C313" :NAME "bleomycin") 
    ("bromopyruvate" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C017092" :NAME
     "bromopyruvate") 
    ("butaprost" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C74369" :NAME
     "butaprost") 
    ("butein" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C040918" :NAME "butein") 
    ("calcipotriol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:50749" :NAME
     "calcipotriol") 
    ("camptothecin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C338" :NAME
     "camptothecin") 
    ("capsaicin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C339" :NAME "capsaicin") 
    ("cavidine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C011188" :NAME "cavidine") 
    ("cerulein" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:59219" :NAME
     "ceruletide") 
    ("ciglitazone" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C72726" :NAME
     "ciglitazone") 
    ("cilostazol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1051" :NAME
     "cilostazol") 
    ("clarithromycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1054" :NAME
       "clarithromycin") 
      ("clotrimazole" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C381" :NAME
       "clotrimazole") 
    ("corynoline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C487644" :NAME
     "corynoline") 
    ("costunolide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C002602" :NAME
     "costunolide") 
    ("curcumin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C401" :NAME "curcumin") 
    ("daunorubicin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C62091" :NAME
     "daunorubicin") 
    ("dexmedetomidine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C47479" :NAME
     "dexmedetomidine") 
    ("diltiazem" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:101278" :NAME
     "diltiazem") 
    ("doxycycline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C457" :NAME
     "doxycycline") 
    ("epirubicin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C474" :NAME
     "epirubicin") 
    ("erastin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C477224" :NAME "erastin") 
    ("escitalopram" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C61754" :NAME
     "escitalopram") 
    ("eupafolin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C503624" :NAME
     "eupafolin") 
    ("flavopiridol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1571" :NAME
     "flavopiridol") 
    ("fludioxonil" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C108339" :NAME
     "fludioxonil") 
    ("fucoidan" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C007789" :NAME "fucoidan") 
    ("geldanamycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1112" :NAME
     "geldanamycin") 
    ("gemcitabine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C056507" :NAME
     "gemcitabine") 
    ("genipin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C007834" :NAME "genipin") 
    ("glutathione" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C523" :NAME
     "glutathione") 
    ("haloperidol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C537" :NAME
     "haloperidol") 
    ("honokiol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C005499" :NAME "honokiol") 
    ("hyperoside" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C021304" :NAME
     "hyperoside") 
    ("imperatorin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C031534" :NAME
     "imperatorin") 
    ("isoprenaline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:64317" :NAME
     "isoprenaline") 
    ("isorhamnetin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:6052" :NAME
     "isorhamnetin") 
    ("kaempferol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C006552" :NAME
     "kaempferol") 
    ("latanoprost" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29151" :NAME
     "latanoprost") 
    ("lipopolysaccharide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C101788" :NAME
     "lipopolysaccharide") 
    ("liraglutide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C82239" :NAME
     "liraglutide") 
    ("lovastatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C620" :NAME
     "lovastatin") 
    ("luteolin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:15864" :NAME "luteolin") 
    ("mAbs" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C20401" :NAME
     "monoclonal antibody") 
    ("matrine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C034244" :NAME "matrine") 
    ("medroxyprogesterone" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C629" :NAME
     "medroxyprogesterone") 
    ("melatonin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:16796" :NAME
     "melatonin") 
    ("menadione" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:28869" :NAME
     "menadione") 
    ("metformin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C61612" :NAME
     "metformin") 
    ("micafungin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1850" :NAME
     "micafungin") 
    ("mitoSOX" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C521281" :NAME
     "5-(6'-triphenylphosphoniumhexyl)-5,6-dihydro-6-phenyl-3,8-phenanthridinediammine") 
    ("moAb" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C20401" :NAME
     "monoclonal antibody") 
    ("myricetin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C040015" :NAME
     "myricetin") 
    ("naringin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C005274" :NAME "naringin") 
    ("niclosamide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C66240" :NAME
     "niclosamide") 
    ("nifedipine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29290" :NAME
     "nifedipine") 
    ("nifurtimox" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C71734" :NAME
     "nifurtimox") 
    ("nobiletin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C008661" :NAME
     "nobiletin") 
    ("osimertinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:90943" :NAME
     "osimertinib") 
    ("ouabain" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:472805" :NAME "ouabain") 
    ("paeoniflorin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C015423" :NAME
     "peoniflorin") 
    ("pegvisomant" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C61881" :NAME
     "pegvisomant") 
    ("perfluorohexanesulfonate" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C471071"
     :NAME "perfluorohexanesulfonic acid") 
    ("pevonedistat" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C77906" :NAME
     "NAE inhibitor MLN4924") 
    ("phenformin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C81700" :NAME
     "phenformin") 
    ("phenylephrine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:8093" :NAME
     "phenylephrine") 
    ("pirfenidone" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C2635" :NAME
     "pirfenidone") 
    ("prednisone" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C770" :NAME
     "prednisone") 
    ("proanthocyanidin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C013221" :NAME
     "proanthocyanidin") 
    ("progestins" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C776" :NAME
     "therapeutic progestin") 
    ("puerarin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C033607" :NAME "puerarin") 
    ("rhEGF" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C81938" :NAME
     "recombinant human epidermal growth factor") 
    ("rhein" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C020491" :NAME "rhein") 
    ("rosuvastatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C66523" :NAME
     "rosuvastatin") 
    ("rottlerin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C085746" :NAME
     "rottlerin") 
    ("saponins" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C823" :NAME "saponin") 
    ("saporin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C045928" :NAME "saporin") 
    ("sevoflurane" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C47717" :NAME
     "sevoflurane") 
    ("siNC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C052464" :NAME
     "bis(tri-n-hexylsiloxy)(2,3-naphthalocyaninato)silicon") 
    ("simvastatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29454" :NAME
     "simvastatin") 
    ("staurosporine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1237" :NAME
     "staurosporine") 
    ("tadalafil" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C47743" :NAME
     "tadalafil") 
    ("tetrandrine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C28952" :NAME
     "tetrandrine") 
    ("theophylline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C872" :NAME
     "theophylline") 
    ("triptolide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C001899" :NAME
     "triptolide") 
    ("vancomycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C925" :NAME
     "vancomycin") 
    ("violacein" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C063155" :NAME
     "violacein") 
    ("vorinostat" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C111237" :NAME
     "vorinostat") 
    ("wogonin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C085514" :NAME "wogonin") 
    ("hyperlipidemia" "ONT:PHYSICAL-CONDITION" :ID "EFO:0003774" :NAME
     "hyperlipidemia") 
    ("hypertrophy" "ONT:PHYSICAL-CONDITION" :ID "EFO:0002460" :NAME "hypertrophy") 
    ("EMSA" "ONT:PROCEDURE" :ID "NCIT:C19362" :NAME
     "electrophoretic mobility shift assay") 
    ("xenograft" "ONT:PROCESS" :ID "EFO:0003942" :NAME
     "heterologous transplantation") 
    ("ABA" "ONT:PROTEIN" :ID "UP:Q00022" :NAME "Agaricus bisporus lectin") 
    ("AEP" "ONT:PROTEIN" :ID "UP:Q9EQN5" :NAME "DNA-binding protein SMUBP-2") 
    ("AMPKalpha1" "ONT:PROTEIN" :ID "NCIT:C116033" :NAME
     "5-AMP-activated protein kinase catalytic subunit alpha-1") 
    ("APB" "ONT:PROTEIN" :ID "UP:Q9H4A4" :NAME "Aminopeptidase B") 
    ("ASOs" "ONT:PROTEIN" :ID "UP:P24792" :NAME "L-ascorbate oxidase") 
    ("Amphoterin" "ONT:PROTEIN" :ID "NCIT:C20328" :NAME "HMGB1") 
    ("BAPN" "ONT:PROTEIN" :ID "UP:P79098" :NAME "Aminopeptidase N") 
    ("BSA" "ONT:PROTEIN" :ID "UP:P02769" :NAME "Serum albumin") 
    ("CB" "ONT:PROTEIN" :ID "UP:P0CAS1" :NAME
     "Phospholipase A2 crotoxin basic chain") 
    ("CCI" "ONT:PROTEIN" :ID "UP:P32954" :NAME "Cysteine proteinase 1") 
    ("CFA" "ONT:PROTEIN" :ID "UP:O04350" :NAME "Tubulin-folding cofactor A") 
    ("CPC" "ONT:PROTEIN" :ID "UP:P29602" :NAME "Cucumber peeling cupredoxin") 
    ("CRY" "ONT:PROTEIN" :ID "UP:P15570" :NAME "Beta-elicitin cryptogein") 
    ("CYP" "ONT:PROTEIN" :ID "NCIT:C16484" :NAME "cytochrome-P450") 
    ("CaMKIalpha" "ONT:PROTEIN" :ID "NCIT:C116671" :NAME
     "calcium-calmodulin-dependent protein kinase type 1") 
    ("Cyp" "ONT:PROTEIN" :ID "NCIT:C16484" :NAME "cytochrome-P450") 
    ("CytC" "ONT:PROTEIN" :ID "UP:Q00951" :NAME "Hemolysin") 
    ("DH" "ONT:PROTEIN" :ID "UP:P23834" :NAME "Diuretic hormone") 
    ("DHR" "ONT:PROTEIN" :ID "UP:Q16983" :NAME "Diuretic hormone receptor") 
    ("EC" "ONT:PROTEIN" :ID "UP:Q16769" :NAME
     "Glutaminyl-peptide cyclotransferase") 
    ("ERalpha" "ONT:PROTEIN" :ID "NCIT:C38361" :NAME "estrogen receptor 1") 
    ("FC" "ONT:PROTEIN" :ID "UP:Q06529" :NAME
     "Cytochrome subunit of sulfide dehydrogenase") 
    ("FDA" "ONT:PROTEIN" :ID "UP:P81543" :NAME "Zinc-containing ferredoxin A") 
    ("FLS" "ONT:PROTEIN" :ID "UP:Q9ZWQ9" :NAME
     "Flavonol synthase/flavanone 3-hydroxylase") 
    ("Fgfr" "ONT:PROTEIN" :ID "NCIT:C17297" :NAME
     "fibroblast growth factor receptor family") 
    ("GROalpha" "ONT:PROTEIN" :ID "UP:O46676" :NAME
     "Growth-regulated protein homolog alpha") 
    ("GSI" "ONT:PROTEIN" :ID "UP:P05457" :NAME "Glutamine synthetase 1") 
    ("Gs" "ONT:PROTEIN" :ID "UP:P0C6Y6" :NAME "Envelope small membrane protein") 
    ("GsMTx4" "ONT:PROTEIN" :ID "UP:Q7YT39" :NAME "M-theraphotoxin-Gr1a") 
    ("HC" "ONT:PROTEIN" :ID "UP:P08897" :NAME "Collagenase") 
    ("HCD" "ONT:PROTEIN" :ID "UP:P02241" :NAME "Hemocyanin D chain") 
    ("HDP" "ONT:PROTEIN" :ID "UP:Q8IL04" :NAME "Heme ligase") 
    ("HRP" "ONT:PROTEIN" :ID "UP:Q08168" :NAME "58 kDa phosphoprotein") 
    ("I/R" "ONT:PROTEIN" :ID "UP:P06213" :NAME "Insulin receptor") 
    ("IFNgamma" "ONT:PROTEIN" :ID "UP:P01579" :NAME "Interferon gamma") 
    ("IGF" "ONT:PROTEIN" :ID "UP:P22618" :NAME "Insulin-like growth factor") 
    ("IKK" "ONT:PROTEIN" :ID "NCIT:C104199" :NAME "I-kappa-B kinase") 
    ("IL-3Ralpha" "ONT:PROTEIN" :ID "UP:P26951" :NAME
     "Interleukin-3 receptor subunit alpha") 
    ("IRE1alpha" "ONT:PROTEIN" :ID "NCIT:C113614" :NAME
     "serine threonine-protein kinase endoribonuclease IRE1") 
    ("IkB" "ONT:PROTEIN" :ID "NCIT:C17583" :NAME "I-kappa-B protein") 
    ("LA" "ONT:PROTEIN" :ID "NCIT:C70620" :NAME "lupus anticoagulant antibody") 
    ("LDL" "ONT:PROTEIN" :ID "NCIT:C25187" :NAME "low density lipoprotein") 
    ("LK" "ONT:PROTEIN" :ID "UP:O15991" :NAME "Lombricine kinase") 
    ("LTP" "ONT:PROTEIN" :ID "UP:P20145" :NAME
     "Probable non-specific lipid-transfer protein") 
    ("MAPKKK" "ONT:PROTEIN" :ID "GO:0004709" :NAME
     "MAP kinase kinase kinase activity") 
    ("MMP" "ONT:PROTEIN" :ID "NCIT:C18164" :NAME "matrix metalloproteinase") 
    ("MPR" "ONT:PROTEIN" :ID "UP:O00264" :NAME
     "Membrane-associated progesterone receptor component 1") 
    ("MTORC1" "ONT:PROTEIN" :ID "NCIT:C96314" :NAME "mTORC1") 
    ("NF-kappaB2" "ONT:PROTEIN" :ID "NCIT:C18550" :NAME
     "NF-kappa B p49-p100 protein") 
    ("NMDAR" "ONT:PROTEIN" :ID "NCIT:C118457" :NAME
     "N-methyl-D-aspartate receptor") 
    ("NS3" "ONT:PROTEIN" :ID "UP:Q9YWQ0" :NAME "Non-structural protein 3") 
    ("NS5A" "ONT:PROTEIN" :ID "UP:Q89613" :NAME "Non-structural protein 5a") 
    ("NS5B" "ONT:PROTEIN" :ID "UP:Q89786" :NAME "Non-structural protein 5b") 
    ("OM" "ONT:PROTEIN" :ID "UP:O35508" :NAME "Oncomodulin") 
    ("PGs" "ONT:PROTEIN" :ID "UP:Q9LW07" :NAME
     "Probable polygalacturonase At3g15720") 
    ("PI4K" "ONT:PROTEIN" :ID "GO:0004430" :NAME
     "1-phosphatidylinositol 4-kinase activity") 
    ("PI4Ks" "ONT:PROTEIN" :ID "GO:0004430" :NAME
     "1-phosphatidylinositol 4-kinase activity") 
    ("PKCalpha" "ONT:PROTEIN" :ID "UP:P04409" :NAME "Protein kinase C alpha type") 
    ("PKCdelta" "ONT:PROTEIN" :ID "UP:P10829" :NAME "Protein kinase C gamma type") 
    ("PLA" "ONT:PROTEIN" :ID "UP:A1CFS2" :NAME "Probable pectin lyase A") 
    ("PLCbeta1" "ONT:PROTEIN" :ID "UP:P10894" :NAME
     "1-phosphatidylinositol 4,5-bisphosphate phosphodiesterase beta-1") 
    ("PLD" "ONT:PROTEIN" :ID "UP:C0JAT4" :NAME
     "Phospholipase D LhSicTox-alphaIA1i") 
    ("POD" "ONT:PROTEIN" :ID "UP:Q5B2E9" :NAME "Pyranose 2-oxidase") 
    ("PS" "ONT:PROTEIN" :ID "UP:Q9X713" :NAME "Pantothenate synthetase") 
    ("PTTH" "ONT:PROTEIN" :ID "UP:P17219" :NAME "Prothoracicotropic hormone") 
    ("RA" "ONT:PROTEIN" :ID "UP:P10896" :NAME
     "Ribulose bisphosphate carboxylase/oxygenase activase, chloroplastic") 
    ("Sln1p" "ONT:PROTEIN" :ID "GO:0004673" :NAME
     "protein histidine kinase activity") 
    ("Sprouty2" "ONT:PROTEIN" :ID "NCIT:C106029" :NAME
     "protein sprouty homolog 2") 
    ("TA" "ONT:PROTEIN" :ID "UP:P37303" :NAME
     "Low specificity L-threonine aldolase") 
    ("TGF-beta1" "ONT:PROTEIN" :ID "UP:P01137" :NAME
     "Transforming growth factor beta-1") 
    ("TGFalpha" "ONT:PROTEIN" :ID "UP:P98138" :NAME
     "Transforming growth factor alpha") 
    ("TGFbeta1" "ONT:PROTEIN" :ID "UP:P01137" :NAME
     "Transforming growth factor beta-1") 
    ("TKI" "ONT:PROTEIN" :ID "UP:P16223" :NAME "Locustatachykinin-1") 
    ("TRL4" "ONT:PROTEIN" :ID "UP:P09694" :NAME "Uncharacterized protein IRL4") 
    ("TbetaRI" "ONT:PROTEIN" :ID "NCIT:C30098" :NAME
     "transforming growth factor beta receptor-I") 
    ("TbetaRII" "ONT:PROTEIN" :ID "NCIT:C17341" :NAME
     "transforming growth factor beta receptor II") 
    ("alphaENaC" "ONT:PROTEIN" :ID "UP:P37088" :NAME
     "Amiloride-sensitive sodium channel subunit alpha") 
    ("alphaSMA" "ONT:PROTEIN" :ID "NCIT:C103972" :NAME
     "actin aortic smooth muscle") 
    ("alphavbeta6" "ONT:PROTEIN" :ID "NCIT:C124258" :NAME "integrin alphaV-beta6") 
    ("beta-arrestin1" "ONT:PROTEIN" :ID "UP:P49407" :NAME "Beta-arrestin-1") 
    ("beta-arrestin2" "ONT:PROTEIN" :ID "UP:P32120" :NAME "Beta-arrestin-2") 
    ("beta1" "ONT:PROTEIN" :ID "UP:Q60420" :NAME "Transcription factor 12") 
    ("calcineurin" "ONT:PROTEIN" :ID "NCIT:C17275" :NAME "calcineurin") 
    ("caspase3" "ONT:PROTEIN" :ID "UP:P42574" :NAME "Caspase-3") 
    ("caspases-3" "ONT:PROTEIN" :ID "UP:P42574" :NAME "Caspase-3") 
    ("chaperone" "ONT:PROTEIN" :ID "NCIT:C17764" :NAME "chaperone") 
    ("cyclinA" "ONT:PROTEIN" :ID "UP:P20248" :NAME "Cyclin-A2") 
    ("glycogen synthase kinase-3beta" "ONT:PROTEIN" :ID "GO:0050321" :NAME
     "tau-protein kinase activity") 
    ("gonadotropin" "ONT:PROTEIN" :ID "NCIT:C2273" :NAME "gonadotropin") 
    ("interleukin-1beta" "ONT:PROTEIN" :ID "NCIT:C20522" :NAME
     "interleukin-1-beta") 
    ("keratin1" "ONT:PROTEIN" :ID "NCIT:C96456" :NAME
     "keratin type II cytoskeletal 1") 
    ("lyase" "ONT:PROTEIN" :ID "GO:0016829" :NAME "lyase activity") 
    ("mTORC2" "ONT:PROTEIN" :ID "NCIT:C96315" :NAME "mTORC2") 
    ("mortalin" "ONT:PROTEIN" :ID "UP:P38646" :NAME
     "Stress-70 protein, mitochondrial") 
    ("neurofibromin" "ONT:PROTEIN" :ID "UP:P35608" :NAME "Neurofibromin") 
    ("pS6" "ONT:PROTEIN" :ID "UP:P84571" :NAME "Phylloseptin-6") 
    ("papain" "ONT:PROTEIN" :ID "UP:P00784" :NAME "Papain") 
    ("redox" "ONT:PROTEIN" :ID "GO:0016491" :NAME "oxidoreductase activity") 
    ("spinophilin" "ONT:PROTEIN" :ID "UP:Q96SB3" :NAME "Neurabin-2") 
    ("symporter" "ONT:PROTEIN" :ID "GO:0015293" :NAME "symporter activity") 
    ("thrombin" "ONT:PROTEIN" :ID "UP:P84122" :NAME "Thrombin") 
    ("AMPKalpha" "ONT:PROTEIN-FAMILY" :ID "NCIT:C116019" :NAME
     "5-AMP-activated protein kinase catalytic subunit alpha") 
    ("EB" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF01683.16" :NAME "EB") 
    ("FLAG" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF03646.13" :NAME "FlaG") 
    ("FOXO" "ONT:PROTEIN-FAMILY" :ID "NCIT:C118892" :NAME "FOXO family") 
    ("FoxO" "ONT:PROTEIN-FAMILY" :ID "NCIT:C118892" :NAME "FOXO family") 
    ("Humanin" "ONT:PROTEIN-FAMILY" :ID "FA:04811" :NAME "humanin family") 
    ("IF3" "ONT:PROTEIN-FAMILY" :ID "FA:01810" :NAME "IF-3 family") 
    ("MGPC" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF05220.10" :NAME "MgpC") 
    ("PAF" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF15715.3" :NAME "PAF") 
    ("PP2B" "ONT:PROTEIN-FAMILY" :ID "FA:03002" :NAME "PP-2B subfamily") 
    ("TCF/LEF" "ONT:PROTEIN-FAMILY" :ID "FA:03943" :NAME "TCF/LEF family") 
    ("TGF" "ONT:PROTEIN-FAMILY" :ID "NCIT:C20453" :NAME
     "transforming growth factor") 
    ("WNKs" "ONT:PROTEIN-FAMILY" :ID "FA:03108" :NAME "WNK subfamily") 
    ("WNT" "ONT:PROTEIN-FAMILY" :ID "FA:04686" :NAME "wnt family") 
    ("Wnt" "ONT:PROTEIN-FAMILY" :ID "FA:04686" :NAME "wnt family") 
    ("connexin" "ONT:PROTEIN-FAMILY" :ID "FA:00722" :NAME "connexin family") 
    ("cullin" "ONT:PROTEIN-FAMILY" :ID "FA:00787" :NAME "cullin family") 
    ("humanin" "ONT:PROTEIN-FAMILY" :ID "FA:04811" :NAME "humanin family") 
    ("myosin" "ONT:PROTEIN-FAMILY" :ID "FA:05287" :NAME "myosin family") 
    ("parathyroid" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF01279.15" :NAME "parathyroid") 
    ("trans" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF06986.9" :NAME "TraN")
    
    ("LncRNA" "ONT:RNA" :ID "NCIT:C88924" :NAME "lincRNA") 
    ("HCV" "ONT:VIRUS" :ID "NCIT:C14312" :NAME "hepatitis C virus") 
    ("PEDV" "ONT:VIRUS" :ID "NCIT:C121657" :NAME
     "porcine epidemic diarrhea virus") 
    ("lentivirus" "ONT:VIRUS" :ID "NCIT:C14290" :NAME "lentivirus") 
    ("retroviruses" "ONT:VIRUS" :ID "NCIT:C14268" :NAME "retroviridae")
    ("CCL3" "ONT:CELL-LINE" :ID "CVCL:M023" :NAME "CCL3") 
    ("SW620" "ONT:CELL-LINE" :ID "EFO:0002368" :NAME "SW620") 
    ("Tm4" "ONT:CELL-LINE" :ID "CVCL:4327" :NAME "TM4") 
    ("HEPES" "ONT:CHEMICAL" :ID "CHEBI:46756" :NAME "HEPES") 
    ("endocannabinoid" "ONT:CHEMICAL" :ID "CHEBI:67197" :NAME "endocannabinoid") 
    ("fluorescein" "ONT:CHEMICAL" :ID "CHEBI:31624" :NAME "fluorescein") 
    ("ionophore" "ONT:CHEMICAL" :ID "CHEBI:24869" :NAME "ionophore") 
    ("C/EBPalpha" "ONT:GENE" :ID "NCIT:C52525" :NAME "CEBPA") 
    ("ErbB" "ONT:GENE" :ID "NCIT:C17763" :NAME "oncogene ERB-B") 
    ("MrgX1" "ONT:GENE" :ID "HGNC:17962" :NAME "MAS related GPR family member X1") 
    ("UCP" "ONT:GENE" :ID "NCIT:C112493" :NAME "UCP1") 
    ("ELK1" "ONT:GENE-PROTEIN" :ID "NCIT:C52540" :NAME "ELK1") 
    ("EML4" "ONT:GENE-PROTEIN" :ID "HGNC:1316" :NAME
     "echinoderm microtubule associated protein like 4")
    #+ignore
    ("TAB2" "ONT:GENE-PROTEIN" :ID "HGNC:17075" :NAME
     "TGF-beta activated kinase 1/MAP3K7 binding protein 2")
    ("g/l" "ONT:MEASURE-UNIT" :ID "UO:0000175" :NAME "gram per liter") 
    ("HPV" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0001668" :NAME
     "human papilloma virus infection") 
    ("SOD" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:3157" :NAME
     "Septo-optic dysplasia") 
    ("B16" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Asparagine or aspartic acid") 
    ("H19" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Histidine") 
    ("H1975" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Histidine") 
    ("N19" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Asparagine") 
    ("S70" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Serine") 
    ("U1026" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Selenocysteine") 
    ;;
    ("flavonoid" "ONT:MOLECULE" :ID "CHEBI:47916" :NAME "flavonoid") 
    ("miR-199a-3p" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR-200a" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("miR-7-5p" "ONT:MOLECULE" :ID NIL :NAME NIL) 
    ("nicotinamide" "ONT:MOLECULE" :ID "CHEBI:17154" :NAME "nicotinamide") 
    ("murine" "ONT:NONHUMAN-ANIMAL" :ID "NCIT:C14238" :NAME "mouse") 
    ("ABT-199" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C103147" :NAME
     "bcl-2 inhibitor GDC-0199") 
    ("bisindolylmaleimide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C088060" :NAME
     "bisindolylmaleimide") 
    ("alpha1" "ONT:PROCEDURE" :ID "NCIT:C67050" :NAME "affy alpha1 significance") 
    ("attractant" "ONT:PROTEIN" :ID "GO:0042056" :NAME "chemoattractant activity") 
    ("cotransporter" "ONT:PROTEIN" :ID "GO:0015293" :NAME "symporter activity") 
    ("streptavidin" "ONT:PROTEIN" :ID "UP:P22629" :NAME "Streptavidin") 
    ("adenovirus" "ONT:VIRUS" :ID "NCIT:C14179" :NAME "adenovirus")


    
("lysis" "ONT:BIOLOGICAL-PROCESS" :ID "NCIT:C37889" :NAME "lysis") 
("phospho-rylation" "ONT:BIOLOGICAL-PROCESS" :ID "GO:0016310" :NAME
 "phosphorylation") 
("GBM" "ONT:CANCER" :ID "EFO:0000519" :NAME "glioblastoma multiforme") 
("neoplasia" "ONT:CANCER" :ID "NCIT:C3262" :NAME "neoplasm") 
("BMSCs" "ONT:CELL" :ID "CO:0000134" :NAME "mesenchymal stem cell") 
("lymphoblasts" "ONT:CELL" :ID "BTO:0000772" :NAME "lymphoblast") 
("pericytes" "ONT:CELL" :ID "CO:0000669" :NAME "pericyte cell") 
("ARNT" "ONT:CELL-LINE" :ID "CVCL:E461" :NAME "ARNT") 
("Ba/F3" "ONT:CELL-LINE" :ID "CVCL:0161" :NAME "Ba/F3") 
("C2C12" "ONT:CELL-LINE" :ID "EFO:0001098" :NAME "C2C12") 
("Daoy" "ONT:CELL-LINE" :ID "CVCL:1167" :NAME "Daoy") 
("HT-1080" "ONT:CELL-LINE" :ID "EFO:0002059" :NAME "HT1080") 
("Hep3B" "ONT:CELL-LINE" :ID "EFO:0002205" :NAME "Hep3B") 
("KPD" "ONT:CELL-LINE" :ID "CVCL:B412" :NAME "KPD") 
("KYSE-30" "ONT:CELL-LINE" :ID "CVCL:1351" :NAME "KYSE-30") 
("LY" "ONT:CELL-LINE" :ID "CVCL:2097" :NAME "L-5178-Y") 
("MCF7r" "ONT:CELL-LINE" :ID "CVCL:Y493" :NAME "MCF-7R") 
("MDBK" "ONT:CELL-LINE" :ID "CVCL:0421" :NAME "MDBK") 
("NF" "ONT:CELL-LINE" :ID "CVCL:W770" :NAME "NF") 
("NK" "ONT:CELL-LINE" :ID "CVCL:1D01" :NAME "Novikoff-Hepatoma") 
("OVCAR5" "ONT:CELL-LINE" :ID "CVCL:1628" :NAME "OVCAR-5") 
("OVCAR8" "ONT:CELL-LINE" :ID "CVCL:1629" :NAME "OVCAR-8") 
("RL95–2" "ONT:CELL-LINE" :ID "CVCL:0505" :NAME "RL95-2") 
("RSF" "ONT:CELL-LINE" :ID "CVCL:R984" :NAME "RSF") 
("SH" "ONT:CELL-LINE" :ID "CVCL:S945" :NAME "SH") 
("ZK58" "ONT:CELL-LINE" :ID "CVCL:9920" :NAME "ZK-58") 
("Golgi" "ONT:CELL-PART" :ID "UP:SL-0132" :NAME "Golgi apparatus") 
("actomyosin" "ONT:CELL-PART" :ID "GO:0042641" :NAME "actomyosin") 
("caveolae" "ONT:CELL-PART" :ID "UP:SL-0035" :NAME "Caveola") 
("centriole" "ONT:CELL-PART" :ID "UP:SL-0046" :NAME "Centriole") 
("centrosome" "ONT:CELL-PART" :ID "UP:SL-0048" :NAME "Centrosome") 
("invadopodia" "ONT:CELL-PART" :ID "UP:SL-0148" :NAME "Invadopodium") 
("neurite" "ONT:CELL-PART" :ID "GO:0043005" :NAME "neuron projection") 
("organelle" "ONT:CELL-PART" :ID "GO:0043226" :NAME "organelle") 
("podosome" "ONT:CELL-PART" :ID "UP:SL-0295" :NAME "Podosome") 
("pseudopodia" "ONT:CELL-PART" :ID "UP:SL-0298" :NAME "Pseudopodium") 
("IPA-3" "ONT:CHEMICAL" :ID "CHEBI:101355" :NAME "IPA-3") 
("IPA3" "ONT:CHEMICAL" :ID "CHEBI:101355" :NAME "IPA-3") 
("MK-2206" "ONT:CHEMICAL" :ID "CHEBI:67271" :NAME "MK-2206") 
("QQ" "ONT:CHEMICAL" :ID "CHEBI:73846" :NAME "Gln-Gln") 
("YF" "ONT:CHEMICAL" :ID "CHEBI:75005" :NAME "Tyr-Phe") 
("neurotransmitter" "ONT:CHEMICAL" :ID "CHEBI:25512" :NAME "neurotransmitter") 
("phospho-tyrosine" "ONT:CHEMICAL" :ID "CHEBI:74956" :NAME
 "O(4)-phosphotyrosine") 
("vanadate" "ONT:CHEMICAL" :ID "CHEBI:46442" :NAME "vanadate(3-)") 
("ACK" "ONT:GENE" :ID "HGNC:19297" :NAME "tyrosine kinase non receptor 2") 
("BRSK1" "ONT:GENE" :ID "HGNC:18994" :NAME "BR serine/threonine kinase 1") 
("BRSK2" "ONT:GENE" :ID "HGNC:11405" :NAME "BR serine/threonine kinase 2") 
("Btk" "ONT:GENE" :ID "HGNC:1133" :NAME "Bruton tyrosine kinase") 
("C/EBPβ" "ONT:GENE" :ID "NCIT:C104117" :NAME "CEBPB") 
("CCNG2" "ONT:GENE" :ID "HGNC:1593" :NAME "cyclin G2") 
("CDK8" "ONT:GENE" :ID "HGNC:1779" :NAME "cyclin dependent kinase 8") 
("CFP" "ONT:GENE" :ID "HGNC:8864" :NAME "complement factor properdin") 
("CITED2" "ONT:GENE" :ID "HGNC:1987" :NAME
 "Cbp/p300 interacting transactivator with Glu/Asp rich carboxy-terminal domain 2") 
("Clk2" "ONT:GENE" :ID "HGNC:2069" :NAME "CDC like kinase 2") 
("Cyr61" "ONT:GENE" :ID "HGNC:2654" :NAME "cysteine rich angiogenic inducer 61") 
("EM" "ONT:GENE" :ID "NCIT:C52483" :NAME "EMILIN") 
("ESPL1" "ONT:GENE" :ID "HGNC:16856" :NAME
 "extra spindle pole bodies like 1, separase") 
("Elmo2" "ONT:GENE" :ID "HGNC:17233" :NAME "engulfment and cell motility 2") 
("FAM83A" "ONT:GENE" :ID "HGNC:28210" :NAME
 "family with sequence similarity 83 member A") 
("FAM83B" "ONT:GENE" :ID "HGNC:21357" :NAME
 "family with sequence similarity 83 member B") 
("FY" "ONT:GENE" :ID "NCIT:C78152" :NAME "DARC") 
("Gi" "ONT:GENE" :ID "NCIT:C52638" :NAME "GNAI1") 
("HACE1" "ONT:GENE" :ID "HGNC:21033" :NAME
 "HECT domain and ankyrin repeat containing E3 ubiquitin protein ligase 1") 
("IMAC" "ONT:GENE" :ID "NCIT:C49743" :NAME "CCL26") 
("KIAA0323" "ONT:GENE" :ID "HGNC:20166" :NAME "KH and NYN domain containing") 
("KLHL24" "ONT:GENE" :ID "HGNC:25947" :NAME "kelch like family member 24") 
("LIMK" "ONT:GENE" :ID "NCIT:C51212" :NAME "LIMK1") 
("M-all" "ONT:GENE" :ID "HGNC:6818" :NAME
 "mal, T-cell differentiation protein like") 
("MED15" "ONT:GENE" :ID "HGNC:14248" :NAME "mediator complex subunit 15") 
("MEF2C" "ONT:GENE" :ID "HGNC:6996" :NAME "myocyte enhancer factor 2C") 
("NES" "ONT:GENE" :ID "HGNC:7756" :NAME "nestin") 
("NHP2L1" "ONT:GENE" :ID "HGNC:7819" :NAME
 "SNU13 homolog, small nuclear ribonucleoprotein (U4/U6.U5)") 
("NISCH" "ONT:GENE" :ID "HGNC:18006" :NAME "nischarin") 
("NKRF" "ONT:GENE" :ID "HGNC:19374" :NAME "NFKB repressing factor") 
("Nedd4L" "ONT:GENE" :ID "HGNC:7728" :NAME
 "neural precursor cell expressed, developmentally down-regulated 4-like, E3 ubiquitin protein ligase") 
("Nek2" "ONT:GENE" :ID "HGNC:7745" :NAME "NIMA related kinase 2") 
("PBRs" "ONT:GENE" :ID "NCIT:C122728" :NAME "TSPO") 
("PDLIM5" "ONT:GENE" :ID "HGNC:17468" :NAME "PDZ and LIM domain 5") 
("POU2F3" "ONT:GENE" :ID "HGNC:19864" :NAME "POU class 2 homeobox 3") 
("RICTOR" "ONT:GENE" :ID "HGNC:28611" :NAME
 "RPTOR independent companion of MTOR complex 2") 
("RLIP76" "ONT:GENE" :ID "NCIT:C101287" :NAME "RALBP1") 
("RhoGDI" "ONT:GENE" :ID "HGNC:678" :NAME
 "Rho GDP dissociation inhibitor alpha") 
("Rhou" "ONT:GENE" :ID "HGNC:17794" :NAME "ras homolog family member U") 
("SLC20A1" "ONT:GENE" :ID "HGNC:10946" :NAME
 "solute carrier family 20 member 1") 
("SOSTDC1" "ONT:GENE" :ID "HGNC:21748" :NAME "sclerostin domain containing 1") 
("STEAP1" "ONT:GENE" :ID "HGNC:11378" :NAME "STEAP family member 1") 
("SYNJ1" "ONT:GENE" :ID "HGNC:11503" :NAME "synaptojanin 1") 
("SYNJ2" "ONT:GENE" :ID "HGNC:11504" :NAME "synaptojanin 2") 
("Sirt-1" "ONT:GENE" :ID "HGNC:14929" :NAME "sirtuin 1") 
("Sox17" "ONT:GENE" :ID "NCIT:C114834" :NAME "SOX17") 
("Stef" "ONT:GENE" :ID "HGNC:11806" :NAME
 "T-cell lymphoma invasion and metastasis 2") 
("TFF3" "ONT:GENE" :ID "HGNC:11757" :NAME "trefoil factor 3") 
("TJAP1" "ONT:GENE" :ID "HGNC:17949" :NAME
 "tight junction associated protein 1") 
("TMBIM1" "ONT:GENE" :ID "HGNC:23410" :NAME
 "transmembrane BAX inhibitor motif containing 1") 
("TPIP" "ONT:GENE" :ID "HGNC:17299" :NAME
 "transmembrane phosphoinositide 3-phosphatase and tensin homolog 2") 
("TPTE" "ONT:GENE" :ID "HGNC:12023" :NAME
 "transmembrane phosphatase with tensin homology") 
("TRUB2" "ONT:GENE" :ID "HGNC:17170" :NAME
 "TruB pseudouridine synthase family member 2") 
("UBXD8" "ONT:GENE" :ID "HGNC:24666" :NAME
 "Fas associated factor family member 2") 
("UQCRC2" "ONT:GENE" :ID "HGNC:12586" :NAME
 "ubiquinol-cytochrome c reductase core protein II") 
("WDR3" "ONT:GENE" :ID "HGNC:12755" :NAME "WD repeat domain 3") 
("Wwox" "ONT:GENE" :ID "HGNC:12799" :NAME "WW domain containing oxidoreductase") 
("ZDHHC7" "ONT:GENE" :ID "HGNC:18459" :NAME
 "zinc finger DHHC-type containing 7") 
("cSH2" "ONT:GENE" :ID "HGNC:2441" :NAME
 "chorionic somatomammotropin hormone 2") 
("iASPP" "ONT:GENE" :ID "NCIT:C95029" :NAME "PPP1R13L") 
("AHR" "ONT:GENE-PROTEIN" :ID "HGNC:348" :NAME "aryl hydrocarbon receptor") 
("Ack1" "ONT:GENE-PROTEIN" :ID "NCIT:C51063" :NAME "ACK1") 
("BCL10" "ONT:GENE-PROTEIN" :ID "HGNC:989" :NAME "B-cell CLL/lymphoma 10") 
("CD24" "ONT:GENE-PROTEIN" :ID "HGNC:1645" :NAME "CD24 molecule") 
("CEBPE" "ONT:GENE-PROTEIN" :ID "HGNC:1836" :NAME
 "CCAAT/enhancer binding protein epsilon") 
("CFMs" "ONT:GENE-PROTEIN" :ID "NCIT:C17392" :NAME
 "colony stimulating factor-1 receptor") 
("CNI" "ONT:GENE-PROTEIN" :ID "HGNC:17819" :NAME
 "5'-nucleotidase, cytosolic IA") 
("COBRA1" "ONT:GENE-PROTEIN" :ID "XFAM:PF06209.11" :NAME "COBRA1") 
("CYP7B1" "ONT:GENE-PROTEIN" :ID "HGNC:2652" :NAME
 "cytochrome P450 family 7 subfamily B member 1") 
("Crk" "ONT:GENE-PROTEIN" :ID "HGNC:2362" :NAME
 "CRK proto-oncogene, adaptor protein") 
("DDIT3" "ONT:GENE-PROTEIN" :ID "HGNC:2726" :NAME
 "DNA damage inducible transcript 3") 
("Dbl" "ONT:GENE-PROTEIN" :ID "NCIT:C18335" :NAME "oncogene DBL") 
("ERK7" "ONT:GENE-PROTEIN" :ID "HGNC:24667" :NAME
 "mitogen-activated protein kinase 15") 
("FAT" "ONT:GENE-PROTEIN" :ID "NCIT:C51154" :NAME "FAT") 
("FOXO1" "ONT:GENE-PROTEIN" :ID "HGNC:3819" :NAME "forkhead box O1") 
("GADD45" "ONT:GENE-PROTEIN" :ID "FA:01442" :NAME "GADD45 family") 
("GPI" "ONT:GENE-PROTEIN" :ID "HGNC:4458" :NAME "glucose-6-phosphate isomerase") 
("Gal4" "ONT:GENE-PROTEIN" :ID "UP:P56470" :NAME "Galectin-4") 
("Graf" "ONT:GENE-PROTEIN" :ID "NCIT:C97508" :NAME
 "rho GTPase-activating protein 26") 
("HDAC2" "ONT:GENE-PROTEIN" :ID "HGNC:4853" :NAME "histone deacetylase 2") 
("HDAC3" "ONT:GENE-PROTEIN" :ID "HGNC:4854" :NAME "histone deacetylase 3") 
("HDAC8" "ONT:GENE-PROTEIN" :ID "HGNC:13315" :NAME "histone deacetylase 8") 
("HGFR" "ONT:GENE-PROTEIN" :ID "NCIT:C18186" :NAME
 "hepatocyte growth factor receptor") 
("HIF-1α" "ONT:GENE-PROTEIN" :ID "UP:Q16665" :NAME
 "Hypoxia-inducible factor 1-alpha") 
("HIF1" "ONT:GENE-PROTEIN" :ID "NCIT:C52040" :NAME "HIF1A") 
("HSP20" "ONT:GENE-PROTEIN" :ID "XFAM:PF00011.19" :NAME "HSP20") 
("Hif1α" "ONT:GENE-PROTEIN" :ID "UP:Q16665" :NAME
 "Hypoxia-inducible factor 1-alpha") 
("IER3" "ONT:GENE-PROTEIN" :ID "HGNC:5392" :NAME "immediate early response 3") 
("IGFBP1" "ONT:GENE-PROTEIN" :ID "HGNC:5469" :NAME
 "insulin like growth factor binding protein 1") 
("LEPR" "ONT:GENE-PROTEIN" :ID "NCIT:C51373" :NAME "LEPR") 
("LIFR" "ONT:GENE-PROTEIN" :ID "NCIT:C51374" :NAME "LIFR") 
("LPA3" "ONT:GENE-PROTEIN" :ID "UP:Q9UBY5" :NAME
 "Lysophosphatidic acid receptor 3") 
("LZTFL1" "ONT:GENE-PROTEIN" :ID "HGNC:6741" :NAME
 "leucine zipper transcription factor like 1") 
("MED1" "ONT:GENE-PROTEIN" :ID "HGNC:9234" :NAME "mediator complex subunit 1") 
("MED10" "ONT:GENE-PROTEIN" :ID "HGNC:28760" :NAME
 "mediator complex subunit 10") 
("MED13" "ONT:GENE-PROTEIN" :ID "HGNC:22474" :NAME
 "mediator complex subunit 13") 
("MED14" "ONT:GENE-PROTEIN" :ID "HGNC:2370" :NAME "mediator complex subunit 14") 
("MED23" "ONT:GENE-PROTEIN" :ID "HGNC:2372" :NAME "mediator complex subunit 23") 
("MED9" "ONT:GENE-PROTEIN" :ID "HGNC:25487" :NAME "mediator complex subunit 9") 
("MEF2" "ONT:GENE-PROTEIN" :ID "FA:02224" :NAME "MEF2 family") 
("MMP10" "ONT:GENE-PROTEIN" :ID "HGNC:7156" :NAME "matrix metallopeptidase 10") 
("Myc" "ONT:GENE-PROTEIN" :ID "HGNC:7553" :NAME
 "v-myc avian myelocytomatosis viral oncogene homolog") 
("N-myc" "ONT:GENE-PROTEIN" :ID "NCIT:C53088" :NAME "NMYC") 
("NDRG2" "ONT:GENE-PROTEIN" :ID "HGNC:14460" :NAME "NDRG family member 2") 
("NP" "ONT:GENE-PROTEIN" :ID "UP:Q9JGU1" :NAME "Nucleoprotein") 
("NRAS" "ONT:GENE-PROTEIN" :ID "NCIT:C52549" :NAME "NRAS") 
("PAR1A" "ONT:GENE-PROTEIN" :ID "HGNC:6897" :NAME
 "microtubule affinity regulating kinase 3") 
("PARP1" "ONT:GENE-PROTEIN" :ID "NCIT:C51001" :NAME "PARP1") 
("PBR" "ONT:GENE-PROTEIN" :ID "NCIT:C122728" :NAME "TSPO") 
("PCA" "ONT:GENE-PROTEIN" :ID "UP:P00299" :NAME "Plastocyanin A, chloroplastic") 
("PI3Kinase" "ONT:GENE-PROTEIN" :ID "UP:P54673" :NAME
 "Phosphatidylinositol 3-kinase 1") 
("PLC-γ2" "ONT:GENE-PROTEIN" :ID "NCIT:C49383" :NAME "PLCG2") 
("Pak5" "ONT:GENE-PROTEIN" :ID "HGNC:15916" :NAME
 "p21 (RAC1) activated kinase 5") 
("Pdgfrb" "ONT:GENE-PROTEIN" :ID "HGNC:8804" :NAME
 "platelet derived growth factor receptor beta") 
("QC" "ONT:GENE-PROTEIN" :ID "NCIT:C102505" :NAME "QPCT") 
("RPS27" "ONT:GENE-PROTEIN" :ID "HGNC:10416" :NAME "ribosomal protein S27") 
("RUNX1" "ONT:GENE-PROTEIN" :ID "HGNC:10471" :NAME
 "runt related transcription factor 1") 
("Rab" "ONT:GENE-PROTEIN" :ID "FA:03661" :NAME "rab family") 
("Rheb" "ONT:GENE-PROTEIN" :ID "FA:03667" :NAME "rheb family") 
("SIK1" "ONT:GENE-PROTEIN" :ID "HGNC:11142" :NAME "salt inducible kinase 1") 
("SMYD3" "ONT:GENE-PROTEIN" :ID "HGNC:15513" :NAME
 "SET and MYND domain containing 3") 
("SRF" "ONT:GENE-PROTEIN" :ID "HGNC:11291" :NAME "serum response factor") 
("Skp2" "ONT:GENE-PROTEIN" :ID "HGNC:10901" :NAME
 "S-phase kinase-associated protein 2, E3 ubiquitin protein ligase") 
("TGFβ" "ONT:GENE-PROTEIN" :ID "FA:03989" :NAME "TGF-beta family") 
("WRNIP1" "ONT:GENE-PROTEIN" :ID "HGNC:20876" :NAME
 "Werner helicase interacting protein 1") 
("acini" "ONT:GENE-PROTEIN" :ID "UP:Q9UKV3" :NAME
 "Apoptotic chromatin condensation inducer in the nucleus") 
("ephrinA5" "ONT:GENE-PROTEIN" :ID "HGNC:3225" :NAME "ephrin A5") 
("ephrinB2" "ONT:GENE-PROTEIN" :ID "UP:P52799" :NAME "Ephrin-B2") 
("kinesin" "ONT:GENE-PROTEIN" :ID "FA:01965" :NAME "kinesin family") 
("myc" "ONT:GENE-PROTEIN" :ID "HGNC:7553" :NAME
 "v-myc avian myelocytomatosis viral oncogene homolog") 
("nischarin" "ONT:GENE-PROTEIN" :ID "HGNC:18006" :NAME "nischarin") 
("p110β" "ONT:GENE-PROTEIN" :ID "NCIT:C51161" :NAME "PIK3CB") 
("p120" "ONT:GENE-PROTEIN" :ID "NCIT:C79771" :NAME "CTNND1") 
("p21Rac1" "ONT:GENE-PROTEIN" :ID "NCIT:C99664" :NAME "RAC1") 
("smad3" "ONT:GENE-PROTEIN" :ID "HGNC:6769" :NAME "SMAD family member 3") 
("syncytia" "ONT:INTERNAL-BODY-PART" :ID "BTO:0005784" :NAME "syncytium") 
("syncytium" "ONT:INTERNAL-BODY-PART" :ID "BTO:0005784" :NAME "syncytium") 
("PIC" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0019035" :NAME
 "viral integration complex") 
("α" "ONT:MEASURE-UNIT" :ID "UO:0000078" :NAME "radian per second per second") 
("DN" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C7656" :NAME
 "hepatic dysplastic nodule") 
("MLC" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:2478" :NAME
 "Megalencephalic leukoencephalopathy with subcortical cysts") 
("PJS" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:2869" :NAME
 "Peutz-Jeghers syndrome") 
("polyploidy" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:96321" :NAME
 "Polyploidy") 
("telangiectasia" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C28194"
 :NAME "telangiectasia") 
("AAA" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00004.27" :NAME "AAA") 
("CNF1" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF05785.10" :NAME "CNF1") 
;;("IRS" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF02174.15" :NAME "IRS") 
("ITAM" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF02189.13" :NAME "ITAM") 
("PDZ" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00595.22" :NAME "PDZ") 
("SAF" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF08666.10" :NAME "SAF") 
("NBT" "ONT:MOLECULE" :ID "CHEBI:9505" :NAME
 "nitro blue tetrazolium dichloride") 
("acetone" "ONT:MOLECULE" :ID "CHEBI:15347" :NAME "acetone") 
("aldehyde" "ONT:MOLECULE" :ID "CHEBI:17478" :NAME "aldehyde") 
("arsenate" "ONT:MOLECULE" :ID "CHEBI:22629" :NAME "arsenate ion") 
("deoxyglucose" "ONT:MOLECULE" :ID "CHEBI:23623" :NAME "deoxyglucose") 
("disulfide" "ONT:MOLECULE" :ID "CHEBI:48343" :NAME "disulfide") 
("maltose" "ONT:MOLECULE" :ID "CHEBI:17306" :NAME "maltose") 
("myr" "ONT:MOLECULE" :ID "CHEBI:25456" :NAME "tetradecanoyl group") 
("palmitoyl" "ONT:MOLECULE" :ID "CHEBI:45021" :NAME "palmitoyl group") 
("tyrosyl" "ONT:MOLECULE" :ID "CHEBI:32789" :NAME "tyrosine residue") 
;;("MEN" "ONT:PERSON" :ID "NCIT:C14366" :NAME "man") 
("AMD3100" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1777" :NAME "AMD3100") 
("BKM-120" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:71954" :NAME "BKM120") 
("BYL719" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C94214" :NAME
 "PI3K inhibitor BYL719") 
("CAI" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1141" :NAME
 "carboxyamidotriazole") 
("EHT1864" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C506907" :NAME "EHT 1864") 
("ETP-45658" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C544684" :NAME "ETP 45658") 
("ETP45658" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C544684" :NAME "ETP 45658") 
("FK-506" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:61049" :NAME
 "tacrolimus (anhydrous)") 
("Fangchinoline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C060802" :NAME
 "fangchinoline") 
("GDC-0941" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C532162" :NAME
 "2-(1H-indazol-4-yl)-6-(4-methanesulfonylpiperazin-1-ylmethyl)-4-morpholin-4-ylthieno(3,2-d)pyrimidine") 
("GW5074" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C489251" :NAME
 "5-iodo-3-((3,5-dibromo-4-hydroxyphenyl)methylene)-2-indolinone") 
("Gentamicin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C519" :NAME "gentamicin") 
("LCH-7749944" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C570630" :NAME
 "LCH-7749944") 
("MEK162" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C581313" :NAME "MEK162") 
("PD0325901" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C52195" :NAME "PD-0325901") 
("PF-3758309" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C550923" :NAME
 "PF 3758309") 
("PIK-108" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C575625" :NAME "PIK-108") 
("SB265610" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C549500" :NAME
 "1-(2-bromophenyl)-3-(7-cyano-3H-benzotriazol-4-yl)urea") 
("STI571" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1687" :NAME "imatinib") 
("TAK-733" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C84858" :NAME
 "MEK inhibitor TAK-733") 
("TAK165" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C66212" :NAME "mubritinib") 
("TAS-116" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C000596495" :NAME "TAS-116") 
("adriamycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1326" :NAME
 "doxorubicin hydrochloride") 
("danusertib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C523797" :NAME
 "danusertib") 
("dox" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1326" :NAME
 "doxorubicin hydrochloride") 
("fangchinoline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C060802" :NAME
 "fangchinoline") 
("gentamicin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C519" :NAME "gentamicin") 
("herceptin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1647" :NAME "trastuzumab") 
("heregulin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1426" :NAME
 "recombinant heregulin") 
("monastrol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C400223" :NAME "monastrol") 
("octylamine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C008699" :NAME
 "octylamine") 
("paraformaldehyde" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C003043" :NAME
 "paraform") 
("polyacrylamide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C016679" :NAME
 "polyacrylamide") 
("talazoparib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C586365" :NAME
 "talazoparib") 
("tetracycline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C865" :NAME
 "tetracycline") 
("trypan" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C003915" :NAME
 "diminazene aceturate") 
("FACS" "ONT:PROCEDURE" :ID "NCIT:C17353" :NAME
 "fluorescence activated cell sorting") 
("chromatography" "ONT:PROCEDURE" :ID "NCIT:C16431" :NAME "chromatography") 
("densitometry" "ONT:PROCEDURE" :ID "NCIT:C86063" :NAME "densitometry") 
("cDNA" "ONT:PROCESS" :ID "EFO:0004187" :NAME "cDNA library construction") 
("AMPKα1" "ONT:PROTEIN" :ID "NCIT:C116033" :NAME
 "5-AMP-activated protein kinase catalytic subunit alpha-1") 
("CD3-ε" "ONT:PROTEIN" :ID "NCIT:C25792" :NAME
 "T-cell surface glycoprotein-CD3 epsilon chain") 
("CYP41" "ONT:PROTEIN" :ID "UP:Q9P3X9" :NAME
 "41 kDa peptidyl-prolyl cis-trans isomerase") 
("Freud1" "ONT:PROTEIN" :ID "UP:Q6P1N0" :NAME
 "Coiled-coil and C2 domain-containing protein 1A") 
("IAP1" "ONT:PROTEIN" :ID "UP:P15693" :NAME
 "Intestinal-type alkaline phosphatase 1") 
("IκB" "ONT:PROTEIN" :ID "NCIT:C17583" :NAME "I-kappa-B protein") 
("LAC" "ONT:PROTEIN" :ID "NCIT:C70620" :NAME "lupus anticoagulant antibody") 
("LSL" "ONT:PROTEIN" :ID "UP:P84821" :NAME "Lectin 80 kDa subunit") 
("MO25α" "ONT:PROTEIN" :ID "UP:Q29RI6" :NAME "Calcium-binding protein 39") 
("MO25β" "ONT:PROTEIN" :ID "UP:Q9H9S4" :NAME "Calcium-binding protein 39-like") 
("PCM" "ONT:PROTEIN" :ID "UP:O42781" :NAME "Mitogen-activated protein kinase 2") 
("PIX" "ONT:PROTEIN" :ID "UP:P68970" :NAME "Hexon-associated protein") 
("RARα" "ONT:PROTEIN" :ID "UP:P10276" :NAME "Retinoic acid receptor alpha") 
("TGFβR" "ONT:PROTEIN" :ID "GO:0005024" :NAME
 "transforming growth factor beta-activated receptor activity") 
("chemoattractants" "ONT:PROTEIN" :ID "GO:0042056" :NAME
 "chemoattractant activity") 
("invasin" "ONT:PROTEIN" :ID "UP:P19196" :NAME "Invasin") 
("lymphokine" "ONT:PROTEIN" :ID "NCIT:C20498" :NAME "lymphokine") 
("pY" "ONT:PROTEIN" :ID "UP:P0AD51" :NAME
 "Ribosome-associated factor Y {ECO:0000305}") 
("pp29/30" "ONT:PROTEIN" :ID "UP:Q6PIZ9" :NAME
 "T-cell receptor-associated transmembrane adapter 1") 
("δ" "ONT:PROTEIN" :ID "NCIT:C106586" :NAME "delta-like protein-1") 
("AMPKα" "ONT:PROTEIN-FAMILY" :ID "NCIT:C116019" :NAME
 "5-AMP-activated protein kinase catalytic subunit alpha") 
("DIRAS" "ONT:PROTEIN-FAMILY" :ID "FA:03660" :NAME "Di-Ras family") 
("FLIM" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF02154.13" :NAME "FliM") 
("Homer" "ONT:PROTEIN-FAMILY" :ID "FA:01786" :NAME "homer family") 
("PAE" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF03283.11" :NAME "PAE") 
("Sprouty" "ONT:PROTEIN-FAMILY" :ID "FA:03814" :NAME "sprouty family") 

("HIV" "ONT:VIRUS" :ID "NCIT:C14219" :NAME "human immunodeficiency virus") 
("parapoxvirus" "ONT:VIRUS" :ID "NCIT:C112367" :NAME "parapoxvirus") 
("retrovirus" "ONT:VIRUS" :ID "NCIT:C14268" :NAME "retroviridae") 


;; from 10b to 13 (all reach sentences)
("Chlamydia" "ONT:BACTERIUM" :ID "NCIT:C76271" :NAME "chlamydia")
 ("Francisella" "ONT:BACTERIUM" :ID "NCIT:C86396" :NAME "francisella")
 ("HDR" "ONT:BIOLOGICAL-PROCESS" :ID "GO:0000724" :NAME
  "double-strand break repair via homologous recombination")
 ("ECT" "ONT:CANCER" :ID "NCIT:C121785" :NAME
  "ectomesenchymal chondromyxoid tumor")
 ("EFVPTC" "ONT:CANCER" :ID "NCIT:C66850" :NAME
  "encapsulated thyroid gland papillary carcinoma")
 ("EGC" "ONT:CANCER" :ID "NCIT:C27131" :NAME "early gastric cancer")
 ("Ess" "ONT:CANCER" :ID "EFO:1000919" :NAME "endometrial stromal sarcoma")
 ("HCL" "ONT:CANCER" :ID "NCIT:C7402" :NAME "hairy cell leukemia")
 ("BMDCs" "ONT:CELL" :ID "BTO:0003857" :NAME
  "bone marrow-derived dendritic cell")
 ("BMSC" "ONT:CELL" :ID "CO:0000134" :NAME "mesenchymal stem cell")
 ("CLP" "ONT:CELL" :ID "CO:0000051" :NAME "common lymphoid progenitor")
 ("EPCs" "ONT:CELL" :ID "CO:0002619" :NAME "adult endothelial progenitor cell")
 ("ESC" "ONT:CELL" :ID "CO:0002322" :NAME "embryonic stem cell")
 ("ACHN" "ONT:CELL-LINE" :ID "CVCL:1067" :NAME "ACHN")
 ("AKI" "ONT:CELL-LINE" :ID "CVCL:8170" :NAME "AKI")
 ("AP" "ONT:CELL-LINE" :ID "CVCL:E457" :NAME "AP")
 ("ARPE-19" "ONT:CELL-LINE" :ID "EFO:0006271" :NAME "ARPE-19")
 ("ATDC5" "ONT:CELL-LINE" :ID "CVCL:3894" :NAME "ATDC-5")
 ("B16F10" "ONT:CELL-LINE" :ID "CVCL:0159" :NAME "B16-F10")
 ("BD" "ONT:CELL-LINE" :ID "CVCL:F568" :NAME "BD")
 ("BEL-7402" "ONT:CELL-LINE" :ID "CVCL:5492" :NAME "BEL-7402")
 ("BRN2" "ONT:CELL-LINE" :ID "CVCL:0U16" :NAME "BRN-2")
 ("BVR" "ONT:CELL-LINE" :ID "CVCL:1M70" :NAME "BVR")
 ("BeWo" "ONT:CELL-LINE" :ID "EFO:0002050" :NAME "BeWo")
 ("Beas-2B cells" "ONT:CELL-LINE" :ID "BTO:0002923" :NAME "BEAS-2B cell")
 ("Bu" "ONT:CELL-LINE" :ID "CVCL:2527" :NAME "IMR-31")
 ("BxPC3" "ONT:CELL-LINE" :ID "EFO:0002709" :NAME "BxPC-3")
 ("COS" "ONT:CELL-LINE" :ID "CVCL:0222" :NAME "COS")
 ("CT26" "ONT:CELL-LINE" :ID "CVCL:7254" :NAME "CT26")
 ("Carb" "ONT:CELL-LINE" :ID "CVCL:5715" :NAME "CarB")
 ("DD" "ONT:CELL-LINE" :ID "CVCL:J651" :NAME "DD")
 ("DG2" "ONT:CELL-LINE" :ID "CVCL:L853" :NAME "DG2")
 ("DM4" "ONT:CELL-LINE" :ID "CVCL:5644" :NAME "DM-4")
 ("Difi" "ONT:CELL-LINE" :ID "CVCL:6895" :NAME "DiFi")
 ("EAA" "ONT:CELL-LINE" :ID "CVCL:Z253" :NAME "BTI-EAA")
 ("EPC" "ONT:CELL-LINE" :ID "CVCL:4361" :NAME "EPC")
 ("ER1" "ONT:CELL-LINE" :ID "CVCL:L896" :NAME "ER-1")
 ("F4/80" "ONT:CELL-LINE" :ID "CVCL:7263" :NAME "F4/80")
 ("FL" "ONT:CELL-LINE" :ID "CVCL:1905" :NAME "FL")
 ("FQ" "ONT:CELL-LINE" :ID "CVCL:L984" :NAME "FQ")
 ("GAK" "ONT:CELL-LINE" :ID "CVCL:1225" :NAME "GAK")
 ("GE11" "ONT:CELL-LINE" :ID "CVCL:8873" :NAME "GE11")
 ("GLE" "ONT:CELL-LINE" :ID "CVCL:0C11" :NAME "GL-E")
 ("GM1" "ONT:CELL-LINE" :ID "CVCL:Z794" :NAME "GM1")
 ("GM130" "ONT:CELL-LINE" :ID "CVCL:7274" :NAME "GM00130")
 ("HCC1806" "ONT:CELL-LINE" :ID "EFO:0005373" :NAME "HCC1806")
 ("Acetyl-L-Carnitine" "ONT:CHEMICAL" :ID "CHEBI:57589" :NAME
  "O-acetyl-L-carnitine")
 ("Avermectin" "ONT:CHEMICAL" :ID "CHEBI:50344" :NAME "avermectin")
 ("CDCA" "ONT:CHEMICAL" :ID "CHEBI:16755" :NAME "chenodeoxycholic acid")
 ("CHIR99021" "ONT:CHEMICAL" :ID "CHEBI:91091" :NAME "CHIR 99021")
 ("CMH" "ONT:CHEMICAL" :ID "CHEBI:62107" :NAME
  "beta-D-glucosyl-N-(docosanoyl)sphingosine")
 ("CPP" "ONT:CHEMICAL" :ID "CHEBI:34603" :NAME "CPP")
 ("Cantharidin" "ONT:CHEMICAL" :ID "CHEBI:64213" :NAME "cantharidin")
 ("Cyt" "ONT:CHEMICAL" :ID "CHEBI:16040" :NAME "cytosine")
 ("DEHP" "ONT:CHEMICAL" :ID "CHEBI:17747" :NAME "bis(2-ethylhexyl) phthalate")
 ("DFO" "ONT:CHEMICAL" :ID "CHEBI:4356" :NAME "desferrioxamine B")
 ("DL" "ONT:CHEMICAL" :ID "CHEBI:68596" :NAME "alpha-Asp-Leu")
 ("DMN" "ONT:CHEMICAL" :ID "NCIT:C44417" :NAME "N-nitrosodimethylamine")
 ("DPN" "ONT:CHEMICAL" :ID "CHEBI:16998" :NAME "D-phenylalanine")
 ("DV" "ONT:CHEMICAL" :ID "CHEBI:73832" :NAME "Asp-Val")
 ("DpR" "ONT:CHEMICAL" :ID "CHEBI:16313" :NAME "D-proline")
 ("EDC" "ONT:CHEMICAL" :ID "NCIT:C44383" :NAME "ethylene dichloride")
 ("EDCs" "ONT:CHEMICAL" :ID "NCIT:C44383" :NAME "ethylene dichloride")
 ("GABA" "ONT:CHEMICAL" :ID "CHEBI:16865" :NAME "gamma-aminobutyric acid")
 ("GGA" "ONT:CHEMICAL" :ID "CHEBI:73899" :NAME "Gly-Gly-Ala")
 ("GalNAc" "ONT:CHEMICAL" :ID "CHEBI:28800" :NAME "N-acetylgalactosamine")
 ("HDACi" "ONT:CHEMICAL" :ID "CHEBI:61115" :NAME
  "EC 3.5.1.98 (histone deacetylase) inhibitor")
 ("HETE" "ONT:CHEMICAL" :ID "CHEBI:36275" :NAME "HETE")
 ("ACE2" "ONT:GENE" :ID "HGNC:13557" :NAME "angiotensin I converting enzyme 2")
 ("AEs" "ONT:GENE" :ID "HGNC:307" :NAME "amino-terminal enhancer of split")
 ("AKAP121" "ONT:GENE" :ID "HGNC:367" :NAME "A-kinase anchoring protein 1")
 ("ALB" "ONT:GENE" :ID "HGNC:399" :NAME "albumin")
 ("ALG-2" "ONT:GENE" :ID "HGNC:23159" :NAME
  "ALG2, alpha-1,3/1,6-mannosyltransferase")
 ("AMD" "ONT:GENE" :ID "NCIT:C102774" :NAME "AMD1")
 ("ANGPTL1" "ONT:GENE" :ID "HGNC:489" :NAME "angiopoietin like 1")
 ("AOM" "ONT:GENE" :ID "NCIT:C75317" :NAME "COL2A1")
 ("ART3" "ONT:GENE" :ID "HGNC:725" :NAME "ADP-ribosyltransferase 3")
 ("ASNS" "ONT:GENE" :ID "HGNC:753" :NAME
  "asparagine synthetase (glutamine-hydrolyzing)")
 ("Ach" "ONT:GENE" :ID "NCIT:C51544" :NAME "FGFR3")
 ("Acot2" "ONT:GENE" :ID "HGNC:18431" :NAME "acyl-CoA thioesterase 2")
 ("Acp5" "ONT:GENE" :ID "HGNC:124" :NAME
  "acid phosphatase 5, tartrate resistant")
 ("Acsl4" "ONT:GENE" :ID "HGNC:3571" :NAME
  "acyl-CoA synthetase long-chain family member 4")
 ("Ada2" "ONT:GENE" :ID "NCIT:C101470" :NAME "TADA2A")
 ("BACE1" "ONT:GENE" :ID "HGNC:933" :NAME "beta-secretase 1")
 ("BCAT1" "ONT:GENE" :ID "HGNC:976" :NAME
  "branched chain amino acid transaminase 1")
 ("BCL2A1" "ONT:GENE" :ID "HGNC:991" :NAME "BCL2 related protein A1")
 ("BCMA" "ONT:GENE" :ID "NCIT:C97847" :NAME "TNFRSF17")
 ("BNP" "ONT:GENE" :ID "NCIT:C88521" :NAME "NPPB")
 ("BRD7" "ONT:GENE" :ID "HGNC:14310" :NAME "bromodomain containing 7")
 ("Bcl2A1" "ONT:GENE" :ID "HGNC:991" :NAME "BCL2 related protein A1")
 ("Beta-4" "ONT:GENE" :ID "NCIT:C104243" :NAME "TUBB3")
 ("C/EBPepsilon" "ONT:GENE" :ID "NCIT:C52527" :NAME "CEBPE")
 ("CBX" "ONT:GENE" :ID "HGNC:1551" :NAME "chromobox 1")
 ("CCDC34" "ONT:GENE" :ID "HGNC:25079" :NAME
  "coiled-coil domain containing 34")
 ("CCN2" "ONT:GENE" :ID "NCIT:C62458" :NAME "CTGF")
 ("CCR2B" "ONT:GENE" :ID "NCIT:C101578" :NAME "CCR2")
 ("CD166" "ONT:GENE" :ID "NCIT:C51109" :NAME "ALCAM")
 ("CD32b" "ONT:GENE" :ID "NCIT:C51391" :NAME "FCGR2B")
 ("CEL" "ONT:GENE" :ID "HGNC:1848" :NAME "carboxyl ester lipase")
 ("CGN" "ONT:GENE" :ID "HGNC:17429" :NAME "cingulin")
 ("CIDEC" "ONT:GENE" :ID "HGNC:24229" :NAME
  "cell death inducing DFFA like effector c")
 ("CIP2A" "ONT:GENE" :ID "NCIT:C126606" :NAME "KIAA1524")
 ("CIRP" "ONT:GENE" :ID "HGNC:1982" :NAME "cold inducible RNA binding protein")
 ("CLPTM1L" "ONT:GENE" :ID "HGNC:24308" :NAME "CLPTM1 like")
 ("CNR2" "ONT:GENE" :ID "HGNC:2160" :NAME "cannabinoid receptor 2")
 ("COL3A1" "ONT:GENE" :ID "HGNC:2201" :NAME "collagen type III alpha 1 chain")
 ("CREM" "ONT:GENE" :ID "HGNC:2352" :NAME "cAMP responsive element modulator")
 ("CRIPTO1" "ONT:GENE" :ID "HGNC:11701" :NAME
  "teratocarcinoma-derived growth factor 1")
 ("CTRP6" "ONT:GENE" :ID "HGNC:14343" :NAME
  "C1q and tumor necrosis factor related protein 6")
 ("CXCL16" "ONT:GENE" :ID "HGNC:16642" :NAME "C-X-C motif chemokine ligand 16")
 ("Cav3" "ONT:GENE" :ID "HGNC:1529" :NAME "caveolin 3")
 ("CypA" "ONT:GENE" :ID "HGNC:9253" :NAME "peptidylprolyl isomerase A")
 ("DAZL" "ONT:GENE" :ID "HGNC:2685" :NAME "deleted in azoospermia like")
 ("DGCR6L" "ONT:GENE" :ID "HGNC:18551" :NAME
  "DiGeorge syndrome critical region gene 6-like")
 ("DLG1" "ONT:GENE" :ID "HGNC:2900" :NAME
  "discs large MAGUK scaffold protein 1")
 ("DPP4" "ONT:GENE" :ID "HGNC:3009" :NAME "dipeptidyl peptidase 4")
 ("DUOX-2" "ONT:GENE" :ID "HGNC:13273" :NAME "dual oxidase 2")
 ("DUSP2" "ONT:GENE" :ID "HGNC:3068" :NAME "dual specificity phosphatase 2")
 ("DYRK" "ONT:GENE" :ID "NCIT:C98171" :NAME "DYRK1A")
 ("DYRK1A" "ONT:GENE" :ID "HGNC:3091" :NAME
  "dual specificity tyrosine phosphorylation regulated kinase 1A")
 ("DYRK1B" "ONT:GENE" :ID "HGNC:3092" :NAME
  "dual specificity tyrosine phosphorylation regulated kinase 1B")
 ("DYRK2" "ONT:GENE" :ID "HGNC:3093" :NAME
  "dual specificity tyrosine phosphorylation regulated kinase 2")
 ("DYRK4" "ONT:GENE" :ID "HGNC:3095" :NAME
  "dual specificity tyrosine phosphorylation regulated kinase 4")
 ("Dazl" "ONT:GENE" :ID "HGNC:2685" :NAME "deleted in azoospermia like")
 ("DiRas3" "ONT:GENE" :ID "HGNC:687" :NAME "DIRAS family GTPase 3")
 ("Dlg1" "ONT:GENE" :ID "HGNC:2900" :NAME
  "discs large MAGUK scaffold protein 1")
 ("Dot1l" "ONT:GENE" :ID "HGNC:24948" :NAME
  "DOT1 like histone lysine methyltransferase")
 ("ECAD" "ONT:GENE" :ID "NCIT:C51151" :NAME "CDH1")
 ("EP2" "ONT:GENE" :ID "NCIT:C122071" :NAME "SPAG11B")
 ("EPM" "ONT:GENE" :ID "NCIT:C116089" :NAME "STX2")
 ("ESRP1" "ONT:GENE" :ID "HGNC:25966" :NAME
  "epithelial splicing regulatory protein 1")
 ("En1" "ONT:GENE" :ID "HGNC:3342" :NAME "engrailed homeobox 1")
 ("FAAH" "ONT:GENE" :ID "HGNC:3553" :NAME "fatty acid amide hydrolase")
 ("FAF1" "ONT:GENE" :ID "HGNC:3578" :NAME "Fas associated factor 1")
 ("FAT1" "ONT:GENE" :ID "HGNC:3595" :NAME "FAT atypical cadherin 1")
 ("FBXL5" "ONT:GENE" :ID "HGNC:13602" :NAME
  "F-box and leucine rich repeat protein 5")
 ("FDC" "ONT:GENE" :ID "NCIT:C104621" :NAME "LAG3")
 ("FMNL2" "ONT:GENE" :ID "HGNC:18267" :NAME "formin like 2")
 ("FMNL3" "ONT:GENE" :ID "HGNC:23698" :NAME "formin like 3")
 ("FNDC5" "ONT:GENE" :ID "HGNC:20240" :NAME
  "fibronectin type III domain containing 5")
 ("FOXM1" "ONT:GENE" :ID "HGNC:3818" :NAME "forkhead box M1")
 ("FRT" "ONT:GENE" :ID "NCIT:C52169" :NAME "FLT1")
 ("FU" "ONT:GENE" :ID "HGNC:17209" :NAME "serine/threonine kinase 36")
 ("FZR1" "ONT:GENE" :ID "HGNC:24824" :NAME
  "fizzy/cell division cycle 20 related 1")
 ("FoxM1B" "ONT:GENE" :ID "NCIT:C101581" :NAME "FOXM1")
 ("GIPC1" "ONT:GENE" :ID "HGNC:1226" :NAME
  "GIPC PDZ domain containing family member 1")
 ("GLRX3" "ONT:GENE" :ID "HGNC:15987" :NAME "glutaredoxin 3")
 ("GM" "ONT:GENE" :ID "HGNC:9291" :NAME
  "protein phosphatase 1 regulatory subunit 3A")
 ("GOLM1" "ONT:GENE" :ID "HGNC:15451" :NAME "golgi membrane protein 1")
 ("GPBAR1" "ONT:GENE" :ID "HGNC:19680" :NAME
  "G protein-coupled bile acid receptor 1")
 ("GPNMB" "ONT:GENE" :ID "HGNC:4462" :NAME "glycoprotein nmb")
 ("GPR101" "ONT:GENE" :ID "HGNC:14963" :NAME "G protein-coupled receptor 101")
 ("GPR109A" "ONT:GENE" :ID "HGNC:24827" :NAME
  "hydroxycarboxylic acid receptor 2")
 ("GPR160" "ONT:GENE" :ID "HGNC:23693" :NAME "G protein-coupled receptor 160")
 ("GPR30" "ONT:GENE" :ID "NCIT:C106199" :NAME "GPER")
 ("GPR55" "ONT:GENE" :ID "HGNC:4511" :NAME "G protein-coupled receptor 55")
 ("GPRC6A" "ONT:GENE" :ID "HGNC:18510" :NAME
  "G protein-coupled receptor class C group 6 member A")
 ("Gadd45beta" "ONT:GENE" :ID "NCIT:C105845" :NAME "GADD45B")
 ("HAI" "ONT:GENE" :ID "NCIT:C50376" :NAME "ST14")
 ("HARE" "ONT:GENE" :ID "HGNC:18629" :NAME "stabilin 2")
 ("AAP" "ONT:GENE-PROTEIN" :ID "UP:P22702" :NAME "Arginine attenuator peptide")
 ("ABCG2" "ONT:GENE-PROTEIN" :ID "HGNC:74" :NAME
  "ATP binding cassette subfamily G member 2 (Junior blood group)")
 ("ACR" "ONT:GENE-PROTEIN" :ID "HGNC:126" :NAME "acrosin")
 ("ADAMTS6" "ONT:GENE-PROTEIN" :ID "HGNC:222" :NAME
  "ADAM metallopeptidase with thrombospondin type 1 motif 6")
 ("AGP" "ONT:GENE-PROTEIN" :ID "XFAM:PF06376.10" :NAME "AGP")
 ("AIM2" "ONT:GENE-PROTEIN" :ID "HGNC:357" :NAME "absent in melanoma 2")
 ("AK" "ONT:GENE-PROTEIN" :ID "UP:P55263" :NAME "Adenosine kinase")
 ("ALIX" "ONT:GENE-PROTEIN" :ID "UP:Q8T7K0" :NAME
  "ALG-2 interacting protein X")
 ("ALO" "ONT:GENE-PROTEIN" :ID "UP:Q752Y3" :NAME
  "D-arabinono-1,4-lactone oxidase")
 ("AMPKbeta" "ONT:GENE-PROTEIN" :ID "NCIT:C107149" :NAME
  "AMP-activated protein kinase beta")
 ("ANG" "ONT:GENE-PROTEIN" :ID "HGNC:483" :NAME "angiogenin")
 ("APN" "ONT:GENE-PROTEIN" :ID "UP:P15144" :NAME "Aminopeptidase N")
 ("APRIL" "ONT:GENE-PROTEIN" :ID "NCIT:C54325" :NAME "ANP32B")
 ("AQP3" "ONT:GENE-PROTEIN" :ID "HGNC:636" :NAME
  "aquaporin 3 (Gill blood group)")
 ("AQP9" "ONT:GENE-PROTEIN" :ID "HGNC:643" :NAME "aquaporin 9")
 ("ARHI" "ONT:GENE-PROTEIN" :ID "NCIT:C52535" :NAME "ARHI")
 ("ARID1A" "ONT:GENE-PROTEIN" :ID "HGNC:11110" :NAME
  "AT-rich interaction domain 1A")
 ("ASCL1" "ONT:GENE-PROTEIN" :ID "HGNC:738" :NAME
  "achaete-scute family bHLH transcription factor 1")
 ("ATF-2" "ONT:GENE-PROTEIN" :ID "HGNC:784" :NAME
  "activating transcription factor 2")
 ("ATF1" "ONT:GENE-PROTEIN" :ID "HGNC:783" :NAME
  "activating transcription factor 1")
 ("ATF3" "ONT:GENE-PROTEIN" :ID "HGNC:785" :NAME
  "activating transcription factor 3")
 ("ActA" "ONT:GENE-PROTEIN" :ID "XFAM:PF05058.10" :NAME "ActA")
 ("Angiogenin" "ONT:GENE-PROTEIN" :ID "HGNC:483" :NAME "angiogenin")
 ("Apc" "ONT:GENE-PROTEIN" :ID "HGNC:583" :NAME
  "APC, WNT signaling pathway regulator")
 ("BAF53a" "ONT:GENE-PROTEIN" :ID "HGNC:24124" :NAME "actin like 6A")
 ("BAT" "ONT:GENE-PROTEIN" :ID "UP:Q91X34" :NAME
  "Bile acid-CoA:amino acid N-acyltransferase")
 ("BCAA" "ONT:GENE-PROTEIN" :ID "NCIT:C51104" :NAME "BCAA")
 ("BDKRB1" "ONT:GENE-PROTEIN" :ID "HGNC:1029" :NAME "bradykinin receptor B1")
 ("BMP" "ONT:GENE-PROTEIN" :ID "NCIT:C17274" :NAME
  "bone morphogenetic protein")
 ("Blimp-1" "ONT:GENE-PROTEIN" :ID "NCIT:C34092" :NAME
  "PR-domain zinc finger protein-1")
 ("Blimp1" "ONT:GENE-PROTEIN" :ID "NCIT:C34092" :NAME
  "PR-domain zinc finger protein-1")
 ("Braf" "ONT:GENE-PROTEIN" :ID "HGNC:1097" :NAME
  "B-Raf proto-oncogene, serine/threonine kinase")
 ("C4ST-1" "ONT:GENE-PROTEIN" :ID "UP:Q7T3S3" :NAME
  "Carbohydrate sulfotransferase 11")
 ("C4ST-2" "ONT:GENE-PROTEIN" :ID "UP:Q9NRB3" :NAME
  "Carbohydrate sulfotransferase 12")
 ("C5a" "ONT:GENE-PROTEIN" :ID "NCIT:C20487" :NAME "C5a")
 ("C5aR" "ONT:GENE-PROTEIN" :ID "UP:P21730" :NAME
  "C5a anaphylatoxin chemotactic receptor 1")
 ("CAC" "ONT:GENE-PROTEIN" :ID "HGNC:1421" :NAME
  "solute carrier family 25 member 20")
 ("CAP1" "ONT:GENE-PROTEIN" :ID "HGNC:20040" :NAME
  "adenylate cyclase associated protein 1")
 ("CB2" "ONT:GENE-PROTEIN" :ID "UP:P34972" :NAME "Cannabinoid receptor 2")
 ("CCL-2" "ONT:GENE-PROTEIN" :ID "HGNC:10618" :NAME
  "C-C motif chemokine ligand 2")
 ("CCL19" "ONT:GENE-PROTEIN" :ID "HGNC:10617" :NAME
  "C-C motif chemokine ligand 19")
 ("CCNB1" "ONT:GENE-PROTEIN" :ID "HGNC:1579" :NAME "cyclin B1")
 ("CCR4" "ONT:GENE-PROTEIN" :ID "UP:Q8MJW8" :NAME
  "C-C chemokine receptor type 4")
 ("CD-45" "ONT:GENE-PROTEIN" :ID "XFAM:PF12567.6" :NAME "CD45")
 ("CD137" "ONT:GENE-PROTEIN" :ID "NCIT:C105113" :NAME
  "tumor necrosis factor receptor superfamily member 9")
 ("CD16" "ONT:GENE-PROTEIN" :ID "NCIT:C51393" :NAME "FCGR3A")
 ("CD38" "ONT:GENE-PROTEIN" :ID "HGNC:1667" :NAME "CD38 molecule")
 ("CD47" "ONT:GENE-PROTEIN" :ID "HGNC:1682" :NAME "CD47 molecule")
 ("CD59" "ONT:GENE-PROTEIN" :ID "HGNC:1689" :NAME "CD59 molecule")
 ("CD64" "ONT:GENE-PROTEIN" :ID "NCIT:C104238" :NAME
  "high affinity immunoglobulin gamma Fc receptor I")
 ("CD73" "ONT:GENE-PROTEIN" :ID "NCIT:C114925" :NAME "NT5E")
 ("CD80" "ONT:GENE-PROTEIN" :ID "HGNC:1700" :NAME "CD80 molecule")
 ("CDKN1A" "ONT:GENE-PROTEIN" :ID "HGNC:1784" :NAME
  "cyclin dependent kinase inhibitor 1A")
 ("CDKN2B" "ONT:GENE-PROTEIN" :ID "HGNC:1788" :NAME
  "cyclin dependent kinase inhibitor 2B")
 ("CEA" "ONT:GENE-PROTEIN" :ID "FA:01836" :NAME "CEA family")
 ("CEBP" "ONT:GENE-PROTEIN" :ID "NCIT:C45488" :NAME
  "CCAAT-enhancer binding protein alpha")
 ("CIP1" "ONT:GENE-PROTEIN" :ID "NCIT:C49460" :NAME "CDKN1A")
 ("CIZ1" "ONT:GENE-PROTEIN" :ID "HGNC:16744" :NAME
  "CDKN1A interacting zinc finger protein 1")
 ("CK19" "ONT:GENE-PROTEIN" :ID "NCIT:C16488" :NAME "cytokeratin-19")
 ("CNTF" "ONT:GENE-PROTEIN" :ID "HGNC:2169" :NAME
  "ciliary neurotrophic factor")
 ("COL1A1" "ONT:GENE-PROTEIN" :ID "HGNC:2197" :NAME
  "collagen type I alpha 1 chain")
 ("COL1A2" "ONT:GENE-PROTEIN" :ID "HGNC:2198" :NAME
  "collagen type I alpha 2 chain")
 ("COP1" "ONT:GENE-PROTEIN" :ID "FA:00728" :NAME "COP1 family")
 ("CPE" "ONT:GENE-PROTEIN" :ID "HGNC:2303" :NAME "carboxypeptidase E")
 ("CSF1R" "ONT:GENE-PROTEIN" :ID "NCIT:C51347" :NAME "CSF1R")
 ("CSN6" "ONT:GENE-PROTEIN" :ID "FA:02752" :NAME "CSN6 subfamily")
 ("CTNNBIP1" "ONT:GENE-PROTEIN" :ID "HGNC:16913" :NAME
  "catenin beta interacting protein 1")
 ("CXCL1" "ONT:GENE-PROTEIN" :ID "HGNC:4602" :NAME
  "C-X-C motif chemokine ligand 1")
 ("CXCR5" "ONT:GENE-PROTEIN" :ID "HGNC:1060" :NAME
  "C-X-C motif chemokine receptor 5")
 ("CXCR6" "ONT:GENE-PROTEIN" :ID "HGNC:16647" :NAME
  "C-X-C motif chemokine receptor 6")
 ("CYLD" "ONT:GENE-PROTEIN" :ID "HGNC:2584" :NAME
  "CYLD lysine 63 deubiquitinase")
 ("CYP11B1" "ONT:GENE-PROTEIN" :ID "HGNC:2591" :NAME
  "cytochrome P450 family 11 subfamily B member 1")
 ("CYP11B2" "ONT:GENE-PROTEIN" :ID "HGNC:2592" :NAME
  "cytochrome P450 family 11 subfamily B member 2")
 ("CagA" "ONT:GENE-PROTEIN" :ID "XFAM:PF03507.11" :NAME "CagA")
 ("Ccl20" "ONT:GENE-PROTEIN" :ID "HGNC:10619" :NAME
  "C-C motif chemokine ligand 20")
 ("Cdx1" "ONT:GENE-PROTEIN" :ID "NCIT:C107668" :NAME "CDX1")
 ("ChPF" "ONT:GENE-PROTEIN" :ID "HGNC:24291" :NAME
  "chondroitin polymerizing factor")
 ("ChoK" "ONT:GENE-PROTEIN" :ID "NCIT:C51051" :NAME "CHK")
 ("CiA" "ONT:GENE-PROTEIN" :ID "NCIT:C33996" :NAME
  "nuclear receptor coactivator-5")
 ("Cx30" "ONT:GENE-PROTEIN" :ID "HGNC:4288" :NAME
  "gap junction protein beta 6")
 ("Cyclin D1" "ONT:GENE-PROTEIN" :ID "HGNC:1582" :NAME "cyclin D1")
 ("CypD" "ONT:GENE-PROTEIN" :ID "NCIT:C118235" :NAME "PPIF")
 ("DAT" "ONT:GENE-PROTEIN" :ID "UP:Q01959" :NAME
  "Sodium-dependent dopamine transporter")
 ("DDC" "ONT:GENE-PROTEIN" :ID "HGNC:2719" :NAME "dopa decarboxylase")
 ("DICER1" "ONT:GENE-PROTEIN" :ID "HGNC:17098" :NAME
  "dicer 1, ribonuclease III")
 ("DNMT" "ONT:GENE-PROTEIN" :ID "NCIT:C16508" :NAME
  "DNA modification methylase")
 ("DPD" "ONT:GENE-PROTEIN" :ID "UP:Q12882" :NAME
  "Dihydropyrimidine dehydrogenase [NADP(+)]")
 ("DPYD" "ONT:GENE-PROTEIN" :ID "HGNC:3012" :NAME
  "dihydropyrimidine dehydrogenase")
 ("Dcstamp" "ONT:GENE-PROTEIN" :ID "UP:Q9H295" :NAME
  "Dendritic cell-specific transmembrane protein")
 ("Dct" "ONT:GENE-PROTEIN" :ID "HGNC:2709" :NAME "dopachrome tautomerase")
 ("Dectin-1" "ONT:GENE-PROTEIN" :ID "NCIT:C122763" :NAME
  "C-type lectin domain family 7 member A")
 ("Dexras1" "ONT:GENE-PROTEIN" :ID "NCIT:C29766" :NAME
  "activator of G-protein signaling 1 protein")
 ("Dkk1" "ONT:GENE-PROTEIN" :ID "UP:O94907" :NAME "Dickkopf-related protein 1")
 ("Dlx5" "ONT:GENE-PROTEIN" :ID "HGNC:2918" :NAME "distal-less homeobox 5")
 ("E2F2" "ONT:GENE-PROTEIN" :ID "HGNC:3114" :NAME "E2F transcription factor 2")
 ("E2F3" "ONT:GENE-PROTEIN" :ID "NCIT:C96005" :NAME "E2F3")
 ("E2F4" "ONT:GENE-PROTEIN" :ID "HGNC:3118" :NAME "E2F transcription factor 4")
 ("E2F5" "ONT:GENE-PROTEIN" :ID "HGNC:3119" :NAME "E2F transcription factor 5")
 ("E2F6" "ONT:GENE-PROTEIN" :ID "HGNC:3120" :NAME "E2F transcription factor 6")
 ("ECD" "ONT:GENE-PROTEIN" :ID "HGNC:17029" :NAME
  "ecdysoneless cell cycle regulator")
 ("EDL" "ONT:GENE-PROTEIN" :ID "NCIT:C113272" :NAME "endothelial lipase")
 ("EPS15" "ONT:GENE-PROTEIN" :ID "HGNC:3419" :NAME
  "epidermal growth factor receptor pathway substrate 15")
 ("ERCC1" "ONT:GENE-PROTEIN" :ID "HGNC:3433" :NAME
  "ERCC excision repair 1, endonuclease non-catalytic subunit")
 ("ERbeta" "ONT:GENE-PROTEIN" :ID "UP:Q92731" :NAME "Estrogen receptor beta")
 ("ET1" "ONT:GENE-PROTEIN" :ID "UP:P22387" :NAME "Endothelin-1")
 ("ETB" "ONT:GENE-PROTEIN" :ID "UP:P24530" :NAME "Endothelin B receptor")
 ("ETV4" "ONT:GENE-PROTEIN" :ID "HGNC:3493" :NAME "ETS variant 4")
 ("Elk-3" "ONT:GENE-PROTEIN" :ID "HGNC:3325" :NAME
  "ELK3, ETS transcription factor")
 ("Elk3" "ONT:GENE-PROTEIN" :ID "HGNC:3325" :NAME
  "ELK3, ETS transcription factor")
 ("FOXC2" "ONT:GENE-PROTEIN" :ID "HGNC:3801" :NAME "forkhead box C2")
 ("FOXP1" "ONT:GENE-PROTEIN" :ID "HGNC:3823" :NAME "forkhead box P1")
 ("FRS2alpha" "ONT:GENE-PROTEIN" :ID "NCIT:C52381" :NAME "FRS2")
 ("FZD7" "ONT:GENE-PROTEIN" :ID "HGNC:4045" :NAME "frizzled class receptor 7")
 ("Fra1" "ONT:GENE-PROTEIN" :ID "UP:P15407" :NAME "Fos-related antigen 1")
 ("GATA2" "ONT:GENE-PROTEIN" :ID "HGNC:4171" :NAME "GATA binding protein 2")
 ("GBP2" "ONT:GENE-PROTEIN" :ID "HGNC:4183" :NAME
  "guanylate binding protein 2")
 ("GDI" "ONT:GENE-PROTEIN" :ID "GO:0005092" :NAME
  "GDP-dissociation inhibitor activity")
 ("GHRs" "ONT:GENE-PROTEIN" :ID "HGNC:4263" :NAME "growth hormone receptor")
 ("GIP" "ONT:GENE-PROTEIN" :ID "HGNC:4270" :NAME
  "gastric inhibitory polypeptide")
 ("GLI" "ONT:GENE-PROTEIN" :ID "UP:P55878" :NAME "Zinc finger protein GLI1")
 ("GLI-2" "ONT:GENE-PROTEIN" :ID "HGNC:4318" :NAME "GLI family zinc finger 2")
 ("GLI2" "ONT:GENE-PROTEIN" :ID "HGNC:4318" :NAME "GLI family zinc finger 2")
 ("GLUT4" "ONT:GENE-PROTEIN" :ID "NCIT:C89050" :NAME "SLC2A4")
 ("GP88" "ONT:GENE-PROTEIN" :ID "NCIT:C101402" :NAME "GRN")
 ("GPER" "ONT:GENE-PROTEIN" :ID "NCIT:C106199" :NAME "GPER")
 ("Gcn5" "ONT:GENE-PROTEIN" :ID "FA:00068" :NAME "GCN5 subfamily")
 ("Gli" "ONT:GENE-PROTEIN" :ID "UP:P55878" :NAME "Zinc finger protein GLI1")
 ("GluA2" "ONT:GENE-PROTEIN" :ID "HGNC:4572" :NAME
  "glutamate ionotropic receptor AMPA type subunit 2")
 ("GnRH" "ONT:GENE-PROTEIN" :ID "FA:01630" :NAME "GnRH family")
 ("GnRHR" "ONT:GENE-PROTEIN" :ID "UP:P30968" :NAME
  "Gonadotropin-releasing hormone receptor")
 ("HAT" "ONT:GENE-PROTEIN" :ID "XFAM:PF02184.14" :NAME "HAT")
 ("HDL" "ONT:GENE-PROTEIN" :ID "NCIT:C113166" :NAME "HSD11B1")
 ("HES6" "ONT:GENE-PROTEIN" :ID "NCIT:C104534" :NAME "HES6")
 ("DISC" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0031264" :NAME
  "death-inducing signaling complex")
 ("Dia" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C9476" :NAME
  "desmoplastic infantile astrocytoma")
 ("EAE" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0001066" :NAME
  "experimental autoimmune encephalomyelitis")
 ("HCMV" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0001062" :NAME
  "cytomegalovirus infection")
 ("CTD" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF12815.5" :NAME "CTD")
 ("CtD" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF12815.5" :NAME "CTD")
 ("DEP" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00610.19" :NAME "DEP")
 ("EKR" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF10371.7" :NAME "EKR")
 ("C16" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Cysteine")
 ("D12" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Aspartic acid")
 ("H19" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Histidine")
 ("ALN" "ONT:MOLECULE" :ID "CHEBI:33629" :NAME "aluminium(0)")
 ("AgNP" "ONT:MOLECULE" :ID "CHEBI:50826" :NAME "silver nanoparticle")
 ("CdCl2" "ONT:MOLECULE" :ID "CHEBI:35456" :NAME "cadmium dichloride")
 ("Dpp" "ONT:MOLECULE" :ID "CHEBI:60069" :NAME "dipropyl phthalate")
 ("FO" "ONT:MOLECULE" :ID "CHEBI:30244" :NAME "hypofluorite")
 ("GdCl3" "ONT:MOLECULE" :ID "CHEBI:37288" :NAME "gadolinium trichloride")
 ("DBA" "ONT:NONHUMAN-ANIMAL" :ID "NCIT:C37402" :NAME "DBA mouse")
 ("ABT-737" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C501332" :NAME "ABT-737")
 ("ACTH" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C212" :NAME
  "therapeutic corticotropin")
 ("AG490" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C095512" :NAME
  "alpha-cyano-(3,4-dihydroxy)-N-benzylcinnamide")
 ("AHP" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C012393" :NAME "oxaceprol")
 ("AM251" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:90724" :NAME "AM-251")
 ("AS-604850" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C505145" :NAME
  "5-(2,2-difluorobenzo(1,3)dioxol-5-ylmethylene)thiazolidine-2,4-dione")
 ("AS-703026" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C84864" :NAME
  "MEK inhibitor AS703026")
 ("AT-101" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C78348" :NAME
  "R-gossypol acetic acid")
 ("AZD-6244" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C66939" :NAME "AZD6244")
 ("AZD5438" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C521840" :NAME "AZD5438")
 ("Amitriptyline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C28819" :NAME
  "amitriptyline")
 ("BAY11-7082" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C434003" :NAME
  "3-(4-methylphenylsulfonyl)-2-propenenitrile")
 ("BCG" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C298" :NAME "BCG vaccine")
 ("BIBR1532" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C458523" :NAME
  "BIBR 1532")
 ("BIIB021" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:90687" :NAME "BIIB021")
 ("BIRB796" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C452139" :NAME "BIRB 796")
 ("BMS345541" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C471109" :NAME
  "4(2'-aminoethyl)amino-1,8-dimethylimidazo(1,2-a)quinoxaline")
 ("BODIPY" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C095489" :NAME
  "4,4-difluoro-4-bora-3a,4a-diaza-s-indacene")
 ("BPDE" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C196" :NAME
  "benzo a pyrene-7 8-diol 9 10-epoxide")
 ("Binimetinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C84865" :NAME
  "MEK inhibitor ARRY-438162")
 ("Bufalin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C022777" :NAME "bufalin")
 ("Buparlisib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C90565" :NAME
  "PI3K inhibitor BKM120")
 ("CBD" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C118452" :NAME "cannabidiol")
 ("CCl" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:3478" :NAME "cefaclor")
 ("CDPPB" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C494553" :NAME
  "3-cyano-N-(1,3-diphenyl-1H-pyrazol-5-yl)benzamide")
 ("CFX" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:209807" :NAME "cefoxitin")
 ("Cromolyn" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C61691" :NAME "cromolyn")
 ("Cyclopamine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C000541" :NAME
  "cyclopamine")
 ("DDAs" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C429" :NAME
  "dideoxyadenosine")
 ("DETS" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C068718" :NAME
  "17-(N,N-diisopropylcarbamoyl)estra-1,3,5(10)-triene-3-sulfonic acid")
 ("DHEA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C2265" :NAME
  "therapeutic dehydroepiandrosterone")
 ("DHPG" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C517" :NAME "ganciclovir")
 ("DNR" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C62091" :NAME "daunorubicin")
 ("Diosmetin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C039602" :NAME
  "diosmetin")
 ("EIPA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C039614" :NAME
  "ethylisopropylamiloride")
 ("Elesclomol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C75291" :NAME
  "elesclomol")
 ("Emodin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C466" :NAME "emodin")
 ("FH535" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C575430" :NAME "FH535")
 ("FK866" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C67043" :NAME "APO866")
 ("FTY-720" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C72782" :NAME
  "fingolimod hydrochloride")
 ("Farrerol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C015881" :NAME "farrerol")
 ("Fisetin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C017875" :NAME "fisetin")
 ("GHRP-2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C091874" :NAME
  "growth hormone-releasing peptide-2")
 ("GSK2334470" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C555257" :NAME
  "GSK 2334470")
 ("GW9662" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C457499" :NAME
  "2-chloro-5-nitrobenzanilide")
 ("Go6983" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C465664" :NAME
  "2-(1-(3-dimethylaminopropyl)-5-methoxyindol-3-yl)-3-(1H-indol-3-yl)maleimide")
 ("HDPC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C039128" :NAME "miltefosine")
 ("BC" "ONT:PROCEDURE" :ID "NCIT:C92225" :NAME
  "best case imputation technique")
 ("CID" "ONT:PROCEDURE" :ID "NCIT:C48061" :NAME
  "collision-induced dissociation")
 ("AAL" "ONT:PROTEIN" :ID "UP:Q6WY08" :NAME "Anti-tumor lectin")
 ("ADRs" "ONT:PROTEIN" :ID "UP:Q09851" :NAME
  "NADPH-dependent 1-acyldihydroxyacetone phosphate reductase")
 ("ATI" "ONT:PROTEIN" :ID "UP:P21114" :NAME
  "Putative A-type inclusion protein")
 ("BCAT" "ONT:PROTEIN" :ID "UP:O14370" :NAME
  "Branched-chain-amino-acid aminotransferase, mitochondrial")
 ("BLA" "ONT:PROTEIN" :ID "UP:P06278" :NAME "Alpha-amylase")
 ("Bsk" "ONT:PROTEIN" :ID "UP:Q922K9" :NAME "Tyrosine-protein kinase FRK")
 ("CK2alpha" "ONT:PROTEIN" :ID "UP:P28523" :NAME
  "Casein kinase II subunit alpha")
 ("CPSP" "ONT:PROTEIN" :ID "UP:P77885" :NAME
  "Carbamoyl-phosphate synthase pyrimidine-specific small chain")
 ("CTL" "ONT:PROTEIN" :ID "UP:Q6T7B7" :NAME "C-type lectin 1")
 ("Coi1" "ONT:PROTEIN" :ID "UP:O04197" :NAME
  "Coronatine-insensitive protein 1")
 ("DHHC20" "ONT:PROTEIN" :ID "UP:Q0VC89" :NAME
  "Probable palmitoyltransferase ZDHHC20")
 ("DSP4" "ONT:PROTEIN" :ID "UP:Q9BV47" :NAME
  "Dual specificity protein phosphatase 26")
 ("EBNA2" "ONT:PROTEIN" :ID "UP:Q69022" :NAME "Epstein-Barr nuclear antigen 2")
 ("EBNA3A" "ONT:PROTEIN" :ID "UP:Q69138" :NAME
  "Epstein-Barr nuclear antigen 3")
 ("FcgammaRIIB" "ONT:PROTEIN" :ID "NCIT:C38555" :NAME "IgG-Fc-receptor-IIB")
 ("Frizzled5" "ONT:PROTEIN" :ID "UP:Q13467" :NAME "Frizzled-5")
 ("Ftase" "ONT:PROTEIN" :ID "GO:0004660" :NAME
  "protein farnesyltransferase activity")
 ("HBx" "ONT:PROTEIN" :ID "UP:P69714" :NAME "Protein X")
 ("Galpha" "ONT:PROTEIN-FAMILY" :ID "FA:01401" :NAME "G-alpha family")


 ("EIAV" "ONT:VIRUS" :ID "NCIT:C14205" :NAME "equine infectious anemia virus")
 ("OIS" "ONT:BIOLOGICAL-PROCESS" :ID "GO:0090402" :NAME
  "oncogene-induced cell senescence")
 ("PPS" "ONT:BODY-PART" :ID "EFO:0003397" :NAME "hypopharyngeal sense organ")
 ("HSC" "ONT:CELL" :ID "BTO:0000725" :NAME "hematopoietic stem cell")
 ("LC" "ONT:CELL" :ID "CO:0000453" :NAME "Langerhans cell")
 ("LEC" "ONT:CELL" :ID "CO:0002138" :NAME
  "endothelial cell of lymphatic vessel")
 ("LECs" "ONT:CELL" :ID "CO:0002138" :NAME
  "endothelial cell of lymphatic vessel")
 ("PBMC" "ONT:CELL" :ID "BTO:0001025" :NAME
  "peripheral blood mononuclear cell")
 ("PMN" "ONT:CELL" :ID "BTO:0003473" :NAME "polymorphonuclear neutrophil")
 ("HH" "ONT:CELL-LINE" :ID "EFO:0002194" :NAME "HH")
 ("HP" "ONT:CELL-LINE" :ID "CVCL:3715" :NAME "HP")
 ("HaCaT" "ONT:CELL-LINE" :ID "EFO:0002056" :NAME "HaCaT")
 ("HepG2" "ONT:CELL-LINE" :ID "CVCL:0027" :NAME "Hep-G2")
 ("ICG" "ONT:CELL-LINE" :ID "CVCL:1G91" :NAME "ICG")
 ("JA" "ONT:CELL-LINE" :ID "CVCL:W874" :NAME "JA")
 ("JAR" "ONT:CELL-LINE" :ID "EFO:0002211" :NAME "JAR")
 ("JC" "ONT:CELL-LINE" :ID "CVCL:3530" :NAME "JC")
 ("JL" "ONT:CELL-LINE" :ID "CVCL:F563" :NAME "JL")
 ("KC" "ONT:CELL-LINE" :ID "CVCL:Z833" :NAME "Kc")
 ("KF" "ONT:CELL-LINE" :ID "CVCL:5M20" :NAME "KF")
 ("KU812" "ONT:CELL-LINE" :ID "CVCL:0379" :NAME "Ku812")
 ("Kasumi-1" "ONT:CELL-LINE" :ID "CVCL:0589" :NAME "Kasumi-1")
 ("Kyse30" "ONT:CELL-LINE" :ID "CVCL:1351" :NAME "KYSE-30")
 ("LN" "ONT:CELL-LINE" :ID "CVCL:F127" :NAME "GM02063")
 ("LU1205" "ONT:CELL-LINE" :ID "CVCL:5239" :NAME "1205Lu")
 ("MCF10A" "ONT:CELL-LINE" :ID "CVCL:0598" :NAME "MCF-10A")
 ("MD-2" "ONT:CELL-LINE" :ID "CVCL:9220" :NAME "MD2")
 ("MES23.5" "ONT:CELL-LINE" :ID "CVCL:J351" :NAME "MES23.5")
 ("MF" "ONT:CELL-LINE" :ID "CVCL:Y126" :NAME "MF")
 ("MJ" "ONT:CELL-LINE" :ID "CVCL:1414" :NAME "MJ")
 ("MKN-45" "ONT:CELL-LINE" :ID "CVCL:0434" :NAME "MKN45")
 ("MLP1" "ONT:CELL-LINE" :ID "CVCL:W533" :NAME "MLP-1")
 ("MPM-2" "ONT:CELL-LINE" :ID "CVCL:D528" :NAME "MPM2")
 ("MST3" "ONT:CELL-LINE" :ID "CVCL:0J36" :NAME "MST-3")
 ("Mit" "ONT:CELL-LINE" :ID "CVCL:D526" :NAME "MIT")
 ("Mv1Lu" "ONT:CELL-LINE" :ID "CVCL:0593" :NAME "Mv1Lu")
 ("N2a" "ONT:CELL-LINE" :ID "CVCL:0470" :NAME "Neuro-2a")
 ("NB69" "ONT:CELL-LINE" :ID "CVCL:1448" :NAME "NB69")
 ("NE" "ONT:CELL-LINE" :ID "CVCL:3554" :NAME "NE")
 ("NIH/3T3" "ONT:CELL-LINE" :ID "EFO:0001222" :NAME "NIH3T3")
 ("NK-92" "ONT:CELL-LINE" :ID "CVCL:2142" :NAME "NK-92")
 ("ONS-76" "ONT:CELL-LINE" :ID "CVCL:1624" :NAME "ONS-76")
 ("ORs" "ONT:CELL-LINE" :ID "CVCL:U565" :NAME "ORS")
 ("PC9/R" "ONT:CELL-LINE" :ID "CVCL:S750" :NAME "PC-9/R")
 ("PDH" "ONT:CELL-LINE" :ID "CVCL:1G98" :NAME "PDH")
 ("PGF" "ONT:CELL-LINE" :ID "CVCL:E806" :NAME "PGF")
 ("RBE" "ONT:CELL-LINE" :ID "CVCL:4896" :NAME "RBE")
 ("RBL-2H3" "ONT:CELL-LINE" :ID "CVCL:0591" :NAME "RBL-2H3")
 ("RGS" "ONT:CELL-LINE" :ID "CVCL:1G60" :NAME "RGS")
 ("RT112" "ONT:CELL-LINE" :ID "CVCL:1670" :NAME "RT-112")
 ("IC" "ONT:CELL-PART" :ID "UP:SL-0098" :NAME
  "Endoplasmic reticulum-Golgi intermediate compartment")
 ("MVBs" "ONT:CELL-PART" :ID "GO:0005771" :NAME "multivesicular body")
 ("MVE" "ONT:CELL-PART" :ID "GO:0005771" :NAME "multivesicular body")
 ("P-bodies" "ONT:CELL-PART" :ID "UP:SL-0230" :NAME "P-body")
 ("Hemin" "ONT:CHEMICAL" :ID "CHEBI:50385" :NAME "hemin")
 ("IA" "ONT:CHEMICAL" :ID "CHEBI:74062" :NAME "Ile-Ala")
 ("ICA" "ONT:CHEMICAL" :ID "CHEBI:29202" :NAME "isocyanic acid")
 ("ICa" "ONT:CHEMICAL" :ID "CHEBI:29202" :NAME "isocyanic acid")
 ("IG" "ONT:CHEMICAL" :ID "CHEBI:74066" :NAME "Ile-Gly")
 ("K252a" "ONT:CHEMICAL" :ID "CHEBI:43616" :NAME "K-252a")
 ("L-glutamate" "ONT:CHEMICAL" :ID "CHEBI:29988" :NAME "L-glutamate(2-)")
 ("LGG" "ONT:CHEMICAL" :ID "CHEBI:74538" :NAME "Leu-Gly-Gly")
 ("LLL" "ONT:CHEMICAL" :ID "CHEBI:74541" :NAME "Leu-Leu-Leu")
 ("LXA4" "ONT:CHEMICAL" :ID "CHEBI:6498" :NAME "lipoxin A4")
 ("MTT" "ONT:CHEMICAL" :ID "CHEBI:53233" :NAME
  "3-(4,5-dimethylthiazol-2-yl)-2,5-diphenyltetrazolium bromide")
 ("Oleamide" "ONT:CHEMICAL" :ID "CHEBI:116314" :NAME "oleamide")
 ("PDB" "ONT:CHEMICAL" :ID "NCIT:C44297" :NAME "1 4-dichlorobenzene")
 ("PFOA" "ONT:CHEMICAL" :ID "CHEBI:35549" :NAME "perfluorooctanoic acid")
 ("PGF2alpha" "ONT:CHEMICAL" :ID "CHEBI:15553" :NAME "prostaglandin F2alpha")
 ("PMP" "ONT:CHEMICAL" :ID "CHEBI:90766" :NAME
  "alpha-D-Manp6P-(1->3)-alpha-D-Manp-(1->3)-alpha-D-Manp-(1->3)-alpha-D-Manp-(1->2)-D-Manp")
 ("Pb" "ONT:CHEMICAL" :ID "NCIT:C44396" :NAME "lead metal")
 ("HLJ1" "ONT:GENE" :ID "NCIT:C62455" :NAME "DNAJB4")
 ("HNE" "ONT:GENE" :ID "NCIT:C104196" :NAME "ELANE")
 ("HSP90beta" "ONT:GENE" :ID "NCIT:C97590" :NAME "HSP90AB1")
 ("HSPCs" "ONT:GENE" :ID "HGNC:9536" :NAME "proteasome subunit alpha 7")
 ("ID1" "ONT:GENE" :ID "HGNC:5360" :NAME
  "inhibitor of DNA binding 1, HLH protein")
 ("IDE" "ONT:GENE" :ID "HGNC:5381" :NAME "insulin degrading enzyme")
 ("IK" "ONT:GENE" :ID "HGNC:5958" :NAME
  "IK cytokine, down-regulator of HLA II")
 ("IL-32alpha" "ONT:GENE" :ID "NCIT:C127925" :NAME "IL32")
 ("ISCs" "ONT:GENE" :ID "HGNC:15910" :NAME "NFS1, cysteine desulfurase")
 ("Iba-1" "ONT:GENE" :ID "HGNC:352" :NAME "allograft inflammatory factor 1")
 ("Ibsp" "ONT:GENE" :ID "HGNC:5341" :NAME "integrin binding sialoprotein")
 ("Id4" "ONT:GENE" :ID "HGNC:5363" :NAME
  "inhibitor of DNA binding 4, HLH protein")
 ("JAZ" "ONT:GENE" :ID "HGNC:16403" :NAME "zinc finger protein 346")
 ("JK" "ONT:GENE" :ID "HGNC:10918" :NAME
  "solute carrier family 14 member 1 (Kidd blood group)")
 ("JMJD3" "ONT:GENE" :ID "NCIT:C80018" :NAME "JMJD3")
 ("JWA" "ONT:GENE" :ID "HGNC:16937" :NAME
  "ADP ribosylation factor like GTPase 6 interacting protein 5")
 ("KDM2A" "ONT:GENE" :ID "HGNC:13606" :NAME "lysine demethylase 2A")
 ("KIAA1522" "ONT:GENE" :ID "HGNC:29301" :NAME "KIAA1522")
 ("KIF14" "ONT:GENE" :ID "HGNC:19181" :NAME "kinesin family member 14")
 ("KIF26B" "ONT:GENE" :ID "HGNC:25484" :NAME "kinesin family member 26B")
 ("KLF8" "ONT:GENE" :ID "HGNC:6351" :NAME "Kruppel like factor 8")
 ("KLK6" "ONT:GENE" :ID "HGNC:6367" :NAME "kallikrein related peptidase 6")
 ("Kif13b" "ONT:GENE" :ID "HGNC:14405" :NAME "kinesin family member 13B")
 ("Kv1.3" "ONT:GENE" :ID "HGNC:6221" :NAME
  "potassium voltage-gated channel subfamily A member 3")
 ("Kv4.2" "ONT:GENE" :ID "HGNC:6238" :NAME
  "potassium voltage-gated channel subfamily D member 2")
 ("LMP2" "ONT:GENE" :ID "NCIT:C73447" :NAME "PSMB9")
 ("LMP7" "ONT:GENE" :ID "NCIT:C112076" :NAME "PSMB8")
 ("LPC" "ONT:GENE" :ID "NCIT:C97657" :NAME "PCSK7")
 ("LPXN" "ONT:GENE" :ID "HGNC:14061" :NAME "leupaxin")
 ("Lhcgr" "ONT:GENE" :ID "HGNC:6585" :NAME
  "luteinizing hormone/choriogonadotropin receptor")
 ("Lim1" "ONT:GENE" :ID "NCIT:C53010" :NAME "LHX1")
 ("Lypd6" "ONT:GENE" :ID "HGNC:28751" :NAME "LY6/PLAUR domain containing 6")
 ("MARVELD1" "ONT:GENE" :ID "HGNC:28674" :NAME "MARVEL domain containing 1")
 ("MAZ" "ONT:GENE" :ID "HGNC:6914" :NAME "MYC associated zinc finger protein")
 ("MDMs" "ONT:GENE" :ID "HGNC:18746" :NAME
  "secreted LY6/PLAUR domain containing 1")
 ("MIR21" "ONT:GENE" :ID NIL :NAME NIL)
 ("MN" "ONT:GENE" :ID "NCIT:C52348" :NAME "GYPA")
 ("MVD" "ONT:GENE" :ID "HGNC:7529" :NAME
  "mevalonate diphosphate decarboxylase")
 ("Malat1" "ONT:GENE" :ID "NCIT:C92697" :NAME "MALAT1")
 ("MiR-200c" "ONT:GENE" :ID "NCIT:C82157" :NAME "MIR200C")
 ("Mincle" "ONT:GENE" :ID "HGNC:14555" :NAME
  "C-type lectin domain family 4 member E")
 ("Mpz" "ONT:GENE" :ID "HGNC:7225" :NAME "myelin protein zero")
 ("N-cad" "ONT:GENE" :ID "NCIT:C77158" :NAME "CDH2")
 ("NDP52" "ONT:GENE" :ID "HGNC:29912" :NAME
  "calcium binding and coiled-coil domain 2")
 ("NES1" "ONT:GENE" :ID "NCIT:C97207" :NAME "KLK10")
 ("NKG2A" "ONT:GENE" :ID "NCIT:C104363" :NAME "KLRC1")
 ("NLRC4" "ONT:GENE" :ID "HGNC:16412" :NAME
  "NLR family CARD domain containing 4")
 ("NNMT" "ONT:GENE" :ID "HGNC:7861" :NAME "nicotinamide N-methyltransferase")
 ("NOK" "ONT:GENE" :ID "HGNC:18889" :NAME "serine/threonine/tyrosine kinase 1")
 ("NRF" "ONT:GENE" :ID "HGNC:19374" :NAME "NFKB repressing factor")
 ("NRP2" "ONT:GENE" :ID "HGNC:8005" :NAME "neuropilin 2")
 ("NTS" "ONT:GENE" :ID "HGNC:8038" :NAME "neurotensin")
 ("Ndrg4" "ONT:GENE" :ID "HGNC:14466" :NAME "NDRG family member 4")
 ("Nit1" "ONT:GENE" :ID "HGNC:7828" :NAME "nitrilase 1")
 ("Nox-4" "ONT:GENE" :ID "HGNC:7891" :NAME "NADPH oxidase 4")
 ("OAS1" "ONT:GENE" :ID "HGNC:8086" :NAME "2'-5'-oligoadenylate synthetase 1")
 ("OR1A2" "ONT:GENE" :ID "HGNC:8180" :NAME
  "olfactory receptor family 1 subfamily A member 2")
 ("OR2AT4" "ONT:GENE" :ID "HGNC:19620" :NAME
  "olfactory receptor family 2 subfamily AT member 4")
 ("OSX" "ONT:GENE" :ID "NCIT:C75731" :NAME "MID1")
 ("OT" "ONT:GENE" :ID "NCIT:C52423" :NAME "OXT")
 ("Osx" "ONT:GENE" :ID "NCIT:C75731" :NAME "MID1")
 ("Otx2" "ONT:GENE" :ID "HGNC:8522" :NAME "orthodenticle homeobox 2")
 ("P450scc" "ONT:GENE" :ID "NCIT:C52318" :NAME "CYP11A1")
 ("PAQR3" "ONT:GENE" :ID "HGNC:30130" :NAME
  "progestin and adipoQ receptor family member 3")
 ("PARK2" "ONT:GENE" :ID "HGNC:8607" :NAME
  "parkin RBR E3 ubiquitin protein ligase")
 ("PAX6" "ONT:GENE" :ID "HGNC:8620" :NAME "paired box 6")
 ("PBS" "ONT:GENE" :ID "NCIT:C122728" :NAME "TSPO")
 ("PCL" "ONT:GENE" :ID "NCIT:C51547" :NAME "FLT4")
 ("PDE5A" "ONT:GENE" :ID "HGNC:8784" :NAME "phosphodiesterase 5A")
 ("PDG" "ONT:GENE" :ID "NCIT:C99475" :NAME "PHGDH")
 ("PDK3" "ONT:GENE" :ID "HGNC:8811" :NAME "pyruvate dehydrogenase kinase 3")
 ("PFD" "ONT:GENE" :ID "NCIT:C118198" :NAME "CFP")
 ("PINK1" "ONT:GENE" :ID "HGNC:14581" :NAME "PTEN induced putative kinase 1")
 ("PLIN" "ONT:GENE" :ID "HGNC:9076" :NAME "perilipin 1")
 ("PRAT" "ONT:GENE" :ID "HGNC:9238" :NAME
  "phosphoribosyl pyrophosphate amidotransferase")
 ("PRPF19" "ONT:GENE" :ID "HGNC:17896" :NAME "pre-mRNA processing factor 19")
 ("PSAT1" "ONT:GENE" :ID "HGNC:19129" :NAME "phosphoserine aminotransferase 1")
 ("PSGR" "ONT:GENE" :ID "HGNC:15195" :NAME
  "olfactory receptor family 51 subfamily E member 2")
 ("PTHLH" "ONT:GENE" :ID "HGNC:9607" :NAME "parathyroid hormone like hormone")
 ("PTPsigma" "ONT:GENE" :ID "NCIT:C124924" :NAME "PTPRS")
 ("Pde" "ONT:GENE" :ID "HGNC:877" :NAME
  "aldehyde dehydrogenase 7 family member A1")
 ("Per2" "ONT:GENE" :ID "HGNC:8846" :NAME "period circadian clock 2")
 ("Perp" "ONT:GENE" :ID "HGNC:17637" :NAME "PERP, TP53 apoptosis effector")
 ("Prdm14" "ONT:GENE" :ID "HGNC:14001" :NAME "PR/SET domain 14")
 ("RASSF1A" "ONT:GENE" :ID "NCIT:C60666" :NAME "RASSF1")
 ("RBM10" "ONT:GENE" :ID "HGNC:9896" :NAME "RNA binding motif protein 10")
 ("RBQ3" "ONT:GENE" :ID "HGNC:9888" :NAME
  "RB binding protein 5, histone lysine methyltransferase complex subunit")
 ("RGMb" "ONT:GENE" :ID "HGNC:26896" :NAME
  "repulsive guidance molecule family member b")
 ("RHAMM" "ONT:GENE" :ID "NCIT:C51553" :NAME "HMMR")
 ("RHBDL4" "ONT:GENE" :ID "HGNC:16502" :NAME "rhomboid like 3")
 ("RIPK4" "ONT:GENE" :ID "HGNC:496" :NAME
  "receptor interacting serine/threonine kinase 4")
 ("RNF126" "ONT:GENE" :ID "HGNC:21151" :NAME "ring finger protein 126")
 ("RNF26" "ONT:GENE" :ID "HGNC:14646" :NAME "ring finger protein 26")
 ("RNF41" "ONT:GENE" :ID "HGNC:18401" :NAME "ring finger protein 41")
 ("RP" "ONT:GENE" :ID "HGNC:7414" :NAME
  "mitochondrially encoded ATP synthase 6")
 ("RPEL1" "ONT:GENE" :ID "HGNC:45241" :NAME
  "ribulose-5-phosphate-3-epimerase like 1")
 ("RPL11" "ONT:GENE" :ID "HGNC:10301" :NAME "ribosomal protein L11")
 ("RPL23" "ONT:GENE" :ID "HGNC:10316" :NAME "ribosomal protein L23")
 ("RPL4" "ONT:GENE" :ID "HGNC:10353" :NAME "ribosomal protein L4")
 ("RUNX3" "ONT:GENE" :ID "HGNC:10473" :NAME
  "runt related transcription factor 3")
 ("RUSC2" "ONT:GENE" :ID "HGNC:23625" :NAME "RUN and SH3 domain containing 2")
 ("RXFP1" "ONT:GENE" :ID "HGNC:19718" :NAME
  "relaxin/insulin like family peptide receptor 1")
 ("RXFP3" "ONT:GENE" :ID "HGNC:24883" :NAME
  "relaxin/insulin like family peptide receptor 3")
 ("HIF-1a" "ONT:GENE-PROTEIN" :ID "NCIT:C52040" :NAME "HIF1A")
 ("HK-2" "ONT:GENE-PROTEIN" :ID "HGNC:4923" :NAME "hexokinase 2")
 ("HK2" "ONT:GENE-PROTEIN" :ID "HGNC:4923" :NAME "hexokinase 2")
 ("HLA" "ONT:GENE-PROTEIN" :ID "NCIT:C20705" :NAME "MHC class-II protein")
 ("HOXD3" "ONT:GENE-PROTEIN" :ID "HGNC:5137" :NAME "homeobox D3")
 ("HPR" "ONT:GENE-PROTEIN" :ID "HGNC:5156" :NAME "haptoglobin-related protein")
 ("HPSE" "ONT:GENE-PROTEIN" :ID "HGNC:5164" :NAME "heparanase")
 ("HSF" "ONT:GENE-PROTEIN" :ID "UP:P22813" :NAME "Heat shock factor protein")
 ("HSL" "ONT:GENE-PROTEIN" :ID "UP:Q05469" :NAME "Hormone-sensitive lipase")
 ("Homer1" "ONT:GENE-PROTEIN" :ID "UP:Q2KJ56" :NAME "Homer protein homolog 1")
 ("Hur" "ONT:GENE-PROTEIN" :ID "NCIT:C107476" :NAME "ELAVL1")
 ("IDH1" "ONT:GENE-PROTEIN" :ID "HGNC:5382" :NAME
  "isocitrate dehydrogenase (NADP(+)) 1, cytosolic")
 ("IDH2" "ONT:GENE-PROTEIN" :ID "HGNC:5383" :NAME
  "isocitrate dehydrogenase (NADP(+)) 2, mitochondrial")
 ("IDO" "ONT:GENE-PROTEIN" :ID "UP:P47125" :NAME "Indoleamine 2,3-dioxygenase")
 ("IKBKE" "ONT:GENE-PROTEIN" :ID "HGNC:14552" :NAME
  "inhibitor of kappa light polypeptide gene enhancer in B-cells, kinase epsilon")
 ("IL-27R" "ONT:GENE-PROTEIN" :ID "GO:0045509" :NAME
  "interleukin-27 receptor activity")
 ("IL1R1" "ONT:GENE-PROTEIN" :ID "HGNC:5993" :NAME
  "interleukin 1 receptor type 1")
 ("IL1beta" "ONT:GENE-PROTEIN" :ID "NCIT:C20522" :NAME "interleukin-1-beta")
 ("IL7R" "ONT:GENE-PROTEIN" :ID "HGNC:6024" :NAME "interleukin 7 receptor")
 ("IMP3" "ONT:GENE-PROTEIN" :ID "HGNC:14497" :NAME
  "IMP3, U3 small nucleolar ribonucleoprotein")
 ("IRAK4" "ONT:GENE-PROTEIN" :ID "HGNC:17967" :NAME
  "interleukin 1 receptor associated kinase 4")
 ("IRF-3" "ONT:GENE-PROTEIN" :ID "UP:Q4JF28" :NAME
  "Interferon regulatory factor 3")
 ("IRF1" "ONT:GENE-PROTEIN" :ID "NCIT:C52129" :NAME "IRF1")
 ("IRF2" "ONT:GENE-PROTEIN" :ID "NCIT:C52130" :NAME "IRF2")
 ("IRF3" "ONT:GENE-PROTEIN" :ID "HGNC:6118" :NAME
  "interferon regulatory factor 3")
 ("IRF4" "ONT:GENE-PROTEIN" :ID "HGNC:6119" :NAME
  "interferon regulatory factor 4")
 ("IRF6" "ONT:GENE-PROTEIN" :ID "HGNC:6121" :NAME
  "interferon regulatory factor 6")
 ("IRF7" "ONT:GENE-PROTEIN" :ID "HGNC:6122" :NAME
  "interferon regulatory factor 7")
 ("IVD" "ONT:GENE-PROTEIN" :ID "HGNC:6186" :NAME
  "isovaleryl-CoA dehydrogenase")
 ("Klotho" "ONT:GENE-PROTEIN" :ID "HGNC:6344" :NAME "klotho")
 ("LC-3" "ONT:GENE-PROTEIN" :ID "NCIT:C104677" :NAME
  "microtubule-associated proteins 1A-1B light chain 3")
 ("LDH" "ONT:GENE-PROTEIN" :ID "FA:02022" :NAME "LDH family")
 ("LEF1" "ONT:GENE-PROTEIN" :ID "HGNC:6551" :NAME
  "lymphoid enhancer binding factor 1")
 ("LMP" "ONT:GENE-PROTEIN" :ID "XFAM:PF04778.10" :NAME "LMP")
 ("LPCAT1" "ONT:GENE-PROTEIN" :ID "HGNC:25718" :NAME
  "lysophosphatidylcholine acyltransferase 1")
 ("LRP1" "ONT:GENE-PROTEIN" :ID "HGNC:6692" :NAME
  "LDL receptor related protein 1")
 ("LRP5" "ONT:GENE-PROTEIN" :ID "HGNC:6697" :NAME
  "LDL receptor related protein 5")
 ("LRP6" "ONT:GENE-PROTEIN" :ID "HGNC:6698" :NAME
  "LDL receptor related protein 6")
 ("MAFG" "ONT:GENE-PROTEIN" :ID "HGNC:6781" :NAME
  "MAF bZIP transcription factor G")
 ("MC1R" "ONT:GENE-PROTEIN" :ID "HGNC:6929" :NAME "melanocortin 1 receptor")
 ("MCC" "ONT:GENE-PROTEIN" :ID "HGNC:6935" :NAME
  "mutated in colorectal cancers")
 ("MCP1" "ONT:GENE-PROTEIN" :ID "NCIT:C49745" :NAME "CCL2")
 ("MCT1" "ONT:GENE-PROTEIN" :ID "UP:Q9ULC4" :NAME
  "Malignant T-cell-amplified sequence 1")
 ("MED27" "ONT:GENE-PROTEIN" :ID "HGNC:2377" :NAME
  "mediator complex subunit 27")
 ("MEIS1" "ONT:GENE-PROTEIN" :ID "HGNC:7000" :NAME "Meis homeobox 1")
 ("MELK" "ONT:GENE-PROTEIN" :ID "HGNC:16870" :NAME
  "maternal embryonic leucine zipper kinase")
 ("MEN1" "ONT:GENE-PROTEIN" :ID "HGNC:7010" :NAME "menin 1")
 ("MGL" "ONT:GENE-PROTEIN" :ID "UP:O35678" :NAME
  "Monoglyceride lipase {ECO:0000312MGI:MGI:1346042}")
 ("MGMT" "ONT:GENE-PROTEIN" :ID "HGNC:7059" :NAME
  "O-6-methylguanine-DNA methyltransferase")
 ("MK" "ONT:GENE-PROTEIN" :ID "UP:Q03426" :NAME "Mevalonate kinase")
 ("MKP-2" "ONT:GENE-PROTEIN" :ID "NCIT:C112129" :NAME
  "dual specificity protein phosphatase 4")
 ("MKP1" "ONT:GENE-PROTEIN" :ID "NCIT:C29568" :NAME
  "dual specificity phosphatase-1")
 ("MLC-2" "ONT:GENE-PROTEIN" :ID "UP:O14950" :NAME
  "Myosin regulatory light chain 12B")
 ("MLC2" "ONT:GENE-PROTEIN" :ID "HGNC:15754" :NAME "myosin light chain 9")
 ("MLL" "ONT:GENE-PROTEIN" :ID "NCIT:C53066" :NAME "MLL")
 ("MPC" "ONT:GENE-PROTEIN" :ID "UP:Q53034" :NAME "Metapyrocatechase")
 ("MRFs" "ONT:GENE-PROTEIN" :ID "FA:02356" :NAME "MRF family")
 ("MRP3" "ONT:GENE-PROTEIN" :ID "NCIT:C106022" :NAME "ABCC3")
 ("MRS" "ONT:GENE-PROTEIN" :ID "UP:Q1RNF8" :NAME
  "Sterile alpha motif domain-containing protein 11")
 ("MSC" "ONT:GENE-PROTEIN" :ID "HGNC:7321" :NAME "musculin")
 ("MSH6" "ONT:GENE-PROTEIN" :ID "HGNC:7329" :NAME "mutS homolog 6")
 ("MTDH" "ONT:GENE-PROTEIN" :ID "HGNC:29608" :NAME "metadherin")
 ("Mas" "ONT:GENE-PROTEIN" :ID "FA:01426" :NAME "mas subfamily")
 ("Mbp" "ONT:GENE-PROTEIN" :ID "HGNC:6925" :NAME "myelin basic protein")
 ("Meis1" "ONT:GENE-PROTEIN" :ID "HGNC:7000" :NAME "Meis homeobox 1")
 ("Mki67" "ONT:GENE-PROTEIN" :ID "HGNC:7107" :NAME
  "marker of proliferation Ki-67")
 ("Mnk2" "ONT:GENE-PROTEIN" :ID "NCIT:C91866" :NAME
  "MAP kinase-interacting serine-threonine-protein kinase 2")
 ("Mtb" "ONT:GENE-PROTEIN" :ID "UP:P27087" :NAME "Metallothionein B")
 ("NFH" "ONT:GENE-PROTEIN" :ID "UP:P12036" :NAME
  "Neurofilament heavy polypeptide")
 ("NHE" "ONT:GENE-PROTEIN" :ID "UP:P81242" :NAME
  "Non-hemolytic enterotoxin 105 kDa component")
 ("NK3R" "ONT:GENE-PROTEIN" :ID "NCIT:C30057" :NAME "tachykinin receptor-3")
 ("NKB" "ONT:GENE-PROTEIN" :ID "UP:P67935" :NAME "Neurokinin-B")
 ("NOS" "ONT:GENE-PROTEIN" :ID "UP:O61608" :NAME "Nitric oxide synthase")
 ("Nup153" "ONT:GENE-PROTEIN" :ID "HGNC:8062" :NAME "nucleoporin 153")
 ("OCT4" "ONT:GENE-PROTEIN" :ID "NCIT:C61141" :NAME "POU5F1")
 ("OGT" "ONT:GENE-PROTEIN" :ID "HGNC:8127" :NAME
  "O-linked N-acetylglucosamine (GlcNAc) transferase")
 ("ObR" "ONT:GENE-PROTEIN" :ID "NCIT:C51373" :NAME "LEPR")
 ("Ocstamp" "ONT:GENE-PROTEIN" :ID "HGNC:16116" :NAME
  "osteoclast stimulatory transmembrane protein")
 ("Oct6" "ONT:GENE-PROTEIN" :ID "UP:Q03052" :NAME
  "POU domain, class 3, transcription factor 1")
 ("Orai1" "ONT:GENE-PROTEIN" :ID "HGNC:25896" :NAME
  "ORAI calcium release-activated calcium modulator 1")
 ("Oxt" "ONT:GENE-PROTEIN" :ID "HGNC:8528" :NAME
  "oxytocin/neurophysin I prepropeptide")
 ("P450c17" "ONT:GENE-PROTEIN" :ID "NCIT:C52321" :NAME "CYP17A1")
 ("PAM" "ONT:GENE-PROTEIN" :ID "HGNC:8596" :NAME
  "peptidylglycine alpha-amidating monooxygenase")
 ("PAP-2" "ONT:GENE-PROTEIN" :ID "XFAM:PF01569.19" :NAME "PAP2")
 ("PARG" "ONT:GENE-PROTEIN" :ID "HGNC:8605" :NAME
  "poly(ADP-ribose) glycohydrolase")
 ("PDCD5" "ONT:GENE-PROTEIN" :ID "HGNC:8764" :NAME "programmed cell death 5")
 ("PEDF" "ONT:GENE-PROTEIN" :ID "UP:Q95121" :NAME
  "Pigment epithelium-derived factor")
 ("PGC" "ONT:GENE-PROTEIN" :ID "HGNC:8890" :NAME "progastricsin")
 ("PGC-1alpha" "ONT:GENE-PROTEIN" :ID "UP:Q865B7" :NAME
  "Peroxisome proliferator-activated receptor gamma coactivator 1-alpha")
 ("PGC1alpha" "ONT:GENE-PROTEIN" :ID "UP:Q865B7" :NAME
  "Peroxisome proliferator-activated receptor gamma coactivator 1-alpha")
 ("PKCbeta" "ONT:GENE-PROTEIN" :ID "UP:P05771" :NAME
  "Protein kinase C beta type")
 ("PLA2" "ONT:GENE-PROTEIN" :ID "UP:Q9TWL9" :NAME "Conodipine-M alpha chain")
 ("PML" "ONT:GENE-PROTEIN" :ID "HGNC:9113" :NAME "promyelocytic leukemia")
 ("PN" "ONT:GENE-PROTEIN" :ID "UP:Q15063" :NAME "Periostin")
 ("PODXL" "ONT:GENE-PROTEIN" :ID "HGNC:9171" :NAME "podocalyxin like")
 ("PP13" "ONT:GENE-PROTEIN" :ID "NCIT:C101557" :NAME
  "galactoside-binding soluble lectin 13")
 ("PP2Calpha" "ONT:GENE-PROTEIN" :ID "HGNC:9275" :NAME
  "protein phosphatase, Mg2+/Mn2+ dependent 1A")
 ("PR1" "ONT:GENE-PROTEIN" :ID "UP:P33154" :NAME
  "Pathogenesis-related protein 1")
 ("PRF" "ONT:GENE-PROTEIN" :ID "XFAM:PF06875.9" :NAME "PRF")
 ("PRLR" "ONT:GENE-PROTEIN" :ID "HGNC:9446" :NAME "prolactin receptor")
 ("PRLRs" "ONT:GENE-PROTEIN" :ID "HGNC:9446" :NAME "prolactin receptor")
 ("PRR" "ONT:GENE-PROTEIN" :ID "UP:P07052" :NAME
  "Pathogenesis-related protein R minor form")
 ("PSK" "ONT:GENE-PROTEIN" :ID "XFAM:PF06404.10" :NAME "PSK")
 ("PTH" "ONT:GENE-PROTEIN" :ID "HGNC:9606" :NAME "parathyroid hormone")
 ("PTHrP" "ONT:GENE-PROTEIN" :ID "UP:P12272" :NAME
  "Parathyroid hormone-related protein")
 ("PTPRR" "ONT:GENE-PROTEIN" :ID "HGNC:9680" :NAME
  "protein tyrosine phosphatase, receptor type R")
 ("PTPRT" "ONT:GENE-PROTEIN" :ID "HGNC:9682" :NAME
  "protein tyrosine phosphatase, receptor type T")
 ("Pax2" "ONT:GENE-PROTEIN" :ID "HGNC:8616" :NAME "paired box 2")
 ("Pax5" "ONT:GENE-PROTEIN" :ID "HGNC:8619" :NAME "paired box 5")
 ("Pdx1" "ONT:GENE-PROTEIN" :ID "HGNC:6107" :NAME
  "pancreatic and duodenal homeobox 1")
 ("Per1" "ONT:GENE-PROTEIN" :ID "HGNC:8845" :NAME "period circadian clock 1")
 ("Pgp" "ONT:GENE-PROTEIN" :ID "HGNC:8909" :NAME
  "phosphoglycolate phosphatase")
 ("PhIP" "ONT:GENE-PROTEIN" :ID "HGNC:15673" :NAME
  "pleckstrin homology domain interacting protein")
 ("Psip1" "ONT:GENE-PROTEIN" :ID "HGNC:9527" :NAME
  "PC4 and SFRS1 interacting protein 1")
 ("Ptc" "ONT:GENE-PROTEIN" :ID "UP:Q13635" :NAME "Protein patched homolog 1")
 ("R-spondin" "ONT:GENE-PROTEIN" :ID "FA:03208" :NAME "R-spondin family")
 ("RAD51" "ONT:GENE-PROTEIN" :ID "HGNC:9817" :NAME "RAD51 recombinase")
 ("RANBP2" "ONT:GENE-PROTEIN" :ID "HGNC:9848" :NAME "RAN binding protein 2")
 ("RB3" "ONT:GENE-PROTEIN" :ID "HGNC:16078" :NAME "stathmin 4")
 ("RIP1" "ONT:GENE-PROTEIN" :ID "NCIT:C17923" :NAME
  "receptor-interacting serine-threonine kinase-1")
 ("RIP3" "ONT:GENE-PROTEIN" :ID "NCIT:C29873" :NAME
  "receptor-interacting serine-threonine protein kinase-3")
 ("RIPK1" "ONT:GENE-PROTEIN" :ID "HGNC:10019" :NAME
  "receptor interacting serine/threonine kinase 1")
 ("RIPK3" "ONT:GENE-PROTEIN" :ID "HGNC:10021" :NAME
  "receptor interacting serine/threonine kinase 3")
 ("RPE" "ONT:GENE-PROTEIN" :ID "HGNC:10293" :NAME
  "ribulose-5-phosphate-3-epimerase")
 ("IgG1" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0071735" :NAME
  "IgG immunoglobulin complex")
 ("PTPC" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0005757" :NAME
  "mitochondrial permeability transition pore complex")
 ("HVR" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:71291" :NAME
  "Hereditary vascular retinopathy")
 ("MadA" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C123417" :NAME
  "mandibuloacral dysplasia with type A lipodystrophy")
 ("Mnk" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:565" :NAME
  "Menkes disease")
 ("NEM" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:607" :NAME
  "Nemaline myopathy")
 ("PAT" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C34900" :NAME
  "paroxysmal atrial tachycardia")
 ("PCC" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0000239" :NAME
  "adrenal gland pheochromocytoma")
 ("Pres" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C78598" :NAME
  "reversible posterior leukoencephalopathy syndrome")
 ("PGI" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00342.17" :NAME "PGI")
 ("N19" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Asparagine")
 ("HHE" "ONT:MOLECULE" :ID "CHEBI:33690" :NAME "hydridohelium(2+)")
 ("KH" "ONT:MOLECULE" :ID "CHEBI:32589" :NAME "potassium hydride")
 ("LNT" "ONT:MOLECULE" :ID "CHEBI:30248" :NAME
  "beta-D-Gal-(1->3)-beta-D-GlcNAc-(1->3)-beta-D-Gal-(1->4)-D-Glc")
 ("MPLA" "ONT:MOLECULE" :ID "CHEBI:77066" :NAME "MPLA")
 ("OCL" "ONT:MOLECULE" :ID "CHEBI:29879" :NAME "chlorooxy group")
 ("PFO" "ONT:MOLECULE" :ID "CHEBI:53347" :NAME
  "poly(9,9'-dioctylfluorene) macromolecule")
 ("PLLA" "ONT:MOLECULE" :ID "CHEBI:53408" :NAME "poly[(S)-lactic acid]")
 ("QD" "ONT:MOLECULE" :ID "CHEBI:50853" :NAME "quantum dot")
 ("NIH" "ONT:NONHUMAN-ANIMAL" :ID "NCIT:C14476" :NAME "NIH mouse")
 ("HKI-272" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C49094" :NAME "KI-272")
 ("ICI182780" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C070081" :NAME
  "fulvestrant")
 ("III-10" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C574798" :NAME "III-10")
 ("INK-128" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C572449" :NAME "INK128")
 ("INT-777" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C545501" :NAME
  "6alpha-ethyl-23(S)-methylcholic acid")
 ("IPI-926" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C541444" :NAME "IPI-926")
 ("Icaritin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C499403" :NAME "icaritin")
 ("Iressa" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1855" :NAME "gefitinib")
 ("JNJ-61186372" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C124993" :NAME
  "anti-EGFR c-met bispecific antibody JNJ-61186372")
 ("JWH-015" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C402944" :NAME "JHW 015")
 ("JZL184" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C534333" :NAME "JZL 184")
 ("KT5720" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C057416" :NAME "KT 5720")
 ("LAQ824" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C477361" :NAME "LAQ824")
 ("LBH589" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C66948" :NAME "LBH589")
 ("LDN193189" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C554430" :NAME
  "LDN 193189")
 ("LFG-500" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C000598105" :NAME
  "LFG-500")
 ("LG268" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C423914" :NAME "LG 268")
 ("LY2109761" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C530108" :NAME
  "LY2109761")
 ("LY2157299" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C557799" :NAME
  "LY-2157299")
 ("Levofloxacin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1586" :NAME
  "levofloxacin")
 ("Linagliptin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C83887" :NAME
  "linagliptin")
 ("MBC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1154" :NAME "carbendazim")
 ("MCE" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C91039" :NAME "metergoline")
 ("MG-132" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:75142" :NAME
  "N-benzyloxycarbonyl-L-leucyl-L-leucyl-L-leucinal")
 ("MK0626" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C570834" :NAME "MK0626")
 ("MLN-8054" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C518940" :NAME "MLN8054")
 ("MLN4924" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C77906" :NAME
  "NAE inhibitor MLN4924")
 ("MM-121" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C78859" :NAME
  "anti-erbB3 receptor monoclonal antibody MM-121")
 ("MSM" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C84616" :NAME
  "dimethyl sulfone")
 ("MTX" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C642" :NAME "methotrexate")
 ("Methylsulfonylmethane" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C025910"
  :NAME "dimethyl sulfone")
 ("Moxifloxacin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C104727" :NAME
  "moxifloxacin")
 ("NPS2143" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C436740" :NAME
  "N-(2-hydroxy-3-(2-cyano-3-chlorophenoxy)propyl)-1,1-dimethyl-2-(2-nephthyl)ethylamine")
 ("NPS2390" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C569355" :NAME
  "2-quinoxaline-carboxamide-N-adamantan-1-yl")
 ("NaAsO2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:29678" :NAME
  "sodium arsenite")
 ("ONC201" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C113792" :NAME
  "akt ERK inhibitor ONC201")
 ("PD-184352" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C2670" :NAME "CI-1040")
 ("PD-98059" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1625" :NAME "PD-98059")
 ("PD123319" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:61014" :NAME "PD123319")
 ("PHA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C88791" :NAME
  "phytohemagglutinin")
 ("PJ-34" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C434926" :NAME
  "N-(oxo-5,6-dihydrophenanthridin-2-yl)-N,N-dimethylacetamide hydrochloride")
 ("PJ34" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C434926" :NAME
  "N-(oxo-5,6-dihydrophenanthridin-2-yl)-N,N-dimethylacetamide hydrochloride")
 ("PPi" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29723" :NAME
  "proton pump inhibitor")
 ("Paeonol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C013638" :NAME "paeonol")
 ("Propranolol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C62073" :NAME
  "propranolol")
 ("Q-VD-OPh" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C468548" :NAME
  "quinoline-val-asp(OMe)-CH2-OPH")
 ("RAF265" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C559019" :NAME "RAF265")
 ("RG7787" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C000597116" :NAME "RG7787")
 ("RO31-8220" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1310" :NAME
  "Ro 31-8220")
 ("LSC" "ONT:PROCEDURE" :ID "NCIT:C122170" :NAME
  "liquid scintillation counting")
 ("HIF-2alpha" "ONT:PROTEIN" :ID "NCIT:C104306" :NAME
  "endothelial PAS domain-containing protein 1")
 ("HS15" "ONT:PROTEIN" :ID "UP:P19953" :NAME "30S ribosomal protein S24e")
 ("HwHog1" "ONT:PROTEIN" :ID "UP:Q8NJT7" :NAME
  "Mitogen-activated protein kinase HOG1")
 ("IKKepsilon" "ONT:PROTEIN" :ID "UP:Q14164" :NAME
  "Inhibitor of nuclear factor kappa-B kinase subunit epsilon")
 ("IL-12p40" "ONT:PROTEIN" :ID "NCIT:C28509" :NAME "interleukin-12B")
 ("IL-15Ralpha" "ONT:PROTEIN" :ID "UP:Q13261" :NAME
  "Interleukin-15 receptor subunit alpha")
 ("IL-6Ralpha" "ONT:PROTEIN" :ID "UP:P08887" :NAME
  "Interleukin-6 receptor subunit alpha")
 ("IPI" "ONT:PROTEIN" :ID "UP:P03718" :NAME "Internal protein I")
 ("IgG4" "ONT:PROTEIN" :ID "NCIT:C78227" :NAME "IgG4")
 ("LPCAT" "ONT:PROTEIN" :ID "UP:Q6P1A2" :NAME
  "Lysophospholipid acyltransferase 5")
 ("MCA" "ONT:PROTEIN" :ID "UP:P60254" :NAME "Maurocalcin")
 ("MNF" "ONT:PROTEIN" :ID "UP:P85037" :NAME "Forkhead box protein K1")
 ("MPK2" "ONT:PROTEIN" :ID "UP:P47812" :NAME
  "Mitogen-activated protein kinase 14")
 ("MSI" "ONT:PROTEIN" :ID "UP:Q3BK13" :NAME "Disintegrin lebein-2-alpha")
 ("NF-kb" "ONT:PROTEIN" :ID "NCIT:C17380" :NAME "NF-kB")
 ("NFkB" "ONT:PROTEIN" :ID "NCIT:C17380" :NAME "NF-kB")
 ("OBL" "ONT:PROTEIN" :ID "UP:Q8T6Z0" :NAME "Obelin")
 ("OMT" "ONT:PROTEIN" :ID "UP:P82455" :NAME "Orcomyotropin")
 ("Oxytocin" "ONT:PROTEIN" :ID "UP:P69056" :NAME "Oxytocin")
 ("PDGFRalpha" "ONT:PROTEIN" :ID "UP:P16234" :NAME
  "Platelet-derived growth factor receptor alpha")
 ("PG" "ONT:PROTEIN" :ID "UP:Q9LW07" :NAME
  "Probable polygalacturonase At3g15720")
 ("PGA" "ONT:PROTEIN" :ID "UP:P20041" :NAME "Polygalacturonase")
 ("PV" "ONT:PROTEIN" :ID "UP:P56530" :NAME "Phosvitin")
 ("RARalpha" "ONT:PROTEIN" :ID "UP:P10276" :NAME
  "Retinoic acid receptor alpha")
 ("RBPjkappa" "ONT:PROTEIN" :ID "UP:O02019" :NAME
  "Suppressor of hairless homolog")
 ("HIF" "ONT:PROTEIN-FAMILY" :ID "NCIT:C113839" :NAME
  "hypoxia inducible factor family")
 ("JAs" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF16135.3" :NAME "jas")
 ("KRAB" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF01352.25" :NAME "KRAB")
 ("Mu" "ONT:PROTEIN-FAMILY" :ID "FA:01672" :NAME "Mu family")
 ("Nup" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF06516.9" :NAME "NUP")


 ("MCPyV" "ONT:VIRUS" :ID "NCIT:C73535" :NAME "merkel cell polyomavirus")
 ("RSV" "ONT:VIRUS" :ID "NCIT:C14267" :NAME "respiratory syncytial virus")
 ("anergy" "ONT:BIOLOGICAL-PROCESS" :ID "NCIT:C17706" :NAME "anergy")
 ("hypoplasia" "ONT:BIOLOGICAL-PROCESS" :ID "NCIT:C120893" :NAME "hypoplasia")
 ("TAM" "ONT:CANCER" :ID "NCIT:C82339" :NAME "transient abnormal myelopoiesis")
 ("Tcell" "ONT:CELL" :ID "BTO:0000782" :NAME "T-lymphocyte")
 ("eosinophil" "ONT:CELL" :ID "BTO:0000399" :NAME "eosinophil")
 ("interneurons" "ONT:CELL" :ID "CO:0000099" :NAME "interneuron")
 ("SCC" "ONT:CELL-LINE" :ID "CVCL:1R13" :NAME "SCC-TC")
 ("SHSY5Y" "ONT:CELL-LINE" :ID "CVCL:0019" :NAME "SH-SY5Y")
 ("SKBR3" "ONT:CELL-LINE" :ID "EFO:0001236" :NAME "SKBR3")
 ("SKOV-3" "ONT:CELL-LINE" :ID "CVCL:0532" :NAME "SK-OV-3")
 ("SKOV3" "ONT:CELL-LINE" :ID "EFO:0002340" :NAME "SKOV3")
 ("SLN" "ONT:CELL-LINE" :ID "CVCL:S948" :NAME "SLN")
 ("SM" "ONT:CELL-LINE" :ID "CVCL:7004" :NAME "ACC-LC-171")
 ("SPS" "ONT:CELL-LINE" :ID "CVCL:R927" :NAME "SPS")
 ("SR" "ONT:CELL-LINE" :ID "CVCL:1711" :NAME "SR")
 ("SU" "ONT:CELL-LINE" :ID "CVCL:W201" :NAME "SU")
 ("TAC" "ONT:CELL-LINE" :ID "CVCL:D939" :NAME "MRC-iPS-26")
 ("TE-13" "ONT:CELL-LINE" :ID "CVCL:4463" :NAME "TE-13")
 ("TEM" "ONT:CELL-LINE" :ID "CVCL:E844" :NAME "TEM")
 ("TS/A" "ONT:CELL-LINE" :ID "CVCL:F736" :NAME "TS/A")
 ("TW-01" "ONT:CELL-LINE" :ID "CVCL:6008" :NAME "NPC-TW01")
 ("Vp1" "ONT:CELL-LINE" :ID "CVCL:5623" :NAME "INER-51/VP-1")
 ("WD" "ONT:CELL-LINE" :ID "CVCL:8435" :NAME "WD PaCa")
 ("ZA" "ONT:CELL-LINE" :ID "CVCL:D596" :NAME "ZA")
 ("ZEB2" "ONT:CELL-LINE" :ID "CVCL:6E09" :NAME "ZEB2")
 ("ctb" "ONT:CELL-LINE" :ID "CVCL:9W61" :NAME "CTb")
 ("SJ" "ONT:CELL-PART" :ID "UP:SL-0246" :NAME "Septate junction")
 ("endomembrane" "ONT:CELL-PART" :ID "UP:SL-0147" :NAME "Endomembrane system")
 ("inflammasome" "ONT:CELL-PART" :ID "UP:SL-0488" :NAME "Inflammasome")
 ("kinetochore" "ONT:CELL-PART" :ID "UP:SL-0149" :NAME "Kinetochore")
 ("kinetochores" "ONT:CELL-PART" :ID "UP:SL-0149" :NAME "Kinetochore")
 ("SAH" "ONT:CHEMICAL" :ID "CHEBI:16680" :NAME "S-adenosyl-L-homocysteine")
 ("SB-239063" "ONT:CHEMICAL" :ID "CHEBI:90681" :NAME "SB-239063")
 ("SCFA" "ONT:CHEMICAL" :ID "CHEBI:26666" :NAME "short-chain fatty acid")
 ("SCFAs" "ONT:CHEMICAL" :ID "CHEBI:26666" :NAME "short-chain fatty acid")
 ("SFA" "ONT:CHEMICAL" :ID "CHEBI:26607" :NAME "saturated fatty acid")
 ("SQ22536" "ONT:CHEMICAL" :ID "CHEBI:90232" :NAME
  "9-(tetrahydrofuryl)adenine")
 ("TAA" "ONT:CHEMICAL" :ID "NCIT:C44454" :NAME "thioacetamide")
 ("TV" "ONT:CHEMICAL" :ID "CHEBI:75193" :NAME "tetrazolium violet")
 ("Trolox" "ONT:CHEMICAL" :ID "CHEBI:82625" :NAME "Trolox")
 ("VC" "ONT:CHEMICAL" :ID "CHEBI:28509" :NAME "chloroethene")
 ("VLDL" "ONT:CHEMICAL" :ID "CHEBI:39027" :NAME "very-low-density lipoprotein")
 ("VM" "ONT:CHEMICAL" :ID "CHEBI:75015" :NAME "Val-Met")
 ("WL" "ONT:CHEMICAL" :ID "CHEBI:74871" :NAME "Trp-Leu")
 ("alloxan" "ONT:CHEMICAL" :ID "CHEBI:76451" :NAME "alloxan")
 ("antifolate" "ONT:CHEMICAL" :ID "CHEBI:73913" :NAME "antifolate")
 ("azithromycin" "ONT:CHEMICAL" :ID "CHEBI:2955" :NAME "azithromycin")
 ("betaine" "ONT:CHEMICAL" :ID "CHEBI:17750" :NAME "glycine betaine")
 ("biliverdin" "ONT:CHEMICAL" :ID "CHEBI:17033" :NAME "biliverdin")
 ("borneol" "ONT:CHEMICAL" :ID "CHEBI:28093" :NAME "borneol")
 ("calcifediol" "ONT:CHEMICAL" :ID "CHEBI:17933" :NAME "calcidiol")
 ("calcitriol" "ONT:CHEMICAL" :ID "CHEBI:17823" :NAME "calcitriol")
 ("calycosin" "ONT:CHEMICAL" :ID "CHEBI:17793" :NAME "calycosin")
 ("cannabinoid" "ONT:CHEMICAL" :ID "CHEBI:67194" :NAME "cannabinoid")
 ("cantharidin" "ONT:CHEMICAL" :ID "CHEBI:64213" :NAME "cantharidin")
 ("catecholamine" "ONT:CHEMICAL" :ID "CHEBI:33567" :NAME "catecholamine")
 ("catecholamines" "ONT:CHEMICAL" :ID "CHEBI:33567" :NAME "catecholamine")
 ("cephalin" "ONT:CHEMICAL" :ID "CHEBI:16038" :NAME "phosphatidylethanolamine")
 ("corticosterone" "ONT:CHEMICAL" :ID "CHEBI:16827" :NAME "corticosterone")
 ("diethyldithiocarbamate" "ONT:CHEMICAL" :ID "NCIT:C432" :NAME
  "diethyldithiocarbamate")
 ("ecdysterone" "ONT:CHEMICAL" :ID "CHEBI:16587" :NAME "20-hydroxyecdysone")
 ("guanosine" "ONT:CHEMICAL" :ID "CHEBI:16750" :NAME "guanosine")
 ("hesperidin" "ONT:CHEMICAL" :ID "CHEBI:28775" :NAME "hesperidin")
 ("hydrosulfide" "ONT:CHEMICAL" :ID "CHEBI:29919" :NAME "hydrosulfide")
 ("isoalantolactone" "ONT:CHEMICAL" :ID "CHEBI:5981" :NAME "isoalantolactone")
 ("RegIV" "ONT:GENE" :ID "HGNC:22977" :NAME "regenerating family member 4")
 ("RhoE" "ONT:GENE" :ID "HGNC:671" :NAME "Rho family GTPase 3")
 ("Runx3" "ONT:GENE" :ID "HGNC:10473" :NAME
  "runt related transcription factor 3")
 ("S100A16" "ONT:GENE" :ID "HGNC:20441" :NAME
  "S100 calcium binding protein A16")
 ("S100beta" "ONT:GENE" :ID "NCIT:C98128" :NAME "S100B")
 ("S1pr2" "ONT:GENE" :ID "HGNC:3169" :NAME
  "sphingosine-1-phosphate receptor 2")
 ("SCG10" "ONT:GENE" :ID "HGNC:10577" :NAME "stathmin 2")
 ("SGLT1" "ONT:GENE" :ID "NCIT:C77166" :NAME "SLC5A1")
 ("SGLT2" "ONT:GENE" :ID "NCIT:C119005" :NAME "SLC5A2")
 ("SH3P2" "ONT:GENE" :ID "HGNC:8510" :NAME "osteoclast stimulating factor 1")
 ("SIRT2" "ONT:GENE" :ID "HGNC:10886" :NAME "sirtuin 2")
 ("SNL" "ONT:GENE" :ID "NCIT:C101606" :NAME "FSCN1")
 ("SOX21" "ONT:GENE" :ID "HGNC:11197" :NAME "SRY-box 21")
 ("ST7L" "ONT:GENE" :ID "HGNC:18441" :NAME
  "suppression of tumorigenicity 7 like")
 ("SWI" "ONT:GENE" :ID "HGNC:11097" :NAME
  "SWI/SNF related, matrix associated, actin dependent regulator of chromatin, subfamily a, member 1")
 ("SYP" "ONT:GENE" :ID "HGNC:11506" :NAME "synaptophysin")
 ("Snf2" "ONT:GENE" :ID "HGNC:11098" :NAME
  "SWI/SNF related, matrix associated, actin dependent regulator of chromatin, subfamily a, member 2")
 ("Stab2" "ONT:GENE" :ID "HGNC:18629" :NAME "stabilin 2")
 ("TAX1BP1" "ONT:GENE" :ID "HGNC:11575" :NAME "Tax1 binding protein 1")
 ("TBL1" "ONT:GENE" :ID "HGNC:18502" :NAME "transducin beta like 1, Y-linked")
 ("TBLR1" "ONT:GENE" :ID "NCIT:C80117" :NAME "TBL1XR1")
 ("TBX3" "ONT:GENE" :ID "HGNC:11602" :NAME "T-box 3")
 ("TET1" "ONT:GENE" :ID "HGNC:29484" :NAME "tet methylcytosine dioxygenase 1")
 ("TGR5" "ONT:GENE" :ID "HGNC:19680" :NAME
  "G protein-coupled bile acid receptor 1")
 ("TNAP" "ONT:GENE" :ID "NCIT:C104231" :NAME "ALPL")
 ("TRAF3" "ONT:GENE" :ID "HGNC:12033" :NAME "TNF receptor associated factor 3")
 ("TRAF5" "ONT:GENE" :ID "HGNC:12035" :NAME "TNF receptor associated factor 5")
 ("TRIM11" "ONT:GENE" :ID "HGNC:16281" :NAME "tripartite motif containing 11")
 ("TTM" "ONT:GENE" :ID "NCIT:C90129" :NAME "SLITRK1")
 ("TUBB4B" "ONT:GENE" :ID "HGNC:20771" :NAME "tubulin beta 4B class IVb")
 ("Tmp21" "ONT:GENE" :ID "HGNC:16998" :NAME
  "transmembrane p24 trafficking protein 10")
 ("Trib1" "ONT:GENE" :ID "HGNC:16891" :NAME "tribbles pseudokinase 1")
 ("USP39" "ONT:GENE" :ID "HGNC:20071" :NAME "ubiquitin specific peptidase 39")
 ("USP45" "ONT:GENE" :ID "HGNC:20080" :NAME "ubiquitin specific peptidase 45")
 ("USP46" "ONT:GENE" :ID "HGNC:20075" :NAME "ubiquitin specific peptidase 46")
 ("WDR20" "ONT:GENE" :ID "HGNC:19667" :NAME "WD repeat domain 20")
 ("WNK3" "ONT:GENE" :ID "HGNC:14543" :NAME
  "WNK lysine deficient protein kinase 3")
 ("ZRF1" "ONT:GENE" :ID "HGNC:13192" :NAME
  "DnaJ heat shock protein family (Hsp40) member C2")
 ("Zeb-1" "ONT:GENE" :ID "HGNC:11642" :NAME
  "zinc finger E-box binding homeobox 1")
 ("beta4" "ONT:GENE" :ID "NCIT:C104243" :NAME "TUBB3")
 ("cJun" "ONT:GENE" :ID "HGNC:6204" :NAME
  "Jun proto-oncogene, AP-1 transcription factor subunit")
 ("cfos" "ONT:GENE" :ID "HGNC:3796" :NAME
  "Fos proto-oncogene, AP-1 transcription factor subunit")
 ("dys" "ONT:GENE" :ID "HGNC:5959" :NAME
  "inhibitor of kappa light polypeptide gene enhancer in B-cells, kinase complex-associated protein")
 ("Rad9" "ONT:GENE-PROTEIN" :ID "FA:03221" :NAME "RAD9 family")
 ("RalA" "ONT:GENE-PROTEIN" :ID "HGNC:9839" :NAME "RAS like proto-oncogene A")
 ("RhoGDI2" "ONT:GENE-PROTEIN" :ID "HGNC:679" :NAME
  "Rho GDP dissociation inhibitor beta")
 ("Rom" "ONT:GENE-PROTEIN" :ID "HGNC:10254" :NAME
  "retinal outer segment membrane protein 1")
 ("S100A11" "ONT:GENE-PROTEIN" :ID "HGNC:10488" :NAME
  "S100 calcium binding protein A11")
 ("S100A12" "ONT:GENE-PROTEIN" :ID "HGNC:10489" :NAME
  "S100 calcium binding protein A12")
 ("S100A8" "ONT:GENE-PROTEIN" :ID "HGNC:10498" :NAME
  "S100 calcium binding protein A8")
 ("S1P2" "ONT:GENE-PROTEIN" :ID "UP:Q9I8K8" :NAME
  "Sphingosine 1-phosphate receptor 2")
 ("SAP" "ONT:GENE-PROTEIN" :ID "UP:P02743" :NAME "Serum amyloid P-component")
 ("SBF" "ONT:GENE-PROTEIN" :ID "XFAM:PF01758.14" :NAME "SBF")
 ("SCIMP" "ONT:GENE-PROTEIN" :ID "HGNC:33504" :NAME
  "SLP adaptor and CSK interacting membrane protein")
 ("SKI" "ONT:GENE-PROTEIN" :ID "HGNC:10896" :NAME "SKI proto-oncogene")
 ("SMARCE1" "ONT:GENE-PROTEIN" :ID "HGNC:11109" :NAME
  "SWI/SNF related, matrix associated, actin dependent regulator of chromatin, subfamily e, member 1")
 ("SMG" "ONT:GENE-PROTEIN" :ID "HGNC:23023" :NAME
  "sterile alpha motif domain containing 4A")
 ("SOD3" "ONT:GENE-PROTEIN" :ID "HGNC:11181" :NAME
  "superoxide dismutase 3, extracellular")
 ("SPATA2" "ONT:GENE-PROTEIN" :ID "HGNC:14681" :NAME
  "spermatogenesis associated 2")
 ("SPB" "ONT:GENE-PROTEIN" :ID "UP:P07988" :NAME
  "Pulmonary surfactant-associated protein B")
 ("SRSF2" "ONT:GENE-PROTEIN" :ID "HGNC:10783" :NAME
  "serine and arginine rich splicing factor 2")
 ("SUMO" "ONT:GENE-PROTEIN" :ID "UP:P55853" :NAME
  "Small ubiquitin-related modifier")
 ("SerpinB2" "ONT:GENE-PROTEIN" :ID "HGNC:8584" :NAME
  "serpin family B member 2")
 ("Sfrp1" "ONT:GENE-PROTEIN" :ID "HGNC:10776" :NAME
  "secreted frizzled related protein 1")
 ("Shh" "ONT:GENE-PROTEIN" :ID "HGNC:10848" :NAME "sonic hedgehog")
 ("Siah1" "ONT:GENE-PROTEIN" :ID "HGNC:10857" :NAME
  "siah E3 ubiquitin protein ligase 1")
 ("Smo" "ONT:GENE-PROTEIN" :ID "HGNC:11119" :NAME
  "smoothened, frizzled class receptor")
 ("Sox-2" "ONT:GENE-PROTEIN" :ID "HGNC:11195" :NAME "SRY-box 2")
 ("Spt20" "ONT:GENE-PROTEIN" :ID "FA:05167" :NAME "SPT20 family")
 ("TBN" "ONT:GENE-PROTEIN" :ID "NCIT:C30070" :NAME
  "taube nuss homologue protein")
 ("TBP" "ONT:GENE-PROTEIN" :ID "HGNC:11588" :NAME "TATA-box binding protein")
 ("TFF1" "ONT:GENE-PROTEIN" :ID "HGNC:11755" :NAME "trefoil factor 1")
 ("TGF-beta2" "ONT:GENE-PROTEIN" :ID "UP:P61812" :NAME
  "Transforming growth factor beta-2")
 ("TGF-beta3" "ONT:GENE-PROTEIN" :ID "UP:P16047" :NAME
  "Transforming growth factor beta-3")
 ("TGFbeta2" "ONT:GENE-PROTEIN" :ID "UP:P61812" :NAME
  "Transforming growth factor beta-2")
 ("THP" "ONT:GENE-PROTEIN" :ID "NCIT:C52924" :NAME "GLI2")
 ("TNFR2" "ONT:GENE-PROTEIN" :ID "NCIT:C51381" :NAME "TNFRSF1B")
 ("TOLLIP" "ONT:GENE-PROTEIN" :ID "HGNC:16476" :NAME
  "toll interacting protein")
 ("TRIB2" "ONT:GENE-PROTEIN" :ID "HGNC:30809" :NAME "tribbles pseudokinase 2")
 ("TRIM16" "ONT:GENE-PROTEIN" :ID "HGNC:17241" :NAME
  "tripartite motif containing 16")
 ("TRPM2" "ONT:GENE-PROTEIN" :ID "HGNC:12339" :NAME
  "transient receptor potential cation channel subfamily M member 2")
 ("TRPM7" "ONT:GENE-PROTEIN" :ID "HGNC:17994" :NAME
  "transient receptor potential cation channel subfamily M member 7")
 ("TRPV4" "ONT:GENE-PROTEIN" :ID "HGNC:18083" :NAME
  "transient receptor potential cation channel subfamily V member 4")
 ("TSG" "ONT:GENE-PROTEIN" :ID "XFAM:PF04668.10" :NAME "tsg")
 ("TSP1" "ONT:GENE-PROTEIN" :ID "NCIT:C17547" :NAME "thrombospondin-1")
 ("TSP2" "ONT:GENE-PROTEIN" :ID "NCIT:C18038" :NAME "thrombospondin-2")
 ("TYMS" "ONT:GENE-PROTEIN" :ID "HGNC:12441" :NAME "thymidylate synthetase")
 ("TdT" "ONT:GENE-PROTEIN" :ID "NCIT:C16509" :NAME
  "terminal deoxyribonucleotidyl transferase")
 ("Thioredoxin" "ONT:GENE-PROTEIN" :ID "HGNC:12435" :NAME "thioredoxin")
 ("Trib2" "ONT:GENE-PROTEIN" :ID "HGNC:30809" :NAME "tribbles pseudokinase 2")
 ("TrkC" "ONT:GENE-PROTEIN" :ID "NCIT:C33984" :NAME
  "neurotrophic tyrosine kinase receptor type-3")
 ("Twist1" "ONT:GENE-PROTEIN" :ID "HGNC:12428" :NAME
  "twist family bHLH transcription factor 1")
 ("U2AF65" "ONT:GENE-PROTEIN" :ID "HGNC:23156" :NAME
  "U2 small nuclear RNA auxiliary factor 2")
 ("UII" "ONT:GENE-PROTEIN" :ID "HGNC:12636" :NAME "urotensin 2")
 ("VDR" "ONT:GENE-PROTEIN" :ID "HGNC:12679" :NAME
  "vitamin D (1,25- dihydroxyvitamin D3) receptor")
 ("VMP1" "ONT:GENE-PROTEIN" :ID "HGNC:29559" :NAME
  "vacuole membrane protein 1")
 ("Vegfa" "ONT:GENE-PROTEIN" :ID "HGNC:12680" :NAME
  "vascular endothelial growth factor A")
 ("WASP" "ONT:GENE-PROTEIN" :ID "UP:P42768" :NAME
  "Wiskott-Aldrich syndrome protein")
 ("Wnt5b" "ONT:GENE-PROTEIN" :ID "HGNC:16265" :NAME "Wnt family member 5B")
 ("XAF1" "ONT:GENE-PROTEIN" :ID "HGNC:30932" :NAME "XIAP associated factor 1")
 ("adiponectin" "ONT:GENE-PROTEIN" :ID "UP:Q3Y5Z3" :NAME "Adiponectin")
 ("apo" "ONT:GENE-PROTEIN" :ID "UP:Q8N6M6" :NAME "Aminopeptidase O")
 ("betacellulin" "ONT:GENE-PROTEIN" :ID "NCIT:C20432" :NAME "betacellulin")
 ("biglycan" "ONT:GENE-PROTEIN" :ID "HGNC:1044" :NAME "biglycan")
 ("cFLIP" "ONT:GENE-PROTEIN" :ID "NCIT:C96018" :NAME
  "CASP8 and FADD-like apoptosis regulator")
 ("cIAP1" "ONT:GENE-PROTEIN" :ID "NCIT:C20931" :NAME
  "baculoviral IAP repeat-containing protein-2")
 ("cis" "ONT:GENE-PROTEIN" :ID "UP:Q2HJ53" :NAME
  "Cytokine-inducible SH2-containing protein")
 ("cyclin D3" "ONT:GENE-PROTEIN" :ID "HGNC:1585" :NAME "cyclin D3")
 ("cyp11a1" "ONT:GENE-PROTEIN" :ID "HGNC:2590" :NAME
  "cytochrome P450 family 11 subfamily A member 1")
 ("eIF2B" "ONT:GENE-PROTEIN" :ID "NCIT:C18162" :NAME "eIF2B")
 ("eIF4G" "ONT:GENE-PROTEIN" :ID "UP:Q76E23" :NAME
  "Eukaryotic translation initiation factor 4G")
 ("elastin" "ONT:GENE-PROTEIN" :ID "HGNC:3327" :NAME "elastin")
 ("epimorphin" "ONT:GENE-PROTEIN" :ID "NCIT:C116090" :NAME "syntaxin-2")
 ("follistatin" "ONT:GENE-PROTEIN" :ID "HGNC:3971" :NAME "follistatin")
 ("fractalkine" "ONT:GENE-PROTEIN" :ID "UP:P78423" :NAME "Fractalkine")
 ("galanin" "ONT:GENE-PROTEIN" :ID "UP:P47215" :NAME "Galanin")
 ("hBD3" "ONT:GENE-PROTEIN" :ID "NCIT:C91757" :NAME "beta-defensin 103")
 ("hnRNPA1" "ONT:GENE-PROTEIN" :ID "HGNC:5031" :NAME
  "heterogeneous nuclear ribonucleoprotein A1")
 ("interleukin-3" "ONT:GENE-PROTEIN" :ID "UP:P08700" :NAME "Interleukin-3")
 ("Ripoptosome" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0097342" :NAME
  "ripoptosome")
 ("apoptosome" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0043293" :NAME
  "apoptosome")
 ("SMA" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "ORPHANET:70" :NAME
  "Proximal spinal muscular atrophy")
 ("hyperthermia" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "HP:0001945" :NAME
  "fever")
 ("SAB" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF04382.11" :NAME "SAB")
 ("TIMP" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00965.15" :NAME "TIMP")
 ("bromodomain" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF00439.23" :NAME
  "bromodomain")
 ("S70" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Serine")
 ("U1026" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Selenocysteine")
 ("U73122" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Selenocysteine")
 ("U937" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Selenocysteine")
 ("V12" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Valine")
 ("Y15" "ONT:MOLECULAR-SITE" :ID NIL :NAME "Tyrosine")
 ("Ruthenium" "ONT:MOLECULE" :ID "CHEBI:30682" :NAME "ruthenium atom")
 ("SEL" "ONT:MOLECULE" :ID "CHEBI:24866" :NAME "salt")
 ("Terpinen-4-ol" "ONT:MOLECULE" :ID "CHEBI:132655" :NAME "Terpinen-4-ol")
 ("Vn" "ONT:MOLECULE" :ID "CHEBI:35170" :NAME "vanadium(0)")
 ("anion" "ONT:MOLECULE" :ID "CHEBI:22563" :NAME "anion")
 ("apocynin" "ONT:MOLECULE" :ID "CHEBI:2781" :NAME "apocynin")
 ("azide" "ONT:MOLECULE" :ID "CHEBI:22680" :NAME "azide")
 ("catechin" "ONT:MOLECULE" :ID "CHEBI:23053" :NAME "catechin")
 ("ceramide" "ONT:MOLECULE" :ID "CHEBI:17761" :NAME "ceramide")
 ("choline" "ONT:MOLECULE" :ID "CHEBI:15354" :NAME "choline")
 ("cnidilide" "ONT:MOLECULE" :ID "CHEBI:80808" :NAME "Cnidilide")
 ("cyclodextrin" "ONT:MOLECULE" :ID "CHEBI:23456" :NAME "cyclodextrin")
 ("desferrioxamine" "ONT:MOLECULE" :ID "CHEBI:50453" :NAME "desferrioxamine")
 ("diamide" "ONT:MOLECULE" :ID "CHEBI:48958" :NAME
  "1,1'-azobis(N,N-dimethylformamide)")
 ("diphosphate" "ONT:MOLECULE" :ID "CHEBI:18361" :NAME "diphosphate(4-)")
 ("disulphide" "ONT:MOLECULE" :ID "CHEBI:48343" :NAME "disulfide")
 ("eicosanoids" "ONT:MOLECULE" :ID "CHEBI:23899" :NAME "icosanoid")
 ("hydrochloride" "ONT:MOLECULE" :ID "CHEBI:36807" :NAME "hydrochloride")
 ("hydroxyl" "ONT:MOLECULE" :ID "CHEBI:29191" :NAME "hydroxyl")
 ("iodonium" "ONT:MOLECULE" :ID "CHEBI:50317" :NAME "iodonium")
 ("ketone" "ONT:MOLECULE" :ID "CHEBI:17087" :NAME "ketone")
 ("Yorkie" "ONT:ORGANISM" :ID "NCIT:C53946" :NAME "yorkshire terrier")
 ("RasV12" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C48409" :NAME
  "monoclonal antibody RAV12")
 ("Ro31-8220" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1310" :NAME
  "Ro 31-8220")
 ("Romidepsin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C087123" :NAME
  "romidepsin")
 ("SAR260301" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C116882" :NAME
  "PI3K-beta inhibitor SAR260301")
 ("SB216763" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C417521" :NAME
  "SB 216763")
 ("SB415286" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C417520" :NAME
  "3-(3-chloro-4-hydroxyphenylamino)-4-(4-nitrophenyl)-1H-pyrrole-2,5-dione")
 ("SBI" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C116883" :NAME
  "serum-derived bovine immunoglobulin protein isolate")
 ("SCH772984" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C587178" :NAME
  "SCH772984")
 ("SF1126" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C85469" :NAME
  "pan-PI3K mTOR inhibitor SF1126")
 ("SKF-96365" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C063159" :NAME
  "1-(2-(3-(4-methoxyphenyl)propoxy)-4-methoxyphenylethyl)-1H-imidazole")
 ("SL327" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:92211" :NAME "SL-327")
 ("SR144528" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C110630" :NAME
  "SR 144528")
 ("SerpinB5" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C085344" :NAME
  "SERPIN-B5")
 ("Shikonin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C016101" :NAME "shikonin")
 ("TIC10" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C113792" :NAME
  "akt ERK inhibitor ONC201")
 ("TMPyP4" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C021096" :NAME
  "tetra(4-N-methylpyridyl)porphine")
 ("TUDCA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C031655" :NAME
  "tauroursodeoxycholic acid")
 ("Tranilast" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C012293" :NAME
  "tranilast")
 ("U3-1287" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C78853" :NAME
  "anti-HER3 monoclonal antibody U3-1287")
 ("URB597" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C500528" :NAME
  "cyclohexyl carbamic acid 3'-carbamoylbiphenyl-3-yl ester")
 ("URMC-099" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C583037" :NAME "URMC-099")
 ("VAS2870" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C511179" :NAME
  "3-benzyl-7-(2-benzoxazolyl)thio-1,2,3-triazolo(4,5-d)pyrimidine")
 ("Vitexin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C032731" :NAME "vitexin")
 ("ZSTK474" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C510150" :NAME "ZSTK474")
 ("acetaminophen" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C198" :NAME
  "acetaminophen")
 ("acetylcholine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C77840" :NAME
  "acetylcholine")
 ("adjuvant" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:60809" :NAME "adjuvant")
 ("adrenocorticotropin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C212" :NAME
  "therapeutic corticotropin")
 ("afzelin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C477954" :NAME "afzelin")
 ("albendazole" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C47384" :NAME
  "albendazole")
 ("alizarin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C010078" :NAME "alizarin")
 ("allicin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C006452" :NAME "allicin")
 ("amitriptyline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C28819" :NAME
  "amitriptyline")
 ("anemonin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C028304" :NAME "anemonin")
 ("apatinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C74012" :NAME "apatinib")
 ("apigenin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:18388" :NAME "apigenin")
 ("artemisinin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C78093" :NAME
  "artemisinin")
 ("baicalin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C038044" :NAME "baicalin")
 ("biflorin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C522781" :NAME "biflorin")
 ("binimetinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C84865" :NAME
  "MEK inhibitor ARRY-438162")
 ("bufalin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C022777" :NAME "bufalin")
 ("buparlisib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C90565" :NAME
  "PI3K inhibitor BKM120")
 ("cafestol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C053400" :NAME "cafestol")
 ("capsazepine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C071423" :NAME
  "capsazepine")
 ("carbachol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C47430" :NAME
  "carbachol")
 ("carboplatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1282" :NAME
  "carboplatin")
 ("chelerythrine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C016299" :NAME
  "chelerythrine")
 ("ciprofloxacin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C375" :NAME
  "ciprofloxacin")
 ("clofazimine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C47456" :NAME
  "clofazimine")
 ("cordycepin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1057" :NAME
  "cordycepin")
 ("cyclopamine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C000541" :NAME
  "cyclopamine")
 ("cyclosporine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C406" :NAME
  "cyclosporine")
 ("cypermethrin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C017160" :NAME
  "cypermethrin")
 ("dactinomycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C412" :NAME
  "dactinomycin")
 ("daidzein" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1060" :NAME "daidzein")
 ("dapagliflozin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C78126" :NAME
  "dapagliflozin")
 ("daphnetin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C039952" :NAME
  "daphnetin")
 ("digitoxin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C2634" :NAME "digitoxin")
 ("diosmetin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C039602" :NAME
  "diosmetin")
 ("doxazosin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C61737" :NAME
  "doxazosin")
 ("emodin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C466" :NAME "emodin")
 ("enalapril" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C468" :NAME "enalapril")
 ("entrectinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C114984" :NAME
  "trkA B C ROS1 ALK tyrosine kinase inhibitor RXDX-101")
 ("esmolol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C72617" :NAME "esmolol")
 ("etomoxir" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C81111" :NAME "etomoxir")
 ("fasudil" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C65624" :NAME "fasudil")
 ("fisetin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C017875" :NAME "fisetin")
 ("fluoxetine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C506" :NAME
  "fluoxetine")
 ("gartanin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:5279" :NAME "gartanin")
 ("gossypol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C529" :NAME "gossypol")
 ("gp120" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29554" :NAME
  "gp-120 antigen")
 ("harmine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C97713" :NAME "harmine")
 ("hinokitiol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C009479" :NAME
  "beta-thujaplicin")
 ("indomethacin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C576" :NAME
  "indomethacin")
 ("isoquercitrin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C99879" :NAME
  "isoquercitrin")
 ("ketamine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C61797" :NAME "ketamine")
 ("Rg1" "ONT:PROTEIN" :ID "UP:Q16821" :NAME
  "Protein phosphatase 1 regulatory subunit 3A")
 ("Rho1" "ONT:PROTEIN" :ID "UP:P24406" :NAME "Transforming protein RhoA")
 ("SAGA" "ONT:PROTEIN" :ID "NCIT:C19804" :NAME "SAGA")
 ("SHI" "ONT:PROTEIN" :ID "UP:P19651" :NAME
  "Delta-stichotoxin-She1a {ECO:0000303PubMed:22683676}")
 ("SL" "ONT:PROTEIN" :ID "UP:P05045" :NAME "Seed lectin subunit I")
 ("SMases" "ONT:PROTEIN" :ID "UP:P09599" :NAME "Sphingomyelinase C")
 ("ST6Gal-I" "ONT:PROTEIN" :ID "UP:Q92182" :NAME
  "Beta-galactoside alpha-2,6-sialyltransferase 1")
 ("TSL" "ONT:PROTEIN" :ID "UP:Q3T7C9" :NAME
  "Diphthamide biosynthesis protein 1")
 ("TrxR" "ONT:PROTEIN" :ID "UP:P80892" :NAME "Thioredoxin reductase")
 ("VAP" "ONT:PROTEIN" :ID "UP:P03552" :NAME "Virion-associated protein")
 ("WiHog1A" "ONT:PROTEIN" :ID "UP:A3EZ55" :NAME
  "Mitogen-activated protein kinase HOG1A")
 ("WiHog1B" "ONT:PROTEIN" :ID "UP:M1T7M3" :NAME
  "Mitogen-activated protein kinase HOG1B")
 ("alpha-MSH-" "ONT:PROTEIN" :ID "NCIT:C114797" :NAME "melanotropin alpha")
 ("alpha-actinin-4" "ONT:PROTEIN" :ID "NCIT:C126634" :NAME "alpha-actinin-4")
 ("caerulein" "ONT:PROTEIN" :ID "UP:P56264" :NAME "Caerulein")
 ("caspases-9" "ONT:PROTEIN" :ID "UP:P55211" :NAME "Caspase-9")
 ("caveolin-3" "ONT:PROTEIN" :ID "UP:Q2KI43" :NAME "Caveolin-3")
 ("chemerin" "ONT:PROTEIN" :ID "UP:Q29RS5" :NAME
  "Retinoic acid receptor responder protein 2")
 ("cytolysin" "ONT:PROTEIN" :ID "UP:P19247" :NAME "Cytolysin")
 ("dSRF" "ONT:PROTEIN" :ID "UP:Q24535" :NAME "Serum response factor homolog")
 ("defensin" "ONT:PROTEIN" :ID "UP:Q86QI5" :NAME "Defensin")
 ("demethylases" "ONT:PROTEIN" :ID "GO:0032451" :NAME "demethylase activity")
 ("dstat" "ONT:PROTEIN" :ID "UP:Q24151" :NAME
  "Signal transducer and transcription activator")
 ("esterases" "ONT:PROTEIN" :ID "UP:P22266" :NAME "Esterase")
 ("glycodelin" "ONT:PROTEIN" :ID "UP:P09466" :NAME "Glycodelin")
 ("SNF" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF00209.16" :NAME "SNF")
 ("SREBP" "ONT:PROTEIN-FAMILY" :ID "FA:03825" :NAME "SREBP family")
 ("UT" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF03253.12" :NAME "UT")
 ("janus" "ONT:PROTEIN-FAMILY" :ID "FA:01933" :NAME "janus family")

 ("mycobacteria" "ONT:BACTERIUM" :ID "NCIT:C76369" :NAME "mycobacterium")
 ("lytic" "ONT:BIOLOGICAL-PROCESS" :ID "NCIT:C37889" :NAME "lysis")
 ("synovium" "ONT:BODY-PART" :ID "EFO:0001393" :NAME "synovial membrane")
 ("motoneuron" "ONT:CELL" :ID "CO:0000100" :NAME "motor neuron")
 ("spermatogonia" "ONT:CELL" :ID "BTO:0000958" :NAME "spermatogonium")
 ("splenocytes" "ONT:CELL" :ID "CO:2000074" :NAME "splenocyte")
 ("thymocytes" "ONT:CELL" :ID "BTO:0001372" :NAME "thymocyte")
 ("sEH" "ONT:CELL-LINE" :ID "CVCL:R855" :NAME "SEH")
 ("mOsM" "ONT:CELL-PART" :ID "GO:0036407" :NAME "mycolate outer membrane")
 ("micronucleus" "ONT:CELL-PART" :ID "GO:0031040" :NAME "micronucleus")
 ("lentinan" "ONT:CHEMICAL" :ID "CHEBI:31770" :NAME "Lentinan (TN)")
 ("luzindole" "ONT:CHEMICAL" :ID "CHEBI:131788" :NAME "luzindole")
 ("myristate" "ONT:CHEMICAL" :ID "CHEBI:30807" :NAME "tetradecanoate")
 ("nitrite" "ONT:CHEMICAL" :ID "CHEBI:16301" :NAME "nitrite")
 ("oestradiol" "ONT:CHEMICAL" :ID "CHEBI:23965" :NAME "estradiol")
 ("paraquat" "ONT:CHEMICAL" :ID "CHEBI:34905" :NAME "paraquat")
 ("propidium" "ONT:CHEMICAL" :ID "CHEBI:51246" :NAME "propidium")
 ("rutin" "ONT:CHEMICAL" :ID "CHEBI:28527" :NAME "rutin")
 ("serotonin" "ONT:CHEMICAL" :ID "CHEBI:28790" :NAME "serotonin")
 ("squalene" "ONT:CHEMICAL" :ID "CHEBI:15440" :NAME "squalene")
 ("testosterone" "ONT:CHEMICAL" :ID "CHEBI:17347" :NAME "testosterone")
 ("tocotrienol" "ONT:CHEMICAL" :ID "CHEBI:33235" :NAME "tocotrienol")
 ("tunicamycin" "ONT:CHEMICAL" :ID "CHEBI:29699" :NAME "tunicamycin")
 ("mut" "ONT:GENE" :ID "HGNC:7526" :NAME "methylmalonyl-CoA mutase")
 ("p2" "ONT:GENE" :ID "HGNC:9138" :NAME "exosome component 10")
 ("p38delta" "ONT:GENE" :ID "NCIT:C51218" :NAME "MAPK13")
 ("pgc1a" "ONT:GENE" :ID "NCIT:C116294" :NAME "PPARGC1A")
 ("vasa" "ONT:GENE" :ID "HGNC:18700" :NAME "DEAD-box helicase 4")
 ("zif268" "ONT:GENE" :ID "NCIT:C99600" :NAME "EGR1")
 ("klotho" "ONT:GENE-PROTEIN" :ID "HGNC:6344" :NAME "klotho")
 ("melittin" "ONT:GENE-PROTEIN" :ID "UP:P68407" :NAME "Melittin")
 ("mir" "ONT:GENE-PROTEIN" :ID "UP:Q93105" :NAME "Insulin-like receptor")
 ("mono-oxygenase" "ONT:GENE-PROTEIN" :ID "GO:0004497" :NAME
  "monooxygenase activity")
 ("myh11" "ONT:GENE-PROTEIN" :ID "HGNC:7569" :NAME "myosin heavy chain 11")
 ("myocardin" "ONT:GENE-PROTEIN" :ID "HGNC:16067" :NAME "myocardin")
 ("myostatin" "ONT:GENE-PROTEIN" :ID "HGNC:4223" :NAME "myostatin")
 ("nSMase2" "ONT:GENE-PROTEIN" :ID "NCIT:C105032" :NAME
  "sphingomyelin phosphodiesterase 3")
 ("p190" "ONT:GENE-PROTEIN" :ID "NCIT:C25999" :NAME
  "contactin associated protein-1")
 ("p67" "ONT:GENE-PROTEIN" :ID "NCIT:C97245" :NAME "CD33")
 ("p85beta" "ONT:GENE-PROTEIN" :ID "NCIT:C101285" :NAME
  "phosphatidylinositol 3-kinase regulatory subunit beta")
 ("periostin" "ONT:GENE-PROTEIN" :ID "HGNC:16953" :NAME "periostin")
 ("perlecan" "ONT:GENE-PROTEIN" :ID "NCIT:C95448" :NAME
  "basement membrane-specific heparan sulfate proteoglycan core protein")
 ("ref" "ONT:GENE-PROTEIN" :ID "XFAM:PF05755.10" :NAME "REF")
 ("synuclein" "ONT:GENE-PROTEIN" :ID "UP:P37379" :NAME "Synuclein")
 ("tNOX" "ONT:GENE-PROTEIN" :ID "HGNC:2259" :NAME
  "ecto-NOX disulfide-thiol exchanger 2")
 ("ttk" "ONT:GENE-PROTEIN" :ID "HGNC:12401" :NAME "TTK protein kinase")
 ("visfatin" "ONT:GENE-PROTEIN" :ID "NCIT:C30138" :NAME
  "pre-B-cell colony-enhancing factor")
 ("nematode" "ONT:INVERTEBRATE" :ID "NCIT:C14248" :NAME "nematodes")
 ("pIC" "ONT:MACROMOLECULAR-COMPLEX" :ID "GO:0019035" :NAME
  "viral integration complex")
 ("mV" "ONT:MEASURE-UNIT" :ID "UO:0000247" :NAME "millivolt")
 ("pM" "ONT:MEASURE-UNIT" :ID "UO:0000066" :NAME "picomolar")
 ("microphthalmia" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0005569"
  :NAME "microphthalmia")
 ("preeclampsia" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "NCIT:C85021" :NAME
  "preeclampsia")
 ("retinopathy" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:0003839" :NAME
  "retinopathy")
 ("uveitis" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID "EFO:1001231" :NAME
  "uveitis")
 ("methyladenine" "ONT:MOLECULE" :ID "CHEBI:25272" :NAME "methyladenine")
 ("mevalonate" "ONT:MOLECULE" :ID "CHEBI:25350" :NAME "mevalonate")
 ("miR-10b" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-125b" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-150-5p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-15b" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-199a-5p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-200c" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-204-3p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-221-3p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-222-3p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-23a" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-27a-3p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-27a-5p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-302b" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-31-5p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-34a" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-362-5p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-365b-3p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-425-3p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-450b-5p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR-550a-3p" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("miR155" "ONT:MOLECULE" :ID NIL :NAME NIL)
 ("mononucleotide" "ONT:MOLECULE" :ID "CHEBI:29075" :NAME "mononucleotide")
 ("nanorod" "ONT:MOLECULE" :ID "CHEBI:50805" :NAME "nanorod")
 ("peptidoglycan" "ONT:MOLECULE" :ID "CHEBI:8005" :NAME "peptidoglycan")
 ("tartrate" "ONT:MOLECULE" :ID "CHEBI:132950" :NAME "tartrate")
 ("terpinen-4-ol" "ONT:MOLECULE" :ID "CHEBI:132655" :NAME "Terpinen-4-ol")
 ("tosylate" "ONT:MOLECULE" :ID "CHEBI:27023" :NAME "toluene-4-sulfonate")
 ("urea" "ONT:MOLECULE" :ID "CHEBI:16199" :NAME "urea")
 ("landiolol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C79125" :NAME
  "landiolol")
 ("leflunomide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1128" :NAME
  "leflunomide")
 ("levofloxacin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1586" :NAME
  "levofloxacin")
 ("limonene" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C008281" :NAME "limonene")
 ("locostatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C529490" :NAME
  "locostatin")
 ("lymphotoxin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C622" :NAME
  "therapeutic tumor necrosis factor-beta")
 ("mangiferin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C013592" :NAME
  "mangiferin")
 ("methotrexate" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C642" :NAME
  "methotrexate")
 ("mibefradil" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C87686" :NAME
  "mibefradil")
 ("mithramycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:31856" :NAME
  "mithramycin")
 ("montelukast" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C66189" :NAME
  "montelukast")
 ("nabilone" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1171" :NAME "nabilone")
 ("naftopidil" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C72927" :NAME
  "naftopidil")
 ("nelfinavir" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29285" :NAME
  "nelfinavir")
 ("nortriptyline" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C704" :NAME
  "nortriptyline")
 ("octopamine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C75043" :NAME
  "octopamine")
 ("octreotide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C711" :NAME
  "octreotide")
 ("oridonin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C011959" :NAME "oridonin")
 ("pelargonidin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C066957" :NAME
  "pelargonidin")
 ("pembrolizumab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C106432" :NAME
  "lambrolizumab")
 ("phorbol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C033085" :NAME "phorbol")
 ("phorbol-12-myristate-13-acetate" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
  "CHEBI:37537" :NAME "phorbol 13-acetate 12-myristate")
 ("photosensitizer" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1420" :NAME
  "photosensitizing agent")
 ("picropodophyllin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C87736" :NAME
  "picropodophyllin")
 ("pinocembrin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C016063" :NAME
  "pinocembrin")
 ("piperine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C72629" :NAME "piperine")
 ("polydatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C058229" :NAME
  "polydatin")
 ("pranlukast" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C96712" :NAME
  "pranlukast")
 ("pravastatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:63618" :NAME
  "pravastatin")
 ("prazosin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C767" :NAME "prazosin")
 ("propranolol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C62073" :NAME
  "propranolol")
 ("puromycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C787" :NAME "puromycin")
 ("pyridine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C023666" :NAME "pyridine")
 ("quinacrine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C87656" :NAME
  "quinacrine")
 ("ranitidine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C29412" :NAME
  "ranitidine")
 ("rociletinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C99905" :NAME
  "EGFR inhibitor CO-1686")
 ("rosiglitazone" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C089730" :NAME
  "rosiglitazone")
 ("rtPA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C39607" :NAME
  "recombinant tissue plasminogen activator")
 ("saponin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C823" :NAME "saponin")
 ("sesamin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C054125" :NAME "sesamin")
 ("sirtinol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C439060" :NAME "sirtinol")
 ("sphingosine-1-phosphate" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:37550"
  :NAME "sphingosine 1-phosphate")
 ("sulfonates" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C222" :NAME
  "alkylsulfonate compound")
 ("tanespimycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C112765" :NAME
  "tanespimycin")
 ("taxane" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C080625" :NAME "taxane")
 ("telmisartan" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C47746" :NAME
  "telmisartan")
 ("terazosin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C61964" :NAME
  "terazosin")
 ("tetrathiomolybdate" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C020809" :NAME
  "tetrathiomolybdate")
 ("thiamine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:26948" :NAME "thiamine")
 ("thiomolybdate" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C020809" :NAME
  "tetrathiomolybdate")
 ("thymoquinone" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C003466" :NAME
  "thymoquinone")
 ("tiliroside" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C052083" :NAME
  "tiliroside")
 ("tiotidine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C023990" :NAME
  "tiotidine")
 ("trifluoperazine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "CHEBI:45951" :NAME
  "trifluoperazine")
 ("triiodothyronine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C907" :NAME
  "therapeutic triiodothyronine")
 ("tryptamine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C030820" :NAME
  "tryptamine")
 ("vinblastine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C930" :NAME
  "vinblastine")
 ("vincristine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C933" :NAME
  "vincristine")
 ("vinorelbine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C1275" :NAME
  "vinorelbine")
 ("vitexin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C032731" :NAME "vitexin")
 ("z-VAD-fmk" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C096713" :NAME
  "benzyloxycarbonylvalyl-alanyl-aspartyl fluoromethyl ketone")
 ("zingerone" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "MESH:C013738" :NAME
  "zingerone")
 ("matrix metalloproteinase-2" "ONT:PROTEIN" :ID "NCIT:C17592" :NAME
  "matrix metalloproteinase-2")
 ("matrix metalloproteinase-9" "ONT:PROTEIN" :ID "UP:P14780" :NAME
  "Matrix metalloproteinase-9")
 ("p46" "ONT:PROTEIN" :ID "UP:Q9BY77" :NAME
  "Polymerase delta-interacting protein 3")
 ("phosphofructokinase-2" "ONT:PROTEIN" :ID "UP:Q27483" :NAME
  "ATP-dependent 6-phosphofructokinase 2")
 ("praja2" "ONT:PROTEIN" :ID "UP:O43164" :NAME
  "E3 ubiquitin-protein ligase Praja-2")
 ("relaxin" "ONT:PROTEIN" :ID "UP:P11184" :NAME "Relaxin")
 ("relaxin-3" "ONT:PROTEIN" :ID "UP:Q8WXF3" :NAME "Relaxin-3")
 ("spi" "ONT:PROTEIN" :ID "NCIT:C17284" :NAME "chromogranin-A")
 ("triphosphatases" "ONT:PROTEIN" :ID "GO:0050355" :NAME
  "triphosphatase activity")
 ("tristetraprolin" "ONT:PROTEIN" :ID "UP:P53781" :NAME "Tristetraprolin")
 ("neur" "ONT:PROTEIN-FAMILY" :ID "XFAM:PF00064.16" :NAME "neur")
 ("prion" "ONT:PROTEIN-FAMILY" :ID "FA:03015" :NAME "prion family")
 ("tribbles" "ONT:PROTEIN-FAMILY" :ID "FA:03081" :NAME "tribbles subfamily")


    ))


(defparameter *suppressed-trips-terms*
  ;; Looks like TRIPS really did not have these -- REFERENTIAL-SEM is a punting operation
  '(
    ("3G8" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("61L64D" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("761AAA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("764AAA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ACEA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
    ("ACEA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ADAM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AEW541" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AFT4" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AG83" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AIII" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AKAP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AKT8055" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AMG655" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AMPAR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AMPI-109" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AMPKK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AMPKK1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AMPKK2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ARS853" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("AT1R" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BANCR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BAY" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BAY11-7802" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BBB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BC087858" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BCSC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BEZ2325" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BIBR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BL0269" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BME" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BMM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BMNC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BNDF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BRAFV600" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BRCA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BRET" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BTSC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BUN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("BYL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CAERS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CAY10603" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CC0417" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CCGN2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CCHE1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CCL12" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CCX754" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CCX771" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CFM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CGC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CKR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CMA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CNV" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CPCG" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CRM197" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CRPE55IB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CXCR3A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CXCR3B" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CXCR4WT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CYP2A4" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CYP2B9" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CYP2D9" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("CYP2F2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("DASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("DCA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("DHPH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("DITC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("DMPB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("DSB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("DTX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("DUF1669" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ED" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("EE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("EGFR1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ELISA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ELMO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("EPS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ERK5C" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ERK5N" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ERL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ERS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("EWS-FLI-1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("EY" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("FP08S2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("FRB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("GBC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("GILZ1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("GINST" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("GMSYS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("GRE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("GSEA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("GSK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("GU" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("GVBD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("H2B1L" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("H2B2E" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HADC6" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HBEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HCQ" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HDA6" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HFD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HIF2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HIPPIE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HNK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HNSCC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HOGMAPK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HPC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HPCM2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HR38" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HRASN17" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HRASV12" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("HS1FY" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ICH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("IKC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("IPR1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("IRES" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ISL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ISO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ITAF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("IVH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("JAB34" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("JMD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("JQ1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("KDIA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("KG5" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("KKKSGCLLL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("KMT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("KRAS4B" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("KRASV12" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("KU004" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("LEF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("LET-23" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("LIMT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("LKPK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("LMWCS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("LNE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("LR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("LTR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("LZ" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MAP3K" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MCAO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MCLR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MEDICA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MEK5D" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MEKK1-KM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MGRX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MN8" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MPH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MPK3" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MPK4" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MPK6" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("MPK7" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("N-myristoylation" "ONT:REFERENTIAL-SEM" :ID "NCIT:C19420" :NAME "N-myristoylation") 
    ("NEDD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("NF023" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("NFT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("NLS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("NOX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("NRW172" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("NRW173" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("NYPT1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("OAM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("OHDA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("OHU" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ORFV002" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("OSKM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("OVX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("OXHPOS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("P4501A1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PAC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PAEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PAK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PAPR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PBLCPCS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PCOL1A1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PCV2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PD09825" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PD980759" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PD98509" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PDK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PF-384" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PF023041066" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PGN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PI3KCA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PIKK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PKGII" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PNS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PPE25" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PPE26" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PPXY" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PSEP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PTEN-S380A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("PTEN-S385A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("QF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("QHF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("QVD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("RASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("RFS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("RGD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("RIE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("RMEL3" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ROCK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("RPS6KAB1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("RVI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SB202191" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SBL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SCVT2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SIRT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SLC25A25-AS1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SLCB050" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SMART" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SNORD113-1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SNP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("STAT3C" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("SUMA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("T187-198A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("TBI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("TCF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("TCGA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("TLR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("TRPC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("TSCC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("U251TMZ1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("U251TMZ2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("UA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("UKN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("UTR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("UUO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("UV" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("UVB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("VD3" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("VMN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("WAY-600" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("WM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("WSP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("WXXL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
    ("WXXL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("ZMP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL) 
    ("mono-ubiquitination" "ONT:REFERENTIAL-SEM" :ID "NCIT:C21588" :NAME "monoubiquitination")
     ("A1AR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AAI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AAV" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ACEA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ADAM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ADSC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ADSC-CM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AEC2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AFT4" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AG4178" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AG83" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AIII" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AKT-S473" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AKT-T308" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AKTT473" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ALCAR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ALE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AMPAR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AMPI-109" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AOF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AOPP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("APP8" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("APS-2-79" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("APY606" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ARPS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ARS853" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AT1R" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ATCC334" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AUCB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AVM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AVO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("AZ191" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BADGE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BAI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BANCR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BAY" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BAY11-7802" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BBB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BBG" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BBR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BC087858" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BCAO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BCN1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BCT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BEZ2325" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BF65" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BFD-22" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BGH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BIBR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BL0269" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BLBC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BLSP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BME" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BMM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BMNC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BNDF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BRAF-MEK-ERK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BRAF-S729" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BRAFV600" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BRET" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BRLF1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BSCB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BSTA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BTSC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BUN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BYL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("BZLF1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CAERS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CAR10" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CAY10603" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CB1R" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CC0417" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CCHE1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CCRT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CGC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CHAG" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CHMP4" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CIAP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CIMP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CMCE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CMSE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CMSP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CMVE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CND" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CONT7" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("COV08-0064" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CPCG" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CRM197" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CRPE55IB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CUPM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CUR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CWI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CXCR3A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("CXCR3B" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DCA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DETD-35" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DEX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DFS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DHPH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DHTO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DITC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DMPB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DSB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DSF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DTX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DUOX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("DYT-40" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EC50" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EC80" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ECAR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ED" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EGFR1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EGFR2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ELISA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EM23" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EOC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EPEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EPS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ERL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ERS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ESB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ESCRT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ETEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ETME" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EV71" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EVH1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EWS-FLI-1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("EY" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("FDPI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("FGLE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("FLGE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("FP08S2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("FRB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("FSK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("FTI-277" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("G0G1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GBC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GILZ1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GINST" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GJIC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GMSYS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GS493" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GSK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GSK2807" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GU" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GVBD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("H3K27" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("H3K79" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("H3K9" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("H3S10" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("H3S28" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("H4K5" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HADC6" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HBEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HCQ" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HDA6" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HFB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HFD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HGHI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("GAS" "ONT:SUBSTANCE" :ID "NCIT:C45299" :NAME "gas")
    ("HIAA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HIF2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HLJ" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HMH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HNK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HNSCC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HOGMAPK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HPASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HPC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HPCM2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HPMEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HR38" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HRASV12" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HRMEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HSYA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("HVT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("IC50" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ICH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ICI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ICN1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("IEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("IG7" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("IHG" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("IKC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ILD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ILV" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("IPR1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("IRES" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ISC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ISL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ISO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ISR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ITAF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ITD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("IVH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("JNK-AP-1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("JNK-SAPK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("JQ1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("K55-5" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("KASP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("KG5" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("KR-36676" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("KRAS4B" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("KRASG12" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("KU004" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LADC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LC3I" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LC3II" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LCSC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LEF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LET-23" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LFCS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LID" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LIMT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LIPUS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LKPK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LMMS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LMP-2A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LMP2A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LMR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LMWCS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LNE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LPACT1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LTR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LVEDP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LVESP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("LZ" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MAP3K" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MAPKAP2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MASO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MAZ-385A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MC388" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MC78" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MCAO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MCLR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MDSC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MEDICA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MEKK1-KM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MFX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MGRX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MIFMIF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MLN-4760" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MLN4760" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MM41" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MN8" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MNA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MPH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MPK1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MPK3" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MPK4" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MPK6" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MPK7" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MRTF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MRTF-26A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MRTF26A" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MVIH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("MYC2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NBNR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NDH01" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NEDD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NF023" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NFT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NICD1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NLS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NOK1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NOX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NRW172" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NRW173" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NSC624205" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NUCC-390" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NYG" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("NYPT1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("OAM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ODN107" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ODN2395" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("OEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("OHDA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("OHU" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ORP1L" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ORR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("OSKM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("OVCAR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("OVX" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("OXHPOS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("P2X4R" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PAC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PAEC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PAK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PAMAM-PLA-OH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PAMAM-PLA-PEG-OCH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PCOL1A1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PCV2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PD023309" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PD09825" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PD980759" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PD98095" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PDD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PDE4D5" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PDK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PDLSC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PF-384" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PF-562271" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PF023041066" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PF562271" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PFS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PGN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PIKK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PKGII" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PMK2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PPE25" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PPE26" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PSEP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PSPLE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PSVII" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PTH1-34" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PTU" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PU" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PVMM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("PWT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("QF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("QGC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("QHF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("QVD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("R-2HG" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RASMC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RBD35" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RESET" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RFS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RGD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RGZ" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RIE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RIPC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RMEL3" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("ROCK" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RSG19" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RSPO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("RVI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
    ("RXM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
    ("S-phase" "ONT:TIME-SPAN" :ID "GO:0051320" :NAME "S phase")
    ("M-phase" "ONT:TIME-SPAN" :ID "GO:0000279" :NAME "M phase")
     ("S2095-4964" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SB203880" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SBL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SCPP11" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SCVT2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SE11" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SEAP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SFZYD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SGC0946" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SHO1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SHP099" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SIRT" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SKT11" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SLC25A25-AS1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SLCB050" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SLGT2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SMOC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SNP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SO7661" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SPRC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SR11302" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("STAT3C" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("SUMA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("T2DN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TB4" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TBA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TBI" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TCCD" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TCF" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TCM" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TJE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TLR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TME" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TMPRSS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TNBC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TNG" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TRPC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("TSCC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("U251TMZ1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("U251TMZ2" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("U251U0126" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UCMS" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UFH" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UKN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UL135" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UL138" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UUO" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UV" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("UVB" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("VD3" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("VEGR" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("VGCC" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("VK1" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("VMN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("VYE" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("WAY-600" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("WFA" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("WSP" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("WXXL" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("XN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
 ("XRP44X" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
    ("ZQFTN" "ONT:REFERENTIAL-SEM" :ID NIL :NAME NIL)
    ("Ab" "ONT:PROTEIN" :ID "NCIT:C16295" :NAME "antibody") 
 ("AB" "ONT:FISH" :ID "NCIT:C79967" :NAME "zebrafish line AB")
 ("Ab" "ONT:PROTEIN" :ID "NCIT:C16295" :NAME "antibody")

    ))

(loop for term in *trips-terms* do (define-trips-term term))
