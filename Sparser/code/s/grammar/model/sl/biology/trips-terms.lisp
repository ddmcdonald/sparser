(in-package :sparser)

(defun define-trips-term (term)
  (eval (trips-term->def-bio term)))

(defun trips-term->def-bio (term)
  (let ((category (trips-class->krisp (second term))))
    (case category
      ((residue-on-protein molecular-site) nil)
      ((protein gene cell-line molecule cancer organism)
       `(def-bio ,(car term)
            ,category
          :long ,(getf (cddr term) :name)
          :identifier ,(simplify-colons
                        (getf (cddr term) :id))))
      (t
       `(define-category ,(intern (car term) (find-package :sp))
            :specializes ,category
            :bindings (uid ,(simplify-colons (getf (cddr term) :id)))
            :realization
            (:noun ,(car term)))))))

(defun simplify-colons (x)
  (if (search "::" x)
      (concatenate 'string
                   (subseq x 0 (search "::" x) )
                   ":"
                   (subseq x (+ 2 (search "::" x) )))
      x))
    
(defun trips-class->krisp (class-string)
  (ecase (intern (subseq class-string 4)) ;; drop the ONT:
    ((protein gene-protein) 'protein) ;; we treat genes as if they name the protein
    (gene 'gene)
    (bacterium 'bacterium)
    (biological-process 'bio-process)
    ((internal-body-part body-part) 'bio-organ)
    (cancer 'cancer)
    (cell 'cell-type)
    (cell-line 'cell-line)
    (cell-part 'cellular-location)
    (chemical 'bio-chemical-entity)
    (macromolecular-complex 'bio-complex)
    (measure-unit 'unit-of-measure)
    (medical-disorders-and-conditions 'disease)
    (medical-instrument 'bio-method) ;; not quite, but we don't distinguish the instruments from the methods
    (molecular-domain 'protein-domain)
    (molecule 'molecule)
    (molecular-site 'residue-on-protein)
    (mutation 'point-mutation)
    ((organism nonhuman-animal) 'organism)
    (pharmacologic-substance 'drug)
    (physical-condition 'disease)
    (procedure 'bio-method)
    (process 'bio-method) ;; the one case we have here is a bio-method -- transplantation
    (protein-family 'protein-family)
    (referential-sem 'referential-sem) ;; huh?
    (rna 'rna)
    (virus 'virus)))





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
    ("RB" "ONT:CELL-LINE" :ID "CVCL:L985" :NAME "RB") 
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
    ("Estrogen" "ONT:CHEMICAL" :ID "CHEBI:50114" :NAME "estrogen") 
    ("FAD" "ONT:CHEMICAL" :ID "CHEBI:16238" :NAME "FAD") 
    ("GD3" "ONT:CHEMICAL" :ID "CHEBI:28424" :NAME
     "alpha-N-acetylneuraminosyl-(2->8)-alpha-N-acetylneuraminosyl-(2->3)-beta-D-galactosyl-(1->4)-beta-D-glucosyl-(1<->1')-ceramide") 
    ("GV" "ONT:CHEMICAL" :ID "CHEBI:73922" :NAME "Gly-Val") 
    ("Haem" "ONT:CHEMICAL" :ID "CHEBI:30413" :NAME "heme") 
    ("IH" "ONT:CHEMICAL" :ID "CHEBI:73520" :NAME "Ile-His") 
    ("Icariin" "ONT:CHEMICAL" :ID "CHEBI:78420" :NAME "icariin") 
    ("Ionomycin" "ONT:CHEMICAL" :ID "CHEBI:63954" :NAME "ionomycin") 
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
    ("A2A" "ONT:MUTATION" :ID NIL :NAME NIL) 
    ("B1R" "ONT:MUTATION" :ID NIL :NAME NIL) 
    ("D2L" "ONT:MUTATION" :ID NIL :NAME NIL) 
    ("D2R" "ONT:MUTATION" :ID NIL :NAME NIL) 
    ("E2F" "ONT:MUTATION" :ID NIL :NAME NIL) 
    ("H4R" "ONT:MUTATION" :ID NIL :NAME NIL) 
    ("K45R" "ONT:MUTATION" :ID NIL :NAME NIL) 
    ("S6P" "ONT:MUTATION" :ID NIL :NAME NIL) 
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
    ("G12V" "ONT:MUTATION" :ID NIL :NAME NIL) 
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
("IRS" "ONT:MOLECULAR-DOMAIN" :ID "XFAM:PF02174.15" :NAME "IRS") 
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
("20A" "ONT:MUTATION" :ID NIL :NAME NIL) 
("64D" "ONT:MUTATION" :ID NIL :NAME NIL) 
("64F" "ONT:MUTATION" :ID NIL :NAME NIL) 
("D770_N771insNPG" "ONT:MUTATION" :ID NIL :NAME NIL) 
("K224A" "ONT:MUTATION" :ID NIL :NAME NIL) 
("L747_E749del" "ONT:MUTATION" :ID NIL :NAME NIL) 
("S1P" "ONT:MUTATION" :ID NIL :NAME NIL) 
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
;;("Ab" "ONT:PROTEIN" :ID "NCIT:C16295" :NAME "antibody") 
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


    ))


(defparameter *ref-sems*
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

    ))

(loop for term in *trips-terms* do (define-trips-term term))
