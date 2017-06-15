(in-package :sparser)

(defparameter *SUPPRESSED-HYPHENATED-NEW-WORDS* '((CANCER "retinoblastoma"
                                                   ("retino-blastoma"
                                                    "ONT:CANCER" :ID
                                                    "NCIT:C7541" :NAME
                                                    "retinoblastoma"))
                                                  (CELL-TYPE "cfus"
                                                   ("CFU-S" "ONT:CELL" :ID
                                                    "BTO:0000725" :NAME
                                                    "hematopoietic stem cell"))
                                                  (CELL-LINE "nab"
                                                   ("N-Ab" "ONT:CELL-LINE" :ID
                                                    "CVCL:9T72" :NAME "NAB"))
                                                  (CELL-LINE "cad"
                                                   ("c-Ad" "ONT:CELL-LINE" :ID
                                                    "CVCL:0199" :NAME "CAD"))
                                                  (CELL-LINE "CPC"
                                                   ("CP-C" "ONT:CELL-LINE" :ID
                                                    "CVCL:C453" :NAME "CP-C"))
                                                  (CELL-LINE "GSE"
                                                   ("GS-E" "ONT:CELL-LINE" :ID
                                                    "CVCL:6F81" :NAME "GSE"))
                                                  (CELL-LINE "KKA"
                                                   ("KK-A" "ONT:CELL-LINE" :ID
                                                    "CVCL:5T72" :NAME "KKA"))
                                                  (CELLULAR-LOCATION
                                                   "crossbridges"
                                                   ("cross-bridges"
                                                    "ONT:CELL-PART" :ID
                                                    "GO:0097595" :NAME
                                                    "ventral disc crossbridge"))
                                                  (MOLECULE "ade"
                                                   ("Ad-E" "ONT:CHEMICAL" :ID
                                                    "CHEBI:16708" :NAME
                                                    "adenine"))
                                                  (MOLECULE
                                                   "dehydroepiandrosterone"
                                                   ("dehydroepi-androsterone"
                                                    "ONT:CHEMICAL" :ID
                                                    "CHEBI:28689" :NAME
                                                    "dehydroepiandrosterone"))
                                                  (MOLECULE "homocysteine"
                                                   ("homo-cysteine"
                                                    "ONT:CHEMICAL" :ID
                                                    "CHEBI:17230" :NAME
                                                    "homocysteine"))
                                                  (MOLECULE "AGG"
                                                   ("A-G-G" "ONT:CHEMICAL" :ID
                                                    "CHEBI:73837" :NAME
                                                    "D-Ala-Gly-Gly"))
                                                  (PROTEIN "EDB"
                                                   ("ED-B" "ONT:GENE" :ID
                                                    "NCIT:C52484" :NAME "FN1"))
                                                  (PROTEIN "GTA"
                                                   ("G-T-A" "ONT:GENE" :ID
                                                    "NCIT:C77164" :NAME
                                                    "ITGA2B"))
                                                  (PROTEIN "ack"
                                                   ("Ac-K" "ONT:GENE" :ID
                                                    "NCIT:C51063" :NAME
                                                    "ACK1"))
                                                  (PROTEIN "flii"
                                                   ("Fli-I" "ONT:GENE" :ID
                                                    "HGNC:3750" :NAME
                                                    "FLII, actin remodeling protein"))
                                                  (PROTEIN "spib"
                                                   ("Spi-B" "ONT:GENE" :ID
                                                    "HGNC:11242" :NAME
                                                    "Spi-B transcription factor"))
                                                  (PROTEIN "ACD"
                                                   ("AC-D" "ONT:GENE" :ID
                                                    "HGNC:25070" :NAME
                                                    "ACD, shelterin complex subunit and telomerase recruitment factor"))
                                                  (PROTEIN "acds"
                                                   ("AC-Ds" "ONT:GENE" :ID
                                                    "HGNC:25070" :NAME
                                                    "ACD, shelterin complex subunit and telomerase recruitment factor"))
                                                  (PROTEIN "EDA"
                                                   ("ED-A" "ONT:GENE" :ID
                                                    "HGNC:3157" :NAME
                                                    "ectodysplasin A"))
                                                  (PROTEIN "AAG"
                                                   ("A-A-G" "ONT:GENE" :ID
                                                    "NCIT:C94721" :NAME "MPG"))
                                                  (PROTEIN "fancj"
                                                   ("Fanc-J" "ONT:GENE" :ID
                                                    "NCIT:C63527" :NAME
                                                    "BRIP1"))
                                                  (PROTEIN "GGC"
                                                   ("G-G-C" "ONT:GENE" :ID
                                                    "HGNC:21705" :NAME
                                                    "gamma-glutamylcyclotransferase"))
                                                  (PROTEIN "HLAE"
                                                   ("HLA-E" "ONT:GENE" :ID
                                                    "HGNC:4962" :NAME
                                                    "major histocompatibility complex, class I, E"))
                                                  (PROTEIN "MPRIP"
                                                   ("MP-RIP" "ONT:GENE" :ID
                                                    "HGNC:30321" :NAME
                                                    "myosin phosphatase Rho interacting protein"))
                                                  (PROTEIN "AGA"
                                                   ("A-G-A" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:318" :NAME
                                                    "aspartylglucosaminidase"))
                                                  (PROTEIN "API"
                                                   ("AP-I" "ONT:GENE-PROTEIN"
                                                    :ID "UP:Q9M1T1" :NAME
                                                    "Probable arabinose 5-phosphate isomerase"))
                                                  (PROTEIN "cab"
                                                   ("C-Ab" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P27523" :NAME
                                                    "Chlorophyll a-b binding protein of LHCII type III, chloroplastic"))
                                                  (PROTEIN "cblc"
                                                   ("Cbl-C" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:15961" :NAME
                                                    "Cbl proto-oncogene C"))
                                                  (PROTEIN "FOSB"
                                                   ("FOS-B" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:3797" :NAME
                                                    "FosB proto-oncogene, AP-1 transcription factor subunit"))
                                                  (PROTEIN "HLAF"
                                                   ("HLA-F" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:4963" :NAME
                                                    "major histocompatibility complex, class I, F"))
                                                  (PROTEIN "pca"
                                                   ("PC-A" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P00299" :NAME
                                                    "Plastocyanin A, chloroplastic"))
                                                  (PROTEIN "PCB"
                                                   ("PC-B" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P11970" :NAME
                                                    "Plastocyanin B, chloroplastic"))
                                                  (PROTEIN "TSHR"
                                                   ("TSH-R" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:12373" :NAME
                                                    "thyroid stimulating hormone receptor"))
                                                  (PROTEIN "CENPB"
                                                   ("CENP-B" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:1852" :NAME
                                                    "centromere protein B"))
                                                  (PROTEIN "CENPC"
                                                   ("CENP-C" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:1854" :NAME
                                                    "centromere protein C"))
                                                  (PROTEIN "CENPE"
                                                   ("CENP-E" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:1856" :NAME
                                                    "centromere protein E"))
                                                  (PROTEIN "NFIA"
                                                   ("NFI-A" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P17923" :NAME
                                                    "Nuclear factor 1 A-type"))
                                                  (PROTEIN "NFIB"
                                                   ("NFI-B" "ONT:GENE-PROTEIN"
                                                    :ID "UP:Q0VCL6" :NAME
                                                    "Nuclear factor 1 B-type"))
                                                  (PROTEIN "NFIL"
                                                   ("NFI-L" "ONT:GENE-PROTEIN"
                                                    :ID "NCIT:C38400" :NAME
                                                    "NF-IA protein"))
                                                  (PROTEIN "NFIX"
                                                   ("NFI-X" "ONT:GENE-PROTEIN"
                                                    :ID "UP:Q90932" :NAME
                                                    "Nuclear factor 1 X-type"))
                                                  (PROTEIN "rras"
                                                   ("R-Ras" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:10447" :NAME
                                                    "related RAS viral (r-ras) oncogene homolog"))
                                                  (PROTEIN "SPD"
                                                   ("SP-D" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P35247" :NAME
                                                    "Pulmonary surfactant-associated protein D"))
                                                  (PROTEIN "amyb"
                                                   ("A-Myb" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P52550" :NAME
                                                    "Myb-related protein A"))
                                                  (PROTEIN "cps"
                                                   ("CP-s" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:2295" :NAME
                                                    "ceruloplasmin"))
                                                  (PROTEIN "EPOR"
                                                   ("EPO-R" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P19235" :NAME
                                                    "Erythropoietin receptor"))
                                                  (PROTEIN "NELFB"
                                                   ("NELF-B" "ONT:GENE-PROTEIN"
                                                    :ID "UP:Q8WX92" :NAME
                                                    "Negative elongation factor B"))
                                                  (PROTEIN "NELFE"
                                                   ("NELF-E" "ONT:GENE-PROTEIN"
                                                    :ID "UP:Q0V898" :NAME
                                                    "Negative elongation factor E"))
                                                  (PROTEIN "PDGFC"
                                                   ("PDGF-C" "ONT:GENE-PROTEIN"
                                                    :ID "UP:Q9I946" :NAME
                                                    "Platelet-derived growth factor C"))
                                                  (PROTEIN "pdgfra"
                                                   ("Pdgfr-a"
                                                    "ONT:GENE-PROTEIN" :ID
                                                    "HGNC:8803" :NAME
                                                    "platelet derived growth factor receptor alpha"))
                                                  (PROTEIN "VEGFB"
                                                   ("VEGF-B" "ONT:GENE-PROTEIN"
                                                    :ID "UP:Q9XS49" :NAME
                                                    "Vascular endothelial growth factor B"))
                                                  (PROTEIN "cfms"
                                                   ("c-FMS" "ONT:GENE-PROTEIN"
                                                    :ID "NCIT:C51347" :NAME
                                                    "CSF1R"))
                                                  (PROTEIN "CAC"
                                                   ("C-A-C" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:1421" :NAME
                                                    "solute carrier family 25 member 20"))
                                                  (PROTEIN "CENPF"
                                                   ("CENP-F" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P49454" :NAME
                                                    "Centromere protein F"))
                                                  (PROTEIN "hinfp"
                                                   ("HiNF-P" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:17850" :NAME
                                                    "histone H4 transcription factor"))
                                                  (PROTEIN "mras"
                                                   ("M-ras" "ONT:GENE-PROTEIN"
                                                    :ID "NCIT:C52548" :NAME
                                                    "MRAS"))
                                                  (PROTEIN "NCAM"
                                                   ("N-CAM" "ONT:GENE-PROTEIN"
                                                    :ID "NCIT:C25276" :NAME
                                                    "neural cell adhesion molecule"))
                                                  (PROTEIN "NFYB"
                                                   ("NF-YB" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:7805" :NAME
                                                    "nuclear transcription factor Y subunit beta"))
                                                  (PROTEIN "NFYC"
                                                   ("NF-YC" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:7806" :NAME
                                                    "nuclear transcription factor Y subunit gamma"))
                                                  (PROTEIN "VEGFC"
                                                   ("VEGF-C" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P49767" :NAME
                                                    "Vascular endothelial growth factor C"))
                                                  (PROTEIN "VEGFD"
                                                   ("VEGF-D" "ONT:GENE-PROTEIN"
                                                    :ID "UP:O43915" :NAME
                                                    "Vascular endothelial growth factor D {ECO:0000312|HGNC:HGNC:3708}"))
                                                  (PROTEIN "tpa"
                                                   ("t-PA" "ONT:GENE-PROTEIN"
                                                    :ID "UP:P00750" :NAME
                                                    "Tissue-type plasminogen activator"))
                                                  (PROTEIN-DOMAIN "cros"
                                                   ("c-ros"
                                                    "ONT:MOLECULAR-DOMAIN" :ID
                                                    "XFAM:PF09048.8" :NAME
                                                    "cro"))
                                                  (PROTEIN-DOMAIN "DEAD"
                                                   ("D-E-A-D"
                                                    "ONT:MOLECULAR-DOMAIN" :ID
                                                    "XFAM:PF00270.27" :NAME
                                                    "DEAD"))
                                                  (MOLECULE "HDLC"
                                                   ("HDL-C" "ONT:MOLECULE" :ID
                                                    "CHEBI:47775" :NAME
                                                    "high-density lipoprotein cholesterol"))
                                                  (DRUG "EXD"
                                                   ("E-X-D"
                                                    "ONT:PHARMACOLOGIC-SUBSTANCE"
                                                    :ID "MESH:C000171" :NAME
                                                    "dixanthogen"))
                                                  (DRUG "ATG"
                                                   ("A-T-G"
                                                    "ONT:PHARMACOLOGIC-SUBSTANCE"
                                                    :ID "NCIT:C278" :NAME
                                                    "antithymocyte globulin"))
                                                  (DRUG "autoantigens"
                                                   ("auto-antigens"
                                                    "ONT:PHARMACOLOGIC-SUBSTANCE"
                                                    :ID "NCIT:C20972" :NAME
                                                    "autoantigen"))
                                                  (BIO-METHOD "cDNA"
                                                   ("c-DNA" "ONT:PROCESS" :ID
                                                    "EFO:0004187" :NAME
                                                    "cDNA library construction"))
                                                  (PROTEIN "GAPN"
                                                   ("GAP-N" "ONT:PROTEIN" :ID
                                                    "UP:Q3C1A6" :NAME
                                                    "NADP-dependent glyceraldehyde-3-phosphate dehydrogenase"))
                                                  (PROTEIN "CVN"
                                                   ("CV-N" "ONT:PROTEIN" :ID
                                                    "UP:P81180" :NAME
                                                    "Cyanovirin-N"))
                                                  (PROTEIN "lysc"
                                                   ("Lys-C" "ONT:PROTEIN" :ID
                                                    "UP:Q7M135" :NAME
                                                    "Lysyl endopeptidase"))
                                                  (PROTEIN "HMGD"
                                                   ("HMG-D" "ONT:PROTEIN" :ID
                                                    "UP:Q05783" :NAME
                                                    "High mobility group protein D"))
                                                  (PROTEIN "PRB"
                                                   ("PR-B" "ONT:PROTEIN" :ID
                                                    "NCIT:C17075" :NAME
                                                    "progesterone receptor"))
                                                  (PROTEIN "chemoattractant"
                                                   ("chemo-attractant"
                                                    "ONT:PROTEIN" :ID
                                                    "GO:0042056" :NAME
                                                    "chemoattractant activity"))
                                                  (PROTEIN-FAMILY "ephrinA"
                                                   ("ephrin-A"
                                                    "ONT:PROTEIN-FAMILY" :ID
                                                    "NCIT:C113247" :NAME
                                                    "ephrin-A"))
                                                  (PROTEIN-FAMILY "trex"
                                                   ("T-Rex"
                                                    "ONT:PROTEIN-FAMILY" :ID
                                                    "FA:01185" :NAME
                                                    "TREX family"))))

(defparameter *SUPPRESSED-MOD-REDEFS* '(("downcase" "streptococcus"
                                         ("Streptococcus" "ONT:BACTERIUM" :ID
                                          "NCIT:C76383" :NAME "streptococcus"))
                                        ("downcase" "ois"
                                         ("OIS" "ONT:BIOLOGICAL-PROCESS" :ID
                                          "GO:0090402" :NAME
                                          "oncogene-induced cell senescence"))
                                        ("downcase" "nmds"
                                         ("NMDs" "ONT:BIOLOGICAL-PROCESS" :ID
                                          "NCIT:C29648" :NAME
                                          "nonsense-mediated decay"))
                                        ("downcase" "mpt"
                                         ("mPT" "ONT:BIOLOGICAL-PROCESS" :ID
                                          "GO:0035794" :NAME
                                          "positive regulation of mitochondrial membrane permeability"))
                                        ("downcase" "upr"
                                         ("uPR" "ONT:BIOLOGICAL-PROCESS" :ID
                                          "NCIT:C118900" :NAME
                                          "unfolded protein response"))
                                        ("downcase" "hair"
                                         ("Hair" "ONT:BODY-PART" :ID
                                          "EFO:0000958" :NAME "hair"))
                                        ("downcase" "gbms"
                                         ("GBMs" "ONT:CANCER" :ID "EFO:0000519"
                                          :NAME "glioblastoma multiforme"))
                                        ("downcase" "gbm"
                                         ("GBM" "ONT:CANCER" :ID "EFO:0000519"
                                          :NAME "glioblastoma multiforme"))
                                        ("downcase" "ipmns"
                                         ("IPMNs" "ONT:CANCER" :ID
                                          "NCIT:C38342" :NAME
                                          "pancreatic intraductal papillary-mucinous neoplasm"))
                                        ("downcase" "mfhs"
                                         ("MFHs" "ONT:CANCER" :ID "NCIT:C4247"
                                          :NAME
                                          "malignant fibrous histiocytoma"))
                                        ("downcase" "mzls"
                                         ("MZLs" "ONT:CANCER" :ID "EFO:1000630"
                                          :NAME
                                          "marginal zone B-cell lymphoma"))
                                        ("downcase" "necs"
                                         ("NECs" "ONT:CANCER" :ID "NCIT:C3773"
                                          :NAME "neuroendocrine carcinoma"))
                                        ("downcase" "panin"
                                         ("PanIN" "ONT:CANCER" :ID "NCIT:C4845"
                                          :NAME
                                          "pancreatic intraepithelial neoplasia"))
                                        ("downcase" "ptcls"
                                         ("PTCLs" "ONT:CANCER" :ID "NCIT:C3468"
                                          :NAME
                                          "mature T-cell and NK-cell non-hodgkin s lymphoma"))
                                        ("downcase" "plls"
                                         ("PLLs" "ONT:CANCER" :ID "NCIT:C3181"
                                          :NAME "prolymphocytic leukemia"))
                                        ("downcase" "rccs"
                                         ("RCCs" "ONT:CANCER" :ID "EFO:0000681"
                                          :NAME "renal cell carcinoma"))
                                        ("downcase" "sfts"
                                         ("SFTs" "ONT:CANCER" :ID "NCIT:C7634"
                                          :NAME "solitary fibrous tumor"))
                                        ("downcase" "sclcs"
                                         ("SCLCs" "ONT:CANCER" :ID
                                          "EFO:0000702" :NAME
                                          "small cell lung carcinoma"))
                                        ("downcase" "sclc"
                                         ("SCLC" "ONT:CANCER" :ID "EFO:0000702"
                                          :NAME "small cell lung carcinoma"))
                                        ("downcase" "fvptcs"
                                         ("fvPTCs" "ONT:CANCER" :ID
                                          "NCIT:C126594" :NAME
                                          "follicular variant thyroid gland papillary carcinoma"))
                                        ("downcase" "bmdc"
                                         ("BMDC" "ONT:CELL" :ID "BTO:0003857"
                                          :NAME
                                          "bone marrow-derived dendritic cell"))
                                        ("downcase" "vsmcs"
                                         ("VSMCs" "ONT:CELL" :ID "CO:0000359"
                                          :NAME
                                          "vascular associated smooth muscle cell"))
                                        ("downcase" "ipcs"
                                         ("IPCs" "ONT:CELL" :ID "CO:0000784"
                                          :NAME "plasmacytoid dendritic cell"))
                                        ("downcase" "lecs"
                                         ("LECs" "ONT:CELL" :ID "CO:0002138"
                                          :NAME
                                          "endothelial cell of lymphatic vessel"))
                                        ("downcase" "pbscs"
                                         ("PBSCs" "ONT:CELL" :ID "CO:0002246"
                                          :NAME "peripheral blood stem cell"))
                                        ("downcase" "pbmcs"
                                         ("PBMCs" "ONT:CELL" :ID "BTO:0001025"
                                          :NAME
                                          "peripheral blood mononuclear cell"))
                                        ("downcase" "pbmc"
                                         ("PBMC" "ONT:CELL" :ID "BTO:0001025"
                                          :NAME
                                          "peripheral blood mononuclear cell"))
                                        ("downcase" "pmn"
                                         ("PMN" "ONT:CELL" :ID "BTO:0003473"
                                          :NAME
                                          "polymorphonuclear neutrophil"))
                                        ("downcase" "tregs"
                                         ("TRegs" "ONT:CELL" :ID "CO:0000792"
                                          :NAME
                                          "CD4-positive, CD25-positive, alpha-beta regulatory T cell"))
                                        ("downcase" "atregs"
                                         ("aTregs" "ONT:CELL" :ID "CO:0000902"
                                          :NAME "induced T-regulatory cell"))
                                        ("downcase" "vsmc"
                                         ("vSMC" "ONT:CELL" :ID "CO:0000359"
                                          :NAME
                                          "vascular associated smooth muscle cell"))
                                        ("downcase" "coc1"
                                         ("COC1" "ONT:CELL-LINE" :ID
                                          "CVCL:6891" :NAME "CoC1"))
                                        ("hyphens-dc" "ab1"
                                         ("Ab-1" "ONT:CELL-LINE" :ID
                                          "CVCL:N791" :NAME "AB1 [Mouse ESC]"))
                                        ("downcase" "kyse150"
                                         ("KYSE150" "ONT:CELL-LINE" :ID
                                          "CVCL:1348" :NAME "KYSE-150"))
                                        ("hyphens-dc" "hc10"
                                         ("HC-10" "ONT:CELL-LINE" :ID
                                          "CVCL:1K02" :NAME "GM13492"))
                                        ("hyphens-dc" "hbec2"
                                         ("HBEC-2" "ONT:CELL-LINE" :ID
                                          "CVCL:X490" :NAME "HBEC2-KT"))
                                        ("hyphens-dc" "rmg1"
                                         ("RMG-1" "ONT:CELL-LINE" :ID
                                          "CVCL:1662" :NAME "RMG-I"))
                                        ("hyphens" "SUM52PE"
                                         ("SUM-52PE" "ONT:CELL-LINE" :ID
                                          "CVCL:3425" :NAME "SUM52PE"))
                                        ("upcase" "SN-1"
                                         ("sN-1" "ONT:CELL-LINE" :ID
                                          "CVCL:B075" :NAME "SN-1"))
                                        ("downcase" "hn2"
                                         ("HN2" "ONT:CELL-LINE" :ID "CVCL:8125"
                                          :NAME "HN-2"))
                                        ("downcase" "hgc27"
                                         ("HGC27" "ONT:CELL-LINE" :ID
                                          "CVCL:1279" :NAME "HGC-27"))
                                        ("downcase" "hek293a"
                                         ("HEK293a" "ONT:CELL-LINE" :ID
                                          "CVCL:6910" :NAME "HEK293-A"))
                                        ("downcase" "igrov1"
                                         ("IGROV1" "ONT:CELL-LINE" :ID
                                          "CVCL:1304" :NAME "IGROV-1"))
                                        ("downcase" "heya8"
                                         ("HeyA8" "ONT:CELL-LINE" :ID
                                          "CVCL:8878" :NAME "HEY A8"))
                                        ("downcase" "hepg2"
                                         ("HepG2" "ONT:CELL-LINE" :ID
                                          "CVCL:0027" :NAME "Hep-G2"))
                                        ("downcase" "hep3b"
                                         ("Hep3b" "ONT:CELL-LINE" :ID
                                          "EFO:0002205" :NAME "Hep3B"))
                                        ("downcase" "huvec"
                                         ("HUVEC" "ONT:CELL-LINE" :ID
                                          "BTO:0001949" :NAME "HUVEC cell"))
                                        ("downcase" "ht144"
                                         ("HT144" "ONT:CELL-LINE" :ID
                                          "CVCL:0318" :NAME "HT-144"))
                                        ("downcase" "jh2"
                                         ("JH2" "ONT:CELL-LINE" :ID "CVCL:V634"
                                          :NAME "JH-2/TPA"))
                                        ("downcase" "imr5"
                                         ("IMR5" "ONT:CELL-LINE" :ID
                                          "CVCL:1306" :NAME "IMR-5"))
                                        ("downcase" "lcc2"
                                         ("LCC2" "ONT:CELL-LINE" :ID
                                          "CVCL:DP51" :NAME "MCF7/LCC2"))
                                        ("downcase" "kg1a"
                                         ("KG1a" "ONT:CELL-LINE" :ID
                                          "CVCL:1824" :NAME "KG-1a"))
                                        ("downcase" "mnng"
                                         ("MNNG" "ONT:CELL-LINE" :ID
                                          "CVCL:0439" :NAME "MNNG/HOS Cl #5"))
                                        ("downcase" "mh2"
                                         ("MH2" "ONT:CELL-LINE" :ID "CVCL:AT89"
                                          :NAME "MH-2"))
                                        ("downcase" "ly3"
                                         ("Ly3" "ONT:CELL-LINE" :ID "CVCL:8800"
                                          :NAME "OCI-Ly3"))
                                        ("downcase" "ls174t"
                                         ("Ls174T" "ONT:CELL-LINE" :ID
                                          "EFO:0002227" :NAME "LS174T"))
                                        ("downcase" "n2a"
                                         ("N2a" "ONT:CELL-LINE" :ID "CVCL:0470"
                                          :NAME "Neuro-2a"))
                                        ("upcase" "MOU"
                                         ("Mou" "ONT:CELL-LINE" :ID "CVCL:E782"
                                          :NAME "MOU"))
                                        ("downcase" "molt3"
                                         ("Molt3" "ONT:CELL-LINE" :ID
                                          "EFO:0005265" :NAME "MOLT-3"))
                                        ("downcase" "nm1"
                                         ("NM1" "ONT:CELL-LINE" :ID "CVCL:3074"
                                          :NAME "NM-1"))
                                        ("downcase" "ovcar5"
                                         ("OVCAR5" "ONT:CELL-LINE" :ID
                                          "CVCL:1628" :NAME "OVCAR-5"))
                                        ("downcase" "rsf"
                                         ("Rsf" "ONT:CELL-LINE" :ID "CVCL:R984"
                                          :NAME "RSF"))
                                        ("downcase" "rat1a"
                                         ("Rat1a" "ONT:CELL-LINE" :ID
                                          "CVCL:0512" :NAME "Rat1A"))
                                        ("downcase" "sum1315"
                                         ("SUM1315" "ONT:CELL-LINE" :ID
                                          "CVCL:5589" :NAME "SUM1315MO2"))
                                        ("downcase" "snb19"
                                         ("SNB19" "ONT:CELL-LINE" :ID
                                          "CVCL:0535" :NAME "SNB-19"))
                                        ("downcase" "scc40"
                                         ("SCC40" "ONT:CELL-LINE" :ID
                                          "CVCL:M666" :NAME "SCC-40"))
                                        ("downcase" "te11"
                                         ("Te11" "ONT:CELL-LINE" :ID
                                          "CVCL:1761" :NAME "TE-11"))
                                        ("upcase" "TAT1"
                                         ("Tat1" "ONT:CELL-LINE" :ID
                                          "CVCL:T980" :NAME "TAT1"))
                                        ("upcase" "I11"
                                         ("i11" "ONT:CELL-LINE" :ID "CVCL:2H89"
                                          :NAME "I11"))
                                        ("downcase" "mar"
                                         ("mAR" "ONT:CELL-LINE" :ID "CVCL:0B87"
                                          :NAME "MAR"))
                                        ("downcase" "ps46"
                                         ("pS46" "ONT:CELL-LINE" :ID
                                          "CVCL:0E48" :NAME "PS 46"))
                                        ("downcase" "ps120"
                                         ("pS120" "ONT:CELL-LINE" :ID
                                          "CVCL:0488" :NAME "PS120"))
                                        ("downcase" "pba"
                                         ("pBa" "ONT:CELL-LINE" :ID "CVCL:4T88"
                                          :NAME "Patas-BARF1"))
                                        ("downcase" "pas"
                                         ("pAS" "ONT:CELL-LINE" :ID "CVCL:R914"
                                          :NAME "PAS"))
                                        ("downcase" "scvs"
                                         ("SCVs" "ONT:CELL-PART" :ID
                                          "GO:0020003" :NAME
                                          "symbiont-containing vacuole"))
                                        ("downcase" "imcs"
                                         ("IMCs" "ONT:CELL-PART" :ID
                                          "UP:SL-0362" :NAME
                                          "Inner membrane complex"))
                                        ("downcase" "rers"
                                         ("RERs" "ONT:CELL-PART" :ID
                                          "GO:0005791" :NAME
                                          "rough endoplasmic reticulum"))
                                        ("downcase" "mtdna"
                                         ("mtDNA" "ONT:CELL-PART" :ID
                                          "GO:0000262" :NAME
                                          "mitochondrial chromosome"))
                                        ("downcase" "diarylheptanoid"
                                         ("Diarylheptanoid" "ONT:CHEMICAL" :ID
                                          "CHEBI:78802" :NAME
                                          "diarylheptanoid"))
                                        ("downcase" "pbdes"
                                         ("PBDEs" "ONT:CHEMICAL" :ID
                                          "NCIT:C125231" :NAME
                                          "polybrominated diphenyl ether"))
                                        ("downcase" "mufas"
                                         ("MUFAs" "ONT:CHEMICAL" :ID
                                          "CHEBI:25413" :NAME
                                          "monounsaturated fatty acid"))
                                        ("downcase" "galnac"
                                         ("GalNAc" "ONT:CHEMICAL" :ID
                                          "CHEBI:28800" :NAME
                                          "N-acetylgalactosamine"))
                                        ("downcase" "gga"
                                         ("GGA" "ONT:CHEMICAL" :ID
                                          "CHEBI:73899" :NAME "Gly-Gly-Ala"))
                                        ("downcase" "gd2"
                                         ("GD2" "ONT:CHEMICAL" :ID
                                          "CHEBI:28648" :NAME
                                          "beta-GalNAc-(1->4)-[alpha-Neu5Ac-(2->8)-alpha-Neu5Ac-(2->3)]-beta-Gal-(1->4)-beta-Glc-(1<->1')-Cer"))
                                        ("downcase" "gaba"
                                         ("GABA" "ONT:CHEMICAL" :ID
                                          "CHEBI:16865" :NAME
                                          "gamma-aminobutyric acid"))
                                        ("downcase" "hdacis"
                                         ("HDACis" "ONT:CHEMICAL" :ID
                                          "CHEBI:61115" :NAME
                                          "EC 3.5.1.98 (histone deacetylase) inhibitor"))
                                        ("downcase" "hepes"
                                         ("Hepes" "ONT:CHEMICAL" :ID
                                          "CHEBI:46756" :NAME "HEPES"))
                                        ("downcase" "hemoglobin"
                                         ("Hemoglobin" "ONT:CHEMICAL" :ID
                                          "CHEBI:35143" :NAME "hemoglobin"))
                                        ("downcase" "kcl"
                                         ("KCl" "ONT:CHEMICAL" :ID
                                          "CHEBI:32588" :NAME
                                          "potassium chloride"))
                                        ("downcase" "lll"
                                         ("LLL" "ONT:CHEMICAL" :ID
                                          "CHEBI:74541" :NAME "Leu-Leu-Leu"))
                                        ("downcase" "mtt"
                                         ("MTT" "ONT:CHEMICAL" :ID
                                          "CHEBI:53233" :NAME
                                          "3-(4,5-dimethylthiazol-2-yl)-2,5-diphenyltetrazolium bromide"))
                                        ("downcase" "np40"
                                         ("NP40" "ONT:CHEMICAL" :ID
                                          "CHEBI:63016" :NAME
                                          "nonyl phenoxypolyethoxylethanol"))
                                        ("downcase" "pdb"
                                         ("PDB" "ONT:CHEMICAL" :ID
                                          "NCIT:C44297" :NAME
                                          "1 4-dichlorobenzene"))
                                        ("downcase" "pops"
                                         ("POPs" "ONT:CHEMICAL" :ID
                                          "CHEBI:77853" :NAME
                                          "persistent organic pollutant"))
                                        ("downcase" "pmp"
                                         ("PMP" "ONT:CHEMICAL" :ID
                                          "CHEBI:90766" :NAME
                                          "alpha-D-Manp6P-(1->3)-alpha-D-Manp-(1->3)-alpha-D-Manp-(1->3)-alpha-D-Manp-(1->2)-D-Manp"))
                                        ("downcase" "cmh"
                                         ("cmH" "ONT:CHEMICAL" :ID
                                          "CHEBI:62107" :NAME
                                          "beta-D-glucosyl-N-(docosanoyl)sphingosine"))
                                        ("downcase" "mirlet7e"
                                         ("Mirlet7e" "ONT:GENE" :ID
                                          "NCIT:C81859" :NAME "MIRLET7E"))
                                        ("downcase" "s-tag"
                                         ("S-tag" "ONT:GENE-PROTEIN" :ID
                                          "UP:P15000" :NAME "Small t antigen"))
                                        ("downcase" "pgc-1α"
                                         ("Pgc-1α" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q865B7" :NAME
                                          "Peroxisome proliferator-activated receptor gamma coactivator 1-alpha"))
                                        ("hyphens" "PDGFRβ"
                                         ("PDGF-Rβ" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q6QNF3" :NAME
                                          "Platelet-derived growth factor receptor beta"))
                                        ("upcase" "GAT"
                                         ("GaT" "ONT:GENE-PROTEIN" :ID
                                          "UP:P07464" :NAME
                                          "Galactoside O-acetyltransferase"))
                                        ("downcase" "fra1"
                                         ("Fra1" "ONT:GENE-PROTEIN" :ID
                                          "UP:P15407" :NAME
                                          "Fos-related antigen 1"))
                                        ("upcase" "H2AX"
                                         ("H2ax" "ONT:GENE-PROTEIN" :ID
                                          "NCIT:C52486" :NAME "H2AX"))
                                        ("upcase" "GRP78"
                                         ("Grp78" "ONT:GENE-PROTEIN" :ID
                                          "UP:P11021" :NAME
                                          "78 kDa glucose-regulated protein"))
                                        ("downcase" "grp1"
                                         ("Grp1" "ONT:GENE-PROTEIN" :ID
                                          "UP:O43739" :NAME "Cytohesin-3"))
                                        ("downcase" "gli"
                                         ("Gli" "ONT:GENE-PROTEIN" :ID
                                          "UP:P55878" :NAME
                                          "Zinc finger protein GLI1"))
                                        ("downcase" "hsp20"
                                         ("Hsp20" "ONT:GENE-PROTEIN" :ID
                                          "XFAM:PF00011.19" :NAME "HSP20"))
                                        ("downcase" "itch"
                                         ("Itch" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q96J02" :NAME
                                          "E3 ubiquitin-protein ligase Itchy homolog"))
                                        ("downcase" "irf"
                                         ("Irf" "ONT:GENE-PROTEIN" :ID
                                          "FA:01910" :NAME "IRF family"))
                                        ("downcase" "ikkα"
                                         ("Ikkα" "ONT:GENE-PROTEIN" :ID
                                          "UP:O15111" :NAME
                                          "Inhibitor of nuclear factor kappa-B kinase subunit alpha"))
                                        ("downcase" "lepr"
                                         ("LepR" "ONT:GENE-PROTEIN" :ID
                                          "UP:P48357" :NAME "Leptin receptor"))
                                        ("upcase" "LAMP1"
                                         ("Lamp1" "ONT:GENE-PROTEIN" :ID
                                          "NCIT:C104628" :NAME "LAMP1"))
                                        ("downcase" "mtb"
                                         ("Mtb" "ONT:GENE-PROTEIN" :ID
                                          "UP:P27087" :NAME
                                          "Metallothionein B"))
                                        ("downcase" "mcm"
                                         ("Mcm" "ONT:GENE-PROTEIN" :ID
                                          "UP:P22033" :NAME
                                          "Methylmalonyl-CoA mutase, mitochondrial"))
                                        ("downcase" "maspin"
                                         ("Maspin" "ONT:GENE-PROTEIN" :ID
                                          "NCIT:C17790" :NAME "maspin"))
                                        ("upcase" "MAD1"
                                         ("Mad1" "ONT:GENE-PROTEIN" :ID
                                          "FA:02139" :NAME "MAD1 family"))
                                        ("upcase" "NEDD8"
                                         ("Nedd8" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q15843" :NAME "NEDD8"))
                                        ("downcase" "pparγ"
                                         ("Pparγ" "ONT:GENE-PROTEIN" :ID
                                          "UP:P37231" :NAME
                                          "Peroxisome proliferator-activated receptor gamma"))
                                        ("downcase" "polycystin"
                                         ("Polycystin" "ONT:GENE-PROTEIN" :ID
                                          "FA:02910" :NAME
                                          "polycystin family"))
                                        ("downcase" "pgc1α"
                                         ("Pgc1α" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q865B7" :NAME
                                          "Peroxisome proliferator-activated receptor gamma coactivator 1-alpha"))
                                        ("downcase" "pdgfrβ"
                                         ("Pdgfrβ" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q6QNF3" :NAME
                                          "Platelet-derived growth factor receptor beta"))
                                        ("upcase" "PDGFR"
                                         ("Pdgfr" "ONT:GENE-PROTEIN" :ID
                                          "BE:PDGFR" :NAME "PDGFR"))
                                        ("upcase" "PAK3"
                                         ("Pak3" "ONT:GENE-PROTEIN" :ID
                                          "NCIT:C127850" :NAME "PAK3"))
                                        ("upcase" "PSA"
                                         ("PsA" "ONT:GENE-PROTEIN" :ID
                                          "UP:P07288" :NAME
                                          "Prostate-specific antigen"))
                                        ("downcase" "scf"
                                         ("Scf" "ONT:GENE-PROTEIN" :ID
                                          "FA:03513" :NAME "SCF family"))
                                        ("downcase" "sumo"
                                         ("Sumo" "ONT:GENE-PROTEIN" :ID
                                          "UP:P55853" :NAME
                                          "Small ubiquitin-related modifier"))
                                        ("downcase" "stat"
                                         ("Stat" "ONT:GENE-PROTEIN" :ID
                                          "UP:P08457" :NAME
                                          "Streptothricin acetyltransferase"))
                                        ("downcase" "spry2"
                                         ("Spry2" "ONT:GENE-PROTEIN" :ID
                                          "UP:O43597" :NAME
                                          "Protein sprouty homolog 2"))
                                        ("downcase" "snap"
                                         ("Snap" "ONT:GENE-PROTEIN" :ID
                                          "FA:03701" :NAME "SNAP family"))
                                        ("downcase" "smc"
                                         ("Smc" "ONT:GENE-PROTEIN" :ID
                                          "FA:03684" :NAME "SMC family"))
                                        ("upcase" "SIP1"
                                         ("Sip1" "ONT:GENE-PROTEIN" :ID
                                          "XFAM:PF04938.10" :NAME "SIP1"))
                                        ("upcase" "AKT"
                                         ("akt" "ONT:GENE-PROTEIN" :ID "BE:AKT"
                                          :NAME "AKT"))
                                        ("upcase" "ERBB4"
                                         ("erbB4" "ONT:GENE-PROTEIN" :ID
                                          "NCIT:C52167" :NAME "ERBB4"))
                                        ("upcase" "IKB"
                                         ("ikB" "ONT:GENE-PROTEIN" :ID "BE:IKB"
                                          :NAME "IKB"))
                                        ("upcase" "LKB1"
                                         ("lkb1" "ONT:GENE-PROTEIN" :ID
                                          "FA:03075" :NAME "LKB1 subfamily"))
                                        ("upcase" "MLCK"
                                         ("mlck" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q15746" :NAME
                                          "Myosin light chain kinase, smooth muscle"))
                                        ("downcase" "prf"
                                         ("pRF" "ONT:GENE-PROTEIN" :ID
                                          "XFAM:PF06875.9" :NAME "PRF"))
                                        ("downcase" "igg1"
                                         ("IgG1" "ONT:MACROMOLECULAR-COMPLEX"
                                          :ID "GO:0071735" :NAME
                                          "IgG immunoglobulin complex"))
                                        ("downcase" "pik"
                                         ("Pik" "ONT:MACROMOLECULAR-COMPLEX"
                                          :ID "GO:0019035" :NAME
                                          "viral integration complex"))
                                        ("downcase" "set1c"
                                         ("Set1C" "ONT:MACROMOLECULAR-COMPLEX"
                                          :ID "GO:0048188" :NAME
                                          "Set1C/COMPASS complex"))
                                        ("downcase" "moles"
                                         ("Moles" "ONT:MEASURE-UNIT" :ID
                                          "UO:0000013" :NAME "mole"))
                                        ("downcase" "mmol"
                                         ("Mmol" "ONT:MEASURE-UNIT" :ID
                                          "UO:0000040" :NAME "millimole"))
                                        ("downcase" "ppbs"
                                         ("PPBs" "ONT:MEASURE-UNIT" :ID
                                          "UO:0000170" :NAME
                                          "parts per billion"))
                                        ("downcase" "hpv"
                                         ("HPV"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:0001668" :NAME
                                          "human papilloma virus infection"))
                                        ("downcase" "hies"
                                         ("HIES"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C35549" :NAME
                                          "hypoxic encephalopathy"))
                                        ("downcase" "hcmv"
                                         ("HCMV"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:0001062" :NAME
                                          "cytomegalovirus infection"))
                                        ("downcase" "iips"
                                         ("IIPs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C35714" :NAME
                                          "idiopathic interstitial pneumonia"))
                                        ("downcase" "iims"
                                         ("IIMs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C116796" :NAME
                                          "idiopathic inflammatory myopathy"))
                                        ("downcase" "icds"
                                         ("ICDs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C34723" :NAME
                                          "impulse-control disorder"))
                                        ("downcase" "hypersomnias"
                                         ("Hypersomnias"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:0005246" :NAME
                                          "hypersomnia"))
                                        ("downcase" "hpvs"
                                         ("HPVs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:0001668" :NAME
                                          "human papilloma virus infection"))
                                        ("downcase" "ipfs"
                                         ("IPFs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:0000768" :NAME
                                          "idiopathic pulmonary fibrosis"))
                                        ("downcase" "ipf"
                                         ("IPF"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:0000768" :NAME
                                          "idiopathic pulmonary fibrosis"))
                                        ("downcase" "mpa"
                                         ("Mpa"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:1000784" :NAME
                                          "microscopic polyangiitis"))
                                        ("downcase" "pda"
                                         ("PDA"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C84492" :NAME
                                          "patent ductus arteriosus"))
                                        ("downcase" "pcc"
                                         ("PCC"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:0000239" :NAME
                                          "adrenal gland pheochromocytoma"))
                                        ("downcase" "pat"
                                         ("PAT"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C34900" :NAME
                                          "paroxysmal atrial tachycardia"))
                                        ("downcase" "oligomenorrhea"
                                         ("Oligomenorrhea"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C113341" :NAME
                                          "oligomenorrhea"))
                                        ("downcase" "obesity"
                                         ("Obesity"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:0001073" :NAME "obesity"))
                                        ("downcase" "ptlds"
                                         ("PTLDs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C4727" :NAME
                                          "post-transplant lymphoproliferative disorder"))
                                        ("downcase" "svts"
                                         ("SVTs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C35061" :NAME
                                          "supraventricular tachycardia"))
                                        ("downcase" "tca"
                                         ("Tca"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C101040" :NAME
                                          "total colonic aganglionisis"))
                                        ("downcase" "pres"
                                         ("preS"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C78598" :NAME
                                          "reversible posterior leukoencephalopathy syndrome"))
                                        ("downcase" "pin"
                                         ("Pin" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF01850.19" :NAME "PIN"))
                                        ("downcase" "rpcs"
                                         ("RPCs" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF03428.11" :NAME "RP-C"))
                                        ("downcase" "tad"
                                         ("TAD" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF13400.4" :NAME "tad"))
                                        ("downcase" "thais"
                                         ("Thais" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF15514.4" :NAME "ThaI"))
                                        ("downcase" "dbpa"
                                         ("dBPA" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF03880.13" :NAME "DbpA"))
                                        ("downcase" "trfs"
                                         ("tRFs" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF08558.8" :NAME "TRF"))
                                        ("downcase" "lnt"
                                         ("LNT" "ONT:MOLECULE" :ID
                                          "CHEBI:30248" :NAME
                                          "beta-D-Gal-(1->3)-beta-D-GlcNAc-(1->3)-beta-D-Gal-(1->4)-D-Glc"))
                                        ("downcase" "nbt"
                                         ("NBT" "ONT:MOLECULE" :ID "CHEBI:9505"
                                          :NAME
                                          "nitro blue tetrazolium dichloride"))
                                        ("downcase" "plla"
                                         ("PLLA" "ONT:MOLECULE" :ID
                                          "CHEBI:53408" :NAME
                                          "poly[(S)-lactic acid]"))
                                        ("downcase" "protein"
                                         ("Protein" "ONT:MOLECULE" :ID
                                          "CHEBI:36080" :NAME "protein"))
                                        ("downcase" "salt"
                                         ("Salt" "ONT:MOLECULE" :ID
                                          "CHEBI:24866" :NAME "salt"))
                                        ("downcase" "ptd"
                                         ("pTD" "ONT:MOLECULE" :ID
                                          "CHEBI:26025" :NAME
                                          "phosphatidyl group"))
                                        ("downcase" "fvb"
                                         ("FVB" "ONT:NONHUMAN-ANIMAL" :ID
                                          "NCIT:C37406" :NAME "FVB mouse"))
                                        ("downcase" "mouse"
                                         ("Mouse" "ONT:NONHUMAN-ANIMAL" :ID
                                          "NCIT:C14238" :NAME "mouse"))
                                        ("downcase" "pig"
                                         ("PIG" "ONT:NONHUMAN-ANIMAL" :ID
                                          "NCIT:C14280" :NAME "pig"))
                                        ("downcase" "rat"
                                         ("Rat" "ONT:NONHUMAN-ANIMAL" :ID
                                          "NCIT:C14266" :NAME "rat"))
                                        ("downcase" "c57bl"
                                         ("c57BL" "ONT:NONHUMAN-ANIMAL" :ID
                                          "NCIT:C37375" :NAME "C57BL mouse"))
                                        ("downcase" "yorkie"
                                         ("Yorkie" "ONT:ORGANISM" :ID
                                          "NCIT:C53946" :NAME
                                          "yorkshire terrier"))
                                        ("hyphens-dc" "ch223191"
                                         ("CH-223191"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C511621" :NAME
                                          "2-methyl-2H-pyrazole-3-carboxylic acid (2-methyl-4-o-tolylazophenyl)amide"))
                                        ("downcase" "atra"
                                         ("ATRA" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C900" :NAME
                                          "vitamin A acid"))
                                        ("hyphens-dc" "vx702"
                                         ("VX-702"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C517771" :NAME "VX 702"))
                                        ("downcase" "gaq3"
                                         ("GaQ3" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "MESH:C408502" :NAME
                                          "tris(8-quinolinolato)gallium (III)"))
                                        ("downcase" "gw1516"
                                         ("GW1516"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C425931" :NAME "GW 501516"))
                                        ("downcase" "gssg"
                                         ("GSSG" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C62624" :NAME
                                          "oxidized glutathione"))
                                        ("downcase" "gant61"
                                         ("GANT61"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C551027" :NAME "GANT 61"))
                                        ("downcase" "gsh"
                                         ("Gsh" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C523" :NAME "glutathione"))
                                        ("downcase" "honokiol"
                                         ("Honokiol"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C005499" :NAME "honokiol"))
                                        ("downcase" "ip6"
                                         ("IP6" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C87652" :NAME
                                          "phytic acid"))
                                        ("downcase" "ku55933"
                                         ("KU55933"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C495818" :NAME
                                          "2-morpholin-4-yl-6-thianthren-1-yl-pyran-4-one"))
                                        ("downcase" "klh"
                                         ("KLH" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C1139" :NAME
                                          "keyhole limpet hemocyanin"))
                                        ("downcase" "mln8237"
                                         ("MLN8237"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C71717" :NAME
                                          "aurora A kinase inhibitor MLN8237"))
                                        ("downcase" "mln4924"
                                         ("MLN4924"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C77906" :NAME
                                          "NAE inhibitor MLN4924"))
                                        ("downcase" "mehd7945a"
                                         ("MEHD7945A"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C116628" :NAME
                                          "anti-EGFR HER3 monoclonal antibody MEHD7945A"))
                                        ("downcase" "mce"
                                         ("MCE" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C91039" :NAME
                                          "metergoline"))
                                        ("downcase" "lovastatin"
                                         ("Lovastatin"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C620" :NAME "lovastatin"))
                                        ("downcase" "licl"
                                         ("LiCl" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "CHEBI:48607" :NAME
                                          "lithium chloride"))
                                        ("downcase" "mitosox"
                                         ("MitoSox"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C521281" :NAME
                                          "5-(6'-triphenylphosphoniumhexyl)-5,6-dihydro-6-phenyl-3,8-phenanthridinediammine"))
                                        ("downcase" "msm"
                                         ("MSM" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C84616" :NAME
                                          "dimethyl sulfone"))
                                        ("downcase" "niclosamide"
                                         ("Niclosamide"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C66240" :NAME "niclosamide"))
                                        ("downcase" "nvp"
                                         ("NVP" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C29277" :NAME
                                          "nevirapine"))
                                        ("downcase" "pdtc"
                                         ("PDTC" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C64185" :NAME
                                          "prolinedithiocarbamate"))
                                        ("downcase" "pd0325901"
                                         ("PD0325901"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C52195" :NAME "PD-0325901"))
                                        ("downcase" "pravastatin"
                                         ("Pravastatin"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "CHEBI:63618" :NAME "pravastatin"))
                                        ("downcase" "pge2"
                                         ("PgE2" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "CHEBI:15551" :NAME
                                          "prostaglandin E2"))
                                        ("downcase" "ptx"
                                         ("PTX" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C733" :NAME
                                          "pentoxifylline"))
                                        ("downcase" "rdea119"
                                         ("RDEA119"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C74059" :NAME
                                          "MEK inhibitor RDEA119"))
                                        ("downcase" "reparixin"
                                         ("Reparixin"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C66515" :NAME "reparixin"))
                                        ("downcase" "su11274"
                                         ("SU11274"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C478479" :NAME
                                          "((3Z)-N-(3-chlorophenyl)-3-((3,5-dimethyl-4-((4-methylpiperazin-1-yl)carbonyl)-1H-pyrrol-2-yl)methylene)-N-methyl-2-oxo-2,3-dihydro-1H-indole-5-sulfonamide)"))
                                        ("downcase" "sf1126"
                                         ("SF1126"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C85469" :NAME
                                          "pan-PI3K mTOR inhibitor SF1126"))
                                        ("downcase" "sirtinol"
                                         ("Sirtinol"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C439060" :NAME "sirtinol"))
                                        ("downcase" "torin2"
                                         ("Torin2"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "CHEBI:90682" :NAME "torin 2"))
                                        ("downcase" "brdu"
                                         ("brdU" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C318" :NAME
                                          "bromodeoxyuridine"))
                                        ("downcase" "dets"
                                         ("dEts" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "MESH:C068718" :NAME
                                          "17-(N,N-diisopropylcarbamoyl)estra-1,3,5(10)-triene-3-sulfonic acid"))
                                        ("downcase" "ppi"
                                         ("pPI" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C29723" :NAME
                                          "proton pump inhibitor"))
                                        ("downcase" "rasv12"
                                         ("rasV12"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C48409" :NAME
                                          "monoclonal antibody RAV12"))
                                        ("downcase" "sinc"
                                         ("siNC" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "MESH:C052464" :NAME
                                          "bis(tri-n-hexylsiloxy)(2,3-naphthalocyaninato)silicon"))
                                        ("downcase" "neddylated"
                                         ("NEDDylated"
                                          "ONT:POST-TRANSLATIONAL-MODIFICATION"
                                          :ID "GO:0045116" :NAME
                                          "protein neddylation"))
                                        ("downcase" "cid"
                                         ("CID" "ONT:PROCEDURE" :ID
                                          "NCIT:C48061" :NAME
                                          "collision-induced dissociation"))
                                        ("downcase" "gaussians"
                                         ("Gaussians" "ONT:PROCEDURE" :ID
                                          "NCIT:C53215" :NAME
                                          "normal distribution"))
                                        ("downcase" "lscs"
                                         ("LSCs" "ONT:PROCEDURE" :ID
                                          "NCIT:C122170" :NAME
                                          "liquid scintillation counting"))
                                        ("downcase" "maldi"
                                         ("Maldi" "ONT:PROCEDURE" :ID
                                          "NCIT:C48040" :NAME
                                          "matrix-assisted laser desorption ionization mass spectrometry"))
                                        ("downcase" "pages"
                                         ("Pages" "ONT:PROCEDURE" :ID
                                          "NCIT:C16539" :NAME
                                          "polyacrylamide gel electrophoresis"))
                                        ("downcase" "cdnas"
                                         ("cDNAs" "ONT:PROCESS" :ID
                                          "EFO:0004187" :NAME
                                          "cDNA library construction"))
                                        ("downcase" "cdna"
                                         ("cDNA" "ONT:PROCESS" :ID
                                          "EFO:0004187" :NAME
                                          "cDNA library construction"))
                                        ("hyphens-dc" "freud1"
                                         ("Freud-1" "ONT:PROTEIN" :ID
                                          "UP:Q6P1N0" :NAME
                                          "Coiled-coil and C2 domain-containing protein 1A"))
                                        ("downcase" "rfz2"
                                         ("Rfz2" "ONT:PROTEIN" :ID "UP:Q08464"
                                          :NAME "Frizzled-2"))
                                        ("downcase" "p-selectin"
                                         ("P-selectin" "ONT:PROTEIN" :ID
                                          "UP:P42201" :NAME "P-selectin"))
                                        ("downcase" "g6pase"
                                         ("G6pase" "ONT:PROTEIN" :ID
                                          "UP:P35575" :NAME
                                          "Glucose-6-phosphatase"))
                                        ("downcase" "hnf4α"
                                         ("Hnf4α" "ONT:PROTEIN" :ID "UP:P41235"
                                          :NAME
                                          "Hepatocyte nuclear factor 4-alpha"))
                                        ("downcase" "irs"
                                         ("Irs" "ONT:PROTEIN" :ID "UP:P06213"
                                          :NAME "Insulin receptor"))
                                        ("downcase" "mo25α"
                                         ("Mo25α" "ONT:PROTEIN" :ID "UP:Q29RI6"
                                          :NAME "Calcium-binding protein 39"))
                                        ("downcase" "pp38"
                                         ("Pp38" "ONT:PROTEIN" :ID "UP:Q0J8A4"
                                          :NAME
                                          "Glyceraldehyde-3-phosphate dehydrogenase 1, cytosolic"))
                                        ("downcase" "pix"
                                         ("Pix" "ONT:PROTEIN" :ID "UP:P68970"
                                          :NAME "Hexon-associated protein"))
                                        ("downcase" "pyrin"
                                         ("PYRIN" "ONT:PROTEIN" :ID "UP:O15553"
                                          :NAME "Pyrin"))
                                        ("downcase" "rarα"
                                         ("Rarα" "ONT:PROTEIN" :ID "UP:P10276"
                                          :NAME
                                          "Retinoic acid receptor alpha"))
                                        ("upcase" "CHD"
                                         ("chd" "ONT:PROTEIN" :ID "UP:Q8NE62"
                                          :NAME
                                          "Choline dehydrogenase, mitochondrial"))
                                        ("upcase" "IGF"
                                         ("igf" "ONT:PROTEIN" :ID "UP:P22618"
                                          :NAME "Insulin-like growth factor"))
                                        ("upcase" "LSL"
                                         ("lsl" "ONT:PROTEIN" :ID "UP:P84821"
                                          :NAME "Lectin 80 kDa subunit"))
                                        ("downcase" "ephrinas"
                                         ("ephrinAs" "ONT:PROTEIN-FAMILY" :ID
                                          "NCIT:C113247" :NAME "ephrin-A"))
                                        ("downcase" "flag"
                                         ("Flag" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF03646.13" :NAME "FlaG"))
                                        ("downcase" "jas"
                                         ("JAS" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF16135.3" :NAME "jas"))
                                        ("downcase" "kisspeptins"
                                         ("Kisspeptins" "ONT:PROTEIN-FAMILY"
                                          :ID "XFAM:PF15152.4" :NAME
                                          "kisspeptin"))
                                        ("downcase" "mics"
                                         ("MICs" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:02295" :NAME "MIC subfamily"))
                                        ("downcase" "matrix"
                                         ("Matrix" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF00661.19" :NAME "matrix"))
                                        ("downcase" "nesprins"
                                         ("Nesprins" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:02442" :NAME "nesprin family"))
                                        ("upcase" "PAK"
                                         ("Pak" "ONT:PROTEIN-FAMILY" :ID
                                          "BE:PAK" :NAME "PAK"))
                                        ("downcase" "rors"
                                         ("RORs" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:03130" :NAME "ROR subfamily"))
                                        ("upcase" "ROCK"
                                         ("Rock" "ONT:PROTEIN-FAMILY" :ID
                                          "BE:ROCK" :NAME "ROCK"))
                                        ("downcase" "rasgrfs"
                                         ("RasGRFs" "ONT:PROTEIN-FAMILY" :ID
                                          "BE:RASGRF" :NAME "RASGRF"))
                                        ("downcase" "srebp"
                                         ("Srebp" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:03825" :NAME "SREBP family"))
                                        ("downcase" "tachykinins"
                                         ("Tachykinins" "ONT:PROTEIN-FAMILY"
                                          :ID "FA:03909" :NAME
                                          "tachykinin family"))
                                        ("upcase" "BRCA"
                                         ("brca" "ONT:PROTEIN-FAMILY" :ID
                                          "BE:BRCA" :NAME "BRCA"))
                                        ("downcase" "dsrnas"
                                         ("dsRNAs" "ONT:RNA" :ID "NCIT:C95938"
                                          :NAME "double-stranded RNA"))
                                        ("downcase" "grnas"
                                         ("gRNAs" "ONT:RNA" :ID "NCIT:C95952"
                                          :NAME "guide RNA"))
                                        ("downcase" "lncrnas"
                                         ("lncRNAs" "ONT:RNA" :ID "NCIT:C88924"
                                          :NAME "lincRNA"))
                                        ("downcase" "lncrna"
                                         ("lncRNA" "ONT:RNA" :ID "NCIT:C88924"
                                          :NAME "lincRNA"))
                                        ("downcase" "ncrnas"
                                         ("ncRNAs" "ONT:RNA" :ID "NCIT:C26549"
                                          :NAME "functional RNA"))
                                        ("downcase" "pirnas"
                                         ("piRNAs" "ONT:RNA" :ID "NCIT:C95953"
                                          :NAME "piwi-interacting RNA"))
                                        ("downcase" "shrnas"
                                         ("shRNAs" "ONT:RNA" :ID "NCIT:C123893"
                                          :NAME "short hairpin RNA"))
                                        ("downcase" "snornas"
                                         ("snoRNAs" "ONT:RNA" :ID
                                          "NCIT:C111316" :NAME
                                          "small nucleolar RNA"))
                                        ("downcase" "gas"
                                         ("Gas" "ONT:SUBSTANCE" :ID
                                          "NCIT:C45299" :NAME "gas"))
                                        ("downcase" "hpv18"
                                         ("HPV18" "ONT:VIRUS" :ID "NCIT:C14377"
                                          :NAME "human papillomavirus-18"))
                                        ("downcase" "hpv16"
                                         ("HPV16" "ONT:VIRUS" :ID "NCIT:C14338"
                                          :NAME "human papillomavirus-16"))
                                        ("downcase" "hcv"
                                         ("HCV" "ONT:VIRUS" :ID "NCIT:C14312"
                                          :NAME "hepatitis C virus"))
                                        ("downcase" "mulv"
                                         ("MuLV" "ONT:VIRUS" :ID "NCIT:C14244"
                                          :NAME "mouse leukemia virus"))
                                        ("downcase" "rsv"
                                         ("RSV" "ONT:VIRUS" :ID "NCIT:C14267"
                                          :NAME "respiratory syncytial virus"))
                                        ("hyphens" "endocytosis"
                                         ("endocyto-sis"
                                          "ONT:BIOLOGICAL-PROCESS" :ID
                                          "GO:0006897" :NAME "endocytosis"))
                                        ("downcase" "s-nitrosylation"
                                         ("S-nitrosylation"
                                          "ONT:BIOLOGICAL-PROCESS" :ID
                                          "NCIT:C120476" :NAME
                                          "S-nitrosylation"))
                                        ("hyphens" "neovascularization"
                                         ("neo-vascularization"
                                          "ONT:BIOLOGICAL-PROCESS" :ID
                                          "NCIT:C16900" :NAME
                                          "neovascularization"))
                                        ("hyphens" "interneurons"
                                         ("interneu-rons" "ONT:CELL" :ID
                                          "CO:0000099" :NAME "interneuron"))
                                        ("hyphens-dc" "ha2"
                                         ("HA-2" "ONT:CELL-LINE" :ID
                                          "CVCL:Z979" :NAME "CSIRO-BCIRL-HA2"))
                                        ("hyphens-dc" "hut102"
                                         ("HUT-102" "ONT:CELL-LINE" :ID
                                          "CVCL:3526" :NAME "HuT 102"))
                                        ("hyphens" "Sf9"
                                         ("Sf-9" "ONT:CELL-LINE" :ID
                                          "CVCL:0549" :NAME "Sf9"))
                                        ("hyphens" "TLR2"
                                         ("TLR-2" "ONT:CELL-LINE" :ID
                                          "CVCL:5600" :NAME "TLR2"))
                                        ("hyphens" "ca1"
                                         ("ca-1" "ONT:CELL-LINE" :ID
                                          "CVCL:B844" :NAME "CA1"))
                                        ("hyphens-dc" "con8"
                                         ("Con-8" "ONT:CELL-LINE" :ID
                                          "CVCL:9U76" :NAME "CON8"))
                                        ("hyphens-dc" "cy3"
                                         ("Cy-3" "ONT:CELL-LINE" :ID
                                          "CVCL:1P99" :NAME "CY3"))
                                        ("hyphens-dc" "cy5"
                                         ("Cy-5" "ONT:CELL-LINE" :ID
                                          "CVCL:1Q01" :NAME "CY5"))
                                        ("hyphens-dc" "mash1"
                                         ("MASH-1" "ONT:CELL-LINE" :ID
                                          "CVCL:8158" :NAME "Mash-1"))
                                        ("hyphens-dc" "mdah2774"
                                         ("MDAH-2774" "ONT:CELL-LINE" :ID
                                          "CVCL:0420" :NAME "MDAH 2774"))
                                        ("hyphens" "WM164"
                                         ("WM-164" "ONT:CELL-LINE" :ID
                                          "CVCL:7928" :NAME "WM164"))
                                        ("hyphens" "C33A"
                                         ("C-33A" "ONT:CELL-LINE" :ID
                                          "EFO:0002120" :NAME "C33A"))
                                        ("hyphens-dc" "raw264.7"
                                         ("Raw-264.7" "ONT:CELL-LINE" :ID
                                          "EFO:0001231" :NAME "RAW264.7"))
                                        ("upcase" "SK-MEL-147"
                                         ("SK-Mel-147" "ONT:CELL-LINE" :ID
                                          "CVCL:3876" :NAME "SK-MEL-147"))
                                        ("upcase" "SK-MEL-19"
                                         ("SK-Mel-19" "ONT:CELL-LINE" :ID
                                          "CVCL:6025" :NAME "SK-MEL-19"))
                                        ("hyphens" "U2OS"
                                         ("U-2-OS" "ONT:CELL-LINE" :ID
                                          "CVCL:0042" :NAME "U2OS"))
                                        ("hyphens" "HCT8"
                                         ("HCT-8" "ONT:CELL-LINE" :ID
                                          "EFO:0002189" :NAME "HCT8"))
                                        ("hyphens" "SKBR3"
                                         ("SKBR-3" "ONT:CELL-LINE" :ID
                                          "EFO:0001236" :NAME "SKBR3"))
                                        ("hyphens" "UW228"
                                         ("UW-228" "ONT:CELL-LINE" :ID
                                          "CVCL:8585" :NAME "UW228"))
                                        ("downcase" "phagolysosome"
                                         ("Phagolysosome" "ONT:CELL-PART" :ID
                                          "GO:0032010" :NAME "phagolysosome"))
                                        ("hyphens-dc" "cp20"
                                         ("CP-20" "ONT:CHEMICAL" :ID
                                          "NCIT:C73030" :NAME "deferiprone"))
                                        ("hyphens" "MT2"
                                         ("MT-2" "ONT:GENE-PROTEIN" :ID
                                          "UP:P02795" :NAME
                                          "Metallothionein-2"))
                                        ("hyphens" "FGF9"
                                         ("FGF-9" "ONT:GENE-PROTEIN" :ID
                                          "UP:P31371" :NAME
                                          "Fibroblast growth factor 9"))
                                        ("hyphens-dc" "pdgfrα"
                                         ("PDGFR-α" "ONT:GENE-PROTEIN" :ID
                                          "UP:P16234" :NAME
                                          "Platelet-derived growth factor receptor alpha"))
                                        ("hyphens" "RhoGAP"
                                         ("Rho-GAP" "ONT:GENE-PROTEIN" :ID
                                          "UP:P38339" :NAME
                                          "RHO GTPase-activating protein RGD1"))
                                        ("hyphens" "SHIP2"
                                         ("SHIP-2" "ONT:GENE-PROTEIN" :ID
                                          "UP:O15357" :NAME
                                          "Phosphatidylinositol 3,4,5-trisphosphate 5-phosphatase 2"))
                                        ("downcase" "arp2"
                                         ("Arp2" "ONT:GENE-PROTEIN" :ID
                                          "FA:00080" :NAME "ARP2 subfamily"))
                                        ("hyphens" "BMP2"
                                         ("BMP-2" "ONT:GENE-PROTEIN" :ID
                                          "UP:P12643" :NAME
                                          "Bone morphogenetic protein 2"))
                                        ("upcase" "BCL-9"
                                         ("Bcl-9" "ONT:GENE-PROTEIN" :ID
                                          "UP:O00512" :NAME
                                          "B-cell CLL/lymphoma 9 protein"))
                                        ("hyphens" "GRP78"
                                         ("GRP-78" "ONT:GENE-PROTEIN" :ID
                                          "UP:P11021" :NAME
                                          "78 kDa glucose-regulated protein"))
                                        ("hyphens" "IKKα"
                                         ("IKK-α" "ONT:GENE-PROTEIN" :ID
                                          "UP:O15111" :NAME
                                          "Inhibitor of nuclear factor kappa-B kinase subunit alpha"))
                                        ("downcase" "mig6"
                                         ("Mig6" "ONT:GENE-PROTEIN" :ID
                                          "FA:02304" :NAME "MIG6 family"))
                                        ("upcase" "PAR-4"
                                         ("par-4" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q96RI0" :NAME
                                          "Proteinase-activated receptor 4"))
                                        ("hyphens" "uPA"
                                         ("u-PA" "ONT:GENE-PROTEIN" :ID
                                          "UP:P00749" :NAME
                                          "Urokinase-type plasminogen activator"))
                                        ("hyphens" "Cul4A"
                                         ("Cul-4A" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q13619" :NAME "Cullin-4A"))
                                        ("hyphens" "FGF2"
                                         ("FGF-2" "ONT:GENE-PROTEIN" :ID
                                          "UP:P09038" :NAME
                                          "Fibroblast growth factor 2"))
                                        ("hyphens" "FGFR1"
                                         ("FGFR-1" "ONT:GENE-PROTEIN" :ID
                                          "UP:P11362" :NAME
                                          "Fibroblast growth factor receptor 1"))
                                        ("hyphens-dc" "fra1"
                                         ("Fra-1" "ONT:GENE-PROTEIN" :ID
                                          "UP:P15407" :NAME
                                          "Fos-related antigen 1"))
                                        ("upcase" "GAL4"
                                         ("Gal4" "ONT:GENE-PROTEIN" :ID
                                          "UP:P56470" :NAME "Galectin-4"))
                                        ("hyphens" "IGFBP1"
                                         ("IGFBP-1" "ONT:GENE-PROTEIN" :ID
                                          "UP:P08833" :NAME
                                          "Insulin-like growth factor-binding protein 1"))
                                        ("hyphens" "LIMK1"
                                         ("LIMK-1" "ONT:GENE-PROTEIN" :ID
                                          "UP:P53667" :NAME
                                          "LIM domain kinase 1"))
                                        ("hyphens" "MAP2"
                                         ("MAP-2" "ONT:GENE-PROTEIN" :ID
                                          "UP:P11137" :NAME
                                          "Microtubule-associated protein 2"))
                                        ("hyphens" "PDGFRβ"
                                         ("PDGFR-β" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q6QNF3" :NAME
                                          "Platelet-derived growth factor receptor beta"))
                                        ("downcase" "rab6"
                                         ("Rab6" "ONT:GENE-PROTEIN" :ID
                                          "UP:P20340" :NAME
                                          "Ras-related protein Rab-6A"))
                                        ("hyphens" "RalGDS"
                                         ("Ral-GDS" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q12967" :NAME
                                          "Ral guanine nucleotide dissociation stimulator"))
                                        ("hyphens" "TCF4"
                                         ("TCF-4" "ONT:GENE-PROTEIN" :ID
                                          "UP:P15884" :NAME
                                          "Transcription factor 4"))
                                        ("hyphens" "beclin1"
                                         ("beclin-1" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q14457" :NAME "Beclin-1"))
                                        ("hyphens-dc" "lsil"
                                         ("L-SIL"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C8335" :NAME
                                          "low grade squamous intraepithelial neoplasia"))
                                        ("hyphens-dc" "lsils"
                                         ("L-SILs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C8335" :NAME
                                          "low grade squamous intraepithelial neoplasia"))
                                        ("downcase" "lsils"
                                         ("LSILs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C8335" :NAME
                                          "low grade squamous intraepithelial neoplasia"))
                                        ("hyphens" "CNF1"
                                         ("CNF-1" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF05785.10" :NAME "CNF1"))
                                        ("hyphens" "dinucleotides"
                                         ("di-nucleotides" "ONT:MOLECULE" :ID
                                          "CHEBI:47885" :NAME "dinucleotide"))
                                        ("hyphens" "mononucleotide"
                                         ("mono-nucleotide" "ONT:MOLECULE" :ID
                                          "CHEBI:29075" :NAME
                                          "mononucleotide"))
                                        ("hyphens" "oligonucleotide"
                                         ("oligo-nucleotide" "ONT:MOLECULE" :ID
                                          "CHEBI:7754" :NAME
                                          "oligonucleotide"))
                                        ("hyphens" "mRNA"
                                         ("m-RNA" "ONT:MRNA" :ID "NCIT:C813"
                                          :NAME "messenger RNA"))
                                        ("hyphens-dc" "cd1"
                                         ("CD-1" "ONT:NONHUMAN-ANIMAL" :ID
                                          "NCIT:C76183" :NAME "ICR BR mouse"))
                                        ("hyphens" "SC560"
                                         ("SC-560"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "CHEBI:76274" :NAME "SC560"))
                                        ("hyphens-dc" "dcfda"
                                         ("DCF-DA"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C029569" :NAME
                                          "diacetyldichlorofluorescein"))
                                        ("hyphens-dc" "su11274"
                                         ("SU-11274"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C478479" :NAME
                                          "((3Z)-N-(3-chlorophenyl)-3-((3,5-dimethyl-4-((4-methylpiperazin-1-yl)carbonyl)-1H-pyrrol-2-yl)methylene)-N-methyl-2-oxo-2,3-dihydro-1H-indole-5-sulfonamide)"))
                                        ("hyphens" "antidepressant"
                                         ("antide-pressant"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "CHEBI:35469" :NAME
                                          "antidepressant"))
                                        ("hyphens-dc" "bisindolylmaleimide"
                                         ("Bisindo-lylmaleimide"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C088060" :NAME
                                          "bisindolylmaleimide"))
                                        ("hyphens-dc" "sc236"
                                         ("SC-236"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C119130" :NAME
                                          "4-(5-(4-chlorophenyl)-3-(trifluoromethyl)-1H-pyrazol-1-yl)benzenesulfonamide"))
                                        ("hyphens-dc" "uo126"
                                         ("UO-126"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C113580" :NAME "U 0126"))
                                        ("hyphens" "bromodeoxyuridine"
                                         ("bromo-deoxyuridine"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C318" :NAME
                                          "bromodeoxyuridine"))
                                        ("hyphens" "alpha2"
                                         ("alpha-2" "ONT:PROCEDURE" :ID
                                          "NCIT:C67051" :NAME
                                          "affy alpha2 significance"))
                                        ("hyphens" "xenografts"
                                         ("xeno-grafts" "ONT:PROCESS" :ID
                                          "EFO:0003942" :NAME
                                          "heterologous transplantation"))
                                        ("hyphens" "RARα"
                                         ("RAR-α" "ONT:PROTEIN" :ID "UP:P10276"
                                          :NAME
                                          "Retinoic acid receptor alpha"))
                                        ("hyphens" "TGFβR"
                                         ("TGF-βR" "ONT:PROTEIN" :ID
                                          "GO:0005024" :NAME
                                          "transforming growth factor beta-activated receptor activity"))
                                        ("hyphens" "cyclinA"
                                         ("cyclin-A" "ONT:PROTEIN" :ID
                                          "UP:P20248" :NAME "Cyclin-A2"))
                                        ("hyphens" "AAC"
                                         ("A-A-C" "ONT:PROTEIN" :ID "UP:Q2KIR7"
                                          :NAME
                                          "Glycine N-acyltransferase {ECO:0000303|PubMed:22071172}"))
                                        ("hyphens" "AMPKα1"
                                         ("AMPK-α1" "ONT:PROTEIN" :ID
                                          "NCIT:C116033" :NAME
                                          "5-AMP-activated protein kinase catalytic subunit alpha-1"))
                                        ("hyphens" "chemoattractants"
                                         ("chemo-attractants" "ONT:PROTEIN" :ID
                                          "GO:0042056" :NAME
                                          "chemoattractant activity"))
                                        ("hyphens-dc" "mutl"
                                         ("mut-L" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF13941.4" :NAME "MutL"))
                                        ("downcase" "connexin"
                                         ("Connexin" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:00722" :NAME "connexin family"))
                                        ("downcase" "ampkα"
                                         ("AMPKα" "ONT:PROTEIN-FAMILY" :ID
                                          "NCIT:C116019" :NAME
                                          "5-AMP-activated protein kinase catalytic subunit alpha"))
                                        ("hyphens-dc" "plcγ"
                                         ("PLC-γ" "ONT:PROTEIN-FAMILY" :ID
                                          "NCIT:C126114" :NAME
                                          "phospholipase C gamma"))
                                        ("downcase" "m-phase"
                                         ("M-phase" "ONT:TIME-SPAN" :ID
                                          "GO:0000279" :NAME "M phase"))
                                        ("downcase" "s-phase"
                                         ("S-phase" "ONT:TIME-SPAN" :ID
                                          "GO:0051320" :NAME "S phase"))
                                        ("hyphens-dc" "hpv11"
                                         ("HPV-11" "ONT:VIRUS" :ID
                                          "NCIT:C99178" :NAME
                                          "human papillomavirus-11"))
                                        ("hyphens-dc" "hpv6"
                                         ("HPV-6" "ONT:VIRUS" :ID "NCIT:C14319"
                                          :NAME "human papillomavirus-6"))
                                        ("hyphens" "retrovirus"
                                         ("retro-virus" "ONT:VIRUS" :ID
                                          "NCIT:C14268" :NAME "retroviridae"))
                                        ("hyphens-dc" "hpv18"
                                         ("HPV-18" "ONT:VIRUS" :ID
                                          "NCIT:C14377" :NAME
                                          "human papillomavirus-18"))
                                        ("hyphens-dc" "hpv33"
                                         ("HPV-33" "ONT:VIRUS" :ID
                                          "NCIT:C102996" :NAME
                                          "human papillomavirus-33"))
                                        ("hyphens-dc" "hpv16"
                                         ("HPV-16" "ONT:VIRUS" :ID
                                          "NCIT:C14338" :NAME
                                          "human papillomavirus-16"))
                                        ("hyphens" "adenovirus"
                                         ("adeno-virus" "ONT:VIRUS" :ID
                                          "NCIT:C14179" :NAME "adenovirus"))))

(defparameter *ID-MISMATCH-REDEF* '(("orig" "glioma" "EFO:0005543"
                                     ("glioma" "ONT:CANCER" :ID "NCIT:C3059"
                                      :NAME "neuroglial tumor"))
                                    ("orig" "osteosarcoma" "TS-0723"
                                     ("osteosarcoma" "ONT:CANCER" :ID
                                      "EFO:0000637" :NAME "osteosarcoma"))
                                    ("orig" "melanoblasts" "CO:0000541"
                                     ("melanoblasts" "ONT:CELL" :ID
                                      "BTO:0003217" :NAME "melanoblast"))
                                    ("orig" "HFL1" "CVCL:0298"
                                     ("HFL1" "ONT:CELL-LINE" :ID "EFO:0005368"
                                      :NAME "HFL1"))
                                    ("downcase" "hep2" "EFO:0006438"
                                     ("Hep2" "ONT:CELL-LINE" :ID "CVCL:1906"
                                      :NAME "HEp-2"))
                                    ("upcase" "OVCA432" "CVCL:3769"
                                     ("Ovca432" "ONT:CELL-LINE" :ID
                                      "EFO:0006722" :NAME "OVCA432"))
                                    ("upcase" "OVCA429" "CVCL:3936"
                                     ("Ovca429" "ONT:CELL-LINE" :ID
                                      "EFO:0006721" :NAME "OVCA429"))
                                    ("upcase" "SKBR3" "EFO:0001236"
                                     ("SKBr3" "ONT:CELL-LINE" :ID "CVCL:0033"
                                      :NAME "SK-BR-3"))
                                    ("orig" "cytosol" "GO:0005829"
                                     ("cytosol" "ONT:CELL-PART" :ID
                                      "UP:SL-0091" :NAME "Cytosol"))
                                    ("orig" "cytoskeleton" "GO:0005856"
                                     ("cytoskeleton" "ONT:CELL-PART" :ID
                                      "UP:SL-0090" :NAME "Cytoskeleton"))
                                    ("orig" "cytoplasm" "GO:0005737"
                                     ("cytoplasm" "ONT:CELL-PART" :ID
                                      "UP:SL-0086" :NAME "Cytoplasm"))
                                    ("orig" "filopodium" "GO:0030175"
                                     ("filopodium" "ONT:CELL-PART" :ID
                                      "UP:SL-0286" :NAME "Filopodium"))
                                    ("orig" "filopodia" "GO:0030175"
                                     ("filopodia" "ONT:CELL-PART" :ID
                                      "UP:SL-0286" :NAME "Filopodium"))
                                    ("orig" "endosome" "GO:0005768"
                                     ("endosome" "ONT:CELL-PART" :ID
                                      "UP:SL-0101" :NAME "Endosome"))
                                    ("orig" "hemidesmosome" "GO:0030056"
                                     ("hemidesmosome" "ONT:CELL-PART" :ID
                                      "UP:SL-0137" :NAME "Hemidesmosome"))
                                    ("orig" "membrane" "GO:0016020"
                                     ("membrane" "ONT:CELL-PART" :ID
                                      "UP:SL-0162" :NAME "Membrane"))
                                    ("orig" "lamellipodium" "GO:0030027"
                                     ("lamellipodium" "ONT:CELL-PART" :ID
                                      "UP:SL-0291" :NAME "Lamellipodium"))
                                    ("orig" "lamellipodia" "GO:0030027"
                                     ("lamellipodia" "ONT:CELL-PART" :ID
                                      "UP:SL-0291" :NAME "Lamellipodium"))
                                    ("orig" "juxtamembrane" "GO:????"
                                     ("juxtamembrane" "ONT:CELL-PART" :ID
                                      "GO:0005886" :NAME "plasma membrane"))
                                    ("orig" "nucleus" "GO:0005634"
                                     ("nucleus" "ONT:CELL-PART" :ID
                                      "UP:SL-0191" :NAME "Nucleus"))
                                    ("orig" "nucleoplasm" "GO:0005654"
                                     ("nucleoplasm" "ONT:CELL-PART" :ID
                                      "UP:SL-0190" :NAME "Nucleoplasm"))
                                    ("orig" "nucleolus" "GO:0005730"
                                     ("nucleolus" "ONT:CELL-PART" :ID
                                      "UP:SL-0188" :NAME "Nucleolus"))
                                    ("downcase" "paps" "CHEBI:53758"
                                     ("PAPS" "ONT:CHEMICAL" :ID "CHEBI:58339"
                                      :NAME
                                      "3'-phosphonato-5'-adenylyl sulfate(4-)"))
                                    ("orig" "allergens" "CHEBI:50904"
                                     ("allergens" "ONT:CHEMICAL" :ID
                                      "NCIT:C62651" :NAME "allergen"))
                                    ("orig" "agarose" "PCID:11966311"
                                     ("agarose" "ONT:CHEMICAL" :ID "CHEBI:2511"
                                      :NAME "agarose"))
                                    ("orig" "chelators" "CHEBI:38161"
                                     ("chelators" "ONT:CHEMICAL" :ID
                                      "NCIT:C360" :NAME "chelating agent"))
                                    ("orig" "malondialdehyde" "PCID:10964"
                                     ("malondialdehyde" "ONT:CHEMICAL" :ID
                                      "CHEBI:566274" :NAME "malonaldehyde"))
                                    ("orig" "naphthalene" "CHEBI:16482"
                                     ("naphthalene" "ONT:CHEMICAL" :ID
                                      "NCIT:C29839" :NAME "naphthalene"))
                                    ("orig" "toxins" "CHEBI:27026"
                                     ("toxins" "ONT:CHEMICAL" :ID "NCIT:C894"
                                      :NAME "toxin"))
                                    ("downcase" "daam1" "UP:Q9Y4D1"
                                     ("Daam1" "ONT:GENE" :ID "HGNC:18142" :NAME
                                      "dishevelled associated activator of morphogenesis 1"))
                                    ("orig" "DVL-1" "UP:O14640"
                                     ("DVL-1" "ONT:GENE" :ID "HGNC:3084" :NAME
                                      "dishevelled segment polarity protein 1"))
                                    ("downcase" "capz" "UP:Q6JBY9"
                                     ("CapZ" "ONT:GENE" :ID "HGNC:1490" :NAME
                                      "capping actin protein of muscle Z-line alpha subunit 2"))
                                    ("orig" "CYR61" "NCIT:C113316"
                                     ("CYR61" "ONT:GENE" :ID "HGNC:2654" :NAME
                                      "cysteine rich angiogenic inducer 61"))
                                    ("orig" "CD95" "UP:P25445"
                                     ("CD95" "ONT:GENE" :ID "NCIT:C51383" :NAME
                                      "TNFRSF6"))
                                    ("hyphens" "CD31" "UP:Q08481"
                                     ("CD-31" "ONT:GENE" :ID "NCIT:C51186"
                                      :NAME "PECAM1"))
                                    ("downcase" "bok" "UP:Q9UMX3"
                                     ("Bok" "ONT:GENE" :ID "HGNC:1087" :NAME
                                      "BOK, BCL2 family apoptosis regulator"))
                                    ("downcase" "bfl-1" "UP:Q16548"
                                     ("Bfl-1" "ONT:GENE" :ID "NCIT:C104039"
                                      :NAME "BCL2A1"))
                                    ("downcase" "b7.2" "UP:P42081"
                                     ("B7.2" "ONT:GENE" :ID "HGNC:1705" :NAME
                                      "CD86 molecule"))
                                    ("downcase" "antp" "UP:P31268"
                                     ("Antp" "ONT:GENE" :ID "NCIT:C105433"
                                      :NAME "HOXA7"))
                                    ("orig" "ARF1" "UP:P84077"
                                     ("ARF1" "ONT:GENE" :ID "HGNC:652" :NAME
                                      "ADP ribosylation factor 1"))
                                    ("orig" "GroES" "UP:Q8GBD3"
                                     ("GroES" "ONT:GENE" :ID "HGNC:5269" :NAME
                                      "heat shock protein family E (Hsp10) member 1"))
                                    ("upcase" "FGD2" "UP:Q7Z6J4"
                                     ("Fgd2" "ONT:GENE" :ID "HGNC:3664" :NAME
                                      "FYVE, RhoGEF and PH domain containing 2"))
                                    ("orig" "FBS" "UP:Q9HAH7"
                                     ("FBS" "ONT:GENE" :ID "HGNC:20442" :NAME
                                      "fibrosin"))
                                    ("downcase" "rpn11" "UP:Q9LT08"
                                     ("Rpn11" "ONT:GENE" :ID "HGNC:16889" :NAME
                                      "proteasome 26S subunit, non-ATPase 14"))
                                    ("orig" "Rab27A" "UP:P51159"
                                     ("Rab27A" "ONT:GENE" :ID "HGNC:9766" :NAME
                                      "RAB27A, member RAS oncogene family"))
                                    ("orig" "PPAR" "BE:PPAR"
                                     ("PPAR" "ONT:GENE" :ID "NCIT:C91750" :NAME
                                      "PPARA"))
                                    ("downcase" "nup62" "UP:P37198"
                                     ("Nup62" "ONT:GENE" :ID "HGNC:8066" :NAME
                                      "nucleoporin 62"))
                                    ("upcase" "NOXO1" "UP:Q8NFA2"
                                     ("NoxO1" "ONT:GENE" :ID "HGNC:19404" :NAME
                                      "NADPH oxidase organizer 1"))
                                    ("orig" "NKCC1" "UP:P55011"
                                     ("NKCC1" "ONT:GENE" :ID "NCIT:C102514"
                                      :NAME "SLC12A2"))
                                    ("downcase" "tks4" "UP:A1X283"
                                     ("Tks4" "ONT:GENE" :ID "NCIT:C119650"
                                      :NAME "SH3PXD2B"))
                                    ("downcase" "sirt-1" "UP:Q96EB6"
                                     ("SirT-1" "ONT:GENE" :ID "HGNC:14929"
                                      :NAME "sirtuin 1"))
                                    ("orig" "waf1" "UP:P38936"
                                     ("waf1" "ONT:GENE" :ID "NCIT:C49460" :NAME
                                      "CDKN1A"))
                                    ("downcase" "gata4" "UP:P43694"
                                     ("Gata4" "ONT:GENE" :ID "HGNC:4173" :NAME
                                      "GATA binding protein 4"))
                                    ("downcase" "gal" "UP:Q8N6F7"
                                     ("Gal" "ONT:GENE" :ID "HGNC:4114" :NAME
                                      "galanin and GMAP prepropeptide"))
                                    ("downcase" "gab1" "UP:Q13480"
                                     ("Gab1" "ONT:GENE" :ID "HGNC:4066" :NAME
                                      "GRB2 associated binding protein 1"))
                                    ("upcase" "GSK3B" "UP:P49841"
                                     ("GSK3b" "ONT:GENE" :ID "HGNC:4617" :NAME
                                      "glycogen synthase kinase 3 beta"))
                                    ("orig" "GINS1" "UP:Q14691"
                                     ("GINS1" "ONT:GENE" :ID "HGNC:28980" :NAME
                                      "GINS complex subunit 1"))
                                    ("downcase" "gcsh" "UP:P23434"
                                     ("GCSh" "ONT:GENE" :ID "HGNC:4208" :NAME
                                      "glycine cleavage system protein H"))
                                    ("orig" "G3BP" "UP:Q13283"
                                     ("G3BP" "ONT:GENE" :ID "HGNC:30292" :NAME
                                      "G3BP stress granule assembly factor 1"))
                                    ("upcase" "FAB" "UP:Q8NB91"
                                     ("Fab" "ONT:GENE" :ID "NCIT:C86023" :NAME
                                      "FANCB"))
                                    ("orig" "HNE" "UP:P08246"
                                     ("HNE" "ONT:GENE" :ID "NCIT:C104196" :NAME
                                      "ELANE"))
                                    ("orig" "HEMA" "UP:P00451"
                                     ("HEMA" "ONT:GENE" :ID "NCIT:C51235" :NAME
                                      "F8"))
                                    ("downcase" "hsp27" "UP:P04792"
                                     ("Hsp27" "ONT:GENE" :ID "NCIT:C49548"
                                      :NAME "HSPB1"))
                                    ("upcase" "HSD" "UP:Q7LGC8"
                                     ("Hsd" "ONT:GENE" :ID "NCIT:C116935" :NAME
                                      "CHST3"))
                                    ("downcase" "hsc70" "UP:P11142"
                                     ("Hsc70" "ONT:GENE" :ID "HGNC:5241" :NAME
                                      "heat shock protein family A (Hsp70) member 8"))
                                    ("downcase" "hace1" "UP:Q8IYU2"
                                     ("Hace1" "ONT:GENE" :ID "HGNC:21033" :NAME
                                      "HECT domain and ankyrin repeat containing E3 ubiquitin protein ligase 1"))
                                    ("upcase" "JNK1" "UP:P45983"
                                     ("Jnk1" "ONT:GENE" :ID "NCIT:C52878" :NAME
                                      "MAPK8"))
                                    ("orig" "JNK2" "UP:P45984"
                                     ("JNK2" "ONT:GENE" :ID "NCIT:C51260" :NAME
                                      "MAPK9"))
                                    ("downcase" "ivl" "UP:P07476"
                                     ("Ivl" "ONT:GENE" :ID "HGNC:6187" :NAME
                                      "involucrin"))
                                    ("upcase" "ISG15" "UP:P05161"
                                     ("Isg15" "ONT:GENE" :ID "HGNC:4053" :NAME
                                      "ISG15 ubiquitin-like modifier"))
                                    ("downcase" "ins" "UP:P16070"
                                     ("Ins" "ONT:GENE" :ID "NCIT:C51123" :NAME
                                      "CD44"))
                                    ("downcase" "id4" "UP:P47928"
                                     ("Id4" "ONT:GENE" :ID "HGNC:5363" :NAME
                                      "inhibitor of DNA binding 4, HLH protein"))
                                    ("orig" "ITGB1" "UP:P05556"
                                     ("ITGB1" "ONT:GENE" :ID "HGNC:6153" :NAME
                                      "integrin subunit beta 1"))
                                    ("orig" "IRE1" "UP:O75460"
                                     ("IRE1" "ONT:GENE" :ID "NCIT:C113613"
                                      :NAME "ERN1"))
                                    ("orig" "IQGAP1" "UP:P46940"
                                     ("IQGAP1" "ONT:GENE" :ID "HGNC:6110" :NAME
                                      "IQ motif containing GTPase activating protein 1"))
                                    ("orig" "IMAC" "UP:Q9Y258"
                                     ("IMAC" "ONT:GENE" :ID "NCIT:C49743" :NAME
                                      "CCL26"))
                                    ("downcase" "lps" "UP:P43026"
                                     ("LPS" "ONT:GENE" :ID "NCIT:C75617" :NAME
                                      "IRF6"))
                                    ("orig" "LC3B" "UP:Q9GZQ8"
                                     ("LC3B" "ONT:GENE" :ID "NCIT:C116659"
                                      :NAME "MAP1LC3B"))
                                    ("downcase" "keap1" "UP:Q14145"
                                     ("Keap1" "ONT:GENE" :ID "HGNC:23177" :NAME
                                      "kelch like ECH associated protein 1"))
                                    ("downcase" "kaiso" "UP:Q86T24"
                                     ("Kaiso" "ONT:GENE" :ID "HGNC:16682" :NAME
                                      "zinc finger and BTB domain containing 33"))
                                    ("orig" "KLF5" "UP:Q13887"
                                     ("KLF5" "ONT:GENE" :ID "HGNC:6349" :NAME
                                      "Kruppel like factor 5"))
                                    ("orig" "MKK7" "UP:O14733"
                                     ("MKK7" "ONT:GENE" :ID "HGNC:6847" :NAME
                                      "mitogen-activated protein kinase kinase 7"))
                                    ("orig" "MKK6" "UP:P52564"
                                     ("MKK6" "ONT:GENE" :ID "NCIT:C49387" :NAME
                                      "MAP2K6"))
                                    ("orig" "MKK4" "UP:P45985"
                                     ("MKK4" "ONT:GENE" :ID "NCIT:C97675" :NAME
                                      "MAP2K4"))
                                    ("orig" "MKK3" "UP:P46734"
                                     ("MKK3" "ONT:GENE" :ID "NCIT:C125165"
                                      :NAME "MAP2K3"))
                                    ("orig" "MET" "UP:P08581"
                                     ("MET" "ONT:GENE" :ID "HGNC:7029" :NAME
                                      "MET proto-oncogene, receptor tyrosine kinase"))
                                    ("orig" "MEKK1" "UP:Q13233"
                                     ("MEKK1" "ONT:GENE" :ID "NCIT:C50392"
                                      :NAME "MAP3K1"))
                                    ("orig" "MEK5" "UP:Q13163"
                                     ("MEK5" "ONT:GENE" :ID "HGNC:6845" :NAME
                                      "mitogen-activated protein kinase kinase 5"))
                                    ("orig" "MEFs" "UP:O15553"
                                     ("MEFs" "ONT:GENE" :ID "NCIT:C97473" :NAME
                                      "ELF4"))
                                    ("orig" "MEF2C" "UP:Q06413"
                                     ("MEF2C" "ONT:GENE" :ID "HGNC:6996" :NAME
                                      "myocyte enhancer factor 2C"))
                                    ("orig" "MEF" "UP:Q99607"
                                     ("MEF" "ONT:GENE" :ID "NCIT:C97473" :NAME
                                      "ELF4"))
                                    ("orig" "MDR1" "UP:P08183"
                                     ("MDR1" "ONT:GENE" :ID "NCIT:C52273" :NAME
                                      "ABCB1"))
                                    ("orig" "MARK3" "UP:P27448"
                                     ("MARK3" "ONT:GENE" :ID "HGNC:6897" :NAME
                                      "microtubule affinity regulating kinase 3"))
                                    ("orig" "MARK1" "UP:Q9P0L2"
                                     ("MARK1" "ONT:GENE" :ID "HGNC:6896" :NAME
                                      "microtubule affinity regulating kinase 1"))
                                    ("downcase" "lmna" "UP:P02545"
                                     ("Lmna" "ONT:GENE" :ID "HGNC:6636" :NAME
                                      "lamin A/C"))
                                    ("upcase" "LIMK" "UP:P53667"
                                     ("LimK" "ONT:GENE" :ID "NCIT:C51212" :NAME
                                      "LIMK1"))
                                    ("downcase" "light" "UP:O43557"
                                     ("Light" "ONT:GENE" :ID "HGNC:11930" :NAME
                                      "tumor necrosis factor superfamily member 14"))
                                    ("upcase" "MYPT1" "UP:O14974"
                                     ("Mypt1" "ONT:GENE" :ID "HGNC:7618" :NAME
                                      "protein phosphatase 1 regulatory subunit 12A"))
                                    ("downcase" "mixl1" "UP:Q9H2W2"
                                     ("Mixl1" "ONT:GENE" :ID "HGNC:13363" :NAME
                                      "Mix paired-like homeobox"))
                                    ("downcase" "med" "UP:Q14055"
                                     ("Med" "ONT:GENE" :ID "HGNC:2218" :NAME
                                      "collagen type IX alpha 2 chain"))
                                    ("upcase" "MAZ" "UP:P56270"
                                     ("Maz" "ONT:GENE" :ID "HGNC:6914" :NAME
                                      "MYC associated zinc finger protein"))
                                    ("orig" "MSK1" "UP:O75582"
                                     ("MSK1" "ONT:GENE" :ID "NCIT:C51319" :NAME
                                      "RPS6KA5"))
                                    ("downcase" "nuc" "UP:Q02818"
                                     ("Nuc" "ONT:GENE" :ID "HGNC:8043" :NAME
                                      "nucleobindin 1"))
                                    ("upcase" "NUAK1" "UP:O60285"
                                     ("Nuak1" "ONT:GENE" :ID "HGNC:14311" :NAME
                                      "NUAK family kinase 1"))
                                    ("downcase" "nrf2" "UP:Q16236"
                                     ("Nrf2" "ONT:GENE" :ID "NCIT:C54238" :NAME
                                      "NFE2L2"))
                                    ("upcase" "NOX2" "UP:P04839"
                                     ("Nox2" "ONT:GENE" :ID "NCIT:C106595"
                                      :NAME "CYBB"))
                                    ("upcase" "NES" "UP:P48681"
                                     ("Nes" "ONT:GENE" :ID "NCIT:C104196" :NAME
                                      "ELANE"))
                                    ("downcase" "nek2" "UP:P51955"
                                     ("Nek2" "ONT:GENE" :ID "HGNC:7745" :NAME
                                      "NIMA related kinase 2"))
                                    ("downcase" "nck" "UP:P16333"
                                     ("Nck" "ONT:GENE" :ID "HGNC:7664" :NAME
                                      "NCK adaptor protein 1"))
                                    ("orig" "NPHP1" "UP:O15259"
                                     ("NPHP1" "ONT:GENE" :ID "HGNC:7905" :NAME
                                      "nephrocystin 1"))
                                    ("orig" "PDLIM5" "UP:Q96HC4"
                                     ("PDLIM5" "ONT:GENE" :ID "HGNC:17468"
                                      :NAME "PDZ and LIM domain 5"))
                                    ("orig" "PDK2" "UP:Q15119"
                                     ("PDK2" "ONT:GENE" :ID "HGNC:8810" :NAME
                                      "pyruvate dehydrogenase kinase 2"))
                                    ("orig" "PCBP1" "UP:Q15365"
                                     ("PCBP1" "ONT:GENE" :ID "HGNC:8647" :NAME
                                      "poly(rC) binding protein 1"))
                                    ("upcase" "PCK1" "UP:P35558"
                                     ("Pck1" "ONT:GENE" :ID "HGNC:8724" :NAME
                                      "phosphoenolpyruvate carboxykinase 1"))
                                    ("downcase" "patj" "UP:Q8NI35"
                                     ("Patj" "ONT:GENE" :ID "HGNC:28881" :NAME
                                      "PATJ, crumbs cell polarity complex component"))
                                    ("orig" "PYST1" "UP:Q16828"
                                     ("PYST1" "ONT:GENE" :ID "NCIT:C106025"
                                      :NAME "DUSP6"))
                                    ("orig" "PTRF" "UP:Q6NZI2"
                                     ("PTRF" "ONT:GENE" :ID "HGNC:9688" :NAME
                                      "polymerase I and transcript release factor"))
                                    ("orig" "PRKAA1" "UP:Q13131"
                                     ("PRKAA1" "ONT:GENE" :ID "HGNC:9376" :NAME
                                      "protein kinase AMP-activated catalytic subunit alpha 1"))
                                    ("orig" "PRAS40" "UP:Q96B36"
                                     ("PRAS40" "ONT:GENE" :ID "NCIT:C101615"
                                      :NAME "AKT1S1"))
                                    ("orig" "PPM1A" "UP:P35813"
                                     ("PPM1A" "ONT:GENE" :ID "HGNC:9275" :NAME
                                      "protein phosphatase, Mg2+/Mn2+ dependent 1A"))
                                    ("orig" "PKN" "UP:Q16512"
                                     ("PKN" "ONT:GENE" :ID "NCIT:C125198" :NAME
                                      "PKN1"))
                                    ("orig" "PKM2" "UP:P14618"
                                     ("PKM2" "ONT:GENE" :ID "NCIT:C74442" :NAME
                                      "PKM2"))
                                    ("downcase" "pkg" "UP:Q03393"
                                     ("PKG" "ONT:GENE" :ID "NCIT:C125496" :NAME
                                      "PRKG1"))
                                    ("orig" "PKD3" "UP:P08F94"
                                     ("PKD3" "ONT:GENE" :ID "NCIT:C95263" :NAME
                                      "PRKD3"))
                                    ("orig" "PKD1" "UP:Q15139"
                                     ("PKD1" "ONT:GENE" :ID "HGNC:9008" :NAME
                                      "polycystin 1, transient receptor potential channel interacting"))
                                    ("orig" "PIK3" "UP:P54675"
                                     ("PIK3" "ONT:GENE" :ID "NCIT:C51162" :NAME
                                      "PIK3CG"))
                                    ("orig" "RPS6KB1" "NCIT:C84315"
                                     ("RPS6KB1" "ONT:GENE" :ID "HGNC:10436"
                                      :NAME "ribosomal protein S6 kinase B1"))
                                    ("orig" "RPS6" "UP:P62753"
                                     ("RPS6" "ONT:GENE" :ID "HGNC:10429" :NAME
                                      "ribosomal protein S6"))
                                    ("orig" "RPA32" "UP:P15927"
                                     ("RPA32" "ONT:GENE" :ID "NCIT:C116635"
                                      :NAME "RPA2"))
                                    ("orig" "ROS" "UP:P08922"
                                     ("ROS" "ONT:GENE" :ID "HGNC:10261" :NAME
                                      "ROS proto-oncogene 1, receptor tyrosine kinase"))
                                    ("orig" "RLIP76" "UP:Q15311"
                                     ("RLIP76" "ONT:GENE" :ID "NCIT:C101287"
                                      :NAME "RALBP1"))
                                    ("downcase" "pyk2" "UP:Q14289"
                                     ("Pyk2" "ONT:GENE" :ID "NCIT:C51107" :NAME
                                      "PTK2B"))
                                    ("downcase" "prism" "UP:Q96FA3"
                                     ("Prism" "ONT:GENE" :ID "HGNC:9350" :NAME
                                      "PR/SET domain 6"))
                                    ("orig" "RhoGDI" "UP:P52565"
                                     ("RhoGDI" "ONT:GENE" :ID "HGNC:678" :NAME
                                      "Rho GDP dissociation inhibitor alpha"))
                                    ("orig" "RhoG" "UP:P84095"
                                     ("RhoG" "ONT:GENE" :ID "HGNC:672" :NAME
                                      "ras homolog family member G"))
                                    ("orig" "RelB" "UP:Q01201"
                                     ("RelB" "ONT:GENE" :ID "HGNC:9956" :NAME
                                      "RELB proto-oncogene, NF-kB subunit"))
                                    ("upcase" "RASGRP1" "NCIT:C97227"
                                     ("RasGRP1" "ONT:GENE" :ID "HGNC:9878"
                                      :NAME "RAS guanyl releasing protein 1"))
                                    ("downcase" "rac1" "UP:P63000"
                                     ("Rac1" "ONT:GENE" :ID "HGNC:9801" :NAME
                                      "ras-related C3 botulinum toxin substrate 1 (rho family, small GTP binding protein Rac1)"))
                                    ("orig" "SP6" "UP:Q3SY56"
                                     ("SP6" "ONT:GENE" :ID "HGNC:14530" :NAME
                                      "Sp6 transcription factor"))
                                    ("orig" "SHIP" "UP:Q92835"
                                     ("SHIP" "ONT:GENE" :ID "NCIT:C95112" :NAME
                                      "INPP5D"))
                                    ("orig" "SGK1" "UP:O00141"
                                     ("SGK1" "ONT:GENE" :ID "HGNC:10810" :NAME
                                      "serum/glucocorticoid regulated kinase 1"))
                                    ("orig" "SGK" "UP:O00141"
                                     ("SGK" "ONT:GENE" :ID "NCIT:C101560" :NAME
                                      "SGK1"))
                                    ("orig" "SEK" "UP:P54764"
                                     ("SEK" "ONT:GENE" :ID "NCIT:C52161" :NAME
                                      "EPHA4"))
                                    ("downcase" "sur" "UP:Q09428"
                                     ("Sur" "ONT:GENE" :ID "HGNC:59" :NAME
                                      "ATP binding cassette subfamily C member 8"))
                                    ("upcase" "STUB1" "UP:Q9UNE7"
                                     ("Stub1" "ONT:GENE" :ID "HGNC:11427" :NAME
                                      "STIP1 homology and U-box containing protein 1"))
                                    ("downcase" "strad" "UP:Q7RTN6"
                                     ("Strad" "ONT:GENE" :ID "HGNC:30172" :NAME
                                      "STE20-related kinase adaptor alpha"))
                                    ("downcase" "stef" "UP:Q8IVF5"
                                     ("Stef" "ONT:GENE" :ID "HGNC:11806" :NAME
                                      "T-cell lymphoma invasion and metastasis 2"))
                                    ("downcase" "son" "UP:P18583"
                                     ("Son" "ONT:GENE" :ID "HGNC:11183" :NAME
                                      "SON DNA binding protein"))
                                    ("downcase" "snail" "UP:O95863"
                                     ("Snail" "ONT:GENE" :ID "HGNC:11128" :NAME
                                      "snail family transcriptional repressor 1"))
                                    ("downcase" "smurf2" "UP:Q9HAU4"
                                     ("Smurf2" "ONT:GENE" :ID "HGNC:16809"
                                      :NAME
                                      "SMAD specific E3 ubiquitin protein ligase 2"))
                                    ("downcase" "smurf1" "UP:Q9HCE7"
                                     ("Smurf1" "ONT:GENE" :ID "HGNC:16807"
                                      :NAME
                                      "SMAD specific E3 ubiquitin protein ligase 1"))
                                    ("upcase" "TAK1" "UP:P49116"
                                     ("Tak1" "ONT:GENE" :ID "NCIT:C51213" :NAME
                                      "MAP3K7"))
                                    ("downcase" "trif" "UP:Q8IUC6"
                                     ("TRIF" "ONT:GENE" :ID "HGNC:18348" :NAME
                                      "toll like receptor adaptor molecule 1"))
                                    ("orig" "TRF2" "UP:Q15554"
                                     ("TRF2" "ONT:GENE" :ID "NCIT:C52494" :NAME
                                      "TERF2"))
                                    ("orig" "TRF1" "UP:P54274"
                                     ("TRF1" "ONT:GENE" :ID "NCIT:C52493" :NAME
                                      "TERF1"))
                                    ("orig" "TRE" "UP:Q9W497"
                                     ("TRE" "ONT:GENE" :ID "HGNC:12266" :NAME
                                      "trehalase"))
                                    ("orig" "TRAF3" "UP:Q13114"
                                     ("TRAF3" "ONT:GENE" :ID "HGNC:12033" :NAME
                                      "TNF receptor associated factor 3"))
                                    ("orig" "TLR9" "UP:Q9NR96"
                                     ("TLR9" "ONT:GENE" :ID "HGNC:15633" :NAME
                                      "toll like receptor 9"))
                                    ("downcase" "zeb" "UP:P37275"
                                     ("Zeb" "ONT:GENE" :ID "NCIT:C105606" :NAME
                                      "ZEB1"))
                                    ("orig" "ZEB1" "NCIT:C105606"
                                     ("ZEB1" "ONT:GENE" :ID "HGNC:11642" :NAME
                                      "zinc finger E-box binding homeobox 1"))
                                    ("orig" "XIAP" "UP:P98170"
                                     ("XIAP" "ONT:GENE" :ID "HGNC:592" :NAME
                                      "X-linked inhibitor of apoptosis"))
                                    ("downcase" "wnt3a" "UP:P56704"
                                     ("Wnt3a" "ONT:GENE" :ID "HGNC:15983" :NAME
                                      "Wnt family member 3A"))
                                    ("downcase" "wip1" "UP:O15297"
                                     ("Wip1" "ONT:GENE" :ID "NCIT:C88180" :NAME
                                      "PPM1D"))
                                    ("orig" "WWP2" "NCIT:C95563"
                                     ("WWP2" "ONT:GENE" :ID "HGNC:16804" :NAME
                                      "WW domain containing E3 ubiquitin protein ligase 2"))
                                    ("orig" "WWOX" "UP:Q9NZC7"
                                     ("WWOX" "ONT:GENE" :ID "HGNC:12799" :NAME
                                      "WW domain containing oxidoreductase"))
                                    ("orig" "bis" "UP:O95817"
                                     ("bis" "ONT:GENE" :ID "NCIT:C105995" :NAME
                                      "BAG3"))
                                    ("orig" "araf" "UP:P10398"
                                     ("araf" "ONT:GENE" :ID "HGNC:646" :NAME
                                      "A-Raf proto-oncogene, serine/threonine kinase"))
                                    ("upcase" "CDK8" "UP:P49336"
                                     ("cdk8" "ONT:GENE" :ID "HGNC:1779" :NAME
                                      "cyclin dependent kinase 8"))
                                    ("orig" "cJun" "UP:P05412"
                                     ("cJun" "ONT:GENE" :ID "HGNC:6204" :NAME
                                      "Jun proto-oncogene, AP-1 transcription factor subunit"))
                                    ("upcase" "ECM" "UP:Q13201"
                                     ("ecm" "ONT:GENE" :ID "NCIT:C115183" :NAME
                                      "MMRN1"))
                                    ("orig" "eIF3a" "UP:Q14152"
                                     ("eIF3a" "ONT:GENE" :ID "HGNC:3271" :NAME
                                      "eukaryotic translation initiation factor 3 subunit A"))
                                    ("orig" "ctrl" "UP:P40313"
                                     ("ctrl" "ONT:GENE" :ID "HGNC:2524" :NAME
                                      "chymotrypsin like"))
                                    ("orig" "mut" "UP:P22033"
                                     ("mut" "ONT:GENE" :ID "HGNC:7526" :NAME
                                      "methylmalonyl-CoA mutase"))
                                    ("orig" "mre11" "UP:P49959"
                                     ("mre11" "ONT:GENE" :ID "NCIT:C98168"
                                      :NAME "MRE11A"))
                                    ("orig" "p38α" "UP:Q16539"
                                     ("p38α" "ONT:GENE" :ID "NCIT:C51219" :NAME
                                      "MAPK14"))
                                    ("orig" "p190RhoGAP" "UP:Q9NRY4"
                                     ("p190RhoGAP" "ONT:GENE" :ID "NCIT:C97269"
                                      :NAME "GRLF1"))
                                    ("orig" "p120RasGAP" "UP:P20936"
                                     ("p120RasGAP" "ONT:GENE" :ID "NCIT:C91776"
                                      :NAME "RASA1"))
                                    ("upcase" "PX1" "UP:Q96RD7"
                                     ("pX1" "ONT:GENE" :ID "HGNC:8599" :NAME
                                      "pannexin 1"))
                                    ("orig" "pGL3" "UP:Q99643"
                                     ("pGL3" "ONT:GENE" :ID "NCIT:C97777" :NAME
                                      "SDHC"))
                                    ("upcase" "PBS" "UP:Q7Z859"
                                     ("pBS" "ONT:GENE" :ID "NCIT:C122728" :NAME
                                      "TSPO"))
                                    ("orig" "rab7" "UP:P51149"
                                     ("rab7" "ONT:GENE" :ID "NCIT:C119632"
                                      :NAME "RAB7A"))
                                    ("upcase" "SDS" "UP:P20132"
                                     ("sds" "ONT:GENE" :ID "NCIT:C52550" :NAME
                                      "RANGAP1"))
                                    ("orig" "san" "UP:Q9GZZ1"
                                     ("san" "ONT:GENE" :ID "HGNC:29533" :NAME
                                      "N(alpha)-acetyltransferase 50, NatE catalytic subunit"))
                                    ("upcase" "RICTOR" "NCIT:C104736"
                                     ("rictor" "ONT:GENE" :ID "HGNC:28611"
                                      :NAME
                                      "RPTOR independent companion of MTOR complex 2"))
                                    ("orig" "slug" "UP:O43623"
                                     ("slug" "ONT:GENE" :ID "NCIT:C52105" :NAME
                                      "SNAI2"))
                                    ("upcase" "SIRT1" "NCIT:C80114"
                                     ("sirt1" "ONT:GENE" :ID "HGNC:14929" :NAME
                                      "sirtuin 1"))
                                    ("upcase" "VIII" "UP:P69540"
                                     ("viii" "ONT:GENE" :ID "HGNC:2294" :NAME
                                      "cytochrome c oxidase subunit 8A"))
                                    ("orig" "ERCC1" "UP:P07992"
                                     ("ERCC1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3433" :NAME
                                      "ERCC excision repair 1, endonuclease non-catalytic subunit"))
                                    ("orig" "EGFR" "NCIT:C51744"
                                     ("EGFR" "ONT:GENE-PROTEIN" :ID "HGNC:3236"
                                      :NAME
                                      "epidermal growth factor receptor"))
                                    ("orig" "E2F1" "UP:Q01094"
                                     ("E2F1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52538" :NAME "E2F1"))
                                    ("orig" "Cyclin B1" "UP:P14635"
                                     ("Cyclin B1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1579" :NAME "cyclin B1"))
                                    ("downcase" "cip" "UP:Q5VWP3"
                                     ("Cip" "ONT:GENE-PROTEIN" :ID "HGNC:21355"
                                      :NAME
                                      "muscular LMNA interacting protein"))
                                    ("orig" "CYP1A1" "UP:P04798"
                                     ("CYP1A1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2595" :NAME
                                      "cytochrome P450 family 1 subfamily A member 1"))
                                    ("orig" "CUL4A" "UP:Q13619"
                                     ("CUL4A" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2554" :NAME "cullin 4A"))
                                    ("orig" "COX-2" "UP:P35354"
                                     ("COX-2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C50905" :NAME "PTGS2"))
                                    ("orig" "CD44" "NCIT:C51123"
                                     ("CD44" "ONT:GENE-PROTEIN" :ID "HGNC:1681"
                                      :NAME
                                      "CD44 molecule (Indian blood group)"))
                                    ("orig" "CARDIF" "UP:Q7Z434"
                                     ("CARDIF" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:29233" :NAME
                                      "mitochondrial antiviral signaling protein"))
                                    ("downcase" "axl" "UP:P30530"
                                     ("Axl" "ONT:GENE-PROTEIN" :ID "HGNC:905"
                                      :NAME "AXL receptor tyrosine kinase"))
                                    ("downcase" "akt1" "UP:P31749"
                                     ("Akt1" "ONT:GENE-PROTEIN" :ID "HGNC:391"
                                      :NAME "AKT serine/threonine kinase 1"))
                                    ("orig" "ATF2" "UP:P15336"
                                     ("ATF2" "ONT:GENE-PROTEIN" :ID "HGNC:784"
                                      :NAME
                                      "activating transcription factor 2"))
                                    ("orig" "APC" "UP:P25054"
                                     ("APC" "ONT:GENE-PROTEIN" :ID "HGNC:583"
                                      :NAME
                                      "APC, WNT signaling pathway regulator"))
                                    ("orig" "IL-6" "UP:P05231"
                                     ("IL-6" "ONT:GENE-PROTEIN" :ID "HGNC:6018"
                                      :NAME "interleukin 6"))
                                    ("orig" "IL-2" "UP:P60568"
                                     ("IL-2" "ONT:GENE-PROTEIN" :ID "HGNC:6001"
                                      :NAME "interleukin 2"))
                                    ("orig" "IGF-1R" "UP:P08069"
                                     ("IGF-1R" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5465" :NAME
                                      "insulin like growth factor 1 receptor"))
                                    ("orig" "GSK-3α" "UP:P49841"
                                     ("GSK-3α" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C42621" :NAME
                                      "glycogen synthase kinase 3 alpha"))
                                    ("orig" "GRK2" "UP:P25098"
                                     ("GRK2" "ONT:GENE-PROTEIN" :ID "HGNC:289"
                                      :NAME
                                      "G protein-coupled receptor kinase 2"))
                                    ("hyphens" "PTPH1" "UP:P26045"
                                     ("PTPH-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q5I147" :NAME
                                      "Tyrosine phosphatase-like protein H1"))
                                    ("downcase" "ptgs-2" "UP:P35354"
                                     ("PTGS-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9605" :NAME
                                      "prostaglandin-endoperoxide synthase 2"))
                                    ("orig" "PRKAB1" "UP:Q9Y478"
                                     ("PRKAB1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9378" :NAME
                                      "protein kinase AMP-activated non-catalytic subunit beta 1"))
                                    ("orig" "PP2Cα" "UP:P67775"
                                     ("PP2Cα" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9275" :NAME
                                      "protein phosphatase, Mg2+/Mn2+ dependent 1A"))
                                    ("hyphens-dc" "pgp" "UP:A6NDG6"
                                     ("P-gp" "ONT:GENE-PROTEIN" :ID "HGNC:8909"
                                      :NAME "phosphoglycolate phosphatase"))
                                    ("upcase" "ODF2" "UP:Q5BJF6"
                                     ("Odf2" "ONT:GENE-PROTEIN" :ID "HGNC:8114"
                                      :NAME
                                      "outer dense fiber of sperm tails 2"))
                                    ("downcase" "nup153" "UP:P49790"
                                     ("Nup153" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8062" :NAME "nucleoporin 153"))
                                    ("hyphens" "NQO1" "UP:P15559"
                                     ("NQO-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2874" :NAME
                                      "NAD(P)H quinone dehydrogenase 1"))
                                    ("orig" "MMP-2" "UP:P08253"
                                     ("MMP-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7166" :NAME
                                      "matrix metallopeptidase 2"))
                                    ("orig" "VEGFR2" "UP:P35968"
                                     ("VEGFR2" "ONT:GENE-PROTEIN" :ID
                                      "UP:P52583" :NAME
                                      "Vascular endothelial growth factor receptor 2"))
                                    ("hyphens" "VEGFR2" "UP:P35968"
                                     ("VEGF-R2" "ONT:GENE-PROTEIN" :ID
                                      "UP:P52583" :NAME
                                      "Vascular endothelial growth factor receptor 2"))
                                    ("orig" "VASP" "UP:P50552"
                                     ("VASP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12652" :NAME
                                      "vasodilator-stimulated phosphoprotein"))
                                    ("upcase" "CPP32" "UP:P42574"
                                     ("cpp32" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18031" :NAME "caspase-3"))
                                    ("orig" "cpm" "UP:P14384"
                                     ("cpm" "ONT:GENE-PROTEIN" :ID "HGNC:2311"
                                      :NAME "carboxypeptidase M"))
                                    ("orig" "p60" "UP:Q13501"
                                     ("p60" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C101492" :NAME "SQSTM1"))
                                    ("orig" "β-catenin" "UP:P35222"
                                     ("β-catenin" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17478" :NAME "beta catenin"))
                                    ("downcase" "gata3" "UP:P23771"
                                     ("Gata3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4172" :NAME
                                      "GATA binding protein 3"))
                                    ("downcase" "gab2" "UP:Q9UQC2"
                                     ("Gab2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14458" :NAME
                                      "GRB2 associated binding protein 2"))
                                    ("orig" "GPI" "UP:P06744"
                                     ("GPI" "ONT:GENE-PROTEIN" :ID "HGNC:4458"
                                      :NAME "glucose-6-phosphate isomerase"))
                                    ("orig" "GFAP" "UP:P14136"
                                     ("GFAP" "ONT:GENE-PROTEIN" :ID "HGNC:4235"
                                      :NAME "glial fibrillary acidic protein"))
                                    ("orig" "GDNF" "UP:P39905"
                                     ("GDNF" "ONT:GENE-PROTEIN" :ID "HGNC:4232"
                                      :NAME
                                      "glial cell derived neurotrophic factor"))
                                    ("downcase" "foxo3a" "UP:O43524"
                                     ("Foxo3a" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52907" :NAME "FOXO3A"))
                                    ("downcase" "foxo1" "UP:Q12778"
                                     ("Foxo1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3819" :NAME "forkhead box O1"))
                                    ("downcase" "flt3" "UP:P49771"
                                     ("Flt3" "ONT:GENE-PROTEIN" :ID "HGNC:3765"
                                      :NAME "fms related tyrosine kinase 3"))
                                    ("upcase" "FLICE" "UP:Q14790"
                                     ("Flice" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18182" :NAME "caspase-8"))
                                    ("upcase" "FGFR4" "UP:P22455"
                                     ("Fgfr4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3691" :NAME
                                      "fibroblast growth factor receptor 4"))
                                    ("upcase" "FGFR2" "UP:P21802"
                                     ("Fgfr2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3689" :NAME
                                      "fibroblast growth factor receptor 2"))
                                    ("upcase" "FGFR" "NCIT:C17297"
                                     ("Fgfr" "ONT:GENE-PROTEIN" :ID "BE:FGFR"
                                      :NAME "FGFR"))
                                    ("downcase" "fas" "UP:P48023"
                                     ("Fas" "ONT:GENE-PROTEIN" :ID "HGNC:11920"
                                      :NAME "Fas cell surface death receptor"))
                                    ("upcase" "FANCE" "UP:Q9HB96"
                                     ("FancE" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3586" :NAME
                                      "Fanconi anemia complementation group E"))
                                    ("downcase" "fanca" "UP:Q0VAP4"
                                     ("FancA" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3582" :NAME
                                      "Fanconi anemia complementation group A"))
                                    ("orig" "HOIP" "UP:Q96EP0"
                                     ("HOIP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16031" :NAME
                                      "ring finger protein 31"))
                                    ("orig" "HLA" "NCIT:C121977"
                                     ("HLA" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20705" :NAME
                                      "MHC class-II protein"))
                                    ("orig" "HK2" "NCIT:C51050"
                                     ("HK2" "ONT:GENE-PROTEIN" :ID "HGNC:4923"
                                      :NAME "hexokinase 2"))
                                    ("orig" "HDAC8" "UP:Q9BY41"
                                     ("HDAC8" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:13315" :NAME
                                      "histone deacetylase 8"))
                                    ("orig" "HDAC3" "UP:O15379"
                                     ("HDAC3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4854" :NAME
                                      "histone deacetylase 3"))
                                    ("upcase" "H2B" "UP:Q16778"
                                     ("H2b" "ONT:GENE-PROTEIN" :ID "UP:P54348"
                                      :NAME "Histone H2B.5"))
                                    ("downcase" "h2a" "UP:Q7L7L0"
                                     ("H2a" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C16684" :NAME "histone-H2A"))
                                    ("downcase" "gro" "UP:P09341"
                                     ("Gro" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20471" :NAME
                                      "C-X-C motif chemokine ligand-1"))
                                    ("downcase" "grb7" "UP:Q14451"
                                     ("Grb7" "ONT:GENE-PROTEIN" :ID "HGNC:4567"
                                      :NAME
                                      "growth factor receptor bound protein 7"))
                                    ("downcase" "grb2" "UP:P62993"
                                     ("Grb2" "ONT:GENE-PROTEIN" :ID "HGNC:4566"
                                      :NAME
                                      "growth factor receptor bound protein 2"))
                                    ("downcase" "grb10" "UP:Q13322"
                                     ("Grb10" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4564" :NAME
                                      "growth factor receptor bound protein 10"))
                                    ("downcase" "gli1" "UP:P08151"
                                     ("Gli1" "ONT:GENE-PROTEIN" :ID "HGNC:4317"
                                      :NAME "GLI family zinc finger 1"))
                                    ("orig" "IL3" "UP:P08700"
                                     ("IL3" "ONT:GENE-PROTEIN" :ID "HGNC:6011"
                                      :NAME "interleukin 3"))
                                    ("orig" "IL2" "UP:P60568"
                                     ("IL2" "ONT:GENE-PROTEIN" :ID "HGNC:6001"
                                      :NAME "interleukin 2"))
                                    ("downcase" "ikkγ" "UP:Q9Y6K9"
                                     ("IKKγ" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C75608" :NAME "IKBKG"))
                                    ("orig" "IGFR" "UP:P08069"
                                     ("IGFR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17530" :NAME
                                      "insulin-like growth factor receptor"))
                                    ("orig" "IGFBP3" "UP:P17936"
                                     ("IGFBP3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5472" :NAME
                                      "insulin like growth factor binding protein 3"))
                                    ("orig" "IGFBP1" "UP:P08833"
                                     ("IGFBP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5469" :NAME
                                      "insulin like growth factor binding protein 1"))
                                    ("orig" "IGF1R" "NCIT:C51548"
                                     ("IGF1R" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5465" :NAME
                                      "insulin like growth factor 1 receptor"))
                                    ("orig" "IGF1" "UP:P05019"
                                     ("IGF1" "ONT:GENE-PROTEIN" :ID "HGNC:5464"
                                      :NAME "insulin like growth factor 1"))
                                    ("orig" "IER3" "UP:P46695"
                                     ("IER3" "ONT:GENE-PROTEIN" :ID "HGNC:5392"
                                      :NAME "immediate early response 3"))
                                    ("orig" "ICE" "UP:O00748"
                                     ("ICE" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18045" :NAME "caspase-1"))
                                    ("orig" "ICAM1" "UP:P05362"
                                     ("ICAM1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5344" :NAME
                                      "intercellular adhesion molecule 1"))
                                    ("downcase" "hus1" "UP:O60921"
                                     ("Hus1" "ONT:GENE-PROTEIN" :ID "HGNC:5309"
                                      :NAME "HUS1 checkpoint clamp component"))
                                    ("orig" "HspB5" "UP:P02511"
                                     ("HspB5" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C115114" :NAME "CRYAB"))
                                    ("orig" "HspB1" "UP:P04792"
                                     ("HspB1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5246" :NAME
                                      "heat shock protein family B (small) member 1"))
                                    ("downcase" "hsp60" "UP:P10809"
                                     ("Hsp60" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104340" :NAME
                                      "60 kDa heat shock protein mitochondrial"))
                                    ("downcase" "hif1" "UP:Q9BYW2"
                                     ("Hif1" "ONT:GENE-PROTEIN" :ID "BE:HIF1"
                                      :NAME "HIF1"))
                                    ("upcase" "HGFR" "UP:P08581"
                                     ("Hgfr" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18186" :NAME
                                      "hepatocyte growth factor receptor"))
                                    ("upcase" "HGF" "UP:P14210"
                                     ("Hgf" "ONT:GENE-PROTEIN" :ID "HGNC:4893"
                                      :NAME "hepatocyte growth factor"))
                                    ("downcase" "hdm2" "UP:Q00987"
                                     ("Hdm2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17515" :NAME "MDM2 protein"))
                                    ("downcase" "hdacs" "UP:O43809"
                                     ("Hdacs" "ONT:GENE-PROTEIN" :ID "BE:HDAC"
                                      :NAME "HDAC"))
                                    ("upcase" "HDAC2" "UP:Q92769"
                                     ("Hdac2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4853" :NAME
                                      "histone deacetylase 2"))
                                    ("upcase" "HDAC1" "NCIT:C49389"
                                     ("Hdac1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4852" :NAME
                                      "histone deacetylase 1"))
                                    ("upcase" "HDAC" "UP:Q54VQ7"
                                     ("Hdac" "ONT:GENE-PROTEIN" :ID "BE:HDAC"
                                      :NAME "HDAC"))
                                    ("orig" "HS1" "UP:P14317"
                                     ("HS1" "ONT:GENE-PROTEIN" :ID "UP:P0C2F4"
                                      :NAME "Heteroscorpine-1"))
                                    ("downcase" "iκbα" "UP:P25963"
                                     ("Iκbα" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17678" :NAME
                                      "I-kappa-B-alpha protein"))
                                    ("upcase" "IL6" "UP:P05231"
                                     ("Il6" "ONT:GENE-PROTEIN" :ID "HGNC:6018"
                                      :NAME "interleukin 6"))
                                    ("downcase" "ikkβ" "UP:O14920"
                                     ("Ikkβ" "ONT:GENE-PROTEIN" :ID "UP:Q95KV0"
                                      :NAME
                                      "Inhibitor of nuclear factor kappa-B kinase subunit beta"))
                                    ("orig" "IgM" "UP:O07582"
                                     ("IgM" "ONT:GENE-PROTEIN" :ID "NCIT:C569"
                                      :NAME "IgM"))
                                    ("downcase" "id2" "UP:Q02363"
                                     ("Id2" "ONT:GENE-PROTEIN" :ID "HGNC:5361"
                                      :NAME
                                      "inhibitor of DNA binding 2, HLH protein"))
                                    ("orig" "IRSp53" "UP:Q9UQB8"
                                     ("IRSp53" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51101" :NAME "BAIAP2"))
                                    ("orig" "IRS2" "UP:Q9Y4H2"
                                     ("IRS2" "ONT:GENE-PROTEIN" :ID "HGNC:6126"
                                      :NAME "insulin receptor substrate 2"))
                                    ("orig" "IRF7" "UP:Q92985"
                                     ("IRF7" "ONT:GENE-PROTEIN" :ID "HGNC:6122"
                                      :NAME "interferon regulatory factor 7"))
                                    ("orig" "IRF3" "UP:Q14653"
                                     ("IRF3" "ONT:GENE-PROTEIN" :ID "HGNC:6118"
                                      :NAME "interferon regulatory factor 3"))
                                    ("orig" "IRAK1" "UP:P51617"
                                     ("IRAK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6112" :NAME
                                      "interleukin 1 receptor associated kinase 1"))
                                    ("orig" "ILK" "UP:Q13418"
                                     ("ILK" "ONT:GENE-PROTEIN" :ID "HGNC:6040"
                                      :NAME "integrin linked kinase"))
                                    ("orig" "LPL" "UP:P06858"
                                     ("LPL" "ONT:GENE-PROTEIN" :ID "HGNC:6677"
                                      :NAME "lipoprotein lipase"))
                                    ("orig" "LPA1" "UP:Q92633"
                                     ("LPA1" "ONT:GENE-PROTEIN" :ID "UP:Q28031"
                                      :NAME
                                      "Lysophosphatidic acid receptor 1"))
                                    ("orig" "LIMK1" "UP:P53667"
                                     ("LIMK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6613" :NAME "LIM domain kinase 1"))
                                    ("orig" "LIF" "UP:P15018"
                                     ("LIF" "ONT:GENE-PROTEIN" :ID "HGNC:6596"
                                      :NAME "leukemia inhibitory factor"))
                                    ("orig" "LC3" "UP:Q9H492"
                                     ("LC3" "ONT:GENE-PROTEIN" :ID "BE:MAP1LC3"
                                      :NAME "MAP1LC3"))
                                    ("downcase" "kras" "UP:P01116"
                                     ("Kras" "ONT:GENE-PROTEIN" :ID "HGNC:6407"
                                      :NAME "KRAS proto-oncogene, GTPase"))
                                    ("upcase" "KIT" "UP:P10721"
                                     ("Kit" "ONT:GENE-PROTEIN" :ID "HGNC:6342"
                                      :NAME
                                      "KIT proto-oncogene receptor tyrosine kinase"))
                                    ("upcase" "KDR" "UP:P35968"
                                     ("Kdr" "ONT:GENE-PROTEIN" :ID "HGNC:6307"
                                      :NAME "kinase insert domain receptor"))
                                    ("orig" "MMP9" "UP:P14780"
                                     ("MMP9" "ONT:GENE-PROTEIN" :ID "HGNC:7176"
                                      :NAME "matrix metallopeptidase 9"))
                                    ("orig" "MMP7" "UP:P09237"
                                     ("MMP7" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C98112" :NAME "MMP7"))
                                    ("orig" "MMP3" "UP:P08254"
                                     ("MMP3" "ONT:GENE-PROTEIN" :ID "HGNC:7173"
                                      :NAME "matrix metallopeptidase 3"))
                                    ("orig" "MMP2" "UP:P08253"
                                     ("MMP2" "ONT:GENE-PROTEIN" :ID "HGNC:7166"
                                      :NAME "matrix metallopeptidase 2"))
                                    ("orig" "MMP10" "NCIT:C101760"
                                     ("MMP10" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7156" :NAME
                                      "matrix metallopeptidase 10"))
                                    ("orig" "MKP1" "UP:P28562"
                                     ("MKP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C29568" :NAME
                                      "dual specificity phosphatase-1"))
                                    ("orig" "MIP1" "UP:Q92973"
                                     ("MIP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C105118" :NAME "MAPKAP1"))
                                    ("orig" "MELK" "UP:Q14680"
                                     ("MELK" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16870" :NAME
                                      "maternal embryonic leucine zipper kinase"))
                                    ("orig" "MEKK" "UP:Q13233"
                                     ("MEKK" "ONT:GENE-PROTEIN" :ID
                                      "GO:0004709" :NAME
                                      "MAP kinase kinase kinase activity"))
                                    ("orig" "MEK2" "UP:P36507"
                                     ("MEK2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C105947" :NAME
                                      "mitogen-activated protein kinase kinase"))
                                    ("orig" "MCH5" "UP:Q14790"
                                     ("MCH5" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18182" :NAME "caspase-8"))
                                    ("orig" "MCAK" "UP:Q99661"
                                     ("MCAK" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104357" :NAME "KIF2C"))
                                    ("orig" "MAVS" "UP:Q7Z434"
                                     ("MAVS" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:29233" :NAME
                                      "mitochondrial antiviral signaling protein"))
                                    ("orig" "MAPK14" "NCIT:C51219"
                                     ("MAPK14" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6876" :NAME
                                      "mitogen-activated protein kinase 14"))
                                    ("orig" "MAPK1" "NCIT:C52872"
                                     ("MAPK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6871" :NAME
                                      "mitogen-activated protein kinase 1"))
                                    ("orig" "MAP4" "UP:P27816"
                                     ("MAP4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104637" :NAME "MAP4"))
                                    ("orig" "MAP2K1" "UP:Q02750"
                                     ("MAP2K1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6840" :NAME
                                      "mitogen-activated protein kinase kinase 1"))
                                    ("orig" "MAD" "UP:Q05195"
                                     ("MAD" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52227" :NAME "MAD"))
                                    ("downcase" "lyn" "UP:P07948"
                                     ("Lyn" "ONT:GENE-PROTEIN" :ID "HGNC:6735"
                                      :NAME
                                      "LYN proto-oncogene, Src family tyrosine kinase"))
                                    ("upcase" "LRP6" "UP:O75581"
                                     ("Lrp6" "ONT:GENE-PROTEIN" :ID "HGNC:6698"
                                      :NAME "LDL receptor related protein 6"))
                                    ("orig" "NAT" "UP:O62696"
                                     ("NAT" "ONT:GENE-PROTEIN" :ID "UP:P0A5L9"
                                      :NAME "Arylamine N-acetyltransferase"))
                                    ("downcase" "myt1" "UP:Q99640"
                                     ("Myt1" "ONT:GENE-PROTEIN" :ID "HGNC:7622"
                                      :NAME "myelin transcription factor 1"))
                                    ("downcase" "myod" "UP:P15172"
                                     ("MyoD" "ONT:GENE-PROTEIN" :ID "UP:Q9XYF6"
                                      :NAME "Myosin-D"))
                                    ("upcase" "MYD88" "UP:Q99836"
                                     ("Myd88" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7562" :NAME
                                      "myeloid differentiation primary response 88"))
                                    ("upcase" "MORT1" "UP:Q13158"
                                     ("Mort1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C26106" :NAME
                                      "fas-associated via death domain protein"))
                                    ("downcase" "mkp3" "UP:Q16828"
                                     ("Mkp3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C106025" :NAME "DUSP6"))
                                    ("upcase" "MEK1" "UP:Q02750"
                                     ("Mek1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52823" :NAME "MAP2K1"))
                                    ("downcase" "med1" "UP:Q15648"
                                     ("Med1" "ONT:GENE-PROTEIN" :ID "HGNC:9234"
                                      :NAME "mediator complex subunit 1"))
                                    ("upcase" "MDA5" "UP:Q9BYX4"
                                     ("Mda5" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C119720" :NAME "IFIH1"))
                                    ("upcase" "MCM2" "UP:P49736"
                                     ("Mcm2" "ONT:GENE-PROTEIN" :ID "HGNC:6944"
                                      :NAME
                                      "minichromosome maintenance complex component 2"))
                                    ("upcase" "MCL1" "UP:Q07820"
                                     ("Mcl1" "ONT:GENE-PROTEIN" :ID "HGNC:6943"
                                      :NAME "BCL2 family apoptosis regulator"))
                                    ("downcase" "max" "UP:P61244"
                                     ("Max" "ONT:GENE-PROTEIN" :ID "HGNC:6913"
                                      :NAME "MYC associated factor X"))
                                    ("upcase" "MAP2" "UP:P11137"
                                     ("Map2" "ONT:GENE-PROTEIN" :ID "HGNC:6839"
                                      :NAME
                                      "microtubule associated protein 2"))
                                    ("downcase" "map" "MAP"
                                     ("Map" "ONT:GENE-PROTEIN" :ID "UP:P28617"
                                      :NAME "Methionine aminopeptidase"))
                                    ("upcase" "MALT1" "UP:Q9UDY8"
                                     ("Malt1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6819" :NAME "MALT1 paracaspase"))
                                    ("downcase" "mad3" "UP:P84022"
                                     ("Mad3" "ONT:GENE-PROTEIN" :ID "UP:P84023"
                                      :NAME
                                      "Mothers against decapentaplegic homolog 3"))
                                    ("upcase" "MACH" "UP:Q14790"
                                     ("Mach" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18182" :NAME "caspase-8"))
                                    ("orig" "MYLK" "UP:Q15746"
                                     ("MYLK" "ONT:GENE-PROTEIN" :ID "HGNC:7590"
                                      :NAME "myosin light chain kinase"))
                                    ("orig" "MUC5AC" "UP:P98088"
                                     ("MUC5AC" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7515" :NAME
                                      "mucin 5AC, oligomeric mucus/gel-forming"))
                                    ("upcase" "MRAS" "UP:O14807"
                                     ("MRas" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52548" :NAME "MRAS"))
                                    ("orig" "MRP1" "UP:P20585"
                                     ("MRP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C101155" :NAME "CD9"))
                                    ("downcase" "nur77" "UP:P22736"
                                     ("Nur77" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C30088" :NAME
                                      "early response protein-NAK1"))
                                    ("upcase" "NRF1" "UP:Q16656"
                                     ("Nrf1" "ONT:GENE-PROTEIN" :ID "UP:Q90X44"
                                      :NAME "Nuclear respiratory factor 1"))
                                    ("downcase" "nqo1" "UP:B4DLR8"
                                     ("Nqo1" "ONT:GENE-PROTEIN" :ID "HGNC:2874"
                                      :NAME "NAD(P)H quinone dehydrogenase 1"))
                                    ("upcase" "NOX1" "UP:Q9Y5S8"
                                     ("Nox1" "ONT:GENE-PROTEIN" :ID "HGNC:7889"
                                      :NAME "NADPH oxidase 1"))
                                    ("upcase" "NIK" "UP:Q99558"
                                     ("Nik" "ONT:GENE-PROTEIN" :ID "GO:0004704"
                                      :NAME
                                      "NF-kappaB-inducing kinase activity"))
                                    ("upcase" "NGF" "UP:P01138"
                                     ("Ngf" "ONT:GENE-PROTEIN" :ID "HGNC:7808"
                                      :NAME "nerve growth factor"))
                                    ("downcase" "nfκb" "UP:P19838"
                                     ("Nfκb" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C94298" :NAME "NFKB1"))
                                    ("downcase" "nemo" "UP:Q9UBE8"
                                     ("Nemo" "ONT:GENE-PROTEIN" :ID "UP:Q95KU9"
                                      :NAME "NF-kappa-B essential modulator"))
                                    ("downcase" "nedd4" "UP:P46934"
                                     ("Nedd4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7727" :NAME
                                      "neural precursor cell expressed, developmentally down-regulated 4, E3 ubiquitin protein ligase"))
                                    ("downcase" "ndrg2" "UP:Q9UN36"
                                     ("Ndrg2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14460" :NAME
                                      "NDRG family member 2"))
                                    ("upcase" "NCOR" "UP:O75376"
                                     ("NcoR" "ONT:GENE-PROTEIN" :ID "BE:NCOR"
                                      :NAME "NCOR"))
                                    ("downcase" "nbs1" "UP:Q9NX02"
                                     ("Nbs1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C50999" :NAME "NBS1"))
                                    ("orig" "NOVA1" "UP:P51513"
                                     ("NOVA1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7886" :NAME
                                      "NOVA alternative splicing regulator 1"))
                                    ("orig" "NLK" "UP:Q9UBE8"
                                     ("NLK" "ONT:GENE-PROTEIN" :ID "HGNC:29858"
                                      :NAME "nemo like kinase"))
                                    ("orig" "NFAT5" "UP:O94916"
                                     ("NFAT5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7774" :NAME
                                      "nuclear factor of activated T-cells 5"))
                                    ("orig" "NDRG1" "UP:Q92597"
                                     ("NDRG1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7679" :NAME
                                      "N-myc downstream regulated 1"))
                                    ("orig" "PDGFA" "UP:P04085"
                                     ("PDGFA" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8799" :NAME
                                      "platelet derived growth factor subunit A"))
                                    ("orig" "PCNA" "UP:P12004"
                                     ("PCNA" "ONT:GENE-PROTEIN" :ID "HGNC:8729"
                                      :NAME
                                      "proliferating cell nuclear antigen"))
                                    ("orig" "PCN" "UP:Q15149"
                                     ("PCN" "ONT:GENE-PROTEIN" :ID "UP:Q9JI55"
                                      :NAME "Plectin"))
                                    ("orig" "PARP1" "UP:P09874"
                                     ("PARP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51001" :NAME "PARP1"))
                                    ("orig" "PAR1a" "UP:P27448"
                                     ("PAR1a" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6897" :NAME
                                      "microtubule affinity regulating kinase 3"))
                                    ("orig" "PAK6" "UP:Q9NQU5"
                                     ("PAK6" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16061" :NAME
                                      "p21 (RAC1) activated kinase 6"))
                                    ("orig" "PAK5" "UP:Q9P286"
                                     ("PAK5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:15916" :NAME
                                      "p21 (RAC1) activated kinase 5"))
                                    ("downcase" "op18" "UP:P16949"
                                     ("Op18" "ONT:GENE-PROTEIN" :ID "HGNC:6510"
                                      :NAME "stathmin 1"))
                                    ("orig" "OSMR" "UP:Q99650"
                                     ("OSMR" "ONT:GENE-PROTEIN" :ID "HGNC:8507"
                                      :NAME "oncostatin M receptor"))
                                    ("downcase" "pra" "UP:Q9Z0S9"
                                     ("PrA" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C99606" :NAME "S100A6"))
                                    ("upcase" "PML" "UP:P29590"
                                     ("Pml" "ONT:GENE-PROTEIN" :ID "HGNC:9113"
                                      :NAME "promyelocytic leukemia"))
                                    ("upcase" "PLP" "UP:P30044"
                                     ("Plp" "ONT:GENE-PROTEIN" :ID "UP:P60201"
                                      :NAME "Myelin proteolipid protein"))
                                    ("downcase" "plk1" "UP:P53350"
                                     ("Plk1" "ONT:GENE-PROTEIN" :ID "HGNC:9077"
                                      :NAME "polo like kinase 1"))
                                    ("downcase" "plcγ1" "UP:P19174"
                                     ("Plcγ1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104822" :NAME "PLCG1"))
                                    ("upcase" "PKB" "UP:P31749"
                                     ("Pkb" "ONT:GENE-PROTEIN" :ID "BE:AKT"
                                      :NAME "AKT"))
                                    ("upcase" "PIK3R1" "UP:P27986"
                                     ("Pik3r1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8979" :NAME
                                      "phosphoinositide-3-kinase regulatory subunit 1"))
                                    ("downcase" "pgp" "UP:A6NDG6"
                                     ("Pgp" "ONT:GENE-PROTEIN" :ID "HGNC:8909"
                                      :NAME "phosphoglycolate phosphatase"))
                                    ("upcase" "PDK1" "UP:O15530"
                                     ("Pdk1" "ONT:GENE-PROTEIN" :ID "HGNC:8809"
                                      :NAME "pyruvate dehydrogenase kinase 1"))
                                    ("downcase" "pdgfrα" "UP:P16234"
                                     ("Pdgfrα" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8803" :NAME
                                      "platelet derived growth factor receptor alpha"))
                                    ("downcase" "pan2" "UP:Q504Q3"
                                     ("Pan2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20074" :NAME
                                      "PAN2 poly(A) specific ribonuclease subunit"))
                                    ("downcase" "pals1" "UP:Q9JLB2"
                                     ("Pals1" "ONT:GENE-PROTEIN" :ID
                                      "UP:O49835" :NAME
                                      "Phenylalanine ammonia-lyase 1"))
                                    ("upcase" "PAK4" "UP:O96013"
                                     ("Pak4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16059" :NAME
                                      "p21 (RAC1) activated kinase 4"))
                                    ("downcase" "pak2" "UP:Q13177"
                                     ("Pak2" "ONT:GENE-PROTEIN" :ID "HGNC:8591"
                                      :NAME "p21 (RAC1) activated kinase 2"))
                                    ("downcase" "pak1" "UP:Q13153"
                                     ("Pak1" "ONT:GENE-PROTEIN" :ID "HGNC:8590"
                                      :NAME "p21 (RAC1) activated kinase 1"))
                                    ("orig" "PTPN11" "UP:Q06124"
                                     ("PTPN11" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9644" :NAME
                                      "protein tyrosine phosphatase, non-receptor type 11"))
                                    ("orig" "PTP1B" "UP:P18031"
                                     ("PTP1B" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49522" :NAME "PTPN1"))
                                    ("orig" "PTB" "UP:P26599"
                                     ("PTB" "ONT:GENE-PROTEIN" :ID "UP:Q8WN55"
                                      :NAME
                                      "Polypyrimidine tract-binding protein 1"))
                                    ("orig" "PP2C" "UP:Q8N3J5"
                                     ("PP2C" "ONT:GENE-PROTEIN" :ID "UP:P49595"
                                      :NAME
                                      "Probable protein phosphatase 2C F42G9.1"))
                                    ("orig" "PLD2" "UP:O14939"
                                     ("PLD2" "ONT:GENE-PROTEIN" :ID "HGNC:9068"
                                      :NAME "phospholipase D2"))
                                    ("orig" "PLD1" "UP:Q13393"
                                     ("PLD1" "ONT:GENE-PROTEIN" :ID "HGNC:9067"
                                      :NAME "phospholipase D1"))
                                    ("orig" "PLD" "UP:C0JAU3"
                                     ("PLD" "ONT:GENE-PROTEIN" :ID "UP:C0JAT4"
                                      :NAME
                                      "Phospholipase D LhSicTox-alphaIA1i"))
                                    ("orig" "PLCγ2" "UP:P16885"
                                     ("PLCγ2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49383" :NAME "PLCG2"))
                                    ("upcase" "PLCG1" "NCIT:C104822"
                                     ("PLCg1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9065" :NAME
                                      "phospholipase C gamma 1"))
                                    ("orig" "PKA" "UP:Q90Z06"
                                     ("PKA" "ONT:GENE-PROTEIN" :ID "BE:PKA"
                                      :NAME "PKA"))
                                    ("orig" "PIMT" "UP:Q96RS0"
                                     ("PIMT" "ONT:GENE-PROTEIN" :ID "UP:P22061"
                                      :NAME
                                      "Protein-L-isoaspartate(D-aspartate) O-methyltransferase"))
                                    ("orig" "PIK3R3" "UP:Q92569"
                                     ("PIK3R3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8981" :NAME
                                      "phosphoinositide-3-kinase regulatory subunit 3"))
                                    ("orig" "PIK3CA" "UP:P42336"
                                     ("PIK3CA" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8975" :NAME
                                      "phosphatidylinositol-4,5-bisphosphate 3-kinase catalytic subunit alpha"))
                                    ("orig" "PIAS1" "UP:O75925"
                                     ("PIAS1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2752" :NAME
                                      "protein inhibitor of activated STAT 1"))
                                    ("downcase" "pi3k" "UP:P42336"
                                     ("PI3k" "ONT:GENE-PROTEIN" :ID "UP:P54673"
                                      :NAME "Phosphatidylinositol 3-kinase 1"))
                                    ("orig" "RSK2" "UP:P51812"
                                     ("RSK2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10432" :NAME
                                      "ribosomal protein S6 kinase A3"))
                                    ("orig" "RSK" "UP:P18652"
                                     ("RSK" "ONT:GENE-PROTEIN" :ID "BE:RSK"
                                      :NAME "RSK"))
                                    ("orig" "RPE" "UP:Q96AT9"
                                     ("RPE" "ONT:GENE-PROTEIN" :ID "HGNC:10293"
                                      :NAME
                                      "ribulose-5-phosphate-3-epimerase"))
                                    ("orig" "RPA" "UP:O82171"
                                     ("RPA" "ONT:GENE-PROTEIN" :ID "UP:O27438"
                                      :NAME "Replication factor A"))
                                    ("orig" "RP23" "UP:O75665"
                                     ("RP23" "ONT:GENE-PROTEIN" :ID "UP:P26785"
                                      :NAME "60S ribosomal protein L16-B"))
                                    ("orig" "ROS1" "UP:P08922"
                                     ("ROS1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10261" :NAME
                                      "ROS proto-oncogene 1, receptor tyrosine kinase"))
                                    ("orig" "ROCK1" "UP:Q13464"
                                     ("ROCK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10251" :NAME
                                      "Rho associated coiled-coil containing protein kinase 1"))
                                    ("orig" "RILP" "UP:Q96NA2"
                                     ("RILP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:30266" :NAME
                                      "Rab interacting lysosomal protein"))
                                    ("upcase" "RARA" "UP:P10276"
                                     ("RARa" "ONT:GENE-PROTEIN" :ID "HGNC:9864"
                                      :NAME "retinoic acid receptor alpha"))
                                    ("orig" "RACK1" "UP:P63244"
                                     ("RACK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4399" :NAME
                                      "receptor for activated C kinase 1"))
                                    ("downcase" "runx1" "UP:Q9H7H1"
                                     ("Runx1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10471" :NAME
                                      "runt related transcription factor 1"))
                                    ("upcase" "RIP1" "UP:Q13546"
                                     ("Rip1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17923" :NAME
                                      "receptor-interacting serine-threonine kinase-1"))
                                    ("upcase" "RIG" "UP:Q9UBP4"
                                     ("Rig" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95420" :NAME "DKK3"))
                                    ("downcase" "rhotekin" "UP:Q9BST9"
                                     ("Rhotekin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10466" :NAME "rhotekin"))
                                    ("orig" "RhoA" "UP:P61586"
                                     ("RhoA" "ONT:GENE-PROTEIN" :ID "HGNC:667"
                                      :NAME "ras homolog family member A"))
                                    ("upcase" "RFP" "UP:P25090"
                                     ("Rfp" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52254" :NAME "RFP"))
                                    ("upcase" "RFC" "UP:P41440"
                                     ("Rfc" "ONT:GENE-PROTEIN" :ID "BE:RFC"
                                      :NAME "RFC"))
                                    ("downcase" "rar" "UP:P10826"
                                     ("Rar" "ONT:GENE-PROTEIN" :ID "BE:RAR"
                                      :NAME "RAR"))
                                    ("downcase" "rap1a" "UP:P62834"
                                     ("Rap1a" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9855" :NAME
                                      "RAP1A, member of RAS oncogene family"))
                                    ("orig" "RalGDS" "UP:Q12967"
                                     ("RalGDS" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9842" :NAME
                                      "ral guanine nucleotide dissociation stimulator"))
                                    ("orig" "RalBP1" "UP:Q15311"
                                     ("RalBP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9841" :NAME
                                      "ralA binding protein 1"))
                                    ("orig" "RalA" "UP:P11233"
                                     ("RalA" "ONT:GENE-PROTEIN" :ID "HGNC:9839"
                                      :NAME "RAS like proto-oncogene A"))
                                    ("downcase" "raf1" "UP:P04049"
                                     ("Raf1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51274" :NAME "RAF1"))
                                    ("downcase" "rad52" "UP:P43351"
                                     ("Rad52" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9824" :NAME
                                      "RAD52 homolog, DNA repair protein"))
                                    ("orig" "SUMO3" "UP:P55854"
                                     ("SUMO3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11124" :NAME
                                      "small ubiquitin-like modifier 3"))
                                    ("orig" "SUMO2" "UP:P61956"
                                     ("SUMO2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11125" :NAME
                                      "small ubiquitin-like modifier 2"))
                                    ("orig" "SUMO1" "NCIT:C106290"
                                     ("SUMO1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12502" :NAME
                                      "small ubiquitin-like modifier 1"))
                                    ("orig" "STAM" "UP:Q92783"
                                     ("STAM" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11357" :NAME
                                      "signal transducing adaptor molecule"))
                                    ("orig" "SRF" "UP:P11831"
                                     ("SRF" "ONT:GENE-PROTEIN" :ID "HGNC:11291"
                                      :NAME "serum response factor"))
                                    ("orig" "SRC1" "UP:P12931"
                                     ("SRC1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17977" :NAME
                                      "nuclear receptor coactivator-1"))
                                    ("orig" "SOD2" "UP:P04179"
                                     ("SOD2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11180" :NAME
                                      "superoxide dismutase 2, mitochondrial"))
                                    ("orig" "SMYD3" "UP:Q9H7B4"
                                     ("SMYD3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:15513" :NAME
                                      "SET and MYND domain containing 3"))
                                    ("orig" "SMRT" "UP:Q9Y618"
                                     ("SMRT" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C19891" :NAME
                                      "nuclear receptor Co-repressor-2"))
                                    ("orig" "SIK1" "UP:P57059"
                                     ("SIK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11142" :NAME
                                      "salt inducible kinase 1"))
                                    ("orig" "SHP1" "UP:P29381"
                                     ("SHP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49526" :NAME "PTPN6"))
                                    ("orig" "SHIP2" "UP:O15357"
                                     ("SHIP2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6080" :NAME
                                      "inositol polyphosphate phosphatase like 1"))
                                    ("orig" "SEL10" "UP:Q969H0"
                                     ("SEL10" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C50390" :NAME "FBXW7"))
                                    ("orig" "SEK1" "UP:P45985"
                                     ("SEK1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97675" :NAME "MAP2K4"))
                                    ("orig" "SDF1" "UP:P48061"
                                     ("SDF1" "ONT:GENE-PROTEIN" :ID "UP:O62657"
                                      :NAME "Stromal cell-derived factor 1"))
                                    ("downcase" "syk" "UP:P43405"
                                     ("Syk" "ONT:GENE-PROTEIN" :ID "HGNC:11491"
                                      :NAME
                                      "spleen associated tyrosine kinase"))
                                    ("upcase" "STK11" "UP:Q15831"
                                     ("Stk11" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11389" :NAME
                                      "serine/threonine kinase 11"))
                                    ("downcase" "stat6" "UP:P42226"
                                     ("Stat6" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11368" :NAME
                                      "signal transducer and activator of transcription 6"))
                                    ("upcase" "STAT5A" "UP:P42229"
                                     ("Stat5a" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11366" :NAME
                                      "signal transducer and activator of transcription 5A"))
                                    ("downcase" "stat3" "UP:P40763"
                                     ("Stat3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11364" :NAME
                                      "signal transducer and activator of transcription 3"))
                                    ("upcase" "STAT1" "NCIT:C52151"
                                     ("Stat1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11362" :NAME
                                      "signal transducer and activator of transcription 1"))
                                    ("upcase" "SPR" "UP:P25103"
                                     ("Spr" "ONT:GENE-PROTEIN" :ID "HGNC:11257"
                                      :NAME
                                      "sepiapterin reductase (7,8-dihydrobiopterin:NADP+ oxidoreductase)"))
                                    ("downcase" "sp2" "UP:Q02086"
                                     ("Sp2" "ONT:GENE-PROTEIN" :ID "HGNC:11207"
                                      :NAME "Sp2 transcription factor"))
                                    ("upcase" "SOD1" "UP:P00441"
                                     ("Sod1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11179" :NAME
                                      "superoxide dismutase 1, soluble"))
                                    ("downcase" "smo" "UP:Q99835"
                                     ("Smo" "ONT:GENE-PROTEIN" :ID "HGNC:11119"
                                      :NAME
                                      "smoothened, frizzled class receptor"))
                                    ("downcase" "smad7" "UP:O15105"
                                     ("Smad7" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6773" :NAME
                                      "SMAD family member 7"))
                                    ("downcase" "smad6" "UP:O43541"
                                     ("Smad6" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6772" :NAME
                                      "SMAD family member 6"))
                                    ("downcase" "smad4" "UP:Q13485"
                                     ("Smad4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6770" :NAME
                                      "SMAD family member 4"))
                                    ("downcase" "smad3" "UP:P84022"
                                     ("Smad3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6769" :NAME
                                      "SMAD family member 3"))
                                    ("downcase" "smad2" "UP:Q15796"
                                     ("Smad2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6768" :NAME
                                      "SMAD family member 2"))
                                    ("downcase" "skp1" "UP:P63208"
                                     ("Skp1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10899" :NAME
                                      "S-phase kinase-associated protein 1"))
                                    ("downcase" "shp2" "UP:Q06124"
                                     ("Shp2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18030" :NAME
                                      "non-receptor type 11 protein tyrosine phosphatase"))
                                    ("downcase" "shc1" "UP:P29353"
                                     ("Shc1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10840" :NAME
                                      "SHC adaptor protein 1"))
                                    ("upcase" "SHARPIN" "UP:Q9H0F6"
                                     ("Sharpin" "ONT:GENE-PROTEIN" :ID
                                      "UP:E1BDF2" :NAME "Sharpin"))
                                    ("upcase" "TOPBP1" "UP:Q92547"
                                     ("Topbp1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:17008" :NAME
                                      "topoisomerase (DNA) II binding protein 1"))
                                    ("downcase" "tiam1" "UP:Q13009"
                                     ("Tiam1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11805" :NAME
                                      "T-cell lymphoma invasion and metastasis 1"))
                                    ("downcase" "tcf4" "UP:P15884"
                                     ("Tcf4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C105957" :NAME "TCF4"))
                                    ("upcase" "TBK1" "UP:Q9UHD2"
                                     ("Tbk1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11584" :NAME
                                      "TANK binding kinase 1"))
                                    ("downcase" "twist1" "UP:Q15672"
                                     ("TWIST1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12428" :NAME
                                      "twist family bHLH transcription factor 1"))
                                    ("orig" "TSC" "UP:Q99576"
                                     ("TSC" "ONT:GENE-PROTEIN" :ID "BE:TSC"
                                      :NAME "TSC"))
                                    ("orig" "TRP" "UP:P17643"
                                     ("TRP" "ONT:GENE-PROTEIN" :ID "UP:Q9T1V8"
                                      :NAME
                                      "Probable tail terminator protein"))
                                    ("orig" "TRIP230" "UP:Q15643"
                                     ("TRIP230" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97862" :NAME "TRIP11"))
                                    ("orig" "TRIM25" "UP:Q14258"
                                     ("TRIM25" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12932" :NAME
                                      "tripartite motif containing 25"))
                                    ("orig" "TRAIL" "UP:P50591"
                                     ("TRAIL" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20533" :NAME "TRAIL protein"))
                                    ("orig" "TRAF6" "UP:Q9Y4K3"
                                     ("TRAF6" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12036" :NAME
                                      "TNF receptor associated factor 6"))
                                    ("orig" "TRAF2" "UP:Q12933"
                                     ("TRAF2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12032" :NAME
                                      "TNF receptor associated factor 2"))
                                    ("orig" "TRAF1" "UP:Q13077"
                                     ("TRAF1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12031" :NAME
                                      "TNF receptor associated factor 1"))
                                    ("orig" "TRADD" "UP:Q15628"
                                     ("TRADD" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12030" :NAME
                                      "TNFRSF1A associated via death domain"))
                                    ("orig" "TORC2" "UP:Q53ET0"
                                     ("TORC2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95454" :NAME "CRTC2"))
                                    ("orig" "TNK2" "UP:Q07912"
                                     ("TNK2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:19297" :NAME
                                      "tyrosine kinase non receptor 2"))
                                    ("orig" "TNFR1" "UP:P19438"
                                     ("TNFR1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51380" :NAME "TNFRSF1A"))
                                    ("orig" "TLR4" "UP:O00206"
                                     ("TLR4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11850" :NAME
                                      "toll like receptor 4"))
                                    ("orig" "TIF2" "UP:Q15596"
                                     ("TIF2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C19888" :NAME
                                      "nuclear receptor coactivator-2"))
                                    ("orig" "TGN46" "UP:O43493"
                                     ("TGN46" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:15450" :NAME
                                      "trans-golgi network protein 2"))
                                    ("orig" "TFIID" "UP:P20226"
                                     ("TFIID" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17540" :NAME "TFIID"))
                                    ("orig" "TBP" "UP:P20226"
                                     ("TBP" "ONT:GENE-PROTEIN" :ID "HGNC:11588"
                                      :NAME "TATA-box binding protein"))
                                    ("downcase" "zap70" "UP:P43403"
                                     ("Zap70" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12858" :NAME
                                      "zeta chain of T cell receptor associated protein kinase 70"))
                                    ("orig" "XPF" "UP:Q92889"
                                     ("XPF" "ONT:GENE-PROTEIN" :ID "UP:Q7LXL5"
                                      :NAME "3'-flap repair endonuclease Xpf"))
                                    ("orig" "XPA" "UP:P23025"
                                     ("XPA" "ONT:GENE-PROTEIN" :ID "HGNC:12814"
                                      :NAME
                                      "XPA, DNA damage recognition and repair factor"))
                                    ("downcase" "wnt1" "UP:P04628"
                                     ("Wnt1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12774" :NAME
                                      "Wnt family member 1"))
                                    ("orig" "WRN" "UP:Q14191"
                                     ("WRN" "ONT:GENE-PROTEIN" :ID "HGNC:12791"
                                      :NAME
                                      "Werner syndrome RecQ like helicase"))
                                    ("orig" "bip" "UP:P11021"
                                     ("bip" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C48836" :NAME "GRP78 protein"))
                                    ("orig" "bcr" "UP:P11274"
                                     ("bcr" "ONT:GENE-PROTEIN" :ID "HGNC:1014"
                                      :NAME
                                      "BCR, RhoGEF and GTPase activating protein"))
                                    ("downcase" "atr" "UP:Q13535"
                                     ("atR" "ONT:GENE-PROTEIN" :ID "HGNC:882"
                                      :NAME "ATR serine/threonine kinase"))
                                    ("orig" "amphiphysin" "UP:P49418"
                                     ("amphiphysin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:471" :NAME "amphiphysin"))
                                    ("upcase" "ALK" "UP:Q9UM73"
                                     ("alk" "ONT:GENE-PROTEIN" :ID "HGNC:427"
                                      :NAME
                                      "anaplastic lymphoma receptor tyrosine kinase"))
                                    ("orig" "agrin" "UP:O00468"
                                     ("agrin" "ONT:GENE-PROTEIN" :ID "HGNC:329"
                                      :NAME "agrin"))
                                    ("orig" "activin" "UP:P36896"
                                     ("activin" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20456" :NAME "activin"))
                                    ("orig" "cortactin" "UP:Q66HL2"
                                     ("cortactin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3338" :NAME "cortactin"))
                                    ("upcase" "CNP" "UP:P09543"
                                     ("cnp" "ONT:GENE-PROTEIN" :ID "HGNC:2158"
                                      :NAME
                                      "2',3'-cyclic nucleotide 3' phosphodiesterase"))
                                    ("orig" "cmyc" "UP:P01106"
                                     ("cmyc" "ONT:GENE-PROTEIN" :ID "UP:P49709"
                                      :NAME "Transcriptional regulator Myc"))
                                    ("orig" "cdk6" "UP:Q00534"
                                     ("cdk6" "ONT:GENE-PROTEIN" :ID "HGNC:1777"
                                      :NAME "cyclin dependent kinase 6"))
                                    ("orig" "cdk5" "UP:Q00535"
                                     ("cdk5" "ONT:GENE-PROTEIN" :ID "HGNC:1774"
                                      :NAME "cyclin dependent kinase 5"))
                                    ("orig" "cdk4" "UP:P11802"
                                     ("cdk4" "ONT:GENE-PROTEIN" :ID "HGNC:1773"
                                      :NAME "cyclin dependent kinase 4"))
                                    ("orig" "cdk2" "UP:P24941"
                                     ("cdk2" "ONT:GENE-PROTEIN" :ID "HGNC:1771"
                                      :NAME "cyclin dependent kinase 2"))
                                    ("orig" "cdk1" "UP:P06493"
                                     ("cdk1" "ONT:GENE-PROTEIN" :ID "HGNC:1722"
                                      :NAME "cyclin dependent kinase 1"))
                                    ("upcase" "CDH1" "NCIT:C51151"
                                     ("cdh1" "ONT:GENE-PROTEIN" :ID "HGNC:1748"
                                      :NAME "cadherin 1"))
                                    ("orig" "cdc42" "UP:P60953"
                                     ("cdc42" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1736" :NAME
                                      "cell division cycle 42"))
                                    ("orig" "cdc25" "UP:Q13972"
                                     ("cdc25" "ONT:GENE-PROTEIN" :ID "BE:CDC25"
                                      :NAME "CDC25"))
                                    ("orig" "cdc2" "UP:P06493"
                                     ("cdc2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49452" :NAME "CDC2"))
                                    ("upcase" "CCL2" "UP:P13500"
                                     ("ccl2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10618" :NAME
                                      "C-C motif chemokine ligand 2"))
                                    ("orig" "cbl" "UP:P22681"
                                     ("cbl" "ONT:GENE-PROTEIN" :ID "HGNC:1541"
                                      :NAME "Cbl proto-oncogene"))
                                    ("orig" "catalase" "UP:P04040"
                                     ("catalase" "ONT:GENE-PROTEIN" :ID
                                      "GO:0004096" :NAME "catalase activity"))
                                    ("orig" "calpastatin" "UP:P20810"
                                     ("calpastatin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1515" :NAME "calpastatin"))
                                    ("orig" "calmodulin" "CALM_HUMAN"
                                     ("calmodulin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P62158" :NAME "Calmodulin"))
                                    ("upcase" "CRA" "UP:P0ACP1"
                                     ("cRA" "ONT:GENE-PROTEIN" :ID "UP:P04923"
                                      :NAME
                                      "Circumsporozoite protein-related antigen"))
                                    ("orig" "cMet" "UP:P08581"
                                     ("cMet" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51540" :NAME "C-MET"))
                                    ("orig" "cIAP1" "UP:Q13490"
                                     ("cIAP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20931" :NAME
                                      "baculoviral IAP repeat-containing protein-2"))
                                    ("upcase" "CD2" "UP:P06729"
                                     ("cD2" "ONT:GENE-PROTEIN" :ID "HGNC:1639"
                                      :NAME "CD2 molecule"))
                                    ("orig" "bub1" "UP:O43683"
                                     ("bub1" "ONT:GENE-PROTEIN" :ID "HGNC:1148"
                                      :NAME
                                      "BUB1 mitotic checkpoint serine/threonine kinase"))
                                    ("orig" "brca1" "UP:B7ZA85"
                                     ("brca1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1100" :NAME
                                      "BRCA1, DNA repair associated"))
                                    ("upcase" "EGF" "UP:P01133"
                                     ("egf" "ONT:GENE-PROTEIN" :ID "HGNC:3229"
                                      :NAME "epidermal growth factor"))
                                    ("upcase" "DR4" "UP:O00220"
                                     ("dr4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C62757" :NAME
                                      "HLA class II histocompatibility antigen DRB1-4 beta chain protein"))
                                    ("orig" "dhfr" "UP:P00374"
                                     ("dhfr" "ONT:GENE-PROTEIN" :ID "HGNC:2861"
                                      :NAME "dihydrofolate reductase"))
                                    ("orig" "desmin" "UP:P17661"
                                     ("desmin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2770" :NAME "desmin"))
                                    ("orig" "dbl" "UP:P10911"
                                     ("dbl" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17316" :NAME "DBL oncoprotein"))
                                    ("downcase" "cyclin d" "IPR015451"
                                     ("cyclin D" "ONT:GENE-PROTEIN" :ID
                                      "FA:00818" :NAME "cyclin D subfamily"))
                                    ("orig" "crk" "UP:P46108"
                                     ("crk" "ONT:GENE-PROTEIN" :ID "HGNC:2362"
                                      :NAME
                                      "CRK proto-oncogene, adaptor protein"))
                                    ("upcase" "CRAF" "UP:P04049"
                                     ("craf" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17484" :NAME "RAF-1 protein"))
                                    ("orig" "gp130" "UP:P40189"
                                     ("gp130" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52804" :NAME "IL6ST"))
                                    ("orig" "glycoprotein" "UP:Q8JTH0"
                                     ("glycoprotein" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q9QSP1" :NAME "Glycoprotein"))
                                    ("upcase" "GAPDH" "UP:P04406"
                                     ("gapdh" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4141" :NAME
                                      "glyceraldehyde-3-phosphate dehydrogenase"))
                                    ("orig" "fyn" "UP:P06241"
                                     ("fyn" "ONT:GENE-PROTEIN" :ID "HGNC:4037"
                                      :NAME
                                      "FYN proto-oncogene, Src family tyrosine kinase"))
                                    ("orig" "fib" "UP:Q8I1F4"
                                     ("fib" "ONT:GENE-PROTEIN" :ID "UP:P58032"
                                      :NAME
                                      "Fibrillarin-like rRNA/tRNA 2'-O-methyltransferase {ECO:0000255|HAMAP-Rule:MF_00351}"))
                                    ("orig" "ezrin" "UP:P15311"
                                     ("ezrin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12691" :NAME "ezrin"))
                                    ("orig" "erythropoietin" "NCIT:C20429"
                                     ("erythropoietin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3415" :NAME "erythropoietin"))
                                    ("upcase" "ERBB" "UP:P00533"
                                     ("erbb" "ONT:GENE-PROTEIN" :ID "BE:ERBB"
                                      :NAME "ERBB"))
                                    ("orig" "ephrinA5" "UP:P52803"
                                     ("ephrinA5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3225" :NAME "ephrin A5"))
                                    ("orig" "ephrinA1" "UP:P20827"
                                     ("ephrinA1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3221" :NAME "ephrin A1"))
                                    ("orig" "eph" "UP:P21709"
                                     ("eph" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18606" :NAME "ephrin receptor"))
                                    ("orig" "env" "UP:P03386"
                                     ("env" "ONT:GENE-PROTEIN" :ID "UP:C1JJY3"
                                      :NAME "Envelope protein"))
                                    ("orig" "iNOS" "UP:P35228"
                                     ("iNOS" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C38565" :NAME
                                      "nitric oxide synthase-2A"))
                                    ("orig" "hsp70" "UP:Q9NZL4"
                                     ("hsp70" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17765" :NAME
                                      "heat shock protein-70"))
                                    ("orig" "hras" "UP:P01112"
                                     ("hras" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52545" :NAME "HRAS"))
                                    ("orig" "helicase" "UP:Q9YC75"
                                     ("helicase" "ONT:GENE-PROTEIN" :ID
                                      "GO:0004386" :NAME "helicase activity"))
                                    ("upcase" "HBZ" "UP:P02008"
                                     ("hbz" "ONT:GENE-PROTEIN" :ID "HGNC:4835"
                                      :NAME "hemoglobin subunit zeta"))
                                    ("orig" "mdm2" "UP:Q00987"
                                     ("mdm2" "ONT:GENE-PROTEIN" :ID "HGNC:6973"
                                      :NAME "MDM2 proto-oncogene"))
                                    ("upcase" "MBP" "UP:P02686"
                                     ("mbp" "ONT:GENE-PROTEIN" :ID "HGNC:6925"
                                      :NAME "myelin basic protein"))
                                    ("upcase" "MTOR" "UP:P42345"
                                     ("mTor" "ONT:GENE-PROTEIN" :ID "HGNC:3942"
                                      :NAME "mechanistic target of rapamycin"))
                                    ("orig" "lysophospholipase" "UP:P47712"
                                     ("lysophospholipase" "ONT:GENE-PROTEIN"
                                      :ID "GO:0004622" :NAME
                                      "lysophospholipase activity"))
                                    ("upcase" "LRP" "UP:Q14764"
                                     ("lrp" "ONT:GENE-PROTEIN" :ID "UP:Q04833"
                                      :NAME
                                      "Low-density lipoprotein receptor-related protein"))
                                    ("orig" "lox" "UP:P28300"
                                     ("lox" "ONT:GENE-PROTEIN" :ID "HGNC:6664"
                                      :NAME "lysyl oxidase"))
                                    ("orig" "lipase" "UP:P61872"
                                     ("lipase" "ONT:GENE-PROTEIN" :ID
                                      "GO:0016298" :NAME "lipase activity"))
                                    ("orig" "iκB" "UP:Q86YQ2"
                                     ("iκB" "ONT:GENE-PROTEIN" :ID "BE:IKB"
                                      :NAME "IKB"))
                                    ("orig" "nras" "UP:P01111"
                                     ("nras" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52549" :NAME "NRAS"))
                                    ("orig" "ninein" "UP:Q8N4C6"
                                     ("ninein" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14906" :NAME "ninein"))
                                    ("orig" "myc" "UP:P01106"
                                     ("myc" "ONT:GENE-PROTEIN" :ID "HGNC:7553"
                                      :NAME
                                      "v-myc avian myelocytomatosis viral oncogene homolog"))
                                    ("orig" "moesin" "UP:P26038"
                                     ("moesin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7373" :NAME "moesin"))
                                    ("orig" "mmp" "UP:O93470"
                                     ("mmp" "ONT:GENE-PROTEIN" :ID "BE:MMP"
                                      :NAME "MMP"))
                                    ("orig" "methyltransferase" "UP:Q6QLN1"
                                     ("methyltransferase" "ONT:GENE-PROTEIN"
                                      :ID "GO:0008168" :NAME
                                      "methyltransferase activity"))
                                    ("orig" "p90RSK" "UP:P10665"
                                     ("p90RSK" "ONT:GENE-PROTEIN" :ID
                                      "BE:P90RSK" :NAME "P90RSK"))
                                    ("orig" "p80" "UP:Q8TAF3"
                                     ("p80" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C38912" :NAME
                                      "interleukin-1-receptor alpha type-I"))
                                    ("orig" "p73" "UP:O15350"
                                     ("p73" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18577" :NAME "TP73 protein"))
                                    ("orig" "p70" "UP:P08133"
                                     ("p70" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C113108" :NAME "UBASH3B"))
                                    ("orig" "p52" "p52"
                                     ("p52" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C34096" :NAME
                                      "transcriptional coactivator-p52"))
                                    ("orig" "p50" "UP:Q43731"
                                     ("p50" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51382" :NAME "TNFRSF5"))
                                    ("orig" "p40" "UP:Q9H3D4"
                                     ("p40" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17306" :NAME
                                      "laminin receptor-1"))
                                    ("orig" "p35" "UP:P04083"
                                     ("p35" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C89768" :NAME
                                      "CDK-activating kinase assembly factor MAT1"))
                                    ("orig" "p34" "UP:Q13177"
                                     ("p34" "ONT:GENE-PROTEIN" :ID "UP:Q83046"
                                      :NAME "RNA-binding P34 protein"))
                                    ("orig" "p300" "UP:Q09472"
                                     ("p300" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17804" :NAME
                                      "E1A binding protein-p300"))
                                    ("orig" "p27Kip1" "UP:P46527"
                                     ("p27Kip1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17901" :NAME
                                      "cyclin-dependent kinase inhibitor-1B"))
                                    ("orig" "p23" "UP:P10301"
                                     ("p23" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C101391" :NAME
                                      "translationally-controlled tumor protein"))
                                    ("orig" "p21" "UP:P38936"
                                     ("p21" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17783" :NAME
                                      "cyclin-dependent kinase inhibitor-1A"))
                                    ("orig" "p160" "UP:P52701"
                                     ("p160" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C21468" :NAME
                                      "DNA mismatch repair protein-MSH6"))
                                    ("orig" "p16" "UP:Q96518"
                                     ("p16" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49511" :NAME "CDKN2A"))
                                    ("orig" "p14" "UP:Q9Y2Q5"
                                     ("p14" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C29928" :NAME
                                      "S100 calcium binding protein-A9"))
                                    ("downcase" "p130cas" "UP:P56945"
                                     ("p130Cas" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C21491" :NAME
                                      "breast cancer anti-estrogen resistance-1 protein"))
                                    ("orig" "p120" "UP:Q00839"
                                     ("p120" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C79771" :NAME "CTNND1"))
                                    ("orig" "p110δ" "UP:O00329"
                                     ("p110δ" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C113631" :NAME
                                      "phosphatidylinositol 4 5-bisphosphate 3-kinase catalytic subunit delta isoform"))
                                    ("orig" "p110γ" "UP:P48736"
                                     ("p110γ" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51162" :NAME "PIK3CG"))
                                    ("orig" "p110β" "UP:P42338"
                                     ("p110β" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C30170" :NAME
                                      "phosphoinositide-3-kinase catalytic beta polypeptide"))
                                    ("orig" "p110" "UP:P39880"
                                     ("p110" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95579" :NAME "CUX1"))
                                    ("upcase" "PDGFRA" "UP:P16234"
                                     ("pdgfra" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8803" :NAME
                                      "platelet derived growth factor receptor alpha"))
                                    ("orig" "paxillin" "UP:P49023"
                                     ("paxillin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9718" :NAME "paxillin"))
                                    ("downcase" "prl" "UP:P01236"
                                     ("pRL" "ONT:GENE-PROTEIN" :ID "HGNC:9445"
                                      :NAME "prolactin"))
                                    ("downcase" "plk" "UP:P53350"
                                     ("pLK" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51263" :NAME "PLK"))
                                    ("upcase" "PI3" "UP:P19957"
                                     ("pI3" "ONT:GENE-PROTEIN" :ID "HGNC:8947"
                                      :NAME "peptidase inhibitor 3"))
                                    ("orig" "pERK" "UP:Q9NZJ5"
                                     ("pERK" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C102828" :NAME "EIF2AK3"))
                                    ("downcase" "pdcs" "UP:Q8WXG1"
                                     ("pDCs" "ONT:GENE-PROTEIN" :ID "HGNC:8759"
                                      :NAME "phosducin"))
                                    ("orig" "radixin" "UP:P35241"
                                     ("radixin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9944" :NAME "radixin"))
                                    ("orig" "rad51" "UP:Q06609"
                                     ("rad51" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9817" :NAME "RAD51 recombinase"))
                                    ("orig" "rad50" "UP:Q92878"
                                     ("rad50" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9816" :NAME
                                      "RAD50 double strand break repair protein"))
                                    ("orig" "pten" "UP:P60484"
                                     ("pten" "ONT:GENE-PROTEIN" :ID "HGNC:9588"
                                      :NAME "phosphatase and tensin homolog"))
                                    ("orig" "profilin" "UP:P35080"
                                     ("profilin" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q77DS0" :NAME "Profilin"))
                                    ("orig" "pol" "UP:P18131"
                                     ("pol" "ONT:GENE-PROTEIN" :ID "UP:P03261"
                                      :NAME "DNA polymerase"))
                                    ("orig" "plasminogen" "UP:P00747"
                                     ("plasminogen" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9071" :NAME "plasminogen"))
                                    ("upcase" "PI4" "UP:P29622"
                                     ("pi4" "ONT:GENE-PROTEIN" :ID "UP:P58517"
                                      :NAME "Serine protease inhibitor 4"))
                                    ("orig" "phosphoproteins" "UP:Q8JTH2"
                                     ("phosphoproteins" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q9QSP3" :NAME "Phosphoprotein"))
                                    ("orig" "phosphoprotein" "UP:Q8JTH2"
                                     ("phosphoprotein" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q9QSP3" :NAME "Phosphoprotein"))
                                    ("downcase" "shc" "UP:P29353"
                                     ("shC" "ONT:GENE-PROTEIN" :ID "BE:SHC"
                                      :NAME "SHC"))
                                    ("downcase" "shb" "UP:Q15464"
                                     ("sHB" "ONT:GENE-PROTEIN" :ID "HGNC:10838"
                                      :NAME
                                      "SH2 domain containing adaptor protein B"))
                                    ("orig" "rfc1" "UP:P35251"
                                     ("rfc1" "ONT:GENE-PROTEIN" :ID "HGNC:9969"
                                      :NAME "replication factor C subunit 1"))
                                    ("upcase" "RELA" "UP:Q04206"
                                     ("rela" "ONT:GENE-PROTEIN" :ID "HGNC:9955"
                                      :NAME
                                      "RELA proto-oncogene, NF-kB subunit"))
                                    ("orig" "rel" "UP:Q04864"
                                     ("rel" "ONT:GENE-PROTEIN" :ID "HGNC:9954"
                                      :NAME
                                      "REL proto-oncogene, NF-kB subunit"))
                                    ("upcase" "RB1" "UP:P06400"
                                     ("rb1" "ONT:GENE-PROTEIN" :ID "HGNC:9884"
                                      :NAME
                                      "RB transcriptional corepressor 1"))
                                    ("orig" "tet" "UP:P0A4K7"
                                     ("tet" "ONT:GENE-PROTEIN" :ID "UP:O59196"
                                      :NAME "Tetrahedral aminopeptidase"))
                                    ("orig" "src" "UP:P12931"
                                     ("src" "ONT:GENE-PROTEIN" :ID "HGNC:11283"
                                      :NAME
                                      "SRC proto-oncogene, non-receptor tyrosine kinase"))
                                    ("orig" "smad1" "UP:Q15797"
                                     ("smad1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6767" :NAME
                                      "SMAD family member 1"))
                                    ("orig" "wee1" "UP:P30291"
                                     ("wee1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12761" :NAME
                                      "WEE1 G2 checkpoint kinase"))
                                    ("orig" "vitronectin" "UP:P04004"
                                     ("vitronectin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12724" :NAME "vitronectin"))
                                    ("orig" "vinculin" "UP:P18206"
                                     ("vinculin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12665" :NAME "vinculin"))
                                    ("orig" "vegf" "UP:P15692"
                                     ("vegf" "ONT:GENE-PROTEIN" :ID "BE:VEGF"
                                      :NAME "VEGF"))
                                    ("orig" "vav" "UP:P15498"
                                     ("vav" "ONT:GENE-PROTEIN" :ID "BE:VAV"
                                      :NAME "VAV"))
                                    ("orig" "ubiquitin" "UP:P0CG48"
                                     ("ubiquitin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P69310" :NAME "Ubiquitin"))
                                    ("orig" "tubulins" "PR:000028799"
                                     ("tubulins" "ONT:GENE-PROTEIN" :ID
                                      "FA:04239" :NAME "tubulin family"))
                                    ("orig" "tubulin" "PR:000028799"
                                     ("tubulin" "ONT:GENE-PROTEIN" :ID
                                      "FA:04239" :NAME "tubulin family"))
                                    ("orig" "trk" "UP:P04629"
                                     ("trk" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17660" :NAME
                                      "receptor tyrosine kinase"))
                                    ("orig" "transferrin" "UP:P02787"
                                     ("transferrin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11740" :NAME "transferrin"))
                                    ("orig" "tpr" "UP:P12270"
                                     ("tpr" "ONT:GENE-PROTEIN" :ID "HGNC:12017"
                                      :NAME
                                      "translocated promoter region, nuclear basket protein"))
                                    ("upcase" "TP53" "UP:P04637"
                                     ("tp53" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11998" :NAME "tumor protein p53"))
                                    ("upcase" "TOR" "UP:Q9FR53"
                                     ("tor" "ONT:GENE-PROTEIN" :ID "GO:0050626"
                                      :NAME
                                      "trimethylamine-N-oxide reductase (cytochrome c) activity"))
                                    ("orig" "tnf" "UP:P01375"
                                     ("tnf" "ONT:GENE-PROTEIN" :ID "HGNC:11892"
                                      :NAME "tumor necrosis factor"))
                                    ("orig" "thioredoxin" "UP:P10599"
                                     ("thioredoxin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12435" :NAME "thioredoxin"))
                                    ("downcase" "βtrcp" "UP:Q9UKB1"
                                     ("βTrCP" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q91854" :NAME "Beta-TrCP"))
                                    ("orig" "zyxin" "UP:Q15942"
                                     ("zyxin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:13200" :NAME "zyxin"))
                                    ("orig" "triazines" "CHEBI:38056"
                                     ("triazines" "ONT:MOLECULE" :ID
                                      "CHEBI:38102" :NAME "triazines"))
                                    ("orig" "xanthenes" "CHEBI:36440"
                                     ("xanthenes" "ONT:MOLECULE" :ID
                                      "CHEBI:38835" :NAME "xanthenes"))
                                    ("downcase" "gppnhp" "PCID:86289562"
                                     ("GppNHp" "ONT:MOLECULE" :ID "CHEBI:78374"
                                      :NAME
                                      "trisodium guanosine 5'-[beta,gamma-imido]triphosphate"))
                                    ("downcase" "gold" "PCID:46878529"
                                     ("Gold" "ONT:MOLECULE" :ID "CHEBI:30050"
                                      :NAME "gold(0)"))
                                    ("downcase" "iron" "PCID:23925"
                                     ("Iron" "ONT:MOLECULE" :ID "CHEBI:18248"
                                      :NAME "iron atom"))
                                    ("orig" "citrate" "CHEBI:30769"
                                     ("citrate" "ONT:MOLECULE" :ID
                                      "CHEBI:50744" :NAME "citrate salt"))
                                    ("orig" "cholines" "CHEBI:15354"
                                     ("cholines" "ONT:MOLECULE" :ID
                                      "CHEBI:23217" :NAME "cholines"))
                                    ("orig" "cytidines" "CHEBI:17562"
                                     ("cytidines" "ONT:MOLECULE" :ID
                                      "CHEBI:23524" :NAME "cytidines"))
                                    ("orig" "guanidine" "PCID:3520"
                                     ("guanidine" "ONT:MOLECULE" :ID
                                      "CHEBI:42820" :NAME "guanidine"))
                                    ("orig" "galactosamine" "PCID:24154"
                                     ("galactosamine" "ONT:MOLECULE" :ID
                                      "CHEBI:24156" :NAME "galactosamine"))
                                    ("orig" "flavonols" "CHEBI:5078"
                                     ("flavonols" "ONT:MOLECULE" :ID
                                      "CHEBI:28802" :NAME "flavonols"))
                                    ("orig" "iodine" "PCID:807"
                                     ("iodine" "ONT:MOLECULE" :ID "CHEBI:24859"
                                      :NAME "iodine atom"))
                                    ("orig" "polymers" "CHEBI:60027"
                                     ("polymers" "ONT:MOLECULE" :ID
                                      "CHEBI:33839" :NAME "macromolecule"))
                                    ("orig" "polyamines" "CHEBI:88061"
                                     ("polyamines" "ONT:MOLECULE" :ID
                                      "CHEBI:51349" :NAME
                                      "polyamine macromolecule"))
                                    ("orig" "phalloidin" "PCID:441542"
                                     ("phalloidin" "ONT:MOLECULE" :ID
                                      "CHEBI:8040" :NAME "phalloidin"))
                                    ("orig" "stilbenes" "CHEBI:26775"
                                     ("stilbenes" "ONT:MOLECULE" :ID
                                      "CHEBI:26776" :NAME "stilbenoid"))
                                    ("orig" "ureas" "CHEBI:16199"
                                     ("ureas" "ONT:MOLECULE" :ID "CHEBI:47857"
                                      :NAME "ureas"))
                                    ("orig" "thiazoles" "CHEBI:43732"
                                     ("thiazoles" "ONT:MOLECULE" :ID
                                      "CHEBI:48901" :NAME "thiazoles"))
                                    ("orig" "cysteamine" "CHEBI:17141"
                                     ("cysteamine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C61696" :NAME "cysteamine"))
                                    ("downcase" "procarbazine" "NCIT:C773"
                                     ("Procarbazine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "CHEBI:71417" :NAME "procarbazine"))
                                    ("orig" "fulvestrant" "MESH:C070081"
                                     ("fulvestrant"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1379" :NAME "fulvestrant"))
                                    ("downcase" "deltex1" "UP:Q86Y01"
                                     ("Deltex1" "ONT:PROTEIN" :ID "NCIT:C26143"
                                      :NAME "deltex homolog-1 protein"))
                                    ("downcase" "cryopyrin" "UP:Q96P20"
                                     ("Cryopyrin" "ONT:PROTEIN" :ID
                                      "NCIT:C77204" :NAME
                                      "NACHT LRR and PYD domains-containing protein 3"))
                                    ("orig" "Annexin-V" "UP:P08758"
                                     ("Annexin-V" "ONT:PROTEIN" :ID
                                      "NCIT:C21333" :NAME
                                      "annexin-A5 protein"))
                                    ("orig" "HER1" "UP:P00533"
                                     ("HER1" "ONT:PROTEIN" :ID "NCIT:C17068"
                                      :NAME
                                      "epidermal growth factor receptor"))
                                    ("orig" "IgE" "UP:Q9ZNX9"
                                     ("IgE" "ONT:PROTEIN" :ID "NCIT:C567" :NAME
                                      "IgE"))
                                    ("downcase" "igd" "UP:P01880"
                                     ("IgD" "ONT:PROTEIN" :ID "NCIT:C566" :NAME
                                      "IgD"))
                                    ("downcase" "nfκb2" "UP:Q00653"
                                     ("Nfκb2" "ONT:PROTEIN" :ID "NCIT:C18550"
                                      :NAME "NF-kappa B p49-p100 protein"))
                                    ("orig" "PI3Kα" "UP:P42336"
                                     ("PI3Kα" "ONT:PROTEIN" :ID "UP:P32871"
                                      :NAME
                                      "Phosphatidylinositol 4,5-bisphosphate 3-kinase catalytic subunit alpha isoform"))
                                    ("upcase" "PP2A" "UP:P67775"
                                     ("Pp2a" "ONT:PROTEIN" :ID "NCIT:C34085"
                                      :NAME
                                      "protein phosphatase-2A regulatory subunit-PR53"))
                                    ("downcase" "pkcδ" "UP:Q05655"
                                     ("PKCδ" "ONT:PROTEIN" :ID "UP:P10829"
                                      :NAME "Protein kinase C gamma type"))
                                    ("downcase" "pkcα" "UP:P17252"
                                     ("PKCα" "ONT:PROTEIN" :ID "UP:P04409"
                                      :NAME "Protein kinase C alpha type"))
                                    ("downcase" "proteins" "CHEBI:36080"
                                     ("Proteins" "ONT:PROTEIN" :ID
                                      "NCIT:C17021" :NAME "protein"))
                                    ("downcase" "shi" "UP:Q9XGX0"
                                     ("Shi" "ONT:PROTEIN" :ID "UP:P19651" :NAME
                                      "Delta-stichotoxin-She1a {ECO:0000303|PubMed:22683676}"))
                                    ("downcase" "tgfα" "UP:P01135"
                                     ("Tgfα" "ONT:PROTEIN" :ID "UP:P98138"
                                      :NAME
                                      "Transforming growth factor alpha"))
                                    ("downcase" "tri" "UP:Q9NQV6"
                                     ("TRI" "ONT:PROTEIN" :ID "UP:P50162" :NAME
                                      "Tropinone reductase 1 {ECO:0000303|PubMed:8415746}"))
                                    ("orig" "amyloid" "UP:Q90743"
                                     ("amyloid" "ONT:PROTEIN" :ID
                                      "NCIT:C117187" :NAME "amyloid"))
                                    ("orig" "chemokines" "UP:F1P167"
                                     ("chemokines" "ONT:PROTEIN" :ID
                                      "GO:0008009" :NAME "chemokine activity"))
                                    ("orig" "chemokine" "UP:F1P167"
                                     ("chemokine" "ONT:PROTEIN" :ID
                                      "GO:0008009" :NAME "chemokine activity"))
                                    ("orig" "caspases" "UP:Q8WZ73"
                                     ("caspases" "ONT:PROTEIN" :ID "UP:O01382"
                                      :NAME "Caspase"))
                                    ("orig" "brahma" "UP:P51531"
                                     ("brahma" "ONT:PROTEIN" :ID "NCIT:C19865"
                                      :NAME "BRAHMA"))
                                    ("orig" "cytokines" "UP:P09341"
                                     ("cytokines" "ONT:PROTEIN" :ID
                                      "NCIT:C20464" :NAME "cytokine"))
                                    ("orig" "cytokine" "UP:Q9VWE0"
                                     ("cytokine" "ONT:PROTEIN" :ID
                                      "NCIT:C20464" :NAME "cytokine"))
                                    ("orig" "fibrinogen" "UP:P22775"
                                     ("fibrinogen" "ONT:PROTEIN" :ID
                                      "UP:P81070" :NAME "Fibrinogen"))
                                    ("orig" "enzyme" "UP:O74196"
                                     ("enzyme" "ONT:PROTEIN" :ID "NCIT:C16554"
                                      :NAME "enzyme"))
                                    ("orig" "endonuclease" "UP:O00370"
                                     ("endonuclease" "ONT:PROTEIN" :ID
                                      "GO:0004519" :NAME
                                      "endonuclease activity"))
                                    ("upcase" "IKK" "UP:O15111"
                                     ("ikk" "ONT:PROTEIN" :ID "NCIT:C104199"
                                      :NAME "I-kappa-B kinase"))
                                    ("orig" "hydrolase" "UP:D8HDP6"
                                     ("hydrolase" "ONT:PROTEIN" :ID
                                      "GO:0016787" :NAME "hydrolase activity"))
                                    ("orig" "histone" "histone"
                                     ("histone" "ONT:PROTEIN" :ID "NCIT:C16687"
                                      :NAME "histone"))
                                    ("orig" "luciferase" "UP:P08659"
                                     ("luciferase" "ONT:PROTEIN" :ID
                                      "UP:P13129" :NAME
                                      "Luciferin 4-monooxygenase"))
                                    ("upcase" "LAC" "UP:Q26474"
                                     ("lac" "ONT:PROTEIN" :ID "NCIT:C70620"
                                      :NAME "lupus anticoagulant antibody"))
                                    ("upcase" "NFKB" "UP:P19838"
                                     ("nfkb" "ONT:PROTEIN" :ID "NCIT:C17380"
                                      :NAME "NF-kB"))
                                    ("orig" "p85β" "UP:O00459"
                                     ("p85β" "ONT:PROTEIN" :ID "NCIT:C101285"
                                      :NAME
                                      "phosphatidylinositol 3-kinase regulatory subunit beta"))
                                    ("orig" "p110α" "UP:P42336"
                                     ("p110α" "ONT:PROTEIN" :ID "NCIT:C30168"
                                      :NAME
                                      "phosphoinositide-3-kinase catalytic alpha polypeptide"))
                                    ("orig" "oncoprotein" "UP:P16949"
                                     ("oncoprotein" "ONT:PROTEIN" :ID
                                      "NCIT:C16934" :NAME "oncoprotein"))
                                    ("orig" "peroxiredoxin" "UP:P32119"
                                     ("peroxiredoxin" "ONT:PROTEIN" :ID
                                      "GO:0051920" :NAME
                                      "peroxiredoxin activity"))
                                    ("orig" "pVHL" "UP:P40337"
                                     ("pVHL" "ONT:PROTEIN" :ID "NCIT:C17814"
                                      :NAME "elongin binding protein"))
                                    ("orig" "pRb" "UP:P06400"
                                     ("pRb" "ONT:PROTEIN" :ID "NCIT:C17394"
                                      :NAME "RB protein"))
                                    ("upcase" "PRD" "UP:P12955"
                                     ("pRD" "ONT:PROTEIN" :ID "UP:G4MZI3" :NAME
                                      "NAD(P)H-dependent pentose reductase"))
                                    ("orig" "plakoglobin" "UP:P14923"
                                     ("plakoglobin" "ONT:PROTEIN" :ID
                                      "NCIT:C17524" :NAME
                                      "junction plakoglobin"))
                                    ("orig" "phospholipase C" "UP:P51178"
                                     ("phospholipase C" "ONT:PROTEIN" :ID
                                      "GO:0004629" :NAME
                                      "phospholipase C activity"))
                                    ("orig" "phospholipase" "UP:P04054"
                                     ("phospholipase" "ONT:PROTEIN" :ID
                                      "GO:0004620" :NAME
                                      "phospholipase activity"))
                                    ("orig" "synoviolin" "UP:Q86TM6"
                                     ("synoviolin" "ONT:PROTEIN" :ID
                                      "UP:Q95SP2" :NAME
                                      "E3 ubiquitin-protein ligase HRD1"))
                                    ("downcase" "βpix" "UP:Q14155"
                                     ("βPIX" "ONT:PROTEIN" :ID "NCIT:C97202"
                                      :NAME
                                      "rho guanine nucleotide exchange factor 7"))
                                    ("downcase" "foxo" "NCIT:C118892"
                                     ("Foxo" "ONT:PROTEIN-FAMILY" :ID "BE:FOXO"
                                      :NAME "FOXO"))
                                    ("downcase" "tetraspanins" "XFAM:PF00335"
                                     ("Tetraspanins" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF00335.18" :NAME "tetraspannin"))
                                    ("orig" "caseins" "IPR001588"
                                     ("caseins" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF00363.16" :NAME "casein"))
                                    ("orig" "casein" "IPR001588"
                                     ("casein" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF00363.16" :NAME "casein"))
                                    ("hyphens-dc" "ntera2" "EFO:0002959"
                                     ("Ntera-2" "ONT:CELL-LINE" :ID "CVCL:0034"
                                      :NAME "NTERA-2"))
                                    ("orig" "HT-3" "CVCL:1293"
                                     ("HT-3" "ONT:CELL-LINE" :ID "EFO:0002204"
                                      :NAME "HT3"))
                                    ("hyphens" "RL952" "EFO:0002320"
                                     ("RL-95-2" "ONT:CELL-LINE" :ID "CVCL:0505"
                                      :NAME "RL95-2"))
                                    ("hyphens" "MDAMB468" "EFO:0001216"
                                     ("MDA-MB468" "ONT:CELL-LINE" :ID
                                      "CVCL:0419" :NAME "MDA-MB-468"))
                                    ("hyphens" "juxtamembrane" "GO:????"
                                     ("juxta-membrane" "ONT:CELL-PART" :ID
                                      "GO:0005886" :NAME "plasma membrane"))
                                    ("downcase" "pufas" "CHEBI:76567"
                                     ("PUFAs" "ONT:CHEMICAL" :ID "CHEBI:26208"
                                      :NAME "polyunsaturated fatty acid"))
                                    ("orig" "CSH2" "UP:P0DML3"
                                     ("CSH2" "ONT:GENE" :ID "HGNC:2441" :NAME
                                      "chorionic somatomammotropin hormone 2"))
                                    ("downcase" "ect2" "UP:Q9H8V3"
                                     ("Ect2" "ONT:GENE" :ID "HGNC:3155" :NAME
                                      "epithelial cell transforming 2"))
                                    ("hyphens" "FAB" "UP:Q8NB91"
                                     ("FA-B" "ONT:GENE" :ID "NCIT:C86023" :NAME
                                      "FANCB"))
                                    ("hyphens-dc" "gab1" "UP:Q13480"
                                     ("Gab-1" "ONT:GENE" :ID "HGNC:4066" :NAME
                                      "GRB2 associated binding protein 1"))
                                    ("upcase" "HER3" "UP:P21860"
                                     ("Her3" "ONT:GENE" :ID "NCIT:C51389" :NAME
                                      "ERBB3"))
                                    ("upcase" "HER4" "UP:Q15303"
                                     ("Her4" "ONT:GENE" :ID "NCIT:C52167" :NAME
                                      "ERBB4"))
                                    ("hyphens" "IEX1" "UP:P46695"
                                     ("IEX-1" "ONT:GENE" :ID "HGNC:5392" :NAME
                                      "immediate early response 3"))
                                    ("hyphens" "JNK1" "UP:P45983"
                                     ("JNK-1" "ONT:GENE" :ID "NCIT:C52878"
                                      :NAME "MAPK8"))
                                    ("hyphens" "JNK2" "UP:P45984"
                                     ("JNK-2" "ONT:GENE" :ID "NCIT:C51260"
                                      :NAME "MAPK9"))
                                    ("hyphens" "MARK1" "UP:Q9P0L2"
                                     ("MARK-1" "ONT:GENE" :ID "HGNC:6896" :NAME
                                      "microtubule affinity regulating kinase 1"))
                                    ("hyphens" "MARK2" "NCIT:C126471"
                                     ("MARK-2" "ONT:GENE" :ID "HGNC:3332" :NAME
                                      "microtubule affinity regulating kinase 2"))
                                    ("hyphens" "MARK3" "UP:P27448"
                                     ("MARK-3" "ONT:GENE" :ID "HGNC:6897" :NAME
                                      "microtubule affinity regulating kinase 3"))
                                    ("hyphens" "MARK4" "UP:Q96L34"
                                     ("MARK-4" "ONT:GENE" :ID "HGNC:13538"
                                      :NAME
                                      "microtubule affinity regulating kinase 4"))
                                    ("hyphens" "MEKK1" "UP:Q13233"
                                     ("MEKK-1" "ONT:GENE" :ID "NCIT:C50392"
                                      :NAME "MAP3K1"))
                                    ("hyphens" "TAK1" "UP:P49116"
                                     ("TAK-1" "ONT:GENE" :ID "NCIT:C51213"
                                      :NAME "MAP3K7"))
                                    ("hyphens" "CSH2" "UP:P0DML3"
                                     ("C-SH2" "ONT:GENE" :ID "HGNC:2441" :NAME
                                      "chorionic somatomammotropin hormone 2"))
                                    ("upcase" "HER-3" "UP:P21860"
                                     ("Her-3" "ONT:GENE" :ID "NCIT:C51389"
                                      :NAME "ERBB3"))
                                    ("hyphens" "PDK2" "UP:Q15119"
                                     ("PDK-2" "ONT:GENE" :ID "HGNC:8810" :NAME
                                      "pyruvate dehydrogenase kinase 2"))
                                    ("hyphens" "SGK1" "UP:O00141"
                                     ("SGK-1" "ONT:GENE" :ID "HGNC:10810" :NAME
                                      "serum/glucocorticoid regulated kinase 1"))
                                    ("hyphens" "XIAP" "UP:P98170"
                                     ("X-IAP" "ONT:GENE" :ID "HGNC:592" :NAME
                                      "X-linked inhibitor of apoptosis"))
                                    ("upcase" "SNX9" "UP:Q9Y5X1"
                                     ("snx9" "ONT:GENE" :ID "HGNC:14973" :NAME
                                      "sorting nexin 9"))
                                    ("upcase" "CRM1" "UP:O14980"
                                     ("Crm1" "ONT:GENE" :ID "NCIT:C99485" :NAME
                                      "XPO1"))
                                    ("orig" "ErbB3" "UP:P21860"
                                     ("ErbB3" "ONT:GENE" :ID "HGNC:3431" :NAME
                                      "erb-b2 receptor tyrosine kinase 3"))
                                    ("orig" "FASLG" "UP:P48023"
                                     ("FASLG" "ONT:GENE" :ID "HGNC:11936" :NAME
                                      "Fas ligand"))
                                    ("upcase" "FBW7" "UP:Q969H0"
                                     ("Fbw7" "ONT:GENE" :ID "NCIT:C50390" :NAME
                                      "FBXW7"))
                                    ("downcase" "net1" "UP:P23975"
                                     ("Net1" "ONT:GENE" :ID "HGNC:14592" :NAME
                                      "neuroepithelial cell transforming 1"))
                                    ("hyphens" "RelB" "UP:Q01201"
                                     ("Rel-B" "ONT:GENE" :ID "HGNC:9956" :NAME
                                      "RELB proto-oncogene, NF-kB subunit"))
                                    ("upcase" "C-SRC" "UP:P12931"
                                     ("c-SRC" "ONT:GENE" :ID "HGNC:11283" :NAME
                                      "SRC proto-oncogene, non-receptor tyrosine kinase"))
                                    ("hyphens" "p190RhoGAP" "UP:Q9NRY4"
                                     ("p190-RhoGAP" "ONT:GENE" :ID
                                      "NCIT:C97269" :NAME "GRLF1"))
                                    ("upcase" "RPP2" "UP:O75817"
                                     ("rPP2" "ONT:GENE" :ID "HGNC:19949" :NAME
                                      "POP7 homolog, ribonuclease P/MRP subunit"))
                                    ("hyphens" "ErbB3" "UP:P21860"
                                     ("ErbB-3" "ONT:GENE" :ID "HGNC:3431" :NAME
                                      "erb-b2 receptor tyrosine kinase 3"))
                                    ("hyphens-dc" "keap1" "UP:Q14145"
                                     ("Keap-1" "ONT:GENE" :ID "HGNC:23177"
                                      :NAME
                                      "kelch like ECH associated protein 1"))
                                    ("hyphens-dc" "nrf2" "UP:Q16236"
                                     ("Nrf-2" "ONT:GENE" :ID "NCIT:C54238"
                                      :NAME "NFE2L2"))
                                    ("upcase" "PFN1" "UP:P07737"
                                     ("Pfn1" "ONT:GENE" :ID "HGNC:8881" :NAME
                                      "profilin 1"))
                                    ("downcase" "rab5" "UP:P20339"
                                     ("Rab5" "ONT:GENE" :ID "HGNC:9783" :NAME
                                      "RAB5A, member RAS oncogene family"))
                                    ("hyphens" "S1P" "UP:Q14703"
                                     ("S-1-P" "ONT:GENE" :ID "HGNC:15456" :NAME
                                      "membrane bound transcription factor peptidase, site 1"))
                                    ("hyphens-dc" "wnt3a" "UP:P56704"
                                     ("Wnt-3a" "ONT:GENE" :ID "HGNC:15983"
                                      :NAME "Wnt family member 3A"))
                                    ("hyphens" "p190RhoGAP" "UP:Q9NRY4"
                                     ("p190Rho-GAP" "ONT:GENE" :ID
                                      "NCIT:C97269" :NAME "GRLF1"))
                                    ("upcase" "BRCA2" "UP:P51587"
                                     ("Brca2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1101" :NAME
                                      "BRCA2, DNA repair associated"))
                                    ("hyphens-dc" "dok1" "UP:Q93070"
                                     ("Dok-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2990" :NAME "docking protein 1"))
                                    ("hyphens" "E2F2" "UP:Q14209"
                                     ("E2F-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3114" :NAME
                                      "E2F transcription factor 2"))
                                    ("hyphens" "GIT1" "UP:Q9Y2X7"
                                     ("GIT-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4272" :NAME "GIT ArfGAP 1"))
                                    ("hyphens" "GRK2" "UP:P25098"
                                     ("GRK-2" "ONT:GENE-PROTEIN" :ID "HGNC:289"
                                      :NAME
                                      "G protein-coupled receptor kinase 2"))
                                    ("hyphens" "HSP60" "UP:P10809"
                                     ("HSP-60" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104339" :NAME "HSPD1"))
                                    ("upcase" "JAK1" "UP:P23458"
                                     ("Jak1" "ONT:GENE-PROTEIN" :ID "HGNC:6190"
                                      :NAME "Janus kinase 1"))
                                    ("upcase" "LEF1" "UP:Q9UJU2"
                                     ("Lef1" "ONT:GENE-PROTEIN" :ID "HGNC:6551"
                                      :NAME
                                      "lymphoid enhancer binding factor 1"))
                                    ("hyphens" "MT4" "UP:P47944"
                                     ("MT-4" "ONT:GENE-PROTEIN" :ID "UP:Q9TUI5"
                                      :NAME "Metallothionein-4"))
                                    ("hyphens" "PLCγ1" "UP:P19174"
                                     ("PLCγ-1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104822" :NAME "PLCG1"))
                                    ("hyphens-dc" "pals1" "UP:Q9JLB2"
                                     ("Pals-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:O49835" :NAME
                                      "Phenylalanine ammonia-lyase 1"))
                                    ("hyphens" "SUMO3" "UP:P55854"
                                     ("SUMO-3" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q17QV3" :NAME
                                      "Small ubiquitin-related modifier 3"))
                                    ("upcase" "SLP-76" "UP:Q13094"
                                     ("Slp-76" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C26347" :NAME
                                      "lymphocyte cytosolic protein-2"))
                                    ("upcase" "TRAIL-R1" "UP:O00220"
                                     ("Trail-R1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51377" :NAME "TNFRSF10A"))
                                    ("upcase" "TRAIL-R2" "UP:O14763"
                                     ("Trail-R2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18178" :NAME "TRAIL receptor-2"))
                                    ("hyphens-dc" "wee1" "UP:P30291"
                                     ("Wee-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12761" :NAME
                                      "WEE1 G2 checkpoint kinase"))
                                    ("upcase" "C-IAP1" "UP:Q13490"
                                     ("c-iap1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49354" :NAME "BIRC2"))
                                    ("orig" "p160Rock" "UP:Q13464"
                                     ("p160Rock" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C29877" :NAME "ROCK1 protein"))
                                    ("hyphens" "CD44" "UP:P16070"
                                     ("CD-44" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1681" :NAME
                                      "CD44 molecule (Indian blood group)"))
                                    ("upcase" "CK1" "UP:P48729"
                                     ("Ck1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C26033" :NAME
                                      "casein kinase 1 alpha-1"))
                                    ("orig" "EphA2" "UP:P29317"
                                     ("EphA2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3386" :NAME "EPH receptor A2"))
                                    ("hyphens" "ErbB2" "UP:P04626"
                                     ("Erb-B2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3430" :NAME
                                      "erb-b2 receptor tyrosine kinase 2"))
                                    ("upcase" "GATA-3" "UP:P23825"
                                     ("Gata-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4172" :NAME
                                      "GATA binding protein 3"))
                                    ("orig" "ICH-1" "UP:P42575"
                                     ("ICH-1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20145" :NAME "caspase-2"))
                                    ("hyphens" "KLK2" "UP:P20151"
                                     ("KLK-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6363" :NAME
                                      "kallikrein related peptidase 2"))
                                    ("upcase" "LEF-1" "UP:Q9UJU2"
                                     ("Lef-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6551" :NAME
                                      "lymphoid enhancer binding factor 1"))
                                    ("hyphens" "MCM2" "UP:P49736"
                                     ("MCM-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6944" :NAME
                                      "minichromosome maintenance complex component 2"))
                                    ("hyphens" "MIP1" "UP:Q92973"
                                     ("MIP-1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C112052" :NAME
                                      "macrophage inflammatory protein"))
                                    ("hyphens" "MUC5AC" "UP:P98088"
                                     ("MUC-5AC" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7515" :NAME
                                      "mucin 5AC, oligomeric mucus/gel-forming"))
                                    ("hyphens-dc" "plk1" "UP:P53350"
                                     ("Plk-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9077" :NAME "polo like kinase 1"))
                                    ("hyphens" "RPA" "UP:O82171"
                                     ("RP-A" "ONT:GENE-PROTEIN" :ID "UP:Q58559"
                                      :NAME "Replication factor A"))
                                    ("hyphens" "SEL10" "UP:Q969H0"
                                     ("SEL-10" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C21512" :NAME "FBXW7 protein"))
                                    ("orig" "SLPI" "UP:P03973"
                                     ("SLPI" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11092" :NAME
                                      "secretory leukocyte peptidase inhibitor"))
                                    ("hyphens" "TLR4" "UP:O00206"
                                     ("TLR-4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11850" :NAME
                                      "toll like receptor 4"))
                                    ("hyphens-dc" "waf1" "UP:P38936"
                                     ("Waf-1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49460" :NAME "CDKN1A"))
                                    ("hyphens" "cIAP1" "UP:Q13490"
                                     ("cIAP-1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20931" :NAME
                                      "baculoviral IAP repeat-containing protein-2"))
                                    ("orig" "e3b1" "UP:Q8IZP0"
                                     ("e3b1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C29996" :NAME
                                      "spectrin SH3-domain binding protein-1"))
                                    ("hyphens" "p160ROCK" "UP:Q13464"
                                     ("p160-ROCK" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C29877" :NAME "ROCK1 protein"))
                                    ("hyphens" "smad2" "UP:Q15796"
                                     ("smad-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6768" :NAME
                                      "SMAD family member 2"))
                                    ("hyphens" "smad3" "UP:P84022"
                                     ("smad-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6769" :NAME
                                      "SMAD family member 3"))
                                    ("hyphens" "smad4" "UP:Q13485"
                                     ("smad-4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6770" :NAME
                                      "SMAD family member 4"))
                                    ("upcase" "SOS1" "UP:Q07889"
                                     ("sos1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11187" :NAME
                                      "SOS Ras/Rac guanine nucleotide exchange factor 1"))
                                    ("hyphens" "ATRIP" "UP:Q8WXE1"
                                     ("ATR-IP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:33499" :NAME
                                      "ATR interacting protein"))
                                    ("upcase" "ABL1" "UP:P00519"
                                     ("Abl1" "ONT:GENE-PROTEIN" :ID "HGNC:76"
                                      :NAME
                                      "ABL proto-oncogene 1, non-receptor tyrosine kinase"))
                                    ("orig" "Bcl-xS" "UP:Q07817"
                                     ("Bcl-xS" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20415" :NAME "BCL-Xs protein"))
                                    ("hyphens" "CCL2" "UP:P13500"
                                     ("CCL-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10618" :NAME
                                      "C-C motif chemokine ligand 2"))
                                    ("upcase" "CDKN2A" "UP:Q8N726"
                                     ("CDKN2a" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1787" :NAME
                                      "cyclin dependent kinase inhibitor 2A"))
                                    ("hyphens" "CXCL10" "UP:P02778"
                                     ("CXCL-10" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10637" :NAME
                                      "C-X-C motif chemokine ligand 10"))
                                    ("orig" "ERBB-2" "UP:P04626"
                                     ("ERBB-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3430" :NAME
                                      "erb-b2 receptor tyrosine kinase 2"))
                                    ("upcase" "ERK5" "UP:Q13164"
                                     ("Erk5" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51258" :NAME "MAPK7"))
                                    ("hyphens" "FOXO1" "UP:Q12778"
                                     ("FOXO-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3819" :NAME "forkhead box O1"))
                                    ("hyphens" "GRP94" "UP:P14625"
                                     ("GRP-94" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C117270" :NAME "endoplasmin"))
                                    ("hyphens" "HDAC3" "UP:O15379"
                                     ("HDAC-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4854" :NAME
                                      "histone deacetylase 3"))
                                    ("upcase" "HER-2" "UP:P04626"
                                     ("Her-2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17319" :NAME
                                      "ERBB2 receptor protein-tyrosine kinase"))
                                    ("upcase" "HER2" "UP:P04626"
                                     ("Her2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17319" :NAME
                                      "ERBB2 receptor protein-tyrosine kinase"))
                                    ("hyphens-dc" "hsp70" "UP:Q9NZL4"
                                     ("Hsp-70" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17765" :NAME
                                      "heat shock protein-70"))
                                    ("hyphens-dc" "ikkβ" "UP:O14920"
                                     ("IKK-β" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q95KV0" :NAME
                                      "Inhibitor of nuclear factor kappa-B kinase subunit beta"))
                                    ("hyphens" "IL2R" "UP:A2N4P8"
                                     ("IL-2R" "ONT:GENE-PROTEIN" :ID
                                      "GO:0004911" :NAME
                                      "interleukin-2 receptor activity"))
                                    ("hyphens" "IκBα" "UP:P25963"
                                     ("IκB-α" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17678" :NAME
                                      "I-kappa-B-alpha protein"))
                                    ("hyphens" "MKP3" "UP:Q16828"
                                     ("MKP-3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C106026" :NAME
                                      "dual specificity protein phosphatase 6"))
                                    ("hyphens" "MMP7" "UP:P09237"
                                     ("MMP-7" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C98112" :NAME "MMP7"))
                                    ("hyphens" "NCoA2" "UP:Q15596"
                                     ("NCoA-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7669" :NAME
                                      "nuclear receptor coactivator 2"))
                                    ("upcase" "NCK1" "UP:P16333"
                                     ("Nck1" "ONT:GENE-PROTEIN" :ID "HGNC:7664"
                                      :NAME "NCK adaptor protein 1"))
                                    ("upcase" "NF1" "UP:P21359"
                                     ("Nf1" "ONT:GENE-PROTEIN" :ID "HGNC:7765"
                                      :NAME "neurofibromin 1"))
                                    ("upcase" "NOTCH1" "UP:P46531"
                                     ("Notch1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7881" :NAME "notch 1"))
                                    ("hyphens" "PIAS1" "UP:O75925"
                                     ("PIAS-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2752" :NAME
                                      "protein inhibitor of activated STAT 1"))
                                    ("hyphens-dc" "pdgfa" "UP:P04085"
                                     ("Pdgf-a" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8799" :NAME
                                      "platelet derived growth factor subunit A"))
                                    ("hyphens-dc" "pdgfrb" "UP:P09619"
                                     ("Pdgfr-b" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8804" :NAME
                                      "platelet derived growth factor receptor beta"))
                                    ("downcase" "skp2" "UP:Q13309"
                                     ("Skp2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10901" :NAME
                                      "S-phase kinase associated protein 2"))
                                    ("hyphens" "XPA" "UP:P23025"
                                     ("XP-A" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12814" :NAME
                                      "XPA, DNA damage recognition and repair factor"))
                                    ("hyphens" "ephrinA5" "UP:P52803"
                                     ("ephrin-A5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3225" :NAME "ephrin A5"))
                                    ("orig" "p70S6K" "UP:P23443"
                                     ("p70S6K" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C84317" :NAME
                                      "ribosomal protein S6 kinase beta-1"))
                                    ("upcase" "PDGF-B" "UP:P01127"
                                     ("pdgf-b" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8800" :NAME
                                      "platelet derived growth factor subunit B"))
                                    ("upcase" "VEGF-A" "UP:P15692"
                                     ("vegf-a" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12680" :NAME
                                      "vascular endothelial growth factor A"))
                                    ("hyphens" "ABIN1" "UP:Q15025"
                                     ("ABIN-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16903" :NAME
                                      "TNFAIP3 interacting protein 1"))
                                    ("hyphens" "AXIN2" "UP:Q9Y2T1"
                                     ("AXIN-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:904" :NAME "axin 2"))
                                    ("hyphens-dc" "akt1" "UP:P31749"
                                     ("Akt-1" "ONT:GENE-PROTEIN" :ID "HGNC:391"
                                      :NAME "AKT serine/threonine kinase 1"))
                                    ("upcase" "AKT2" "UP:P31751"
                                     ("Akt2" "ONT:GENE-PROTEIN" :ID "HGNC:392"
                                      :NAME "AKT serine/threonine kinase 2"))
                                    ("upcase" "AKT3" "UP:Q9Y243"
                                     ("Akt3" "ONT:GENE-PROTEIN" :ID "HGNC:393"
                                      :NAME "AKT serine/threonine kinase 3"))
                                    ("hyphens" "BRCA1" "UP:P38398"
                                     ("BRCA-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1100" :NAME
                                      "BRCA1, DNA repair associated"))
                                    ("orig" "BUBR1" "UP:O60566"
                                     ("BUBR1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95593" :NAME "BUB1B"))
                                    ("upcase" "BRIP1" "UP:Q9BX63"
                                     ("Brip1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20473" :NAME
                                      "BRCA1 interacting protein C-terminal helicase 1"))
                                    ("hyphens-dc" "cdc42" "UP:P60953"
                                     ("Cdc-42" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1736" :NAME
                                      "cell division cycle 42"))
                                    ("upcase" "CIP1" "UP:P38936"
                                     ("Cip1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49460" :NAME "CDKN1A"))
                                    ("hyphens" "DKK1" "UP:O94907"
                                     ("DKK-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2891" :NAME
                                      "dickkopf WNT signaling pathway inhibitor 1"))
                                    ("hyphens" "DLC1" "UP:P63167"
                                     ("DLC-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2897" :NAME
                                      "DLC1 Rho GTPase activating protein"))
                                    ("hyphens" "EGR1" "UP:P18146"
                                     ("EGR-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:P08046" :NAME
                                      "Early growth response protein 1"))
                                    ("hyphens" "ErbB4" "UP:Q15303"
                                     ("ErbB-4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52167" :NAME "ERBB4"))
                                    ("upcase" "FANCD2" "UP:Q9BXW9"
                                     ("FancD2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3585" :NAME
                                      "Fanconi anemia complementation group D2"))
                                    ("upcase" "FGF8" "UP:P55075"
                                     ("Fgf8" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51503" :NAME "FGF8"))
                                    ("upcase" "FGFR1" "UP:P11362"
                                     ("Fgfr1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51542" :NAME "FGFR1"))
                                    ("upcase" "FGFR3" "UP:P22607"
                                     ("Fgfr3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3690" :NAME
                                      "fibroblast growth factor receptor 3"))
                                    ("hyphens" "HDAC1" "UP:Q13547"
                                     ("HDAC-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4852" :NAME
                                      "histone deacetylase 1"))
                                    ("hyphens" "IκB" "NCIT:C17583"
                                     ("I-κB" "ONT:GENE-PROTEIN" :ID "BE:IKB"
                                      :NAME "IKB"))
                                    ("hyphens" "IκBα" "UP:P25963"
                                     ("I-κBα" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17678" :NAME
                                      "I-kappa-B-alpha protein"))
                                    ("hyphens" "IGFBP3" "UP:P17936"
                                     ("IGF-BP3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5472" :NAME
                                      "insulin like growth factor binding protein 3"))
                                    ("hyphens" "IGF1R" "UP:P08069"
                                     ("IGF1-R" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5465" :NAME
                                      "insulin like growth factor 1 receptor"))
                                    ("hyphens" "IGFBP3" "UP:P17936"
                                     ("IGFBP-3" "ONT:GENE-PROTEIN" :ID
                                      "UP:P20959" :NAME
                                      "Insulin-like growth factor-binding protein 3"))
                                    ("hyphens" "IRAK1" "UP:P51617"
                                     ("IRAK-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q2LGB3" :NAME
                                      "Interleukin-1 receptor-associated kinase 1"))
                                    ("hyphens" "MMP10" "NCIT:C101760"
                                     ("MMP-10" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7156" :NAME
                                      "matrix metallopeptidase 10"))
                                    ("hyphens" "MMP3" "UP:P08254"
                                     ("MMP-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7173" :NAME
                                      "matrix metallopeptidase 3"))
                                    ("orig" "MPS1" "UP:P33981"
                                     ("MPS1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C29905" :NAME
                                      "ribosomal protein-S27"))
                                    ("hyphens" "NCoR" "UP:O75376"
                                     ("N-CoR" "ONT:GENE-PROTEIN" :ID "BE:NCOR"
                                      :NAME "NCOR"))
                                    ("upcase" "N-RAS" "UP:P01111"
                                     ("N-ras" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52549" :NAME "NRAS"))
                                    ("hyphens" "PRA" "UP:P06703"
                                     ("PR-A" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C99606" :NAME "S100A6"))
                                    ("hyphens" "RHOA" "UP:P61586"
                                     ("RHO-A" "ONT:GENE-PROTEIN" :ID "HGNC:667"
                                      :NAME "ras homolog family member A"))
                                    ("hyphens" "SUMO1" "UP:P63165"
                                     ("SUMO-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12502" :NAME
                                      "small ubiquitin-like modifier 1"))
                                    ("hyphens-dc" "stat3" "UP:P40763"
                                     ("Stat-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11364" :NAME
                                      "signal transducer and activator of transcription 3"))
                                    ("hyphens" "TIF2" "UP:Q15596"
                                     ("TIF-2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C19888" :NAME
                                      "nuclear receptor coactivator-2"))
                                    ("hyphens" "TNFR1" "UP:P19438"
                                     ("TNFR-1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51380" :NAME "TNFRSF1A"))
                                    ("hyphens" "TRAF2" "UP:Q12933"
                                     ("TRAF-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12032" :NAME
                                      "TNF receptor associated factor 2"))
                                    ("upcase" "TSC1" "UP:Q92574"
                                     ("Tsc1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12362" :NAME
                                      "tuberous sclerosis 1"))
                                    ("upcase" "TSC2" "UP:P49815"
                                     ("Tsc2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12363" :NAME
                                      "tuberous sclerosis 2"))
                                    ("hyphens-dc" "wnt1" "UP:P04628"
                                     ("Wnt-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12774" :NAME
                                      "Wnt family member 1"))
                                    ("upcase" "XRCC4" "UP:Q13426"
                                     ("Xrcc4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12831" :NAME
                                      "X-ray repair cross complementing 4"))
                                    ("upcase" "BCL-XL" "UP:Q07817"
                                     ("bcl-xl" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17698" :NAME "BCL-XL protein"))
                                    ("hyphens" "cdk1" "UP:P06493"
                                     ("cdk-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1722" :NAME
                                      "cyclin dependent kinase 1"))
                                    ("hyphens" "cdk2" "UP:P24941"
                                     ("cdk-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1771" :NAME
                                      "cyclin dependent kinase 2"))
                                    ("hyphens" "cdk4" "UP:P11802"
                                     ("cdk-4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1773" :NAME
                                      "cyclin dependent kinase 4"))
                                    ("hyphens" "cdk6" "UP:Q00534"
                                     ("cdk-6" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1777" :NAME
                                      "cyclin dependent kinase 6"))
                                    ("hyphens" "ephrinA1" "UP:P20827"
                                     ("ephrin-A1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3221" :NAME "ephrin A1"))
                                    ("downcase" "erbb2" "UP:P04626"
                                     ("erbB2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3430" :NAME
                                      "erb-b2 receptor tyrosine kinase 2"))
                                    ("hyphens" "gp130" "UP:P40189"
                                     ("gp-130" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52804" :NAME "IL6ST"))
                                    ("hyphens" "hdm2" "UP:Q00987"
                                     ("hdm-2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17515" :NAME "MDM2 protein"))
                                    ("upcase" "IGF-2" "UP:Q6U949"
                                     ("igf-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5466" :NAME
                                      "insulin like growth factor 2"))
                                    ("hyphens" "mTOR" "UP:P42345"
                                     ("m-TOR" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3942" :NAME
                                      "mechanistic target of rapamycin"))
                                    ("hyphens" "mdm2" "UP:Q00987"
                                     ("mdm-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6973" :NAME "MDM2 proto-oncogene"))
                                    ("hyphens" "methyltransferases" "UP:F4JG68"
                                     ("methyl-transferases" "ONT:GENE-PROTEIN"
                                      :ID "GO:0008168" :NAME
                                      "methyltransferase activity"))
                                    ("hyphens-dc" "βtrcp" "UP:Q9UKB1"
                                     ("β-trCP" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q91854" :NAME "Beta-TrCP"))
                                    ("hyphens" "cardiomyopathies" "NCIT:C34830"
                                     ("car-diomyopathies"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0000318" :NAME
                                      "cardiomyopathy"))
                                    ("hyphens-dc" "igα" "UP:P11912"
                                     ("Ig-α" "ONT:PROTEIN" :ID "NCIT:C97423"
                                      :NAME
                                      "B-cell antigen receptor complex-associated protein alpha chain"))
                                    ("hyphens" "IAP2" "UP:Q13490"
                                     ("IAP-2" "ONT:PROTEIN" :ID "UP:P51740"
                                      :NAME
                                      "Intestinal-type alkaline phosphatase 2"))
                                    ("hyphens" "oxidoreductases" "UP:Q9SUP1"
                                     ("oxido-reductases" "ONT:PROTEIN" :ID
                                      "GO:0016491" :NAME
                                      "oxidoreductase activity"))
                                    ("orig" "β-Pix" "UP:Q14155"
                                     ("β-Pix" "ONT:PROTEIN" :ID "NCIT:C97202"
                                      :NAME
                                      "rho guanine nucleotide exchange factor 7"))
                                    ("hyphens" "ATPase" "UP:Q9SIY3"
                                     ("AT-Pase" "ONT:PROTEIN" :ID "GO:0016887"
                                      :NAME "ATPase activity"))
                                    ("hyphens" "HER1" "UP:P00533"
                                     ("HER-1" "ONT:PROTEIN" :ID "NCIT:C17068"
                                      :NAME
                                      "epidermal growth factor receptor"))
                                    ("hyphens-dc" "deltex1" "UP:Q86Y01"
                                     ("Deltex-1" "ONT:PROTEIN" :ID
                                      "NCIT:C26143" :NAME
                                      "deltex homolog-1 protein"))
                                    ("hyphens" "GSK3β" "UP:P49841"
                                     ("GSK3-β" "ONT:PROTEIN" :ID "NCIT:C128886"
                                      :NAME "glycogen synthase kinase-3 beta"))
                                    ("downcase" "gsk-3β" "UP:P49841"
                                     ("Gsk-3β" "ONT:PROTEIN" :ID "NCIT:C128886"
                                      :NAME "glycogen synthase kinase-3 beta"))
                                    ("hyphens" "NFκB2" "UP:Q00653"
                                     ("NF-κB2" "ONT:PROTEIN" :ID "NCIT:C18550"
                                      :NAME "NF-kappa B p49-p100 protein"))
                                    ("hyphens-dc" "pkcα" "UP:P17252"
                                     ("PKC-α" "ONT:PROTEIN" :ID "UP:P04409"
                                      :NAME "Protein kinase C alpha type"))
                                    ("hyphens-dc" "pkcδ" "UP:Q05655"
                                     ("PKC-δ" "ONT:PROTEIN" :ID "UP:P10829"
                                      :NAME "Protein kinase C gamma type"))
                                    ("hyphens-dc" "tgfα" "UP:P01135"
                                     ("TGF-α" "ONT:PROTEIN" :ID "UP:P98138"
                                      :NAME
                                      "Transforming growth factor alpha"))
                                    ("hyphens" "p110α" "UP:P42336"
                                     ("p110-α" "ONT:PROTEIN" :ID "NCIT:C30168"
                                      :NAME
                                      "phosphoinositide-3-kinase catalytic alpha polypeptide"))
                                    ("orig" "tetraspanin" "XFAM:PF00335"
                                     ("tetraspanin" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF00335.18" :NAME "tetraspannin"))))

(defparameter *ID-AND-CAT-MISMATCH* '(("downcase" "acetylation" "GO:0006473"
                                       :OLD-CAT POST-TRANSLATIONAL-MODIFICATION
                                       :NEW-CAT BIO-PROCESS
                                       ("Acetylation" "ONT:BIOLOGICAL-PROCESS"
                                        :ID "NCIT:C16255" :NAME "acetylation"))
                                      ("orig" "deacetylation" "GO:0006476"
                                       :OLD-CAT DE-ACETYLATION :NEW-CAT
                                       BIO-PROCESS
                                       ("deacetylation"
                                        "ONT:BIOLOGICAL-PROCESS" :ID
                                        "NCIT:C41553" :NAME "deacetylation"))
                                      ("orig" "apoptosis" "GO:0006915" :OLD-CAT
                                       CELLULAR-PROCESS :NEW-CAT BIO-PROCESS
                                       ("apoptosis" "ONT:BIOLOGICAL-PROCESS"
                                        :ID "NCIT:C17557" :NAME "apoptosis"))
                                      ("orig" "anoikis" "UP:Q9UIK4" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-PROCESS
                                       ("anoikis" "ONT:BIOLOGICAL-PROCESS" :ID
                                        "GO:0043276" :NAME "anoikis")) ;done
                                      ("orig" "glycolysis" "GO:0006096"
                                       :OLD-CAT CELLULAR-PROCESS :NEW-CAT
                                       BIO-PROCESS
                                       ("glycolysis" "ONT:BIOLOGICAL-PROCESS"
                                        :ID "NCIT:C28152" :NAME "glycolysis"))
                                      ("orig" "homeostasis" "GO:0042592"
                                       :OLD-CAT CELLULAR-PROCESS :NEW-CAT
                                       BIO-PROCESS
                                       ("homeostasis" "ONT:BIOLOGICAL-PROCESS"
                                        :ID "NCIT:C25989" :NAME "homeostasis"))
                                      ("downcase" "leukemia" "UP:P15018"
                                       :OLD-CAT PROTEIN :NEW-CAT CANCER
                                       ("Leukemia" "ONT:CANCER" :ID
                                        "EFO:0000565" :NAME "leukemia")) ;done
                                      ("orig" "mcl" "UP:Q7Z6Z7" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("mcl" "ONT:CANCER" :ID "EFO:1001469"
                                        :NAME "Mantle cell lymphoma"))
                                      ("orig" "neutrophil" "UP:P02775" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("neutrophil" "ONT:CELL" :ID
                                        "BTO:0000130" :NAME "neutrophil")) ;done
                                      ("orig" "microglia" "UP:P49238" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("microglia" "ONT:CELL" :ID
                                        "BTO:0000078" :NAME "microglia")) ;done
                                      ("orig" "cdk" "NCIT:C17767" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("cdk" "ONT:CELL-LINE" :ID "CVCL:R774"
                                        :NAME "DK1 [Tursiops]"))
                                      ("upcase" "HEK" "UP:P29320" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Hek" "ONT:CELL-LINE" :ID "CVCL:M624"
                                        :NAME "HEK"))
                                      ("downcase" "jurkat" "UP:Q86SW4" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Jurkat" "ONT:CELL-LINE" :ID
                                        "CVCL:0065" :NAME "Jurkat"))
                                      ("orig" "KNS" "UP:P33176" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("KNS" "ONT:CELL-LINE" :ID "CVCL:0I60"
                                        :NAME "KNS-R"))
                                      ("orig" "MDS" "UP:P43034" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MDS" "ONT:CELL-LINE" :ID "CVCL:L807"
                                        :NAME "MDS"))
                                      ("downcase" "maf" "FA:00410" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("MAF" "ONT:CELL-LINE" :ID "CVCL:R844"
                                        :NAME "MAF"))
                                      ("downcase" "lncap" "UP:Q6IWH7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("LnCaP" "ONT:CELL-LINE" :ID "CVCL:0395"
                                        :NAME "LNCaP"))
                                      ("downcase" "lck" "UP:P06239" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Lck" "ONT:CELL-LINE" :ID "CVCL:E753"
                                        :NAME "LCK"))
                                      ("orig" "NCC" "UP:P55017" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("NCC" "ONT:CELL-LINE" :ID "CVCL:1444"
                                        :NAME "SJNB-14"))
                                      ("orig" "NB4" "UP:Q9P2D0" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("NB4" "ONT:CELL-LINE" :ID "EFO:0002798"
                                        :NAME "NB4"))
                                      ("orig" "MS2" "UP:P78325" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MS2" "ONT:CELL-LINE" :ID "CVCL:E992"
                                        :NAME "MS-2"))
                                      ("orig" "NPCs" "CHEBI:80552" :OLD-CAT
                                       MOLECULE :NEW-CAT CELL-LINE
                                       ("NPCs" "ONT:CELL-LINE" :ID
                                        "EFO:0004041" :NAME "NPC"))
                                      ("downcase" "rtk" "UP:Q08345" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("RTK" "ONT:CELL-LINE" :ID "CVCL:4W74"
                                        :NAME "RTK"))
                                      ("downcase" "rho" "FA:03668" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("RHO" "ONT:CELL-LINE" :ID "CVCL:F405"
                                        :NAME "RHO"))
                                      ("orig" "SW480" "UP:O14763" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SW480" "ONT:CELL-LINE" :ID
                                        "EFO:0002083" :NAME "SW480"))
                                      ("upcase" "SF21" "UP:Q7Z3U7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Sf21" "ONT:CELL-LINE" :ID "CVCL:0518"
                                        :NAME "Sf21"))
                                      ("upcase" "TOM1" "UP:O60784" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Tom1" "ONT:CELL-LINE" :ID "CVCL:1895"
                                        :NAME "TOM-1"))
                                      ("downcase" "th2" "UP:Q9Y5Y4" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Th2" "ONT:CELL-LINE" :ID "EFO:0002804"
                                        :NAME "TH-2"))
                                      ("downcase" "tec" "UP:Q92570" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Tec" "ONT:CELL-LINE" :ID "CVCL:J026"
                                        :NAME "TEC"))
                                      ("orig" "TSA" "XFAM:PF03249.11" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("TSA" "ONT:CELL-LINE" :ID "CVCL:F736"
                                        :NAME "TS/A"))
                                      ("orig" "TLR3" "UP:O15455" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TLR3" "ONT:CELL-LINE" :ID "CVCL:5601"
                                        :NAME "TLR3"))
                                      ("orig" "cho" "UP:Q8L5R3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cho" "ONT:CELL-LINE" :ID "CVCL:0213"
                                        :NAME "CHO"))
                                      ("upcase" "CAL" "UP:Q9HD26" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cal" "ONT:CELL-LINE" :ID "CVCL:E514"
                                        :NAME "CAL"))
                                      ("orig" "cox" "UP:P36551" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cox" "ONT:CELL-LINE" :ID "CVCL:E534"
                                        :NAME "COX"))
                                      ("downcase" "hck" "UP:P08631" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("hCK" "ONT:CELL-LINE" :ID "CVCL:6F04"
                                        :NAME "HCK"))
                                      ("downcase" "hec1" "UP:O14777" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("hEC1" "ONT:CELL-LINE" :ID "CVCL:1274"
                                        :NAME "HEC-1"))
                                      ("orig" "k63" "UP:D2IE16" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("k63" "ONT:CELL-LINE" :ID "CVCL:6D69"
                                        :NAME "K63"))
                                      ("upcase" "MT2" "UP:P02795" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("mt2" "ONT:CELL-LINE" :ID "CVCL:2631"
                                        :NAME "MT-2"))
                                      ("orig" "sp1" "UP:P08047" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("sp1" "ONT:CELL-LINE" :ID "CVCL:AZ65"
                                        :NAME "SP1"))
                                      ("downcase" "nuclear" "GO:0005634"
                                       :OLD-CAT NUCLEUS :NEW-CAT
                                       CELLULAR-LOCATION
                                       ("Nuclear" "ONT:CELL-PART" :ID
                                        "UP:SL-0191" :NAME "Nucleus"))
                                      ("downcase" "tgn" "UP:O43493" :OLD-CAT
                                       PROTEIN :NEW-CAT CELLULAR-LOCATION
                                       ("TGN" "ONT:CELL-PART" :ID "GO:0005802"
                                        :NAME "trans-Golgi network"))
                                      ("orig" "cyclosome" "UP:Q13042" :OLD-CAT
                                       PROTEIN :NEW-CAT CELLULAR-LOCATION
                                       ("cyclosome" "ONT:CELL-PART" :ID
                                        "GO:0005680" :NAME
                                        "anaphase-promoting complex"));deleted old
                                      ("orig" "endosomes" "GO:0005768" :OLD-CAT
                                       ENDOSOME :NEW-CAT CELLULAR-LOCATION
                                       ("endosomes" "ONT:CELL-PART" :ID
                                        "UP:SL-0101" :NAME "Endosome"))
                                      ("orig" "mitochondria" "UP:O75153"
                                       :OLD-CAT PROTEIN :NEW-CAT
                                       CELLULAR-LOCATION
                                       ("mitochondria" "ONT:CELL-PART" :ID
                                        "GO:0005739" :NAME "mitochondrion")) ;done
                                      ("orig" "peroxisome" "UP:O43933" :OLD-CAT
                                       PROTEIN :NEW-CAT CELLULAR-LOCATION
                                       ("peroxisome" "ONT:CELL-PART" :ID
                                        "UP:SL-0204" :NAME "Peroxisome")) ;done
                                      ("orig" "spines" "GO:0043197" :OLD-CAT
                                       DENDRITIC-SPINE :NEW-CAT
                                       CELLULAR-LOCATION
                                       ("spines" "ONT:CELL-PART" :ID
                                        "UP:SL-0284" :NAME "Dendritic spine"))
                                      ("orig" "EGTA" "UP:A0R5N1" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("EGTA" "ONT:CHEMICAL" :ID "NCIT:C72097"
                                        :NAME "egtazic acid"))
                                      ("orig" "deferasirox" "MESH:C415250"
                                       :OLD-CAT DRUG :NEW-CAT MOLECULE
                                       ("deferasirox" "ONT:CHEMICAL" :ID
                                        "NCIT:C48384" :NAME "deferasirox"))
                                      ("downcase" "glucose" "UP:P35575"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("Glucose" "ONT:CHEMICAL" :ID
                                        "CHEBI:17234" :NAME "glucose")) ;done
                                      ("orig" "IDP" "UP:O75874" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("IDP" "ONT:CHEMICAL" :ID "CHEBI:17808"
                                        :NAME "IDP"))
                                      ("downcase" "hox" "UP:P28358" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Hox" "ONT:CHEMICAL" :ID "CHEBI:46904"
                                        :NAME "oxalate(1-)"))
                                      ("downcase" "hormone" "UP:Q9PVE4"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("Hormone" "ONT:CHEMICAL" :ID
                                        "CHEBI:24621" :NAME "hormone")) ;done
                                      ("downcase" "nadph" "UP:P30043" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("NADPH" "ONT:CHEMICAL" :ID
                                        "CHEBI:16474" :NAME "NADPH"));done
                                      ("downcase" "tcdd" "UP:Q7Z3E1" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("TCDD" "ONT:CHEMICAL" :ID "NCIT:C864"
                                        :NAME "tetrachlorodibenzodioxin"))
                                      ("orig" "antioxidant" "UP:P30044"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("antioxidant" "ONT:CHEMICAL" :ID
                                        "CHEBI:22586" :NAME "antioxidant"))  ;done
                                      ("orig" "androgen" "UP:Q13772" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("androgen" "ONT:CHEMICAL" :ID
                                        "CHEBI:50113" :NAME "androgen")) ;done
                                      ("orig" "aldosterone" "UP:P19099"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("aldosterone" "ONT:CHEMICAL" :ID
                                        "CHEBI:27584" :NAME "aldosterone")) ;done
                                      ("orig" "adenosine" "UP:P00813" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("adenosine" "ONT:CHEMICAL" :ID
                                        "CHEBI:16335" :NAME "adenosine")) ;done
                                      ("downcase" "coa" "UP:P02931" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("coA" "ONT:CHEMICAL" :ID "CHEBI:57287"
                                        :NAME "coenzyme A(4-)"))
                                      ("orig" "chalcone" "XFAM:PF02431.13"
                                       :OLD-CAT PROTEIN-DOMAIN :NEW-CAT
                                       MOLECULE
                                       ("chalcone" "ONT:CHEMICAL" :ID
                                        "CHEBI:27618" :NAME "chalcone"))
                                      ("orig" "cyt" "UP:P95339" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("cyt" "ONT:CHEMICAL" :ID "CHEBI:16040"
                                        :NAME "cytosine"))
                                      ("orig" "glucocorticoid" "UP:Q99576"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("glucocorticoid" "ONT:CHEMICAL" :ID
                                        "CHEBI:24261" :NAME "glucocorticoid"))
                                      ("orig" "endocrine" "UP:Q5W5W9" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("endocrine" "ONT:CHEMICAL" :ID
                                        "CHEBI:24621" :NAME "hormone"))
                                      ("orig" "inducer" "UP:Q8IVI9" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("inducer" "ONT:CHEMICAL" :ID
                                        "NCIT:C120268" :NAME "inducer"))
                                      ("orig" "histamine" "UP:P35367" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("histamine" "ONT:CHEMICAL" :ID
                                        "CHEBI:18295" :NAME "histamine"))
                                      ("orig" "iodide" "UP:Q8N695" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("iodide" "ONT:CHEMICAL" :ID
                                        "CHEBI:16382" :NAME "iodide"))
                                      ("orig" "pyruvate" "UP:P11498" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("pyruvate" "ONT:CHEMICAL" :ID
                                        "CHEBI:15361" :NAME "pyruvate"))
                                      ("orig" "polyproline" "UP:Q15390"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("polyproline" "ONT:CHEMICAL" :ID
                                        "CHEBI:8321" :NAME "Polyproline"))
                                      ("upcase" "SAM" "UP:Q9LDQ7" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("sam" "ONT:CHEMICAL" :ID "CHEBI:67040"
                                        :NAME "S-adenosyl-L-methioninate"))
                                      ("orig" "sterol" "UP:P36956" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("sterol" "ONT:CHEMICAL" :ID
                                        "CHEBI:15889" :NAME "sterol"))
                                      ("orig" "tris" "UP:Q9NQV6" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("tris" "ONT:CHEMICAL" :ID "CHEBI:9754"
                                        :NAME "tris"))
                                      ("orig" "thymidine" "UP:P19971" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("thymidine" "ONT:CHEMICAL" :ID
                                        "CHEBI:17748" :NAME "thymidine"))
                                      ("downcase" "fish" "UP:Q5TCZ1" :OLD-CAT
                                       PROTEIN :NEW-CAT ORGANISM
                                       ("Fish" "ONT:FISH" :ID "NCIT:C14207"
                                        :NAME "fish"))
                                      ("downcase" "yeast" "NCIT:C14271"
                                       :OLD-CAT SPECIES :NEW-CAT ORGANISM
                                       ("Yeast" "ONT:FUNGUS" :ID "NCIT:C14286"
                                        :NAME "yeast"))
                                      ("orig" "GATAs" "FA:04921" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("GATAs" "ONT:GENE" :ID "NCIT:C60658"
                                        :NAME "GATA5"))
                                      ("downcase" "gene" "UP:Q70KF0" :OLD-CAT
                                       BIO-CHEMICAL-ENTITY :NEW-CAT PROTEIN
                                       ("Gene" "ONT:GENE" :ID "NCIT:C16612"
                                        :NAME "gene"))
                                      ("downcase" "helios" "CHEBI:30217"
                                       :OLD-CAT MOLECULE :NEW-CAT PROTEIN
                                       ("Helios" "ONT:GENE" :ID "NCIT:C80027"
                                        :NAME "IKZF2"))
                                      ("orig" "HSPC" "XFAM:PF02518" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("HSPC" "ONT:GENE" :ID "HGNC:9536" :NAME
                                        "proteasome subunit alpha 7"))
                                      ("downcase" "invs" "EFO:0004017" :OLD-CAT
                                       BIO-METHOD :NEW-CAT PROTEIN
                                       ("INVS" "ONT:GENE" :ID "HGNC:17870"
                                        :NAME "inversin"))
                                      ("downcase" "men" "NCIT:C14366" :OLD-CAT
                                       HUMAN :NEW-CAT PROTEIN
                                       ("Men" "ONT:GENE" :ID "NCIT:C97517"
                                        :NAME "ELL"))
                                      ("downcase" "pgis" "XFAM:PF00342.17"
                                       :OLD-CAT PROTEIN-DOMAIN :NEW-CAT PROTEIN
                                       ("PGIS" "ONT:GENE" :ID "NCIT:C96439"
                                        :NAME "PTGIS"))
                                      ("downcase" "pfas" "CHEBI:53371" :OLD-CAT
                                       MOLECULE :NEW-CAT PROTEIN
                                       ("Pfas" "ONT:GENE" :ID "HGNC:8863" :NAME
                                        "phosphoribosylformylglycinamidine synthase"))
                                      ("orig" "PYM" "FA:04685" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("PYM" "ONT:GENE" :ID "HGNC:30258" :NAME
                                        "PYM homolog 1, exon junction complex associated factor"))
                                      ("orig" "PTMs" "GO:0043687" :OLD-CAT
                                       POST-TRANSLATIONAL-MODIFICATION :NEW-CAT
                                       PROTEIN
                                       ("PTMs" "ONT:GENE" :ID "HGNC:9629" :NAME
                                        "parathymosin"))
                                      ("orig" "PPCs" "XFAM:PF04151.13" :OLD-CAT
                                       PROTEIN-DOMAIN :NEW-CAT PROTEIN
                                       ("PPCs" "ONT:GENE" :ID "HGNC:25686"
                                        :NAME
                                        "phosphopantothenoylcysteine synthetase"))
                                      ("orig" "oncogene" "UP:P01106" :OLD-CAT
                                       GENE :NEW-CAT PROTEIN
                                       ("oncogene" "ONT:GENE" :ID "NCIT:C16936"
                                        :NAME "oncogene"))
                                      ("orig" "ERM" "UP:P41161" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("ERM" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF00769.17" :NAME "ERM"))
                                      ("orig" "ERK" "BE:ERK" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("ERK" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C26360" :NAME "MAP kinase gene"))
                                      ("downcase" "dia1" "UP:P00387" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Dia1" "ONT:GENE-PROTEIN" :ID
                                        "FA:05036" :NAME "DIA1 family"))
                                      ("orig" "PI3-kinase" "PF00454" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("PI3-kinase" "ONT:GENE-PROTEIN" :ID
                                        "UP:P54673" :NAME
                                        "Phosphatidylinositol 3-kinase 1"))
                                      ("orig" "PI-3K" "PF00454" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("PI-3K" "ONT:GENE-PROTEIN" :ID
                                        "UP:P54673" :NAME
                                        "Phosphatidylinositol 3-kinase 1"))
                                      ("orig" "GAPs" "XFAM:PF00616" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("GAPs" "ONT:GENE-PROTEIN" :ID
                                        "UP:P09851" :NAME
                                        "Ras GTPase-activating protein 1"))
                                      ("orig" "GAP" "XFAM:PF00616" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("GAP" "ONT:GENE-PROTEIN" :ID
                                        "UP:P09851" :NAME
                                        "Ras GTPase-activating protein 1"))
                                      ("upcase" "FIP1" "UP:Q6UN15" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Fip1" "ONT:GENE-PROTEIN" :ID
                                        "FA:01354" :NAME "FIP1 family"))
                                      ("orig" "ICAT" "UP:Q9NSA3" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("ICAT" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF06384.9" :NAME "ICAT"))
                                      ("downcase" "hsp90" "XFAM:PF02518"
                                       :OLD-CAT PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Hsp90" "ONT:GENE-PROTEIN" :ID
                                        "UP:Q4UDU8" :NAME
                                        "Heat shock protein 90"))
                                      ("downcase" "il12" "XFAM:PF03039"
                                       :OLD-CAT PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Il12" "ONT:GENE-PROTEIN" :ID "BE:IL12"
                                        :NAME "IL12"))
                                      ("orig" "MAPK" "PR:000000019" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("MAPK" "ONT:GENE-PROTEIN" :ID
                                        "UP:P27638" :NAME
                                        "Mitogen-activated protein kinase spk1"))
                                      ("upcase" "MSP" "UP:P26927" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Msp" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF01716.16" :NAME "MSP"))
                                      ("orig" "Mafs" "FA:00410" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Mafs" "ONT:GENE-PROTEIN" :ID
                                        "HGNC:6776" :NAME
                                        "MAF bZIP transcription factor"))
                                      ("downcase" "not1" "UP:A5YKK6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Not1" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF04054.13" :NAME "not1"))
                                      ("orig" "PPase" "UP:Q15181" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("PPase" "ONT:GENE-PROTEIN" :ID
                                        "FA:02995" :NAME "PPase family"))
                                      ("upcase" "RECA" "CVCL:ER23" :OLD-CAT
                                       CELL-LINE :NEW-CAT PROTEIN-FAMILY
                                       ("RecA" "ONT:GENE-PROTEIN" :ID
                                        "FA:03251" :NAME "recA family"))
                                      ("upcase" "RAN" "UP:P62826" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Ran" "ONT:GENE-PROTEIN" :ID "FA:03662"
                                        :NAME "ran family"))
                                      ("orig" "Rals" "XFAM:PF11058.6" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Rals" "ONT:GENE-PROTEIN" :ID "BE:RAL"
                                        :NAME "RAL"))
                                      ("orig" "Ral" "XFAM:PF11058.6" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Ral" "ONT:GENE-PROTEIN" :ID "BE:RAL"
                                        :NAME "RAL"))
                                      ("orig" "SLAP" "UP:Q13239" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("SLAP" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF03217.12" :NAME "SLAP"))
                                      ("downcase" "sin1" "UP:Q9BPZ7" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Sin1" "ONT:GENE-PROTEIN" :ID
                                        "FA:03621" :NAME "SIN1 family"))
                                      ("orig" "TRAP" "UP:Q96KG9" :OLD-CAT
                                       BIO-METHOD :NEW-CAT PROTEIN
                                       ("TRAP" "ONT:GENE-PROTEIN" :ID
                                        "UP:P13686" :NAME
                                        "Tartrate-resistant acid phosphatase type 5"))
                                      ("orig" "TLC" "UP:P31025" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("TLC" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF03219.12" :NAME "TLC"))
                                      ("orig" "bcl2" "UP:P10415" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("bcl2" "ONT:GENE-PROTEIN" :ID
                                        "FA:00343" :NAME "bcl-2 family"))
                                      ("orig" "centrin" "UP:P53441" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("centrin" "ONT:GENE-PROTEIN" :ID
                                        "FA:00560" :NAME "centrin family"))
                                      ("orig" "eIF4A" "UP:P60842" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("eIF4A" "ONT:GENE-PROTEIN" :ID
                                        "FA:00921" :NAME "eIF4A subfamily"))
                                      ("orig" "dynein" "UP:O14645" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("dynein" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF08385.10" :NAME "DHC N1"))
                                      ("orig" "dicer" "UP:Q9UPY3" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("dicer" "ONT:GENE-PROTEIN" :ID
                                        "FA:01731" :NAME "dicer subfamily"))
                                      ("orig" "gata" "FA:04921" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("gata" "ONT:GENE-PROTEIN" :ID "BE:GATA"
                                        :NAME "GATA"))
                                      ("orig" "ku80" "UP:P13010" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("ku80" "ONT:GENE-PROTEIN" :ID
                                        "FA:02003" :NAME "Ku80 family"))
                                      ("orig" "nectin" "UP:Q9NQS3" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("nectin" "ONT:GENE-PROTEIN" :ID
                                        "FA:02434" :NAME "nectin family"))
                                      ("orig" "peroxidase" "UP:Q01603" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("peroxidase" "ONT:GENE-PROTEIN" :ID
                                        "FA:02795" :NAME "peroxidase family"))
                                      ("downcase" "par3" "UP:O00254" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("pAR3" "ONT:GENE-PROTEIN" :ID
                                        "FA:02653" :NAME "PAR3 family"))
                                      ("orig" "phosphatase" "UP:A1TUW0"
                                       :OLD-CAT ENZYME :NEW-CAT PROTEIN
                                       ("phosphatase" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C16981" :NAME "phosphatase"))
                                      ("orig" "refs" "UP:P45951" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("refs" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF05755.10" :NAME "REF"))
                                      ("downcase" "haas" "PCID:547" :OLD-CAT
                                       MOLECULE :NEW-CAT BIO-COMPLEX
                                       ("Haas" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0032117" :NAME
                                        "horsetail-astral microtubule array"))
                                      ("orig" "IgG2a" "UP:P20760" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("IgG2a" "ONT:MACROMOLECULAR-COMPLEX"
                                        :ID "GO:0071735" :NAME
                                        "IgG immunoglobulin complex"))
                                      ("orig" "PIC" "UP:Q9XYZ5" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("PIC" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0019035" :NAME
                                        "viral integration complex"))
                                      ("orig" "chromatin" "UP:Q9SIW2" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("chromatin"
                                        "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0000785" :NAME "chromatin"))
                                      ("orig" "enhanceosome" "UP:Q04206"
                                       :OLD-CAT PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("enhanceosome"
                                        "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0034206" :NAME "enhanceosome"))
                                      ("orig" "nucleosome" "UP:Q99733" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("nucleosome"
                                        "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0000786" :NAME "nucleosome"))
                                      ("orig" "ascites" "TS-0058" :OLD-CAT
                                       TISSUE :NEW-CAT DISEASE
                                       ("ascites"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "HP:0001541" :NAME "ascites"))
                                      ("orig" "hyperglycemia" "UP:Q09428"
                                       :OLD-CAT PROTEIN :NEW-CAT DISEASE
                                       ("hyperglycemia"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "HP:0003074" :NAME
                                        "Hyperglycemia"))
                                      ("orig" "neoplasms" "NCIT:C3262" :OLD-CAT
                                       CANCER :NEW-CAT DISEASE
                                       ("neoplasms"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0000616" :NAME "neoplasm"))
                                      ("orig" "microcephaly" "UP:Q96SN8"
                                       :OLD-CAT PROTEIN :NEW-CAT DISEASE
                                       ("microcephaly"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C85874" :NAME
                                        "microcephaly"))
                                      ("orig" "sIL" "UP:Q15468" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("sIL"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C8334" :NAME
                                        "squamous cell intraepithelial neoplasia"))
                                      ("downcase" "frg" "UP:Q14331" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("FRG" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF08867.9" :NAME "FRG"))
                                      ("orig" "PDGF" "BE:PDGF" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN-DOMAIN
                                       ("PDGF" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00341.15" :NAME "PDGF"))
                                      ("downcase" "hect" "UP:Q9ULT8" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("HECT" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00632.23" :NAME "HECT"))
                                      ("upcase" "MRP" "UP:P49006" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Mrp" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF09387.8" :NAME "MRP"))
                                      ("orig" "PCI" "UP:P05154" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("PCI" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01399.25" :NAME "PCI"))
                                      ("upcase" "PID" "UP:O94776" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("PiD" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00640.21" :NAME "PID"))
                                      ("upcase" "PCP" "UP:P13497" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Pcp" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF02429.13" :NAME "PCP"))
                                      ("orig" "cytotoxic" "UP:P16410" :OLD-CAT
                                       MODIFIER :NEW-CAT PROTEIN-DOMAIN
                                       ("cytotoxic" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF09000.8" :NAME "cytotoxic"))
                                      ("orig" "gfp" "UP:P42212" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("gfp" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01353.20" :NAME "GFP"))
                                      ("orig" "hsa" "UP:Q15070" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("hsa" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF07529.11" :NAME "HSA"))
                                      ("upcase" "PRS" "UP:P57266" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("pRS" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF03370.11" :NAME "CBM 21"))
                                      ("downcase" "gtpγs" "UP:P10114" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("GTPγS" "ONT:MOLECULE" :ID
                                        "CHEBI:43000" :NAME
                                        "guanosine 5'-[gamma-thio]triphosphate"))
                                      ("orig" "GLN" "UP:Q9XQ94" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("GLN" "ONT:MOLECULE" :ID "CHEBI:30011"
                                        :NAME "L-glutamine residue"))
                                      ("upcase" "NAC" "UP:Q9C000" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("NAc" "ONT:MOLECULE" :ID "CHEBI:7421"
                                        :NAME "NAC"))
                                      ("downcase" "molecule" "CHEBI:36357"
                                       :OLD-CAT BIO-CHEMICAL-ENTITY :NEW-CAT
                                       MOLECULE
                                       ("Molecule" "ONT:MOLECULE" :ID
                                        "CHEBI:25367" :NAME "molecule"))
                                      ("orig" "PDAC" "UP:O34798" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("PDAC" "ONT:MOLECULE" :ID "CHEBI:53355"
                                        :NAME
                                        "poly(diallyldimethylammonium chloride) macromolecule"))
                                      ("downcase" "ptdins" "UP:P48426" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Ptdins" "ONT:MOLECULE" :ID
                                        "CHEBI:28874" :NAME
                                        "phosphatidylinositol"))
                                      ("orig" "SSH" "UP:Q6IVY4" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("SSH" "ONT:MOLECULE" :ID "CHEBI:30605"
                                        :NAME "disulfanyl group"))
                                      ("downcase" "selenoprotein"
                                       "PR:000037068" :OLD-CAT PROTEIN-FAMILY
                                       :NEW-CAT MOLECULE
                                       ("Selenoprotein" "ONT:MOLECULE" :ID
                                        "CHEBI:80757" :NAME
                                        "Protein L-selenocysteine"))
                                      ("orig" "carboxylate" "GO:0018214"
                                       :OLD-CAT CARBOXYLATION :NEW-CAT MOLECULE
                                       ("carboxylate" "ONT:MOLECULE" :ID
                                        "CHEBI:35757" :NAME
                                        "monocarboxylic acid anion"))
                                      ("orig" "dpp" "UP:Q9NZW4" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("dpp" "ONT:MOLECULE" :ID "CHEBI:60069"
                                        :NAME "dipropyl phthalate"))
                                      ("orig" "glycerol" "UP:C0RM12" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("glycerol" "ONT:MOLECULE" :ID
                                        "CHEBI:17754" :NAME "glycerol"))
                                      ("orig" "flavoprotein" "XFAM:PF02441.17"
                                       :OLD-CAT PROTEIN-FAMILY :NEW-CAT
                                       MOLECULE
                                       ("flavoprotein" "ONT:MOLECULE" :ID
                                        "CHEBI:5086" :NAME "flavoprotein"))
                                      ("orig" "inositol" "UP:P29218" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("inositol" "ONT:MOLECULE" :ID
                                        "CHEBI:24848" :NAME "inositol"))
                                      ("orig" "malonyl" "UP:Q8RU07" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("malonyl" "ONT:MOLECULE" :ID
                                        "CHEBI:25134" :NAME "malonyl group"))
                                      ("orig" "lipids" "UP:Q9Y5P4" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("lipids" "ONT:MOLECULE" :ID
                                        "CHEBI:18059" :NAME "lipid"))
                                      ("orig" "nicotinamide" "UP:P43490"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("nicotinamide" "ONT:MOLECULE" :ID
                                        "CHEBI:17154" :NAME "nicotinamide"))
                                      ("orig" "oligomers" "UP:P36222" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("oligomers" "ONT:MOLECULE" :ID
                                        "CHEBI:132554" :NAME "oligomer"))
                                      ("orig" "pentapeptide" "XFAM:PF00805.20"
                                       :OLD-CAT PROTEIN-DOMAIN :NEW-CAT
                                       MOLECULE
                                       ("pentapeptide" "ONT:MOLECULE" :ID
                                        "CHEBI:48545" :NAME "pentapeptide"))
                                      ("orig" "quinone" "UP:Q08257" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("quinone" "ONT:MOLECULE" :ID
                                        "CHEBI:36141" :NAME "quinone"))
                                      ("orig" "prolyl" "UP:Q7L3T8" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("prolyl" "ONT:MOLECULE" :ID
                                        "CHEBI:32874" :NAME "proline residue"))
                                      ("orig" "polypeptides" "UP:P08473"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("polypeptides" "ONT:MOLECULE" :ID
                                        "CHEBI:15841" :NAME "polypeptide"))
                                      ("orig" "polypeptide" "UP:Q10472"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("polypeptide" "ONT:MOLECULE" :ID
                                        "CHEBI:15841" :NAME "polypeptide"))
                                      ("orig" "phosphoinositide" "UP:Q6ZUJ8"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("phosphoinositide" "ONT:MOLECULE" :ID
                                        "CHEBI:18179" :NAME
                                        "phosphoinositide"))
                                      ("orig" "phosphatidylinositol"
                                       "UP:Q9W1M7" :OLD-CAT PROTEIN :NEW-CAT
                                       MOLECULE
                                       ("phosphatidylinositol" "ONT:MOLECULE"
                                        :ID "CHEBI:28874" :NAME
                                        "phosphatidylinositol"))
                                      ("orig" "retinoid" "UP:P10745" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("retinoid" "ONT:MOLECULE" :ID
                                        "CHEBI:26537" :NAME "retinoid"))
                                      ("orig" "sulfonate" "NCIT:C222" :OLD-CAT
                                       DRUG :NEW-CAT MOLECULE
                                       ("sulfonate" "ONT:MOLECULE" :ID
                                        "CHEBI:33543" :NAME "sulfonate"))
                                      ("orig" "ethanols" "CHEBI:16236" :OLD-CAT
                                       MOLECULE :NEW-CAT DRUG
                                       ("ethanols"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C2190" :NAME "alcohol"))
                                      ("orig" "GL2" "UP:P46607" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("GL2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C104256" :NAME
                                        "alpha-methylhomocysteine thiolactone"))
                                      ("upcase" "IFN" "UP:P51526" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("Ifn" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C584" :NAME
                                        "therapeutic interferon"))
                                      ("orig" "MG132" "UP:Q9NXV6" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("MG132" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "CHEBI:75142" :NAME
                                        "N-benzyloxycarbonyl-L-leucyl-L-leucyl-L-leucinal"))
                                      ("downcase" "nacl" "UP:P55017" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("NaCl" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C29974" :NAME
                                        "sodium chloride"))
                                      ("downcase" "nsaid" "UP:Q99988" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("NSAID" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C257" :NAME
                                        "nonsteroidal antiinflammatory drug"))
                                      ("downcase" "ppa" "UP:P0A7A9" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("PPA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C84056" :NAME
                                        "phosphonoacetic acid"))
                                      ("orig" "PP2" "UP:Q99463" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("PP2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:78331" :NAME "PP2"))
                                      ("downcase" "pma" "UP:Q13794" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("PMA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C866" :NAME
                                        "tetradecanoylphorbol acetate"))
                                      ("orig" "RANTES" "UP:P13501" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("RANTES" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C1211" :NAME
                                        "therapeutic RANTES"))
                                      ("downcase" "statins" "CHEBI:87631"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("Statins" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C1655" :NAME
                                        "HMG-CoA reductase inhibitor"))
                                      ("upcase" "TGF" "UP:P01137" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("Tgf" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C899" :NAME
                                        "therapeutic transforming growth factor"))
                                      ("orig" "bFGF" "UP:P09038" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("bFGF" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C1674" :NAME
                                        "therapeutic fibroblast growth factor-2"))
                                      ("orig" "antiserum" "UP:Q92896" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("antiserum"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C571" :NAME "antiserum"))
                                      ("orig" "amp" "UP:O24006" :OLD-CAT
                                       NUCLEOTIDE :NEW-CAT DRUG
                                       ("amp" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:16027" :NAME "AMP"))
                                      ("orig" "chymotrypsin" "UP:Q6GPI1"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("chymotrypsin"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C76568" :NAME "chymotrypsin"))
                                      ("orig" "catechol" "UP:P21964" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("catechol"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C034221" :NAME "catechol"))
                                      ("orig" "doxorubicin" "UP:Q15311"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("doxorubicin"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C456" :NAME "doxorubicin"))
                                      ("orig" "dexamethasone" "UP:Q9Y272"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("dexamethasone"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C422" :NAME "dexamethasone"))
                                      ("orig" "cycloheximide" "UP:P10109"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("cycloheximide"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:27641" :NAME "cycloheximide"))
                                      ("orig" "creatinine" "UP:O15244" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("creatinine"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:16737" :NAME "creatinine"))
                                      ("orig" "creatine" "UP:P06732" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("creatine"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:16919" :NAME "creatine"))
                                      ("orig" "gp120" "UP:Q14624" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("gp120" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C29554" :NAME
                                        "gp-120 antigen"))
                                      ("orig" "etoposide" "UP:O14681" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("etoposide"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C491" :NAME "etoposide"))
                                      ("orig" "estrogens" "CHEBI:50114"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("estrogens"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C483" :NAME
                                        "therapeutic estrogen"))
                                      ("orig" "estradiols" "CHEBI:23965"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("estradiols"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C478" :NAME
                                        "therapeutic estradiol"))
                                      ("orig" "heregulin" "UP:Q02297" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("heregulin"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1426" :NAME
                                        "recombinant heregulin"))
                                      ("orig" "heparin" "UP:P20160" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("heparin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C539" :NAME "heparin"))
                                      ("orig" "isoproterenol" "UP:P25098"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("isoproterenol"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C29133" :NAME "isoproterenol"))
                                      ("orig" "morphine" "PCID:23253564"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("morphine"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C669" :NAME "morphine"))
                                      ("upcase" "PHA" "UP:P80463" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("pha" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C88791" :NAME
                                        "phytohemagglutinin"))
                                      ("orig" "pyrene" "UP:P04798" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("pyrene" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "MESH:C030984" :NAME "pyrene"))
                                      ("orig" "protein C" "UP:P02810" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("protein C"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C87607" :NAME "protein C"))
                                      ("orig" "progesterone" "UP:P06401"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("progesterone"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:17026" :NAME "progesterone"))
                                      ("orig" "salts" "CHEBI:24866" :OLD-CAT
                                       MOLECULE :NEW-CAT DRUG
                                       ("salts" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C29974" :NAME
                                        "sodium chloride"))
                                      ("orig" "rotenone" "UP:P03886" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("rotenone"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:28201" :NAME "rotenone"))
                                      ("orig" "rif" "UP:Q9HBH0" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("rif" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C117289" :NAME
                                        "realgar-indigo naturalis formulation"))
                                      ("orig" "resveratrol" "UP:P16083"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("resveratrol"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1215" :NAME "resveratrol"))
                                      ("orig" "tam" "UP:A1TP97" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("tam" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C855" :NAME "tamoxifen"))
                                      ("orig" "wortmannin" "UP:Q13535" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("wortmannin"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1277" :NAME "wortmannin"))
                                      ("orig" "trypsin" "trypsin" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("trypsin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C84232" :NAME "trypsin"))
                                      ("orig" "demethylation" "GO:0070988"
                                       :OLD-CAT DE-METHYLATION :NEW-CAT
                                       POST-TRANSLATIONAL-MODIFICATION
                                       ("demethylation"
                                        "ONT:POST-TRANSLATIONAL-MODIFICATION"
                                        :ID "GO:0006482" :NAME
                                        "protein demethylation"))
                                      ("orig" "demethylating" "GO:0070988"
                                       :OLD-CAT DE-METHYLATION :NEW-CAT
                                       POST-TRANSLATIONAL-MODIFICATION
                                       ("demethylating"
                                        "ONT:POST-TRANSLATIONAL-MODIFICATION"
                                        :ID "GO:0006482" :NAME
                                        "protein demethylation"))
                                      ("orig" "demethylated" "GO:0070988"
                                       :OLD-CAT DE-METHYLATION :NEW-CAT
                                       POST-TRANSLATIONAL-MODIFICATION
                                       ("demethylated"
                                        "ONT:POST-TRANSLATIONAL-MODIFICATION"
                                        :ID "GO:0006482" :NAME
                                        "protein demethylation"))
                                      ("orig" "demethylate" "GO:0070988"
                                       :OLD-CAT DE-METHYLATION :NEW-CAT
                                       POST-TRANSLATIONAL-MODIFICATION
                                       ("demethylate"
                                        "ONT:POST-TRANSLATIONAL-MODIFICATION"
                                        :ID "GO:0006482" :NAME
                                        "protein demethylation"))
                                      ("downcase" "tau" "UP:Q5TCY1" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-METHOD
                                       ("Tau" "ONT:PROCEDURE" :ID "NCIT:C67052"
                                        :NAME "affy tau"))
                                      ("upcase" "RACE" "UP:Q9UHK6" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-METHOD
                                       ("Race" "ONT:PROCESS" :ID "EFO:0004182"
                                        :NAME
                                        "Rapid Amplification of cDNA Ends"))
                                      ("orig" "GTPase" "UP:P20936" :OLD-CAT
                                       ENZYME :NEW-CAT PROTEIN
                                       ("GTPase" "ONT:PROTEIN" :ID
                                        "NCIT:C16650" :NAME "GTPase"))
                                      ("downcase" "pccs" "EFO:0000239" :OLD-CAT
                                       DISEASE :NEW-CAT PROTEIN
                                       ("PCCs" "ONT:PROTEIN" :ID "UP:Q56VR3"
                                        :NAME
                                        "Venom prothrombin activator pseutarin-C catalytic subunit"))
                                      ("orig" "neurotrophin" "PR:000021998"
                                       :OLD-CAT PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("neurotrophin" "ONT:PROTEIN" :ID
                                        "NCIT:C20391" :NAME
                                        "neurotrophic factor"))
                                      ("downcase" "flotillin" "UP:O75955"
                                       :OLD-CAT PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Flotillin" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:00330" :NAME
                                        "flotillin subfamily"))
                                      ("downcase" "fcγrii" "UP:P31994" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("FcγRII" "ONT:PROTEIN-FAMILY" :ID
                                        "NCIT:C18308" :NAME
                                        "Fc-gamma receptor-II"))
                                      ("downcase" "hdaci" "CHEBI:61115"
                                       :OLD-CAT MOLECULE :NEW-CAT
                                       PROTEIN-FAMILY
                                       ("HDACi" "ONT:PROTEIN-FAMILY" :ID
                                        "BE:HDAC_I" :NAME "HDAC-I"))
                                      ("orig" "MKK" "UP:Q90321" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("MKK" "ONT:PROTEIN-FAMILY" :ID
                                        "NCIT:C105947" :NAME
                                        "mitogen-activated protein kinase kinase"))
                                      ("orig" "MHC" "UP:P05661" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("MHC" "ONT:PROTEIN-FAMILY" :ID
                                        "NCIT:C121977" :NAME "HLA complex"))
                                      ("orig" "NCoA" "UP:Q9Y6Q9" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("NCoA" "ONT:PROTEIN-FAMILY" :ID
                                        "BE:NCOA" :NAME "NCOA"))
                                      ("downcase" "pmps" "CHEBI:90766" :OLD-CAT
                                       MOLECULE :NEW-CAT PROTEIN-FAMILY
                                       ("PMPs" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF03901.15" :NAME
                                        "glyco transf 22"))
                                      ("downcase" "rtks" "UP:P07947" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("RTKs" "ONT:PROTEIN-FAMILY" :ID
                                        "BE:RTK" :NAME "RTK"))
                                      ("downcase" "sre" "UP:Q16670" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("SRE" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF03125.16" :NAME "sre"))
                                      ("upcase" "SOS" "UP:P26675" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Sos" "ONT:PROTEIN-FAMILY" :ID "BE:SOS"
                                        :NAME "SOS"))
                                      ("downcase" "sigma" "UP:Q99720" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Sigma" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:01675" :NAME "sigma family"))
                                      ("downcase" "tir" "UP:Q8IUC6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Tir" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF01582.18" :NAME "TIR"))
                                      ("orig" "annexin" "UP:A2BHN0" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("annexin" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:00201" :NAME "annexin family"))
                                      ("upcase" "COR" "UP:P17651" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("cor" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF16095.3" :NAME "COR"))
                                      ("orig" "claudins" "UP:B0V349" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("claudins" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:00631" :NAME "claudin family"))
                                      ("orig" "claudin" "UP:B0V349" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("claudin" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:00631" :NAME "claudin family"))
                                      ("orig" "clathrin" "UP:Q00610" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("clathrin" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF00637.18" :NAME "clathrin"))
                                      ("orig" "caveolin" "UP:P56539" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("caveolin" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:00489" :NAME "caveolin family"))
                                      ("orig" "calponin" "UP:Q15417" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("calponin" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:00442" :NAME "calponin family"))
                                      ("downcase" "dsh" "UP:P51142" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("dSH" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:01014" :NAME "DSH family"))
                                      ("orig" "crystallin" "UP:P07315" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("crystallin" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF00525.16" :NAME "crystallin"))
                                      ("orig" "ephrin" "UP:P29317" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("ephrin" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:01118" :NAME "ephrin family"))
                                      ("upcase" "HIF" "UP:Q9NWT6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("hif" "ONT:PROTEIN-FAMILY" :ID
                                        "NCIT:C113839" :NAME
                                        "hypoxia inducible factor family"))
                                      ("upcase" "PFN" "UP:Q8I2J4" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("pFn" "ONT:PROTEIN-FAMILY" :ID "BE:PFN"
                                        :NAME "PFN"))
                                      ("orig" "prothymosin" "UP:P06454"
                                       :OLD-CAT PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("prothymosin" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF03247.12" :NAME "prothymosin"))
                                      ("downcase" "snf" "UP:P43332" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("sNF" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF00209.16" :NAME "SNF"))
                                      ("orig" "spectrin" "UP:P13395" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("spectrin" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:03800" :NAME "spectrin family"))
                                      ("orig" "troponin" "UP:Q27371" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("troponin" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF00992.18" :NAME "troponin"))
                                      ("downcase" "snrnas" "UP:Q96AZ6" :OLD-CAT
                                       PROTEIN :NEW-CAT RNA
                                       ("snRNAs" "ONT:RNA" :ID "NCIT:C815"
                                        :NAME "small nuclear RNA"))
                                      ("downcase" "mmtv" "UP:A0FKN4" :OLD-CAT
                                       PROTEIN :NEW-CAT VIRUS
                                       ("MMTV" "ONT:VIRUS" :ID "NCIT:C14235"
                                        :NAME "mouse mammary tumor virus"))
                                      ("downcase" "kda" "UP:Q9UMD9" :OLD-CAT
                                       PROTEIN :NEW-CAT UNIT-OF-MEASURE
                                       ("kDa" "ONT:WEIGHT-UNIT" :ID
                                        "UO:0000222" :NAME "kilodalton"))
                                      ("hyphens" "acetylation" "GO:0006473"
                                       :OLD-CAT POST-TRANSLATIONAL-MODIFICATION
                                       :NEW-CAT BIO-PROCESS
                                       ("acetyla-tion" "ONT:BIOLOGICAL-PROCESS"
                                        :ID "NCIT:C16255" :NAME "acetylation"))
                                      ("hyphens" "apoptosis" "GO:0006915"
                                       :OLD-CAT CELLULAR-PROCESS :NEW-CAT
                                       BIO-PROCESS
                                       ("apopto-sis" "ONT:BIOLOGICAL-PROCESS"
                                        :ID "NCIT:C17557" :NAME "apoptosis"))
                                      ("upcase" "FLK-1" "UP:P35968" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Flk-1" "ONT:CELL-LINE" :ID "CVCL:M788"
                                        :NAME "FLK-1"))
                                      ("hyphens" "NF1" "UP:P21359" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("NF-1" "ONT:CELL-LINE" :ID "CVCL:3556"
                                        :NAME "NF-1"))
                                      ("hyphens" "phosphatidylserine"
                                       "UP:Q6NYC1" :OLD-CAT PROTEIN :NEW-CAT
                                       MOLECULE
                                       ("phosphatidyl-serine" "ONT:CHEMICAL"
                                        :ID "CHEBI:18303" :NAME
                                        "phosphatidyl-L-serine"))
                                      ("hyphens" "polyproline" "UP:Q15390"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("poly-proline" "ONT:CHEMICAL" :ID
                                        "CHEBI:8321" :NAME "Polyproline"))
                                      ("orig" "apolipoprotein"
                                       "XFAM:PF01442.16" :OLD-CAT
                                       PROTEIN-DOMAIN :NEW-CAT MOLECULE
                                       ("apolipoprotein" "ONT:CHEMICAL" :ID
                                        "CHEBI:39015" :NAME "apolipoprotein"))
                                      ("orig" "FOXC1" "PR:000007607" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("FOXC1" "ONT:GENE" :ID "HGNC:3800"
                                        :NAME "forkhead box C1"))
                                      ("orig" "PTGES" "PR:000013421" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("PTGES" "ONT:GENE" :ID "HGNC:9599"
                                        :NAME "prostaglandin E synthase"))
                                      ("hyphens" "CHK2" "UP:O96017" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("CHK-2" "ONT:GENE-PROTEIN" :ID
                                        "FA:03073" :NAME "CHK2 subfamily"))
                                      ("upcase" "MAD2" "UP:Q13257" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Mad2" "ONT:GENE-PROTEIN" :ID
                                        "FA:02140" :NAME "MAD2 family"))
                                      ("downcase" "smc1" "UP:Q14683" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Smc1" "ONT:GENE-PROTEIN" :ID
                                        "FA:03686" :NAME "SMC1 subfamily"))
                                      ("hyphens" "HSP90" "XFAM:PF02518"
                                       :OLD-CAT PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("HSP-90" "ONT:GENE-PROTEIN" :ID
                                        "UP:Q4UDU8" :NAME
                                        "Heat shock protein 90"))
                                      ("downcase" "slps" "XFAM:PF03843.11"
                                       :OLD-CAT PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("SLPs" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C128858" :NAME "C4A"))
                                      ("hyphens" "Par6" "FA:02654" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Par-6" "ONT:GENE-PROTEIN" :ID
                                        "UP:Q9NPB6" :NAME
                                        "Partitioning defective 6 homolog alpha"))
                                      ("orig" "mPGES" "PR:000013421" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("mPGES" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C129435" :NAME
                                        "microsomal prostaglandin E synthase family"))
                                      ("downcase" "cdt1" "FA:00547" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("CDT1" "ONT:GENE-PROTEIN" :ID
                                        "HGNC:24576" :NAME
                                        "chromatin licensing and DNA replication factor 1"))
                                      ("orig" "CaM-K" "FA:03072" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("CaM-K" "ONT:GENE-PROTEIN" :ID
                                        "BE:CAMK" :NAME "CAMK"))
                                      ("downcase" "kip1" "XFAM:PF07765.10"
                                       :OLD-CAT PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Kip1" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C49509" :NAME "CDKN1B"))
                                      ("orig" "miRs" "NCIT:C25966" :OLD-CAT
                                       MICRO-RNA :NEW-CAT PROTEIN
                                       ("miRs" "ONT:GENE-PROTEIN" :ID
                                        "UP:Q93105" :NAME
                                        "Insulin-like receptor"))
                                      ("hyphens-dc" "hhv8" "NCIT:C14327"
                                       :OLD-CAT VIRUS :NEW-CAT DISEASE
                                       ("HHV-8"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0002612" :NAME
                                        "human herpesvirus 8 infection"))
                                      ("downcase" "lcis" "XFAM:PF12197.6"
                                       :OLD-CAT PROTEIN-DOMAIN :NEW-CAT DISEASE
                                       ("LCIS"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C4018" :NAME
                                        "lobular carcinoma in situ of the breast"))
                                      ("hyphens" "phosphoinositide" "UP:Q6ZUJ8"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("phosphoino-sitide" "ONT:MOLECULE" :ID
                                        "CHEBI:18179" :NAME
                                        "phosphoinositide"))
                                      ("hyphens" "bFGF" "UP:P09038" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("b-FGF" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C1674" :NAME
                                        "therapeutic fibroblast growth factor-2"))
                                      ("orig" "CYPs" "XFAM:PF00067" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("CYPs" "ONT:PROTEIN" :ID "NCIT:C16484"
                                        :NAME "cytochrome-P450"))))

(defparameter *NO-ID-REDEF* '(("orig" "NSCLC"
                               ("NSCLC" "ONT:CANCER" :ID "EFO:0003060" :NAME
                                "non-small cell lung carcinoma"));done
                              ("orig" "adenocarcinoma"
                               ("adenocarcinoma" "ONT:CANCER" :ID "EFO:0000228"
                                :NAME "adenocarcinoma"));done
                              ("orig" "carcinoma"
                               ("carcinoma" "ONT:CANCER" :ID "EFO:0000313"
                                :NAME "carcinoma"));done
                              ("orig" "melanoma"
                               ("melanoma" "ONT:CANCER" :ID "EFO:0000756" :NAME
                                "melanoma"))
                              ("orig" "fibroblast"
                               ("fibroblast" "ONT:CELL" :ID "CO:0000057" :NAME
                                "fibroblast"));done
                              ("orig" "leukocyte"
                               ("leukocyte" "ONT:CELL" :ID "BTO:0000751" :NAME
                                "leukocyte"));done
                              ("orig" "keratinocyte"
                               ("keratinocyte" "ONT:CELL" :ID "BTO:0000667"
                                :NAME "keratinocyte"));done
                              ("orig" "neuron"
                               ("neuron" "ONT:CELL" :ID "CO:0000540" :NAME
                                "neuron"));done
                              ("orig" "HEK293T"
                               ("HEK293T" "ONT:CELL-LINE" :ID "EFO:0001184"
                                :NAME "HEK293T"))
                              ("downcase" "hela"
                               ("Hela" "ONT:CELL-LINE" :ID "CVCL:0030" :NAME
                                "HeLa"))
                              ("downcase" "hek293"
                               ("Hek293" "ONT:CELL-LINE" :ID "EFO:0001182"
                                :NAME "HEK293"))
                              ("orig" "MDCK"
                               ("MDCK" "ONT:CELL-LINE" :ID "CVCL:0422" :NAME
                                "MDCK"))
                              ("orig" "PC12"
                               ("PC12" "ONT:CELL-LINE" :ID "CVCL:S979" :NAME
                                "PC-12"))
                              ("orig" "agonist"
                               ("agonist" "ONT:CHEMICAL" :ID "CHEBI:48705"
                                :NAME "agonist"))
                              ("orig" "lactate"
                               ("lactate" "ONT:CHEMICAL" :ID "CHEBI:24996"
                                :NAME "lactate"))
                              ("orig" "mitogen"
                               ("mitogen" "ONT:CHEMICAL" :ID "CHEBI:52290"
                                :NAME "mitogen"))
                              ("orig" "IAPs"
                               ("IAPs" "ONT:GENE-PROTEIN" :ID "FA:01806" :NAME
                                "IAP family"))
                              ("orig" "IAP"
                               ("IAP" "ONT:GENE-PROTEIN" :ID "FA:01806" :NAME
                                "IAP family"))
                              ("orig" "arrestins"
                               ("arrestins" "ONT:GENE-PROTEIN" :ID "FA:00266"
                                :NAME "arrestin family"))
                              ("orig" "arrestin"
                               ("arrestin" "ONT:GENE-PROTEIN" :ID "FA:00266"
                                :NAME "arrestin family"))
                              ("downcase" "sip"
                               ("siP" "ONT:GENE-PROTEIN" :ID "XFAM:PF04954.11"
                                :NAME "SIP"))
                              ("orig" "pmols"
                               ("pmols" "ONT:MEASURE-UNIT" :ID "UO:0000042"
                                :NAME "picomole"))
                              ("downcase" "pmol"
                               ("pmoL" "ONT:MEASURE-UNIT" :ID "UO:0000042"
                                :NAME "picomole"))
                              ("orig" "hyperplasia"
                               ("hyperplasia"
                                "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID
                                "NCIT:C3113" :NAME "hyperplasia"))
                              ("orig" "neurofibromatosis"
                               ("neurofibromatosis"
                                "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID
                                "NCIT:C6727" :NAME "neurofibromatosis"))
                              ("orig" "microarray"
                               ("microarray" "ONT:MEDICAL-INSTRUMENT" :ID
                                "EFO:0002698" :NAME "array"))
                              ("orig" "lipid"
                               ("lipid" "ONT:MOLECULE" :ID "CHEBI:18059" :NAME
                                "lipid"))
                              ("orig" "peptide"
                               ("peptide" "ONT:MOLECULE" :ID "CHEBI:16670"
                                :NAME "peptide"))
                              ("orig" "polysaccharide"
                               ("polysaccharide" "ONT:MOLECULE" :ID
                                "CHEBI:18154" :NAME "polysaccharide"))
                              ("hyphens-dc" "gdc0941"
                               ("GDC-0941" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C532162" :NAME
                                "2-(1H-indazol-4-yl)-6-(4-methanesulfonylpiperazin-1-ylmethyl)-4-morpholin-4-ylthieno(3,2-d)pyrimidine"))
                              ("downcase" "ganetespib"
                               ("Ganetespib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C77872" :NAME
                                "hsp90 inhibitor STA-9090"))
                              ("downcase" "gsk690693"
                               ("GSK690693" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C528328" :NAME "GSK690693"))
                              ("downcase" "gsk461364"
                               ("GSK461364" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C70948" :NAME
                                "polo-like kinase 1 inhibitor GSK461364"))
                              ("downcase" "gsk2118436"
                               ("GSK2118436" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C82386" :NAME
                                "BRAF inhibitor GSK2118436"))
                              ("downcase" "gsk1120212"
                               ("GSK1120212" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C77908" :NAME
                                "MEK inhibitor GSK1120212"))
                              ("downcase" "gdc0941"
                               ("GDC0941" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C532162" :NAME
                                "2-(1H-indazol-4-yl)-6-(4-methanesulfonylpiperazin-1-ylmethyl)-4-morpholin-4-ylthieno(3,2-d)pyrimidine"))
                              ("downcase" "gemtuzumab"
                               ("Gemtuzumab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C406061" :NAME "gemtuzumab"))
                              ("downcase" "pd98059"
                               ("PD98059" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1625" :NAME "PD-98059"))
                              ("downcase" "pd325901"
                               ("PD325901" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C506614" :NAME "PD 0325901"))
                              ("downcase" "pd184352"
                               ("PD184352" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C2670" :NAME "CI-1040"))
                              ("downcase" "pd0332991"
                               ("PD0332991" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C49176" :NAME "PD-0332991"))
                              ("downcase" "plx4720"
                               ("PLX4720" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "CHEBI:90295" :NAME "PLX-4720"))
                              ("downcase" "rg7204"
                               ("RG7204" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C64768" :NAME "PLX4032"))
                              ("downcase" "saha"
                               ("SAHA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1796" :NAME
                                "suberoylanilide hydroxamic acid"))
                              ("downcase" "rituximab"
                               ("Rituximab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1702" :NAME "rituximab"))
                              ("downcase" "rilotumumab"
                               ("Rilotumumab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C67079" :NAME
                                "anti-HGF monoclonal antibody AMG 102"))
                              ("downcase" "sb203580"
                               ("SB203580" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C093642" :NAME "SB 203580"))
                              ("orig" "bevacizumab"
                               ("bevacizumab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C2039" :NAME "bevacizumab"))
                              ("orig" "antiestrogen"
                               ("antiestrogen" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                :ID "CHEBI:50751" :NAME "anti-estrogen"))
                              ("orig" "anisomycin"
                               ("anisomycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C95312" :NAME "anisomycin"))
                              ("orig" "alectinib"
                               ("alectinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "CHEBI:90936" :NAME "alectinib"))
                              ("orig" "adriamycin"
                               ("adriamycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1326" :NAME
                                "doxorubicin hydrochloride"))
                              ("orig" "cobimetinib"
                               ("cobimetinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "CHEBI:90851" :NAME "cobimetinib"))
                              ("orig" "cisplatin"
                               ("cisplatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C376" :NAME "cisplatin"))
                              ("orig" "cetuximab"
                               ("cetuximab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1723" :NAME "cetuximab"))
                              ("orig" "celecoxib"
                               ("celecoxib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1728" :NAME "celecoxib"))
                              ("orig" "capecitabine"
                               ("capecitabine" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                :ID "NCIT:C1794" :NAME "capecitabine"))
                              ("orig" "bortezomib"
                               ("bortezomib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1851" :NAME "bortezomib"))
                              ("orig" "docetaxel"
                               ("docetaxel" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1526" :NAME "docetaxel"))
                              ("orig" "dasatinib"
                               ("dasatinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C488369" :NAME "dasatinib"))
                              ("orig" "dabrafenib"
                               ("dabrafenib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C561627" :NAME "dabrafenib"))
                              ("orig" "crizotinib"
                               ("crizotinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C551994" :NAME "crizotinib"))
                              ("orig" "gefitinib"
                               ("gefitinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1855" :NAME "gefitinib"))
                              ("orig" "everolimus"
                               ("everolimus" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C48387" :NAME "everolimus"))
                              ("orig" "erlotinib"
                               ("erlotinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C400278" :NAME "erlotinib"))
                              ("orig" "iniparib"
                               ("iniparib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C090712" :NAME "iniparib"))
                              ("orig" "imatinib"
                               ("imatinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C097613" :NAME "imatinib"))
                              ("downcase" "mabs"
                               ("mAbs" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C20401" :NAME "monoclonal antibody"))
                              ("downcase" "mab"
                               ("mAb" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C20401" :NAME "monoclonal antibody"))
                              ("orig" "lapatinib"
                               ("lapatinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C490728" :NAME "lapatinib"))
                              ("orig" "irinotecan"
                               ("irinotecan" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C051890" :NAME "irinotecan"))
                              ("orig" "nocodazole"
                               ("nocodazole" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C75228" :NAME "nocodazole"))
                              ("orig" "nimesulide"
                               ("nimesulide" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C29842" :NAME "nimesulide"))
                              ("orig" "oxaliplatin"
                               ("oxaliplatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1181" :NAME "oxaliplatin"))
                              ("orig" "olaparib"
                               ("olaparib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C531550" :NAME "olaparib"))
                              ("orig" "pertuzumab"
                               ("pertuzumab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C38692" :NAME "pertuzumab"))
                              ("orig" "pazopanib"
                               ("pazopanib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C516667" :NAME "pazopanib"))
                              ("orig" "panitumumab"
                               ("panitumumab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1857" :NAME
                                "monoclonal antibody ABX-EGF"))
                              ("orig" "paclitaxel"
                               ("paclitaxel" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1411" :NAME "paclitaxel"))
                              ("orig" "ponatinib"
                               ("ponatinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C95777" :NAME "ponatinib"))
                              ("orig" "seliciclib"
                               ("seliciclib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C62783" :NAME "seliciclib"))
                              ("orig" "saracatinib"
                               ("saracatinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C515233" :NAME "saracatinib"))
                              ("orig" "ruxolitinib"
                               ("ruxolitinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "CHEBI:66919" :NAME "ruxolitinib"))
                              ("orig" "rapamycin"
                               ("rapamycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1212" :NAME "sirolimus"))
                              ("orig" "temozolomide"
                               ("temozolomide" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                :ID "NCIT:C1244" :NAME "temozolomide"))
                              ("orig" "sunitinib"
                               ("sunitinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C71622" :NAME "sunitinib"))
                              ("orig" "sorafenib"
                               ("sorafenib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C61948" :NAME "sorafenib"))
                              ("orig" "vemurafenib"
                               ("vemurafenib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "CHEBI:63637" :NAME "vemurafenib"))
                              ("orig" "trastuzumab"
                               ("trastuzumab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1647" :NAME "trastuzumab"))
                              ("orig" "trametinib"
                               ("trametinib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C560077" :NAME "trametinib"))
                              ("orig" "monoubiquitination"
                               ("monoubiquitination"
                                "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                "GO:0006513" :NAME
                                "protein monoubiquitination"))
                              ("orig" "methylation"
                               ("methylation"
                                "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                "GO:0006479" :NAME "protein methylation"))
                              ("orig" "sumoylation"
                               ("sumoylation"
                                "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                "GO:0016925" :NAME "protein sumoylation"));done
                              ("orig" "ubiquitination"
                               ("ubiquitination"
                                "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                "GO:0016567" :NAME "protein ubiquitination"))
                              ("orig" "SDS-PAGE"
                               ("SDS-PAGE" "ONT:PROCEDURE" :ID "NCIT:C18150"
                                :NAME
                                "sodium dodecylsulfate-polyacrylamide gel electrophoresis"))
                              ("orig" "HPLC"
                               ("HPLC" "ONT:PROCEDURE" :ID "NCIT:C16434" :NAME
                                "high performance-liquid chromatography"))
                              ("downcase" "modeling"
                               ("Modeling" "ONT:PROCEDURE" :ID "NCIT:C16063"
                                :NAME "modeling"))
                              ("downcase" "mode"
                               ("Mode" "ONT:PROCEDURE" :ID "NCIT:C53320" :NAME
                                "statistical mode"))
                              ("downcase" "method"
                               ("Method" "ONT:PROCEDURE" :ID "NCIT:C16847"
                                :NAME "techniques"))
                              ("downcase" "means"
                               ("Means" "ONT:PROCEDURE" :ID "NCIT:C53319" :NAME
                                "statistical mean"))
                              ("orig" "mutagenesis"
                               ("mutagenesis" "ONT:PROCEDURE" :ID "NCIT:C17376"
                                :NAME "mutagenesis"))
                              ("orig" "spectroscopy"
                               ("spectroscopy" "ONT:PROCEDURE" :ID
                                "NCIT:C17155" :NAME "spectroscopy"))
                              ("orig" "antibody"
                               ("antibody" "ONT:PROTEIN" :ID "NCIT:C16295"
                                :NAME "antibody"))
                              ("orig" "receptor"
                               ("receptor" "ONT:PROTEIN" :ID "GO:0004872" :NAME
                                "receptor activity"))
                              ("orig" "GPCRs"
                               ("GPCRs" "ONT:PROTEIN-FAMILY" :ID "BE:GPCR"
                                :NAME "GPCR"))
                              ("orig" "MAP2K"
                               ("MAP2K" "ONT:PROTEIN-FAMILY" :ID "BE:MAP2K"
                                :NAME "MAP2K"))
                              ("downcase" "mek"
                               ("Mek" "ONT:PROTEIN-FAMILY" :ID "BE:MEK" :NAME
                                "MEK"))
                              ("downcase" "smads"
                               ("Smads" "ONT:PROTEIN-FAMILY" :ID "BE:SMAD"
                                :NAME "SMAD"))
                              ("downcase" "smad"
                               ("Smad" "ONT:PROTEIN-FAMILY" :ID "BE:SMAD" :NAME
                                "SMAD"))
                              ("orig" "Wnts"
                               ("Wnts" "ONT:PROTEIN-FAMILY" :ID "FA:04686"
                                :NAME "wnt family"))
                              ("orig" "Wnt"
                               ("Wnt" "ONT:PROTEIN-FAMILY" :ID "FA:04686" :NAME
                                "wnt family"))
                              ("orig" "catenin"
                               ("catenin" "ONT:PROTEIN-FAMILY" :ID
                                "NCIT:C118480" :NAME "catenin family protein"))
                              ("orig" "exportin"
                               ("exportin" "ONT:PROTEIN-FAMILY" :ID "FA:01186"
                                :NAME "exportin family"))
                              ("orig" "importins"
                               ("importins" "ONT:PROTEIN-FAMILY" :ID
                                "XFAM:PF01749.18" :NAME "IBB"))
                              ("orig" "importin"
                               ("importin" "ONT:PROTEIN-FAMILY" :ID
                                "XFAM:PF01749.18" :NAME "IBB"))
                              ("orig" "laminin"
                               ("laminin" "ONT:PROTEIN-FAMILY" :ID
                                "NCIT:C16778" :NAME "laminin"))
                              ("orig" "myosin"
                               ("myosin" "ONT:PROTEIN-FAMILY" :ID "FA:05287"
                                :NAME "myosin family"))
                              ("orig" "dalton"
                               ("dalton" "ONT:WEIGHT-UNIT" :ID "UO:0000221"
                                :NAME "dalton"))
                              ("orig" "astrocyte"
                               ("astrocyte" "ONT:CELL" :ID "BTO:0000099" :NAME
                                "astrocyte"));done
                              ("hyphens-dc" "saos2"
                               ("Sa-OS-2" "ONT:CELL-LINE" :ID "CVCL:0548" :NAME
                                "SaOS-2"))
                              ("hyphens" "peptide"
                               ("pep-tide" "ONT:MOLECULE" :ID "CHEBI:16670"
                                :NAME "peptide"))
                              ("hyphens-dc" "mab"
                               ("M-Ab" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C20401" :NAME "monoclonal antibody"))))

(defparameter *NAMECAT-ID-MISMATCHES* '((CELL-TYPE LEUKOCYTE NIL :NEWUID
                                         "BTO:0000751" :WORD "PMNC")
                                        (CELL-TYPE LEUKOCYTE NIL :NEWUID
                                         "BTO:0000751" :WORD "leucocyte");done
                                        (CELLULAR-LOCATION GOLGI-APPARATUS
                                         "GO:0005794" :NEWUID "UP:SL-0132"
                                         :WORD "golgi")
                                        (CELLULAR-LOCATION DENDRITIC-SPINE
                                         "can't get rule" :NEWUID "UP:SL-0284"
                                         :WORD "spine")
                                        (CELLULAR-LOCATION LAMELLIPODIUM
                                         "can't get rule" :NEWUID "UP:SL-0291"
                                         :WORD "veil")
                                        (ORGANISM MAMMAL NIL :NEWUID
                                         "NCIT:C14234" :WORD "mammalians")
                                        (CELL-TYPE NEURON NIL :NEWUID
                                         "CO:0000540" :WORD "neurone");done
                                        (CELL-TYPE NEURON NIL :NEWUID
                                         "CO:0000540" :WORD "neurones");done
                                        (BIO-METHOD RT-PCR NIL :NEWUID
                                         "NCIT:C18136" :WORD "RTPCR")))

(defparameter *NO-RULE-REDEF* 'NIL)

(defparameter *NAME-ID-MISMATCHES* '((BIO-PROCESS "catabolic process"
                                      "GO:0009056" :NEWUID "NCIT:C41544" :WORD
                                      "catabolic")
                                     (CELL-TYPE "hematopoietic stem cell"
                                      "CO:0000037" :NEWUID "BTO:0000725" :WORD
                                      "Hsc")
                                     (CELL-TYPE "hematopoietic stem cell"
                                      "CO:0000037" :NEWUID "BTO:0000725" :WORD
                                      "HSCs")
                                     (CELL-TYPE "oocyte" "BTO:0000964" :NEWUID
                                      "CO:0000023" :WORD "oogonia")
                                     (CELL-LINE "GTL-16" "EFO:0006578" :NEWUID
                                      "CVCL:7668" :WORD "GTL16")
                                     (CELL-LINE "HT-29" "EFO:0001193" :NEWUID
                                      "CVCL:0320" :WORD "HT29")
                                     (CELL-LINE "RERF-LC-MS" "EFO:0002852"
                                      :NEWUID "CVCL:1655" :WORD "LCMS")
                                     (CELL-LINE "KMS-12-BM" "CVCL:1334" :NEWUID
                                      "EFO:0006612" :WORD "KMS12BM")
                                     (CELL-LINE "MDA-MB-468" NIL :NEWUID
                                      "CVCL:0419" :WORD "MB468")
                                     (CELL-LINE "NCI-H460" "EFO:0003044"
                                      :NEWUID "CVCL:0459" :WORD "NCIH460")
                                     (CELL-LINE "NCI-H1299" "EFO:0003043"
                                      :NEWUID "CVCL:0060" :WORD "NCIH1299")
                                     (CELL-LINE "MSTO-211H" "EFO:0002839"
                                      :NEWUID "CVCL:1430" :WORD "MSTO211H")
                                     (CELL-LINE "OPM-2" "EFO:0006716" :NEWUID
                                      "CVCL:1625" :WORD "OPM2")
                                     (CELL-LINE "PA-1" "EFO:0006465" :NEWUID
                                      "CVCL:0479" :WORD "PA1")
                                     (CELL-LINE "OVCA420" "EFO:0006720" :NEWUID
                                      "CVCL:3935" :WORD "OVCAR420")
                                     (CELL-LINE "RPMI-7951" NIL :NEWUID
                                      "CVCL:1666" :WORD "RPMI7951")
                                     (CELL-LINE "SUM149PT" "EFO:0001240"
                                      :NEWUID "CVCL:3422" :WORD "SUM149")
                                     (CELL-LINE "SU-DHL-4" "EFO:0006492"
                                      :NEWUID "CVCL:0539" :WORD "SUDHL4")
                                     (CELL-LINE "SNU-638" "EFO:0006758" :NEWUID
                                      "CVCL:0102" :WORD "SNU638")
                                     (CELL-LINE "SK-MEL-5" "NCIT:C117190"
                                      :NEWUID "CVCL:0527" :WORD "SkMel5")
                                     (MOLECULE "agarose" "PCID:11966311"
                                      :NEWUID "CHEBI:2511" :WORD "sepharose")
                                     (ORGANISM "organisms" NIL :NEWUID
                                      "NCIT:C14250" :WORD "taxa")
                                     (DRUG "ethionamide" "NCIT:C47522" :NEWUID
                                      "CHEBI:4885" :WORD "ETH")
                                     (DRUG "lestaurtinib" NIL :NEWUID
                                      "NCIT:C48402" :WORD "CEP-701")
                                     (DRUG "dacarbazine" NIL :NEWUID
                                      "NCIT:C411" :WORD "decarbazine")
                                     (DRUG "ziprasidone" "NCIT:C47788" :NEWUID
                                      "MESH:C092292" :WORD "ziprazidone")
                                     (DRUG "ponatinib" NIL :NEWUID
                                      "MESH:C545373" :WORD "Iclusig")
                                     (DRUG "ceritinib" NIL :NEWUID
                                      "NCIT:C115112" :WORD "LDK378")
                                     (DRUG "tocilizumab" NIL :NEWUID
                                      "NCIT:C84217" :WORD "MRA")
                                     (DRUG "pertuzumab" NIL :NEWUID
                                      "MESH:C485206" :WORD "Omnitarg")
                                     (DRUG "erlotinib" NIL :NEWUID "NCIT:C2693"
                                      :WORD "OSI774")
                                     (DRUG "pertuzumab" NIL :NEWUID
                                      "NCIT:C38692" :WORD "Perjeta")
                                     (DRUG "bortezomib" NIL :NEWUID
                                      "NCIT:C1851" :WORD "PS341")
                                     (DRUG "ribavirin" "NCIT:C807" :NEWUID
                                      "CHEBI:63580" :WORD "RBV")
                                     (DRUG "everolimus" NIL :NEWUID
                                      "NCIT:C48387" :WORD "RAD001")
                                     (DRUG "abciximab" NIL :NEWUID
                                      "NCIT:C76128" :WORD "Reopro")
                                     (DRUG "semaxanib" NIL :NEWUID "NCIT:C1831"
                                      :WORD "SU5416")
                                     (DRUG "imatinib" NIL :NEWUID "NCIT:C1687"
                                      :WORD "STI571")
                                     (DRUG "imatinib" NIL :NEWUID
                                      "MESH:C097613" :WORD "ST1571")
                                     (DRUG "dinaciclib" NIL :NEWUID
                                      "MESH:C553669" :WORD "SCH727965")
                                     (DRUG "temozolomide" NIL :NEWUID
                                      "CHEBI:72564" :WORD "TMZ")
                                     (DRUG "bevacizumab" NIL :NEWUID
                                      "NCIT:C2039" :WORD "avastin")
                                     (DRUG "antipsychotic agent" "CHEBI:35476"
                                      :NEWUID "NCIT:C29710" :WORD
                                      "antipsychotic")
                                     (DRUG "anastrozole" "NCIT:C1607" :NEWUID
                                      "MESH:C090450" :WORD "anastrazole")
                                     (DRUG "cisplatin" NIL :NEWUID "NCIT:C376"
                                      :WORD "cDDP")
                                     (DRUG "trastuzumab" NIL :NEWUID
                                      "NCIT:C1647" :WORD "herceptin")
                                     (DRUG "nevirapine" "NCIT:C29277" :NEWUID
                                      "CHEBI:63613" :WORD "nEV")
                                     (DRUG "radiosensitizing agent" "NCIT:C798"
                                      :NEWUID "CHEBI:132992" :WORD
                                      "radiosensitizers")
                                     (DRUG "cisplatin" NIL :NEWUID "NCIT:C376"
                                      :WORD "platinol")
                                     (DRUG "docetaxel" NIL :NEWUID "NCIT:C1526"
                                      :WORD "taxotere")
                                     (DRUG "paclitaxel" NIL :NEWUID
                                      "NCIT:C1411" :WORD "taxol")
                                     (UNIT-OF-MEASURE "dalton" NIL :NEWUID
                                      "UO:0000221" :WORD "amu")
                                     (CELL-TYPE "basal cell" "CO:0000646"
                                      :NEWUID "BTO:0000939" :WORD "basal-cell")
                                     (CELL-LINE "IMR-32" "EFO:0001195" :NEWUID
                                      "CVCL:0346" :WORD "IMR32")
                                     (CELL-LINE "SK-N-AS" "CVCL:1700" :NEWUID
                                      "EFO:0002859" :WORD "SK–NAS")
                                     (CELL-LINE "ARPE-19" "EFO:0006271" :NEWUID
                                      "CVCL:0145" :WORD "ARPE19")
                                     (CELL-LINE "D04" NIL :NEWUID "CVCL:H604"
                                      :WORD "DO4")
                                     (CELL-LINE "LS174T" "EFO:0002227" :NEWUID
                                      "CVCL:1384" :WORD "LS174")
                                     (CELL-LINE "MOLT-4" "NCIT:C117119" :NEWUID
                                      "EFO:0001220" :WORD "Molt4")
                                     (CELL-LINE "RERF-LC-MS" "EFO:0002852"
                                      :NEWUID "CVCL:1655" :WORD "LC–MS")
                                     (CELL-LINE "SK-N-AS" "CVCL:1700" :NEWUID
                                      "EFO:0002859" :WORD "SKNAS")
                                     (MOLECULE "sodium iodide" "PCID:5238"
                                      :NEWUID "CHEBI:33167" :WORD "NaI")
                                     (DRUG "erlotinib" NIL :NEWUID "NCIT:C2693"
                                      :WORD "OSI-774")
                                     (DRUG "cisplatin" NIL :NEWUID "NCIT:C376"
                                      :WORD "cisplatinum")
                                     (DRUG "imatinib" NIL :NEWUID "NCIT:C1687"
                                      :WORD "Glivec")
                                     (DRUG "cisplatin" NIL :NEWUID "NCIT:C376"
                                      :WORD "cis-diamminedichloroplatinum")
                                     (DRUG "cisplatin" NIL :NEWUID "NCIT:C376"
                                      :WORD "cis-platinum")
                                     (DRUG "cisplatin" NIL :NEWUID "NCIT:C376"
                                      :WORD "DDP")
                                     (DRUG "seliciclib" NIL :NEWUID
                                      "NCIT:C62783" :WORD "R-roscovitine")
                                     (DRUG "erlotinib" NIL :NEWUID "NCIT:C2693"
                                      :WORD "Tarceva")
                                     (DRUG "adjuvant" "CHEBI:60809" :NEWUID
                                      "NCIT:C2140" :WORD "adj")
                                     (DRUG "cetuximab" NIL :NEWUID "NCIT:C1723"
                                      :WORD "erbitux")))

(defparameter *PROT-FAM-REDEF* '((:OLD-ID NIL 'GEF
                                  ("GEFS" "ONT:PROTEIN-FAMILY" :ID "BE:GEF"
                                   :NAME "GEF"))))

(defparameter *INHIBITED-PLURALS* '(("salmonella" :NEW-CAT BACTERIUM :OLD-CAT
                                     BACTERIUM "salmonellas")
                                    ("flight" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "flights")
                                    ("flight" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "flights")
                                    ("memory" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "memories")
                                    ("memory" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "memories")
                                    ("memory" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "memories")
                                    ("soc" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     PROTEIN-FAMILY "socs")
                                    ("biosynthesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "biosynthesises")
                                    ("angiogenesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "angiogenesises")
                                    ("angiogenesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "angiogenesises")
                                    ("angiogenesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "angiogenesises")
                                    ("cerebral cortex development" :NEW-CAT
                                     BIO-PROCESS :OLD-CAT BIO-PROCESS
                                     "cerebral cortex developments")
                                    ("corticogenesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "corticogenesises")
                                    ("cognition" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "cognitions")
                                    ("chelating activity" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS
                                     "chelating activities")
                                    ("chelating" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "chelatings")
                                    ("carcinogenesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "carcinogenesises")
                                    ("carcinogenesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "carcinogenesises")
                                    ("diastole" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "diastoles")
                                    ("receptor desensitization" :NEW-CAT
                                     BIO-PROCESS :OLD-CAT BIO-PROCESS
                                     "receptor desensitizations")
                                    ("desensitization" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "desensitizations")
                                    ("glycosidase" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "glycosidases")
                                    ("glycosidase" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "glycosidases")
                                    ("glycosidase" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "glycosidases")
                                    ("glycosidase" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "glycosidases")
                                    ("engraftment" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "engraftments")
                                    ("infarction" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "infarctions")
                                    ("infarct" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "infarcts")
                                    ("infarction" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "infarctions")
                                    ("infarct" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "infarcts")
                                    ("leukemogenesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "leukemogenesises")
                                    ("lymphomagenesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "lymphomagenesises")
                                    ("myelination" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "myelinations")
                                    ("sight" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "sights")
                                    ("ocular" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "oculars")
                                    ("feeding on blood of other organism"
                                     :NEW-CAT BIO-PROCESS :OLD-CAT BIO-PROCESS
                                     "feeding on blood of other organisms")
                                    ("phlebotomies" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "phlebotomieses")
                                    ("receptor mediated endocytosis" :NEW-CAT
                                     BIO-PROCESS :OLD-CAT BIO-PROCESS
                                     "receptor mediated endocytosises")
                                    ("rme" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "rmes")
                                    ("receptor mediated endocytosis" :NEW-CAT
                                     BIO-PROCESS :OLD-CAT BIO-PROCESS
                                     "receptor mediated endocytosises")
                                    ("rme" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "rmes")
                                    ("systole" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "systoles")
                                    ("systole" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "systoles")
                                    ("systole" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "systoles")
                                    ("spermatogenesis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "spermatogenesises")
                                    ("tropism" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "tropisms")
                                    ("transcytosis" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "transcytosises")
                                    ("animal ovary" :NEW-CAT BIO-ORGAN :OLD-CAT
                                     BIO-ORGAN "animal ovaries")
                                    ("ovary" :NEW-CAT BIO-ORGAN :OLD-CAT
                                     BIO-ORGAN "ovaries")
                                    ("sap" :NEW-CAT BIO-ORGAN :OLD-CAT
                                     PROTEIN-FAMILY "saps")
                                    ("hairy cell leukemia variant" :NEW-CAT
                                     CANCER :OLD-CAT CANCER
                                     "hairy cell leukemia variants")
                                    ("hclv" :NEW-CAT CANCER :OLD-CAT CANCER
                                     "hclvs")
                                    ("juvenile myelomonocytic leukemia"
                                     :NEW-CAT CANCER :OLD-CAT CANCER
                                     "juvenile myelomonocytic leukemias")
                                    ("jmml" :NEW-CAT CANCER :OLD-CAT CANCER
                                     "jmmls")
                                    ("grade II pancreatic intraepithelial neoplasia"
                                     :NEW-CAT CANCER :OLD-CAT CANCER
                                     "grade II pancreatic intraepithelial neoplasias")
                                    ("ptcl" :NEW-CAT CANCER :OLD-CAT CANCER
                                     "ptcls")
                                    ("ptcl" :NEW-CAT CANCER :OLD-CAT CANCER
                                     "ptcls")
                                    ("serous tubal intraepithelial carcinoma"
                                     :NEW-CAT CANCER :OLD-CAT CANCER
                                     "serous tubal intraepithelial carcinomas")
                                    ("stic" :NEW-CAT CANCER :OLD-CAT CANCER
                                     "stics")
                                    ("hemangiopericytoma" :NEW-CAT CANCER
                                     :OLD-CAT CANCER "hemangiopericytomas")
                                    ("leiomyoma" :NEW-CAT CANCER :OLD-CAT
                                     CANCER "leiomyomas")
                                    ("leiomyomata" :NEW-CAT CANCER :OLD-CAT
                                     CANCER "leiomyomatas")
                                    ("leiomyoma" :NEW-CAT CANCER :OLD-CAT
                                     CANCER "leiomyomas")
                                    ("leiomyomata" :NEW-CAT CANCER :OLD-CAT
                                     CANCER "leiomyomatas")
                                    ("oligoastrocytoma" :NEW-CAT CANCER
                                     :OLD-CAT CANCER "oligoastrocytomas")
                                    ("trichilemmoma" :NEW-CAT CANCER :OLD-CAT
                                     CANCER "trichilemmomas")
                                    ("melanophore" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "melanophores")
                                    ("chondroblast" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "chondroblasts")
                                    ("plasmacytoid dendritic cell" :NEW-CAT
                                     CELL-TYPE :OLD-CAT CELL-TYPE
                                     "plasmacytoid dendritic cells")
                                    ("ipc" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "ipcs")
                                    ("plasmacytoid dendritic cell" :NEW-CAT
                                     CELL-TYPE :OLD-CAT CELL-TYPE
                                     "plasmacytoid dendritic cells")
                                    ("ipc" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "ipcs")
                                    ("megakaryocyte progenitor cell" :NEW-CAT
                                     CELL-TYPE :OLD-CAT CELL-TYPE
                                     "megakaryocyte progenitor cells")
                                    ("mkp" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "mkps")
                                    ("atreg" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "atregs")
                                    ("adipocyte" :NEW-CAT CELL-TYPE :OLD-CAT
                                     PROTEIN "adipocytes")
                                    ("gonocyte" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "gonocytes")
                                    ("gonadtroph" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "gonadtrophs")
                                    ("gonadotrope" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "gonadotropes")
                                    ("heterokaryon" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "heterokaryons")
                                    ("hepatocyte" :NEW-CAT CELL-TYPE :OLD-CAT
                                     PROTEIN "hepatocytes")
                                    ("mechanoreceptor cell" :NEW-CAT CELL-TYPE
                                     :OLD-CAT CELL-TYPE
                                     "mechanoreceptor cells")
                                    ("mechanoreceptors" :NEW-CAT CELL-TYPE
                                     :OLD-CAT CELL-TYPE "mechanoreceptorses")
                                    ("myelocyte" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "myelocytes")
                                    ("myelocyte" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "myelocytes")
                                    ("osteocyte" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "osteocytes")
                                    ("osteocyte" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "osteocytes")
                                    ("osteocyte" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "osteocytes")
                                    ("oligodendrocyte" :NEW-CAT CELL-TYPE
                                     :OLD-CAT CELL-TYPE "oligodendrocytes")
                                    ("Prevacuolar compartment" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION
                                     "Prevacuolar compartments")
                                    ("pvc" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "pvcs")
                                    ("mdv" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "mdvs")
                                    ("paa" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "paas")
                                    ("paa" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "paas")
                                    ("paa" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "paas")
                                    ("scv" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "scvs")
                                    ("chylomicron" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "chylomicrons")
                                    ("terminal bouton" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "terminal boutons")
                                    ("bouton" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "boutons")
                                    ("terminal bouton" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "terminal boutons")
                                    ("bouton" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "boutons")
                                    ("terminal bouton" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "terminal boutons")
                                    ("bouton" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "boutons")
                                    ("terminal bouton" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "terminal boutons")
                                    ("bouton" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "boutons")
                                    ("terminal bouton" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "terminal boutons")
                                    ("bouton" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "boutons")
                                    ("Flagellum" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "Flagellums")
                                    ("Lewy body corona" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "Lewy body coronas")
                                    ("halo" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "halos")
                                    ("Lewy body corona" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "Lewy body coronas")
                                    ("halo" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "halos")
                                    ("Mitochondrion" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "Mitochondrions")
                                    ("mitochondrion" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "mitochondrions")
                                    ("microvesicle" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "microvesicles")
                                    ("paraspeckles" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "paraspeckleses")
                                    ("Rhoptry" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "Rhoptries")
                                    ("rhoptry" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "rhoptries")
                                    ("Rhoptry" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "Rhoptries")
                                    ("dinoflagellate sulcus" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION
                                     "dinoflagellate sulcuses")
                                    ("sulci" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "sulcis")
                                    ("Stereocilium" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "Stereociliums")
                                    ("Spindle" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "Spindles")
                                    ("spindle" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "spindles")
                                    ("Nucleus speckle" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "Nucleus speckles")
                                    ("igc" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "igcs")
                                    ("DHET" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "DHETs")
                                    ("dhet" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "dhets")
                                    ("HPODE" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "HPODEs")
                                    ("hpode" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "hpodes")
                                    ("monocrotophos" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "monocrotophoses")
                                    ("aminoguanidine" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "aminoguanidines")
                                    ("erythrosin B" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "erythrosin Bs")
                                    ("erythrosine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "erythrosines")
                                    ("trichloroethylene" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "trichloroethylenes")
                                    ("racemate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "racemates")
                                    ("plasticiser" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "plasticisers")
                                    ("plasticiser" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "plasticisers")
                                    ("vinclozolin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "vinclozolins")
                                    ("gonadotropin releasing hormone agonist"
                                     :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "gonadotropin releasing hormone agonists")
                                    ("gnrha" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "gnrhas")
                                    ("glass" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "glasses")
                                    ("hydrogen atom" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "hydrogen atoms")
                                    ("hydrogen" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "hydrogens")
                                    ("hydrogen atom" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "hydrogen atoms")
                                    ("hydrogen" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "hydrogens")
                                    ("homovanillic acid" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "homovanillic acids")
                                    ("hva" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "hvas")
                                    ("Ibogaine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "Ibogaines")
                                    ("ibogaine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "ibogaines")
                                    ("NADP" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "NADPs")
                                    ("nadp" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "nadps")
                                    ("metgly" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "metglies")
                                    ("ndma" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "ndmas")
                                    ("pdpa" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "pdpas")
                                    ("phthalaldehyde" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "phthalaldehydes")
                                    ("opa" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "opas")
                                    ("thiourea" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "thioureas")
                                    ("XMC" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "XMCs")
                                    ("xmc" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "xmcs")
                                    ("XMC" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "XMCs")
                                    ("xmc" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "xmcs")
                                    ("biphenyl" :NEW-CAT MOLECULE :OLD-CAT DRUG
                                     "biphenyls")
                                    ("biphenyl" :NEW-CAT MOLECULE :OLD-CAT DRUG
                                     "biphenyls")
                                    ("anthracycline" :NEW-CAT MOLECULE :OLD-CAT
                                     DRUG "anthracyclines")
                                    ("amylose" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "amyloses")
                                    ("alkaloid" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "alkaloids")
                                    ("actinomycin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "actinomycins")
                                    ("actinomycin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "actinomycins")
                                    ("acetate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "acetates")
                                    ("acetate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "acetates")
                                    ("cofactor" :NEW-CAT MOLECULE :OLD-CAT
                                     PROTEIN "cofactors")
                                    ("chelator" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "chelators")
                                    ("capsaicinoid" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "capsaicinoids")
                                    ("dianisidine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "dianisidines")
                                    ("deferoxamine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "deferoxamines")
                                    ("dTTP" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "dTTPs")
                                    ("dttp" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "dttps")
                                    ("dTTP" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "dTTPs")
                                    ("dttp" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "dttps")
                                    ("cyclopentane" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "cyclopentanes")
                                    ("cucurbitacin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "cucurbitacins")
                                    ("formaldehyde" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "formaldehydes")
                                    ("indol" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "indols")
                                    ("homopolymer" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "homopolymers")
                                    ("Harringtonine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "Harringtonines")
                                    ("harringtonine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "harringtonines")
                                    ("Harringtonine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "Harringtonines")
                                    ("harringtonine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "harringtonines")
                                    ("haematoxylin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "haematoxylins")
                                    ("macronutrient" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "macronutrients")
                                    ("lanthionine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "lanthionines")
                                    ("intercalator" :NEW-CAT MOLECULE :OLD-CAT
                                     DRUG "intercalators")
                                    ("norleucine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "norleucines")
                                    ("nitrosonornicotine" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "nitrosonornicotines")
                                    ("nickel" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "nickels")
                                    ("oxidising agent" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "oxidising agents")
                                    ("oxidant" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "oxidants")
                                    ("pesticide" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "pesticides")
                                    ("pesticide" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "pesticides")
                                    ("pyrazine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "pyrazines")
                                    ("pyrazin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "pyrazins")
                                    ("porphyrin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "porphyrins")
                                    ("poison" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "poisons")
                                    ("aldehydic acid" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "aldehydic acids")
                                    ("semialdehyde" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "semialdehydes")
                                    ("starch" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "starches")
                                    ("solvent" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "solvents")
                                    ("urethan" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "urethans")
                                    ("urethane" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "urethanes")
                                    ("urethan" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "urethans")
                                    ("urethane" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "urethanes")
                                    ("urethan" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "urethans")
                                    ("urethane" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "urethanes")
                                    ("tva" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "tvas")
                                    ("triphosphate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "triphosphates")
                                    ("thiophene" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "thiophenes")
                                    ("thiophene" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "thiophenes")
                                    ("zinc atom" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "zinc atoms")
                                    ("zinc" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "zincs")
                                    ("mask family" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "mask families")
                                    ("lampyridae" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "lampyridaes")
                                    ("firefly" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "fireflies")
                                    ("lampyridae" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "lampyridaes")
                                    ("firefly" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "fireflies")
                                    ("pup" :NEW-CAT BIO-ORGAN :OLD-CAT
                                     BIO-ORGAN "pups")
                                    ("angstrom" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "angstroms")
                                    ("nanometer" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "nanometers")
                                    ("heavy chain immunoglobulin complex"
                                     :NEW-CAT BIO-COMPLEX :OLD-CAT BIO-COMPLEX
                                     "heavy chain immunoglobulin complexes")
                                    ("hcabs" :NEW-CAT BIO-COMPLEX :OLD-CAT
                                     BIO-COMPLEX "hcabses")
                                    ("MBF transcription complex" :NEW-CAT
                                     BIO-COMPLEX :OLD-CAT BIO-COMPLEX
                                     "MBF transcription complexes")
                                    ("mbf" :NEW-CAT BIO-COMPLEX :OLD-CAT
                                     BIO-COMPLEX "mbfs")
                                    ("SUMO activating enzyme complex" :NEW-CAT
                                     BIO-COMPLEX :OLD-CAT BIO-COMPLEX
                                     "SUMO activating enzyme complexes")
                                    ("saes" :NEW-CAT BIO-COMPLEX :OLD-CAT
                                     BIO-COMPLEX "saeses")
                                    ("aster" :NEW-CAT BIO-COMPLEX :OLD-CAT
                                     BIO-COMPLEX "asters")
                                    ("messenger ribonucleoprotein complex"
                                     :NEW-CAT BIO-COMPLEX :OLD-CAT BIO-COMPLEX
                                     "messenger ribonucleoprotein complexes")
                                    ("mrnp" :NEW-CAT BIO-COMPLEX :OLD-CAT
                                     BIO-COMPLEX "mrnps")
                                    ("pore complex" :NEW-CAT BIO-COMPLEX
                                     :OLD-CAT BIO-COMPLEX "pore complexes")
                                    ("pore" :NEW-CAT BIO-COMPLEX :OLD-CAT
                                     BIO-COMPLEX "pores")
                                    ("apolipoprotein B mRNA editing enzyme complex"
                                     :NEW-CAT BIO-COMPLEX :OLD-CAT BIO-COMPLEX
                                     "apolipoprotein B mRNA editing enzyme complexes")
                                    ("apobec" :NEW-CAT BIO-COMPLEX :OLD-CAT
                                     BIO-COMPLEX "apobecs")
                                    ("apolipoprotein B mRNA editing enzyme complex"
                                     :NEW-CAT BIO-COMPLEX :OLD-CAT BIO-COMPLEX
                                     "apolipoprotein B mRNA editing enzyme complexes")
                                    ("apobec" :NEW-CAT BIO-COMPLEX :OLD-CAT
                                     BIO-COMPLEX "apobecs")
                                    ("milligray" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "milligrays")
                                    ("mGy" :NEW-CAT UNIT-OF-MEASURE :OLD-CAT
                                     UNIT-OF-MEASURE "mGies")
                                    ("nanomolar" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "nanomolars")
                                    ("nanomolar" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "nanomolars")
                                    ("millimolar" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "millimolars")
                                    ("picomolar" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "picomolars")
                                    ("picomolar" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "picomolars")
                                    ("picomolar" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "picomolars")
                                    ("thi" :NEW-CAT DISEASE :OLD-CAT DETERMINER
                                     "this")
                                    ("hyperprolactinemia" :NEW-CAT DISEASE
                                     :OLD-CAT DISEASE "hyperprolactinemias")
                                    ("hepatic carcinoid tumor" :NEW-CAT DISEASE
                                     :OLD-CAT DISEASE
                                     "hepatic carcinoid tumors")
                                    ("hnet" :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "hnets")
                                    ("idiopathic interstitial pneumonia"
                                     :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "idiopathic interstitial pneumonias")
                                    ("iip" :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "iips")
                                    ("icd" :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "icds")
                                    ("lupus erythematosus tumidus" :NEW-CAT
                                     DISEASE :OLD-CAT DISEASE
                                     "lupus erythematosus tumiduses")
                                    ("letx" :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "letxes")
                                    ("Autosomal recessive spastic paraplegia type 15"
                                     :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "Autosomal recessive spastic paraplegia type 15s")
                                    ("Autosomal recessive spastic paraplegia type 15"
                                     :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "Autosomal recessive spastic paraplegia type 15s")
                                    ("Transaldolase deficiency" :NEW-CAT
                                     DISEASE :OLD-CAT DISEASE
                                     "Transaldolase deficiencies")
                                    ("taldo" :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "taldos")
                                    ("arthropathy" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "arthropathies")
                                    ("arthropathy" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "arthropathies")
                                    ("cystinuria" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "cystinurias")
                                    ("epilepsy" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "epilepsies")
                                    ("hypermetropia" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "hypermetropias")
                                    ("hyperamylasemia" :NEW-CAT DISEASE
                                     :OLD-CAT DISEASE "hyperamylasemias")
                                    ("malnutrition" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "malnutritions")
                                    ("kyphosis" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "kyphosises")
                                    ("neurotoxicity" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "neurotoxicities")
                                    ("Microlissencephaly" :NEW-CAT DISEASE
                                     :OLD-CAT DISEASE "Microlissencephalies")
                                    ("azoospermia" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "azoospermias")
                                    ("oligospermia" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "oligospermias")
                                    ("Paraganglioma" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "Paragangliomas")
                                    ("paraganglioma" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "paragangliomas")
                                    ("pleuritis" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "pleuritises")
                                    ("seborrheic dermatitis" :NEW-CAT DISEASE
                                     :OLD-CAT DISEASE
                                     "seborrheic dermatitises")
                                    ("seborrhea" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "seborrheas")
                                    ("CCT" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "CCTs")
                                    ("cct" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "ccts")
                                    ("fz" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "fzes")
                                    ("frz" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "frzes")
                                    ("vint" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "vints")
                                    ("PBD" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "PBDs")
                                    ("pbd" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "pbds")
                                    ("pentaxin" :NEW-CAT PROTEIN-DOMAIN
                                     :OLD-CAT PROTEIN-DOMAIN "pentaxins")
                                    ("pentraxins" :NEW-CAT PROTEIN-DOMAIN
                                     :OLD-CAT PROTEIN-DOMAIN "pentraxinses")
                                    ("QLQ" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "QLQs")
                                    ("qlq" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "qlqs")
                                    ("QLQ" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "QLQs")
                                    ("qlq" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "qlqs")
                                    ("QLQ" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "QLQs")
                                    ("qlq" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "qlqs")
                                    ("SRX" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "SRXes")
                                    ("srx" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "srxes")
                                    ("gate" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "gates")
                                    ("endothelin" :NEW-CAT PROTEIN-DOMAIN
                                     :OLD-CAT PROTEIN-DOMAIN "endothelins")
                                    ("META" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "METAs")
                                    ("meta" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "metas")
                                    ("META" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "METAs")
                                    ("meta" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "metas")
                                    ("PATR" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "PATRs")
                                    ("patr" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "patrs")
                                    ("hpte" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "hptes")
                                    ("hpte" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "hptes")
                                    ("ppf" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "ppfs")
                                    ("aminonaphthalene" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "aminonaphthalenes")
                                    ("hydridosilicon" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "hydridosilicons")
                                    ("sih" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "sihs")
                                    ("trinitrobenzene" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "trinitrobenzenes")
                                    ("tetraethylenepentamine" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE
                                     "tetraethylenepentamines")
                                    ("suberate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "suberates")
                                    ("hydroxyflavan" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "hydroxyflavans")
                                    ("flavanols" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "flavanolses")
                                    ("acetylene" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "acetylenes")
                                    ("hcch" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "hcches")
                                    ("globoside" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "globosides")
                                    ("los" :NEW-CAT MOLECULE :OLD-CAT LOSE
                                     "loses")
                                    ("methylenedinitramine" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "methylenedinitramines")
                                    ("medina" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "medinas")
                                    ("methylenedinitramine" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "methylenedinitramines")
                                    ("medina" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "medinas")
                                    ("Lead oxide" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "Lead oxides")
                                    ("opb" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "opbs")
                                    ("norbornene" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "norbornenes")
                                    ("sulfonothioyl group" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "sulfonothioyl groups")
                                    ("pvf" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "pvfs")
                                    ("radium atom" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "radium atoms")
                                    ("radio" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "radios")
                                    ("radium atom" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "radium atoms")
                                    ("radio" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "radios")
                                    ("radium atom" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "radium atoms")
                                    ("radio" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "radios")
                                    ("tellanyl group" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "tellanyl groups")
                                    ("teh" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "tehs")
                                    ("tellanyl group" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "tellanyl groups")
                                    ("teh" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "tehs")
                                    ("biotinyl group" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "biotinyl groups")
                                    ("biotinoyl" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "biotinoyls")
                                    ("benzopyran" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "benzopyrans")
                                    ("arachidonyl group" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "arachidonyl groups")
                                    ("arachidonyl" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "arachidonyls")
                                    ("aminoglycoside" :NEW-CAT MOLECULE
                                     :OLD-CAT DRUG "aminoglycosides")
                                    ("amine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "amines")
                                    ("alkyne" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "alkynes")
                                    ("carboxamide" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "carboxamides")
                                    ("carbamoyl" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "carbamoyls")
                                    ("dithionite" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "dithionites")
                                    ("disiloxane" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "disiloxanes")
                                    ("dichloroacetate" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "dichloroacetates")
                                    ("cytochalasin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "cytochalasins")
                                    ("flavin" :NEW-CAT MOLECULE :OLD-CAT DRUG
                                     "flavins")
                                    ("homopolymer macromolecule" :NEW-CAT
                                     MOLECULE :OLD-CAT MOLECULE
                                     "homopolymer macromolecules")
                                    ("homopolymers" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "homopolymerses")
                                    ("mandelonitrile" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "mandelonitriles")
                                    ("iodobenzoate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "iodobenzoates")
                                    ("nonyl group" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "nonyl groups")
                                    ("nonyl" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "nonyls")
                                    ("nonyl group" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "nonyl groups")
                                    ("nonyl" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "nonyls")
                                    ("naphthol" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "naphthols")
                                    ("mycophenolate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "mycophenolates")
                                    ("mycophenolate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "mycophenolates")
                                    ("sulfanyl" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "sulfanyls")
                                    ("mercapto" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "mercaptos")
                                    ("oligomer" :NEW-CAT MOLECULE :OLD-CAT
                                     PROTEIN "oligomers")
                                    ("oligomer" :NEW-CAT MOLECULE :OLD-CAT
                                     PROTEIN "oligomers")
                                    ("pyranone" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "pyranones")
                                    ("polyphosphate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "polyphosphates")
                                    ("phthalocyanines" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "phthalocyanineses")
                                    ("phenylpyridine" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "phenylpyridines")
                                    ("polysulfur" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "polysulfurs")
                                    ("sulfur" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "sulfurs")
                                    ("polysulfur" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "polysulfurs")
                                    ("sulfur" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "sulfurs")
                                    ("sulfone" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "sulfones")
                                    ("sulfone" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "sulfones")
                                    ("sulfonamide" :NEW-CAT MOLECULE :OLD-CAT
                                     DRUG "sulfonamides")
                                    ("sulfamate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "sulfamates")
                                    ("mitochondrial RNA" :NEW-CAT RNA :OLD-CAT
                                     RNA "mitochondrial RNAs")
                                    ("mtrna" :NEW-CAT RNA :OLD-CAT RNA
                                     "mtrnas")
                                    ("lewis rat strain" :NEW-CAT ORGANISM
                                     :OLD-CAT ORGANISM "lewis rat strains")
                                    ("lewis" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "lewises")
                                    ("nude mouse" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "nude mouses")
                                    ("nus" :NEW-CAT ORGANISM :OLD-CAT ORGANISM
                                     "nuses")
                                    ("dog" :NEW-CAT ORGANISM :OLD-CAT ORGANISM
                                     "dogs")
                                    ("canines" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "canineses")
                                    ("pig" :NEW-CAT ORGANISM :OLD-CAT ORGANISM
                                     "pigs")
                                    ("porcine" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "porcines")
                                    ("archaea" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "archaeas")
                                    ("andromeda" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "andromedas")
                                    ("andromeda" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "andromedas")
                                    ("andromeda" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "andromedas")
                                    ("autoantigen" :NEW-CAT DRUG :OLD-CAT DRUG
                                     "autoantigens")
                                    ("freckles" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "freckleses")
                                    ("chloasma" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "chloasmas")
                                    ("freckles" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "freckleses")
                                    ("chloasma" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "chloasmas")
                                    ("asthenia" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "asthenias")
                                    ("bovine immunodeficiency virus" :NEW-CAT
                                     VIRUS :OLD-CAT VIRUS
                                     "bovine immunodeficiency viruses")
                                    ("biv" :NEW-CAT VIRUS :OLD-CAT VIRUS
                                     "bivs")
                                    ("parachordal vessel" :NEW-CAT BIO-ORGAN
                                     :OLD-CAT BIO-ORGAN "parachordal vessels")
                                    ("pav" :NEW-CAT BIO-ORGAN :OLD-CAT
                                     BIO-ORGAN "pavs")
                                    ("protein nitrosylation" :NEW-CAT
                                     POST-TRANSLATIONAL-MODIFICATION :OLD-CAT
                                     POST-TRANSLATIONAL-MODIFICATION
                                     "protein nitrosylations")
                                    ("nitrosylate" :NEW-CAT
                                     POST-TRANSLATIONAL-MODIFICATION :OLD-CAT
                                     POST-TRANSLATIONAL-MODIFICATION
                                     "nitrosylates")
                                    ("protein nitrosylation" :NEW-CAT
                                     POST-TRANSLATIONAL-MODIFICATION :OLD-CAT
                                     POST-TRANSLATIONAL-MODIFICATION
                                     "protein nitrosylations")
                                    ("nitrosylate" :NEW-CAT
                                     POST-TRANSLATIONAL-MODIFICATION :OLD-CAT
                                     POST-TRANSLATIONAL-MODIFICATION
                                     "nitrosylates")
                                    ("protein nitrosylation" :NEW-CAT
                                     POST-TRANSLATIONAL-MODIFICATION :OLD-CAT
                                     POST-TRANSLATIONAL-MODIFICATION
                                     "protein nitrosylations")
                                    ("nitrosylate" :NEW-CAT
                                     POST-TRANSLATIONAL-MODIFICATION :OLD-CAT
                                     POST-TRANSLATIONAL-MODIFICATION
                                     "nitrosylates")
                                    ("protein nitrosylation" :NEW-CAT
                                     POST-TRANSLATIONAL-MODIFICATION :OLD-CAT
                                     POST-TRANSLATIONAL-MODIFICATION
                                     "protein nitrosylations")
                                    ("nitrosylate" :NEW-CAT
                                     POST-TRANSLATIONAL-MODIFICATION :OLD-CAT
                                     POST-TRANSLATIONAL-MODIFICATION
                                     "nitrosylates")
                                    ("liquid scintillation counting" :NEW-CAT
                                     BIO-METHOD :OLD-CAT BIO-METHOD
                                     "liquid scintillation countings")
                                    ("lsc" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "lscs")
                                    ("magnetic affinity cell sorting" :NEW-CAT
                                     BIO-METHOD :OLD-CAT BIO-METHOD
                                     "magnetic affinity cell sortings")
                                    ("macs" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "macses")
                                    ("passage" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "passages")
                                    ("passage" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "passages")
                                    ("passage" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "passages")
                                    ("xps" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "xpses")
                                    ("computational technique" :NEW-CAT
                                     BIO-METHOD :OLD-CAT BIO-METHOD
                                     "computational techniques")
                                    ("computational" :NEW-CAT BIO-METHOD
                                     :OLD-CAT BIO-METHOD "computationals")
                                    ("statistical imputation" :NEW-CAT
                                     BIO-METHOD :OLD-CAT BIO-METHOD
                                     "statistical imputations")
                                    ("imputation" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "imputations")
                                    ("pellet formation" :NEW-CAT BIO-METHOD
                                     :OLD-CAT BIO-METHOD "pellet formations")
                                    ("pellet" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "pellets")
                                    ("protonation" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "protonations")
                                    ("protonation" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "protonations")
                                    ("protonation" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "protonations")
                                    ("high content screen" :NEW-CAT BIO-METHOD
                                     :OLD-CAT BIO-METHOD
                                     "high content screens")
                                    ("hcss" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "hcsses")
                                    ("inversion" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "inversions")
                                    ("inv" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "invs")
                                    ("statistical dispersion" :NEW-CAT
                                     BIO-METHOD :OLD-CAT BIO-METHOD
                                     "statistical dispersions")
                                    ("dispersion" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "dispersions")
                                    ("GAGE family" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "GAGE families")
                                    ("JAB" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "JABs")
                                    ("MMP" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN "MMPs")
                                    ("AKT" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "AKTs")
                                    ("sre" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "sres")
                                    ("CDK" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "CDKs")
                                    ("cyclin E family" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY
                                     "cyclin E families")
                                    ("crystallin" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "crystallins")
                                    ("flavoprotein" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "flavoproteins")
                                    ("ERK" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "ERKs")
                                    ("MEK" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "MEKs")
                                    ("PKI family" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "PKI families")
                                    ("pki" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "pkis")
                                    ("plexin family" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "plexin families")
                                    ("plexin" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "plexins")
                                    ("functional RNA" :NEW-CAT RNA :OLD-CAT RNA
                                     "functional RNAs")
                                    ("ncrna" :NEW-CAT RNA :OLD-CAT RNA
                                     "ncrnas")
                                    ("premirna" :NEW-CAT RNA :OLD-CAT RNA
                                     "premirnas")
                                    ("conjugate" :NEW-CAT SUBSTANCE :OLD-CAT
                                     SUBSTANCE "conjugates")
                                    ("conjugate" :NEW-CAT SUBSTANCE :OLD-CAT
                                     SUBSTANCE "conjugates")
                                    ("granule" :NEW-CAT SUBSTANCE :OLD-CAT
                                     SUBSTANCE "granules")
                                    ("sol" :NEW-CAT SUBSTANCE :OLD-CAT
                                     SUBSTANCE "sols")
                                    ("human herpesvirus 6" :NEW-CAT VIRUS
                                     :OLD-CAT VIRUS "human herpesvirus 6s")
                                    ("human herpesvirus 6" :NEW-CAT VIRUS
                                     :OLD-CAT VIRUS "human herpesvirus 6s")
                                    ("hepatitis B virus" :NEW-CAT VIRUS
                                     :OLD-CAT VIRUS "hepatitis B viruses")
                                    ("hbv" :NEW-CAT VIRUS :OLD-CAT VIRUS
                                     "hbvs")
                                    ("hepatitis B virus" :NEW-CAT VIRUS
                                     :OLD-CAT VIRUS "hepatitis B viruses")
                                    ("hbv" :NEW-CAT VIRUS :OLD-CAT VIRUS
                                     "hbvs")
                                    ("orthobunyavirus" :NEW-CAT VIRUS :OLD-CAT
                                     VIRUS "orthobunyaviruses")
                                    ("bunyavirus" :NEW-CAT VIRUS :OLD-CAT VIRUS
                                     "bunyaviruses")
                                    ("nanogram" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "nanograms")
                                    ("degeneration" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "degenerations")
                                    ("degenerate" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "degenerates")
                                    ("degeneration" :NEW-CAT BIO-PROCESS
                                     :OLD-CAT BIO-PROCESS "degenerations")
                                    ("degenerate" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "degenerates")
                                    ("conception" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "conceptions")
                                    ("mitosis" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "mitosises")
                                    ("central nervous system lymphoma" :NEW-CAT
                                     CANCER :OLD-CAT CANCER
                                     "central nervous system lymphomas")
                                    ("pcnsl" :NEW-CAT CANCER :OLD-CAT CANCER
                                     "pcnsls")
                                    ("benign verrucous lesion" :NEW-CAT CANCER
                                     :OLD-CAT CANCER
                                     "benign verrucous lesions")
                                    ("warts" :NEW-CAT CANCER :OLD-CAT CANCER
                                     "wartses")
                                    ("alveolar soft part sarcoma" :NEW-CAT
                                     CANCER :OLD-CAT CANCER
                                     "alveolar soft part sarcomas")
                                    ("aspss" :NEW-CAT CANCER :OLD-CAT CANCER
                                     "aspsses")
                                    ("parafollicular cell" :NEW-CAT CELL-TYPE
                                     :OLD-CAT CELL-TYPE "parafollicular cells")
                                    ("blastoderm cell" :NEW-CAT CELL-TYPE
                                     :OLD-CAT CELL-TYPE "blastoderm cells")
                                    ("blastomeres" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "blastomereses")
                                    ("monoblast" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "monoblasts")
                                    ("monoblast" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "monoblasts")
                                    ("centroblasts" :NEW-CAT CELL-TYPE :OLD-CAT
                                     CELL-TYPE "centroblastses")
                                    ("cholangiocyte" :NEW-CAT CELL-TYPE
                                     :OLD-CAT CELL-TYPE "cholangiocytes")
                                    ("cholangiocyte" :NEW-CAT CELL-TYPE
                                     :OLD-CAT CELL-TYPE "cholangiocytes")
                                    ("Z disc" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "Z discs")
                                    ("Chloroplast" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "Chloroplasts")
                                    ("chloroplast" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "chloroplasts")
                                    ("Chloroplast" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "Chloroplasts")
                                    ("chromocenter" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "chromocenters")
                                    ("pilus" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "piluses")
                                    ("Bleb" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "Blebs")
                                    ("Desmosome" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "Desmosomes")
                                    ("C-fiber" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "C-fibers")
                                    ("provirus" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION "proviruses")
                                    ("calciol" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "calciols")
                                    ("agg" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "aggs")
                                    ("deoxyribose" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "deoxyriboses")
                                    ("fluorochrome" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "fluorochromes")
                                    ("ascorbate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "ascorbates")
                                    ("ascorbate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "ascorbates")
                                    ("hydroxyproline" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "hydroxyprolines")
                                    ("folate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "folates")
                                    ("hepoxilin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "hepoxilins")
                                    ("microcystin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "microcystins")
                                    ("microcystin" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "microcystins")
                                    ("peptide MHC complex" :NEW-CAT BIO-COMPLEX
                                     :OLD-CAT BIO-COMPLEX
                                     "peptide MHC complexes")
                                    ("ribonucleoprotein complex" :NEW-CAT
                                     BIO-COMPLEX :OLD-CAT BIO-COMPLEX
                                     "ribonucleoprotein complexes")
                                    ("rnps" :NEW-CAT BIO-COMPLEX :OLD-CAT
                                     BIO-COMPLEX "rnpses")
                                    ("picomole" :NEW-CAT UNIT-OF-MEASURE
                                     :OLD-CAT UNIT-OF-MEASURE "picomoles")
                                    ("hemoglobinopathy" :NEW-CAT DISEASE
                                     :OLD-CAT DISEASE "hemoglobinopathies")
                                    ("progeria" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "progerias")
                                    ("urinary tract infection" :NEW-CAT DISEASE
                                     :OLD-CAT DISEASE
                                     "urinary tract infections")
                                    ("utis" :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "utises")
                                    ("meningitis" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "meningitises")
                                    ("bors" :NEW-CAT DISEASE :OLD-CAT DISEASE
                                     "borses")
                                    ("neuropathy" :NEW-CAT DISEASE :OLD-CAT
                                     DISEASE "neuropathies")
                                    ("statistical dispersion" :NEW-CAT
                                     BIO-METHOD :OLD-CAT BIO-METHOD
                                     "statistical dispersions")
                                    ("dispersion" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "dispersions")
                                    ("PIN" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "PINs")
                                    ("ArfGap" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "ArfGaps")
                                    ("arfgap" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "arfgaps")
                                    ("ArfGap" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "ArfGaps")
                                    ("arfgap" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "arfgaps")
                                    ("NACHT" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "NACHTs")
                                    ("nacht" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "nachts")
                                    ("chromo" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "chromos")
                                    ("chromodomains" :NEW-CAT PROTEIN-DOMAIN
                                     :OLD-CAT PROTEIN-DOMAIN "chromodomainses")
                                    ("lysyl group" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "lysyl groups")
                                    ("lysyl" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "lysyls")
                                    ("sodium hydroxide" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "sodium hydroxides")
                                    ("naoh" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "naohs")
                                    ("isoflavone" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "isoflavones")
                                    ("ribonucleotide" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "ribonucleotides")
                                    ("ribonucleotide" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "ribonucleotides")
                                    ("chimpanzee" :NEW-CAT ORGANISM :OLD-CAT
                                     ORGANISM "chimpanzees")
                                    ("radiation dosimetry" :NEW-CAT BIO-METHOD
                                     :OLD-CAT BIO-METHOD
                                     "radiation dosimetries")
                                    ("dosimetry" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "dosimetries")
                                    ("malls" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "mallses")
                                    ("maximum value derivation technique"
                                     :NEW-CAT BIO-METHOD :OLD-CAT BIO-METHOD
                                     "maximum value derivation techniques")
                                    ("maxima" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "maximas")
                                    ("quantile" :NEW-CAT BIO-METHOD :OLD-CAT
                                     BIO-METHOD "quantiles")
                                    ("selectin" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "selectins")
                                    ("protocadherin" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "protocadherins")
                                    ("phospholipase C gamma" :NEW-CAT
                                     PROTEIN-FAMILY :OLD-CAT PROTEIN-FAMILY
                                     "phospholipase C gammas")
                                    ("phospholipase C gamma" :NEW-CAT
                                     PROTEIN-FAMILY :OLD-CAT PROTEIN-FAMILY
                                     "phospholipase C gammas")
                                    ("RAS" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "RASes")
                                    ("cytokeratin" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "cytokeratins")
                                    ("lamin" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "lamins")
                                    ("AKT" :NEW-CAT PROTEIN-FAMILY :OLD-CAT
                                     PROTEIN-FAMILY "AKTs")
                                    ("ssrna" :NEW-CAT RNA :OLD-CAT RNA
                                     "ssrnas")
                                    ("snrna" :NEW-CAT RNA :OLD-CAT PROTEIN
                                     "snrnas")
                                    ("pd 98059" :NEW-CAT MOLECULE :OLD-CAT DRUG
                                     "pd 98059s")
                                    ("BEAS-2B cell" :NEW-CAT CELL-LINE :OLD-CAT
                                     CELL-LINE "BEAS-2B cells")
                                    ("Invadopodium" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "Invadopodiums")
                                    ("Pseudopodium" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "Pseudopodiums")))

(defparameter *VIOLATES-NO-PLURAL* '((CELL-LINE "OSCs" "EFO:0005834" "OSC")
                                     (CELL-LINE "T98Gs" "EFO:0002085" "T98G")
                                     (DRUG "vasopressors" "NCIT:C126567"
                                      "vasopressor")
                                     (DRUG "benzimidazoles" "MESH:C031000"
                                      "benzimidazole")
                                     (DRUG "autoantigens" "NCIT:C20972"
                                      "autoantigen")
                                     (DRUG "catenanes" "MESH:C467767"
                                      "catenane")
                                     (DRUG "curcuminoids" "NCIT:C125480"
                                      "curcuminoid")
                                     (DRUG "flavanones" "MESH:C028610"
                                      "flavanone")
                                     (DRUG "immunostimulants" "NCIT:C2139"
                                      "immunostimulant")
                                     (DRUG "hyaluronidases" "NCIT:C87576"
                                      "hyaluronidase")
                                     (DRUG "phenazines" "MESH:C000598831"
                                      "phenazine")
                                     (DRUG "xanthones" "MESH:C009689"
                                      "xanthone")
                                     (DRUG "bioflavonoids" "NCIT:C306"
                                      "bioflavonoid")
                                     (DRUG "ellagitannins" "MESH:C013515"
                                      "ellagitannin")
                                     (DRUG "fluoropyrimidines" "NCIT:C94728"
                                      "fluoropyrimidine")
                                     (DRUG "psoralens" "NCIT:C2586" "psoralen")
                                     (DRUG "purines" "MESH:C030985" "purine")
                                     (DRUG "diazeniumdiolates" "MESH:C452539"
                                      "diazeniumdiolate")
                                     (DRUG "nodularins" "MESH:C063998"
                                      "nodularin")
                                     (DRUG "phytochemicals" "NCIT:C28269"
                                      "phytochemical")
                                     (DRUG "thiouracils" "NCIT:C29856"
                                      "thiouracil")))

(defparameter *WORD-DIFF-POS-NAME* '((BIO-PROCESS "biogenesis" "NCIT:C17702"
                                      "biosynthesis")
                                     (BIO-PROCESS "acclimation" "NCIT:C68767"
                                      "acclimatization")
                                     (BIO-PROCESS "condensed" "NCIT:C19395"
                                      "chromosome condensation")
                                     (BIO-PROCESS "epigenetics" "NCIT:C21051"
                                      "epigenetic process")
                                     (BIO-PROCESS "necroptosis" "GO:0070266"
                                      "necroptotic process")
                                     (BIO-PROCESS "secretory" "NCIT:C17119"
                                      "cellular secretion")
                                     (BIO-PROCESS "salivation" "GO:0046541"
                                      "saliva secretion")
                                     (BIO-PROCESS "synthesis" "GO:0009058"
                                      "biosynthetic process")
                                     (BIO-PROCESS "translational" "NCIT:C30022"
                                      "translation process")
                                     (BIO-ORGAN "mandible" "EFO:0003660"
                                      "ventral mandibular arch")
                                     (CANCER "Recurrence" "NCIT:C4813"
                                      "recurrent malignant neoplasm")
                                     (CANCER "oncocytoma" "NCIT:C7072"
                                      "oncocytic neoplasm")
                                     (CANCER "trichoblastomas" "NCIT:C27132"
                                      "trichogenic trichoblastoma")
                                     (CELL-TYPE "angioblasts" "CO:0000566"
                                      "angioblastic mesenchymal cell")
                                     (CELL-TYPE "blasts" "BTO:0000125"
                                      "blast cell")
                                     (CELL-TYPE "megakaryoblasts" "CO:0000553"
                                      "megakaryocyte progenitor cell")
                                     (CELL-TYPE "thyrocyte" "BTO:0003736"
                                      "thyroid epithelial cell")
                                     (CELLULAR-LOCATION "mucous" "GO:0070701"
                                      "mucus layer")
                                     (CELLULAR-LOCATION "perikarya"
                                      "UP:SL-0197" "Perikaryon")
                                     (MOLECULE "Lara" "CHEBI:30849"
                                      "L-arabinose")
                                     (MOLECULE "alkylator" "NCIT:C223"
                                      "alkylating agent")
                                     (UNIT-OF-MEASURE "poised" "UO:0000258"
                                      "poise")
                                     (DISEASE "epithelioma" "EFO:0006858"
                                      "epithelial neoplasm")
                                     (DISEASE "manic" "NCIT:C61374" "mania")
                                     (DISEASE "sepsis" "NCIT:C3364"
                                      "septicemia")
                                     (MOLECULE "alumina" "CHEBI:30187"
                                      "aluminium oxide")
                                     (MOLECULE "hydrated" "CHEBI:35505"
                                      "hydrate")
                                     (MOLECULE "nitrated" "CHEBI:17632"
                                      "nitrate")
                                     (MOLECULE "oro" "CHEBI:29287" "gold atom")
                                     (ORGANISM "Wistar" "NCIT:C76190"
                                      "WIST rat strain")
                                     (ORGANISM "Protists" "NCIT:C77914"
                                      "protista")
                                     (ORGANISM "vectored" "NCIT:C14198"
                                      "disease vector")
                                     (DRUG "Ophthalmic" "CHEBI:66981"
                                      "ophthalmology drug")
                                     (POST-TRANSLATIONAL-MODIFICATION
                                      "acylated" "GO:0043543"
                                      "protein acylation")
                                     (CELL-LINE "lagging" "CVCL:B950" "LAG")
                                     (DRUG "soma" "NCIT:C28904" "carisoprodol")
                                     (BIO-METHOD "dispersions" "NCIT:C53321"
                                      "statistical dispersion")
                                     (BIO-METHOD "immortalized" "NCIT:C82424"
                                      "immortalization")
                                     (BIO-METHOD "irradiated" "EFO:0000554"
                                      "irradiate")))

(defparameter *PLURALS-OF-EXISTING-CATS* '((CELLULAR-LOCATION CAVEOLA
                                            "UP:SL-0035" :WORD "caveolae")
                                           (MOLECULE CHEMICAL "NCIT:C48807"
                                            :WORD "chemicals")
                                           (MOLECULE NUCLEOSIDE "CHEBI:33838"
                                            :WORD "nucleosides")
                                           (SUBSTANCE SOLID "NCIT:C45300" :WORD
                                            "solids")
                                           (CELLULAR-LOCATION NUCLEUS
                                            "UP:SL-0191" :WORD "nuclei")
                                           (UNIT-OF-MEASURE NORMAL "UO:0000075"
                                            :WORD "normals")
                                           (MOLECULE ION "CHEBI:24870" :WORD
                                            "ions")))

(defparameter *DIFF-POS-OF-EXISTING-CATS* '((BIO-PROCESS DEVELOPMENT
                                             "NCIT:C17770" :WORD
                                             "developmental")
                                            (MOLECULE DAMP "CHEBI:17713" :WORD
                                             "damped")
                                            (DISEASE PHENOTYPE "EFO:0000651"
                                             :WORD "Phenotyping")
                                            (DISEASE PHENOTYPE "EFO:0000651"
                                             :WORD "phenotyped")
                                            (MOLECULE LACTATE "CHEBI:24996"
                                             :WORD "lactating")
                                            (MOLECULE LIGAND "CHEBI:52214"
                                             :WORD "liganded")
                                            (DISEASE HYPERPLASIA "NCIT:C3113"
                                             :WORD "hyperplastic"))) ;dealt with

(defparameter *PLURALS-OF-EXISTING-WORDS* '((BACTERIUM "Salmonellae"
                                             "NCIT:C76380" :NAME "salmonella") ;done 
                                            (CANCER "leukemias" "EFO:0000565"
                                             :NAME "leukemia");dealt with
                                            (CELL-TYPE "microglias"
                                             "BTO:0000078" :NAME "microglia")
                                            (CELL-LINE "MORs" "EFO:0006655"
                                             :NAME "MOR")
                                            (CELL-LINE "NIH3T3s" "EFO:0001222"
                                             :NAME "NIH3T3")
                                            (CELLULAR-LOCATION "buds"
                                             "UP:SL-0027" :NAME "Bud")
                                            (CELLULAR-LOCATION "microvilli"
                                             "UP:SL-0293" :NAME "Microvillus"); dealt with
                                            (MOLECULE "inducers" "NCIT:C120268"
                                             :NAME "inducer")
                                            (BIO-COMPLEX "chromatins"
                                             "GO:0000785" :NAME "chromatin")
                                            (BIO-COMPLEX "enhanceosomes"
                                             "GO:0034206" :NAME "enhanceosome")
                                            (DISEASE "ataxias" "NCIT:C26702"
                                             :NAME "ataxia");done
                                            (DISEASE "nevi" "EFO:0000625" :NAME
                                             "nevus")
                                            (PROTEIN-DOMAIN "PCIs"
                                             "XFAM:PF01399.25" :NAME "PCI")
                                            (PROTEIN-DOMAIN "PiDs"
                                             "XFAM:PF00640.21" :NAME "PID")
                                            (PROTEIN-DOMAIN "pCPs"
                                             "XFAM:PF02429.13" :NAME "PCP")
                                            (MOLECULE "cytochromes"
                                             "CHEBI:4056" :NAME "cytochrome")
                                            (DRUG "methylamines" "MESH:C027451"
                                             :NAME "methylamine")
                                            (DRUG "hallucinogens" "CHEBI:35499"
                                             :NAME "hallucinogen")
                                            (DRUG "vanilloids" "NCIT:C1955"
                                             :NAME "vanilloid")
                                            (DRUG "benzothiophenes"
                                             "MESH:C088015" :NAME
                                             "benzothiophene")
                                            (DRUG "antioxidants" "NCIT:C275"
                                             :NAME "antioxidant")
                                            (DRUG "catechols" "MESH:C034221"
                                             :NAME "catechol")
                                            (DRUG "cyclofenils" "NCIT:C78030"
                                             :NAME "cyclofenil")
                                            (DRUG "fluoroquinolones"
                                             "NCIT:C126712" :NAME
                                             "fluoroquinolone")
                                            (DRUG "indoles" "MESH:C030374"
                                             :NAME "indole")
                                            (DRUG "immunotoxins" "NCIT:C575"
                                             :NAME "immunotoxin")
                                            (DRUG "hydrazines" "NCIT:C29097"
                                             :NAME "hydrazine")
                                            (DRUG "maleimides" "MESH:C043592"
                                             :NAME "maleimide")
                                            (DRUG "oxindoles" "MESH:C508198"
                                             :NAME "oxindole")
                                            (DRUG "phenothiazines" "NCIT:C740"
                                             :NAME "phenothiazine")
                                            (DRUG "saRNAs" "NCIT:C29445" :NAME
                                             "sarna");dealt with
                                            (DRUG "taxanes" "MESH:C080625"
                                             :NAME "taxane")
                                            (DRUG "sunscreens" "NCIT:C851"
                                             :NAME "sunscreen")
                                            (DRUG "uridines" "NCIT:C922" :NAME
                                             "uridine")
                                            (ORGANISM "thymi" "NCIT:C72480"
                                             :NAME "thymus") ;done
                                            (CELLULAR-LOCATION "pili"
                                             "GO:0009289" :NAME "pilus")
                                            (MOLECULE "oxysterols"
                                             "CHEBI:53030" :NAME "oxysterol")
                                            (MOLECULE "sterols" "CHEBI:15889"
                                             :NAME "sterol")
                                            (BIO-COMPLEX "nucleosomes"
                                             "GO:0000786" :NAME "nucleosome")
                                            (DISEASE "cirrhoses" "NCIT:C2951"
                                             :NAME "cirrhosis");done
                                            (PROTEIN-DOMAIN "MRPs"
                                             "XFAM:PF09387.8" :NAME "MRP")
                                            (MOLECULE "quinones" "CHEBI:36141"
                                             :NAME "quinone")))

(defparameter *DIFF-POS-OF-EXISTING-WORDS* '((BIO-PROCESS "Inflammation"
                                              "GO:0006954"
                                              "inflammatory response") ;done
                                             (BIO-PROCESS "biosynthetic"
                                              "NCIT:C17702" "biosynthesis");done
                                             (BIO-PROCESS "angiogenic"
                                              "NCIT:C17932" "angiogenesis");done
                                             (BIO-PROCESS "chelation"
                                              "NCIT:C40483"
                                              "chelating activity");done
                                             (BIO-PROCESS "diastolic"
                                              "NCIT:C62109" "diastole");done
                                             (BIO-PROCESS "degenerative"
                                              "NCIT:C61557" "degeneration");done
                                             (BIO-PROCESS "glycosylases"
                                              "GO:0016798"
                                              "hydrolase activity, acting on glycosyl bonds");kind of
                                             (BIO-PROCESS "glycosylase"
                                              "GO:0016798"
                                              "hydrolase activity, acting on glycosyl bonds");kind of
                                             (BIO-PROCESS "infiltrating"
                                              "NCIT:C25754" "infiltration")
                                             (BIO-PROCESS "infiltrated"
                                              "NCIT:C25754" "infiltration")
                                             (BIO-PROCESS "lytic" "NCIT:C37889"
                                              "lysis");done
                                             (BIO-PROCESS "systolic"
                                              "NCIT:C62110" "systole");done
                                             (CANCER "hepatoma" "NCIT:C3099"
                                              "hepatocellular carcinoma");done
                                             (CELLULAR-LOCATION "budded"
                                              "UP:SL-0027" "Bud")
                                             (CELLULAR-LOCATION "spindled"
                                              "UP:SL-0251" "Spindle")
                                             (MOLECULE "poisoning"
                                              "CHEBI:64909" "poison")
                                             (DISEASE "Infection" "NCIT:C26726"
                                              "infectious disorder");done
                                             (DISEASE "asthmatic" "EFO:0000270"
                                              "asthma");done
                                             (PROTEIN-DOMAIN "gated"
                                              "XFAM:PF07670.12" "gate")
                                             (POST-TRANSLATIONAL-MODIFICATION
                                              "nitrosylating" "GO:0017014"
                                              "protein nitrosylation");done
                                             (POST-TRANSLATIONAL-MODIFICATION
                                              "nitrosylated" "GO:0017014"
                                              "protein nitrosylation");done
                                             (BIO-METHOD "imputed"
                                              "NCIT:C80304"
                                              "statistical imputation")
                                             (BIO-METHOD "pelleted"
                                              "NCIT:C45813" "pellet formation")
                                             (BIO-METHOD "labeling"
                                              "EFO:0000562" "labelling")
                                             (SUBSTANCE "conjugating"
                                              "NCIT:C61533" "conjugate")
                                             (SUBSTANCE "conjugated"
                                              "NCIT:C61533" "conjugate")))

(defparameter *SYNONYM-FOR-EXISTING-WORDS* '((BIO-PROCESS "GGR" "GO:0070911"
                                              "global genome nucleotide-excision repair")
                                             (BIO-PROCESS "G1phase"
                                              "NCIT:C17355" "G1-phase")
                                             (BIO-PROCESS "catabolic"
                                              "NCIT:C41544"
                                              "catabolic process");done
                                             (BIO-PROCESS "crosstalk"
                                              "NCIT:C94304" "cross-talk")
                                             (BIO-PROCESS "oncogenesis"
                                              "NCIT:C18121" "tumorigenesis");done
                                             (BIO-PROCESS "phlebotomy"
                                              "GO:0044369"
                                              "feeding on blood of other organism")
                                             (BIO-PROCESS "rearrangements"
                                              "NCIT:C21069"
                                              "DNA sequence rearrangement")
                                             (BIO-PROCESS "rearrangement"
                                              "NCIT:C21069"
                                              "DNA sequence rearrangement")
                                             (BIO-PROCESS "vascularization"
                                              "NCIT:C16900"
                                              "neovascularization");done
                                             (CANCER "HGPIN" "NCIT:C5541"
                                              "high-grade prostatic intraepithelial neoplasia") ;not defined
                                             (CANCER "HSIL" "NCIT:C8336"
                                              "high-grade squamous intraepithelial neoplasia");not defined
                                             (CANCER "PanIN3" "NCIT:C95432"
                                              "pancreatic intraepithelial neoplasia-3");done
                                             (CANCER "PanIN1A" "NCIT:C95429"
                                              "pancreatic intraepithelial neoplasia-1A");done
                                             (CANCER "PanIN1" "NCIT:C6820"
                                              "grade I pancreatic intraepithelial neoplasia");done
                                             (CANCER "RAEB2" "NCIT:C7168"
                                              "RAEB-2");done
                                             (CELL-TYPE "lactotropes"
                                              "CO:0002311" "mammotroph");done
                                             (CELL-TYPE "Hsc" "BTO:0000725"
                                              "hematopoietic stem cell");done
                                             (CELL-TYPE "HSCs" "BTO:0000725"
                                              "hematopoietic stem cell");done
                                             (CELL-TYPE "LEC" "CO:0002138"
                                              "endothelial cell of lymphatic vessel")
                                             (CELL-TYPE "RBCs" "BTO:0000424"
                                              "erythrocyte")
                                             (CELL-TYPE "RbC" "BTO:0000424"
                                              "erythrocyte")
                                             (CELL-TYPE "TCell" "BTO:0000782"
                                              "T-lymphocyte")
                                             (CELL-TYPE "gonadotroph"
                                              "CO:0000437" "gonadtroph")
                                             (CELL-TYPE "histiocyte"
                                              "CO:0000235" "macrophage")
                                             (CELL-TYPE "myocytes" "CO:0000187"
                                              "muscle cell")
                                             (CELL-TYPE "myocyte" "CO:0000187"
                                              "muscle cell")
                                             (CELL-TYPE "motoneurones"
                                              "CO:0000100" "motor neuron")
                                             (CELL-TYPE "motoneurone"
                                              "CO:0000100" "motor neuron")
                                             (CELL-TYPE "oogonia" "CO:0000023"
                                              "oocyte")
                                             (CELL-LINE "Int407" "CVCL:1907"
                                              "Intestine 407")
                                             ;all cells above done
                                             (CELL-LINE "RGC5" "CVCL:4059"
                                              "RGC-5")
                                             (CELL-LINE "GTL16" "CVCL:7668"
                                              "GTL-16")
                                             (CELL-LINE "GM639" "CVCL:7299"
                                              "GM00639")
                                             (CELL-LINE "GM0637" "CVCL:7297"
                                              "GM00637")
                                             (CELL-LINE "Flo1" "CVCL:2045"
                                              "FLO-1")
                                             (CELL-LINE "HPDE6C7" "CVCL:0P38"
                                              "HPDE6c7")
                                             (CELL-LINE "HMC1.2" "CVCL:H205"
                                              "HMC-1.2")
                                             (CELL-LINE "HMC1.1" "CVCL:H206"
                                              "HMC-1.1")
                                             (CELL-LINE "HLEB3" "CVCL:6367"
                                              "B-3")
                                             (CELL-LINE "HKC8" "CVCL:Y910"
                                              "HKC-8")
                                             (CELL-LINE "HEK293FT" "CVCL:6911"
                                              "HEK293-FT")
                                             (CELL-LINE "HCE4" "CVCL:1271"
                                              "HCE-4")
                                             (CELL-LINE "HBL2" "CVCL:4216"
                                              "HBL-2 [Human mantle cell lymphoma]")
                                             (CELL-LINE "HBL1" "CVCL:4213"
                                              "HBL-1 [Human diffuse large B-cell lymphoma]")
                                             (CELL-LINE "HBEC3KT" "CVCL:X491"
                                              "HBEC3-KT")
                                             (CELL-LINE "HBEC3" "CVCL:X491"
                                              "HBEC3-KT")
                                             (CELL-LINE "HB4aC5.2" "CVCL:J984"
                                              "C5.2")
                                             (CELL-LINE "HA1" "CVCL:Z978"
                                              "CSIRO-BCIRL-HA1")
                                             (CELL-LINE "IGRN91" "CVCL:8883"
                                              "IGR-N-91")
                                             (CELL-LINE "IEC6" "CVCL:0343"
                                              "IEC-6")
                                             (CELL-LINE "Huh7" "EFO:0005384"
                                              "HuH-7")
                                             (CELL-LINE "Hone1" "CVCL:8706"
                                              "HONE-1")
                                             (CELL-LINE "Hepa1" "CVCL:S550"
                                              "Hepa-1")
                                             (CELL-LINE "HUVECs" "BTO:0001949"
                                              "HUVEC cell")
                                             (CELL-LINE "HT29" "CVCL:0320"
                                              "HT-29")
                                             (CELL-LINE "HSB2" "CVCL:1859"
                                              "CCRF-HSB-2")
                                             (CELL-LINE "HSB" "CVCL:1859"
                                              "CCRF-HSB-2")
                                             (CELL-LINE "KAT18" "CVCL:6303"
                                              "KAT-18")
                                             (CELL-LINE "Jimt1" "CVCL:2077"
                                              "JIMT-1")
                                             (CELL-LINE "JIMT" "CVCL:2077"
                                              "JIMT-1")
                                             (CELL-LINE "IOSE29" "CVCL:5535"
                                              "IOSE-29")
                                             (CELL-LINE "IMR90" "CVCL:0347"
                                              "IMR-90")
                                             (CELL-LINE "IMCD3" "CVCL:0429"
                                              "mIMCD-3")
                                             (CELL-LINE "LX2" "CVCL:5792"
                                              "LX-2")
                                             (CELL-LINE "LNZ308" "CVCL:0394"
                                              "LN-308")
                                             (CELL-LINE "LN382" "CVCL:3956"
                                              "LN-382")
                                             (CELL-LINE "LLCPK1" "CVCL:0391"
                                              "LLC-PK1")
                                             (CELL-LINE "LCMS" "CVCL:1655"
                                              "RERF-LC-MS")
                                             (CELL-LINE "LAMA84" "CVCL:0388"
                                              "LAMA-84")
                                             (CELL-LINE "Kasumi1" "CVCL:0589"
                                              "Kasumi-1")
                                             (CELL-LINE "Karpas299" "CVCL:1324"
                                              "Karpas-299")
                                             (CELL-LINE "KT3" "CVCL:6293"
                                              "KT-3")
                                             (CELL-LINE "KMS12BM" "EFO:0006612"
                                              "KMS-12-BM")
                                             (CELL-LINE "MM6" "CVCL:1426"
                                              "Mono-Mac-6")
                                             (CELL-LINE "MLE12" "CVCL:3751"
                                              "MLE-12")
                                             (CELL-LINE "MHCC97H" "CVCL:4972"
                                              "MHCC97-H")
                                             (CELL-LINE "MGC803" "CVCL:5334"
                                              "MGC-803")
                                             (CELL-LINE "MFE296" "CVCL:1406"
                                              "MFE-296")
                                             (CELL-LINE "MDCK2" "CVCL:0424"
                                              "MDCK-II")
                                             (CELL-LINE "MDAPCa2b" "CVCL:4748"
                                              "MDA-PCa-2b")
                                             (CELL-LINE "MDA453" "CVCL:0418"
                                              "MDA-MB-453")
                                             (CELL-LINE "MDA436" "CVCL:0623"
                                              "MDA-MB-436")
                                             (CELL-LINE "MDA231" "CVCL:0062"
                                              "MDA-MB-231")
                                             (CELL-LINE "MCF12A" "CVCL:3744"
                                              "MCF-12A")
                                             (CELL-LINE "MB468" "CVCL:0419"
                                              "MDA-MB-468")
                                             (CELL-LINE "MB02" "CVCL:7075"
                                              "MB-02")
                                             (CELL-LINE "MAC2A" "CVCL:H637"
                                              "Mac-2A")
                                             (CELL-LINE "LβT2" "EFO:0002070"
                                              "LbetaT2")
                                             (CELL-LINE "Ly10" "CVCL:8795"
                                              "OCI-Ly10")
                                             (CELL-LINE "Ly1" "CVCL:1879"
                                              "OCI-Ly1")
                                             (CELL-LINE "Lu451" "CVCL:6357"
                                              "451Lu")
                                             (CELL-LINE "NCIH460" "CVCL:0459"
                                              "NCI-H460")
                                             (CELL-LINE "NCIH1299" "CVCL:0060"
                                              "NCI-H1299")
                                             (CELL-LINE "NBLs" "CVCL:2136"
                                              "NBL-S")
                                             (CELL-LINE "NB1691" "CVCL:5628"
                                              "NB-1691")
                                             (CELL-LINE "MzChA1" "CVCL:6932"
                                              "Mz-ChA-1")
                                             (CELL-LINE "MonoMac6" "CVCL:1426"
                                              "Mono-Mac-6")
                                             (CELL-LINE "Mo7e" "CVCL:2106"
                                              "M-07e")
                                             (CELL-LINE "Mel501" "CVCL:4633"
                                              "501-mel")
                                             (CELL-LINE "MSTO211H" "CVCL:1430"
                                              "MSTO-211H")
                                             (CELL-LINE "OPM2" "CVCL:1625"
                                              "OPM-2")
                                             (CELL-LINE "ONS76" "CVCL:1624"
                                              "ONS-76")
                                             (CELL-LINE "NSO" "CVCL:3940"
                                              "NS0")
                                             (CELL-LINE "NIHOVCAR3" "CVCL:0465"
                                              "OVCAR-3")
                                             (CELL-LINE "NIE115" "CVCL:0451"
                                              "N1E-115")
                                             (CELL-LINE "PC3MM2" "CVCL:4885"
                                              "PC3-MM2")
                                             (CELL-LINE "PC3M" "CVCL:9555"
                                              "PC-3M")
                                             (CELL-LINE "PC1" "EFO:0002842"
                                              "PC-1")
                                             (CELL-LINE "PA1" "CVCL:0479"
                                              "PA-1")
                                             (CELL-LINE "P3HR1" "CVCL:2676"
                                              "P3HR-1")
                                             (CELL-LINE "OX1" "CVCL:G677"
                                              "OX-1")
                                             (CELL-LINE "OVCAR433"
                                              "EFO:0006723" "OVCA433")
                                             (CELL-LINE "OVCAR420" "CVCL:3935"
                                              "OVCA420")
                                             (CELL-LINE "OVCA5" "CVCL:1628"
                                              "OVCAR-5")
                                             (CELL-LINE "OV2774" "CVCL:0420"
                                              "MDAH 2774")
                                             (CELL-LINE "PancTu1" "CVCL:4012"
                                              "PancTu-I")
                                             (CELL-LINE "PPMMill" "CVCL:E110"
                                              "PPM-Mill")
                                             (CELL-LINE "PLCPRF5" "CVCL:0485"
                                              "PLC/PRF/5")
                                             (CELL-LINE "PLB985" "CVCL:2162"
                                              "PLB-985")
                                             (CELL-LINE "RT4P" "CVCL:0036"
                                              "RT-4")
                                             (CELL-LINE "RPMI7951" "CVCL:1666"
                                              "RPMI-7951")
                                             (CELL-LINE "RMGI" "CVCL:1662"
                                              "RMG-I")
                                             (CELL-LINE "RLD1" "CVCL:2179"
                                              "RLD-1")
                                             (CELL-LINE "RL95" "CVCL:0505"
                                              "RL95-2")
                                             (CELL-LINE "QSG7701" "CVCL:6944"
                                              "QSG-7701")
                                             (CELL-LINE "QGY7703" "CVCL:6715"
                                              "QGY-7703")
                                             (CELL-LINE "QGY" "CVCL:6715"
                                              "QGY-7703")
                                             (CELL-LINE "RWPE1" "CVCL:3791"
                                              "RWPE-1")
                                             (CELL-LINE "Sb2" "CVCL:0516"
                                              "SB-2")
                                             (CELL-LINE "SUPM2" "CVCL:2209"
                                              "SUP-M2")
                                             (CELL-LINE "SUM185" "CVCL:5591"
                                              "SUM185PE")
                                             (CELL-LINE "SUM159" "CVCL:5423"
                                              "SUM159PT")
                                             (CELL-LINE "SUM149" "CVCL:3422"
                                              "SUM149PT")
                                             (CELL-LINE "SUDHL4" "CVCL:0539"
                                              "SU-DHL-4")
                                             (CELL-LINE "SNU638" "CVCL:0102"
                                              "SNU-638")
                                             (CELL-LINE "SNU5" "CVCL:0078"
                                              "SNU-5")
                                             (CELL-LINE "SNU182" "CVCL:0090"
                                              "SNU-182")
                                             (CELL-LINE "SKNBe" "CVCL:0528"
                                              "SK-N-BE(2)")
                                             (CELL-LINE "SKMel13" "CVCL:6022"
                                              "SK-MEL-13")
                                             (CELL-LINE "SKMEL173" "CVCL:6090"
                                              "SK-MEL-173")
                                             (CELL-LINE "SKMEL147" "CVCL:3876"
                                              "SK-MEL-147")
                                             (CELL-LINE "SKGT4" "CVCL:2195"
                                              "SK-GT-4")
                                             (CELL-LINE "SJSA" "CVCL:1697"
                                              "SJSA-1")
                                             (CELL-LINE "SHPT1" "CVCL:0I22"
                                              "sHPT-1")
                                             (CELL-LINE "SCC90" "CVCL:1899"
                                              "UPCI-SCC-090")
                                             (CELL-LINE "SCC22B" "CVCL:7732"
                                              "UM-SCC-22B")
                                             (CELL-LINE "SCC22A" "CVCL:7731"
                                              "UM-SCC-22A")
                                             (CELL-LINE "SupT11" "CVCL:2210"
                                              "SUP-T11")
                                             (CELL-LINE "SkMel5" "CVCL:0527"
                                              "SK-MEL-5")
                                             (CELL-LINE "Simon" "CVCL:0097"
                                              "SIM/EW27")
                                             (CELL-LINE "Tn5" "CVCL:C190"
                                              "BTI-Tn-5B1-4")
                                             (CELL-LINE "TZMbl" "CVCL:B478"
                                              "TZM-bl")
                                             (CELL-LINE "TW01" "CVCL:6008"
                                              "NPC-TW01")
                                             (CELL-LINE "TREx293" "CVCL:D585"
                                              "T-REx-293")
                                             (CELL-LINE "TOV21G" "CVCL:3613"
                                              "TOV-21G")
                                             (CELL-LINE "TMI" "CVCL:F787"
                                              "TM1")
                                             (CELL-LINE "TE13" "CVCL:4463"
                                              "TE-13")
                                             (CELL-LINE "TC71" "CVCL:2213"
                                              "TC-71")
                                             (CELL-LINE "TC32" "CVCL:7151"
                                              "TC-32")
                                             (CELL-LINE "a10" "CVCL:0130"
                                              "A-10")
                                             (CELL-LINE "Wi38" "CVCL:0579"
                                              "WI-38")
                                             (CELL-LINE "WPMY1" "CVCL:3814"
                                              "WPMY-1")
                                             (CELL-LINE "WI38VA13" "CVCL:2759"
                                              "WI-38 VA13 subline 2RA")
                                             (CELL-LINE "WC00125" "CVCL:6801"
                                              "WM3854")
                                             (CELL-LINE "and2" "CVCL:B527"
                                              "AND-2")
                                             (CELL-LINE "cT3" "CVCL:B848"
                                              "CT-3")
                                             (CELL-LINE "hepa1c1c7" "CVCL:0328"
                                              "Hepa-1c1c7")
                                             (CELL-LINE "hL1" "CVCL:0303"
                                              "HL-1")
                                             (CELL-LINE "mimicking" "CVCL:Z366"
                                              "SfSWT-1")
                                             (CELL-LINE "skhep1" "CVCL:0525"
                                              "SK-HEP-1")
                                             (CELL-LINE "tsa201" "CVCL:2737"
                                              "tsA201")
                                             (CELLULAR-LOCATION "C-fibre"
                                              "GO:0044299" "C-fiber");done
                                             (CELLULAR-LOCATION "MOM"
                                              "GO:0036407"
                                              "mycolate outer membrane");done
                                             (CELLULAR-LOCATION "MVB"
                                              "GO:0005771"
                                              "multivesicular body");done
                                             (CELLULAR-LOCATION "MUM"
                                              "GO:0036407"
                                              "mycolate outer membrane");wrong
                                             (CELLULAR-LOCATION "ND10"
                                              "GO:0016605" "PML body");done
                                             (CELLULAR-LOCATION "core"
                                              "GO:0019013"
                                              "viral nucleocapsid")
                                             (CELLULAR-LOCATION "chromocentres"
                                              "GO:0010369" "chromocenter");done
                                             (CELLULAR-LOCATION "bud"
                                              "UP:SL-0027" "Bud");done
                                             (CELLULAR-LOCATION "fimbriae"
                                              "GO:0009289" "pilus");done
                                             (CELLULAR-LOCATION "fimbria"
                                              "GO:0009289" "pilus");done
                                             (CELLULAR-LOCATION "septa"
                                              "GO:0030428" "cell septum");done
                                             (CELLULAR-LOCATION "sulcus"
                                              "GO:0097612"
                                              "dinoflagellate sulcus")
                                             (CELLULAR-LOCATION "transGolgi"
                                              "UP:SL-0266"
                                              "trans-Golgi network")
                                             ;all cell-loc done
                                             (MOLECULE "DMAB" "NCIT:C44324"
                                              "4-dimethylaminoazobenzene")
                                             (MOLECULE "Kepone" "NCIT:C44352"
                                              "chlordecone")
                                             (MOLECULE "NO2" "CHEBI:16301"
                                              "nitrite");done
                                             (MOLECULE "aminotriazole"
                                              "NCIT:C44331" "amitrole")
                                             (MOLECULE "estradiol-17β"
                                              "CHEBI:16469" "17beta-estradiol")
                                             (MOLECULE "retinaldehyde"
                                              "CHEBI:17898"
                                              "all-trans-retinal")
                                             (MOLECULE "plasticizers"
                                              "CHEBI:79056" "plasticiser");done
                                             (MOLECULE "plasticizer"
                                              "CHEBI:79056" "plasticiser");done
                                             (MOLECULE "oxidizer" "CHEBI:63248"
                                              "oxidising agent")
                                             (MOLECULE "IAA" "CHEBI:16411"
                                              "indole-3-acetic acid")
                                             (MOLECULE "I.E.S" "CHEBI:16411"
                                              "indole-3-acetic acid")
                                             (MOLECULE "Hcy" "CHEBI:17230"
                                              "homocysteine")
                                             (MOLECULE "JC1" "CHEBI:52097"
                                              "1,1',3,3'-tetraethyl-5,5',6,6'-tetrachloroimidacarbocyanine iodide")
                                             (MOLECULE "NMDA" "CHEBI:31882"
                                              "N-methyl-D-aspartic acid")
                                             (MOLECULE "PGF2a" "CHEBI:15553"
                                              "prostaglandin F2alpha")
                                             (MOLECULE "Oxa" "CHEBI:53076"
                                              "4-(ethoxymethylene)-2-phenyloxazol-5-one")
                                             (MOLECULE "SAH" "CHEBI:16680"
                                              "S-adenosyl-L-homocysteine")
                                             (MOLECULE "SU5271" "CHEBI:91076"
                                              "PD-153035")
                                             (MOLECULE "ToPro3" "CHEBI:52297"
                                              "To-Pro-3")
                                             (MOLECULE "YoPro1" "CHEBI:51225"
                                              "Yo-Pro-1")
                                             (MOLECULE "Xgal" "CHEBI:75055"
                                              "5-bromo-4-chloro-3-indolyl beta-D-galactoside")
                                             (MOLECULE "bisulfite"
                                              "CHEBI:17137" "hydrogensulfite")
                                             (MOLECULE "acylCoA" "CHEBI:17984"
                                              "acyl-CoA")
                                             (MOLECULE "actinomycinD"
                                              "CHEBI:27666" "actinomycin D")
                                             (MOLECULE "acetylglucosamine"
                                              "CHEBI:28009"
                                              "N-acetyl-beta-D-glucosamine")
                                             (MOLECULE "carbobenzoxy"
                                              "CHEBI:51097"
                                              "benzyloxycarbonyl group")
                                             (MOLECULE "dicysteine"
                                              "CHEBI:17376" "cystine")
                                             (MOLECULE "cytidin" "CHEBI:17562"
                                              "cytidine")
                                             (MOLECULE "curdlan" "CHEBI:37671"
                                              "(1->3)-beta-D-glucan")
                                             (MOLECULE "formalin" "NCIT:C29744"
                                              "formaldehyde")
                                             (MOLECULE "hematoxylin"
                                              "CHEBI:51686" "haematoxylin")
                                             (MOLECULE "hem" "CHEBI:30413"
                                              "heme")
                                             (MOLECULE "haemin" "CHEBI:50385"
                                              "hemin")
                                             (MOLECULE "nucleophile"
                                              "CHEBI:59740"
                                              "nucleophilic reagent")
                                             (MOLECULE "nnn" "NCIT:C44414"
                                              "nitrosonornicotine")
                                             (MOLECULE "nickle" "NCIT:C690"
                                              "nickel")
                                             (MOLECULE "oxidizers"
                                              "CHEBI:63248" "oxidising agent")
                                             (MOLECULE "oestrogen"
                                              "CHEBI:50114" "estrogen")
                                             (MOLECULE "oestradiol"
                                              "CHEBI:23965" "estradiol")
                                             (MOLECULE "sepharose" "CHEBI:2511"
                                              "agarose")
                                             (MOLECULE "vitaminD" "CHEBI:27300"
                                              "vitamin D")
                                             (MOLECULE "βestradiol"
                                              "CHEBI:16469" "17beta-estradiol")
                                             (UNIT-OF-MEASURE "Micron"
                                              "UO:0000017" "micrometer")
                                             (UNIT-OF-MEASURE "nanometre"
                                              "UO:0000018" "nanometer")
                                             (BIO-COMPLEX "IgG2c" "GO:0071735"
                                              "IgG immunoglobulin complex")
                                             (BIO-COMPLEX "PIKE" "GO:0019035"
                                              "viral integration complex")
                                             (BIO-COMPLEX "TORC1" "GO:0031931"
                                              "TORC1 complex")
                                             (BIO-COMPLEX "pMHC" "NCIT:C18930"
                                              "peptide MHC complex")
                                             (BIO-COMPLEX "γTuRCs" "GO:0008274"
                                              "gamma-tubulin ring complex")
                                             (BIO-COMPLEX "γTuRC" "GO:0008274"
                                              "gamma-tubulin ring complex")
                                             (UNIT-OF-MEASURE "mMoles"
                                              "UO:0000040" "millimole")
                                             (UNIT-OF-MEASURE "nmoles"
                                              "UO:0000041" "nanomole")
                                             (UNIT-OF-MEASURE "nmole"
                                              "UO:0000041" "nanomole")
                                             (UNIT-OF-MEASURE "mmole"
                                              "UO:0000040" "millimole")
                                             (UNIT-OF-MEASURE "pmoles"
                                              "UO:0000042" "picomole")
                                             (UNIT-OF-MEASURE "pmole"
                                              "UO:0000042" "picomole")
                                             (DISEASE "hypokalaemia"
                                              "HP:0002900" "hypokalemia")
                                             (DISEASE "Flu" "EFO:0007328"
                                              "influenza")
                                             (DISEASE "HFAs" "NCIT:C6729"
                                              "flat adenoma syndrome")
                                             (DISEASE "Let" "NCIT:C117112"
                                              "lupus erythematosus tumidus")
                                             (DISEASE "STIs" "NCIT:C3365"
                                              "sexually transmitted disorder")
                                             (DISEASE "STI" "NCIT:C3365"
                                              "sexually transmitted disorder")
                                             (DISEASE "TGCT" "NCIT:C8591"
                                              "testicular germ cell neoplasm")
                                             (DISEASE "dSSc" "NCIT:C116791"
                                              "diffuse cutaneous systemic sclerosis")
                                             (DISEASE "hyperopia" "HP:0000540"
                                              "hypermetropia")
                                             (DISEASE "hypercholesterolaemia"
                                              "HP:0003124"
                                              "hypercholesterolemia")
                                             (DISEASE "lSSc" "NCIT:C70646"
                                              "CREST syndrome")
                                             (DISEASE "oligozoospermia"
                                              "EFO:0000279" "azoospermia")
                                             (DISEASE "parasitemia"
                                              "EFO:0001067"
                                              "parasitic infection")
                                             (DISEASE "pneumothoraces"
                                              "NCIT:C38006" "pneumothorax")
                                             (PROTEIN-DOMAIN "CDHC"
                                              "XFAM:PF03598.13" "CdhC")
                                             (PROTEIN-DOMAIN "Fzs"
                                              "XFAM:PF01392.20" "fz")
                                             (PROTEIN-DOMAIN "furinlike"
                                              "XFAM:PF00757.18" "furin-like")
                                             (PROTEIN-DOMAIN "RESs"
                                              "XFAM:PF08808.9" "RES")
                                             (PROTEIN-DOMAIN "RCTs"
                                              "XFAM:PF01137.19" "RTC")
                                             (PROTEIN-DOMAIN "RCT"
                                              "XFAM:PF01137.19" "RTC")
                                             (PROTEIN-DOMAIN "SssI"
                                              "XFAM:PF00720.15" "SSI")
                                             (PROTEIN-DOMAIN "fbox"
                                              "XFAM:PF00646.31" "F-box")
                                             (PROTEIN-DOMAIN "interferonγ"
                                              "XFAM:PF00714.15" "IFN-gamma")
                                             (PROTEIN-DOMAIN "mgs1"
                                              "XFAM:PF11974.6" "MG1")
                                             (PROTEIN-DOMAIN "prosteasome"
                                              "XFAM:PF00227.24" "proteasome")
                                             (PROTEIN-DOMAIN "prong"
                                              "XFAM:PF01850.19" "PIN")
                                             (PROTEIN-DOMAIN
                                              "phosphoribosyltransferase"
                                              "XFAM:PF02277.15" "DBI PRT")
                                             (MOLECULE "ActivinA" "CHEBI:81351"
                                              "Activin A")
                                             (MOLECULE "AMPPNP" "CHEBI:47785"
                                              "AMP-PNP")
                                             (MOLECULE "GlcN" "CHEBI:5417"
                                              "glucosamine")
                                             (MOLECULE "arylamine"
                                              "CHEBI:33860" "aromatic amine")
                                             (MOLECULE "Unt" "CHEBI:33397"
                                              "lawrencium atom")
                                             (MOLECULE "TEPA" "CHEBI:49798"
                                              "tetraethylenepentamine")
                                             (MOLECULE "triterpen"
                                              "CHEBI:35191" "triterpene")
                                             (MOLECULE "thioether"
                                              "CHEBI:16385" "organic sulfide")
                                             (MOLECULE "tamoxifene"
                                              "CHEBI:41774" "tamoxifen")
                                             (MOLECULE "Fluorogold"
                                              "CHEBI:53251"
                                              "poly(tetrafluoroethylene)")
                                             (MOLECULE "HDLC" "CHEBI:47775"
                                              "high-density lipoprotein cholesterol")
                                             (MOLECULE "Monocarboxylate"
                                              "CHEBI:35757"
                                              "monocarboxylic acid anion")
                                             (MOLECULE "Monoacylglycerol"
                                              "CHEBI:17408" "monoglyceride")
                                             (MOLECULE "MeOH" "CHEBI:17790"
                                              "methanol")
                                             (MOLECULE "OR2" "CHEBI:25698"
                                              "ether")
                                             (MOLECULE "OAADPr" "CHEBI:76279"
                                              "2''-O-acetyl-ADP-D-ribose")
                                             (MOLECULE "OSI" "CHEBI:30588"
                                              "silicon monoxide")
                                             (MOLECULE "Pei" "CHEBI:53231"
                                              "poly(ethylene imine)")
                                             (MOLECULE "PR39" "CHEBI:131850"
                                              "PR-39")
                                             (MOLECULE "Ribofuranosyl"
                                              "CHEBI:26565" "ribosyl group")
                                             (MOLECULE "Radium" "CHEBI:33325"
                                              "radium atom")
                                             (MOLECULE "biotinyl" "CHEBI:22885"
                                              "biotinyl group")
                                             (MOLECULE "benzyl" "CHEBI:22744"
                                              "benzyl group")
                                             (MOLECULE "arachidoyl"
                                              "CHEBI:22614" "arachidoyl group")
                                             (MOLECULE "amino" "CHEBI:46882"
                                              "primary amino group")
                                             (MOLECULE "carboximide"
                                              "CHEBI:37622" "carboxamide")
                                             (MOLECULE "carbinol" "CHEBI:17790"
                                              "methanol")
                                             (MOLECULE "dodecyl" "CHEBI:23870"
                                              "dodecyl group")
                                             (MOLECULE "disulphide"
                                              "CHEBI:48343" "disulfide")
                                             (MOLECULE "manganese"
                                              "CHEBI:35154" "manganese(0)")
                                             (MOLECULE "nH2" "CHEBI:46882"
                                              "primary amino group")
                                             (MOLECULE "myristoyl"
                                              "CHEBI:25456"
                                              "tetradecanoyl group")
                                             (MOLECULE "mercaptoacetate"
                                              "CHEBI:30066"
                                              "thioglycolate(1-)")
                                             (MOLECULE "platin" "CHEBI:33364"
                                              "platinum")
                                             (MOLECULE "phosphatidyl"
                                              "CHEBI:26025"
                                              "phosphatidyl group")
                                             (MOLECULE "sulphur" "CHEBI:17909"
                                              "polysulfur")
                                             (MOLECULE "sulpho" "CHEBI:29922"
                                              "sulfo group")
                                             (MOLECULE "sulfonylureas"
                                              "CHEBI:76983" "N-sulfonylurea")
                                             (MOLECULE "sulfonylurea"
                                              "CHEBI:76983" "N-sulfonylurea")
                                             (MOLECULE "sulfenyl" "CHEBI:29830"
                                              "sulfanediyl group")
                                             (RNA "premRNA" "NCIT:C111298"
                                              "precursor mRNA")
                                             (ORGANISM "LEW" "NCIT:C106538"
                                              "lewis rat strain")
                                             (ORGANISM "Macaca" "NCIT:C14231"
                                              "macaque")
                                             (ORGANISM "macacus" "NCIT:C14231"
                                              "macaque")
                                             (ORGANISM "protozoan"
                                              "NCIT:C77916" "protozoa")
                                             (ORGANISM "taxa" "NCIT:C14250"
                                              "organisms")
                                             (DRUG "ETH" "CHEBI:4885"
                                              "ethionamide")
                                             (DRUG "Cytoxan" "NCIT:C405"
                                              "cyclophosphamide")
                                             (DRUG "CEP-701" "NCIT:C48402"
                                              "lestaurtinib")
                                             (DRUG "BCM" "NCIT:C1154"
                                              "carbendazim")
                                             (DRUG "AZQ" "NCIT:C1363"
                                              "diaziquone")
                                             (DRUG "AS703026" "NCIT:C84864"
                                              "MEK inhibitor AS703026")
                                             (DRUG "Lopid" "NCIT:C29071"
                                              "gemfibrozil")
                                             (DRUG "aziridinylbenzoquinones"
                                              "NCIT:C1363" "diaziquone")
                                             (DRUG "arabinofuranosylcytosine"
                                              "NCIT:C408"
                                              "cytosine arabinoside")
                                             (DRUG "antimicrobials" "NCIT:C258"
                                              "antibiotic")
                                             (DRUG "Targretin" "NCIT:C1635"
                                              "bexarotene")
                                             (DRUG "TAK733" "NCIT:C84858"
                                              "MEK inhibitor TAK-733")
                                             (DRUG "SNDX-275" "NCIT:C1863"
                                              "MS-27-275")
                                             (DRUG "decarbazine" "NCIT:C411"
                                              "dacarbazine")
                                             (DRUG "ciclosporin" "NCIT:C406"
                                              "cyclosporine")
                                             (DRUG
                                              "triethylenethiophosphoramide"
                                              "NCIT:C875" "thiotepa")
                                             (DRUG "puromycine" "NCIT:C787"
                                              "puromycin")
                                             (DRUG "predate" "NCIT:C1202"
                                              "prednisolone acetate")
                                             (DRUG "phytonutrients"
                                              "NCIT:C28269" "phytochemical")
                                             (DRUG "ziprazidone" "MESH:C092292"
                                              "ziprasidone")
                                             (DRUG "GS9450" "NCIT:C98213"
                                              "nivocasan")
                                             (DRUG "GDC0980" "NCIT:C91731"
                                              "PI3 kinase mTOR inhibitor GDC-0980")
                                             (DRUG "GDC0879" "CHEBI:83405"
                                              "GDC-0879")
                                             (DRUG "GCV" "NCIT:C517"
                                              "ganciclovir")
                                             (DRUG "Flut" "NCIT:C509"
                                              "flutamide")
                                             (DRUG "Fluo4" "MESH:C409648"
                                              "Fluo 4")
                                             (DRUG "HPAI" "MESH:C016679"
                                              "polyacrylamide")
                                             (DRUG "HMMs" "NCIT:C544"
                                              "altretamine")
                                             (DRUG "HKI272" "NCIT:C49094"
                                              "KI-272")
                                             (DRUG "Go6850" "MESH:C070515"
                                              "bisindolylmaleimide I")
                                             (DRUG "Glycyrrhiza" "NCIT:C61436"
                                              "licorice root extract")
                                             (DRUG "ICRF193" "MESH:C070899"
                                              "4,4'-(1,2-dimethyl-1,2-ethanediyl)bis-2,6-piperazinedione")
                                             (DRUG "Istodax" "NCIT:C1544"
                                              "depsipeptide")
                                             (DRUG "Iclusig" "MESH:C545373"
                                              "ponatinib")
                                             (DRUG "LY2835219" "NCIT:C97660"
                                              "CDK4 6 dual inhibitor LY2835219")
                                             (DRUG "LDK378" "NCIT:C115112"
                                              "ceritinib")
                                             (DRUG "LASP" "NCIT:C286"
                                              "asparaginase")
                                             (DRUG "Kadcyla" "NCIT:C82492"
                                              "trastuzumab-MCC-DM1 conjugate")
                                             (DRUG "MK8776" "MESH:C559815"
                                              "MK-8776")
                                             (DRUG "MK1775" "NCIT:C91725"
                                              "WEE1 inhibitor MK-1775")
                                             (DRUG "MI219" "MESH:C574930"
                                              "MI-219")
                                             (DRUG "MBCs" "NCIT:C1154"
                                              "carbendazim")
                                             (DRUG "Lex" "NCIT:C96898"
                                              "CD15 antigen")
                                             (DRUG "MonoQ" "MESH:C042855"
                                              "Mono Q")
                                             (DRUG "MTX" "NCIT:C642"
                                              "methotrexate")
                                             (DRUG "MRA" "NCIT:C84217"
                                              "tocilizumab")
                                             (DRUG "OGX427" "MESH:C000595177"
                                              "OGX-427")
                                             (DRUG "Nutlin3a" "NCIT:C74594"
                                              "nutlin-3a")
                                             (DRUG "NVPAEW541" "MESH:C501177"
                                              "NVP-AEW541")
                                             (DRUG "NVB" "NCIT:C1395"
                                              "vinorelbine ditartrate")
                                             (DRUG "NSC87877" "MESH:C512715"
                                              "NSC-87877")
                                             (DRUG "NQDI1" "MESH:C000592751"
                                              "2,7-dioxo-2,7-dihydro-3H-naphtho(1,2,3-de)quinoline-1-carboxylate")
                                             (DRUG "NNRTIs" "NCIT:C97453"
                                              "non-nucleoside reverse transcriptase inhibitor")
                                             (DRUG "PF573,228" "MESH:C521108"
                                              "6-(4-(3-(methylsulfonyl)benzylamino)-5-(trifluoromethyl)pyrimidin-2-ylamino)-3,4-dihydroquinolin-2(1H)-one")
                                             (DRUG "PF477736" "NCIT:C68820"
                                              "CHK1 inhibitor PF-477736")
                                             (DRUG "PF06463922" "NCIT:C113655"
                                              "ALK ROS1 inhibitor PF-06463922")
                                             (DRUG "Orbit" "NCIT:C97997"
                                              "propiconazole")
                                             (DRUG "Omnitarg" "MESH:C485206"
                                              "pertuzumab")
                                             (DRUG "OSI774" "NCIT:C2693"
                                              "erlotinib")
                                             (DRUG "Pred" "NCIT:C770"
                                              "prednisone")
                                             (DRUG "Perjeta" "NCIT:C38692"
                                              "pertuzumab")
                                             (DRUG "PWMs" "NCIT:C88789"
                                              "pokeweed mitogen")
                                             (DRUG "PS341" "NCIT:C1851"
                                              "bortezomib")
                                             (DRUG "PPIs" "NCIT:C29723"
                                              "proton pump inhibitor")
                                             (DRUG "PKH26GL" "MESH:C070080"
                                              "PKH 26")
                                             (DRUG "RDCs" "NCIT:C1462"
                                              "radicicol")
                                             (DRUG "RDC" "NCIT:C1462"
                                              "radicicol")
                                             (DRUG "RBV" "CHEBI:63580"
                                              "ribavirin")
                                             (DRUG "RAD001" "NCIT:C48387"
                                              "everolimus")
                                             (DRUG "Ro3306" "MESH:C512984"
                                              "RO 3306")
                                             (DRUG "Reopro" "NCIT:C76128"
                                              "abciximab")
                                             (DRUG "SU5416" "NCIT:C1831"
                                              "semaxanib")
                                             (DRUG "STZ" "NCIT:C845"
                                              "streptozocin")
                                             (DRUG "STI571" "NCIT:C1687"
                                              "imatinib")
                                             (DRUG "STA21" "MESH:C500947"
                                              "STA-21")
                                             (DRUG "ST1571" "MESH:C097613"
                                              "imatinib")
                                             (DRUG "SSRIs" "NCIT:C94725"
                                              "selective serotonin reuptake inhibitor")
                                             (DRUG "SSEA1" "NCIT:C96898"
                                              "CD15 antigen")
                                             (DRUG "SCH727965" "MESH:C553669"
                                              "dinaciclib")
                                             (DRUG "SB415286" "MESH:C417520"
                                              "3-(3-chloro-4-hydroxyphenylamino)-4-(4-nitrophenyl)-1H-pyrrole-2,5-dione")
                                             (DRUG "SB216763" "MESH:C417521"
                                              "SB 216763")
                                             (DRUG "TAAs" "NCIT:C912"
                                              "tumor antigen")
                                             (DRUG "TasQ" "NCIT:C74080"
                                              "tasquinimod")
                                             (DRUG "TX100" "MESH:C551282"
                                              "polyethylene glycol monooctylphenyl ether")
                                             (DRUG "TMZ" "CHEBI:72564"
                                              "temozolomide")
                                             (DRUG "TMPyP" "MESH:C021096"
                                              "tetra(4-N-methylpyridyl)porphine")
                                             (DRUG "TILT" "NCIT:C97997"
                                              "propiconazole")
                                             (DRUG "THC" "NCIT:C867"
                                              "dronabinol")
                                             (DRUG "TDZD8" "MESH:C494356"
                                              "4-benzyl-2-methyl-1,2,4-thiadiazolidine-3,5-dione")
                                             (DRUG "TCN" "NCIT:C865"
                                              "tetracycline")
                                             (DRUG "aRac" "NCIT:C408"
                                              "cytosine arabinoside")
                                             (DRUG "Xtandi" "NCIT:C71744"
                                              "selective androgen receptor modulator MDV3100")
                                             (DRUG "biologic" "NCIT:C307"
                                              "biological agent")
                                             (DRUG "avastin" "NCIT:C2039"
                                              "bevacizumab")
                                             (DRUG "antipsychotic"
                                              "NCIT:C29710"
                                              "antipsychotic agent")
                                             (DRUG "antiandrogen" "NCIT:C242"
                                              "anti-androgen")
                                             (DRUG "anastrazole" "MESH:C090450"
                                              "anastrozole")
                                             (DRUG "aminocaproic" "CHEBI:16586"
                                              "6-aminohexanoic acid")
                                             (DRUG "alkylphospholipid"
                                              "NCIT:C2188"
                                              "alkylphosphocholine compound")
                                             (DRUG "adrenal" "NCIT:C473"
                                              "therapeutic epinephrine")
                                             (DRUG "carboxyfluorescein"
                                              "MESH:C024098"
                                              "6-carboxyfluorescein")
                                             (DRUG "cDDP" "NCIT:C376"
                                              "cisplatin")
                                             (DRUG "depen" "NCIT:C729"
                                              "penicillamine")
                                             (DRUG "deforolimus" "NCIT:C49061"
                                              "AP23573")
                                             (DRUG "d4T" "NCIT:C1428"
                                              "stavudine")
                                             (DRUG "ftorafur" "NCIT:C513"
                                              "tegafur")
                                             (DRUG "fluorodeoxyuridine"
                                              "NCIT:C504" "floxuridine")
                                             (DRUG "feron" "NCIT:C495"
                                              "therapeutic interferon beta")
                                             (DRUG "fedratinib" "MESH:C528327"
                                              "TG101348")
                                             (DRUG "epothilones" "NCIT:C37452"
                                              "ixabepilone")
                                             (DRUG "epinephrine" "NCIT:C473"
                                              "therapeutic epinephrine")
                                             (DRUG "immunomodulators"
                                              "NCIT:C308"
                                              "biological response modifier")
                                             (DRUG "hydroxydaunorubicin"
                                              "NCIT:C1326"
                                              "doxorubicin hydrochloride")
                                             (DRUG "herceptin" "NCIT:C1647"
                                              "trastuzumab")
                                             (DRUG "melting" "MESH:C087030"
                                              "Mel T")
                                             (DRUG "niraparib" "NCIT:C80059"
                                              "PARP inhibitor MK4827")
                                             (DRUG "nEV" "CHEBI:63613"
                                              "nevirapine")
                                             (DRUG "moAbs" "NCIT:C20401"
                                              "monoclonal antibody")
                                             (DRUG "mitomycins" "NCIT:C1820"
                                              "mitomycin C")
                                             (DRUG "mito" "NCIT:C1820"
                                              "mitomycin C")
                                             (DRUG "misto" "NCIT:C1820"
                                              "mitomycin C")
                                             (DRUG "p30" "NCIT:C1183"
                                              "ranpirnase")
                                             (DRUG "oestrone" "CHEBI:17263"
                                              "estrone")
                                             (DRUG "nutlin3" "CHEBI:46742"
                                              "Nutlin-3")
                                             (DRUG "pMSG" "NCIT:C29773"
                                              "pregnant mare serum gonadotropin")
                                             (DRUG "radiosensitizers"
                                              "CHEBI:132992"
                                              "radiosensitizing agent")
                                             (DRUG "radiosensitizer"
                                              "NCIT:C798"
                                              "radiosensitizing agent")
                                             (DRUG "qter" "MESH:C024989"
                                              "coenzyme Q10")
                                             (DRUG "psychostimulants"
                                              "NCIT:C47795" "CNS stimulant")
                                             (DRUG "psychostimulant"
                                              "NCIT:C47795" "CNS stimulant")
                                             (DRUG "platinol" "NCIT:C376"
                                              "cisplatin")
                                             (DRUG "salens" "MESH:C011452"
                                              "disalicylaldehyde ethylenediamine")
                                             (DRUG "retina" "NCIT:C900"
                                              "vitamin A acid")
                                             (DRUG "taxotere" "NCIT:C1526"
                                              "docetaxel")
                                             (DRUG "taxol" "NCIT:C1411"
                                              "paclitaxel")
                                             (DRUG "sulphoxide" "MESH:C005746"
                                              "sulfoxide")
                                             (DRUG "tretinoin" "NCIT:C900"
                                              "vitamin A acid")
                                             (DRUG "torin1" "CHEBI:84327"
                                              "torin 1")
                                             (DRUG "tnfα" "NCIT:C913"
                                              "therapeutic tumor necrosis factor-alpha")
                                             (DISEASE "melasma" "EFO:0003963"
                                              "freckles")
                                             (DISEASE "hyperlipidaemia"
                                              "EFO:0003774" "hyperlipidemia")
                                             (POST-TRANSLATIONAL-MODIFICATION
                                              "nitrosylation" "GO:0017014"
                                              "protein nitrosylation")
                                             (BIO-METHOD "IMPUTE" "NCIT:C80304"
                                              "statistical imputation")
                                             (BIO-METHOD "MALDITOF"
                                              "NCIT:C19935"
                                              "MALDI-TOF mass spectrometry")
                                             (BIO-METHOD "Metaanalyses"
                                              "NCIT:C17886" "meta-analysis")
                                             (BIO-METHOD "Maximum"
                                              "NCIT:C82868"
                                              "maximum value derivation technique")
                                             (BIO-METHOD "Order" "NCIT:C64219"
                                              "permutation")
                                             (BIO-METHOD "SDSPAGE"
                                              "NCIT:C18150"
                                              "sodium dodecylsulfate-polyacrylamide gel electrophoresis")
                                             (BIO-METHOD "alpha1" "NCIT:C67050"
                                              "affy alpha1 significance")
                                             (BIO-METHOD "rMSs" "NCIT:C73485"
                                              "root mean square")
                                             (BIO-METHOD "qPCRs" "NCIT:C51962"
                                              "real time PCR")
                                             (BIO-METHOD "qPCR" "NCIT:C51962"
                                              "real time PCR")
                                             (BIO-METHOD "chipSeq"
                                              "EFO:0002692" "ChIP-seq")
                                             (BIO-METHOD "xenografted"
                                              "EFO:0003942"
                                              "heterologous transplantation")
                                             (RNA "let7" "NCIT:C48183" "let-7")
                                             (RNA "premicroRNA" "NCIT:C25968"
                                              "pre-miRNA")
                                             (RNA "siRNAs" "NCIT:C2191"
                                              "small interfering RNA")
                                             (RNA "siRNA" "NCIT:C2191"
                                              "small interfering RNA")
                                             (RNA "uRNA" "NCIT:C815"
                                              "small nuclear RNA")
                                             (SUBSTANCE "crystalline"
                                              "NCIT:C61303" "crystal")
                                             (VIRUS "HIV2" "NCIT:C14221"
                                              "human immunodeficiency virus 2")
                                             (VIRUS "HIV1" "NCIT:C14220"
                                              "human immunodeficiency virus 1")
                                             (VIRUS "HHV5" "NCIT:C14196"
                                              "cytomegalovirus")
                                             (VIRUS "HSV" "NCIT:C112419"
                                              "simplexvirus")
                                             (VIRUS "cmv" "NCIT:C14196"
                                              "cytomegalovirus")
                                             (UNIT-OF-MEASURE "amu"
                                              "UO:0000221" "dalton")
                                             (BIO-PROCESS "breakdown"
                                              "GO:0009056" "catabolic process")
                                             (BIO-PROCESS "cross-reactive"
                                              "NCIT:C96482" "cross reaction")
                                             (BIO-PROCESS "catabolism"
                                              "GO:0009056" "catabolic process")
                                             (CANCER "HSILs" "NCIT:C8336"
                                              "high-grade squamous intraepithelial neoplasia")
                                             (CANCER "ASPS" "NCIT:C3750"
                                              "alveolar soft part sarcoma")
                                             (CANCER "ESSs" "EFO:1000919"
                                              "endometrial stromal sarcoma")
                                             (CANCER "H-SIL" "NCIT:C8336"
                                              "high-grade squamous intraepithelial neoplasia")
                                             (CELL-TYPE "C-cell" "CO:0000570"
                                              "parafollicular cell")
                                             (CELL-TYPE "blastomere"
                                              "CO:0000353" "blastoderm cell")
                                             (CELL-TYPE "B-cells" "CO:0000236"
                                              "B cell")
                                             (CELL-TYPE "BFU-e" "CO:0000038"
                                              "erythroid progenitor cell")
                                             (CELL-TYPE
                                              "burst-forming-units-erythroid"
                                              "CO:0000038"
                                              "erythroid progenitor cell")
                                             (CELL-TYPE "T-cells" "BTO:0000782"
                                              "T-lymphocyte")
                                             (CELL-TYPE "basal-cell"
                                              "BTO:0000939" "basal cell")
                                             (CELL-TYPE "β-cells" "CO:0000639"
                                              "basophil cell of pars distalis of adenohypophysis")
                                             (CELL-LINE "HSC39" "CVCL:A385"
                                              "HSC-39")
                                             (CELL-LINE "IM9" "CVCL:1305"
                                              "IM-9")
                                             (CELL-LINE "JCam-1" "CVCL:0354"
                                              "J.CaM1.6")
                                             (CELL-LINE "LS411" "CVCL:1385"
                                              "LS411N")
                                             (CELL-LINE "M07-E" "CVCL:2106"
                                              "M-07e")
                                             (CELL-LINE "MO7-E" "CVCL:2106"
                                              "M-07e")
                                             (CELL-LINE "MSK-QLL-1" "CVCL:6990"
                                              "MSK-QLL1")
                                             (CELL-LINE "PT18" "CVCL:5444"
                                              "PT-18")
                                             (CELL-LINE "SHSY-5Y" "CVCL:0019"
                                              "SH-SY5Y")
                                             (CELL-LINE "U251-MG" "CVCL:0021"
                                              "U-251MG")
                                             (CELL-LINE "BT483" "CVCL:2319"
                                              "BT-483")
                                             (CELL-LINE "CAPAN1" "EFO:0002153"
                                              "Capan1")
                                             (CELL-LINE "HBL100" "CVCL:4362"
                                              "HBL-100")
                                             (CELL-LINE "HR-1" "CVCL:2676"
                                              "P3HR-1")
                                             (CELL-LINE "IMR32" "CVCL:0346"
                                              "IMR-32")
                                             (CELL-LINE "KAT10" "CVCL:6302"
                                              "KAT-10")
                                             (CELL-LINE "LAN-5" "CVCL:0389"
                                              "LA-N-5")
                                             (CELL-LINE "LAN5" "CVCL:0389"
                                              "LA-N-5")
                                             (CELL-LINE "MDA-MB-134VI"
                                              "CVCL:0617" "MDA-MB-134-VI")
                                             (CELL-LINE "MDA-MB-175VII"
                                              "CVCL:1400" "MDA-MB-175-VII")
                                             (CELL-LINE "MDA157" "CVCL:0618"
                                              "MDA-MB-157")
                                             (CELL-LINE "MDA361" "CVCL:0620"
                                              "MDA-MB-361")
                                             (CELL-LINE "SKN-BE" "CVCL:0528"
                                              "SK-N-BE(2)")
                                             (CELL-LINE "SK–NAS" "EFO:0002859"
                                              "SK-N-AS")
                                             (CELL-LINE "U-251-MG" "CVCL:0021"
                                              "U-251MG")
                                             (CELL-LINE "ARPE19" "CVCL:0145"
                                              "ARPE-19")
                                             (CELL-LINE "BEL7404" "CVCL:6568"
                                              "BEL-7404")
                                             (CELL-LINE "DO4" "CVCL:H604"
                                              "D04")
                                             (CELL-LINE "EBNA-293" "CVCL:6974"
                                              "HEK293-EBNA")
                                             (CELL-LINE "GM05849" "CVCL:7442"
                                              "AT5BIVA")
                                             (CELL-LINE "HuH1" "CVCL:2956"
                                              "HuH-1")
                                             (CELL-LINE "LM5" "CVCL:9567"
                                              "SaOS-LM5")
                                             (CELL-LINE "LS174" "CVCL:1384"
                                              "LS174T")
                                             (CELL-LINE "MDA435" "CVCL:0417"
                                              "MDA-MB-435")
                                             (CELL-LINE "Molt4" "EFO:0001220"
                                              "MOLT-4")
                                             (CELL-LINE "NCEB" "CVCL:1875"
                                              "NCEB-1")
                                             (CELL-LINE "NCIH1975" "CVCL:1511"
                                              "NCI-H1975")
                                             (CELL-LINE "N–B2" "CVCL:G705"
                                              "Nb2")
                                             (CELL-LINE "TRex-293" "CVCL:D585"
                                              "T-REx-293")
                                             (CELL-LINE "CHOK-1" "CVCL:0214"
                                              "CHO-K1")
                                             (CELL-LINE "IEC18" "CVCL:0342"
                                              "IEC-18")
                                             (CELL-LINE "KCNR" "CVCL:7134"
                                              "SMS-KCNR")
                                             (CELL-LINE "LC–MS" "CVCL:1655"
                                              "RERF-LC-MS")
                                             (CELL-LINE "MDA-MB435" "CVCL:0417"
                                              "MDA-MB-435")
                                             (CELL-LINE "MDA-MB453" "CVCL:0418"
                                              "MDA-MB-453")
                                             (CELL-LINE "N1E115" "CVCL:0451"
                                              "N1E-115")
                                             (CELL-LINE "NB12" "CVCL:1442"
                                              "SJNB-12")
                                             (CELL-LINE "NK92" "CVCL:2142"
                                              "NK-92")
                                             (CELL-LINE "PaCa2" "CVCL:0428"
                                              "MIA PaCa-2")
                                             (CELL-LINE "SKNAS" "EFO:0002859"
                                              "SK-N-AS")
                                             (CELL-LINE "SNU1" "CVCL:0099"
                                              "SNU-1")
                                             (CELLULAR-LOCATION "ND-10"
                                              "GO:0016605" "PML body")
                                             (CELLULAR-LOCATION
                                              "amino-acyl-tRNA" "CHEBI:2651"
                                              "alpha-aminoacyl-tRNA")
                                             (CELLULAR-LOCATION "c-SMAC"
                                              "GO:0001772"
                                              "immunological synapse")
                                             (MOLECULE "adenosylhomocysteine"
                                              "CHEBI:16680"
                                              "S-adenosyl-L-homocysteine")
                                             (MOLECULE
                                              "glycer-aldehyde-3-phosphate"
                                              "CHEBI:17138"
                                              "glyceraldehyde 3-phosphate")
                                             (MOLECULE "α-HA" "NCIT:C47381"
                                              "acetohydroxamic acid")
                                             (MOLECULE "α-amanitin"
                                              "CHEBI:37415" "alpha-amanitin")
                                             (MOLECULE "α-tocopherol"
                                              "CHEBI:22470" "alpha-tocopherol")
                                             (MOLECULE "αtocopherol"
                                              "CHEBI:22470" "alpha-tocopherol")
                                             (MOLECULE "β-estradiol"
                                              "CHEBI:16469" "17beta-estradiol")
                                             (BIO-COMPLEX "PreRCs" "GO:0036387"
                                              "pre-replicative complex")
                                             (BIO-COMPLEX "preRC" "GO:0036387"
                                              "pre-replicative complex")
                                             (BIO-COMPLEX "IgG2" "GO:0071735"
                                              "IgG immunoglobulin complex")
                                             (BIO-COMPLEX "RNP" "GO:1990904"
                                              "ribonucleoprotein complex")
                                             (DISEASE "oesophagitis"
                                              "NCIT:C9224" "esophagitis")
                                             (DISEASE "UTI" "NCIT:C50791"
                                              "urinary tract infection")
                                             (DISEASE "BOR" "EFO:1001251"
                                              "branchio-oto-renal syndrome")
                                             (DISEASE "naevi" "EFO:0000625"
                                              "nevus")
                                             (DISEASE "β-thalassaemia"
                                              "ORPHANET:848"
                                              "Beta-thalassemia")
                                             (PROTEIN-DOMAIN "chromodomain"
                                              "XFAM:PF00385.22" "chromo")
                                             (MOLECULE "β-cyclodextrin"
                                              "CHEBI:495055"
                                              "beta-cyclodextrin")
                                             (MOLECULE "gamma-glutamyl"
                                              "CHEBI:24190"
                                              "gamma-glutamyl group")
                                             (MOLECULE "β-amyloid"
                                              "CHEBI:64645" "beta-amyloid")
                                             (MOLECULE "NaI" "CHEBI:33167"
                                              "sodium iodide")
                                             (MOLECULE "pyrophosphate"
                                              "CHEBI:18361" "diphosphate(4-)")
                                             (MOLECULE "β-CD" "CHEBI:495055"
                                              "beta-cyclodextrin")
                                             (ORGANISM "chimp" "NCIT:C14297"
                                              "chimpanzee")
                                             (DRUG "CTLA-4Ig" "NCIT:C28898"
                                              "CTLA4-Ig")
                                             (DRUG "HA1077" "NCIT:C65624"
                                              "fasudil")
                                             (DRUG "Latrunculin-B"
                                              "MESH:C037068" "latrunculin B")
                                             (DRUG
                                              "z-Val-Ala-Asp-fluoromethylketone"
                                              "MESH:C096713"
                                              "benzyloxycarbonylvalyl-alanyl-aspartyl fluoromethyl ketone")
                                             (DRUG "AED" "NCIT:C97356"
                                              "cystamine dihydrochloride")
                                             (DRUG "Indole-3carbinol"
                                              "MESH:C016517"
                                              "indole-3-carbinol")
                                             (DRUG "OSI-774" "NCIT:C2693"
                                              "erlotinib")
                                             (DRUG "RO-31-8220" "NCIT:C1310"
                                              "Ro 31-8220")
                                             (DRUG "cisplatinum" "NCIT:C376"
                                              "cisplatin")
                                             (DRUG "APAP" "NCIT:C198"
                                              "acetaminophen")
                                             (DRUG "AS604850" "MESH:C505145"
                                              "5-(2,2-difluorobenzo(1,3)dioxol-5-ylmethylene)thiazolidine-2,4-dione")
                                             (DRUG "Glivec" "NCIT:C1687"
                                              "imatinib")
                                             (DRUG "LatA" "MESH:C037067"
                                              "latrunculin A")
                                             (DRUG "antioestrogen"
                                              "CHEBI:50751" "anti-estrogen")
                                             (DRUG
                                              "cis-diamminedichloroplatinum"
                                              "NCIT:C376" "cisplatin")
                                             (DRUG "cis-platinum" "NCIT:C376"
                                              "cisplatin")
                                             (DRUG "cytosine-arabinoside"
                                              "NCIT:C408"
                                              "cytosine arabinoside")
                                             (DRUG "DDP" "NCIT:C376"
                                              "cisplatin")
                                             (DRUG "Gö6983" "MESH:C465664"
                                              "2-(1-(3-dimethylaminopropyl)-5-methoxyindol-3-yl)-3-(1H-indol-3-yl)maleimide")
                                             (DRUG "R-roscovitine"
                                              "NCIT:C62783" "seliciclib")
                                             (DRUG "TNS" "MESH:C009497"
                                              "2-(4-toluidino)-6-naphthalenesulfonic acid")
                                             (DRUG "Tarceva" "NCIT:C2693"
                                              "erlotinib")
                                             (DRUG "Torisel" "NCIT:C1844"
                                              "CCI-779")
                                             (DRUG "adj" "NCIT:C2140"
                                              "adjuvant")
                                             (DRUG "erbitux" "NCIT:C1723"
                                              "cetuximab")
                                             (DRUG "interferon-α" "NCIT:C225"
                                              "therapeutic interferon alfa")
                                             (DRUG "tBHQ" "MESH:C018855"
                                              "2-tert-butylhydroquinone")
                                             (DRUG "zIETD-fmk" "MESH:C403753"
                                              "benzyloxycarbonyl-isoleucyl-glutamyl-threonyl-aspartic acid fluoromethyl ketone")
                                             (BIO-METHOD "MALDI–TOF"
                                              "NCIT:C19935"
                                              "MALDI-TOF mass spectrometry")
                                             (BIO-METHOD "qrtPCR" "NCIT:C28408"
                                              "quantitative reverse transcriptase PCR")
                                             (RNA "pri-microRNA" "NCIT:C25967"
                                              "pri-miRNA")))

(defparameter *CATEGORY-MISMATCH-EXISTING-CATS* '((:ORIG-CAT BIO-SELF-MOVEMENT
                                                   :NEW-CAT BIO-PROCESS :NAME
                                                   "localization" :NEWUID
                                                   "GO:0051179" :WORD
                                                   "Localisation")
                                                  (:ORIG-CAT BIO-QUALITY
                                                   :NEW-CAT BIO-PROCESS :NAME
                                                   "behavior" :NEWUID
                                                   "GO:0007610" :WORD
                                                   "behaviours")
                                                  (:ORIG-CAT LIPID :NEW-CAT
                                                   MOLECULE :NAME "sphingosine"
                                                   :NEWUID "CHEBI:16393" :WORD
                                                   "sphingosine")
                                                  (:ORIG-CAT NUCLEOTIDE
                                                   :NEW-CAT MOLECULE :NAME
                                                   "UMP" :NEWUID "CHEBI:16695"
                                                   :WORD "uridylate")
                                                  (:ORIG-CAT HAS-UID :NEW-CAT
                                                   INJURY :NAME "injury"
                                                   :NEWUID "EFO:0000546" :WORD
                                                   "traumata")
                                                  (:ORIG-CAT HAS-UID :NEW-CAT
                                                   INJURY :NAME "injury"
                                                   :NEWUID "EFO:0000546" :WORD
                                                   "Wound")
                                                  (:ORIG-CAT
                                                   BIO-CHEMICAL-ENTITY :NEW-CAT
                                                   MOLECULE :NAME "ion" :NEWUID
                                                   "CHEBI:24870" :WORD "ion")
                                                  (:ORIG-CAT SMALL-MOLECULE
                                                   :NEW-CAT MOLECULE :NAME
                                                   "nucleoside" :NEWUID
                                                   "CHEBI:33838" :WORD
                                                   "nucleoside")
                                                  (:ORIG-CAT MOLECULE :NEW-CAT
                                                   DRUG :NAME "drug" :NEWUID
                                                   "CHEBI:23888" :WORD
                                                   "Medicine")
                                                  (:ORIG-CAT NUCLEOTIDE
                                                   :NEW-CAT DRUG :NAME "AMP"
                                                   :NEWUID "CHEBI:16027" :WORD
                                                   "adenylated")
                                                  (:ORIG-CAT NUCLEOTIDE
                                                   :NEW-CAT DRUG :NAME "AMP"
                                                   :NEWUID "CHEBI:16027" :WORD
                                                   "adenylate")
                                                  (:ORIG-CAT CAUSED-BIO-PROCESS
                                                   :NEW-CAT BIO-PROCESS :NAME
                                                   "development" :NEWUID
                                                   "NCIT:C17770" :WORD
                                                   "maturation")
                                                  (:ORIG-CAT MODIFIER :NEW-CAT
                                                   BIO-METHOD :NAME "sequencer"
                                                   :NEWUID "EFO:0003739" :WORD
                                                   "sequencer")
                                                  (:ORIG-CAT LINGUISTIC
                                                   :NEW-CAT PROTEIN-DOMAIN
                                                   :NAME "BAR" :NEWUID
                                                   "XFAM:PF03114.16" :WORD
                                                   "βAR")
                                                  (:ORIG-CAT LINGUISTIC
                                                   :NEW-CAT PROTEIN-DOMAIN
                                                   :NAME "BAR" :NEWUID
                                                   "XFAM:PF03114.16" :WORD
                                                   "βARs")))

(defparameter *CATEGORY-MISMATCH-EXISTING-WORDS* '((:ORIG-CAT PROTEIN :NEW-CAT
                                                    BIO-PROCESS :NAME
                                                    "loss of heterozygosity"
                                                    :NEWUID "NCIT:C18016" :WORD
                                                    "LOH")
                                                   (:ORIG-CAT APOPTOSIS
                                                    :NEW-CAT BIO-PROCESS :NAME
                                                    "cell death" :NEWUID
                                                    "GO:0008219" :WORD
                                                    "celldeath")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CANCER :NAME "leukemia"
                                                    :NEWUID "EFO:0000565" :WORD
                                                    "leukaemia")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "SP1"
                                                    :NEWUID "CVCL:AZ65" :WORD
                                                    "SPI")
                                                   (:ORIG-CAT RNA :NEW-CAT
                                                    CELLULAR-LOCATION :NAME
                                                    "ribonucleic acid" :NEWUID
                                                    "CHEBI:33697" :WORD "RNS")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "acetyl-CoA"
                                                    :NEWUID "CHEBI:15351" :WORD
                                                    "AcCoA")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "valine" :NEWUID
                                                    "CHEBI:27266" :WORD
                                                    "valin")
                                                   (:ORIG-CAT NUCLEOBASE
                                                    :NEW-CAT MOLECULE :NAME
                                                    "guanine" :NEWUID
                                                    "CHEBI:16235" :WORD "Gua")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "glucose"
                                                    :NEWUID "CHEBI:17234" :WORD
                                                    "Glc")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "methionine" :NEWUID
                                                    "CHEBI:16811" :WORD
                                                    "Methionin")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "androgen"
                                                    :NEWUID "CHEBI:50113" :WORD
                                                    "androgene")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "acetyl-CoA"
                                                    :NEWUID "CHEBI:15351" :WORD
                                                    "acetylCoA")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "adenosine"
                                                    :NEWUID "CHEBI:16335" :WORD
                                                    "deoxyadenosine")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "thymidine"
                                                    :NEWUID "CHEBI:17748" :WORD
                                                    "dThd")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME
                                                    "malonyl-CoA" :NEWUID
                                                    "CHEBI:15531" :WORD
                                                    "malonylCoA")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "leucine" :NEWUID
                                                    "CHEBI:25017" :WORD
                                                    "leucin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "pyrimidine"
                                                    :NEWUID "CHEBI:16898" :WORD
                                                    "pyrimidin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "staurosporine" :NEWUID
                                                    "CHEBI:15738" :WORD
                                                    "staurosporin")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "wortmannin"
                                                    :NEWUID "CHEBI:52289" :WORD
                                                    "wartmannin")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "tyrosine" :NEWUID
                                                    "CHEBI:18186" :WORD
                                                    "tyrosin")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "tryptophan" :NEWUID
                                                    "CHEBI:27897" :WORD
                                                    "tryptophane")
                                                   (:ORIG-CAT NUCLEOBASE
                                                    :NEW-CAT MOLECULE :NAME
                                                    "thymine" :NEWUID
                                                    "CHEBI:17821" :WORD "thy")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "threonine" :NEWUID
                                                    "CHEBI:26986" :WORD
                                                    "threonin")
                                                   (:ORIG-CAT ORGANISM :NEW-CAT
                                                    BIO-ORGAN :NAME "animal"
                                                    :NEWUID "BTO:0000042" :WORD
                                                    "metazoa")
                                                   (:ORIG-CAT BIO-GROUPING
                                                    :NEW-CAT MOLECULE :NAME
                                                    "group" :NEWUID
                                                    "CHEBI:24433" :WORD
                                                    "Gruppe")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "acetonitrile" :NEWUID
                                                    "CHEBI:38472" :WORD "MeCN")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME
                                                    "nicotinamide" :NEWUID
                                                    "CHEBI:17154" :WORD
                                                    "Niacin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "caffeine"
                                                    :NEWUID "CHEBI:27732" :WORD
                                                    "Thein")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "tetracycline" :NEWUID
                                                    "CHEBI:27902" :WORD
                                                    "Tetracyclin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "diethylenetriamine"
                                                    :NEWUID "CHEBI:30629" :WORD
                                                    "dien")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "pyrazole"
                                                    :NEWUID "CHEBI:14973" :WORD
                                                    "pyrazol")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "suberoylanilide hydroxamic acid"
                                                    :NEWUID "NCIT:C1796" :WORD
                                                    "Zolinza")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "azithromycin"
                                                    :NEWUID "NCIT:C28844" :WORD
                                                    "Zithromax")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "anandamide"
                                                    :NEWUID "MESH:C078814"
                                                    :WORD
                                                    "arachidonoylethanolamide")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "beta-lapachone"
                                                    :NEWUID "NCIT:C28694" :WORD
                                                    "lapachone")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "tamoxifen"
                                                    :NEWUID "NCIT:C855" :WORD
                                                    "nolvadex")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    DRUG :NAME "protein C"
                                                    :NEWUID "NCIT:C87607" :WORD
                                                    "proteinC")
                                                   (:ORIG-CAT ORGANISM :NEW-CAT
                                                    VIRUS :NAME
                                                    "epstein-barr virus"
                                                    :NEWUID "NCIT:C14204" :WORD
                                                    "HHV4")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    BIO-PROCESS :NAME
                                                    "RNA binding" :NEWUID
                                                    "GO:0003723" :WORD
                                                    "RNA-binding")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CANCER :NAME "leukemia"
                                                    :NEWUID "EFO:0000565" :WORD
                                                    "leukaemias")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "WEHI-231"
                                                    :NEWUID "CVCL:0577" :WORD
                                                    "WEHI231")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "AP-1" :NEWUID "CVCL:HF85"
                                                    :WORD "AP1")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "FLK-1"
                                                    :NEWUID "CVCL:M788" :WORD
                                                    "Flk1")
                                                   (:ORIG-CAT SULFATION
                                                    :NEW-CAT MOLECULE :NAME
                                                    "sulfate" :NEWUID
                                                    "CHEBI:16189" :WORD
                                                    "sulphate")
                                                   (:ORIG-CAT NUCLEOBASE
                                                    :NEW-CAT MOLECULE :NAME
                                                    "adenine" :NEWUID
                                                    "CHEBI:16708" :WORD "ADE")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "cysteine" :NEWUID
                                                    "CHEBI:15356" :WORD
                                                    "cystein")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "thymidine"
                                                    :NEWUID "CHEBI:17748" :WORD
                                                    "deoxythymidine")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "acetyl-CoA"
                                                    :NEWUID "CHEBI:15351" :WORD
                                                    "acetyl-Co-A")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "methionine" :NEWUID
                                                    "CHEBI:16811" :WORD "hMET")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "serine" :NEWUID
                                                    "CHEBI:17822" :WORD
                                                    "serin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "cisplatin"
                                                    :NEWUID "CHEBI:27899" :WORD
                                                    "Cis-DDP")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "pirinixic acid"
                                                    :NEWUID "MESH:C006253"
                                                    :WORD "WY14643")
                                                   (:ORIG-CAT NUCLEOBASE
                                                    :NEW-CAT DRUG :NAME
                                                    "uracil" :NEWUID
                                                    "CHEBI:17568" :WORD "URA")))

(defparameter *SUPPRESSED-REDEFS* '(("re-arrangement"
                                     ("re-arrangement" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C21069" :NAME
                                      "DNA sequence rearrangement"))
                                    ("conceptions"
                                     ("conceptions" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C16465" :NAME "conception"))
                                    ("cleavages"
                                     ("cleavages" "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C73482" :NAME "chemical cleavage"))
                                    ("checkpoints"
                                     ("checkpoints" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C18689" :NAME
                                      "cell cycle checkpoint"))
                                    ("checkpoint"
                                     ("checkpoint" "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C18689" :NAME
                                      "cell cycle checkpoint"))
                                    ("degeneration"
                                     ("degeneration" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C61557" :NAME "degeneration"))
                                    ("cytokinesis"
                                     ("cytokinesis" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "GO:0000910" :NAME "cytokinesis"))
                                    ("endocytosis"
                                     ("endocytosis" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "GO:0006897" :NAME "endocytosis"))
                                    ("infarctions"
                                     ("infarctions" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C25738" :NAME "infarction"))
                                    ("infarction"
                                     ("infarction" "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C25738" :NAME "infarction"))
                                    ("hypermethylation"
                                     ("hypermethylation"
                                      "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C20102" :NAME "hypermethylation"))
                                    ("mating"
                                     ("mating" "ONT:BIOLOGICAL-PROCESS" :ID
                                      "GO:0007618" :NAME "mating"))
                                    ("lysis"
                                     ("lysis" "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C37889" :NAME "lysis"))
                                    ("invasion"
                                     ("invasion" "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C20625" :NAME
                                      "tumor cell invasion"))
                                    ("pathogenesis"
                                     ("pathogenesis" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "GO:0009405" :NAME "pathogenesis"))
                                    ("proteolysis"
                                     ("proteolysis" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "GO:0006508" :NAME "proteolysis"))
                                    ("prometaphase"
                                     ("prometaphase" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C51030" :NAME "prometaphase"))
                                    ("replication"
                                     ("replication" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C16514" :NAME
                                      "DNA replication"))
                                    ("angiosarcomas"
                                     ("angiosarcomas" "ONT:CANCER" :ID
                                      "EFO:0003968" :NAME "angiosarcoma"))
                                    ("chondrosarcomas"
                                     ("chondrosarcomas" "ONT:CANCER" :ID
                                      "EFO:0000333" :NAME "chondrosarcoma"))
                                    ("ects"
                                     ("ects" "ONT:CANCER" :ID "NCIT:C121785"
                                      :NAME
                                      "ectomesenchymal chondromyxoid tumor"))
                                    ("ect"
                                     ("ect" "ONT:CANCER" :ID "NCIT:C121785"
                                      :NAME
                                      "ectomesenchymal chondromyxoid tumor"))
                                    ("cystadenocarcinomas"
                                     ("cystadenocarcinomas" "ONT:CANCER" :ID
                                      "EFO:0006387" :NAME
                                      "cystadenocarcinoma"))
                                    ("medulloblastomas"
                                     ("medulloblastomas" "ONT:CANCER" :ID
                                      "EFO:0002939" :NAME "medulloblastoma"))
                                    ("malignancies"
                                     ("malignancies" "ONT:CANCER" :ID
                                      "NCIT:C9305" :NAME "malignant neoplasm"))
                                    ("lymphoma"
                                     ("lymphoma" "ONT:CANCER" :ID "EFO:0000574"
                                      :NAME "lymphoma"))
                                    ("liposarcomas"
                                     ("liposarcomas" "ONT:CANCER" :ID
                                      "EFO:0000569" :NAME "liposarcoma"))
                                    ("lins"
                                     ("lins" "ONT:CANCER" :ID "NCIT:C27939"
                                      :NAME "lobular neoplasia"))
                                    ("neoplasias"
                                     ("neoplasias" "ONT:CANCER" :ID
                                      "NCIT:C3262" :NAME "neoplasm"))
                                    ("neoplasia"
                                     ("neoplasia" "ONT:CANCER" :ID "NCIT:C3262"
                                      :NAME "neoplasm"))
                                    ("myomas"
                                     ("myomas" "ONT:CANCER" :ID "NCIT:C4882"
                                      :NAME "benign muscle neoplasm"))
                                    ("papilloma"
                                     ("papilloma" "ONT:CANCER" :ID "NCIT:C7440"
                                      :NAME "papilloma"))
                                    ("schwannomas"
                                     ("schwannomas" "ONT:CANCER" :ID
                                      "EFO:0000693" :NAME "schwannoma"))
                                    ("sarcoma"
                                     ("sarcoma" "ONT:CANCER" :ID "EFO:0000691"
                                      :NAME "sarcoma"))
                                    ("retinoblastomas"
                                     ("retinoblastomas" "ONT:CANCER" :ID
                                      "NCIT:C7541" :NAME "retinoblastoma"))
                                    ("teratomas"
                                     ("teratomas" "ONT:CANCER" :ID "NCIT:C3403"
                                      :NAME "teratoma"))
                                    ("teratocarcinomas"
                                     ("teratocarcinomas" "ONT:CANCER" :ID
                                      "NCIT:C3756" :NAME
                                      "mixed embryonal carcinoma and teratoma"))
                                    ("lactotrophs"
                                     ("lactotrophs" "ONT:CELL" :ID "CO:0002311"
                                      :NAME "mammotroph"))
                                    ("hemocytes"
                                     ("hemocytes" "ONT:CELL" :ID "BTO:0000571"
                                      :NAME "hemocyte"))
                                    ("pericytes"
                                     ("pericytes" "ONT:CELL" :ID "CO:0000669"
                                      :NAME "pericyte cell"))
                                    ("OVA"
                                     ("OVA" "ONT:CELL" :ID "BTO:0003801" :NAME
                                      "ovum"))
                                    ("basophils"
                                     ("basophils" "ONT:CELL" :ID "BTO:0000129"
                                      :NAME "basophil"))
                                    ("ameloblasts"
                                     ("ameloblasts" "ONT:CELL" :ID
                                      "BTO:0001663" :NAME "ameloblast"))
                                    ("chondrocytes"
                                     ("chondrocytes" "ONT:CELL" :ID
                                      "CO:0000138" :NAME "chondrocyte"))
                                    ("cholangiocyte"
                                     ("cholangiocyte" "ONT:CELL" :ID
                                      "CO:1000488" :NAME "cholangiocyte"))
                                    ("cardiomyocytes"
                                     ("cardiomyocytes" "ONT:CELL" :ID
                                      "CO:0000746" :NAME
                                      "cardiac muscle cell"))
                                    ("cardiomyocyte"
                                     ("cardiomyocyte" "ONT:CELL" :ID
                                      "CO:0000746" :NAME
                                      "cardiac muscle cell"))
                                    ("granulocyte"
                                     ("granulocyte" "ONT:CELL" :ID
                                      "BTO:0000539" :NAME "granulocyte"))
                                    ("gonadotropes"
                                     ("gonadotropes" "ONT:CELL" :ID
                                      "CO:0000437" :NAME "gonadtroph"))
                                    ("erythrocytes"
                                     ("erythrocytes" "ONT:CELL" :ID
                                      "BTO:0000424" :NAME "erythrocyte"))
                                    ("eosinophils"
                                     ("eosinophils" "ONT:CELL" :ID
                                      "BTO:0000399" :NAME "eosinophil"))
                                    ("eosinophil"
                                     ("eosinophil" "ONT:CELL" :ID "BTO:0000399"
                                      :NAME "eosinophil"))
                                    ("enterocyte"
                                     ("enterocyte" "ONT:CELL" :ID "CO:0000584"
                                      :NAME "enterocyte"))
                                    ("melanocyte"
                                     ("melanocyte" "ONT:CELL" :ID "BTO:0000847"
                                      :NAME "melanocyte"))
                                    ("macrophages"
                                     ("macrophages" "ONT:CELL" :ID "CO:0000235"
                                      :NAME "macrophage"))
                                    ("macrophage"
                                     ("macrophage" "ONT:CELL" :ID "CO:0000235"
                                      :NAME "macrophage"))
                                    ("lymphocytes"
                                     ("lymphocytes" "ONT:CELL" :ID
                                      "BTO:0000775" :NAME "lymphocyte"))
                                    ("lymphocyte"
                                     ("lymphocyte" "ONT:CELL" :ID "BTO:0000775"
                                      :NAME "lymphocyte"))
                                    ("lymphoblasts"
                                     ("lymphoblasts" "ONT:CELL" :ID
                                      "BTO:0000772" :NAME "lymphoblast"))
                                    ("lymphoblast"
                                     ("lymphoblast" "ONT:CELL" :ID
                                      "BTO:0000772" :NAME "lymphoblast"))
                                    ("monocytes"
                                     ("monocytes" "ONT:CELL" :ID "BTO:0000876"
                                      :NAME "monocyte"))
                                    ("monocyte"
                                     ("monocyte" "ONT:CELL" :ID "BTO:0000876"
                                      :NAME "monocyte"))
                                    ("osteoclast"
                                     ("osteoclast" "ONT:CELL" :ID "BTO:0000968"
                                      :NAME "osteoclast"))
                                    ("osteoblasts"
                                     ("osteoblasts" "ONT:CELL" :ID
                                      "BTO:0001593" :NAME "osteoblast"))
                                    ("osteoblast"
                                     ("osteoblast" "ONT:CELL" :ID "BTO:0001593"
                                      :NAME "osteoblast"))
                                    ("oocyte"
                                     ("oocyte" "ONT:CELL" :ID "BTO:0000964"
                                      :NAME "oocyte"))
                                    ("odontoblast"
                                     ("odontoblast" "ONT:CELL" :ID "CO:0000060"
                                      :NAME "odontoblast"))
                                    ("pericyte"
                                     ("pericyte" "ONT:CELL" :ID "CO:0000669"
                                      :NAME "pericyte cell"))
                                    ("preosteoblasts"
                                     ("preosteoblasts" "ONT:CELL" :ID
                                      "BTO:0002051" :NAME "preosteoblast"))
                                    ("preosteoblast"
                                     ("preosteoblast" "ONT:CELL" :ID
                                      "BTO:0002051" :NAME "preosteoblast"))
                                    ("platelet"
                                     ("platelet" "ONT:CELL" :ID "CO:0000233"
                                      :NAME "platelet"))
                                    ("synoviocytes"
                                     ("synoviocytes" "ONT:CELL" :ID
                                      "CO:0000214" :NAME "synovial cell"))
                                    ("spermatocyte"
                                     ("spermatocyte" "ONT:CELL" :ID
                                      "BTO:0001275" :NAME "spermatocyte"))
                                    ("thymocytes"
                                     ("thymocytes" "ONT:CELL" :ID "BTO:0001372"
                                      :NAME "thymocyte"))
                                    ("EC9706"
                                     ("EC9706" "ONT:CELL-LINE" :ID "CVCL:E307"
                                      :NAME "EC9706"))
                                    ("C2C12"
                                     ("C2C12" "ONT:CELL-LINE" :ID "EFO:0001098"
                                      :NAME "C2C12"))
                                    ("GH3"
                                     ("GH3" "ONT:CELL-LINE" :ID "CVCL:0273"
                                      :NAME "GH3"))
                                    ("PC-3M"
                                     ("PC-3M" "ONT:CELL-LINE" :ID "CVCL:9555"
                                      :NAME "PC-3M"))
                                    ("GSC"
                                     ("GSC" "ONT:CELL-LINE" :ID "CVCL:M752"
                                      :NAME "GSC"))
                                    ("GL261"
                                     ("GL261" "ONT:CELL-LINE" :ID "CVCL:Y003"
                                      :NAME "GL261"))
                                    ("GD25"
                                     ("GD25" "ONT:CELL-LINE" :ID "CVCL:7264"
                                      :NAME "GD25"))
                                    ("HCT8"
                                     ("HCT8" "ONT:CELL-LINE" :ID "EFO:0002189"
                                      :NAME "HCT8"))
                                    ("HCC827"
                                     ("HCC827" "ONT:CELL-LINE" :ID "CVCL:2063"
                                      :NAME "HCC827"))
                                    ("HCC1937"
                                     ("HCC1937" "ONT:CELL-LINE" :ID "CVCL:0290"
                                      :NAME "HCC1937"))
                                    ("HCC1806"
                                     ("HCC1806" "ONT:CELL-LINE" :ID
                                      "EFO:0005373" :NAME "HCC1806"))
                                    ("H3.1"
                                     ("H3.1" "ONT:CELL-LINE" :ID "CVCL:L520"
                                      :NAME "H3.1"))
                                    ("IEG"
                                     ("IEG" "ONT:CELL-LINE" :ID "CVCL:W364"
                                      :NAME "IEG"))
                                    ("ICG"
                                     ("ICG" "ONT:CELL-LINE" :ID "CVCL:1G91"
                                      :NAME "ICG"))
                                    ("IB4"
                                     ("IB4" "ONT:CELL-LINE" :ID "CVCL:0339"
                                      :NAME "IB4"))
                                    ("HaCaT"
                                     ("HaCaT" "ONT:CELL-LINE" :ID "EFO:0002056"
                                      :NAME "HaCaT"))
                                    ("KATOIII"
                                     ("KATOIII" "ONT:CELL-LINE" :ID
                                      "EFO:0002217" :NAME "KATOIII"))
                                    ("Ishikawa"
                                     ("Ishikawa" "ONT:CELL-LINE" :ID
                                      "CVCL:2529" :NAME "Ishikawa"))
                                    ("MPM2"
                                     ("MPM2" "ONT:CELL-LINE" :ID "CVCL:D528"
                                      :NAME "MPM2"))
                                    ("MM2"
                                     ("MM2" "ONT:CELL-LINE" :ID "CVCL:B428"
                                      :NAME "MM2"))
                                    ("MLF"
                                     ("MLF" "ONT:CELL-LINE" :ID "CVCL:E778"
                                      :NAME "MLF"))
                                    ("MKN45"
                                     ("MKN45" "ONT:CELL-LINE" :ID "CVCL:0434"
                                      :NAME "MKN45"))
                                    ("MIT"
                                     ("MIT" "ONT:CELL-LINE" :ID "CVCL:D526"
                                      :NAME "MIT"))
                                    ("MDAMB231"
                                     ("MDAMB231" "ONT:CELL-LINE" :ID
                                      "EFO:0001209" :NAME "MDAMB231"))
                                    ("Mv1Lu"
                                     ("Mv1Lu" "ONT:CELL-LINE" :ID "CVCL:0593"
                                      :NAME "Mv1Lu"))
                                    ("Met5A"
                                     ("Met5A" "ONT:CELL-LINE" :ID "EFO:0001218"
                                      :NAME "Met5A"))
                                    ("Mel202"
                                     ("Mel202" "ONT:CELL-LINE" :ID "CVCL:C301"
                                      :NAME "Mel202"))
                                    ("MTLn3"
                                     ("MTLn3" "ONT:CELL-LINE" :ID "CVCL:8136"
                                      :NAME "MTLn3"))
                                    ("OP9"
                                     ("OP9" "ONT:CELL-LINE" :ID "CVCL:4398"
                                      :NAME "OP9"))
                                    ("OMM2.3"
                                     ("OMM2.3" "ONT:CELL-LINE" :ID "CVCL:C306"
                                      :NAME "OMM2.3"))
                                    ("OKF6"
                                     ("OKF6" "ONT:CELL-LINE" :ID "CVCL:L222"
                                      :NAME "OKF6"))
                                    ("OE33"
                                     ("OE33" "ONT:CELL-LINE" :ID "EFO:0002310"
                                      :NAME "OE33"))
                                    ("OE19"
                                     ("OE19" "ONT:CELL-LINE" :ID "EFO:0002308"
                                      :NAME "OE19"))
                                    ("NIH3T3"
                                     ("NIH3T3" "ONT:CELL-LINE" :ID
                                      "EFO:0001222" :NAME "NIH3T3"))
                                    ("NHEK"
                                     ("NHEK" "ONT:CELL-LINE" :ID "EFO:0002799"
                                      :NAME "NHEK"))
                                    ("PC14PE6"
                                     ("PC14PE6" "ONT:CELL-LINE" :ID "CVCL:9W70"
                                      :NAME "PC14PE6"))
                                    ("OVCA433"
                                     ("OVCA433" "ONT:CELL-LINE" :ID
                                      "EFO:0006723" :NAME "OVCA433"))
                                    ("Panc02"
                                     ("Panc02" "ONT:CELL-LINE" :ID "CVCL:D627"
                                      :NAME "Panc02"))
                                    ("PMO"
                                     ("PMO" "ONT:CELL-LINE" :ID "CVCL:V647"
                                      :NAME "PMO"))
                                    ("RKO"
                                     ("RKO" "ONT:CELL-LINE" :ID "CVCL:0504"
                                      :NAME "RKO"))
                                    ("Rh36"
                                     ("Rh36" "ONT:CELL-LINE" :ID "CVCL:M599"
                                      :NAME "Rh36"))
                                    ("SW620"
                                     ("SW620" "ONT:CELL-LINE" :ID "EFO:0002368"
                                      :NAME "SW620"))
                                    ("SW1088"
                                     ("SW1088" "ONT:CELL-LINE" :ID
                                      "EFO:0002358" :NAME "SW1088"))
                                    ("SKOV3"
                                     ("SKOV3" "ONT:CELL-LINE" :ID "EFO:0002340"
                                      :NAME "SKOV3"))
                                    ("SFK"
                                     ("SFK" "ONT:CELL-LINE" :ID "CVCL:R925"
                                      :NAME "SFK"))
                                    ("TG2"
                                     ("TG2" "ONT:CELL-LINE" :ID "CVCL:F231"
                                      :NAME "TG2"))
                                    ("XP30RO"
                                     ("XP30RO" "ONT:CELL-LINE" :ID "CVCL:7395"
                                      :NAME "XP30RO"))
                                    ("WW1"
                                     ("WW1" "ONT:CELL-LINE" :ID "CVCL:N782"
                                      :NAME "WW1"))
                                    ("WM793"
                                     ("WM793" "ONT:CELL-LINE" :ID "EFO:0002873"
                                      :NAME "WM793"))
                                    ("WM278"
                                     ("WM278" "ONT:CELL-LINE" :ID "CVCL:6473"
                                      :NAME "WM278"))
                                    ("DNA"
                                     ("DNA" "ONT:CELL-PART" :ID "CHEBI:16991"
                                      :NAME "deoxyribonucleic acid"))
                                    ("rhabdomeres"
                                     ("rhabdomeres" "ONT:CELL-PART" :ID
                                      "GO:0016028" :NAME "rhabdomere"))
                                    ("axon"
                                     ("axon" "ONT:CELL-PART" :ID "UP:SL-0279"
                                      :NAME "Axon"))
                                    ("autosomes"
                                     ("autosomes" "ONT:CELL-PART" :ID
                                      "GO:0030849" :NAME "autosome"))
                                    ("autophagosomes"
                                     ("autophagosomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0023" :NAME "Autophagosome"))
                                    ("autophagosome"
                                     ("autophagosome" "ONT:CELL-PART" :ID
                                      "UP:SL-0023" :NAME "Autophagosome"))
                                    ("aggresomes"
                                     ("aggresomes" "ONT:CELL-PART" :ID
                                      "GO:0016235" :NAME "aggresome"))
                                    ("aggresome"
                                     ("aggresome" "ONT:CELL-PART" :ID
                                      "GO:0016235" :NAME "aggresome"))
                                    ("actomyosin"
                                     ("actomyosin" "ONT:CELL-PART" :ID
                                      "GO:0042641" :NAME "actomyosin"))
                                    ("chromosomes"
                                     ("chromosomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0468" :NAME "Chromosome"))
                                    ("centrosome"
                                     ("centrosome" "ONT:CELL-PART" :ID
                                      "UP:SL-0048" :NAME "Centrosome"))
                                    ("centromeres"
                                     ("centromeres" "ONT:CELL-PART" :ID
                                      "UP:SL-0047" :NAME "Centromere"))
                                    ("centromere"
                                     ("centromere" "ONT:CELL-PART" :ID
                                      "UP:SL-0047" :NAME "Centromere"))
                                    ("centriole"
                                     ("centriole" "ONT:CELL-PART" :ID
                                      "UP:SL-0046" :NAME "Centriole"))
                                    ("dendrite"
                                     ("dendrite" "ONT:CELL-PART" :ID
                                      "UP:SL-0283" :NAME "Dendrite"))
                                    ("grooves"
                                     ("grooves" "ONT:CELL-PART" :ID
                                      "GO:0097610" :NAME
                                      "cell surface furrow"))
                                    ("flagellum"
                                     ("flagellum" "ONT:CELL-PART" :ID
                                      "UP:SL-0117" :NAME "Flagellum"))
                                    ("fibril"
                                     ("fibril" "ONT:CELL-PART" :ID "GO:0043205"
                                      :NAME "fibril"))
                                    ("exosomes"
                                     ("exosomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0466" :NAME "Exosome"))
                                    ("exosome"
                                     ("exosome" "ONT:CELL-PART" :ID
                                      "UP:SL-0466" :NAME "Exosome"))
                                    ("inflammasomes"
                                     ("inflammasomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0488" :NAME "Inflammasome"))
                                    ("inflammasome"
                                     ("inflammasome" "ONT:CELL-PART" :ID
                                      "UP:SL-0488" :NAME "Inflammasome"))
                                    ("melanosomes"
                                     ("melanosomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0161" :NAME "Melanosome"))
                                    ("lysosomes"
                                     ("lysosomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0158" :NAME "Lysosome"))
                                    ("lysosome"
                                     ("lysosome" "ONT:CELL-PART" :ID
                                      "UP:SL-0158" :NAME "Lysosome"))
                                    ("kinetochores"
                                     ("kinetochores" "ONT:CELL-PART" :ID
                                      "UP:SL-0149" :NAME "Kinetochore"))
                                    ("kinetochore"
                                     ("kinetochore" "ONT:CELL-PART" :ID
                                      "UP:SL-0149" :NAME "Kinetochore"))
                                    ("invadopodia"
                                     ("invadopodia" "ONT:CELL-PART" :ID
                                      "UP:SL-0148" :NAME "Invadopodium"))
                                    ("nucleoids"
                                     ("nucleoids" "ONT:CELL-PART" :ID
                                      "UP:SL-0187" :NAME "Nucleoid"))
                                    ("neurite"
                                     ("neurite" "ONT:CELL-PART" :ID
                                      "GO:0043005" :NAME "neuron projection"))
                                    ("microtubules"
                                     ("microtubules" "ONT:CELL-PART" :ID
                                      "GO:0005874" :NAME "microtubule"))
                                    ("microtubule"
                                     ("microtubule" "ONT:CELL-PART" :ID
                                      "GO:0005874" :NAME "microtubule"))
                                    ("organelles"
                                     ("organelles" "ONT:CELL-PART" :ID
                                      "GO:0043226" :NAME "organelle"))
                                    ("organelle"
                                     ("organelle" "ONT:CELL-PART" :ID
                                      "GO:0043226" :NAME "organelle"))
                                    ("pseudopodia"
                                     ("pseudopodia" "ONT:CELL-PART" :ID
                                      "UP:SL-0298" :NAME "Pseudopodium"))
                                    ("postsynapse"
                                     ("postsynapse" "ONT:CELL-PART" :ID
                                      "GO:0098794" :NAME "postsynapse"))
                                    ("polynucleotides"
                                     ("polynucleotides" "ONT:CELL-PART" :ID
                                      "CHEBI:15986" :NAME "polynucleotide"))
                                    ("podosomes"
                                     ("podosomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0295" :NAME "Podosome"))
                                    ("podosome"
                                     ("podosome" "ONT:CELL-PART" :ID
                                      "UP:SL-0295" :NAME "Podosome"))
                                    ("sarcomere"
                                     ("sarcomere" "ONT:CELL-PART" :ID
                                      "UP:SL-0313" :NAME "Sarcomere"))
                                    ("rhoptry"
                                     ("rhoptry" "ONT:CELL-PART" :ID
                                      "UP:SL-0233" :NAME "Rhoptry"))
                                    ("telomeres"
                                     ("telomeres" "ONT:CELL-PART" :ID
                                      "UP:SL-0276" :NAME "Telomere"))
                                    ("synaptosomes"
                                     ("synaptosomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0261" :NAME "Synaptosome"))
                                    ("synapses"
                                     ("synapses" "ONT:CELL-PART" :ID
                                      "UP:SL-0258" :NAME "Synapse"))
                                    ("synapse"
                                     ("synapse" "ONT:CELL-PART" :ID
                                      "UP:SL-0258" :NAME "Synapse"))
                                    ("vesicles"
                                     ("vesicles" "ONT:CELL-PART" :ID
                                      "GO:0031982" :NAME "vesicle"))
                                    ("vesicle"
                                     ("vesicle" "ONT:CELL-PART" :ID
                                      "GO:0031982" :NAME "vesicle"))
                                    ("vacuoles"
                                     ("vacuoles" "ONT:CELL-PART" :ID
                                      "UP:SL-0272" :NAME "Vacuole"))
                                    ("vacuole"
                                     ("vacuole" "ONT:CELL-PART" :ID
                                      "UP:SL-0272" :NAME "Vacuole"))
                                    ("amphiboles"
                                     ("amphiboles" "ONT:CHEMICAL" :ID
                                      "CHEBI:46677" :NAME
                                      "amphibole asbestos"))
                                    ("furans"
                                     ("furans" "ONT:CHEMICAL" :ID "NCIT:C44385"
                                      :NAME "furan"))
                                    ("teratogen"
                                     ("teratogen" "ONT:CHEMICAL" :ID
                                      "NCIT:C859" :NAME "teratogen"))
                                    ("GTP"
                                     ("GTP" "ONT:CHEMICAL" :ID "CHEBI:15996"
                                      :NAME "GTP"))
                                    ("GDP"
                                     ("GDP" "ONT:CHEMICAL" :ID "CHEBI:17552"
                                      :NAME "GDP"))
                                    ("HETE"
                                     ("HETE" "ONT:CHEMICAL" :ID "CHEBI:36275"
                                      :NAME "HETE"))
                                    ("NADH"
                                     ("NADH" "ONT:CHEMICAL" :ID "CHEBI:16908"
                                      :NAME "NADH"))
                                    ("biomarker"
                                     ("biomarker" "ONT:CHEMICAL" :ID
                                      "CHEBI:59163" :NAME "biomarker"))
                                    ("biliverdin"
                                     ("biliverdin" "ONT:CHEMICAL" :ID
                                      "CHEBI:17033" :NAME "biliverdin"))
                                    ("betaine"
                                     ("betaine" "ONT:CHEMICAL" :ID
                                      "CHEBI:17750" :NAME "glycine betaine"))
                                    ("apoproteins"
                                     ("apoproteins" "ONT:CHEMICAL" :ID
                                      "CHEBI:13850" :NAME "apoprotein"))
                                    ("antagonists"
                                     ("antagonists" "ONT:CHEMICAL" :ID
                                      "CHEBI:48706" :NAME "antagonist"))
                                    ("acrylamide"
                                     ("acrylamide" "ONT:CHEMICAL" :ID
                                      "NCIT:C44329" :NAME "acrylamide"))
                                    ("chromophores"
                                     ("chromophores" "ONT:CHEMICAL" :ID
                                      "CHEBI:23240" :NAME "chromophore"))
                                    ("cannabinoids"
                                     ("cannabinoids" "ONT:CHEMICAL" :ID
                                      "CHEBI:67194" :NAME "cannabinoid"))
                                    ("cannabinoid"
                                     ("cannabinoid" "ONT:CHEMICAL" :ID
                                      "CHEBI:67194" :NAME "cannabinoid"))
                                    ("electrophiles"
                                     ("electrophiles" "ONT:CHEMICAL" :ID
                                      "CHEBI:59739" :NAME
                                      "electrophilic reagent"))
                                    ("electrophile"
                                     ("electrophile" "ONT:CHEMICAL" :ID
                                      "CHEBI:59739" :NAME
                                      "electrophilic reagent"))
                                    ("ecdysone"
                                     ("ecdysone" "ONT:CHEMICAL" :ID
                                      "CHEBI:16688" :NAME "ecdysone"))
                                    ("digoxigenin"
                                     ("digoxigenin" "ONT:CHEMICAL" :ID
                                      "CHEBI:42098" :NAME "digoxigenin"))
                                    ("dUTP"
                                     ("dUTP" "ONT:CHEMICAL" :ID "CHEBI:17625"
                                      :NAME "dUTP"))
                                    ("cytidine"
                                     ("cytidine" "ONT:CHEMICAL" :ID
                                      "CHEBI:17562" :NAME "cytidine"))
                                    ("cystine"
                                     ("cystine" "ONT:CHEMICAL" :ID
                                      "CHEBI:17376" :NAME "cystine"))
                                    ("cyclohexane"
                                     ("cyclohexane" "ONT:CHEMICAL" :ID
                                      "CHEBI:29005" :NAME "cyclohexane"))
                                    ("cucurbitacins"
                                     ("cucurbitacins" "ONT:CHEMICAL" :ID
                                      "CHEBI:16219" :NAME "cucurbitacin"))
                                    ("guanosine"
                                     ("guanosine" "ONT:CHEMICAL" :ID
                                      "CHEBI:16750" :NAME "guanosine"))
                                    ("glyceraldehyde"
                                     ("glyceraldehyde" "ONT:CHEMICAL" :ID
                                      "CHEBI:5445" :NAME "glyceraldehyde"))
                                    ("glucosinolates"
                                     ("glucosinolates" "ONT:CHEMICAL" :ID
                                      "CHEBI:24279" :NAME "glucosinolate"))
                                    ("fluorescein"
                                     ("fluorescein" "ONT:CHEMICAL" :ID
                                      "CHEBI:31624" :NAME "fluorescein"))
                                    ("fluo3"
                                     ("fluo3" "ONT:CHEMICAL" :ID "CHEBI:5107"
                                      :NAME "Fluo-3"))
                                    ("ethylnitrosourea"
                                     ("ethylnitrosourea" "ONT:CHEMICAL" :ID
                                      "NCIT:C26563" :NAME "ethylnitrosourea"))
                                    ("ethane"
                                     ("ethane" "ONT:CHEMICAL" :ID "CHEBI:42266"
                                      :NAME "ethane"))
                                    ("estrogen"
                                     ("estrogen" "ONT:CHEMICAL" :ID
                                      "CHEBI:50114" :NAME "estrogen"))
                                    ("estradiol"
                                     ("estradiol" "ONT:CHEMICAL" :ID
                                      "CHEBI:23965" :NAME "estradiol"))
                                    ("endotoxin"
                                     ("endotoxin" "ONT:CHEMICAL" :ID
                                      "NCIT:C50918" :NAME "endotoxin"))
                                    ("hexane"
                                     ("hexane" "ONT:CHEMICAL" :ID "CHEBI:29021"
                                      :NAME "hexane"))
                                    ("hemin"
                                     ("hemin" "ONT:CHEMICAL" :ID "CHEBI:50385"
                                      :NAME "hemin"))
                                    ("hemes"
                                     ("hemes" "ONT:CHEMICAL" :ID "CHEBI:30413"
                                      :NAME "heme"))
                                    ("heme"
                                     ("heme" "ONT:CHEMICAL" :ID "CHEBI:30413"
                                      :NAME "heme"))
                                    ("haem"
                                     ("haem" "ONT:CHEMICAL" :ID "CHEBI:30413"
                                      :NAME "heme"))
                                    ("melanin"
                                     ("melanin" "ONT:CHEMICAL" :ID
                                      "CHEBI:89634" :NAME "Melanin"))
                                    ("mannans"
                                     ("mannans" "ONT:CHEMICAL" :ID
                                      "CHEBI:28808" :NAME "mannan"))
                                    ("lysophospholipids"
                                     ("lysophospholipids" "ONT:CHEMICAL" :ID
                                      "CHEBI:16961" :NAME
                                      "monoacylglycerol phosphate"))
                                    ("ionophores"
                                     ("ionophores" "ONT:CHEMICAL" :ID
                                      "CHEBI:24869" :NAME "ionophore"))
                                    ("ionophore"
                                     ("ionophore" "ONT:CHEMICAL" :ID
                                      "CHEBI:24869" :NAME "ionophore"))
                                    ("neurotransmitter"
                                     ("neurotransmitter" "ONT:CHEMICAL" :ID
                                      "CHEBI:25512" :NAME "neurotransmitter"))
                                    ("myristate"
                                     ("myristate" "ONT:CHEMICAL" :ID
                                      "CHEBI:30807" :NAME "tetradecanoate"))
                                    ("modifiers"
                                     ("modifiers" "ONT:CHEMICAL" :ID
                                      "NCIT:C1932" :NAME "chemical modifier"))
                                    ("mineralocorticoids"
                                     ("mineralocorticoids" "ONT:CHEMICAL" :ID
                                      "CHEBI:25354" :NAME "mineralocorticoid"))
                                    ("microcystin"
                                     ("microcystin" "ONT:CHEMICAL" :ID
                                      "CHEBI:48041" :NAME "microcystin"))
                                    ("metabolite"
                                     ("metabolite" "ONT:CHEMICAL" :ID
                                      "CHEBI:25212" :NAME "metabolite"))
                                    ("oxidants"
                                     ("oxidants" "ONT:CHEMICAL" :ID
                                      "CHEBI:63248" :NAME "oxidising agent"))
                                    ("osmolytes"
                                     ("osmolytes" "ONT:CHEMICAL" :ID
                                      "CHEBI:25728" :NAME "osmolyte"))
                                    ("oligomycin"
                                     ("oligomycin" "ONT:CHEMICAL" :ID
                                      "CHEBI:25675" :NAME "oligomycin"))
                                    ("pyrazine"
                                     ("pyrazine" "ONT:CHEMICAL" :ID
                                      "CHEBI:30953" :NAME "pyrazine"))
                                    ("propidium"
                                     ("propidium" "ONT:CHEMICAL" :ID
                                      "CHEBI:51246" :NAME "propidium"))
                                    ("propane"
                                     ("propane" "ONT:CHEMICAL" :ID
                                      "CHEBI:32879" :NAME "propane"))
                                    ("progestin"
                                     ("progestin" "ONT:CHEMICAL" :ID
                                      "CHEBI:59826" :NAME "progestin"))
                                    ("poisons"
                                     ("poisons" "ONT:CHEMICAL" :ID
                                      "CHEBI:64909" :NAME "poison"))
                                    ("phosphatidylethanolamine"
                                     ("phosphatidylethanolamine" "ONT:CHEMICAL"
                                      :ID "CHEBI:16038" :NAME
                                      "phosphatidylethanolamine"))
                                    ("serotonin"
                                     ("serotonin" "ONT:CHEMICAL" :ID
                                      "CHEBI:28790" :NAME "serotonin"))
                                    ("secretagogues"
                                     ("secretagogues" "ONT:CHEMICAL" :ID
                                      "CHEBI:90414" :NAME "secretagogue"))
                                    ("retinal"
                                     ("retinal" "ONT:CHEMICAL" :ID
                                      "CHEBI:15035" :NAME "retinal"))
                                    ("resolvins"
                                     ("resolvins" "ONT:CHEMICAL" :ID
                                      "CHEBI:132120" :NAME "resolvin"))
                                    ("reductants"
                                     ("reductants" "ONT:CHEMICAL" :ID
                                      "CHEBI:63247" :NAME "reducing agent"))
                                    ("reagents"
                                     ("reagents" "ONT:CHEMICAL" :ID
                                      "CHEBI:33893" :NAME "reagent"))
                                    ("thapsigargin"
                                     ("thapsigargin" "ONT:CHEMICAL" :ID
                                      "CHEBI:9516" :NAME "thapsigargin"))
                                    ("tetramethylrhodamine"
                                     ("tetramethylrhodamine" "ONT:CHEMICAL" :ID
                                      "CHEBI:52282" :NAME
                                      "tetramethylrhodamine"))
                                    ("testosterone"
                                     ("testosterone" "ONT:CHEMICAL" :ID
                                      "CHEBI:17347" :NAME "testosterone"))
                                    ("surfactants"
                                     ("surfactants" "ONT:CHEMICAL" :ID
                                      "CHEBI:35195" :NAME "surfactant"))
                                    ("superoxide"
                                     ("superoxide" "ONT:CHEMICAL" :ID
                                      "CHEBI:18421" :NAME "superoxide"))
                                    ("squalene"
                                     ("squalene" "ONT:CHEMICAL" :ID
                                      "CHEBI:15440" :NAME "squalene"))
                                    ("tunicamycin"
                                     ("tunicamycin" "ONT:CHEMICAL" :ID
                                      "CHEBI:29699" :NAME "tunicamycin"))
                                    ("triglycerides"
                                     ("triglycerides" "ONT:CHEMICAL" :ID
                                      "CHEBI:17855" :NAME "triglyceride"))
                                    ("tocotrienol"
                                     ("tocotrienol" "ONT:CHEMICAL" :ID
                                      "CHEBI:33235" :NAME "tocotrienol"))
                                    ("tocopherols"
                                     ("tocopherols" "ONT:CHEMICAL" :ID
                                      "CHEBI:27013" :NAME "tocopherol"))
                                    ("MiR-130a"
                                     ("MiR-130a" "ONT:GENE" :ID "NCIT:C82077"
                                      :NAME "MIR130A"))
                                    ("MiR-106b"
                                     ("MiR-106b" "ONT:GENE" :ID "NCIT:C82053"
                                      :NAME "MIR106B"))
                                    ("MLL5"
                                     ("MLL5" "ONT:GENE" :ID "NCIT:C93095" :NAME
                                      "MLL5"))
                                    ("MiR203"
                                     ("MiR203" "ONT:GENE" :ID "NCIT:C82158"
                                      :NAME "MIR203"))
                                    ("albumin"
                                     ("albumin" "ONT:GENE" :ID "HGNC:399" :NAME
                                      "albumin"))
                                    ("mIR10b"
                                     ("mIR10b" "ONT:GENE" :ID "NCIT:C81878"
                                      :NAME "MIR10B"))
                                    ("miRNA221"
                                     ("miRNA221" "ONT:GENE" :ID "NCIT:C82171"
                                      :NAME "MIR221"))
                                    ("miR29b2"
                                     ("miR29b2" "ONT:GENE" :ID "NCIT:C81915"
                                      :NAME "MIR29B2"))
                                    ("miR196a2"
                                     ("miR196a2" "ONT:GENE" :ID "NCIT:C82211"
                                      :NAME "MIR196A2"))
                                    ("DOR"
                                     ("DOR" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF14839.4" :NAME "DOR"))
                                    ("Caf1a"
                                     ("Caf1a" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF12253.6" :NAME "CAF1A"))
                                    ("Bmp"
                                     ("Bmp" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF02608.12" :NAME "bmp"))
                                    ("BAF"
                                     ("BAF" "ONT:GENE-PROTEIN" :ID "FA:00326"
                                      :NAME "BAF family"))
                                    ("AHH"
                                     ("AHH" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF14412.4" :NAME "AHH"))
                                    ("Lst2"
                                     ("Lst2" "ONT:GENE-PROTEIN" :ID "FA:02122"
                                      :NAME "lst-2 family"))
                                    ("IL-1"
                                     ("IL-1" "ONT:GENE-PROTEIN" :ID "FA:01820"
                                      :NAME "IL-1 family"))
                                    ("GnTI"
                                     ("GnTI" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03071.13" :NAME "GNT-I"))
                                    ("FAK−"
                                     ("FAK−" "ONT:GENE-PROTEIN" :ID "FA:03125"
                                      :NAME "FAK subfamily"))
                                    ("Rcd1"
                                     ("Rcd1" "ONT:GENE-PROTEIN" :ID "FA:03250"
                                      :NAME "RCD1 family"))
                                    ("Prp31"
                                     ("Prp31" "ONT:GENE-PROTEIN" :ID "FA:03162"
                                      :NAME "PRP31 family"))
                                    ("Not3"
                                     ("Not3" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04065.13" :NAME "not3"))
                                    ("Ump1"
                                     ("Ump1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05348.9" :NAME "UMP1"))
                                    ("Tph"
                                     ("Tph" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF13868.4" :NAME "TPH"))
                                    ("Tctex-1"
                                     ("Tctex-1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03645.11" :NAME "tctex-1"))
                                    ("TTRAP"
                                     ("TTRAP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF14203.4" :NAME "TTRAP"))
                                    ("TRiC"
                                     ("TRiC" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05197.11" :NAME "TRIC"))
                                    ("Sgt1"
                                     ("Sgt1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF07093.9" :NAME "SGT1"))
                                    ("hif-1α"
                                     ("hif-1α" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q16665" :NAME
                                      "Hypoxia-inducible factor 1-alpha"))
                                    ("haemoagglutinin"
                                     ("haemoagglutinin" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00509.16" :NAME "hemagglutinin"))
                                    ("eya"
                                     ("eya" "ONT:GENE-PROTEIN" :ID "FA:01701"
                                      :NAME "EYA family"))
                                    ("trm4"
                                     ("trm4" "ONT:GENE-PROTEIN" :ID "FA:02281"
                                      :NAME "TRM4 subfamily"))
                                    ("trm10"
                                     ("trm10" "ONT:GENE-PROTEIN" :ID "FA:03408"
                                      :NAME "TRM10 family"))
                                    ("GalNAcT"
                                     ("GalNAcT" "ONT:GENE-PROTEIN" :ID
                                      "FA:01603" :NAME "galNAc-T subfamily"))
                                    ("GPP34"
                                     ("GPP34" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05719.9" :NAME "GPP34"))
                                    ("GP3"
                                     ("GP3" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03076.12" :NAME "GP3"))
                                    ("GNAT"
                                     ("GNAT" "ONT:GENE-PROTEIN" :ID "FA:00070"
                                      :NAME "GNAT subfamily"))
                                    ("GKAP"
                                     ("GKAP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03359.11" :NAME "GKAP"))
                                    ("GIPC"
                                     ("GIPC" "ONT:GENE-PROTEIN" :ID "FA:01512"
                                      :NAME "GIPC family"))
                                    ("GIN"
                                     ("GIN" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF10764.7" :NAME "gin"))
                                    ("GDI"
                                     ("GDI" "ONT:GENE-PROTEIN" :ID "GO:0005092"
                                      :NAME
                                      "GDP-dissociation inhibitor activity"))
                                    ("GCN2"
                                     ("GCN2" "ONT:GENE-PROTEIN" :ID "FA:03102"
                                      :NAME "GCN2 subfamily"))
                                    ("GARP"
                                     ("GARP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF16731.3" :NAME "GARP"))
                                    ("HPPs"
                                     ("HPPs" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04982.11" :NAME "HPP"))
                                    ("HPP"
                                     ("HPP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04982.11" :NAME "HPP"))
                                    ("HIF1α"
                                     ("HIF1α" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q16665" :NAME
                                      "Hypoxia-inducible factor 1-alpha"))
                                    ("HEN1"
                                     ("HEN1" "ONT:GENE-PROTEIN" :ID "FA:04848"
                                      :NAME "HEN1 family"))
                                    ("HCC"
                                     ("HCC" "ONT:GENE-PROTEIN" :ID "UP:Q9NFL6"
                                      :NAME "Hemocyanin C chain"))
                                    ("HAT"
                                     ("HAT" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF02184.14" :NAME "HAT"))
                                    ("HARP"
                                     ("HARP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF07443.11" :NAME "HARP"))
                                    ("GrpE"
                                     ("GrpE" "ONT:GENE-PROTEIN" :ID "FA:01665"
                                      :NAME "grpE family"))
                                    ("GnRHs"
                                     ("GnRHs" "ONT:GENE-PROTEIN" :ID "FA:01630"
                                      :NAME "GnRH family"))
                                    ("Glypicans"
                                     ("Glypicans" "ONT:GENE-PROTEIN" :ID
                                      "FA:01627" :NAME "glypican family"))
                                    ("Gld2"
                                     ("Gld2" "ONT:GENE-PROTEIN" :ID "FA:00979"
                                      :NAME "GLD2 subfamily"))
                                    ("Gcn5"
                                     ("Gcn5" "ONT:GENE-PROTEIN" :ID "FA:00068"
                                      :NAME "GCN5 subfamily"))
                                    ("IL1"
                                     ("IL1" "ONT:GENE-PROTEIN" :ID "FA:01820"
                                      :NAME "IL-1 family"))
                                    ("Hop2"
                                     ("Hop2" "ONT:GENE-PROTEIN" :ID "FA:01789"
                                      :NAME "HOP2 family"))
                                    ("Hic"
                                     ("Hic" "ONT:GENE-PROTEIN" :ID "FA:01997"
                                      :NAME "hic subfamily"))
                                    ("Hets"
                                     ("Hets" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06985.9" :NAME "HET"))
                                    ("Jun"
                                     ("Jun" "ONT:GENE-PROTEIN" :ID "FA:00409"
                                      :NAME "jun subfamily"))
                                    ("JAB"
                                     ("JAB" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF01398.19" :NAME "JAB"))
                                    ("Il23"
                                     ("Il23" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF16649.3" :NAME "IL23"))
                                    ("ITIH"
                                     ("ITIH" "ONT:GENE-PROTEIN" :ID "FA:01924"
                                      :NAME "ITIH family"))
                                    ("ITFG3"
                                     ("ITFG3" "ONT:GENE-PROTEIN" :ID "FA:01923"
                                      :NAME "ITFG3 family"))
                                    ("INCa"
                                     ("INCa" "ONT:GENE-PROTEIN" :ID "FA:01853"
                                      :NAME "INCA family"))
                                    ("LRRC8"
                                     ("LRRC8" "ONT:GENE-PROTEIN" :ID "FA:05277"
                                      :NAME "LRRC8 family"))
                                    ("LMP"
                                     ("LMP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04778.10" :NAME "LMP"))
                                    ("LIP1"
                                     ("LIP1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15904.3" :NAME "LIP1"))
                                    ("LIP"
                                     ("LIP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03583.12" :NAME "LIP"))
                                    ("LEDGF"
                                     ("LEDGF" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF11467.6" :NAME "LEDGF"))
                                    ("Ku70"
                                     ("Ku70" "ONT:GENE-PROTEIN" :ID "FA:02002"
                                      :NAME "Ku70 family"))
                                    ("Kin17"
                                     ("Kin17" "ONT:GENE-PROTEIN" :ID "FA:01961"
                                      :NAME "KIN17 family"))
                                    ("Kibra"
                                     ("Kibra" "ONT:GENE-PROTEIN" :ID "FA:04691"
                                      :NAME "KIBRA subfamily"))
                                    ("KRAB"
                                     ("KRAB" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF01352.25" :NAME "KRAB"))
                                    ("MNR"
                                     ("MNR" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15718.3" :NAME "MNR"))
                                    ("MIC1"
                                     ("MIC1" "ONT:GENE-PROTEIN" :ID "FA:02299"
                                      :NAME "mic1 family"))
                                    ("METTL20"
                                     ("METTL20" "ONT:GENE-PROTEIN" :ID
                                      "FA:04857" :NAME "METTL20 family"))
                                    ("MEF2"
                                     ("MEF2" "ONT:GENE-PROTEIN" :ID "FA:02224"
                                      :NAME "MEF2 family"))
                                    ("Lin28"
                                     ("Lin28" "ONT:GENE-PROTEIN" :ID "FA:02093"
                                      :NAME "lin-28 family"))
                                    ("Larp"
                                     ("Larp" "ONT:GENE-PROTEIN" :ID "FA:02014"
                                      :NAME "LARP family"))
                                    ("Mo25"
                                     ("Mo25" "ONT:GENE-PROTEIN" :ID "FA:02331"
                                      :NAME "Mo25 family"))
                                    ("Mis14"
                                     ("Mis14" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF08641.10" :NAME "mis14"))
                                    ("Mis12"
                                     ("Mis12" "ONT:GENE-PROTEIN" :ID "FA:02309"
                                      :NAME "mis12 family"))
                                    ("MRIs"
                                     ("MRIs" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15325.4" :NAME "MRI"))
                                    ("MRI"
                                     ("MRI" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15325.4" :NAME "MRI"))
                                    ("MRF"
                                     ("MRF" "ONT:GENE-PROTEIN" :ID "FA:02356"
                                      :NAME "MRF family"))
                                    ("OATP"
                                     ("OATP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03137.18" :NAME "OATP"))
                                    ("Npl4"
                                     ("Npl4" "ONT:GENE-PROTEIN" :ID "FA:02512"
                                      :NAME "NPL4 family"))
                                    ("Notum"
                                     ("Notum" "ONT:GENE-PROTEIN" :ID "FA:05336"
                                      :NAME "notum subfamily"))
                                    ("NUT"
                                     ("NUT" "ONT:GENE-PROTEIN" :ID "FA:05191"
                                      :NAME "NUT family"))
                                    ("NSE2"
                                     ("NSE2" "ONT:GENE-PROTEIN" :ID "FA:02522"
                                      :NAME "NSE2 family"))
                                    ("NSE1"
                                     ("NSE1" "ONT:GENE-PROTEIN" :ID "FA:02521"
                                      :NAME "NSE1 family"))
                                    ("NPIP"
                                     ("NPIP" "ONT:GENE-PROTEIN" :ID "FA:02511"
                                      :NAME "NPIP family"))
                                    ("PI3KC2β"
                                     ("PI3KC2β" "ONT:GENE-PROTEIN" :ID
                                      "UP:O00750" :NAME
                                      "Phosphatidylinositol 4-phosphate 3-kinase C2 domain-containing subunit beta"))
                                    ("PDE3"
                                     ("PDE3" "ONT:GENE-PROTEIN" :ID "FA:00803"
                                      :NAME "PDE3 subfamily"))
                                    ("PBCs"
                                     ("PBCs" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03792.11" :NAME "PBC"))
                                    ("PBC"
                                     ("PBC" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03792.11" :NAME "PBC"))
                                    ("P4HAs"
                                     ("P4HAs" "ONT:GENE-PROTEIN" :ID "FA:02631"
                                      :NAME "P4HA family"))
                                    ("Ost1"
                                     ("Ost1" "ONT:GENE-PROTEIN" :ID "FA:02613"
                                      :NAME "OST1 family"))
                                    ("Piwi"
                                     ("Piwi" "ONT:GENE-PROTEIN" :ID "FA:00252"
                                      :NAME "piwi subfamily"))
                                    ("PilT"
                                     ("PilT" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15453.4" :NAME "pilt"))
                                    ("Pat1"
                                     ("Pat1" "ONT:GENE-PROTEIN" :ID "FA:02661"
                                      :NAME "PAT1 family"))
                                    ("PRR"
                                     ("PRR" "ONT:GENE-PROTEIN" :ID "UP:P07052"
                                      :NAME
                                      "Pathogenesis-related protein R minor form"))
                                    ("PP5"
                                     ("PP5" "ONT:GENE-PROTEIN" :ID "UP:P53041"
                                      :NAME
                                      "Serine/threonine-protein phosphatase 5"))
                                    ("PP1"
                                     ("PP1" "ONT:GENE-PROTEIN" :ID "FA:03001"
                                      :NAME "PP-1 subfamily"))
                                    ("PLUNC"
                                     ("PLUNC" "ONT:GENE-PROTEIN" :ID "FA:00392"
                                      :NAME "plunc family"))
                                    ("PKD"
                                     ("PKD" "ONT:GENE-PROTEIN" :ID "FA:03079"
                                      :NAME "PKD subfamily"))
                                    ("PI3ks"
                                     ("PI3ks" "ONT:GENE-PROTEIN" :ID
                                      "UP:P54673" :NAME
                                      "Phosphatidylinositol 3-kinase 1"))
                                    ("RITA"
                                     ("RITA" "ONT:GENE-PROTEIN" :ID "FA:04818"
                                      :NAME "RITA family"))
                                    ("RAMPS"
                                     ("RAMPS" "ONT:GENE-PROTEIN" :ID "FA:03229"
                                      :NAME "RAMP family"))
                                    ("SAS4"
                                     ("SAS4" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15460.4" :NAME "SAS4"))
                                    ("SAPK"
                                     ("SAPK" "ONT:GENE-PROTEIN" :ID
                                      "GO:0016909" :NAME
                                      "SAP kinase activity"))
                                    ("RyR"
                                     ("RyR" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF02026.14" :NAME "RyR"))
                                    ("RhoGAP"
                                     ("RhoGAP" "ONT:GENE-PROTEIN" :ID
                                      "UP:P38339" :NAME
                                      "RHO GTPase-activating protein RGD1"))
                                    ("RasGRP"
                                     ("RasGRP" "ONT:GENE-PROTEIN" :ID
                                      "FA:03235" :NAME "RASGRP family"))
                                    ("Rad9"
                                     ("Rad9" "ONT:GENE-PROTEIN" :ID "FA:03221"
                                      :NAME "RAD9 family"))
                                    ("Rabs"
                                     ("Rabs" "ONT:GENE-PROTEIN" :ID "FA:03661"
                                      :NAME "rab family"))
                                    ("SYD"
                                     ("SYD" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF07348.10" :NAME "syd"))
                                    ("SSX"
                                     ("SSX" "ONT:GENE-PROTEIN" :ID "FA:03840"
                                      :NAME "SSX family"))
                                    ("SPF27"
                                     ("SPF27" "ONT:GENE-PROTEIN" :ID "FA:03804"
                                      :NAME "SPF27 family"))
                                    ("SPANX"
                                     ("SPANX" "ONT:GENE-PROTEIN" :ID "FA:03786"
                                      :NAME "SPAN-X family"))
                                    ("SOUL"
                                     ("SOUL" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04832.10" :NAME "SOUL"))
                                    ("SNAPs"
                                     ("SNAPs" "ONT:GENE-PROTEIN" :ID "FA:03701"
                                      :NAME "SNAP family"))
                                    ("SMPs"
                                     ("SMPs" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04927.10" :NAME "SMP"))
                                    ("SMCR7"
                                     ("SMCR7" "ONT:GENE-PROTEIN" :ID "FA:03692"
                                      :NAME "SMCR7 family"))
                                    ("SKI2"
                                     ("SKI2" "ONT:GENE-PROTEIN" :ID "FA:01735"
                                      :NAME "SKI2 subfamily"))
                                    ("SGT"
                                     ("SGT" "ONT:GENE-PROTEIN" :ID "FA:03594"
                                      :NAME "SGT family"))
                                    ("SEC1"
                                     ("SEC1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00995.21" :NAME "sec1"))
                                    ("SEA"
                                     ("SEA" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF01390.18" :NAME "SEA"))
                                    ("SCFs"
                                     ("SCFs" "ONT:GENE-PROTEIN" :ID "FA:03513"
                                      :NAME "SCF family"))
                                    ("Strumpellin"
                                     ("Strumpellin" "ONT:GENE-PROTEIN" :ID
                                      "FA:03857" :NAME "strumpellin family"))
                                    ("Spartan"
                                     ("Spartan" "ONT:GENE-PROTEIN" :ID
                                      "FA:05084" :NAME "spartan family"))
                                    ("Slp"
                                     ("Slp" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03843.11" :NAME "slp"))
                                    ("Set2"
                                     ("Set2" "ONT:GENE-PROTEIN" :ID "FA:01770"
                                      :NAME "SET2 subfamily"))
                                    ("Tom70"
                                     ("Tom70" "ONT:GENE-PROTEIN" :ID "FA:04130"
                                      :NAME "tom70 family"))
                                    ("Timeless"
                                     ("Timeless" "ONT:GENE-PROTEIN" :ID
                                      "FA:04022" :NAME "timeless family"))
                                    ("Tie"
                                     ("Tie" "ONT:GENE-PROTEIN" :ID "FA:03134"
                                      :NAME "tie subfamily"))
                                    ("Themis"
                                     ("Themis" "ONT:GENE-PROTEIN" :ID
                                      "FA:03994" :NAME "themis family"))
                                    ("Tgfβ"
                                     ("Tgfβ" "ONT:GENE-PROTEIN" :ID "FA:03989"
                                      :NAME "TGF-beta family"))
                                    ("Tetherin"
                                     ("Tetherin" "ONT:GENE-PROTEIN" :ID
                                      "FA:04784" :NAME "tetherin family"))
                                    ("TSG"
                                     ("TSG" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04668.10" :NAME "tsg"))
                                    ("TSAs"
                                     ("TSAs" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03249.11" :NAME "TSA"))
                                    ("TRS85"
                                     ("TRS85" "ONT:GENE-PROTEIN" :ID "FA:04220"
                                      :NAME "TRS85 family"))
                                    ("TRAM"
                                     ("TRAM" "ONT:GENE-PROTEIN" :ID "FA:04146"
                                      :NAME "TRAM family"))
                                    ("TIP120"
                                     ("TIP120" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF08623.8" :NAME "TIP120"))
                                    ("TFAs"
                                     ("TFAs" "ONT:GENE-PROTEIN" :ID "FA:03988"
                                      :NAME "TFA subfamily"))
                                    ("TFA"
                                     ("TFA" "ONT:GENE-PROTEIN" :ID "FA:03988"
                                      :NAME "TFA subfamily"))
                                    ("aBCC"
                                     ("aBCC" "ONT:GENE-PROTEIN" :ID "FA:00048"
                                      :NAME "ABCC family"))
                                    ("Zeta"
                                     ("Zeta" "ONT:GENE-PROTEIN" :ID "FA:01677"
                                      :NAME "zeta family"))
                                    ("WAVE"
                                     ("WAVE" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF07507.9" :NAME "WavE"))
                                    ("WASp"
                                     ("WASp" "ONT:GENE-PROTEIN" :ID "UP:P42768"
                                      :NAME
                                      "Wiskott-Aldrich syndrome protein"))
                                    ("axin"
                                     ("axin" "ONT:GENE-PROTEIN" :ID "UP:Q9V407"
                                      :NAME "Axin"))
                                    ("arf"
                                     ("arf" "ONT:GENE-PROTEIN" :ID "FA:03659"
                                      :NAME "arf family"))
                                    ("apo"
                                     ("apo" "ONT:GENE-PROTEIN" :ID "UP:Q8N6M6"
                                      :NAME "Aminopeptidase O"))
                                    ("amphiregulin"
                                     ("amphiregulin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:651" :NAME "amphiregulin"))
                                    ("alkB"
                                     ("alkB" "ONT:GENE-PROTEIN" :ID "FA:00158"
                                      :NAME "alkB family"))
                                    ("acini"
                                     ("acini" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q9UKV3" :NAME
                                      "Apoptotic chromatin condensation inducer in the nucleus"))
                                    ("abl"
                                     ("abl" "ONT:GENE-PROTEIN" :ID "UP:Q00022"
                                      :NAME "Agaricus bisporus lectin"))
                                    ("ck2"
                                     ("ck2" "ONT:GENE-PROTEIN" :ID "FA:03101"
                                      :NAME "CK2 subfamily"))
                                    ("cis"
                                     ("cis" "ONT:GENE-PROTEIN" :ID "UP:Q2HJ53"
                                      :NAME
                                      "Cytokine-inducible SH2-containing protein"))
                                    ("calpain"
                                     ("calpain" "ONT:GENE-PROTEIN" :ID
                                      "UP:P27730" :NAME "Calpain"))
                                    ("cIII"
                                     ("cIII" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF08134.9" :NAME "cIII"))
                                    ("elf"
                                     ("elf" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03317.11" :NAME "ELF"))
                                    ("eIF2alpha"
                                     ("eIF2alpha" "ONT:GENE-PROTEIN" :ID
                                      "FA:01067" :NAME "eIF-2-alpha family"))
                                    ("dynamin"
                                     ("dynamin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P39055" :NAME "Dynamin"))
                                    ("cystatin"
                                     ("cystatin" "ONT:GENE-PROTEIN" :ID
                                      "FA:00839" :NAME "cystatin family"))
                                    ("cyclin D1"
                                     ("cyclin D1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1582" :NAME "cyclin D1"))
                                    ("cyclins"
                                     ("cyclins" "ONT:GENE-PROTEIN" :ID
                                      "FA:00815" :NAME "cyclin family"))
                                    ("cyclin"
                                     ("cyclin" "ONT:GENE-PROTEIN" :ID
                                      "FA:00815" :NAME "cyclin family"))
                                    ("ctf8"
                                     ("ctf8" "ONT:GENE-PROTEIN" :ID "FA:00779"
                                      :NAME "CTF8 family"))
                                    ("gst"
                                     ("gst" "ONT:GENE-PROTEIN" :ID "FA:01669"
                                      :NAME "GST superfamily"))
                                    ("gp41"
                                     ("gp41" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00517.15" :NAME "GP41"))
                                    ("glypican"
                                     ("glypican" "ONT:GENE-PROTEIN" :ID
                                      "FA:01627" :NAME "glypican family"))
                                    ("glycogenin"
                                     ("glycogenin" "ONT:GENE-PROTEIN" :ID
                                      "FA:05057" :NAME "glycogenin subfamily"))
                                    ("glucagon"
                                     ("glucagon" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4191" :NAME "glucagon"))
                                    ("gadd45"
                                     ("gadd45" "ONT:GENE-PROTEIN" :ID
                                      "FA:01442" :NAME "GADD45 family"))
                                    ("fos"
                                     ("fos" "ONT:GENE-PROTEIN" :ID "FA:00408"
                                      :NAME "fos subfamily"))
                                    ("fibrillins"
                                     ("fibrillins" "ONT:GENE-PROTEIN" :ID
                                      "FA:01347" :NAME "fibrillin family"))
                                    ("fibrillin"
                                     ("fibrillin" "ONT:GENE-PROTEIN" :ID
                                      "FA:01347" :NAME "fibrillin family"))
                                    ("fak"
                                     ("fak" "ONT:GENE-PROTEIN" :ID "FA:03125"
                                      :NAME "FAK subfamily"))
                                    ("ets"
                                     ("ets" "ONT:GENE-PROTEIN" :ID "FA:01142"
                                      :NAME "ETS family"))
                                    ("erd2"
                                     ("erd2" "ONT:GENE-PROTEIN" :ID "FA:01126"
                                      :NAME "ERD2 family"))
                                    ("ephrinB1"
                                     ("ephrinB1" "ONT:GENE-PROTEIN" :ID
                                      "UP:O73612" :NAME "Ephrin-B1"))
                                    ("immunoglobulin"
                                     ("immunoglobulin" "ONT:GENE-PROTEIN" :ID
                                      "FA:01833" :NAME
                                      "immunoglobulin superfamily"))
                                    ("het"
                                     ("het" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06985.9" :NAME "HET"))
                                    ("hemagglutinins"
                                     ("hemagglutinins" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00509.16" :NAME "hemagglutinin"))
                                    ("haspin"
                                     ("haspin" "ONT:GENE-PROTEIN" :ID
                                      "FA:03103" :NAME "haspin subfamily"))
                                    ("masks"
                                     ("masks" "ONT:GENE-PROTEIN" :ID "FA:02180"
                                      :NAME "mask family"))
                                    ("mRG"
                                     ("mRG" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05712.11" :NAME "MRG"))
                                    ("liprins"
                                     ("liprins" "ONT:GENE-PROTEIN" :ID
                                      "FA:02102" :NAME "liprin family"))
                                    ("liprin"
                                     ("liprin" "ONT:GENE-PROTEIN" :ID
                                      "FA:02102" :NAME "liprin family"))
                                    ("lipoxygenase"
                                     ("lipoxygenase" "ONT:GENE-PROTEIN" :ID
                                      "FA:02101" :NAME "lipoxygenase family"))
                                    ("lipooxygenase"
                                     ("lipooxygenase" "ONT:GENE-PROTEIN" :ID
                                      "FA:02101" :NAME "lipoxygenase family"))
                                    ("leptin"
                                     ("leptin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6553" :NAME "leptin"))
                                    ("ldh"
                                     ("ldh" "ONT:GENE-PROTEIN" :ID "FA:02022"
                                      :NAME "LDH family"))
                                    ("lax"
                                     ("lax" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15681.3" :NAME "LAX"))
                                    ("kinesin"
                                     ("kinesin" "ONT:GENE-PROTEIN" :ID
                                      "FA:01965" :NAME "kinesin family"))
                                    ("kinase"
                                     ("kinase" "ONT:GENE-PROTEIN" :ID
                                      "GO:0016301" :NAME "kinase activity"))
                                    ("kinases"
                                     ("kinases" "ONT:GENE-PROTEIN" :ID
                                      "GO:0016301" :NAME "kinase activity"))
                                    ("kallikrein"
                                     ("kallikrein" "ONT:GENE-PROTEIN" :ID
                                      "FA:02764" :NAME "kallikrein subfamily"))
                                    ("jak"
                                     ("jak" "ONT:GENE-PROTEIN" :ID "FA:03129"
                                      :NAME "JAK subfamily"))
                                    ("nramp"
                                     ("nramp" "ONT:GENE-PROTEIN" :ID "FA:02517"
                                      :NAME "NRAMP family"))
                                    ("nodal"
                                     ("nodal" "ONT:GENE-PROTEIN" :ID
                                      "UP:P43021" :NAME "Nodal"))
                                    ("nod"
                                     ("nod" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06816.11" :NAME "NOD"))
                                    ("neuregulin"
                                     ("neuregulin" "ONT:GENE-PROTEIN" :ID
                                      "FA:02444" :NAME "neuregulin family"))
                                    ("myozenin"
                                     ("myozenin" "ONT:GENE-PROTEIN" :ID
                                      "FA:02396" :NAME "myozenin family"))
                                    ("mut7"
                                     ("mut7" "ONT:GENE-PROTEIN" :ID "FA:02385"
                                      :NAME "mut-7 family"))
                                    ("mitofilin"
                                     ("mitofilin" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF09731.7" :NAME "mitofilin"))
                                    ("merlin"
                                     ("merlin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P35240" :NAME "Merlin"))
                                    ("mer"
                                     ("mer" "ONT:GENE-PROTEIN" :ID "UP:P84089"
                                      :NAME "Enhancer of rudimentary homolog"))
                                    ("p53"
                                     ("p53" "ONT:GENE-PROTEIN" :ID "FA:02632"
                                      :NAME "p53 family"))
                                    ("p44"
                                     ("p44" "ONT:GENE-PROTEIN" :ID "UP:Q8TCB0"
                                      :NAME "Interferon-induced protein 44"))
                                    ("perilipin"
                                     ("perilipin" "ONT:GENE-PROTEIN" :ID
                                      "FA:02794" :NAME "perilipin family"))
                                    ("pericentrin"
                                     ("pericentrin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16068" :NAME "pericentrin"))
                                    ("patched"
                                     ("patched" "ONT:GENE-PROTEIN" :ID
                                      "FA:02662" :NAME "patched family"))
                                    ("parp"
                                     ("parp" "ONT:GENE-PROTEIN" :ID "UP:P35875"
                                      :NAME "Poly [ADP-ribose] polymerase"))
                                    ("paraoxonase"
                                     ("paraoxonase" "ONT:GENE-PROTEIN" :ID
                                      "FA:02656" :NAME "paraoxonase family"))
                                    ("pSp1"
                                     ("pSp1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04468.10" :NAME "PSP1"))
                                    ("pMT"
                                     ("pMT" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF02366.16" :NAME "PMT"))
                                    ("ramp"
                                     ("ramp" "ONT:GENE-PROTEIN" :ID "FA:03229"
                                      :NAME "RAMP family"))
                                    ("raf"
                                     ("raf" "ONT:GENE-PROTEIN" :ID "FA:03114"
                                      :NAME "RAF subfamily"))
                                    ("rac"
                                     ("rac" "ONT:GENE-PROTEIN" :ID "FA:03066"
                                      :NAME "RAC subfamily"))
                                    ("rab"
                                     ("rab" "ONT:GENE-PROTEIN" :ID "FA:03661"
                                      :NAME "rab family"))
                                    ("rMP"
                                     ("rMP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF14996.4" :NAME "RMP"))
                                    ("quinone oxidoreductase"
                                     ("quinone oxidoreductase"
                                      "ONT:GENE-PROTEIN" :ID "UP:Q08257" :NAME
                                      "Quinone oxidoreductase"))
                                    ("puma"
                                     ("puma" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15826.3" :NAME "PUMA"))
                                    ("prohibitin"
                                     ("prohibitin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8912" :NAME "prohibitin"))
                                    ("prey"
                                     ("prey" "ONT:GENE-PROTEIN" :ID "FA:03013"
                                      :NAME "PREY family"))
                                    ("polycystins"
                                     ("polycystins" "ONT:GENE-PROTEIN" :ID
                                      "FA:02910" :NAME "polycystin family"))
                                    ("pim"
                                     ("pim" "ONT:GENE-PROTEIN" :ID "FA:03078"
                                      :NAME "PIM subfamily"))
                                    ("pif"
                                     ("pif" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05092.10" :NAME "PIF"))
                                    ("shp"
                                     ("shp" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03579.11" :NAME "SHP"))
                                    ("serpin"
                                     ("serpin" "ONT:GENE-PROTEIN" :ID
                                      "FA:03578" :NAME "serpin family"))
                                    ("sedlin"
                                     ("sedlin" "ONT:GENE-PROTEIN" :ID
                                      "FA:04199" :NAME "sedlin subfamily"))
                                    ("sec2"
                                     ("sec2" "ONT:GENE-PROTEIN" :ID "FA:03531"
                                      :NAME "SEC2 family"))
                                    ("sds22"
                                     ("sds22" "ONT:GENE-PROTEIN" :ID "FA:03526"
                                      :NAME "SDS22 family"))
                                    ("sTOP"
                                     ("sTOP" "ONT:GENE-PROTEIN" :ID "FA:03855"
                                      :NAME "STOP family"))
                                    ("rod"
                                     ("rod" "ONT:GENE-PROTEIN" :ID "UP:P50748"
                                      :NAME
                                      "Kinetochore-associated protein 1"))
                                    ("rhino"
                                     ("rhino" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15319.4" :NAME "RHINO"))
                                    ("rheb"
                                     ("rheb" "ONT:GENE-PROTEIN" :ID "FA:03667"
                                      :NAME "rheb family"))
                                    ("reprimo"
                                     ("reprimo" "ONT:GENE-PROTEIN" :ID
                                      "FA:03263" :NAME "reprimo family"))
                                    ("ref"
                                     ("ref" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05755.10" :NAME "REF"))
                                    ("ras"
                                     ("ras" "ONT:GENE-PROTEIN" :ID "FA:03663"
                                      :NAME "ras family"))
                                    ("raptor"
                                     ("raptor" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q8N122" :NAME
                                      "Regulatory-associated protein of mTOR"))
                                    ("tensin"
                                     ("tensin" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q04205" :NAME "Tensin"))
                                    ("taxilin"
                                     ("taxilin" "ONT:GENE-PROTEIN" :ID
                                      "FA:03935" :NAME "taxilin family"))
                                    ("synuclein"
                                     ("synuclein" "ONT:GENE-PROTEIN" :ID
                                      "UP:P37379" :NAME "Synuclein"))
                                    ("sulfatase"
                                     ("sulfatase" "ONT:GENE-PROTEIN" :ID
                                      "FA:03872" :NAME "sulfatase family"))
                                    ("ste20"
                                     ("ste20" "ONT:GENE-PROTEIN" :ID "FA:03111"
                                      :NAME "STE20 subfamily"))
                                    ("stathmin"
                                     ("stathmin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P16949" :NAME "Stathmin"))
                                    ("siD1"
                                     ("siD1" "ONT:GENE-PROTEIN" :ID "FA:03617"
                                      :NAME "SID1 family"))
                                    ("vimentin"
                                     ("vimentin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12692" :NAME "vimentin"))
                                    ("vSNARE"
                                     ("vSNARE" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05008.13" :NAME "V-SNARE"))
                                    ("uPAR"
                                     ("uPAR" "ONT:GENE-PROTEIN" :ID "UP:Q03405"
                                      :NAME
                                      "Urokinase plasminogen activator surface receptor"))
                                    ("uPA"
                                     ("uPA" "ONT:GENE-PROTEIN" :ID "UP:P00749"
                                      :NAME
                                      "Urokinase-type plasminogen activator"))
                                    ("tropomyosin"
                                     ("tropomyosin" "ONT:GENE-PROTEIN" :ID
                                      "UP:O01673" :NAME "Tropomyosin"))
                                    ("xin"
                                     ("xin" "ONT:GENE-PROTEIN" :ID "FA:04696"
                                      :NAME "xin family"))
                                    ("drosophila"
                                     ("drosophila" "ONT:INSECT" :ID
                                      "NCIT:C14202" :NAME "drosophila"))
                                    ("biofilms"
                                     ("biofilms" "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0002690" :NAME "biofilm"))
                                    ("conceptuses"
                                     ("conceptuses" "ONT:INTERNAL-BODY-PART"
                                      :ID "BTO:0003834" :NAME "conceptus"))
                                    ("choanoflagellates"
                                     ("choanoflagellates"
                                      "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0003434" :NAME "choanomastigote"))
                                    ("cysts"
                                     ("cysts" "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0000320" :NAME "cyst"))
                                    ("epimastigotes"
                                     ("epimastigotes" "ONT:INTERNAL-BODY-PART"
                                      :ID "BTO:0000409" :NAME "epimastigote"))
                                    ("mycelium"
                                     ("mycelium" "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0001436" :NAME "mycelium"))
                                    ("promastigotes"
                                     ("promastigotes" "ONT:INTERNAL-BODY-PART"
                                      :ID "BTO:0001124" :NAME "promastigote"))
                                    ("trypomastigotes"
                                     ("trypomastigotes"
                                      "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0001398" :NAME "trypomastigote"))
                                    ("arthropods"
                                     ("arthropods" "ONT:INVERTEBRATE" :ID
                                      "NCIT:C77917" :NAME "arthropoda"))
                                    ("nanometers"
                                     ("nanometers" "ONT:LENGTH-UNIT" :ID
                                      "UO:0000018" :NAME "nanometer"))
                                    ("micrometers"
                                     ("micrometers" "ONT:LENGTH-UNIT" :ID
                                      "UO:0000017" :NAME "micrometer"))
                                    ("apoptosome"
                                     ("apoptosome" "ONT:MACROMOLECULAR-COMPLEX"
                                      :ID "GO:0043293" :NAME "apoptosome"))
                                    ("coatomers"
                                     ("coatomers" "ONT:MACROMOLECULAR-COMPLEX"
                                      :ID "GO:0030126" :NAME
                                      "COPI vesicle coat"))
                                    ("pores"
                                     ("pores" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                      "GO:0046930" :NAME "pore complex"))
                                    ("polysomes"
                                     ("polysomes" "ONT:MACROMOLECULAR-COMPLEX"
                                      :ID "GO:0005844" :NAME "polysome"))
                                    ("polysome"
                                     ("polysome" "ONT:MACROMOLECULAR-COMPLEX"
                                      :ID "GO:0005844" :NAME "polysome"))
                                    ("polyribosomes"
                                     ("polyribosomes"
                                      "ONT:MACROMOLECULAR-COMPLEX" :ID
                                      "GO:0005844" :NAME "polysome"))
                                    ("ribosomes"
                                     ("ribosomes" "ONT:MACROMOLECULAR-COMPLEX"
                                      :ID "GO:0005840" :NAME "ribosome"))
                                    ("ribosome"
                                     ("ribosome" "ONT:MACROMOLECULAR-COMPLEX"
                                      :ID "GO:0005840" :NAME "ribosome"))
                                    ("attomoles"
                                     ("attomoles" "ONT:MEASURE-UNIT" :ID
                                      "UO:0000044" :NAME "attomole"))
                                    ("nmol"
                                     ("nmol" "ONT:MEASURE-UNIT" :ID
                                      "UO:0000041" :NAME "nanomole"))
                                    ("NSVs"
                                     ("NSVs" "ONT:MEASURE-UNIT" :ID
                                      "UO:0000144" :NAME "nanosievert"))
                                    ("molars"
                                     ("molars" "ONT:MEASURE-UNIT" :ID
                                      "UO:0000062" :NAME "molar"))
                                    ("mol"
                                     ("mol" "ONT:MEASURE-UNIT" :ID "UO:0000013"
                                      :NAME "mole"))
                                    ("rads"
                                     ("rads" "ONT:MEASURE-UNIT" :ID
                                      "UO:0000135" :NAME "rad"))
                                    ("nephroblastomas"
                                     ("nephroblastomas"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "ORPHANET:654" :NAME
                                      "Nephroblastoma"))
                                    ("myalgias"
                                     ("myalgias"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "HP:0003326" :NAME "Myalgia"))
                                    ("tauopathy"
                                     ("tauopathy"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0005815" :NAME "tauopathy"))
                                    ("tachyarrhythmias"
                                     ("tachyarrhythmias"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C110938" :NAME
                                      "tachyarrhythmia"))
                                    ("spondyloarthropathy"
                                     ("spondyloarthropathy"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0000706" :NAME
                                      "spondyloarthropathy"))
                                    ("azoospermia"
                                     ("azoospermia"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0000279" :NAME "azoospermia"))
                                    ("atresias"
                                     ("atresias"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C124497" :NAME "atresia"))
                                    ("arthralgias"
                                     ("arthralgias"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "HP:0002829" :NAME "arthralgia"))
                                    ("adenomas"
                                     ("adenomas"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0000232" :NAME "adenoma"))
                                    ("adenoma"
                                     ("adenoma"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0000232" :NAME "adenoma"))
                                    ("acnes"
                                     ("acnes"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0003894" :NAME "acne"))
                                    ("gynecomastia"
                                     ("gynecomastia"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C3073" :NAME "gynecomastia"))
                                    ("goiters"
                                     ("goiters"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0004283" :NAME "goiter"))
                                    ("exostosis"
                                     ("exostosis"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C3029" :NAME "exostosis"))
                                    ("hyperthermia"
                                     ("hyperthermia"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "HP:0001945" :NAME "fever"))
                                    ("hemoglobinopathy"
                                     ("hemoglobinopathy"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C3092" :NAME
                                      "hemoglobinopathy"))
                                    ("hamartoma"
                                     ("hamartoma"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C3075" :NAME "hamartoma"))
                                    ("lipomas"
                                     ("lipomas"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0000759" :NAME "lipoma"))
                                    ("nevus"
                                     ("nevus"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0000625" :NAME "nevus"))
                                    ("neuropathy"
                                     ("neuropathy"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0004149" :NAME "neuropathy"))
                                    ("nephropathy"
                                     ("nephropathy"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C34843" :NAME "nephropathy"))
                                    ("nephropathies"
                                     ("nephropathies"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C34843" :NAME "nephropathy"))
                                    ("myopathy"
                                     ("myopathy"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0004145" :NAME "myopathy"))
                                    ("paragangliomas"
                                     ("paragangliomas"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:1000453" :NAME "Paraganglioma"))
                                    ("polycythemias"
                                     ("polycythemias"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0005804" :NAME "polycythemia"))
                                    ("polycythemia"
                                     ("polycythemia"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0005804" :NAME "polycythemia"))
                                    ("pneumonias"
                                     ("pneumonias"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0003106" :NAME "pneumonia"))
                                    ("retinopathy"
                                     ("retinopathy"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0003839" :NAME "retinopathy"))
                                    ("retinopathies"
                                     ("retinopathies"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0003839" :NAME "retinopathy"))
                                    ("telangiectasias"
                                     ("telangiectasias"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C28194" :NAME
                                      "telangiectasia"))
                                    ("telangiectasia"
                                     ("telangiectasia"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C28194" :NAME
                                      "telangiectasia"))
                                    ("thrombocytopenia"
                                     ("thrombocytopenia"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "HP:0001873" :NAME
                                      "thrombocytopenia"))
                                    ("IBDs"
                                     ("IBDs" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF10416.7" :NAME "IBD"))
                                    ("ITAMs"
                                     ("ITAMs" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF02189.13" :NAME "ITAM"))
                                    ("ITAM"
                                     ("ITAM" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF02189.13" :NAME "ITAM"))
                                    ("LTD"
                                     ("LTD" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00932.17" :NAME "LTD"))
                                    ("MG1"
                                     ("MG1" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF11974.6" :NAME "MG1"))
                                    ("NHLs"
                                     ("NHLs" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF01436.19" :NAME "NHL"))
                                    ("PDZ"
                                     ("PDZ" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00595.22" :NAME "PDZ"))
                                    ("PRCs"
                                     ("PRCs" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF05239.14" :NAME "PRC"))
                                    ("SAMPs"
                                     ("SAMPs" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF05924.9" :NAME "SAMP"))
                                    ("SAFs"
                                     ("SAFs" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF08666.10" :NAME "SAF"))
                                    ("TIMPs"
                                     ("TIMPs" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00965.15" :NAME "TIMP"))
                                    ("TAF"
                                     ("TAF" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF02969.15" :NAME "TAF"))
                                    ("WD40"
                                     ("WD40" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00400.30" :NAME "WD40"))
                                    ("anaphylatoxins"
                                     ("anaphylatoxins" "ONT:MOLECULAR-DOMAIN"
                                      :ID "XFAM:PF01821.16" :NAME "ANATO"))
                                    ("chromo"
                                     ("chromo" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00385.22" :NAME "chromo"))
                                    ("dep"
                                     ("dep" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00610.19" :NAME "DEP"))
                                    ("endothelins"
                                     ("endothelins" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00322.15" :NAME "endothelin"))
                                    ("hsr"
                                     ("hsr" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF03172.11" :NAME "HSR"))
                                    ("proteasome"
                                     ("proteasome" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00227.24" :NAME "proteasome"))
                                    ("septin"
                                     ("septin" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00735.16" :NAME "septin"))
                                    ("res"
                                     ("res" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF08808.9" :NAME "RES"))
                                    ("monosaccharide"
                                     ("monosaccharide" "ONT:MOLECULE" :ID
                                      "CHEBI:35381" :NAME "monosaccharide"))
                                    ("isoflavonoid"
                                     ("isoflavonoid" "ONT:MOLECULE" :ID
                                      "CHEBI:50753" :NAME "isoflavonoid"))
                                    ("dithiols"
                                     ("dithiols" "ONT:MOLECULE" :ID
                                      "CHEBI:23853" :NAME "dithiol"))
                                    ("dinitrotoluenes"
                                     ("dinitrotoluenes" "ONT:MOLECULE" :ID
                                      "CHEBI:23822" :NAME "dinitrotoluene"))
                                    ("diamines"
                                     ("diamines" "ONT:MOLECULE" :ID
                                      "CHEBI:23666" :NAME "diamine"))
                                    ("diamide"
                                     ("diamide" "ONT:MOLECULE" :ID
                                      "CHEBI:48958" :NAME
                                      "1,1'-azobis(N,N-dimethylformamide)"))
                                    ("cytochalasins"
                                     ("cytochalasins" "ONT:MOLECULE" :ID
                                      "CHEBI:23528" :NAME "cytochalasin"))
                                    ("triterpenoids"
                                     ("triterpenoids" "ONT:MOLECULE" :ID
                                      "CHEBI:36615" :NAME "triterpenoid"))
                                    ("quinolones"
                                     ("quinolones" "ONT:MOLECULE" :ID
                                      "CHEBI:23765" :NAME "quinolone"))
                                    ("pentasaccharides"
                                     ("pentasaccharides" "ONT:MOLECULE" :ID
                                      "CHEBI:35369" :NAME "pentasaccharide"))
                                    ("oximes"
                                     ("oximes" "ONT:MOLECULE" :ID "CHEBI:25750"
                                      :NAME "oxime"))
                                    ("nitrosamine"
                                     ("nitrosamine" "ONT:MOLECULE" :ID
                                      "CHEBI:35803" :NAME "nitrosamine"))
                                    ("H3K27Ac"
                                     ("H3K27Ac" "ONT:MOLECULE" :ID
                                      "CHEBI:85044" :NAME "H3K27Ac"))
                                    ("bisphosphonates"
                                     ("bisphosphonates" "ONT:MOLECULE" :ID
                                      "CHEBI:77383" :NAME
                                      "1,1-bis(phosphonic acid)"))
                                    ("bisphenols"
                                     ("bisphenols" "ONT:MOLECULE" :ID
                                      "CHEBI:22901" :NAME "bisphenol"))
                                    ("biopolymers"
                                     ("biopolymers" "ONT:MOLECULE" :ID
                                      "CHEBI:33694" :NAME "biomacromolecule"))
                                    ("azide"
                                     ("azide" "ONT:MOLECULE" :ID "CHEBI:22680"
                                      :NAME "azide"))
                                    ("anions"
                                     ("anions" "ONT:MOLECULE" :ID "CHEBI:22563"
                                      :NAME "anion"))
                                    ("anion"
                                     ("anion" "ONT:MOLECULE" :ID "CHEBI:22563"
                                      :NAME "anion"))
                                    ("ammonia"
                                     ("ammonia" "ONT:MOLECULE" :ID
                                      "CHEBI:16134" :NAME "ammonia"))
                                    ("amines"
                                     ("amines" "ONT:MOLECULE" :ID "CHEBI:32952"
                                      :NAME "amine"))
                                    ("aldehyde"
                                     ("aldehyde" "ONT:MOLECULE" :ID
                                      "CHEBI:17478" :NAME "aldehyde"))
                                    ("acetyl"
                                     ("acetyl" "ONT:MOLECULE" :ID "CHEBI:46887"
                                      :NAME "acetyl"))
                                    ("choline"
                                     ("choline" "ONT:MOLECULE" :ID
                                      "CHEBI:15354" :NAME "choline"))
                                    ("ceramides"
                                     ("ceramides" "ONT:MOLECULE" :ID
                                      "CHEBI:17761" :NAME "ceramide"))
                                    ("ceramide"
                                     ("ceramide" "ONT:MOLECULE" :ID
                                      "CHEBI:17761" :NAME "ceramide"))
                                    ("cations"
                                     ("cations" "ONT:MOLECULE" :ID
                                      "CHEBI:36916" :NAME "cation"))
                                    ("carotenoids"
                                     ("carotenoids" "ONT:MOLECULE" :ID
                                      "CHEBI:23044" :NAME "carotenoid"))
                                    ("eicosanoid"
                                     ("eicosanoid" "ONT:MOLECULE" :ID
                                      "CHEBI:23899" :NAME "icosanoid"))
                                    ("diterpenes"
                                     ("diterpenes" "ONT:MOLECULE" :ID
                                      "CHEBI:35190" :NAME "diterpene"))
                                    ("disulfide"
                                     ("disulfide" "ONT:MOLECULE" :ID
                                      "CHEBI:48343" :NAME "disulfide"))
                                    ("disaccharides"
                                     ("disaccharides" "ONT:MOLECULE" :ID
                                      "CHEBI:36233" :NAME "disaccharide"))
                                    ("diphosphate"
                                     ("diphosphate" "ONT:MOLECULE" :ID
                                      "CHEBI:18361" :NAME "diphosphate(4-)"))
                                    ("diols"
                                     ("diols" "ONT:MOLECULE" :ID "CHEBI:23824"
                                      :NAME "diol"))
                                    ("dinucleotides"
                                     ("dinucleotides" "ONT:MOLECULE" :ID
                                      "CHEBI:47885" :NAME "dinucleotide"))
                                    ("dinucleotide"
                                     ("dinucleotide" "ONT:MOLECULE" :ID
                                      "CHEBI:47885" :NAME "dinucleotide"))
                                    ("desferrioxamine"
                                     ("desferrioxamine" "ONT:MOLECULE" :ID
                                      "CHEBI:50453" :NAME "desferrioxamine"))
                                    ("deoxyglucose"
                                     ("deoxyglucose" "ONT:MOLECULE" :ID
                                      "CHEBI:23623" :NAME "deoxyglucose"))
                                    ("cyclodextrins"
                                     ("cyclodextrins" "ONT:MOLECULE" :ID
                                      "CHEBI:23456" :NAME "cyclodextrin"))
                                    ("cyclodextrin"
                                     ("cyclodextrin" "ONT:MOLECULE" :ID
                                      "CHEBI:23456" :NAME "cyclodextrin"))
                                    ("glycosaminoglycan"
                                     ("glycosaminoglycan" "ONT:MOLECULE" :ID
                                      "CHEBI:18085" :NAME "glycosaminoglycan"))
                                    ("glycopeptides"
                                     ("glycopeptides" "ONT:MOLECULE" :ID
                                      "CHEBI:24396" :NAME "glycopeptide"))
                                    ("glucans"
                                     ("glucans" "ONT:MOLECULE" :ID
                                      "CHEBI:37163" :NAME "glucan"))
                                    ("galactosides"
                                     ("galactosides" "ONT:MOLECULE" :ID
                                      "CHEBI:24163" :NAME "galactoside"))
                                    ("furanocoumarins"
                                     ("furanocoumarins" "ONT:MOLECULE" :ID
                                      "CHEBI:24128" :NAME "furanocoumarin"))
                                    ("flavonoid"
                                     ("flavonoid" "ONT:MOLECULE" :ID
                                      "CHEBI:47916" :NAME "flavonoid"))
                                    ("ethanol"
                                     ("ethanol" "ONT:MOLECULE" :ID
                                      "CHEBI:16236" :NAME "ethanol"))
                                    ("esters"
                                     ("esters" "ONT:MOLECULE" :ID "CHEBI:35701"
                                      :NAME "ester"))
                                    ("epoxides"
                                     ("epoxides" "ONT:MOLECULE" :ID
                                      "CHEBI:32955" :NAME "epoxide"))
                                    ("enoyl"
                                     ("enoyl" "ONT:MOLECULE" :ID "CHEBI:23916"
                                      :NAME "enoyl group"))
                                    ("hydroxyl"
                                     ("hydroxyl" "ONT:MOLECULE" :ID
                                      "CHEBI:29191" :NAME "hydroxyl"))
                                    ("hydroperoxides"
                                     ("hydroperoxides" "ONT:MOLECULE" :ID
                                      "CHEBI:35923" :NAME "hydroperoxide"))
                                    ("hydrochloride"
                                     ("hydrochloride" "ONT:MOLECULE" :ID
                                      "CHEBI:36807" :NAME "hydrochloride"))
                                    ("hexosamines"
                                     ("hexosamines" "ONT:MOLECULE" :ID
                                      "CHEBI:24586" :NAME "hexosamine"))
                                    ("heparans"
                                     ("heparans" "ONT:MOLECULE" :ID
                                      "CHEBI:24500" :NAME "heparan"))
                                    ("maltose"
                                     ("maltose" "ONT:MOLECULE" :ID
                                      "CHEBI:17306" :NAME "maltose"))
                                    ("macromolecule"
                                     ("macromolecule" "ONT:MOLECULE" :ID
                                      "CHEBI:33839" :NAME "macromolecule"))
                                    ("macrocycles"
                                     ("macrocycles" "ONT:MOLECULE" :ID
                                      "CHEBI:51026" :NAME "macrocycle"))
                                    ("lipoxins"
                                     ("lipoxins" "ONT:MOLECULE" :ID
                                      "CHEBI:6497" :NAME "lipoxin"))
                                    ("leukotriene"
                                     ("leukotriene" "ONT:MOLECULE" :ID
                                      "CHEBI:25029" :NAME "leukotriene"))
                                    ("lactones"
                                     ("lactones" "ONT:MOLECULE" :ID
                                      "CHEBI:25000" :NAME "lactone"))
                                    ("isothiocyanate"
                                     ("isothiocyanate" "ONT:MOLECULE" :ID
                                      "CHEBI:52221" :NAME "isothiocyanate"))
                                    ("nitroalkenes"
                                     ("nitroalkenes" "ONT:MOLECULE" :ID
                                      "CHEBI:50376" :NAME "nitroalkene"))
                                    ("nanoparticles"
                                     ("nanoparticles" "ONT:MOLECULE" :ID
                                      "CHEBI:50803" :NAME "nanoparticle"))
                                    ("nanoparticle"
                                     ("nanoparticle" "ONT:MOLECULE" :ID
                                      "CHEBI:50803" :NAME "nanoparticle"))
                                    ("myr"
                                     ("myr" "ONT:MOLECULE" :ID "CHEBI:25456"
                                      :NAME "tetradecanoyl group"))
                                    ("mononucleotides"
                                     ("mononucleotides" "ONT:MOLECULE" :ID
                                      "CHEBI:29075" :NAME "mononucleotide"))
                                    ("monoamines"
                                     ("monoamines" "ONT:MOLECULE" :ID
                                      "CHEBI:63534" :NAME "monoamine"))
                                    ("mevalonate"
                                     ("mevalonate" "ONT:MOLECULE" :ID
                                      "CHEBI:25350" :NAME "mevalonate"))
                                    ("methyladenine"
                                     ("methyladenine" "ONT:MOLECULE" :ID
                                      "CHEBI:25272" :NAME "methyladenine"))
                                    ("oxide"
                                     ("oxide" "ONT:MOLECULE" :ID "CHEBI:25741"
                                      :NAME "oxide"))
                                    ("oxazoles"
                                     ("oxazoles" "ONT:MOLECULE" :ID
                                      "CHEBI:35790" :NAME "oxazole"))
                                    ("oligosaccharide"
                                     ("oligosaccharide" "ONT:MOLECULE" :ID
                                      "CHEBI:50699" :NAME "oligosaccharide"))
                                    ("oligonucleotides"
                                     ("oligonucleotides" "ONT:MOLECULE" :ID
                                      "CHEBI:7754" :NAME "oligonucleotide"))
                                    ("oligonucleotide"
                                     ("oligonucleotide" "ONT:MOLECULE" :ID
                                      "CHEBI:7754" :NAME "oligonucleotide"))
                                    ("radicals"
                                     ("radicals" "ONT:MOLECULE" :ID
                                      "CHEBI:26519" :NAME "radical"))
                                    ("radical"
                                     ("radical" "ONT:MOLECULE" :ID
                                      "CHEBI:26519" :NAME "radical"))
                                    ("pyrimidones"
                                     ("pyrimidones" "ONT:MOLECULE" :ID
                                      "CHEBI:38337" :NAME "pyrimidone"))
                                    ("prostaglandins"
                                     ("prostaglandins" "ONT:MOLECULE" :ID
                                      "CHEBI:26333" :NAME "prostaglandin"))
                                    ("polyphenol"
                                     ("polyphenol" "ONT:MOLECULE" :ID
                                      "CHEBI:26195" :NAME "polyphenol"))
                                    ("phosphates"
                                     ("phosphates" "ONT:MOLECULE" :ID
                                      "CHEBI:26020" :NAME "phosphate"))
                                    ("phosphate"
                                     ("phosphate" "ONT:MOLECULE" :ID
                                      "CHEBI:26020" :NAME "phosphate"))
                                    ("sesquiterpenoids"
                                     ("sesquiterpenoids" "ONT:MOLECULE" :ID
                                      "CHEBI:26658" :NAME "sesquiterpenoid"))
                                    ("sel"
                                     ("sel" "ONT:MOLECULE" :ID "CHEBI:24866"
                                      :NAME "salt"))
                                    ("ruthenium"
                                     ("ruthenium" "ONT:MOLECULE" :ID
                                      "CHEBI:30682" :NAME "ruthenium atom"))
                                    ("rhamnosides"
                                     ("rhamnosides" "ONT:MOLECULE" :ID
                                      "CHEBI:26547" :NAME "rhamnoside"))
                                    ("tamoxifen"
                                     ("tamoxifen" "ONT:MOLECULE" :ID
                                      "CHEBI:41774" :NAME "tamoxifen"))
                                    ("succinate"
                                     ("succinate" "ONT:MOLECULE" :ID
                                      "CHEBI:26806" :NAME "succinate"))
                                    ("steroids"
                                     ("steroids" "ONT:MOLECULE" :ID
                                      "CHEBI:35341" :NAME "steroid"))
                                    ("steroid"
                                     ("steroid" "ONT:MOLECULE" :ID
                                      "CHEBI:35341" :NAME "steroid"))
                                    ("stearoyl"
                                     ("stearoyl" "ONT:MOLECULE" :ID
                                      "CHEBI:26753" :NAME "stearoyl group"))
                                    ("statin"
                                     ("statin" "ONT:MOLECULE" :ID "CHEBI:87631"
                                      :NAME "statin"))
                                    ("urea"
                                     ("urea" "ONT:MOLECULE" :ID "CHEBI:16199"
                                      :NAME "urea"))
                                    ("tyrosyl"
                                     ("tyrosyl" "ONT:MOLECULE" :ID
                                      "CHEBI:32789" :NAME "tyrosine residue"))
                                    ("thromboxanes"
                                     ("thromboxanes" "ONT:MOLECULE" :ID
                                      "CHEBI:26995" :NAME "thromboxane"))
                                    ("thiopurines"
                                     ("thiopurines" "ONT:MOLECULE" :ID
                                      "CHEBI:35666" :NAME "thiopurine"))
                                    ("thiols"
                                     ("thiols" "ONT:MOLECULE" :ID "CHEBI:29256"
                                      :NAME "thiol"))
                                    ("thiazides"
                                     ("thiazides" "ONT:MOLECULE" :ID
                                      "CHEBI:50264" :NAME "thiazide"))
                                    ("mRNAs"
                                     ("mRNAs" "ONT:MRNA" :ID "NCIT:C813" :NAME
                                      "messenger RNA"))
                                    ("mRNA"
                                     ("mRNA" "ONT:MRNA" :ID "NCIT:C813" :NAME
                                      "messenger RNA"))
                                    ("macaque"
                                     ("macaque" "ONT:NONHUMAN-ANIMAL" :ID
                                      "NCIT:C14231" :NAME "macaque"))
                                    ("mus"
                                     ("mus" "ONT:NONHUMAN-ANIMAL" :ID
                                      "NCIT:C14238" :NAME "mouse"))
                                    ("murine"
                                     ("murine" "ONT:NONHUMAN-ANIMAL" :ID
                                      "NCIT:C14238" :NAME "mouse"))
                                    ("mice"
                                     ("mice" "ONT:NONHUMAN-ANIMAL" :ID
                                      "NCIT:C14238" :NAME "mouse"))
                                    ("primates"
                                     ("primates" "ONT:NONHUMAN-ANIMAL" :ID
                                      "NCIT:C14262" :NAME "primate"))
                                    ("amoeba"
                                     ("amoeba" "ONT:ORGANISM" :ID
                                      "NCIT:C119581" :NAME "amoeba"))
                                    ("mosaic"
                                     ("mosaic" "ONT:ORGANISM" :ID "NCIT:C88144"
                                      :NAME "mosaic"))
                                    ("pons"
                                     ("pons" "ONT:ORGANISM" :ID "NCIT:C54054"
                                      :NAME "polish lowland sheepdog"))
                                    ("strain"
                                     ("strain" "ONT:ORGANISM" :ID "NCIT:C14419"
                                      :NAME "organism strains"))
                                    ("CDDO"
                                     ("CDDO" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C48382" :NAME "CDDO"))
                                    ("bexarotene"
                                     ("bexarotene"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1635" :NAME "bexarotene"))
                                    ("PLX4032"
                                     ("PLX4032" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C64768" :NAME "PLX4032"))
                                    ("SL0101"
                                     ("SL0101" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C497449" :NAME "SL0101"))
                                    ("TG101209"
                                     ("TG101209" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C522865" :NAME "TG101209"))
                                    ("ZSTK474"
                                     ("ZSTK474" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C510150" :NAME "ZSTK474"))
                                    ("biotin"
                                     ("biotin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "CHEBI:15956" :NAME "biotin"))
                                    ("arsenite"
                                     ("arsenite" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C015001" :NAME "arsenite"))
                                    ("apigenin"
                                     ("apigenin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "CHEBI:18388" :NAME "apigenin"))
                                    ("antidepressant"
                                     ("antidepressant"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "CHEBI:35469" :NAME "antidepressant"))
                                    ("anastrozole"
                                     ("anastrozole"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1607" :NAME "anastrozole"))
                                    ("amphetamine"
                                     ("amphetamine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C28822" :NAME "amphetamine"))
                                    ("adjuvant"
                                     ("adjuvant" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "CHEBI:60809" :NAME "adjuvant"))
                                    ("acetylcholine"
                                     ("acetylcholine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C77840" :NAME "acetylcholine"))
                                    ("chelerythrine"
                                     ("chelerythrine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C016299" :NAME "chelerythrine"))
                                    ("carboplatin"
                                     ("carboplatin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1282" :NAME "carboplatin"))
                                    ("camptothecin"
                                     ("camptothecin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C338" :NAME "camptothecin"))
                                    ("bleomycin"
                                     ("bleomycin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C313" :NAME "bleomycin"))
                                    ("doxycycline"
                                     ("doxycycline"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C457" :NAME "doxycycline"))
                                    ("dox"
                                     ("dox" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1326" :NAME
                                      "doxorubicin hydrochloride"))
                                    ("dimethylarginine"
                                     ("dimethylarginine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C487735" :NAME "dimethylarginine"))
                                    ("dapagliflozin"
                                     ("dapagliflozin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C78126" :NAME "dapagliflozin"))
                                    ("cyclopamine"
                                     ("cyclopamine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C000541" :NAME "cyclopamine"))
                                    ("gossypol"
                                     ("gossypol" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C529" :NAME "gossypol"))
                                    ("glutathione"
                                     ("glutathione"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C523" :NAME "glutathione"))
                                    ("gemcitabine"
                                     ("gemcitabine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C056507" :NAME "gemcitabine"))
                                    ("geldanamycin"
                                     ("geldanamycin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1112" :NAME "geldanamycin"))
                                    ("fluorouracil"
                                     ("fluorouracil"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C505" :NAME "fluorouracil"))
                                    ("flavopiridol"
                                     ("flavopiridol"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1571" :NAME "flavopiridol"))
                                    ("eptifibatide"
                                     ("eptifibatide"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C47516" :NAME "eptifibatide"))
                                    ("epirubicin"
                                     ("epirubicin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C474" :NAME "epirubicin"))
                                    ("emodin"
                                     ("emodin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C466" :NAME "emodin"))
                                    ("melatonin"
                                     ("melatonin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "CHEBI:16796" :NAME "melatonin"))
                                    ("mechlorethamine"
                                     ("mechlorethamine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C62056" :NAME "mechlorethamine"))
                                    ("mda"
                                     ("mda" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C80152" :NAME "tenamfetamine"))
                                    ("lymphotoxin"
                                     ("lymphotoxin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C622" :NAME
                                      "therapeutic tumor necrosis factor-beta"))
                                    ("locostatin"
                                     ("locostatin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C529490" :NAME "locostatin"))
                                    ("nifedipine"
                                     ("nifedipine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C29290" :NAME "nifedipine"))
                                    ("nevirapine"
                                     ("nevirapine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C29277" :NAME "nevirapine"))
                                    ("mithramycin"
                                     ("mithramycin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "CHEBI:31856" :NAME "mithramycin"))
                                    ("mifepristone"
                                     ("mifepristone"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C655" :NAME "mifepristone"))
                                    ("methotrexate"
                                     ("methotrexate"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C642" :NAME "methotrexate"))
                                    ("metformin"
                                     ("metformin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C61612" :NAME "metformin"))
                                    ("octreotide"
                                     ("octreotide"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C711" :NAME "octreotide"))
                                    ("quinacrine"
                                     ("quinacrine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C87656" :NAME "quinacrine"))
                                    ("pyridine"
                                     ("pyridine" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C023666" :NAME "pyridine"))
                                    ("puromycin"
                                     ("puromycin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C787" :NAME "puromycin"))
                                    ("purine"
                                     ("purine" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C030985" :NAME "purine"))
                                    ("prednisone"
                                     ("prednisone"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C770" :NAME "prednisone"))
                                    ("polyacrylamide"
                                     ("polyacrylamide"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C016679" :NAME "polyacrylamide"))
                                    ("pirfenidone"
                                     ("pirfenidone"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C2635" :NAME "pirfenidone"))
                                    ("pifithrin"
                                     ("pifithrin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C121565" :NAME "pifithrin"))
                                    ("phytochemical"
                                     ("phytochemical"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C28269" :NAME "phytochemical"))
                                    ("phorbol"
                                     ("phorbol" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C033085" :NAME "phorbol"))
                                    ("shikonin"
                                     ("shikonin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C016101" :NAME "shikonin"))
                                    ("saponin"
                                     ("saponin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C823" :NAME "saponin"))
                                    ("romidepsin"
                                     ("romidepsin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C087123" :NAME "romidepsin"))
                                    ("rociletinib"
                                     ("rociletinib"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C99905" :NAME
                                      "EGFR inhibitor CO-1686"))
                                    ("tetracycline"
                                     ("tetracycline"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C865" :NAME "tetracycline"))
                                    ("taxane"
                                     ("taxane" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C080625" :NAME "taxane"))
                                    ("talazoparib"
                                     ("talazoparib"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C586365" :NAME "talazoparib"))
                                    ("staurosporine"
                                     ("staurosporine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1237" :NAME "staurosporine"))
                                    ("wogonin"
                                     ("wogonin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C085514" :NAME "wogonin"))
                                    ("vorinostat"
                                     ("vorinostat"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C111237" :NAME "vorinostat"))
                                    ("violacein"
                                     ("violacein" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C063155" :NAME "violacein"))
                                    ("vinorelbine"
                                     ("vinorelbine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1275" :NAME "vinorelbine"))
                                    ("vincristine"
                                     ("vincristine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C933" :NAME "vincristine"))
                                    ("tryptamine"
                                     ("tryptamine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C030820" :NAME "tryptamine"))
                                    ("trypan"
                                     ("trypan" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C003915" :NAME
                                      "diminazene aceturate"))
                                    ("thiamine"
                                     ("thiamine" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "CHEBI:26948" :NAME "thiamine"))
                                    ("hypertrophy"
                                     ("hypertrophy" "ONT:PHYSICAL-CONDITION"
                                      :ID "EFO:0002460" :NAME "hypertrophy"))
                                    ("hyperemia"
                                     ("hyperemia" "ONT:PHYSICAL-CONDITION" :ID
                                      "EFO:0003822" :NAME "hyperemia"))
                                    ("PTM"
                                     ("PTM"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0043687" :NAME
                                      "post-translational protein modification"))
                                    ("biotinylation"
                                     ("biotinylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0009305" :NAME
                                      "protein biotinylation"))
                                    ("biotinylated"
                                     ("biotinylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0009305" :NAME
                                      "protein biotinylation"))
                                    ("amidation"
                                     ("amidation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018032" :NAME "protein amidation"))
                                    ("alkylation"
                                     ("alkylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0008213" :NAME "protein alkylation"))
                                    ("alkylating"
                                     ("alkylating"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0008213" :NAME "protein alkylation"))
                                    ("alkylated"
                                     ("alkylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0008213" :NAME "protein alkylation"))
                                    ("acetylated"
                                     ("acetylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006473" :NAME
                                      "protein acetylation"))
                                    ("carboxylates"
                                     ("carboxylates"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018214" :NAME
                                      "protein carboxylation"))
                                    ("deubiquitination"
                                     ("deubiquitination"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0016579" :NAME
                                      "protein deubiquitination"))
                                    ("deubiquitinates"
                                     ("deubiquitinates"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0016579" :NAME
                                      "protein deubiquitination"))
                                    ("deubiquitinate"
                                     ("deubiquitinate"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0016579" :NAME
                                      "protein deubiquitination"))
                                    ("desumoylation"
                                     ("desumoylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0016926" :NAME
                                      "protein desumoylation"))
                                    ("depalmitoylation"
                                     ("depalmitoylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0002084" :NAME
                                      "protein depalmitoylation"))
                                    ("deneddylation"
                                     ("deneddylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0000338" :NAME
                                      "protein deneddylation"))
                                    ("deglycosylation"
                                     ("deglycosylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006517" :NAME
                                      "protein deglycosylation"))
                                    ("deglycosylated"
                                     ("deglycosylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006517" :NAME
                                      "protein deglycosylation"))
                                    ("deamination"
                                     ("deamination"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018277" :NAME
                                      "protein deamination"))
                                    ("deaminates"
                                     ("deaminates"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018277" :NAME
                                      "protein deamination"))
                                    ("deacylate"
                                     ("deacylate"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0035601" :NAME
                                      "protein deacylation"))
                                    ("glycosylation"
                                     ("glycosylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006486" :NAME
                                      "protein glycosylation"))
                                    ("glycosylated"
                                     ("glycosylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006486" :NAME
                                      "protein glycosylation"))
                                    ("glutathionylation"
                                     ("glutathionylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0010731" :NAME
                                      "protein glutathionylation"))
                                    ("glutathionylated"
                                     ("glutathionylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0010731" :NAME
                                      "protein glutathionylation"))
                                    ("formylated"
                                     ("formylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018256" :NAME
                                      "protein formylation"))
                                    ("farnesylation"
                                     ("farnesylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018343" :NAME
                                      "protein farnesylation"))
                                    ("esterification"
                                     ("esterification"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018350" :NAME
                                      "protein esterification"))
                                    ("hydroxylation"
                                     ("hydroxylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018126" :NAME
                                      "protein hydroxylation"))
                                    ("hydroxylated"
                                     ("hydroxylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018126" :NAME
                                      "protein hydroxylation"))
                                    ("mannosylation"
                                     ("mannosylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0035268" :NAME
                                      "protein mannosylation"))
                                    ("lipidation"
                                     ("lipidation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006497" :NAME "protein lipidation"))
                                    ("lipidated"
                                     ("lipidated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006497" :NAME "protein lipidation"))
                                    ("nitrosylates"
                                     ("nitrosylates"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0017014" :NAME
                                      "protein nitrosylation"))
                                    ("neddylation"
                                     ("neddylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0045116" :NAME
                                      "protein neddylation"))
                                    ("myristoylation"
                                     ("myristoylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018377" :NAME
                                      "protein myristoylation"))
                                    ("myristoylated"
                                     ("myristoylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018377" :NAME
                                      "protein myristoylation"))
                                    ("oxidation"
                                     ("oxidation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018158" :NAME "protein oxidation"))
                                    ("palmitoylation"
                                     ("palmitoylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018345" :NAME
                                      "protein palmitoylation"))
                                    ("palmitoylated"
                                     ("palmitoylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018345" :NAME
                                      "protein palmitoylation"))
                                    ("prenylation"
                                     ("prenylation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018342" :NAME
                                      "protein prenylation"))
                                    ("polyubiquitination"
                                     ("polyubiquitination"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0000209" :NAME
                                      "protein polyubiquitination"))
                                    ("sulfation"
                                     ("sulfation"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006477" :NAME "protein sulfation"))
                                    ("sulfates"
                                     ("sulfates"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006477" :NAME "protein sulfation"))
                                    ("sulfate"
                                     ("sulfate"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0006477" :NAME "protein sulfation"))
                                    ("succinylated"
                                     ("succinylated"
                                      "ONT:POST-TRANSLATIONAL-MODIFICATION" :ID
                                      "GO:0018335" :NAME
                                      "protein succinylation"))
                                    ("chromatography"
                                     ("chromatography" "ONT:PROCEDURE" :ID
                                      "NCIT:C16431" :NAME "chromatography"))
                                    ("esis"
                                     ("esis" "ONT:PROCEDURE" :ID "NCIT:C19363"
                                      :NAME "electrospray ionization"))
                                    ("pellets"
                                     ("pellets" "ONT:PROCEDURE" :ID
                                      "NCIT:C45813" :NAME "pellet formation"))
                                    ("inversions"
                                     ("inversions" "ONT:PROCESS" :ID
                                      "EFO:0004017" :NAME "inversion"))
                                    ("pancreatectomy"
                                     ("pancreatectomy" "ONT:PROCESS" :ID
                                      "EFO:0002581" :NAME "pancreatectomy"))
                                    ("recombination"
                                     ("recombination" "ONT:PROCESS" :ID
                                      "EFO:0004293" :NAME "recombination"))
                                    ("transgenic"
                                     ("transgenic" "ONT:PROCESS" :ID
                                      "EFO:0004020" :NAME "transgenic"))
                                    ("xenografts"
                                     ("xenografts" "ONT:PROCESS" :ID
                                      "EFO:0003942" :NAME
                                      "heterologous transplantation"))
                                    ("xenograft"
                                     ("xenograft" "ONT:PROCESS" :ID
                                      "EFO:0003942" :NAME
                                      "heterologous transplantation"))
                                    ("E-cadherin"
                                     ("E-cadherin" "ONT:PROTEIN" :ID
                                      "NCIT:C17245" :NAME "E-cadherin"))
                                    ("AMPKα1"
                                     ("AMPKα1" "ONT:PROTEIN" :ID "NCIT:C116033"
                                      :NAME
                                      "5-AMP-activated protein kinase catalytic subunit alpha-1"))
                                    ("NF-KB"
                                     ("NF-KB" "ONT:PROTEIN" :ID "NCIT:C17380"
                                      :NAME "NF-kB"))
                                    ("fasII"
                                     ("fasII" "ONT:PROTEIN" :ID "UP:P0C1Z0"
                                      :NAME "Fasciculin-2"))
                                    ("caspase-3"
                                     ("caspase-3" "ONT:PROTEIN" :ID "UP:P42574"
                                      :NAME "Caspase-3"))
                                    ("β-arrestin1"
                                     ("β-arrestin1" "ONT:PROTEIN" :ID
                                      "UP:P49407" :NAME "Beta-arrestin-1"))
                                    ("FZ7"
                                     ("FZ7" "ONT:PROTEIN" :ID "UP:O57329" :NAME
                                      "Frizzled-7"))
                                    ("IKKε"
                                     ("IKKε" "ONT:PROTEIN" :ID "UP:Q14164"
                                      :NAME
                                      "Inhibitor of nuclear factor kappa-B kinase subunit epsilon"))
                                    ("HRP"
                                     ("HRP" "ONT:PROTEIN" :ID "UP:Q08168" :NAME
                                      "58 kDa phosphoprotein"))
                                    ("MPTP"
                                     ("MPTP" "ONT:PROTEIN" :ID "UP:Q06180"
                                      :NAME
                                      "Tyrosine-protein phosphatase non-receptor type 2"))
                                    ("MPR"
                                     ("MPR" "ONT:PROTEIN" :ID "UP:O00264" :NAME
                                      "Membrane-associated progesterone receptor component 1"))
                                    ("PI3Kδ"
                                     ("PI3Kδ" "ONT:PROTEIN" :ID "UP:O00329"
                                      :NAME
                                      "Phosphatidylinositol 4,5-bisphosphate 3-kinase catalytic subunit delta isoform"))
                                    ("PI3Kγ"
                                     ("PI3Kγ" "ONT:PROTEIN" :ID "UP:P48736"
                                      :NAME
                                      "Phosphatidylinositol 4,5-bisphosphate 3-kinase catalytic subunit gamma isoform"))
                                    ("PEG"
                                     ("PEG" "ONT:PROTEIN" :ID "UP:P09466" :NAME
                                      "Glycodelin"))
                                    ("PCM"
                                     ("PCM" "ONT:PROTEIN" :ID "UP:O42781" :NAME
                                      "Mitogen-activated protein kinase 2"))
                                    ("PS6"
                                     ("PS6" "ONT:PROTEIN" :ID "UP:P84571" :NAME
                                      "Phylloseptin-6"))
                                    ("PKCγ"
                                     ("PKCγ" "ONT:PROTEIN" :ID "UP:P05129"
                                      :NAME "Protein kinase C gamma type"))
                                    ("SeV"
                                     ("SeV" "ONT:PROTEIN" :ID "UP:P07647" :NAME
                                      "Submandibular glandular kallikrein-9"))
                                    ("TKIs"
                                     ("TKIs" "ONT:PROTEIN" :ID "UP:P16223"
                                      :NAME "Locustatachykinin-1"))
                                    ("TKI"
                                     ("TKI" "ONT:PROTEIN" :ID "UP:P16223" :NAME
                                      "Locustatachykinin-1"))
                                    ("TGFβR"
                                     ("TGFβR" "ONT:PROTEIN" :ID "GO:0005024"
                                      :NAME
                                      "transforming growth factor beta-activated receptor activity"))
                                    ("YFP"
                                     ("YFP" "ONT:PROTEIN" :ID "UP:P21578" :NAME
                                      "Yellow fluorescent protein"))
                                    ("avidin"
                                     ("avidin" "ONT:PROTEIN" :ID "UP:P02701"
                                      :NAME "Avidin"))
                                    ("adr"
                                     ("adr" "ONT:PROTEIN" :ID "UP:Q09851" :NAME
                                      "NADPH-dependent 1-acyldihydroxyacetone phosphate reductase"))
                                    ("chaperone"
                                     ("chaperone" "ONT:PROTEIN" :ID
                                      "NCIT:C17764" :NAME "chaperone"))
                                    ("caspase3"
                                     ("caspase3" "ONT:PROTEIN" :ID "UP:P42574"
                                      :NAME "Caspase-3"))
                                    ("caspase"
                                     ("caspase" "ONT:PROTEIN" :ID "UP:O01382"
                                      :NAME "Caspase"))
                                    ("formin"
                                     ("formin" "ONT:PROTEIN" :ID "UP:Q05858"
                                      :NAME "Formin"))
                                    ("ifnβ"
                                     ("ifnβ" "ONT:PROTEIN" :ID "UP:P01574"
                                      :NAME "Interferon beta"))
                                    ("mTORC2"
                                     ("mTORC2" "ONT:PROTEIN" :ID "NCIT:C96315"
                                      :NAME "mTORC2"))
                                    ("mTORC1"
                                     ("mTORC1" "ONT:PROTEIN" :ID "NCIT:C96314"
                                      :NAME "mTORC1"))
                                    ("mPIN"
                                     ("mPIN" "ONT:PROTEIN" :ID "UP:P63168"
                                      :NAME
                                      "Dynein light chain 1, cytoplasmic"))
                                    ("lyase"
                                     ("lyase" "ONT:PROTEIN" :ID "GO:0016829"
                                      :NAME "lyase activity"))
                                    ("oncoproteins"
                                     ("oncoproteins" "ONT:PROTEIN" :ID
                                      "NCIT:C16934" :NAME "oncoprotein"))
                                    ("pDR"
                                     ("pDR" "ONT:PROTEIN" :ID "UP:P33164" :NAME
                                      "Phthalate dioxygenase reductase"))
                                    ("pAb"
                                     ("pAb" "ONT:PROTEIN" :ID "UP:P9WGU0" :NAME
                                      "Phosphate-binding protein PstS 1"))
                                    ("probasin"
                                     ("probasin" "ONT:PROTEIN" :ID "UP:O08976"
                                      :NAME "Probasin"))
                                    ("polymerase"
                                     ("polymerase" "ONT:PROTEIN" :ID
                                      "NCIT:C20636" :NAME "polymerase"))
                                    ("redox"
                                     ("redox" "ONT:PROTEIN" :ID "GO:0016491"
                                      :NAME "oxidoreductase activity"))
                                    ("streptavidin"
                                     ("streptavidin" "ONT:PROTEIN" :ID
                                      "UP:P22629" :NAME "Streptavidin"))
                                    ("thrombin"
                                     ("thrombin" "ONT:PROTEIN" :ID "UP:P84122"
                                      :NAME "Thrombin"))
                                    ("HRMs"
                                     ("HRMs" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF02793.20" :NAME "HRM"))
                                    ("kinins"
                                     ("kinins" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF08260.9" :NAME "kinin"))
                                    ("synaptotagmins"
                                     ("synaptotagmins" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:03901" :NAME "synaptotagmin family"))
                                    ("MAGEs"
                                     ("MAGEs" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF01454.17" :NAME "MAGE"))
                                    ("OTUs"
                                     ("OTUs" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF02338.17" :NAME "OTU"))
                                    ("RMFs"
                                     ("RMFs" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF04957.10" :NAME "RMF"))
                                    ("TLR"
                                     ("TLR" "ONT:PROTEIN-FAMILY" :ID "BE:TLR"
                                      :NAME "TLR"))
                                    ("cathelicidins"
                                     ("cathelicidins" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:00475" :NAME "cathelicidin family"))
                                    ("cytokeratin"
                                     ("cytokeratin" "ONT:PROTEIN-FAMILY" :ID
                                      "NCIT:C20693" :NAME "cytokeratin"))
                                    ("cullin"
                                     ("cullin" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:00787" :NAME "cullin family"))
                                    ("cues"
                                     ("cues" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF02845.14" :NAME "CUE"))
                                    ("filaments"
                                     ("filaments" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF00038.19" :NAME "filament"))
                                    ("lamin"
                                     ("lamin" "ONT:PROTEIN-FAMILY" :ID
                                      "NCIT:C17307" :NAME "lamin"))
                                    ("janus"
                                     ("janus" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:01933" :NAME "janus family"))
                                    ("protocadherin"
                                     ("protocadherin" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF08374.9" :NAME "protocadherin"))
                                    ("propellers"
                                     ("propellers" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF06462.10" :NAME "hyd WA"))
                                    ("prominins"
                                     ("prominins" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:03028" :NAME "prominin family"))
                                    ("selectin"
                                     ("selectin" "ONT:PROTEIN-FAMILY" :ID
                                      "NCIT:C17897" :NAME "selectin"))
                                    ("sarcoglycans"
                                     ("sarcoglycans" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF04790.11" :NAME "sarcoglycan 1"))
                                    ("syntrophins"
                                     ("syntrophins" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:03905" :NAME "syntrophin family"))
                                    ("sprouty"
                                     ("sprouty" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:03814" :NAME "sprouty family"))
                                    ("sirtuins"
                                     ("sirtuins" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:03623" :NAME "sirtuin family"))
                                    ("tribbles"
                                     ("tribbles" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:03081" :NAME "tribbles subfamily"))
                                    ("RNAs"
                                     ("RNAs" "ONT:RNA" :ID "NCIT:C812" :NAME
                                      "ribonucleic acid"))
                                    ("RNA"
                                     ("RNA" "ONT:RNA" :ID "NCIT:C812" :NAME
                                      "ribonucleic acid"))
                                    ("lincRNAs"
                                     ("lincRNAs" "ONT:RNA" :ID "NCIT:C88924"
                                      :NAME "lincRNA"))
                                    ("lincRNA"
                                     ("lincRNA" "ONT:RNA" :ID "NCIT:C88924"
                                      :NAME "lincRNA"))
                                    ("microRNA"
                                     ("microRNA" "ONT:RNA" :ID "NCIT:C25966"
                                      :NAME "microRNA"))
                                    ("miRNAs"
                                     ("miRNAs" "ONT:RNA" :ID "NCIT:C25966"
                                      :NAME "microRNA"))
                                    ("miRNA"
                                     ("miRNA" "ONT:RNA" :ID "NCIT:C25966" :NAME
                                      "microRNA"))
                                    ("tRNAs"
                                     ("tRNAs" "ONT:RNA" :ID "NCIT:C816" :NAME
                                      "transfer RNA"))
                                    ("tRNA"
                                     ("tRNA" "ONT:RNA" :ID "NCIT:C816" :NAME
                                      "transfer RNA"))
                                    ("microRNAs"
                                     ("microRNAs" "ONT:RNA" :ID "NCIT:C25966"
                                      :NAME "microRNA"))
                                    ("colloids"
                                     ("colloids" "ONT:SUBSTANCE" :ID
                                      "NCIT:C32345" :NAME "colloid"))
                                    ("conjugates"
                                     ("conjugates" "ONT:SUBSTANCE" :ID
                                      "NCIT:C61533" :NAME "conjugate"))
                                    ("granules"
                                     ("granules" "ONT:SUBSTANCE" :ID
                                      "NCIT:C61363" :NAME "granule"))
                                    ("metaphases"
                                     ("metaphases" "ONT:TIME-SPAN" :ID
                                      "GO:0051323" :NAME "metaphase"))
                                    ("arenaviruses"
                                     ("arenaviruses" "ONT:VIRUS" :ID
                                      "NCIT:C14306" :NAME "arenavirus"))
                                    ("poxvirus"
                                     ("poxvirus" "ONT:VIRUS" :ID "NCIT:C14261"
                                      :NAME "poxvirus"))
                                    ("SV40"
                                     ("SV40" "ONT:VIRUS" :ID "NCIT:C14279"
                                      :NAME "SV40"))
                                    ("astroviruses"
                                     ("astroviruses" "ONT:VIRUS" :ID
                                      "NCIT:C112231" :NAME "astroviridae"))
                                    ("adenoviruses"
                                     ("adenoviruses" "ONT:VIRUS" :ID
                                      "NCIT:C14179" :NAME "adenovirus"))
                                    ("adenovirus"
                                     ("adenovirus" "ONT:VIRUS" :ID
                                      "NCIT:C14179" :NAME "adenovirus"))
                                    ("coronaviruses"
                                     ("coronaviruses" "ONT:VIRUS" :ID
                                      "NCIT:C26431" :NAME "coronavirus"))
                                    ("bunyaviruses"
                                     ("bunyaviruses" "ONT:VIRUS" :ID
                                      "NCIT:C112366" :NAME "orthobunyavirus"))
                                    ("hiv"
                                     ("hiv" "ONT:VIRUS" :ID "NCIT:C14219" :NAME
                                      "human immunodeficiency virus"))
                                    ("herpesviruses"
                                     ("herpesviruses" "ONT:VIRUS" :ID
                                      "NCIT:C14217" :NAME "herpesvirus"))
                                    ("hantaviruses"
                                     ("hantaviruses" "ONT:VIRUS" :ID
                                      "NCIT:C14213" :NAME "hantavirus"))
                                    ("lentivirus"
                                     ("lentivirus" "ONT:VIRUS" :ID
                                      "NCIT:C14290" :NAME "lentivirus"))
                                    ("phages"
                                     ("phages" "ONT:VIRUS" :ID "NCIT:C14188"
                                      :NAME "bacteriophage"))
                                    ("polyomaviruses"
                                     ("polyomaviruses" "ONT:VIRUS" :ID
                                      "NCIT:C14260" :NAME "polyomavirus"))
                                    ("polyomavirus"
                                     ("polyomavirus" "ONT:VIRUS" :ID
                                      "NCIT:C14260" :NAME "polyomavirus"))
                                    ("retroviruses"
                                     ("retroviruses" "ONT:VIRUS" :ID
                                      "NCIT:C14268" :NAME "retroviridae"))
                                    ("retrovirus"
                                     ("retrovirus" "ONT:VIRUS" :ID
                                      "NCIT:C14268" :NAME "retroviridae"))
                                    ("retroviridae"
                                     ("retroviridae" "ONT:VIRUS" :ID
                                      "NCIT:C14268" :NAME "retroviridae"))
                                    ("reoviruses"
                                     ("reoviruses" "ONT:VIRUS" :ID
                                      "NCIT:C112026" :NAME "reoviridae"))
                                    ("polyadenylation"
                                     ("polyadenylation"
                                      "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C18947" :NAME
                                      "RNA polyadenylation"))
                                    ("polymerization"
                                     ("polymerization" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C34072" :NAME
                                      "polymerization"))
                                    ("trans-duction"
                                     ("trans-duction" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "GO:0009293" :NAME "transduction"))
                                    ("detoxification"
                                     ("detoxification" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "GO:0098754" :NAME "detoxification"))
                                    ("mitosis"
                                     ("mitosis" "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C16864" :NAME "mitosis"))
                                    ("chemo-sensitization"
                                     ("chemo-sensitization"
                                      "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C15463" :NAME
                                      "chemosensitization"))
                                    ("cleavage"
                                     ("cleavage" "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C73482" :NAME "chemical cleavage"))
                                    ("de-methylation"
                                     ("de-methylation" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "GO:0070988" :NAME "demethylation"))
                                    ("polymerized"
                                     ("polymerized" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C34072" :NAME
                                      "polymerization"))
                                    ("regeneration"
                                     ("regeneration" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C17083" :NAME "regeneration"))
                                    ("papillomas"
                                     ("papillomas" "ONT:CANCER" :ID
                                      "NCIT:C7440" :NAME "papilloma"))
                                    ("lymphomas"
                                     ("lymphomas" "ONT:CANCER" :ID
                                      "EFO:0000574" :NAME "lymphoma"))
                                    ("granulocytes"
                                     ("granulocytes" "ONT:CELL" :ID
                                      "BTO:0000539" :NAME "granulocyte"))
                                    ("BL-41"
                                     ("BL-41" "ONT:CELL-LINE" :ID "CVCL:1087"
                                      :NAME "BL-41"))
                                    ("HMT-3522"
                                     ("HMT-3522" "ONT:CELL-LINE" :ID
                                      "CVCL:6855" :NAME "HMT-3522"))
                                    ("SCC-4"
                                     ("SCC-4" "ONT:CELL-LINE" :ID "CVCL:1684"
                                      :NAME "SCC-4"))
                                    ("T3M-4"
                                     ("T3M-4" "ONT:CELL-LINE" :ID "CVCL:4056"
                                      :NAME "T3M-4"))
                                    ("TIG-3"
                                     ("TIG-3" "ONT:CELL-LINE" :ID "CVCL:E939"
                                      :NAME "TIG-3"))
                                    ("BCL1"
                                     ("BCL1" "ONT:CELL-LINE" :ID "CVCL:0166"
                                      :NAME "BCL1"))
                                    ("Mac-1"
                                     ("Mac-1" "ONT:CELL-LINE" :ID "CVCL:H631"
                                      :NAME "Mac-1"))
                                    ("SUSM-1"
                                     ("SUSM-1" "ONT:CELL-LINE" :ID "CVCL:4903"
                                      :NAME "SUSM-1"))
                                    ("WS1"
                                     ("WS1" "ONT:CELL-LINE" :ID "CVCL:2766"
                                      :NAME "WS1"))
                                    ("AML-193"
                                     ("AML-193" "ONT:CELL-LINE" :ID "CVCL:1071"
                                      :NAME "AML-193"))
                                    ("SM1"
                                     ("SM1" "ONT:CELL-LINE" :ID "CVCL:D051"
                                      :NAME "SM1"))
                                    ("TF-1"
                                     ("TF-1" "ONT:CELL-LINE" :ID "CVCL:0559"
                                      :NAME "TF-1"))
                                    ("Miz-1"
                                     ("Miz-1" "ONT:CELL-LINE" :ID "CVCL:3025"
                                      :NAME "Miz-1"))
                                    ("TAD-2"
                                     ("TAD-2" "ONT:CELL-LINE" :ID "CVCL:5370"
                                      :NAME "TAD-2"))
                                    ("TE-3"
                                     ("TE-3" "ONT:CELL-LINE" :ID "CVCL:9971"
                                      :NAME "TE-3"))
                                    ("macropinosome"
                                     ("macropinosome" "ONT:CELL-PART" :ID
                                      "GO:0044354" :NAME "macropinosome"))
                                    ("pseudopodium"
                                     ("pseudopodium" "ONT:CELL-PART" :ID
                                      "UP:SL-0298" :NAME "Pseudopodium"))
                                    ("chromocenter"
                                     ("chromocenter" "ONT:CELL-PART" :ID
                                      "GO:0010369" :NAME "chromocenter"))
                                    ("microbodies"
                                     ("microbodies" "ONT:CELL-PART" :ID
                                      "GO:0042579" :NAME "microbody"))
                                    ("bleb"
                                     ("bleb" "ONT:CELL-PART" :ID "UP:SL-0472"
                                      :NAME "Bleb"))
                                    ("desmosome"
                                     ("desmosome" "ONT:CELL-PART" :ID
                                      "UP:SL-0092" :NAME "Desmosome"))
                                    ("microsomes"
                                     ("microsomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0166" :NAME "Microsome"))
                                    ("c-fiber"
                                     ("c-fiber" "ONT:CELL-PART" :ID
                                      "GO:0044299" :NAME "C-fiber"))
                                    ("cross-bridge"
                                     ("cross-bridge" "ONT:CELL-PART" :ID
                                      "GO:0097595" :NAME
                                      "ventral disc crossbridge"))
                                    ("provirus"
                                     ("provirus" "ONT:CELL-PART" :ID
                                      "GO:0019038" :NAME "provirus"))
                                    ("polymyxin"
                                     ("polymyxin" "ONT:CHEMICAL" :ID
                                      "CHEBI:59062" :NAME "polymyxin"))
                                    ("amphiphile"
                                     ("amphiphile" "ONT:CHEMICAL" :ID
                                      "CHEBI:59941" :NAME "amphiphile"))
                                    ("pro-oxidant"
                                     ("pro-oxidant" "ONT:CHEMICAL" :ID
                                      "NCIT:C93260" :NAME "pro-oxidant"))
                                    ("MiR-17"
                                     ("MiR-17" "ONT:GENE" :ID "NCIT:C81888"
                                      :NAME "MIR17"))
                                    ("miRNA17"
                                     ("miRNA17" "ONT:GENE" :ID "NCIT:C81888"
                                      :NAME "MIR17"))
                                    ("MiR-221"
                                     ("MiR-221" "ONT:GENE" :ID "NCIT:C82171"
                                      :NAME "MIR221"))
                                    ("miRs-106a"
                                     ("miRs-106a" "ONT:GENE" :ID "NCIT:C82052"
                                      :NAME "MIR106A"))
                                    ("miRs-106b"
                                     ("miRs-106b" "ONT:GENE" :ID "NCIT:C82053"
                                      :NAME "MIR106B"))
                                    ("miRs-17"
                                     ("miRs-17" "ONT:GENE" :ID "NCIT:C81888"
                                      :NAME "MIR17"))
                                    ("AIP3"
                                     ("AIP3" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03915.11" :NAME "AIP3"))
                                    ("AKAP95"
                                     ("AKAP95" "ONT:GENE-PROTEIN" :ID
                                      "FA:00137" :NAME "AKAP95 family"))
                                    ("ARA70"
                                     ("ARA70" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF12489.6" :NAME "ARA70"))
                                    ("ART"
                                     ("ART" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF01129.16" :NAME "ART"))
                                    ("AS-C"
                                     ("AS-C" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00858.22" :NAME "ASC"))
                                    ("CAF1"
                                     ("CAF1" "ONT:GENE-PROTEIN" :ID "FA:00418"
                                      :NAME "CAF1 family"))
                                    ("CBP3"
                                     ("CBP3" "ONT:GENE-PROTEIN" :ID "FA:00493"
                                      :NAME "CBP3 family"))
                                    ("COPI"
                                     ("COPI" "ONT:GENE-PROTEIN" :ID "FA:00728"
                                      :NAME "COP1 family"))
                                    ("Ctf18"
                                     ("Ctf18" "ONT:GENE-PROTEIN" :ID "FA:00091"
                                      :NAME "CTF18 subfamily"))
                                    ("DAP10"
                                     ("DAP10" "ONT:GENE-PROTEIN" :ID "FA:00875"
                                      :NAME "DAP10 family"))
                                    ("DOG-1"
                                     ("DOG-1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF14144.4" :NAME "DOG1"))
                                    ("FKBP-1"
                                     ("FKBP-1" "ONT:GENE-PROTEIN" :ID
                                      "FA:01359" :NAME "FKBP1 subfamily"))
                                    ("Hha"
                                     ("Hha" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05321.9" :NAME "HHA"))
                                    ("IRFs"
                                     ("IRFs" "ONT:GENE-PROTEIN" :ID "FA:01910"
                                      :NAME "IRF family"))
                                    ("Ku-70"
                                     ("Ku-70" "ONT:GENE-PROTEIN" :ID "FA:02002"
                                      :NAME "Ku70 family"))
                                    ("LEM"
                                     ("LEM" "ONT:GENE-PROTEIN" :ID "FA:02030"
                                      :NAME "LEM family"))
                                    ("Lcd1"
                                     ("Lcd1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF09798.7" :NAME "LCD1"))
                                    ("Nip3"
                                     ("Nip3" "ONT:GENE-PROTEIN" :ID "FA:02472"
                                      :NAME "NIP3 family"))
                                    ("NudF"
                                     ("NudF" "ONT:GENE-PROTEIN" :ID "FA:02562"
                                      :NAME "nudF subfamily"))
                                    ("PAR6"
                                     ("PAR6" "ONT:GENE-PROTEIN" :ID "FA:02654"
                                      :NAME "PAR6 family"))
                                    ("PIK1"
                                     ("PIK1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF11522.6" :NAME "pik1"))
                                    ("SARA"
                                     ("SARA" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF11409.6" :NAME "SARA"))
                                    ("SIR-2"
                                     ("SIR-2" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF02146.15" :NAME "SIR2"))
                                    ("SIT"
                                     ("SIT" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15330.4" :NAME "SIT"))
                                    ("SMP"
                                     ("SMP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04927.10" :NAME "SMP"))
                                    ("SNF5"
                                     ("SNF5" "ONT:GENE-PROTEIN" :ID "FA:03709"
                                      :NAME "SNF5 family"))
                                    ("TCL1"
                                     ("TCL1" "ONT:GENE-PROTEIN" :ID "FA:03946"
                                      :NAME "TCL1 family"))
                                    ("TGF-βs"
                                     ("TGF-βs" "ONT:GENE-PROTEIN" :ID
                                      "FA:03989" :NAME "TGF-beta family"))
                                    ("TOM-5"
                                     ("TOM-5" "ONT:GENE-PROTEIN" :ID "FA:04127"
                                      :NAME "tom5 family"))
                                    ("TOM22"
                                     ("TOM22" "ONT:GENE-PROTEIN" :ID "FA:04124"
                                      :NAME "tom22 family"))
                                    ("TOM5"
                                     ("TOM5" "ONT:GENE-PROTEIN" :ID "FA:04127"
                                      :NAME "tom5 family"))
                                    ("Tom40"
                                     ("Tom40" "ONT:GENE-PROTEIN" :ID "FA:04126"
                                      :NAME "tom40 family"))
                                    ("Unc-13"
                                     ("Unc-13" "ONT:GENE-PROTEIN" :ID
                                      "FA:04299" :NAME "unc-13 family"))
                                    ("connexin43"
                                     ("connexin43" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03508.11" :NAME "connexin43"))
                                    ("neuregulins"
                                     ("neuregulins" "ONT:GENE-PROTEIN" :ID
                                      "FA:02444" :NAME "neuregulin family"))
                                    ("ric-8"
                                     ("ric-8" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF10165.7" :NAME "ric8"))
                                    ("v-SNARE"
                                     ("v-SNARE" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05008.13" :NAME "V-SNARE"))
                                    ("CBF"
                                     ("CBF" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03914.15" :NAME "CBF"))
                                    ("CCD"
                                     ("CCD" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF07860.9" :NAME "CCD"))
                                    ("Cdc14"
                                     ("Cdc14" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF08045.9" :NAME "CDC14"))
                                    ("Clp1"
                                     ("Clp1" "ONT:GENE-PROTEIN" :ID "FA:00635"
                                      :NAME "clp1 family"))
                                    ("DCR"
                                     ("DCR" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF14047.4" :NAME "DCR"))
                                    ("Dcp1"
                                     ("Dcp1" "ONT:GENE-PROTEIN" :ID "FA:00880"
                                      :NAME "DCP1 family"))
                                    ("EBP-2"
                                     ("EBP-2" "ONT:GENE-PROTEIN" :ID "FA:01056"
                                      :NAME "EBP2 family"))
                                    ("FPP"
                                     ("FPP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05911.9" :NAME "FPP"))
                                    ("GW182"
                                     ("GW182" "ONT:GENE-PROTEIN" :ID "FA:01696"
                                      :NAME "GW182 family"))
                                    ("MCRA"
                                     ("MCRA" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06100.9" :NAME "MCRA"))
                                    ("NAS"
                                     ("NAS" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03059.14" :NAME "NAS"))
                                    ("PABP"
                                     ("PABP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00658.16" :NAME "PABP"))
                                    ("PHP"
                                     ("PHP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF02811.17" :NAME "PHP"))
                                    ("Rap-1"
                                     ("Rap-1" "ONT:GENE-PROTEIN" :ID "FA:04773"
                                      :NAME "RAP1 family"))
                                    ("SDS3"
                                     ("SDS3" "ONT:GENE-PROTEIN" :ID "FA:03527"
                                      :NAME "SDS3 family"))
                                    ("SLAM"
                                     ("SLAM" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06214.9" :NAME "SLAM"))
                                    ("SUI1"
                                     ("SUI1" "ONT:GENE-PROTEIN" :ID "FA:03871"
                                      :NAME "SUI1 family"))
                                    ("Saf-A"
                                     ("Saf-A" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF17073.3" :NAME "SafA"))
                                    ("Sld5"
                                     ("Sld5" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05916.9" :NAME "sld5"))
                                    ("SrAp"
                                     ("SrAp" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF02586.12" :NAME "SRAP"))
                                    ("TGFβs"
                                     ("TGFβs" "ONT:GENE-PROTEIN" :ID "FA:03989"
                                      :NAME "TGF-beta family"))
                                    ("acta"
                                     ("acta" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05058.10" :NAME "ActA"))
                                    ("opted"
                                     ("opted" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03169.13" :NAME "OPT"))
                                    ("ppp5"
                                     ("ppp5" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF08321.10" :NAME "PPP5"))
                                    ("sip-1"
                                     ("sip-1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04938.10" :NAME "SIP1"))
                                    ("AF4"
                                     ("AF4" "ONT:GENE-PROTEIN" :ID "FA:00123"
                                      :NAME "AF4 family"))
                                    ("Atg8"
                                     ("Atg8" "ONT:GENE-PROTEIN" :ID "FA:05183"
                                      :NAME "ATG8 family"))
                                    ("CAF-1"
                                     ("CAF-1" "ONT:GENE-PROTEIN" :ID "FA:00418"
                                      :NAME "CAF1 family"))
                                    ("CART"
                                     ("CART" "ONT:GENE-PROTEIN" :ID "FA:00467"
                                      :NAME "CART family"))
                                    ("CNC"
                                     ("CNC" "ONT:GENE-PROTEIN" :ID "FA:00407"
                                      :NAME "CNC subfamily"))
                                    ("COX-3"
                                     ("COX-3" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00510.16" :NAME "COX3"))
                                    ("CoREST"
                                     ("CoREST" "ONT:GENE-PROTEIN" :ID
                                      "FA:00739" :NAME "CoREST family"))
                                    ("DP-1"
                                     ("DP-1" "ONT:GENE-PROTEIN" :ID "FA:01000"
                                      :NAME "DP1 family"))
                                    ("DP1"
                                     ("DP1" "ONT:GENE-PROTEIN" :ID "FA:01000"
                                      :NAME "DP1 family"))
                                    ("Exo70"
                                     ("Exo70" "ONT:GENE-PROTEIN" :ID "FA:01182"
                                      :NAME "EXO70 family"))
                                    ("Exo84"
                                     ("Exo84" "ONT:GENE-PROTEIN" :ID "FA:01183"
                                      :NAME "EXO84 family"))
                                    ("MAT1"
                                     ("MAT1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06391.11" :NAME "MAT1"))
                                    ("SPT4"
                                     ("SPT4" "ONT:GENE-PROTEIN" :ID "FA:03817"
                                      :NAME "SPT4 family"))
                                    ("SPT5"
                                     ("SPT5" "ONT:GENE-PROTEIN" :ID "FA:03818"
                                      :NAME "SPT5 family"))
                                    ("Sema"
                                     ("Sema" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF01403.17" :NAME "sema"))
                                    ("Set7"
                                     ("Set7" "ONT:GENE-PROTEIN" :ID "FA:01771"
                                      :NAME "SET7 subfamily"))
                                    ("TPT"
                                     ("TPT" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03151.14" :NAME "TPT"))
                                    ("UFD1"
                                     ("UFD1" "ONT:GENE-PROTEIN" :ID "FA:04295"
                                      :NAME "UFD1 family"))
                                    ("VIT1"
                                     ("VIT1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF01988.17" :NAME "VIT1"))
                                    ("XLF"
                                     ("XLF" "ONT:GENE-PROTEIN" :ID "FA:04698"
                                      :NAME "XLF family"))
                                    ("XPG"
                                     ("XPG" "ONT:GENE-PROTEIN" :ID "FA:04707"
                                      :NAME "XPG subfamily"))
                                    ("ZIP"
                                     ("ZIP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF02535.20" :NAME "zip"))
                                    ("ZNF238"
                                     ("ZNF238" "ONT:GENE-PROTEIN" :ID
                                      "FA:02000" :NAME "ZNF238 subfamily"))
                                    ("chromokinesin"
                                     ("chromokinesin" "ONT:GENE-PROTEIN" :ID
                                      "FA:01967" :NAME
                                      "chromokinesin subfamily"))
                                    ("ANP"
                                     ("ANP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00212.16" :NAME "ANP"))
                                    ("Arfs"
                                     ("Arfs" "ONT:GENE-PROTEIN" :ID "FA:03659"
                                      :NAME "arf family"))
                                    ("Arp3"
                                     ("Arp3" "ONT:GENE-PROTEIN" :ID "FA:00081"
                                      :NAME "ARP3 subfamily"))
                                    ("BAP"
                                     ("BAP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06639.9" :NAME "BAP"))
                                    ("Brap2"
                                     ("Brap2" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF07576.10" :NAME "BRAP2"))
                                    ("CDS"
                                     ("CDS" "ONT:GENE-PROTEIN" :ID "FA:00546"
                                      :NAME "CDS family"))
                                    ("COP1"
                                     ("COP1" "ONT:GENE-PROTEIN" :ID "FA:00728"
                                      :NAME "COP1 family"))
                                    ("CSN1"
                                     ("CSN1" "ONT:GENE-PROTEIN" :ID "FA:00765"
                                      :NAME "CSN1 family"))
                                    ("CSN4"
                                     ("CSN4" "ONT:GENE-PROTEIN" :ID "FA:00769"
                                      :NAME "CSN4 family"))
                                    ("CSN6"
                                     ("CSN6" "ONT:GENE-PROTEIN" :ID "FA:02752"
                                      :NAME "CSN6 subfamily"))
                                    ("CSN8"
                                     ("CSN8" "ONT:GENE-PROTEIN" :ID "FA:00772"
                                      :NAME "CSN8 family"))
                                    ("CagA"
                                     ("CagA" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03507.11" :NAME "CagA"))
                                    ("DARPP32"
                                     ("DARPP32" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05395.10" :NAME "DARPP-32"))
                                    ("DCC1"
                                     ("DCC1" "ONT:GENE-PROTEIN" :ID "FA:00878"
                                      :NAME "DCC1 family"))
                                    ("DNA-PKcs"
                                     ("DNA-PKcs" "ONT:GENE-PROTEIN" :ID
                                      "UP:P78527" :NAME
                                      "DNA-dependent protein kinase catalytic subunit"))
                                    ("Doppel"
                                     ("Doppel" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF11466.6" :NAME "doppel"))
                                    ("FA-D1"
                                     ("FA-D1" "ONT:GENE-PROTEIN" :ID "FA:02652"
                                      :NAME "FAD1 subfamily"))
                                    ("GnRH"
                                     ("GnRH" "ONT:GENE-PROTEIN" :ID "FA:01630"
                                      :NAME "GnRH family"))
                                    ("ISWI"
                                     ("ISWI" "ONT:GENE-PROTEIN" :ID "FA:03705"
                                      :NAME "ISWI subfamily"))
                                    ("JAKs"
                                     ("JAKs" "ONT:GENE-PROTEIN" :ID "FA:03129"
                                      :NAME "JAK subfamily"))
                                    ("RGP"
                                     ("RGP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03214.11" :NAME "RGP"))
                                    ("RNF12"
                                     ("RNF12" "ONT:GENE-PROTEIN" :ID "FA:03425"
                                      :NAME "RNF12 family"))
                                    ("Rap80"
                                     ("Rap80" "ONT:GENE-PROTEIN" :ID "FA:03233"
                                      :NAME "RAP80 family"))
                                    ("RasGRPs"
                                     ("RasGRPs" "ONT:GENE-PROTEIN" :ID
                                      "FA:03235" :NAME "RASGRP family"))
                                    ("SAPS"
                                     ("SAPS" "ONT:GENE-PROTEIN" :ID "FA:03496"
                                      :NAME "SAPS family"))
                                    ("SHPs"
                                     ("SHPs" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03579.11" :NAME "SHP"))
                                    ("SMCs"
                                     ("SMCs" "ONT:GENE-PROTEIN" :ID "FA:03684"
                                      :NAME "SMC family"))
                                    ("Sir2"
                                     ("Sir2" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF02146.15" :NAME "SIR2"))
                                    ("Spy1"
                                     ("Spy1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF11357.6" :NAME "spy1"))
                                    ("Ste-20"
                                     ("Ste-20" "ONT:GENE-PROTEIN" :ID
                                      "FA:03111" :NAME "STE20 subfamily"))
                                    ("Swr1"
                                     ("Swr1" "ONT:GENE-PROTEIN" :ID "FA:03708"
                                      :NAME "SWR1 subfamily"))
                                    ("TIP49"
                                     ("TIP49" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06068.11" :NAME "TIP49"))
                                    ("TOM20"
                                     ("TOM20" "ONT:GENE-PROTEIN" :ID "FA:04123"
                                      :NAME "tom20 family"))
                                    ("TSC-22"
                                     ("TSC-22" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF01166.16" :NAME "TSC22"))
                                    ("TSC22"
                                     ("TSC22" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF01166.16" :NAME "TSC22"))
                                    ("TSGs"
                                     ("TSGs" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04668.10" :NAME "tsg"))
                                    ("Vpr"
                                     ("Vpr" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00522.16" :NAME "VPR"))
                                    ("haemagglutinin"
                                     ("haemagglutinin" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00509.16" :NAME "hemagglutinin"))
                                    ("hemagglutinin"
                                     ("hemagglutinin" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00509.16" :NAME "hemagglutinin"))
                                    ("immunoglobulins"
                                     ("immunoglobulins" "ONT:GENE-PROTEIN" :ID
                                      "FA:01833" :NAME
                                      "immunoglobulin superfamily"))
                                    ("kallikreins"
                                     ("kallikreins" "ONT:GENE-PROTEIN" :ID
                                      "FA:02764" :NAME "kallikrein subfamily"))
                                    ("kinesins"
                                     ("kinesins" "ONT:GENE-PROTEIN" :ID
                                      "FA:01965" :NAME "kinesin family"))
                                    ("opt"
                                     ("opt" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03169.13" :NAME "OPT"))
                                    ("opts"
                                     ("opts" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03169.13" :NAME "OPT"))
                                    ("sae2"
                                     ("sae2" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF08573.8" :NAME "SAE2"))
                                    ("serpins"
                                     ("serpins" "ONT:GENE-PROTEIN" :ID
                                      "FA:03578" :NAME "serpin family"))
                                    ("thrombospondin"
                                     ("thrombospondin" "ONT:GENE-PROTEIN" :ID
                                      "FA:04006" :NAME
                                      "thrombospondin family"))
                                    ("thrombospondins"
                                     ("thrombospondins" "ONT:GENE-PROTEIN" :ID
                                      "FA:04006" :NAME
                                      "thrombospondin family"))
                                    ("v-SNAREs"
                                     ("v-SNAREs" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05008.13" :NAME "V-SNARE"))
                                    ("neonate"
                                     ("neonate" "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0001762" :NAME "neonate"))
                                    ("zygote"
                                     ("zygote" "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0000854" :NAME "zygote"))
                                    ("sporozoite"
                                     ("sporozoite" "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0001292" :NAME "sporozoite"))
                                    ("thalassemia"
                                     ("thalassemia"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C35069" :NAME "thalassemia"))
                                    ("contracture"
                                     ("contracture"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0003899" :NAME "contracture"))
                                    ("polyp"
                                     ("polyp"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0000662" :NAME "polyp"))
                                    ("arteriopathies"
                                     ("arteriopathies"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "NCIT:C35317" :NAME
                                      "arterial disorder"))
                                    ("RTC"
                                     ("RTC" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF01137.19" :NAME "RTC"))
                                    ("TIL"
                                     ("TIL" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF01826.15" :NAME "TIL"))
                                    ("oligosaccharides"
                                     ("oligosaccharides" "ONT:MOLECULE" :ID
                                      "CHEBI:50699" :NAME "oligosaccharide"))
                                    ("semiquinone"
                                     ("semiquinone" "ONT:MOLECULE" :ID
                                      "CHEBI:15817" :NAME "semiquinone"))
                                    ("aldehydes"
                                     ("aldehydes" "ONT:MOLECULE" :ID
                                      "CHEBI:17478" :NAME "aldehyde"))
                                    ("glycolipid"
                                     ("glycolipid" "ONT:MOLECULE" :ID
                                      "CHEBI:33563" :NAME "glycolipid"))
                                    ("ribonucleotides"
                                     ("ribonucleotides" "ONT:MOLECULE" :ID
                                      "CHEBI:26561" :NAME "ribonucleotide"))
                                    ("leukotrienes"
                                     ("leukotrienes" "ONT:MOLECULE" :ID
                                      "CHEBI:25029" :NAME "leukotriene"))
                                    ("macromolecules"
                                     ("macromolecules" "ONT:MOLECULE" :ID
                                      "CHEBI:33839" :NAME "macromolecule"))
                                    ("thioester"
                                     ("thioester" "ONT:MOLECULE" :ID
                                      "CHEBI:51277" :NAME "thioester"))
                                    ("gerbil"
                                     ("gerbil" "ONT:NONHUMAN-ANIMAL" :ID
                                      "NCIT:C77807" :NAME "gerbil"))
                                    ("strains"
                                     ("strains" "ONT:ORGANISM" :ID
                                      "NCIT:C14419" :NAME "organism strains"))
                                    ("protozoa"
                                     ("protozoa" "ONT:ORGANISM" :ID
                                      "NCIT:C77916" :NAME "protozoa"))
                                    ("methylcellulose"
                                     ("methylcellulose"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C29253" :NAME "methylcellulose"))
                                    ("bioflavonoid"
                                     ("bioflavonoid"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C306" :NAME "bioflavonoid"))
                                    ("fluoropyrimidine"
                                     ("fluoropyrimidine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C94728" :NAME "fluoropyrimidine"))
                                    ("psoralen"
                                     ("psoralen" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C2586" :NAME "psoralen"))
                                    ("diazeniumdiolate"
                                     ("diazeniumdiolate"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C452539" :NAME "diazeniumdiolate"))
                                    ("nodularin"
                                     ("nodularin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C063998" :NAME "nodularin"))
                                    ("thiouracil"
                                     ("thiouracil"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C29856" :NAME "thiouracil"))
                                    ("quantile"
                                     ("quantile" "ONT:PROCEDURE" :ID
                                      "NCIT:C48920" :NAME "quantile"))
                                    ("quartile"
                                     ("quartile" "ONT:PROCEDURE" :ID
                                      "NCIT:C87306" :NAME "quartile"))
                                    ("duplications"
                                     ("duplications" "ONT:PROCESS" :ID
                                      "EFO:0004015" :NAME "duplication"))
                                    ("hysterectomies"
                                     ("hysterectomies" "ONT:PROCESS" :ID
                                      "EFO:0003881" :NAME "hysterectomy"))
                                    ("KK1"
                                     ("KK1" "ONT:PROTEIN" :ID "UP:P18512" :NAME
                                      "Conotoxin King-Kong 1"))
                                    ("TSH"
                                     ("TSH" "ONT:PROTEIN" :ID "NCIT:C2280"
                                      :NAME "thyroid stimulating hormone"))
                                    ("connexins"
                                     ("connexins" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:00722" :NAME "connexin family"))
                                    ("glycophorins"
                                     ("glycophorins" "ONT:PROTEIN-FAMILY" :ID
                                      "NCIT:C86976" :NAME "glycophorin"))
                                    ("neuropilins"
                                     ("neuropilins" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:02453" :NAME "neuropilin family"))
                                    ("semaphorins"
                                     ("semaphorins" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:03563" :NAME "semaphorin family"))
                                    ("prion"
                                     ("prion" "ONT:PROTEIN-FAMILY" :ID
                                      "FA:03015" :NAME "prion family"))
                                    ("prophase"
                                     ("prophase" "ONT:TIME-SPAN" :ID
                                      "GO:0051324" :NAME "prophase"))
                                    ("vertebrate"
                                     ("vertebrate" "ONT:VERTEBRATE" :ID
                                      "NCIT:C14282" :NAME "vertebrate"))))

