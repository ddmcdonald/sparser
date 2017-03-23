(in-package :sparser)

(defparameter *SUPPRESSED-REDEFS* '(("multivesicular bodies"
                                     ("multivesicular bodies" "go" :TYPE
                                      "cellular-component" :ID "GO:0005771"))
                                    ("catabolic process"
                                     ("catabolic process" "go" :TYPE
                                      "bioprocess" :ID "GO:0009056"))
                                    ("matrix metalloproteinase-9"
                                     ("matrix metalloproteinase-9"
                                      "ONT:PROTEIN" :ID "UP:P14780" :NAME
                                      "Matrix metalloproteinase-9"))
                                    ("matrix metalloproteinase-2"
                                     ("matrix metalloproteinase-2"
                                      "ONT:PROTEIN" :ID "NCIT:C17592" :NAME
                                      "matrix metalloproteinase-2"))
                                    ("synuclein"
                                     ("synuclein" "ONT:GENE-PROTEIN" :ID
                                      "UP:P37379" :NAME "Synuclein"))
                                    ("thymocytes"
                                     ("thymocytes" "ONT:CELL" :ID "BTO:0001372"
                                      :NAME "thymocyte"))
                                    ("splenocytes"
                                     ("splenocytes" "ONT:CELL" :ID "CO:2000074"
                                      :NAME "splenocyte"))
                                    ("caerulein"
                                     ("caerulein" "ONT:PROTEIN" :ID "UP:P56264"
                                      :NAME "Caerulein"))
                                    ("SHI"
                                     ("SHI" "ONT:PROTEIN" :ID "UP:P19651" :NAME
                                      "Delta-stichotoxin-She1a {ECO:0000303PubMed:22683676}"))
                                    ("eicosanoids"
                                     ("eicosanoids" "ONT:MOLECULE" :ID
                                      "CHEBI:23899" :NAME "icosanoid"))
                                    ("interleukin-3"
                                     ("interleukin-3" "ONT:GENE-PROTEIN" :ID
                                      "UP:P08700" :NAME "Interleukin-3"))
                                    ("cis"
                                     ("cis" "ONT:GENE-PROTEIN" :ID "UP:Q2HJ53"
                                      :NAME
                                      "Cytokine-inducible SH2-containing protein"))
                                    ("cIAP1"
                                     ("cIAP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20931" :NAME
                                      "baculoviral IAP repeat-containing protein-2"))
                                    ("TrkC"
                                     ("TrkC" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C33984" :NAME
                                      "neurotrophic tyrosine kinase receptor type-3"))
                                    ("SUMO"
                                     ("SUMO" "ONT:GENE-PROTEIN" :ID "UP:P55853"
                                      :NAME
                                      "Small ubiquitin-related modifier"))
                                    ("Rad9"
                                     ("Rad9" "ONT:GENE-PROTEIN" :ID "FA:03221"
                                      :NAME "RAD9 family"))
                                    ("catecholamines"
                                     ("catecholamines" "ONT:CHEMICAL" :ID
                                      "CHEBI:33567" :NAME "catecholamine"))
                                    ("kinetochores"
                                     ("kinetochores" "ONT:CELL-PART" :ID
                                      "UP:SL-0149" :NAME "Kinetochore"))
                                    ("interneurons"
                                     ("interneurons" "ONT:CELL" :ID
                                      "CO:0000099" :NAME "interneuron"))
                                    ("NFkB"
                                     ("NFkB" "ONT:PROTEIN" :ID "NCIT:C17380"
                                      :NAME "NF-kB"))
                                    ("NF-kb"
                                     ("NF-kb" "ONT:PROTEIN" :ID "NCIT:C17380"
                                      :NAME "NF-kB"))
                                    ("MPK2"
                                     ("MPK2" "ONT:PROTEIN" :ID "UP:P47812"
                                      :NAME
                                      "Mitogen-activated protein kinase 14"))
                                    ("RIP1"
                                     ("RIP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17923" :NAME
                                      "receptor-interacting serine-threonine kinase-1"))
                                    ("PRR"
                                     ("PRR" "ONT:GENE-PROTEIN" :ID "UP:P07052"
                                      :NAME
                                      "Pathogenesis-related protein R minor form"))
                                    ("PKCbeta"
                                     ("PKCbeta" "ONT:GENE-PROTEIN" :ID
                                      "UP:P05771" :NAME
                                      "Protein kinase C beta type"))
                                    ("MKP1"
                                     ("MKP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C29568" :NAME
                                      "dual specificity phosphatase-1"))
                                    ("LDH"
                                     ("LDH" "ONT:GENE-PROTEIN" :ID "FA:02022"
                                      :NAME "LDH family"))
                                    ("IRF-3"
                                     ("IRF-3" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q4JF28" :NAME
                                      "Interferon regulatory factor 3"))
                                    ("PBS"
                                     ("PBS" "ONT:GENE" :ID "NCIT:C122728" :NAME
                                      "TSPO"))
                                    ("HNE"
                                     ("HNE" "ONT:GENE" :ID "NCIT:C104196" :NAME
                                      "ELANE"))
                                    ("pp29/30"
                                     ("pp29/30" "ONT:PROTEIN" :ID "UP:Q6PIZ9"
                                      :NAME
                                      "T-cell receptor-associated transmembrane adapter 1"))
                                    ("lymphokine"
                                     ("lymphokine" "ONT:PROTEIN" :ID
                                      "NCIT:C20498" :NAME "lymphokine"))
                                    ("invasin"
                                     ("invasin" "ONT:PROTEIN" :ID "UP:P19196"
                                      :NAME "Invasin"))
                                    ("chemoattractants"
                                     ("chemoattractants" "ONT:PROTEIN" :ID
                                      "GO:0042056" :NAME
                                      "chemoattractant activity"))
                                    ("TGFβR"
                                     ("TGFβR" "ONT:PROTEIN" :ID "GO:0005024"
                                      :NAME
                                      "transforming growth factor beta-activated receptor activity"))
                                    ("RARα"
                                     ("RARα" "ONT:PROTEIN" :ID "UP:P10276"
                                      :NAME "Retinoic acid receptor alpha"))
                                    ("PIX"
                                     ("PIX" "ONT:PROTEIN" :ID "UP:P68970" :NAME
                                      "Hexon-associated protein"))
                                    ("PCM"
                                     ("PCM" "ONT:PROTEIN" :ID "UP:O42781" :NAME
                                      "Mitogen-activated protein kinase 2"))
                                    ("MO25β"
                                     ("MO25β" "ONT:PROTEIN" :ID "UP:Q9H9S4"
                                      :NAME "Calcium-binding protein 39-like"))
                                    ("MO25α"
                                     ("MO25α" "ONT:PROTEIN" :ID "UP:Q29RI6"
                                      :NAME "Calcium-binding protein 39"))
                                    ("LSL"
                                     ("LSL" "ONT:PROTEIN" :ID "UP:P84821" :NAME
                                      "Lectin 80 kDa subunit"))
                                    ("LAC"
                                     ("LAC" "ONT:PROTEIN" :ID "NCIT:C70620"
                                      :NAME "lupus anticoagulant antibody"))
                                    ("IκB"
                                     ("IκB" "ONT:PROTEIN" :ID "NCIT:C17583"
                                      :NAME "I-kappa-B protein"))
                                    ("IAP1"
                                     ("IAP1" "ONT:PROTEIN" :ID "UP:P15693"
                                      :NAME
                                      "Intestinal-type alkaline phosphatase 1"))
                                    ("CYP41"
                                     ("CYP41" "ONT:PROTEIN" :ID "UP:Q9P3X9"
                                      :NAME
                                      "41 kDa peptidyl-prolyl cis-trans isomerase"))
                                    ("CD3-ε"
                                     ("CD3-ε" "ONT:PROTEIN" :ID "NCIT:C25792"
                                      :NAME
                                      "T-cell surface glycoprotein-CD3 epsilon chain"))
                                    ("AMPKα1"
                                     ("AMPKα1" "ONT:PROTEIN" :ID "NCIT:C116033"
                                      :NAME
                                      "5-AMP-activated protein kinase catalytic subunit alpha-1"))
                                    ("p21Rac1"
                                     ("p21Rac1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C99664" :NAME "RAC1"))
                                    ("p120"
                                     ("p120" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C79771" :NAME "CTNND1"))
                                    ("p110β"
                                     ("p110β" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51161" :NAME "PIK3CB"))
                                    ("acini"
                                     ("acini" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q9UKV3" :NAME
                                      "Apoptotic chromatin condensation inducer in the nucleus"))
                                    ("TGFβ"
                                     ("TGFβ" "ONT:GENE-PROTEIN" :ID "FA:03989"
                                      :NAME "TGF-beta family"))
                                    ("Rheb"
                                     ("Rheb" "ONT:GENE-PROTEIN" :ID "FA:03667"
                                      :NAME "rheb family"))
                                    ("Rab"
                                     ("Rab" "ONT:GENE-PROTEIN" :ID "FA:03661"
                                      :NAME "rab family"))
                                    ("PLC-γ2"
                                     ("PLC-γ2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49383" :NAME "PLCG2"))
                                    ("PBR"
                                     ("PBR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C122728" :NAME "TSPO"))
                                    ("PARP1"
                                     ("PARP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51001" :NAME "PARP1"))
                                    ("NRAS"
                                     ("NRAS" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52549" :NAME "NRAS"))
                                    ("N-myc"
                                     ("N-myc" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C53088" :NAME "NMYC"))
                                    ("MEF2"
                                     ("MEF2" "ONT:GENE-PROTEIN" :ID "FA:02224"
                                      :NAME "MEF2 family"))
                                    ("LPA3"
                                     ("LPA3" "ONT:GENE-PROTEIN" :ID "UP:Q9UBY5"
                                      :NAME
                                      "Lysophosphatidic acid receptor 3"))
                                    ("LIFR"
                                     ("LIFR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51374" :NAME "LIFR"))
                                    ("LEPR"
                                     ("LEPR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51373" :NAME "LEPR"))
                                    ("HSP20"
                                     ("HSP20" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00011.19" :NAME "HSP20"))
                                    ("HIF1"
                                     ("HIF1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52040" :NAME "HIF1A"))
                                    ("HIF-1α"
                                     ("HIF-1α" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q16665" :NAME
                                      "Hypoxia-inducible factor 1-alpha"))
                                    ("HGFR"
                                     ("HGFR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18186" :NAME
                                      "hepatocyte growth factor receptor"))
                                    ("Graf"
                                     ("Graf" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97508" :NAME
                                      "rho GTPase-activating protein 26"))
                                    ("GADD45"
                                     ("GADD45" "ONT:GENE-PROTEIN" :ID
                                      "FA:01442" :NAME "GADD45 family"))
                                    ("Dbl"
                                     ("Dbl" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18335" :NAME "oncogene DBL"))
                                    ("COBRA1"
                                     ("COBRA1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06209.11" :NAME "COBRA1"))
                                    ("CFMs"
                                     ("CFMs" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17392" :NAME
                                      "colony stimulating factor-1 receptor"))
                                    ("Ack1"
                                     ("Ack1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51063" :NAME "ACK1"))
                                    ("iASPP"
                                     ("iASPP" "ONT:GENE" :ID "NCIT:C95029"
                                      :NAME "PPP1R13L"))
                                    ("Sox17"
                                     ("Sox17" "ONT:GENE" :ID "NCIT:C114834"
                                      :NAME "SOX17"))
                                    ("RLIP76"
                                     ("RLIP76" "ONT:GENE" :ID "NCIT:C101287"
                                      :NAME "RALBP1"))
                                    ("PBRs"
                                     ("PBRs" "ONT:GENE" :ID "NCIT:C122728"
                                      :NAME "TSPO"))
                                    ("LIMK"
                                     ("LIMK" "ONT:GENE" :ID "NCIT:C51212" :NAME
                                      "LIMK1"))
                                    ("IMAC"
                                     ("IMAC" "ONT:GENE" :ID "NCIT:C49743" :NAME
                                      "CCL26"))
                                    ("C/EBPβ"
                                     ("C/EBPβ" "ONT:GENE" :ID "NCIT:C104117"
                                      :NAME "CEBPB"))
                                    ("pericytes"
                                     ("pericytes" "ONT:CELL" :ID "CO:0000669"
                                      :NAME "pericyte cell"))
                                    ("streptavidin"
                                     ("streptavidin" "ONT:PROTEIN" :ID
                                      "UP:P22629" :NAME "Streptavidin"))
                                    ("cotransporter"
                                     ("cotransporter" "ONT:PROTEIN" :ID
                                      "GO:0015293" :NAME "symporter activity"))
                                    ("ELK1"
                                     ("ELK1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52540" :NAME "ELK1"))
                                    ("thrombin"
                                     ("thrombin" "ONT:PROTEIN" :ID "UP:P84122"
                                      :NAME "Thrombin"))
                                    ("redox"
                                     ("redox" "ONT:PROTEIN" :ID "GO:0016491"
                                      :NAME "oxidoreductase activity"))
                                    ("pS6"
                                     ("pS6" "ONT:PROTEIN" :ID "UP:P84571" :NAME
                                      "Phylloseptin-6"))
                                    ("mTORC2"
                                     ("mTORC2" "ONT:PROTEIN" :ID "NCIT:C96315"
                                      :NAME "mTORC2"))
                                    ("lyase"
                                     ("lyase" "ONT:PROTEIN" :ID "GO:0016829"
                                      :NAME "lyase activity"))
                                    ("cyclinA"
                                     ("cyclinA" "ONT:PROTEIN" :ID "UP:P20248"
                                      :NAME "Cyclin-A2"))
                                    ("chaperone"
                                     ("chaperone" "ONT:PROTEIN" :ID
                                      "NCIT:C17764" :NAME "chaperone"))
                                    ("caspase3"
                                     ("caspase3" "ONT:PROTEIN" :ID "UP:P42574"
                                      :NAME "Caspase-3"))
                                    ("calcineurin"
                                     ("calcineurin" "ONT:PROTEIN" :ID
                                      "NCIT:C17275" :NAME "calcineurin"))
                                    ("TKI"
                                     ("TKI" "ONT:PROTEIN" :ID "UP:P16223" :NAME
                                      "Locustatachykinin-1"))
                                    ("PLD"
                                     ("PLD" "ONT:PROTEIN" :ID "UP:C0JAT4" :NAME
                                      "Phospholipase D LhSicTox-alphaIA1i"))
                                    ("MTORC1"
                                     ("MTORC1" "ONT:PROTEIN" :ID "NCIT:C96314"
                                      :NAME "mTORC1"))
                                    ("MPR"
                                     ("MPR" "ONT:PROTEIN" :ID "UP:O00264" :NAME
                                      "Membrane-associated progesterone receptor component 1"))
                                    ("MMP"
                                     ("MMP" "ONT:PROTEIN" :ID "NCIT:C18164"
                                      :NAME "matrix metalloproteinase"))
                                    ("MAPKKK"
                                     ("MAPKKK" "ONT:PROTEIN" :ID "GO:0004709"
                                      :NAME
                                      "MAP kinase kinase kinase activity"))
                                    ("IkB"
                                     ("IkB" "ONT:PROTEIN" :ID "NCIT:C17583"
                                      :NAME "I-kappa-B protein"))
                                    ("IKK"
                                     ("IKK" "ONT:PROTEIN" :ID "NCIT:C104199"
                                      :NAME "I-kappa-B kinase"))
                                    ("IGF"
                                     ("IGF" "ONT:PROTEIN" :ID "UP:P22618" :NAME
                                      "Insulin-like growth factor"))
                                    ("I/R"
                                     ("I/R" "ONT:PROTEIN" :ID "UP:P06213" :NAME
                                      "Insulin receptor"))
                                    ("HRP"
                                     ("HRP" "ONT:PROTEIN" :ID "UP:Q08168" :NAME
                                      "58 kDa phosphoprotein"))
                                    ("HCD"
                                     ("HCD" "ONT:PROTEIN" :ID "UP:P02241" :NAME
                                      "Hemocyanin D chain"))
                                    ("FDA"
                                     ("FDA" "ONT:PROTEIN" :ID "UP:P81543" :NAME
                                      "Zinc-containing ferredoxin A"))
                                    ("DHR"
                                     ("DHR" "ONT:PROTEIN" :ID "UP:Q16983" :NAME
                                      "Diuretic hormone receptor"))
                                    ("CYP"
                                     ("CYP" "ONT:PROTEIN" :ID "NCIT:C16484"
                                      :NAME "cytochrome-P450"))
                                    ("BSA"
                                     ("BSA" "ONT:PROTEIN" :ID "UP:P02769" :NAME
                                      "Serum albumin"))
                                    ("saponins"
                                     ("saponins" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C823" :NAME "saponin"))
                                    ("lignans"
                                     ("lignans" "ONT:MOLECULE" :ID
                                      "CHEBI:25036" :NAME "lignan"))
                                    ("glycosides"
                                     ("glycosides" "ONT:MOLECULE" :ID
                                      "CHEBI:24400" :NAME "glycoside"))
                                    ("anthocyanins"
                                     ("anthocyanins" "ONT:MOLECULE" :ID
                                      "CHEBI:35218" :NAME
                                      "anthocyanin cation"))
                                    ("adenomas"
                                     ("adenomas"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0000232" :NAME "adenoma"))
                                    ("tropomyosin"
                                     ("tropomyosin" "ONT:GENE-PROTEIN" :ID
                                      "UP:O01673" :NAME "Tropomyosin"))
                                    ("p44"
                                     ("p44" "ONT:GENE-PROTEIN" :ID "UP:Q8TCB0"
                                      :NAME "Interferon-induced protein 44"))
                                    ("p16"
                                     ("p16" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49511" :NAME "CDKN2A"))
                                    ("neurotrophin-3"
                                     ("neurotrophin-3" "ONT:GENE-PROTEIN" :ID
                                      "UP:P20783" :NAME "Neurotrophin-3"))
                                    ("merlin"
                                     ("merlin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P35240" :NAME "Merlin"))
                                    ("VCAM1"
                                     ("VCAM1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q28260" :NAME
                                      "Vascular cell adhesion protein 1"))
                                    ("TrkB"
                                     ("TrkB" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C33983" :NAME
                                      "neurotrophic tyrosine kinase receptor type-2"))
                                    ("Trk"
                                     ("Trk" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17660" :NAME
                                      "receptor tyrosine kinase"))
                                    ("TRAIL"
                                     ("TRAIL" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C50962" :NAME "TNFSF10"))
                                    ("TOR"
                                     ("TOR" "ONT:GENE-PROTEIN" :ID "GO:0050626"
                                      :NAME
                                      "trimethylamine-N-oxide reductase (cytochrome c) activity"))
                                    ("TNFR1"
                                     ("TNFR1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51380" :NAME "TNFRSF1A"))
                                    ("TCF4"
                                     ("TCF4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C105957" :NAME "TCF4"))
                                    ("SMC"
                                     ("SMC" "ONT:GENE-PROTEIN" :ID "FA:03684"
                                      :NAME "SMC family"))
                                    ("Rho"
                                     ("Rho" "ONT:GENE-PROTEIN" :ID "FA:03668"
                                      :NAME "rho family"))
                                    ("RasGRP"
                                     ("RasGRP" "ONT:GENE-PROTEIN" :ID
                                      "FA:03235" :NAME "RASGRP family"))
                                    ("RIG"
                                     ("RIG" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95420" :NAME "DKK3"))
                                    ("RAPTOR"
                                     ("RAPTOR" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q8N122" :NAME
                                      "Regulatory-associated protein of mTOR"))
                                    ("PUMA"
                                     ("PUMA" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15826.3" :NAME "PUMA"))
                                    ("PP1"
                                     ("PP1" "ONT:GENE-PROTEIN" :ID "FA:03001"
                                      :NAME "PP-1 subfamily"))
                                    ("PARP"
                                     ("PARP" "ONT:GENE-PROTEIN" :ID "UP:P35875"
                                      :NAME "Poly [ADP-ribose] polymerase"))
                                    ("P70S6K"
                                     ("P70S6K" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C84317" :NAME
                                      "ribosomal protein S6 kinase beta-1"))
                                    ("NEDD8"
                                     ("NEDD8" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q15843" :NAME "NEDD8"))
                                    ("MKP3"
                                     ("MKP3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C106025" :NAME "DUSP6"))
                                    ("MIG6"
                                     ("MIG6" "ONT:GENE-PROTEIN" :ID "FA:02304"
                                      :NAME "MIG6 family"))
                                    ("JAK"
                                     ("JAK" "ONT:GENE-PROTEIN" :ID "FA:03129"
                                      :NAME "JAK subfamily"))
                                    ("IgM"
                                     ("IgM" "ONT:GENE-PROTEIN" :ID "NCIT:C569"
                                      :NAME "IgM"))
                                    ("Hras"
                                     ("Hras" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52545" :NAME "HRAS"))
                                    ("HSP70"
                                     ("HSP70" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17765" :NAME
                                      "heat shock protein-70"))
                                    ("HSP60"
                                     ("HSP60" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104339" :NAME "HSPD1"))
                                    ("HS1"
                                     ("HS1" "ONT:GENE-PROTEIN" :ID "UP:P0C2F4"
                                      :NAME "Heteroscorpine-1"))
                                    ("HDAC"
                                     ("HDAC" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C16682" :NAME
                                      "histone deacetylase"))
                                    ("HCC"
                                     ("HCC" "ONT:GENE-PROTEIN" :ID "UP:Q9NFL6"
                                      :NAME "Hemocyanin C chain"))
                                    ("GRP78"
                                     ("GRP78" "ONT:GENE-PROTEIN" :ID
                                      "UP:P11021" :NAME
                                      "78 kDa glucose-regulated protein"))
                                    ("E2F1"
                                     ("E2F1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52538" :NAME "E2F1"))
                                    ("DR4"
                                     ("DR4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C62757" :NAME
                                      "HLA class II histocompatibility antigen DRB1-4 beta chain protein"))
                                    ("Cyp2b"
                                     ("Cyp2b" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C40050" :NAME
                                      "cytochrome P450-2B6"))
                                    ("CsA"
                                     ("CsA" "ONT:GENE-PROTEIN" :ID "UP:P08796"
                                      :NAME "Contact site A protein"))
                                    ("CaMKI"
                                     ("CaMKI" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q9P7I2" :NAME
                                      "Calcium/calmodulin-dependent protein kinase type I"))
                                    ("CXCR7"
                                     ("CXCR7" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C91370" :NAME "CXCR7"))
                                    ("CK2"
                                     ("CK2" "ONT:GENE-PROTEIN" :ID "FA:03101"
                                      :NAME "CK2 subfamily"))
                                    ("CD71"
                                     ("CD71" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C38519" :NAME
                                      "transferrin receptor-1"))
                                    ("CBP"
                                     ("CBP" "ONT:GENE-PROTEIN" :ID "UP:O42720"
                                      :NAME "Calcium-binding protein"))
                                    ("Bip"
                                     ("Bip" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C26293" :NAME
                                      "bone morphogenetic protein-3B"))
                                    ("BRG1"
                                     ("BRG1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52111" :NAME "SMARCA4"))
                                    ("Arf"
                                     ("Arf" "ONT:GENE-PROTEIN" :ID "FA:03659"
                                      :NAME "arf family"))
                                    ("ALP"
                                     ("ALP" "ONT:GENE-PROTEIN" :ID "UP:P03973"
                                      :NAME "Antileukoproteinase"))
                                    ("ADC"
                                     ("ADC" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06314.9" :NAME "ADC"))
                                    ("p190RhoGAP"
                                     ("p190RhoGAP" "ONT:GENE" :ID "NCIT:C97269"
                                      :NAME "GRLF1"))
                                    ("mdr1"
                                     ("mdr1" "ONT:GENE" :ID "NCIT:C52273" :NAME
                                      "ABCB1"))
                                    ("TAK1"
                                     ("TAK1" "ONT:GENE" :ID "NCIT:C106598"
                                      :NAME "NR2C2"))
                                    ("RSK"
                                     ("RSK" "ONT:GENE" :ID "NCIT:C104765" :NAME
                                      "RPS6KA1"))
                                    ("NOX2"
                                     ("NOX2" "ONT:GENE" :ID "NCIT:C106595"
                                      :NAME "CYBB"))
                                    ("NKCC1"
                                     ("NKCC1" "ONT:GENE" :ID "NCIT:C102514"
                                      :NAME "SLC12A2"))
                                    ("MEF"
                                     ("MEF" "ONT:GENE" :ID "NCIT:C97473" :NAME
                                      "ELF4"))
                                    ("LC3B"
                                     ("LC3B" "ONT:GENE" :ID "NCIT:C116659"
                                      :NAME "MAP1LC3B"))
                                    ("FBW7"
                                     ("FBW7" "ONT:GENE" :ID "NCIT:C50390" :NAME
                                      "FBXW7"))
                                    ("ECM"
                                     ("ECM" "ONT:GENE" :ID "NCIT:C115183" :NAME
                                      "MMRN1"))
                                    ("DSS"
                                     ("DSS" "ONT:GENE" :ID "NCIT:C75901" :NAME
                                      "PMP22"))
                                    ("CD31"
                                     ("CD31" "ONT:GENE" :ID "NCIT:C51186" :NAME
                                      "PECAM1"))
                                    ("Bis"
                                     ("Bis" "ONT:GENE" :ID "NCIT:C105995" :NAME
                                      "BAG3"))
                                    ("AID"
                                     ("AID" "ONT:GENE" :ID "NCIT:C101414" :NAME
                                      "AICDA"))
                                    ("vacuoles"
                                     ("vacuoles" "ONT:CELL-PART" :ID
                                      "UP:SL-0272" :NAME "Vacuole"))
                                    ("sarcomeres"
                                     ("sarcomeres" "ONT:CELL-PART" :ID
                                      "UP:SL-0313" :NAME "Sarcomere"))
                                    ("organelles"
                                     ("organelles" "ONT:CELL-PART" :ID
                                      "GO:0043226" :NAME "organelle"))
                                    ("synoviocytes"
                                     ("synoviocytes" "ONT:CELL" :ID
                                      "CO:0000214" :NAME "synovial cell"))
                                    ("oocytes"
                                     ("oocytes" "ONT:CELL" :ID "BTO:0000964"
                                      :NAME "oocyte"))
                                    ("erythrocytes"
                                     ("erythrocytes" "ONT:CELL" :ID
                                      "BTO:0000424" :NAME "erythrocyte"))
                                    ("eosinophils"
                                     ("eosinophils" "ONT:CELL" :ID
                                      "BTO:0000399" :NAME "eosinophil"))
                                    ("enterocytes"
                                     ("enterocytes" "ONT:CELL" :ID "CO:0000584"
                                      :NAME "enterocyte"))
                                    ("cardiomyocytes"
                                     ("cardiomyocytes" "ONT:CELL" :ID
                                      "CO:0000746" :NAME
                                      "cardiac muscle cell"))
                                    ("WD40"
                                     ("WD40" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00400.30" :NAME "WD40"))
                                    ("methotrexate"
                                     ("methotrexate"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C642" :NAME "methotrexate"))
                                    ("glutathione"
                                     ("glutathione"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C523" :NAME "glutathione"))
                                    ("daunorubicin"
                                     ("daunorubicin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C62091" :NAME "daunorubicin"))
                                    ("cyclosporine"
                                     ("cyclosporine"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C406" :NAME "cyclosporine"))
                                    ("PS1145"
                                     ("PS1145" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C456319" :NAME "PS1145"))
                                    ("PP2"
                                     ("PP2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "CHEBI:78331" :NAME "PP2"))
                                    ("PKI166"
                                     ("PKI166" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C1871" :NAME "PKI166"))
                                    ("MEK162"
                                     ("MEK162" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C581313" :NAME "MEK162"))
                                    ("LBH589"
                                     ("LBH589" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C66948" :NAME "LBH589"))
                                    ("gamma-glutamylcysteine"
                                     ("gamma-glutamylcysteine" "ONT:MOLECULE"
                                      :ID "CHEBI:24195" :NAME
                                      "gamma-glutamylcysteine"))
                                    ("neurotransmitter"
                                     ("neurotransmitter" "ONT:CHEMICAL" :ID
                                      "CHEBI:25512" :NAME "neurotransmitter"))
                                    ("gamma-tocopherol"
                                     ("gamma-tocopherol" "ONT:CHEMICAL" :ID
                                      "CHEBI:18185" :NAME "gamma-tocopherol"))
                                    ("PD-153035"
                                     ("PD-153035" "ONT:CHEMICAL" :ID
                                      "CHEBI:91076" :NAME "PD-153035"))
                                    ("WM266-4"
                                     ("WM266-4" "ONT:CELL-LINE" :ID "CVCL:2765"
                                      :NAME "WM266-4"))
                                    ("UW228-1"
                                     ("UW228-1" "ONT:CELL-LINE" :ID "CVCL:4460"
                                      :NAME "UW228-1"))
                                    ("U2OS"
                                     ("U2OS" "ONT:CELL-LINE" :ID "CVCL:0042"
                                      :NAME "U2OS"))
                                    ("TG2"
                                     ("TG2" "ONT:CELL-LINE" :ID "CVCL:F231"
                                      :NAME "TG2"))
                                    ("SW13"
                                     ("SW13" "ONT:CELL-LINE" :ID "CVCL:0542"
                                      :NAME "SW13"))
                                    ("SKH1"
                                     ("SKH1" "ONT:CELL-LINE" :ID "CVCL:C124"
                                      :NAME "SKH1"))
                                    ("SKBR3"
                                     ("SKBR3" "ONT:CELL-LINE" :ID "EFO:0001236"
                                      :NAME "SKBR3"))
                                    ("REF52"
                                     ("REF52" "ONT:CELL-LINE" :ID "CVCL:6848"
                                      :NAME "REF52"))
                                    ("PAC1"
                                     ("PAC1" "ONT:CELL-LINE" :ID "CVCL:U511"
                                      :NAME "PAC1"))
                                    ("NIH3T3"
                                     ("NIH3T3" "ONT:CELL-LINE" :ID
                                      "EFO:0001222" :NAME "NIH3T3"))
                                    ("MKN28"
                                     ("MKN28" "ONT:CELL-LINE" :ID "CVCL:1416"
                                      :NAME "MKN28"))
                                    ("MKN1"
                                     ("MKN1" "ONT:CELL-LINE" :ID "CVCL:1415"
                                      :NAME "MKN1"))
                                    ("MIN6"
                                     ("MIN6" "ONT:CELL-LINE" :ID "EFO:0002829"
                                      :NAME "MIN6"))
                                    ("MG63"
                                     ("MG63" "ONT:CELL-LINE" :ID "EFO:0002234"
                                      :NAME "MG63"))
                                    ("JEG3"
                                     ("JEG3" "ONT:CELL-LINE" :ID "EFO:0002066"
                                      :NAME "JEG3"))
                                    ("HT22"
                                     ("HT22" "ONT:CELL-LINE" :ID "CVCL:0321"
                                      :NAME "HT22"))
                                    ("HEC1A"
                                     ("HEC1A" "ONT:CELL-LINE" :ID "EFO:0002191"
                                      :NAME "HEC1A"))
                                    ("HCT15"
                                     ("HCT15" "ONT:CELL-LINE" :ID "EFO:0002188"
                                      :NAME "HCT15"))
                                    ("HCC1937"
                                     ("HCC1937" "ONT:CELL-LINE" :ID "CVCL:0290"
                                      :NAME "HCC1937"))
                                    ("HCA7"
                                     ("HCA7" "ONT:CELL-LINE" :ID "CVCL:0289"
                                      :NAME "HCA7"))
                                    ("HBEC3-KT"
                                     ("HBEC3-KT" "ONT:CELL-LINE" :ID
                                      "CVCL:X491" :NAME "HBEC3-KT"))
                                    ("GHFT1-5"
                                     ("GHFT1-5" "ONT:CELL-LINE" :ID "CVCL:J506"
                                      :NAME "GHFT1-5"))
                                    ("ELT3"
                                     ("ELT3" "ONT:CELL-LINE" :ID "CVCL:4616"
                                      :NAME "ELT3"))
                                    ("EL4"
                                     ("EL4" "ONT:CELL-LINE" :ID "CVCL:0255"
                                      :NAME "EL4"))
                                    ("Calu6"
                                     ("Calu6" "ONT:CELL-LINE" :ID "EFO:0002152"
                                      :NAME "Calu6"))
                                    ("Calu3"
                                     ("Calu3" "ONT:CELL-LINE" :ID "EFO:0002819"
                                      :NAME "Calu3"))
                                    ("CC3"
                                     ("CC3" "ONT:CELL-LINE" :ID "CVCL:C639"
                                      :NAME "CC3"))
                                    ("AML12"
                                     ("AML12" "ONT:CELL-LINE" :ID "CVCL:0140"
                                      :NAME "AML12"))
                                    ("osteoblast"
                                     ("osteoblast" "ONT:CELL" :ID "BTO:0001593"
                                      :NAME "osteoblast"))
                                    ("prometaphase"
                                     ("prometaphase" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "NCIT:C51030" :NAME "prometaphase"))
                                    ("poly-adenylation"
                                     ("poly-adenylation"
                                      "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C18947" :NAME
                                      "RNA polyadenylation"))
                                    ("hyper-methylation"
                                     ("hyper-methylation"
                                      "ONT:BIOLOGICAL-PROCESS" :ID
                                      "NCIT:C20102" :NAME "hypermethylation"))
                                    ("deubiquitination"
                                     ("deubiquitination"
                                      "ONT:BIOLOGICAL-PROCESS" :ID "GO:0016579"
                                      :NAME "protein deubiquitination"))
                                    ("meta-analysis"
                                     ("meta-analysis" "ONT:PROCEDURE" :ID
                                      "NCIT:C17886" :NAME "meta-analysis"))
                                    ("syncytium"
                                     ("syncytium" "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0005784" :NAME "syncytium"))
                                    ("P-body"
                                     ("P-body" "ONT:CELL-PART" :ID "UP:SL-0230"
                                      :NAME "P-body"))
                                    ("let-7"
                                     ("let-7" "ONT:RNA" :ID "NCIT:C48183" :NAME
                                      "let-7"))))

(defparameter *SUPPRESSED-MOD-REDEFS* '(("downcase" "grb10"
                                         ("Grb10" "uniprot" :TYPE "gene" :ID
                                          "UP:Q13322"))
                                        ("downcase" "scfas"
                                         ("SCFAs" "ONT:CHEMICAL" :ID
                                          "CHEBI:26666" :NAME
                                          "short-chain fatty acid"))
                                        ("downcase" "mtb"
                                         ("Mtb" "ONT:GENE-PROTEIN" :ID
                                          "UP:P27087" :NAME
                                          "Metallothionein B"))
                                        ("downcase" "lecs"
                                         ("LECs" "ONT:CELL" :ID "CO:0002138"
                                          :NAME
                                          "endothelial cell of lymphatic vessel"))
                                        ("downcase" "edcs"
                                         ("EDCs" "ONT:CHEMICAL" :ID
                                          "NCIT:C44383" :NAME
                                          "ethylene dichloride"))
                                        ("downcase" "epcs"
                                         ("EPCs" "ONT:CELL" :ID "CO:0002619"
                                          :NAME
                                          "adult endothelial progenitor cell"))
                                        ("downcase" "bmdcs"
                                         ("BMDCs" "ONT:CELL" :ID "BTO:0003857"
                                          :NAME
                                          "bone marrow-derived dendritic cell"))
                                        ("downcase" "freud1"
                                         ("Freud1" "ONT:PROTEIN" :ID
                                          "UP:Q6P1N0" :NAME
                                          "Coiled-coil and C2 domain-containing protein 1A"))
                                        ("downcase" "hif1α"
                                         ("Hif1α" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q16665" :NAME
                                          "Hypoxia-inducible factor 1-alpha"))
                                        ("upcase" "GAL4"
                                         ("Gal4" "ONT:GENE-PROTEIN" :ID
                                          "UP:P56470" :NAME "Galectin-4"))
                                        ("downcase" "bmscs"
                                         ("BMSCs" "ONT:CELL" :ID "CO:0000134"
                                          :NAME "mesenchymal stem cell"))
                                        ("upcase" "FGFR"
                                         ("Fgfr" "ONT:PROTEIN" :ID
                                          "NCIT:C17297" :NAME
                                          "fibroblast growth factor receptor family"))
                                        ("downcase" "beclin1"
                                         ("Beclin1" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q14457" :NAME "Beclin-1"))
                                        ("hyphens" "Nrf2"
                                         ("Nrf-2" "ONT:GENE" :ID "NCIT:C54238"
                                          :NAME "NFE2L2"))
                                        ("upcase" "NALP3"
                                         ("Nalp3" "ONT:GENE" :ID "NCIT:C77203"
                                          :NAME "NLRP3"))
                                        ("downcase" "tcells"
                                         ("Tcells" "ONT:CELL" :ID "BTO:0000782"
                                          :NAME "T-lymphocyte"))
                                        ("downcase" "rgcs"
                                         ("RGCs" "ONT:CELL" :ID "CO:0000740"
                                          :NAME "retinal ganglion cell"))
                                        ("downcase" "pbmcs"
                                         ("PBMCs" "ONT:CELL" :ID "BTO:0001025"
                                          :NAME
                                          "peripheral blood mononuclear cell"))
                                        ("hyphens" "trastuzumab"
                                         ("trastu-zumab"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C1647" :NAME "trastuzumab"))
                                        ("hyphens-dc" "ku55933"
                                         ("Ku-55933"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C495818" :NAME
                                          "2-morpholin-4-yl-6-thianthren-1-yl-pyran-4-one"))
                                        ("hyphens-dc" "actd"
                                         ("act-D" "ONT:CHEMICAL" :ID
                                          "CHEBI:27666" :NAME "actinomycin D"))
                                        ("hyphens" "neuro2a"
                                         ("neuro-2a" "ONT:CELL-LINE" :ID
                                          "CVCL:0470" :NAME "Neuro-2a"))
                                        ("hyphens" "U2OS"
                                         ("U-2OS" "ONT:CELL-LINE" :ID
                                          "CVCL:0042" :NAME "U2OS"))
                                        ("hyphens" "SKBR3"
                                         ("SK-BR3" "ONT:CELL-LINE" :ID
                                          "EFO:0001236" :NAME "SKBR3"))
                                        ("upcase" "PNT1A"
                                         ("PNT1a" "ONT:CELL-LINE" :ID
                                          "CVCL:2163" :NAME "PNT1A"))
                                        ("upcase" "IGROV-1"
                                         ("Igrov-1" "ONT:CELL-LINE" :ID
                                          "CVCL:1304" :NAME "IGROV-1"))
                                        ("hyphens-dc" "hut78"
                                         ("Hut-78" "ONT:CELL-LINE" :ID
                                          "EFO:0002209" :NAME "HuT78"))
                                        ("hyphens" "Capan2"
                                         ("Capan-2" "ONT:CELL-LINE" :ID
                                          "EFO:0002154" :NAME "Capan2"))
                                        ("hyphens-dc" "cwr22rv1"
                                         ("CWR22rv-1" "ONT:CELL-LINE" :ID
                                          "CVCL:1045" :NAME "22Rv1"))
                                        ("upcase" "BRN-2"
                                         ("Brn-2" "ONT:CELL-LINE" :ID
                                          "CVCL:0U16" :NAME "BRN-2"))
                                        ("hyphens-dc" "baf3"
                                         ("Baf-3" "ONT:CELL-LINE" :ID
                                          "CVCL:0161" :NAME "Ba/F3"))
                                        ("downcase" "de-sumoylation"
                                         ("de-SUMOylation"
                                          "ONT:BIOLOGICAL-PROCESS" :ID
                                          "GO:0016926" :NAME
                                          "protein desumoylation"))
                                        ("downcase" "ptm"
                                         ("PTM" "ONT:BIOLOGICAL-PROCESS" :ID
                                          "GO:0043687" :NAME
                                          "post-translational protein modification"))))

(defparameter *ID-MISMATCH-REDEF* '(("orig" "prostaglandin E2" "CHEBI:15551"
                                     ("prostaglandin E2" "pubchem" :TYPE
                                      "simple-chemical" :ID "PC:5280360"))
                                    ("downcase" "hydrogen peroxide"
                                     "NCIT:C28156"
                                     ("Hydrogen peroxide" "pubchem" :TYPE
                                      "simple-chemical" :ID "PC:784"))
                                    ("orig" "docosahexaenoic acid"
                                     "CHEBI:36005"
                                     ("docosahexaenoic acid" "pubchem" :TYPE
                                      "simple-chemical" :ID "PC:445580"))
                                    ("orig" "oxidized glutathione"
                                     "NCIT:C62624"
                                     ("oxidized glutathione" "pubchem" :TYPE
                                      "simple-chemical" :ID "PC:975"))
                                    ("upcase" "KN-93" "CHEBI:91460"
                                     ("Kn-93" "pubchem" :TYPE "simple-chemical"
                                      :ID "PC:3837"))
                                    ("orig" "sphingosine 1-phosphate"
                                     "CHEBI:37550"
                                     ("sphingosine 1-phosphate" "pubchem" :TYPE
                                      "simple-chemical" :ID "PC:5353956"))
                                    ("downcase" "everolimus" "NCIT:C48387"
                                     ("Everolimus" "pubchem" :TYPE
                                      "simple-chemical" :ID "PC:6442177"))
                                    ("orig" "phosphatidylinositol 3-phosphate"
                                     "CHEBI:26034"
                                     ("phosphatidylinositol 3-phosphate"
                                      "pubchem" :TYPE "simple-chemical" :ID
                                      "PC:6857403"))
                                    ("orig" "p16 protein" "p16 protein"
                                     ("p16 protein" "uniprot" :TYPE "gene" :ID
                                      "UP:Q96518"))
                                    ("orig" "insulin like growth factor"
                                     "insulin like growth factor"
                                     ("insulin like growth factor" "interpro"
                                      :TYPE "family" :ID "IPR022350"))
                                    ("orig"
                                     "nuclear factor erythroid 2 related factor 2"
                                     "nuclear factor erythroid 2 related factor 2"
                                     ("nuclear factor erythroid 2 related factor 2"
                                      "interpro" :TYPE "family" :ID
                                      "IPR029845"))
                                    ("orig" "dual specificity phosphatase"
                                     "dual specificity phosphatase"
                                     ("dual specificity phosphatase" "interpro"
                                      :TYPE "family" :ID "IPR024950"))
                                    ("orig" "epithelial sodium channel"
                                     "epithelial sodium channel"
                                     ("epithelial sodium channel" "interpro"
                                      :TYPE "family" :ID "IPR004724"))
                                    ("orig" "natriuretic peptide"
                                     "natriuretic peptide"
                                     ("natriuretic peptide" "interpro" :TYPE
                                      "family" :ID "IPR000663"))
                                    ("orig" "Protein Kinase C"
                                     "Protein Kinase C"
                                     ("Protein Kinase C" "interpro" :TYPE
                                      "family" :ID "IPR012233"))
                                    ("orig" "immediate early response"
                                     "immediate early response"
                                     ("immediate early response" "interpro"
                                      :TYPE "family" :ID "IPR008653"))
                                    ("orig" "transforming growth factor-beta"
                                     "transforming growth factor-beta"
                                     ("transforming growth factor-beta"
                                      "interpro" :TYPE "family" :ID
                                      "IPR016319"))
                                    ("orig" "tumour necrosis factor"
                                     "tumour necrosis factor"
                                     ("tumour necrosis factor" "interpro" :TYPE
                                      "family" :ID "IPR006053"))
                                    ("orig"
                                     "eukaryotic translation initiation factor 4E binding"
                                     "eukaryotic translation initiation factor 4E binding"
                                     ("eukaryotic translation initiation factor 4E binding"
                                      "interpro" :TYPE "family" :ID
                                      "IPR008606"))
                                    ("orig" "cyclin D" "cyclin D"
                                     ("cyclin D" "interpro" :TYPE "family" :ID
                                      "IPR015451"))
                                    ("orig" "Tgf-beta" "Tgf-beta"
                                     ("Tgf-beta" "interpro" :TYPE "family" :ID
                                      "IPR015615"))
                                    ("orig" "cyclin E" "cyclin E"
                                     ("cyclin E" "interpro" :TYPE "family" :ID
                                      "IPR028858"))
                                    ("orig" "aquaporin 1" "aquaporin 1"
                                     ("aquaporin 1" "interpro" :TYPE "family"
                                      :ID "IPR023274"))
                                    ("orig" "retinoblastoma protein"
                                     "retinoblastoma protein"
                                     ("retinoblastoma protein" "interpro" :TYPE
                                      "family" :ID "IPR028309"))
                                    ("orig" "heat shock protein 70"
                                     "heat shock protein 70"
                                     ("heat shock protein 70" "interpro" :TYPE
                                      "family" :ID "IPR013126"))
                                    ("orig"
                                     "steroidogenic acute regulatory protein"
                                     "steroidogenic acute regulatory protein"
                                     ("steroidogenic acute regulatory protein"
                                      "interpro" :TYPE "family" :ID
                                      "IPR029866"))
                                    ("orig" "AP-1 transcription factor"
                                     "AP-1 transcription factor"
                                     ("AP-1 transcription factor" "interpro"
                                      :TYPE "family" :ID "IPR000837"))
                                    ("orig" "vascular cell adhesion molecule-1"
                                     "vascular cell adhesion molecule-1"
                                     ("vascular cell adhesion molecule-1"
                                      "interpro" :TYPE "family" :ID
                                      "IPR003989"))
                                    ("orig" "phospholipase D" "phospholipase D"
                                     ("phospholipase D" "interpro" :TYPE
                                      "family" :ID "IPR015679"))
                                    ("orig" "calcitonin gene related peptide"
                                     "calcitonin gene related peptide"
                                     ("calcitonin gene related peptide"
                                      "interpro" :TYPE "family" :ID
                                      "IPR015476"))
                                    ("orig" "BTB-Kelch protein"
                                     "BTB-Kelch protein"
                                     ("BTB-Kelch protein" "interpro" :TYPE
                                      "family" :ID "IPR017096"))
                                    ("orig" "Toll Like Receptor"
                                     "Toll Like Receptor"
                                     ("Toll Like Receptor" "interpro" :TYPE
                                      "family" :ID "IPR017241"))
                                    ("orig" "cell membrane" "cell membrane"
                                     ("cell membrane" "uniprot" :TYPE
                                      "cellular-component" :ID "UP:SL-0039"))
                                    ("orig" "target cell" "target cell"
                                     ("target cell" "uniprot" :TYPE
                                      "cellular-component" :ID "UP:SL-0487"))
                                    ("orig" "tight junction" "tight junction"
                                     ("tight junction" "uniprot" :TYPE
                                      "cellular-component" :ID "UP:SL-0265"))
                                    ("orig" "lipid droplet" "lipid droplet"
                                     ("lipid droplet" "uniprot" :TYPE
                                      "cellular-component" :ID "UP:SL-0154"))
                                    ("orig" "clathrin coated pit"
                                     "clathrin coated pit"
                                     ("clathrin coated pit" "uniprot" :TYPE
                                      "cellular-component" :ID "UP:SL-0069"))
                                    ("orig" "perinuclear region"
                                     "perinuclear region"
                                     ("perinuclear region" "uniprot" :TYPE
                                      "cellular-component" :ID "UP:SL-0198"))
                                    ("orig" "peripheral blood mononuclear cell"
                                     "BTO:0001025"
                                     ("peripheral blood mononuclear cell" "cl"
                                      :TYPE "celltype" :ID "CL:2000001"))
                                    ("orig" "retinal ganglion cell"
                                     "CO:0000740"
                                     ("retinal ganglion cell" "cl" :TYPE
                                      "celltype" :ID "CL:0000740"))
                                    ("orig" "goblet cell" "BTO:0001540"
                                     ("goblet cell" "cl" :TYPE "celltype" :ID
                                      "CL:0000160"))
                                    ("orig" "cardiac muscle cell" "CO:0000746"
                                     ("cardiac muscle cell" "cl" :TYPE
                                      "celltype" :ID "CL:0000746"))
                                    ("orig" "pancreatic beta cell"
                                     "BTO:0000783"
                                     ("pancreatic beta cell" "cl" :TYPE
                                      "celltype" :ID "CL:0000169"))
                                    ("orig" "A549" "EFO:0001086"
                                     ("A549" "cellosaurus" :TYPE "cellline" :ID
                                      "CVCL_0023"))
                                    ("orig" "L-02" "CVCL:6926"
                                     ("L-02" "cellosaurus" :TYPE "cellline" :ID
                                      "CVCL_6926"))
                                    ("hyphens-dc" "umscc1" "CVCL:7707"
                                     ("UMSCC-1" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL_7707"))
                                    ("orig" "MIA PaCa-2" "CVCL:0428"
                                     ("MIA PaCa-2" "cellosaurus" :TYPE
                                      "cellline" :ID "CVCL_0428"))
                                    ("hyphens-dc" "d11" "UP:P31277"
                                     ("D1-1" "cellosaurus" :TYPE "cellline" :ID
                                      "CVCL_3502"))
                                    ("hyphens-dc" "bxpc3" "EFO:0002709"
                                     ("BXPC-3" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL_0186"))
                                    ("orig" "CFPAC-1" "EFO:0006551"
                                     ("CFPAC-1" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL_1119"))
                                    ("hyphens-dc" "miapaca2" "CVCL:0428"
                                     ("MiaPACA-2" "cellosaurus" :TYPE
                                      "cellline" :ID "CVCL_0428"))
                                    ("hyphens" "Colo205" "PROTEIN1116"
                                     ("Colo-205" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL_0218"))
                                    ("upcase" "BEAS-2B" "EFO:0001089"
                                     ("Beas-2B" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL_0168"))
                                    ("orig" "ZR-75-1" "CVCL:0588"
                                     ("ZR-75-1" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL_0588"))
                                    ("orig" "HS-5" "CVCL:3720"
                                     ("HS-5" "cellosaurus" :TYPE "cellline" :ID
                                      "CVCL_0809"))
                                    ("orig" "glutathione peroxidase"
                                     "UP:Q98234"
                                     ("glutathione peroxidase" "pfam" :TYPE
                                      "family" :ID "XFAM:PF00255"))
                                    ("orig" "BH3" "XFAM:PF15285.4"
                                     ("BH3" "pfam" :TYPE "family" :ID
                                      "XFAM:PF15285"))
                                    ("downcase" "cox-2" "NCIT:C50905"
                                     ("Cox-2" "uniprot" :TYPE "gene" :ID
                                      "UP:P35354"))
                                    ("orig" "SV40" "NCIT:C14279"
                                     ("SV40" "taxonomy" :TYPE "species" :ID
                                      "TI:10633"))
                                    ("hyphens-dc" "tak165" "NCIT:C66212"
                                     ("TAK-165" "pubchem" :TYPE
                                      "simple-chemical" :ID "PC:644692"))
                                    ("hyphens" "Panc1" "EFO:0002713"
                                     ("Panc-1" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL_0480"))
                                    ("hyphens-dc" "zr751" "CVCL:0588"
                                     ("ZR75-1" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL_0588"))
                                    ("orig" "MDA-MB-435" "CVCL:0417"
                                     ("MDA-MB-435" "cellosaurus" :TYPE
                                      "cellline" :ID "CVCL_0417"))
                                    ("orig" "colon cancer" "UP:P40692"
                                     ("colon cancer" "tissuelist" :TYPE
                                      "cancer" :ID "TS-0160"))
                                    ("orig" "synovial cell" "CO:0000214"
                                     ("synovial cell" "tissuelist" :TYPE "cell"
                                      :ID "TS-0995"))
                                    ("orig" "mesenchymal stem cell"
                                     "CO:0000134"
                                     ("mesenchymal stem cell" "tissuelist"
                                      :TYPE "cell" :ID "TS-0618"))
                                    ("orig" "embryonic stem cell" "CO:0002322"
                                     ("embryonic stem cell" "tissuelist" :TYPE
                                      "cell" :ID "TS-0263"))
                                    ("orig" "B cell" "CO:0000236"
                                     ("B cell" "tissuelist" :TYPE "cell" :ID
                                      "TS-0068"))
                                    ("orig" "myocardin" "UP:Q8IZQ8"
                                     ("myocardin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16067" :NAME "myocardin"))
                                    ("orig" "mut" "UP:P22033"
                                     ("mut" "ONT:GENE" :ID "HGNC:7526" :NAME
                                      "methylmalonyl-CoA mutase"))
                                    ("orig" "apo" "UP:P02649"
                                     ("apo" "ONT:GENE-PROTEIN" :ID "UP:Q8N6M6"
                                      :NAME "Aminopeptidase O"))
                                    ("downcase" "twist1" "UP:Q15672"
                                     ("Twist1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12428" :NAME
                                      "twist family bHLH transcription factor 1"))
                                    ("downcase" "thioredoxin" "UP:P10599"
                                     ("Thioredoxin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12435" :NAME "thioredoxin"))
                                    ("orig" "TOLLIP" "UP:Q9H0E2"
                                     ("TOLLIP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16476" :NAME
                                      "toll interacting protein"))
                                    ("orig" "TBP" "UP:P20226"
                                     ("TBP" "ONT:GENE-PROTEIN" :ID "HGNC:11588"
                                      :NAME "TATA-box binding protein"))
                                    ("hyphens-dc" "sox2" "SOX2"
                                     ("Sox-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11195" :NAME "SRY-box 2"))
                                    ("downcase" "smo" "UP:Q99835"
                                     ("Smo" "ONT:GENE-PROTEIN" :ID "HGNC:11119"
                                      :NAME
                                      "smoothened, frizzled class receptor"))
                                    ("orig" "RalA" "UP:P11233"
                                     ("RalA" "ONT:GENE-PROTEIN" :ID "HGNC:9839"
                                      :NAME "RAS like proto-oncogene A"))
                                    ("orig" "cJun" "UP:P05412"
                                     ("cJun" "ONT:GENE" :ID "HGNC:6204" :NAME
                                      "Jun proto-oncogene, AP-1 transcription factor subunit"))
                                    ("downcase" "zeb-1" "UP:P37275"
                                     ("Zeb-1" "ONT:GENE" :ID "HGNC:11642" :NAME
                                      "zinc finger E-box binding homeobox 1"))
                                    ("orig" "WNK3" "UP:Q9BYP7"
                                     ("WNK3" "ONT:GENE" :ID "HGNC:14543" :NAME
                                      "WNK lysine deficient protein kinase 3"))
                                    ("orig" "TRAF3" "NCIT:C96378"
                                     ("TRAF3" "ONT:GENE" :ID "HGNC:12033" :NAME
                                      "TNF receptor associated factor 3"))
                                    ("orig" "TBL1" "UP:Q9BQ87"
                                     ("TBL1" "ONT:GENE" :ID "HGNC:18502" :NAME
                                      "transducin beta like 1, Y-linked"))
                                    ("orig" "RhoE" "UP:P61587"
                                     ("RhoE" "ONT:GENE" :ID "HGNC:671" :NAME
                                      "Rho family GTPase 3"))
                                    ("orig" "RPE" "UP:Q96AT9"
                                     ("RPE" "ONT:GENE-PROTEIN" :ID "HGNC:10293"
                                      :NAME
                                      "ribulose-5-phosphate-3-epimerase"))
                                    ("orig" "RAD51" "UP:Q06609"
                                     ("RAD51" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9817" :NAME "RAD51 recombinase"))
                                    ("downcase" "pgp" "UP:A6NDG6"
                                     ("Pgp" "ONT:GENE-PROTEIN" :ID "HGNC:8909"
                                      :NAME "phosphoglycolate phosphatase"))
                                    ("orig" "PML" "UP:P29590"
                                     ("PML" "ONT:GENE-PROTEIN" :ID "HGNC:9113"
                                      :NAME "promyelocytic leukemia"))
                                    ("downcase" "nup153" "UP:P49790"
                                     ("Nup153" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8062" :NAME "nucleoporin 153"))
                                    ("upcase" "MBP" "UP:P02686"
                                     ("Mbp" "ONT:GENE-PROTEIN" :ID "HGNC:6925"
                                      :NAME "myelin basic protein"))
                                    ("orig" "MELK" "UP:Q14680"
                                     ("MELK" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16870" :NAME
                                      "maternal embryonic leucine zipper kinase"))
                                    ("orig" "LRP6" "UP:O75581"
                                     ("LRP6" "ONT:GENE-PROTEIN" :ID "HGNC:6698"
                                      :NAME "LDL receptor related protein 6"))
                                    ("orig" "LRP5" "UP:O75197"
                                     ("LRP5" "ONT:GENE-PROTEIN" :ID "HGNC:6697"
                                      :NAME "LDL receptor related protein 5"))
                                    ("orig" "LEF1" "UP:Q9UJU2"
                                     ("LEF1" "ONT:GENE-PROTEIN" :ID "HGNC:6551"
                                      :NAME
                                      "lymphoid enhancer binding factor 1"))
                                    ("hyphens" "LC3" "UP:Q9H492"
                                     ("LC-3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104677" :NAME
                                      "microtubule-associated proteins 1A-1B light chain 3"))
                                    ("orig" "IRF7" "UP:Q92985"
                                     ("IRF7" "ONT:GENE-PROTEIN" :ID "HGNC:6122"
                                      :NAME "interferon regulatory factor 7"))
                                    ("orig" "IRF3" "UP:Q14653"
                                     ("IRF3" "ONT:GENE-PROTEIN" :ID "HGNC:6118"
                                      :NAME "interferon regulatory factor 3"))
                                    ("orig" "HLA" "NCIT:C121977"
                                     ("HLA" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20705" :NAME
                                      "MHC class-II protein"))
                                    ("orig" "HK2" "NCIT:C51050"
                                     ("HK2" "ONT:GENE-PROTEIN" :ID "HGNC:4923"
                                      :NAME "hexokinase 2"))
                                    ("orig" "HK-2" "UP:P52789"
                                     ("HK-2" "ONT:GENE-PROTEIN" :ID "HGNC:4923"
                                      :NAME "hexokinase 2"))
                                    ("orig" "RBM10" "UP:P98175"
                                     ("RBM10" "ONT:GENE" :ID "HGNC:9896" :NAME
                                      "RNA binding motif protein 10"))
                                    ("orig" "PDK3" "UP:Q15120"
                                     ("PDK3" "ONT:GENE" :ID "HGNC:8811" :NAME
                                      "pyruvate dehydrogenase kinase 3"))
                                    ("hyphens-dc" "nox4" "NOX4"
                                     ("Nox-4" "ONT:GENE" :ID "HGNC:7891" :NAME
                                      "NADPH oxidase 4"))
                                    ("orig" "MAZ" "UP:P56270"
                                     ("MAZ" "ONT:GENE" :ID "HGNC:6914" :NAME
                                      "MYC associated zinc finger protein"))
                                    ("downcase" "id4" "UP:P47928"
                                     ("Id4" "ONT:GENE" :ID "HGNC:5363" :NAME
                                      "inhibitor of DNA binding 4, HLH protein"))
                                    ("orig" "smad3" "UP:P84022"
                                     ("smad3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6769" :NAME
                                      "SMAD family member 3"))
                                    ("orig" "nischarin" "UP:Q9Y2I1"
                                     ("nischarin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:18006" :NAME "nischarin"))
                                    ("orig" "ephrinA5" "UP:P52803"
                                     ("ephrinA5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3225" :NAME "ephrin A5"))
                                    ("orig" "WRNIP1" "UP:Q96S55"
                                     ("WRNIP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20876" :NAME
                                      "Werner helicase interacting protein 1"))
                                    ("upcase" "SKP2" "UP:Q13309"
                                     ("Skp2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10901" :NAME
                                      "S-phase kinase-associated protein 2, E3 ubiquitin protein ligase"))
                                    ("orig" "SRF" "UP:P11831"
                                     ("SRF" "ONT:GENE-PROTEIN" :ID "HGNC:11291"
                                      :NAME "serum response factor"))
                                    ("orig" "SMYD3" "UP:Q9H7B4"
                                     ("SMYD3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:15513" :NAME
                                      "SET and MYND domain containing 3"))
                                    ("orig" "SIK1" "UP:P57059"
                                     ("SIK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11142" :NAME
                                      "salt inducible kinase 1"))
                                    ("orig" "RUNX1" "UP:Q01196"
                                     ("RUNX1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10471" :NAME
                                      "runt related transcription factor 1"))
                                    ("orig" "RPS27" "UP:P42677"
                                     ("RPS27" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10416" :NAME
                                      "ribosomal protein S27"))
                                    ("downcase" "pdgfrb" "UP:P09619"
                                     ("Pdgfrb" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8804" :NAME
                                      "platelet derived growth factor receptor beta"))
                                    ("downcase" "pak5" "UP:Q9P286"
                                     ("Pak5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:15916" :NAME
                                      "p21 (RAC1) activated kinase 5"))
                                    ("orig" "PAR1A" "UP:P27448"
                                     ("PAR1A" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6897" :NAME
                                      "microtubule affinity regulating kinase 3"))
                                    ("orig" "NDRG2" "UP:Q9UN36"
                                     ("NDRG2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14460" :NAME
                                      "NDRG family member 2"))
                                    ("downcase" "myc" "UP:P01106"
                                     ("Myc" "ONT:GENE-PROTEIN" :ID "HGNC:7553"
                                      :NAME
                                      "v-myc avian myelocytomatosis viral oncogene homolog"))
                                    ("orig" "MMP10" "UP:P09238"
                                     ("MMP10" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7156" :NAME
                                      "matrix metallopeptidase 10"))
                                    ("orig" "MED9" "UP:Q9NWA0"
                                     ("MED9" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:25487" :NAME
                                      "mediator complex subunit 9"))
                                    ("orig" "MED23" "UP:Q9ULK4"
                                     ("MED23" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2372" :NAME
                                      "mediator complex subunit 23"))
                                    ("orig" "MED14" "UP:O60244"
                                     ("MED14" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2370" :NAME
                                      "mediator complex subunit 14"))
                                    ("orig" "MED13" "UP:Q9UHV7"
                                     ("MED13" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:22474" :NAME
                                      "mediator complex subunit 13"))
                                    ("orig" "MED10" "UP:Q9BTT4"
                                     ("MED10" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:28760" :NAME
                                      "mediator complex subunit 10"))
                                    ("orig" "MED1" "UP:Q15648"
                                     ("MED1" "ONT:GENE-PROTEIN" :ID "HGNC:9234"
                                      :NAME "mediator complex subunit 1"))
                                    ("orig" "LZTFL1" "UP:Q9NQ48"
                                     ("LZTFL1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6741" :NAME
                                      "leucine zipper transcription factor like 1"))
                                    ("orig" "IGFBP1" "UP:P08833"
                                     ("IGFBP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5469" :NAME
                                      "insulin like growth factor binding protein 1"))
                                    ("orig" "IER3" "UP:P46695"
                                     ("IER3" "ONT:GENE-PROTEIN" :ID "HGNC:5392"
                                      :NAME "immediate early response 3"))
                                    ("orig" "HDAC8" "UP:Q9BY41"
                                     ("HDAC8" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:13315" :NAME
                                      "histone deacetylase 8"))
                                    ("orig" "HDAC3" "UP:O15379"
                                     ("HDAC3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4854" :NAME
                                      "histone deacetylase 3"))
                                    ("orig" "HDAC2" "UP:Q92769"
                                     ("HDAC2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4853" :NAME
                                      "histone deacetylase 2"))
                                    ("orig" "GPI" "UP:P06744"
                                     ("GPI" "ONT:GENE-PROTEIN" :ID "HGNC:4458"
                                      :NAME "glucose-6-phosphate isomerase"))
                                    ("orig" "FOXO1" "UP:Q12778"
                                     ("FOXO1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3819" :NAME "forkhead box O1"))
                                    ("orig" "ERK7" "UP:Q8TD08"
                                     ("ERK7" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:24667" :NAME
                                      "mitogen-activated protein kinase 15"))
                                    ("orig" "DDIT3" "NCIT:C92540"
                                     ("DDIT3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2726" :NAME
                                      "DNA damage inducible transcript 3"))
                                    ("downcase" "crk" "UP:P46108"
                                     ("Crk" "ONT:GENE-PROTEIN" :ID "HGNC:2362"
                                      :NAME
                                      "CRK proto-oncogene, adaptor protein"))
                                    ("orig" "CYP7B1" "UP:O75881"
                                     ("CYP7B1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2652" :NAME
                                      "cytochrome P450 family 7 subfamily B member 1"))
                                    ("orig" "CNI" "UP:Q9BXI3"
                                     ("CNI" "ONT:GENE-PROTEIN" :ID "HGNC:17819"
                                      :NAME "5'-nucleotidase, cytosolic IA"))
                                    ("orig" "CEBPE" "NCIT:C52527"
                                     ("CEBPE" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1836" :NAME
                                      "CCAAT/enhancer binding protein epsilon"))
                                    ("orig" "CD24" "UP:P25063"
                                     ("CD24" "ONT:GENE-PROTEIN" :ID "HGNC:1645"
                                      :NAME "CD24 molecule"))
                                    ("orig" "BCL10" "UP:O95999"
                                     ("BCL10" "ONT:GENE-PROTEIN" :ID "HGNC:989"
                                      :NAME "B-cell CLL/lymphoma 10"))
                                    ("orig" "AHR" "UP:P35869"
                                     ("AHR" "ONT:GENE-PROTEIN" :ID "HGNC:348"
                                      :NAME "aryl hydrocarbon receptor"))
                                    ("orig" "cSH2" "UP:P0DML3"
                                     ("cSH2" "ONT:GENE" :ID "HGNC:2441" :NAME
                                      "chorionic somatomammotropin hormone 2"))
                                    ("orig" "ZDHHC7" "UP:Q9NXF8"
                                     ("ZDHHC7" "ONT:GENE" :ID "HGNC:18459"
                                      :NAME
                                      "zinc finger DHHC-type containing 7"))
                                    ("downcase" "wwox" "UP:Q9NZC7"
                                     ("Wwox" "ONT:GENE" :ID "HGNC:12799" :NAME
                                      "WW domain containing oxidoreductase"))
                                    ("orig" "WDR3" "UP:Q9UNX4"
                                     ("WDR3" "ONT:GENE" :ID "HGNC:12755" :NAME
                                      "WD repeat domain 3"))
                                    ("orig" "UQCRC2" "UP:P22695"
                                     ("UQCRC2" "ONT:GENE" :ID "HGNC:12586"
                                      :NAME
                                      "ubiquinol-cytochrome c reductase core protein II"))
                                    ("orig" "UBXD8" "UP:Q96CS3"
                                     ("UBXD8" "ONT:GENE" :ID "HGNC:24666" :NAME
                                      "Fas associated factor family member 2"))
                                    ("orig" "TRUB2" "UP:O95900"
                                     ("TRUB2" "ONT:GENE" :ID "HGNC:17170" :NAME
                                      "TruB pseudouridine synthase family member 2"))
                                    ("orig" "TPTE" "UP:P56180"
                                     ("TPTE" "ONT:GENE" :ID "HGNC:12023" :NAME
                                      "transmembrane phosphatase with tensin homology"))
                                    ("orig" "TPIP" "UP:Q6XPS3"
                                     ("TPIP" "ONT:GENE" :ID "HGNC:17299" :NAME
                                      "transmembrane phosphoinositide 3-phosphatase and tensin homolog 2"))
                                    ("orig" "TMBIM1" "UP:Q969X1"
                                     ("TMBIM1" "ONT:GENE" :ID "HGNC:23410"
                                      :NAME
                                      "transmembrane BAX inhibitor motif containing 1"))
                                    ("orig" "TJAP1" "UP:Q5JTD0"
                                     ("TJAP1" "ONT:GENE" :ID "HGNC:17949" :NAME
                                      "tight junction associated protein 1"))
                                    ("orig" "TFF3" "UP:Q07654"
                                     ("TFF3" "ONT:GENE" :ID "HGNC:11757" :NAME
                                      "trefoil factor 3"))
                                    ("downcase" "stef" "UP:Q8IVF5"
                                     ("Stef" "ONT:GENE" :ID "HGNC:11806" :NAME
                                      "T-cell lymphoma invasion and metastasis 2"))
                                    ("downcase" "sirt-1" "UP:Q96EB6"
                                     ("Sirt-1" "ONT:GENE" :ID "HGNC:14929"
                                      :NAME "sirtuin 1"))
                                    ("orig" "SYNJ2" "UP:O15056"
                                     ("SYNJ2" "ONT:GENE" :ID "HGNC:11504" :NAME
                                      "synaptojanin 2"))
                                    ("orig" "SYNJ1" "UP:O43426"
                                     ("SYNJ1" "ONT:GENE" :ID "HGNC:11503" :NAME
                                      "synaptojanin 1"))
                                    ("orig" "STEAP1" "UP:Q9UHE8"
                                     ("STEAP1" "ONT:GENE" :ID "HGNC:11378"
                                      :NAME "STEAP family member 1"))
                                    ("orig" "SOSTDC1" "UP:Q6X4U4"
                                     ("SOSTDC1" "ONT:GENE" :ID "HGNC:21748"
                                      :NAME "sclerostin domain containing 1"))
                                    ("orig" "SLC20A1" "UP:Q8WUM9"
                                     ("SLC20A1" "ONT:GENE" :ID "HGNC:10946"
                                      :NAME
                                      "solute carrier family 20 member 1"))
                                    ("orig" "RhoGDI" "UP:P52565"
                                     ("RhoGDI" "ONT:GENE" :ID "HGNC:678" :NAME
                                      "Rho GDP dissociation inhibitor alpha"))
                                    ("orig" "RICTOR" "UP:Q6R327"
                                     ("RICTOR" "ONT:GENE" :ID "HGNC:28611"
                                      :NAME
                                      "RPTOR independent companion of MTOR complex 2"))
                                    ("orig" "POU2F3" "UP:Q9UKI9"
                                     ("POU2F3" "ONT:GENE" :ID "HGNC:19864"
                                      :NAME "POU class 2 homeobox 3"))
                                    ("orig" "PDLIM5" "UP:Q96HC4"
                                     ("PDLIM5" "ONT:GENE" :ID "HGNC:17468"
                                      :NAME "PDZ and LIM domain 5"))
                                    ("downcase" "nek2" "UP:P51955"
                                     ("Nek2" "ONT:GENE" :ID "HGNC:7745" :NAME
                                      "NIMA related kinase 2"))
                                    ("upcase" "NEDD4L" "UP:Q96PU5"
                                     ("Nedd4L" "ONT:GENE" :ID "HGNC:7728" :NAME
                                      "neural precursor cell expressed, developmentally down-regulated 4-like, E3 ubiquitin protein ligase"))
                                    ("orig" "NKRF" "UP:O15226"
                                     ("NKRF" "ONT:GENE" :ID "HGNC:19374" :NAME
                                      "NFKB repressing factor"))
                                    ("orig" "NISCH" "NCIT:C101382"
                                     ("NISCH" "ONT:GENE" :ID "HGNC:18006" :NAME
                                      "nischarin"))
                                    ("orig" "NHP2L1" "UP:P55769"
                                     ("NHP2L1" "ONT:GENE" :ID "HGNC:7819" :NAME
                                      "SNU13 homolog, small nuclear ribonucleoprotein (U4/U6.U5)"))
                                    ("orig" "NES" "UP:P48681"
                                     ("NES" "ONT:GENE" :ID "HGNC:7756" :NAME
                                      "nestin"))
                                    ("orig" "MEF2C" "UP:Q06413"
                                     ("MEF2C" "ONT:GENE" :ID "HGNC:6996" :NAME
                                      "myocyte enhancer factor 2C"))
                                    ("orig" "MED15" "UP:Q96RN5"
                                     ("MED15" "ONT:GENE" :ID "HGNC:14248" :NAME
                                      "mediator complex subunit 15"))
                                    ("downcase" "m-all" "UP:Q13021"
                                     ("M-all" "ONT:GENE" :ID "HGNC:6818" :NAME
                                      "mal, T-cell differentiation protein like"))
                                    ("orig" "KLHL24" "UP:Q6TFL4"
                                     ("KLHL24" "ONT:GENE" :ID "HGNC:25947"
                                      :NAME "kelch like family member 24"))
                                    ("orig" "KIAA0323" "UP:O15037"
                                     ("KIAA0323" "ONT:GENE" :ID "HGNC:20166"
                                      :NAME "KH and NYN domain containing"))
                                    ("orig" "HACE1" "UP:Q8IYU2"
                                     ("HACE1" "ONT:GENE" :ID "HGNC:21033" :NAME
                                      "HECT domain and ankyrin repeat containing E3 ubiquitin protein ligase 1"))
                                    ("orig" "FAM83B" "UP:Q5T0W9"
                                     ("FAM83B" "ONT:GENE" :ID "HGNC:21357"
                                      :NAME
                                      "family with sequence similarity 83 member B"))
                                    ("orig" "FAM83A" "UP:Q86UY5"
                                     ("FAM83A" "ONT:GENE" :ID "HGNC:28210"
                                      :NAME
                                      "family with sequence similarity 83 member A"))
                                    ("downcase" "elmo2" "UP:Q96JJ3"
                                     ("Elmo2" "ONT:GENE" :ID "HGNC:17233" :NAME
                                      "engulfment and cell motility 2"))
                                    ("orig" "ESPL1" "UP:Q14674"
                                     ("ESPL1" "ONT:GENE" :ID "HGNC:16856" :NAME
                                      "extra spindle pole bodies like 1, separase"))
                                    ("downcase" "cyr61" "UP:O00622"
                                     ("Cyr61" "ONT:GENE" :ID "HGNC:2654" :NAME
                                      "cysteine rich angiogenic inducer 61"))
                                    ("downcase" "clk2" "UP:P49760"
                                     ("Clk2" "ONT:GENE" :ID "HGNC:2069" :NAME
                                      "CDC like kinase 2"))
                                    ("orig" "CITED2" "UP:Q99967"
                                     ("CITED2" "ONT:GENE" :ID "HGNC:1987" :NAME
                                      "Cbp/p300 interacting transactivator with Glu/Asp rich carboxy-terminal domain 2"))
                                    ("orig" "CFP" "NCIT:C118198"
                                     ("CFP" "ONT:GENE" :ID "HGNC:8864" :NAME
                                      "complement factor properdin"))
                                    ("orig" "CDK8" "UP:P49336"
                                     ("CDK8" "ONT:GENE" :ID "HGNC:1779" :NAME
                                      "cyclin dependent kinase 8"))
                                    ("orig" "CCNG2" "UP:Q16589"
                                     ("CCNG2" "ONT:GENE" :ID "HGNC:1593" :NAME
                                      "cyclin G2"))
                                    ("downcase" "btk" "UP:Q06187"
                                     ("Btk" "ONT:GENE" :ID "HGNC:1133" :NAME
                                      "Bruton tyrosine kinase"))
                                    ("orig" "BRSK2" "UP:Q8IWQ3"
                                     ("BRSK2" "ONT:GENE" :ID "HGNC:11405" :NAME
                                      "BR serine/threonine kinase 2"))
                                    ("orig" "BRSK1" "UP:Q8TDC3"
                                     ("BRSK1" "ONT:GENE" :ID "HGNC:18994" :NAME
                                      "BR serine/threonine kinase 1"))
                                    ("orig" "ACK" "UP:Q07912"
                                     ("ACK" "ONT:GENE" :ID "HGNC:19297" :NAME
                                      "tyrosine kinase non receptor 2"))
                                    ("orig" "ASOs" "CVCL:R967"
                                     ("ASOs" "ONT:PROTEIN" :ID "UP:P24792"
                                      :NAME "L-ascorbate oxidase"))
                                    ("orig" "progestins" "CHEBI:59826"
                                     ("progestins"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C776" :NAME
                                      "therapeutic progestin"))
                                    ("downcase" "ali" "UP:Q9V3E7"
                                     ("ALI"
                                      "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                      :ID "EFO:0004610" :NAME
                                      "acute lung injury"))
                                    ("orig" "pten" "UP:P60484"
                                     ("pten" "ONT:GENE-PROTEIN" :ID "HGNC:9588"
                                      :NAME "phosphatase and tensin homolog"))
                                    ("orig" "p50" "NCIT:C51382"
                                     ("p50" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C94298" :NAME "NFKB1"))
                                    ("orig" "p42" "UP:Q8IZL9"
                                     ("p42" "ONT:GENE-PROTEIN" :ID "HGNC:21420"
                                      :NAME "cyclin dependent kinase 20"))
                                    ("orig" "p300" "NCIT:C17804"
                                     ("p300" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52127" :NAME "EP300"))
                                    ("orig" "ephrinA1" "UP:P20827"
                                     ("ephrinA1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3221" :NAME "ephrin A1"))
                                    ("orig" "bdnf" "UP:P23560"
                                     ("bdnf" "ONT:GENE-PROTEIN" :ID "HGNC:1033"
                                      :NAME
                                      "brain derived neurotrophic factor"))
                                    ("orig" "amphiregulin" "UP:P15514"
                                     ("amphiregulin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:651" :NAME "amphiregulin"))
                                    ("orig" "WEE1" "UP:P30291"
                                     ("WEE1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12761" :NAME
                                      "WEE1 G2 checkpoint kinase"))
                                    ("orig" "TRAF2" "UP:Q12933"
                                     ("TRAF2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12032" :NAME
                                      "TNF receptor associated factor 2"))
                                    ("orig" "TBK1" "UP:Q9UHD2"
                                     ("TBK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11584" :NAME
                                      "TANK binding kinase 1"))
                                    ("orig" "STS" "UP:P08842"
                                     ("STS" "ONT:GENE-PROTEIN" :ID "HGNC:11425"
                                      :NAME
                                      "steroid sulfatase (microsomal), isozyme S"))
                                    ("orig" "STK11" "UP:Q15831"
                                     ("STK11" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11389" :NAME
                                      "serine/threonine kinase 11"))
                                    ("hyphens" "STAT3" "UP:P40763"
                                     ("STAT-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11364" :NAME
                                      "signal transducer and activator of transcription 3"))
                                    ("upcase" "RHOA" "UP:P61586"
                                     ("RhoA" "ONT:GENE-PROTEIN" :ID "HGNC:667"
                                      :NAME "ras homolog family member A"))
                                    ("orig" "ROS1" "UP:P08922"
                                     ("ROS1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10261" :NAME
                                      "ROS proto-oncogene 1, receptor tyrosine kinase"))
                                    ("orig" "RARB" "UP:P10826"
                                     ("RARB" "ONT:GENE-PROTEIN" :ID "HGNC:9865"
                                      :NAME "retinoic acid receptor beta"))
                                    ("orig" "PRL-3" "UP:O75365"
                                     ("PRL-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9636" :NAME
                                      "protein tyrosine phosphatase type IVA, member 3"))
                                    ("hyphens-dc" "pgp" "UP:A6NDG6"
                                     ("P-gp" "ONT:GENE-PROTEIN" :ID "HGNC:8909"
                                      :NAME "phosphoglycolate phosphatase"))
                                    ("orig" "OSMR" "UP:Q99650"
                                     ("OSMR" "ONT:GENE-PROTEIN" :ID "HGNC:8507"
                                      :NAME "oncostatin M receptor"))
                                    ("orig" "NQO1" "UP:P15559"
                                     ("NQO1" "ONT:GENE-PROTEIN" :ID "HGNC:2874"
                                      :NAME "NAD(P)H quinone dehydrogenase 1"))
                                    ("orig" "NLK" "UP:Q9UBE8"
                                     ("NLK" "ONT:GENE-PROTEIN" :ID "HGNC:29858"
                                      :NAME "nemo like kinase"))
                                    ("orig" "NDRG1" "NCIT:C52086"
                                     ("NDRG1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7679" :NAME
                                      "N-myc downstream regulated 1"))
                                    ("downcase" "max" "UP:P61244"
                                     ("Max" "ONT:GENE-PROTEIN" :ID "HGNC:6913"
                                      :NAME "MYC associated factor X"))
                                    ("orig" "MYD88" "UP:Q99836"
                                     ("MYD88" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7562" :NAME
                                      "myeloid differentiation primary response 88"))
                                    ("orig" "MUC5B" "UP:Q9HC84"
                                     ("MUC5B" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7516" :NAME
                                      "mucin 5B, oligomeric mucus/gel-forming"))
                                    ("orig" "MUC5AC" "NCIT:C90333"
                                     ("MUC5AC" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7515" :NAME
                                      "mucin 5AC, oligomeric mucus/gel-forming"))
                                    ("orig" "MMP9" "UP:P14780"
                                     ("MMP9" "ONT:GENE-PROTEIN" :ID "HGNC:7176"
                                      :NAME "matrix metallopeptidase 9"))
                                    ("orig" "MMP2" "UP:P08253"
                                     ("MMP2" "ONT:GENE-PROTEIN" :ID "HGNC:7166"
                                      :NAME "matrix metallopeptidase 2"))
                                    ("orig" "MMP14" "UP:P50281"
                                     ("MMP14" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7160" :NAME
                                      "matrix metallopeptidase 14"))
                                    ("orig" "MMP13" "UP:P45452"
                                     ("MMP13" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7159" :NAME
                                      "matrix metallopeptidase 13"))
                                    ("hyphens" "MMP10" "UP:P09238"
                                     ("MMP-10" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7156" :NAME
                                      "matrix metallopeptidase 10"))
                                    ("orig" "MCL1" "UP:Q07820"
                                     ("MCL1" "ONT:GENE-PROTEIN" :ID "HGNC:6943"
                                      :NAME "BCL2 family apoptosis regulator"))
                                    ("orig" "MALT1" "UP:Q9UDY8"
                                     ("MALT1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6819" :NAME "MALT1 paracaspase"))
                                    ("orig" "LOX" "UP:P28300"
                                     ("LOX" "ONT:GENE-PROTEIN" :ID "HGNC:6664"
                                      :NAME "lysyl oxidase"))
                                    ("downcase" "kras" "UP:P01116"
                                     ("Kras" "ONT:GENE-PROTEIN" :ID "HGNC:6407"
                                      :NAME "KRAS proto-oncogene, GTPase"))
                                    ("orig" "ITCH" "UP:Q96J02"
                                     ("ITCH" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:13890" :NAME
                                      "itchy E3 ubiquitin protein ligase"))
                                    ("orig" "IGFBP5" "UP:P24593"
                                     ("IGFBP5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5474" :NAME
                                      "insulin like growth factor binding protein 5"))
                                    ("orig" "IGF-1R" "UP:P08069"
                                     ("IGF-1R" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5465" :NAME
                                      "insulin like growth factor 1 receptor"))
                                    ("orig" "ICAM1" "UP:P05362"
                                     ("ICAM1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5344" :NAME
                                      "intercellular adhesion molecule 1"))
                                    ("upcase" "HGF" "NCIT:C51506"
                                     ("Hgf" "ONT:GENE-PROTEIN" :ID "HGNC:4893"
                                      :NAME "hepatocyte growth factor"))
                                    ("orig" "HDAC1" "UP:Q13547"
                                     ("HDAC1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4852" :NAME
                                      "histone deacetylase 1"))
                                    ("downcase" "gata3" "UP:P23771"
                                     ("Gata3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4172" :NAME
                                      "GATA binding protein 3"))
                                    ("orig" "GAS6" "UP:Q14393"
                                     ("GAS6" "ONT:GENE-PROTEIN" :ID "HGNC:4168"
                                      :NAME "growth arrest specific 6"))
                                    ("orig" "FOXA2" "UP:Q9Y261"
                                     ("FOXA2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5022" :NAME "forkhead box A2"))
                                    ("orig" "FLT3" "UP:P36888"
                                     ("FLT3" "ONT:GENE-PROTEIN" :ID "HGNC:3765"
                                      :NAME "fms related tyrosine kinase 3"))
                                    ("orig" "FADD" "UP:Q13158"
                                     ("FADD" "ONT:GENE-PROTEIN" :ID "HGNC:3573"
                                      :NAME "Fas associated via death domain"))
                                    ("upcase" "EGR1" "NCIT:C99600"
                                     ("Egr1" "ONT:GENE-PROTEIN" :ID "HGNC:3238"
                                      :NAME "early growth response 1"))
                                    ("upcase" "EGF" "UP:P01133"
                                     ("Egf" "ONT:GENE-PROTEIN" :ID "HGNC:3229"
                                      :NAME "epidermal growth factor"))
                                    ("orig" "EZH2" "UP:Q15910"
                                     ("EZH2" "ONT:GENE-PROTEIN" :ID "HGNC:3527"
                                      :NAME
                                      "enhancer of zeste 2 polycomb repressive complex 2 subunit"))
                                    ("orig" "DUSP1" "UP:P28562"
                                     ("DUSP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3064" :NAME
                                      "dual specificity phosphatase 1"))
                                    ("downcase" "cdk3" "UP:Q00526"
                                     ("Cdk3" "ONT:GENE-PROTEIN" :ID "HGNC:1772"
                                      :NAME "cyclin dependent kinase 3"))
                                    ("orig" "CXCL3" "UP:P19876"
                                     ("CXCL3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4604" :NAME
                                      "C-X-C motif chemokine ligand 3"))
                                    ("orig" "CXCL2" "NCIT:C49764"
                                     ("CXCL2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4603" :NAME
                                      "C-X-C motif chemokine ligand 2"))
                                    ("orig" "CLU" "NCIT:C84430"
                                     ("CLU" "ONT:GENE-PROTEIN" :ID "HGNC:2095"
                                      :NAME "clusterin"))
                                    ("orig" "CDKN2A" "Ink4a"
                                     ("CDKN2A" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1787" :NAME
                                      "cyclin dependent kinase inhibitor 2A"))
                                    ("orig" "CD40" "UP:P25942"
                                     ("CD40" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11919" :NAME "CD40 molecule"))
                                    ("orig" "CCL5" "UP:P13501"
                                     ("CCL5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10632" :NAME
                                      "C-C motif chemokine ligand 5"))
                                    ("orig" "CCL2" "NCIT:C49745"
                                     ("CCL2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10618" :NAME
                                      "C-C motif chemokine ligand 2"))
                                    ("orig" "BRIP1" "NCIT:C63527"
                                     ("BRIP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20473" :NAME
                                      "BRCA1 interacting protein C-terminal helicase 1"))
                                    ("orig" "BRCA2" "UP:P51587"
                                     ("BRCA2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1101" :NAME
                                      "BRCA2, DNA repair associated"))
                                    ("orig" "BRCA1" "NCIT:C52060"
                                     ("BRCA1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1100" :NAME
                                      "BRCA1, DNA repair associated"))
                                    ("orig" "ATF2" "UP:P15336"
                                     ("ATF2" "ONT:GENE-PROTEIN" :ID "HGNC:784"
                                      :NAME
                                      "activating transcription factor 2"))
                                    ("orig" "ALK" "UP:Q9UM73"
                                     ("ALK" "ONT:GENE-PROTEIN" :ID "HGNC:427"
                                      :NAME
                                      "anaplastic lymphoma receptor tyrosine kinase"))
                                    ("hyphens" "4EBP1" "UP:Q13541"
                                     ("4EBP-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q0P5A7" :NAME
                                      "Eukaryotic translation initiation factor 4E-binding protein 1"))
                                    ("hyphens" "4EBP1" "UP:Q13541"
                                     ("4E-BP-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q0P5A7" :NAME
                                      "Eukaryotic translation initiation factor 4E-binding protein 1"))
                                    ("orig" "ZEB1" "NCIT:C105606"
                                     ("ZEB1" "ONT:GENE" :ID "HGNC:11642" :NAME
                                      "zinc finger E-box binding homeobox 1"))
                                    ("orig" "WNK1" "UP:Q9H4A3"
                                     ("WNK1" "ONT:GENE" :ID "HGNC:14540" :NAME
                                      "WNK lysine deficient protein kinase 1"))
                                    ("orig" "VIII" "UP:P10176"
                                     ("VIII" "ONT:GENE" :ID "HGNC:2294" :NAME
                                      "cytochrome c oxidase subunit 8A"))
                                    ("orig" "UbcH5a" "UP:P51668"
                                     ("UbcH5a" "ONT:GENE" :ID "HGNC:12474"
                                      :NAME
                                      "ubiquitin conjugating enzyme E2 D1"))
                                    ("downcase" "sac1" "UP:Q9NTJ5"
                                     ("Sac1" "ONT:GENE" :ID "HGNC:17059" :NAME
                                      "SAC1 suppressor of actin mutations 1-like (yeast)"))
                                    ("orig" "SDS" "UP:P20132"
                                     ("SDS" "ONT:GENE" :ID "HGNC:10691" :NAME
                                      "serine dehydratase"))
                                    ("orig" "RPS6" "UP:P62753"
                                     ("RPS6" "ONT:GENE" :ID "HGNC:10429" :NAME
                                      "ribosomal protein S6"))
                                    ("orig" "MYPT1" "UP:O14974"
                                     ("MYPT1" "ONT:GENE" :ID "HGNC:7618" :NAME
                                      "protein phosphatase 1 regulatory subunit 12A"))
                                    ("orig" "MRE11" "UP:P49959"
                                     ("MRE11" "ONT:GENE" :ID "NCIT:C98168"
                                      :NAME "MRE11A"))
                                    ("downcase" "klf5" "UP:Q13887"
                                     ("Klf5" "ONT:GENE" :ID "HGNC:6349" :NAME
                                      "Kruppel like factor 5"))
                                    ("downcase" "gata4" "UP:P43694"
                                     ("Gata4" "ONT:GENE" :ID "HGNC:4173" :NAME
                                      "GATA binding protein 4"))
                                    ("orig" "FBS" "UP:Q9HAH7"
                                     ("FBS" "ONT:GENE" :ID "HGNC:20442" :NAME
                                      "fibrosin"))
                                    ("orig" "EED" "UP:O75530"
                                     ("EED" "ONT:GENE" :ID "HGNC:3188" :NAME
                                      "embryonic ectoderm development"))
                                    ("orig" "EEA1" "UP:Q15075"
                                     ("EEA1" "ONT:GENE" :ID "HGNC:3185" :NAME
                                      "early endosome antigen 1"))
                                    ("orig" "CTGF" "NCIT:C62458"
                                     ("CTGF" "ONT:GENE" :ID "HGNC:2500" :NAME
                                      "connective tissue growth factor"))
                                    ("orig" "GFP" "Uniprot:P42212"
                                     ("GFP" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF01353.20" :NAME "GFP"))
                                    ("hyphens" "wortmannin" "UP:Q13535"
                                     ("wortman-nin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C1277" :NAME "wortmannin"))
                                    ("orig" "rosiglitazone" "NCIT:C2583"
                                     ("rosiglitazone"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C089730" :NAME "rosiglitazone"))
                                    ("orig" "heregulin" "UP:Q02297"
                                     ("heregulin" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "NCIT:C1426" :NAME
                                      "recombinant heregulin"))
                                    ("orig" "cycloheximide" "UP:P10109"
                                     ("cycloheximide"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "CHEBI:27641" :NAME "cycloheximide"))
                                    ("hyphens" "antioxidant" "UP:P30044"
                                     ("anti-oxidant"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C275" :NAME "antioxidant"))
                                    ("hyphens" "antimitotics" "CHEBI:64911"
                                     ("anti-mitotics"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C273" :NAME "antimitotic agent"))
                                    ("orig" "anandamide" "CHEBI:2700"
                                     ("anandamide"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C078814" :NAME "anandamide"))
                                    ("hyphens" "SP600125" "UP:P33981"
                                     ("SP-600125" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "MESH:C432165" :NAME
                                      "anthra(1,9-cd)pyrazol-6(2H)-one"))
                                    ("downcase" "pma" "UP:Q13794"
                                     ("PMA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C866" :NAME
                                      "tetradecanoylphorbol acetate"))
                                    ("hyphens-dc" "np40" "CHEBI:63016"
                                     ("NP-40" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C010615" :NAME "Nonidet P-40"))
                                    ("hyphens" "MG132" "UP:Q9NXV6"
                                     ("MG-132" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                      :ID "CHEBI:75142" :NAME
                                      "N-benzyloxycarbonyl-L-leucyl-L-leucyl-L-leucinal"))
                                    ("orig" "ACTH" "NCIT:C2282"
                                     ("ACTH" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C212" :NAME
                                      "therapeutic corticotropin"))
                                    ("orig" "phosphoinositide" "UP:Q6ZUJ8"
                                     ("phosphoinositide" "ONT:MOLECULE" :ID
                                      "CHEBI:18179" :NAME "phosphoinositide"))
                                    ("hyphens" "phosphoinositide" "UP:Q6ZUJ8"
                                     ("phospho-inositide" "ONT:MOLECULE" :ID
                                      "CHEBI:18179" :NAME "phosphoinositide"))
                                    ("hyphens" "phosphatidylinositol"
                                     "UP:Q9W1M7"
                                     ("phosphatidyl-inositol" "ONT:MOLECULE"
                                      :ID "CHEBI:28874" :NAME
                                      "phosphatidylinositol"))
                                    ("orig" "nicotinamide" "UP:P43490"
                                     ("nicotinamide" "ONT:MOLECULE" :ID
                                      "CHEBI:17154" :NAME "nicotinamide"))
                                    ("orig" "glycerol" "UP:C0RM12"
                                     ("glycerol" "ONT:MOLECULE" :ID
                                      "CHEBI:17754" :NAME "glycerol"))
                                    ("orig" "aspartate" "PR:000022172"
                                     ("aspartate" "ONT:MOLECULE" :ID
                                      "CHEBI:132943" :NAME "aspartate"))
                                    ("hyphens-dc" "phosphatidylinositol"
                                     "UP:Q9W1M7"
                                     ("Phosphatidy-linositol" "ONT:MOLECULE"
                                      :ID "CHEBI:28874" :NAME
                                      "phosphatidylinositol"))
                                    ("orig" "malonyl-CoA" "UP:O95822"
                                     ("malonyl-CoA" "ONT:CHEMICAL" :ID
                                      "CHEBI:15531" :NAME "malonyl-CoA"))
                                    ("orig" "estradiol" "UP:P14061"
                                     ("estradiol" "ONT:CHEMICAL" :ID
                                      "CHEBI:23965" :NAME "estradiol"))
                                    ("hyphens" "endocrine" "UP:Q5W5W9"
                                     ("en-docrine" "ONT:CHEMICAL" :ID
                                      "CHEBI:24621" :NAME "hormone"))
                                    ("orig" "androgen" "UP:Q13772"
                                     ("androgen" "ONT:CHEMICAL" :ID
                                      "CHEBI:50113" :NAME "androgen"))
                                    ("hyphens" "androgen" "UP:Q13772"
                                     ("andro-gen" "ONT:CHEMICAL" :ID
                                      "CHEBI:50113" :NAME "androgen"))
                                    ("orig" "acetyl-CoA" "UP:Q9BWD1"
                                     ("acetyl-CoA" "ONT:CHEMICAL" :ID
                                      "CHEBI:15351" :NAME "acetyl-CoA"))
                                    ("downcase" "tcdd" "UP:Q7Z3E1"
                                     ("TCDD" "ONT:CHEMICAL" :ID "NCIT:C864"
                                      :NAME "tetrachlorodibenzodioxin"))
                                    ("downcase" "hox" "UP:P28358"
                                     ("HOX" "ONT:CHEMICAL" :ID "CHEBI:46904"
                                      :NAME "oxalate(1-)"))
                                    ("upcase" "FLK-1" "UP:P35968"
                                     ("flk-1" "ONT:CELL-LINE" :ID "CVCL:M788"
                                      :NAME "FLK-1"))
                                    ("upcase" "AP-2" "UP:P05549"
                                     ("aP-2" "ONT:CELL-LINE" :ID "CVCL:W419"
                                      :NAME "AP2"))
                                    ("hyphens" "U87MG" "UP:Q8N9N8"
                                     ("U87-MG" "ONT:CELL-LINE" :ID "CVCL:0022"
                                      :NAME "U-87MG ATCC"))
                                    ("hyphens" "U2OS" "CVCL:0042"
                                     ("U2-OS" "ONT:CELL-LINE" :ID "EFO:0002869"
                                      :NAME "U2OS"))
                                    ("hyphens" "U87MG" "UP:Q8N9N8"
                                     ("U-87MG" "ONT:CELL-LINE" :ID "CVCL:0022"
                                      :NAME "U-87MG ATCC"))
                                    ("orig" "TLR3" "UP:O15455"
                                     ("TLR3" "ONT:CELL-LINE" :ID "CVCL:5601"
                                      :NAME "TLR3"))
                                    ("downcase" "th2" "UP:Q9Y5Y4"
                                     ("TH2" "ONT:CELL-LINE" :ID "EFO:0002804"
                                      :NAME "TH-2"))
                                    ("downcase" "sp1" "UP:P08047"
                                     ("Sp1" "ONT:CELL-LINE" :ID "CVCL:AZ65"
                                      :NAME "SP1"))
                                    ("hyphens-dc" "sp1" "UP:P08047"
                                     ("Sp-1" "ONT:CELL-LINE" :ID "CVCL:R987"
                                      :NAME "SP-1"))
                                    ("orig" "SW480" "UP:O14763"
                                     ("SW480" "ONT:CELL-LINE" :ID "EFO:0002083"
                                      :NAME "SW480"))
                                    ("orig" "RERF-LC-MS" "CVCL:1655"
                                     ("RERF-LC-MS" "ONT:CELL-LINE" :ID
                                      "EFO:0002852" :NAME "RERF-LC-MS"))
                                    ("orig" "OVCAR-3" "CVCL:0465"
                                     ("OVCAR-3" "ONT:CELL-LINE" :ID
                                      "NCIT:C117205" :NAME "OVCAR-3"))
                                    ("orig" "OCI-AML3" "CVCL:1844"
                                     ("OCI-AML3" "ONT:CELL-LINE" :ID
                                      "EFO:0006289" :NAME "OCI-AML3"))
                                    ("orig" "MRC5" "EFO:0002835"
                                     ("MRC5" "ONT:CELL-LINE" :ID "CVCL:0440"
                                      :NAME "MRC-5"))
                                    ("orig" "MDA-MB-453" "CVCL:0418"
                                     ("MDA-MB-453" "ONT:CELL-LINE" :ID
                                      "EFO:0001215" :NAME "MDAMB453"))
                                    ("orig" "MDA-MB-361" "CVCL:0620"
                                     ("MDA-MB-361" "ONT:CELL-LINE" :ID
                                      "EFO:0001211" :NAME "MDAMB361"))
                                    ("orig" "MDA-MB-231" "CVCL:0062"
                                     ("MDA-MB-231" "ONT:CELL-LINE" :ID
                                      "EFO:0001209" :NAME "MDAMB231"))
                                    ("hyphens-dc" "hep2" "EFO:0006438"
                                     ("Hep-2" "ONT:CELL-LINE" :ID "CVCL:1906"
                                      :NAME "HEp-2"))
                                    ("orig" "HEK" "UP:P29320"
                                     ("HEK" "ONT:CELL-LINE" :ID "CVCL:M624"
                                      :NAME "HEK"))
                                    ("orig" "ES2" "CVCL:AX39"
                                     ("ES2" "ONT:CELL-LINE" :ID "CVCL:3509"
                                      :NAME "ES-2"))
                                    ("downcase" "du145" "UP:P25490"
                                     ("DU145" "ONT:CELL-LINE" :ID "CVCL:0105"
                                      :NAME "DU145"))
                                    ("orig" "DT40" "CVCL:0249"
                                     ("DT40" "ONT:CELL-LINE" :ID "EFO:0006274"
                                      :NAME "DT40"))
                                    ("downcase" "t-cell" "UP:P09564"
                                     ("T-cell" "ONT:CELL" :ID "BTO:0000782"
                                      :NAME "T-lymphocyte"))
                                    ("hyphens" "chromatin" "UP:Q9SIW2"
                                     ("chro-matin" "ONT:MACROMOLECULAR-COMPLEX"
                                      :ID "GO:0000785" :NAME "chromatin"))
                                    ("orig" "nucleus" "GO:0005634"
                                     ("nucleus" "ONT:CELL-PART" :ID
                                      "UP:SL-0191" :NAME "Nucleus"))
                                    ("orig" "microsome" "microsome"
                                     ("microsome" "ONT:CELL-PART" :ID
                                      "UP:SL-0166" :NAME "Microsome"))
                                    ("orig" "membrane" "GO:0016020"
                                     ("membrane" "ONT:CELL-PART" :ID
                                      "UP:SL-0162" :NAME "Membrane"))
                                    ("hyphens" "membrane" "GO:0016020"
                                     ("mem-brane" "ONT:CELL-PART" :ID
                                      "UP:SL-0162" :NAME "Membrane"))
                                    ("orig" "cytosol" "GO:0005829"
                                     ("cytosol" "ONT:CELL-PART" :ID
                                      "UP:SL-0091" :NAME "Cytosol"))
                                    ("orig" "cytoplasm" "GO:0005737"
                                     ("cytoplasm" "ONT:CELL-PART" :ID
                                      "UP:SL-0086" :NAME "Cytoplasm"))
                                    ("orig" "cyclosome" "UP:Q13042"
                                     ("cyclosome" "ONT:CELL-PART" :ID
                                      "GO:0005680" :NAME
                                      "anaphase-promoting complex"))
                                    ("downcase" "nuclear" "GO:0005634"
                                     ("Nuclear" "ONT:CELL-PART" :ID
                                      "UP:SL-0191" :NAME "Nucleus"))
                                    ("hyphens-dc" "mrna" "UP:P33057"
                                     ("m-RNA" "ONT:MRNA" :ID "NCIT:C813" :NAME
                                      "messenger RNA"))))

(defparameter *NO-ID-REDEF* '(("orig" "skeletal muscle"
                               ("skeletal muscle" "tissuelist" :TYPE
                                "tissuetype" :ID "TS-0933"))
                              ("orig" "caveolin-3"
                               ("caveolin-3" "ONT:PROTEIN" :ID "UP:Q2KI43"
                                :NAME "Caveolin-3"))
                              ("orig" "adiponectin"
                               ("adiponectin" "ONT:GENE-PROTEIN" :ID
                                "UP:Q3Y5Z3" :NAME "Adiponectin"))
                              ("downcase" "ptc"
                               ("Ptc" "ONT:GENE-PROTEIN" :ID "UP:Q13635" :NAME
                                "Protein patched homolog 1"))
                              ("orig" "δ"
                               ("δ" "ONT:PROTEIN" :ID "NCIT:C106586" :NAME
                                "delta-like protein-1"))
                              ("orig" "hemolysin"
                               ("hemolysin" "ONT:GENE-PROTEIN" :ID "UP:Q06304"
                                :NAME "Aerolysin"))
                              ("hyphens-dc" "bar"
                               ("b-AR" "ONT:MOLECULAR-DOMAIN" :ID
                                "XFAM:PF03114.16" :NAME "BAR"))
                              ("hyphens" "rapamycin"
                               ("rapamy-cin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1212" :NAME "sirolimus"))
                              ("hyphens" "rapamycin"
                               ("rapa-mycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1212" :NAME "sirolimus"))
                              ("orig" "oxaliplatin"
                               ("oxaliplatin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1181" :NAME "oxaliplatin"))
                              ("downcase" "mabs"
                               ("mAbs" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C20401" :NAME "monoclonal antibody"))
                              ("hyphens" "immunosuppressive"
                               ("immuno-suppressive"
                                "ONT:PHARMACOLOGIC-SUBSTANCE" :ID "NCIT:C574"
                                :NAME "immunosuppressant"))
                              ("hyphens" "antiestrogen"
                               ("anti-estrogen" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                :ID "CHEBI:50751" :NAME "anti-estrogen"))
                              ("orig" "adriamycin"
                               ("adriamycin" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1326" :NAME
                                "doxorubicin hydrochloride"))
                              ("hyphens-dc" "plx4720"
                               ("PLX-4720" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "CHEBI:90295" :NAME "PLX-4720"))
                              ("hyphens-dc" "plx4032"
                               ("PLX-4032" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C64768" :NAME "PLX4032"))
                              ("hyphens-dc" "pd98059"
                               ("PD-98059" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1625" :NAME "PD-98059"))
                              ("hyphens-dc" "pd184352"
                               ("PD-184352" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C2670" :NAME "CI-1040"))
                              ("hyphens-dc" "pd173074"
                               ("PD-173074" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "CHEBI:63448" :NAME "PD173074"))
                              ("hyphens-dc" "pd098059"
                               ("PD-098059" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C093973" :NAME
                                "2-(2-amino-3-methoxyphenyl)-4H-1-benzopyran-4-one"))
                              ("hyphens-dc" "pd0332991"
                               ("PD-0332991" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C49176" :NAME "PD-0332991"))
                              ("hyphens-dc" "gsk2118436"
                               ("GSK-2118436" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C82386" :NAME
                                "BRAF inhibitor GSK2118436"))
                              ("hyphens-dc" "gdc0941"
                               ("GDC-0941" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "MESH:C532162" :NAME
                                "2-(1H-indazol-4-yl)-6-(4-methanesulfonylpiperazin-1-ylmethyl)-4-morpholin-4-ylthieno(3,2-d)pyrimidine"))
                              ("downcase" "bortezomib"
                               ("Bortezomib" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C1851" :NAME "bortezomib"))
                              ("hyphens" "BKM120"
                               ("BKM-120" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "CHEBI:71954" :NAME "BKM120"))
                              ("hyphens-dc" "azd6244"
                               ("AZD-6244" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "NCIT:C66939" :NAME "AZD6244"))
                              ("orig" "ATP"
                               ("ATP" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                "CHEBI:15422" :NAME "ATP"))
                              ("hyphens" "substrate"
                               ("sub-strate" "ONT:CHEMICAL" :ID "NCIT:C120264"
                                :NAME "substrate"))
                              ("hyphens" "phosphotyrosine"
                               ("phospho-tyrosine" "ONT:CHEMICAL" :ID
                                "CHEBI:74956" :NAME "O(4)-phosphotyrosine"))
                              ("orig" "mitogen"
                               ("mitogen" "ONT:CHEMICAL" :ID "CHEBI:52290"
                                :NAME "mitogen"))
                              ("orig" "ligand"
                               ("ligand" "ONT:CHEMICAL" :ID "CHEBI:52214" :NAME
                                "ligand"))
                              ("orig" "ionomycin"
                               ("ionomycin" "ONT:CHEMICAL" :ID "CHEBI:63954"
                                :NAME "ionomycin"))
                              ("orig" "inhibitor"
                               ("inhibitor" "ONT:CHEMICAL" :ID "CHEBI:35222"
                                :NAME "inhibitor"))
                              ("hyphens" "inhibitors"
                               ("inhibi-tors" "ONT:CHEMICAL" :ID "CHEBI:35222"
                                :NAME "inhibitor"))
                              ("hyphens" "inhibitor"
                               ("inhib-itor" "ONT:CHEMICAL" :ID "CHEBI:35222"
                                :NAME "inhibitor"))
                              ("hyphens" "inhibitor"
                               ("in-hibitor" "ONT:CHEMICAL" :ID "CHEBI:35222"
                                :NAME "inhibitor"))
                              ("orig" "effector"
                               ("effector" "ONT:CHEMICAL" :ID "CHEBI:35224"
                                :NAME "effector"))
                              ("orig" "dATP"
                               ("dATP" "ONT:CHEMICAL" :ID "CHEBI:16284" :NAME
                                "dATP"))
                              ("hyphens-dc" "u0126"
                               ("U-0126" "ONT:CHEMICAL" :ID "CHEBI:90693" :NAME
                                "U0126"))
                              ("hyphens-dc" "mk2206"
                               ("MK-2206" "ONT:CHEMICAL" :ID "CHEBI:67271"
                                :NAME "MK-2206"))
                              ("orig" "GTP"
                               ("GTP" "ONT:CHEMICAL" :ID "CHEBI:15996" :NAME
                                "GTP"))
                              ("orig" "GDP"
                               ("GDP" "ONT:CHEMICAL" :ID "CHEBI:17552" :NAME
                                "GDP"))
                              ("orig" "pro"
                               ("pro" "ONT:CELL-LINE" :ID "CVCL:N817" :NAME
                                "PRO"))
                              ("hyphens" "Saos2"
                               ("Saos-2" "ONT:CELL-LINE" :ID "CVCL:0548" :NAME
                                "SaOS-2"))
                              ("hyphens-dc" "skmel28"
                               ("SK-MEL-28" "ONT:CELL-LINE" :ID "EFO:0003081"
                                :NAME "SK-MEL-28"))
                              ("orig" "SH2"
                               ("SH2" "ONT:CELL-LINE" :ID "CVCL:M622" :NAME
                                "SH-2 [Human contaminated breast cancer]"))
                              ("hyphens" "PC12"
                               ("PC-12" "ONT:CELL-LINE" :ID "CVCL:0481" :NAME
                                "PC12"))
                              ("hyphens" "HeLas"
                               ("HeLa-s" "ONT:CELL-LINE" :ID "EFO:0001185"
                                :NAME "HeLa"))
                              ("orig" "HeLa"
                               ("HeLa" "ONT:CELL-LINE" :ID "EFO:0001185" :NAME
                                "HeLa"))
                              ("hyphens" "HKe3"
                               ("HKe-3" "ONT:CELL-LINE" :ID "CVCL:9796" :NAME
                                "HKe-3"))
                              ("hyphens" "HEK293T"
                               ("HEK293-T" "ONT:CELL-LINE" :ID "EFO:0001184"
                                :NAME "HEK293T"))
                              ("orig" "HEK293"
                               ("HEK293" "ONT:CELL-LINE" :ID "EFO:0001182"
                                :NAME "HEK293"))
                              ("hyphens" "HEK293T"
                               ("HEK-293T" "ONT:CELL-LINE" :ID "EFO:0001184"
                                :NAME "HEK293T"))
                              ("hyphens" "HEK293"
                               ("HEK-293" "ONT:CELL-LINE" :ID "EFO:0001182"
                                :NAME "HEK293"))
                              ("hyphens" "GRIP1"
                               ("GRIP-1" "ONT:CELL-LINE" :ID "CVCL:V169" :NAME
                                "GRIP-1"))
                              ("hyphens" "A431"
                               ("A-431" "ONT:CELL-LINE" :ID "EFO:0006268" :NAME
                                "A431"))
                              ("hyphens" "A375"
                               ("A-375" "ONT:CELL-LINE" :ID "CVCL:0132" :NAME
                                "A-375"))
                              ("hyphens" "fibroblast"
                               ("fibro-blast" "ONT:CELL" :ID "CO:0000057" :NAME
                                "fibroblast"))
                              ("hyphens" "fibroblast"
                               ("fi-broblast" "ONT:CELL" :ID "CO:0000057" :NAME
                                "fibroblast"))
                              ("orig" "tumour"
                               ("tumour" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                :ID "EFO:0000616" :NAME "neoplasm"))
                              ("orig" "mono"
                               ("mono" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                :ID "NCIT:C34726" :NAME
                                "infectious mononucleosis"))
                              ("hyphens" "disease"
                               ("dis-ease"
                                "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID
                                "EFO:0000408" :NAME "disease"))
                              ("hyphens-dc" "tall"
                               ("T-ALL" "ONT:CANCER" :ID "EFO:0000209" :NAME
                                "T-cell acute lymphoblastic leukemia"))
                              ("downcase" "cas"
                               ("Cas" "ONT:CANCER" :ID "NCIT:C9305" :NAME
                                "malignant neoplasm"))
                              ("hyphens" "translocation"
                               ("trans-location" "ONT:BIOLOGICAL-PROCESS" :ID
                                "EFO:0004024" :NAME "translocation"))
                              ("orig" "transduction"
                               ("transduction" "ONT:BIOLOGICAL-PROCESS" :ID
                                "GO:0009293" :NAME "transduction"))
                              ("hyphens" "transcription"
                               ("transcrip-tion" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C17208" :NAME "transcription"))
                              ("orig" "senescence"
                               ("senescence" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C17467" :NAME "senescence"))
                              ("orig" "retention"
                               ("retention" "ONT:BIOLOGICAL-PROCESS" :ID
                                "GO:0051235" :NAME "maintenance of location"))
                              ("hyphens" "regulation"
                               ("regula-tion" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C48805" :NAME "regulation"))
                              ("hyphens" "phosphorylation"
                               ("phospho-rylation" "ONT:BIOLOGICAL-PROCESS" :ID
                                "GO:0016310" :NAME "phosphorylation"))
                              ("orig" "over-expression"
                               ("over-expression" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C18211" :NAME "protein overexpression"))
                              ("orig" "metastasis"
                               ("metastasis" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C19151" :NAME "metastasis"))
                              ("orig" "metastases"
                               ("metastases" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C19151" :NAME "metastasis"))
                              ("hyphens" "homodimerization"
                               ("homo-dimerization" "ONT:BIOLOGICAL-PROCESS"
                                :ID "NCIT:C28514" :NAME "homodimerization"))
                              ("orig" "growth"
                               ("growth" "ONT:BIOLOGICAL-PROCESS" :ID
                                "GO:0040007" :NAME "growth"))
                              ("hyphens" "expression"
                               ("expres-sion" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C16608" :NAME "gene expression"))
                              ("hyphens" "expression"
                               ("ex-pression" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C16608" :NAME "gene expression"))
                              ("orig" "dephosphorylation"
                               ("dephosphorylation" "ONT:BIOLOGICAL-PROCESS"
                                :ID "GO:0016311" :NAME "dephosphorylation"))
                              ("orig" "deacetylation"
                               ("deacetylation" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C41553" :NAME "deacetylation"))
                              ("orig" "catalytic"
                               ("catalytic" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C52472" :NAME "catalysis"))
                              ("orig" "apoptosis"
                               ("apoptosis" "ONT:BIOLOGICAL-PROCESS" :ID
                                "NCIT:C17557" :NAME "apoptosis"))
                              ("hyphens-dc" "phosphorylation"
                               ("Phosphoryla-tion" "ONT:BIOLOGICAL-PROCESS" :ID
                                "GO:0016310" :NAME "phosphorylation"))
                              ("hyphens" "experiment"
                               ("exper-iment" "ONT:PROCESS" :ID "EFO:0002694"
                                :NAME "experimental process"))
                              ("hyphens" "significance"
                               ("sig-nificance" "ONT:PROCEDURE" :ID
                                "NCIT:C61040" :NAME
                                "statistical significance"))
                              ("orig" "amplification"
                               ("amplification" "ONT:PROCEDURE" :ID
                                "NCIT:C20589" :NAME
                                "gene amplification technique"))
                              ("orig" "SDS-PAGE"
                               ("SDS-PAGE" "ONT:PROCEDURE" :ID "NCIT:C18150"
                                :NAME
                                "sodium dodecylsulfate-polyacrylamide gel electrophoresis"))
                              ("orig" "vector"
                               ("vector" "ONT:ORGANISM" :ID "NCIT:C14198" :NAME
                                "disease vector"))
                              ("orig" "mammalian"
                               ("mammalian" "ONT:NONHUMAN-ANIMAL" :ID
                                "NCIT:C14234" :NAME "mammal"))
                              ("orig" "microarray"
                               ("microarray" "ONT:MEDICAL-INSTRUMENT" :ID
                                "EFO:0002698" :NAME "array"))
                              ("hyphens" "microarray"
                               ("micro-array" "ONT:MEDICAL-INSTRUMENT" :ID
                                "EFO:0002698" :NAME "array"))
                              ("orig" "pmol"
                               ("pmol" "ONT:MEASURE-UNIT" :ID "UO:0000042"
                                :NAME "picomole"))
                              ("hyphens" "intracellular"
                               ("intra-cellular" "ONT:CELL-PART" :ID
                                "GO:0005622" :NAME "intracellular"))
                              ("orig" "extracellular"
                               ("extracellular" "ONT:CELL-PART" :ID
                                "GO:0005576" :NAME "extracellular region"))
                              ("hyphens" "extracellular"
                               ("extracel-lular" "ONT:CELL-PART" :ID
                                "GO:0005576" :NAME "extracellular region"))
                              ("hyphens" "extracellular"
                               ("extra-cellular" "ONT:CELL-PART" :ID
                                "GO:0005576" :NAME "extracellular region"))
                              ("orig" "DNA"
                               ("DNA" "ONT:CELL-PART" :ID "CHEBI:16991" :NAME
                                "deoxyribonucleic acid"))))

(defparameter *NO-RULE-REDEF* '(("orig" "HAA"
                                 ("HAA" "pubchem" :TYPE "simple-chemical" :ID
                                  "PC:547"))
                                ("hyphens" "agarose"
                                 ("agarose" "pubchem" :TYPE "simple-chemical"
                                  :ID "PC:11966311"))
                                ("hyphens" "metabolism"
                                 ("metabolism" "go" :TYPE "bioprocess" :ID
                                  "GO:0008152"))
                                ("upcase" "SPI"
                                 ("spi" "ONT:PROTEIN" :ID "NCIT:C17284" :NAME
                                  "chromogranin-A"))
                                ("hyphens" "sulfonates"
                                 ("sulfonates" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                  :ID "NCIT:C222" :NAME
                                  "alkylsulfonate compound"))
                                ("orig" "ref"
                                 ("ref" "ONT:GENE-PROTEIN" :ID
                                  "XFAM:PF05755.10" :NAME "REF"))
                                ("orig" "mir"
                                 ("mir" "ONT:GENE-PROTEIN" :ID "UP:Q93105"
                                  :NAME "Insulin-like receptor"))
                                ("orig" "SREBP"
                                 ("SREBP" "ONT:PROTEIN-FAMILY" :ID "FA:03825"
                                  :NAME "SREBP family"))
                                ("downcase" "snf"
                                 ("SNF" "ONT:PROTEIN-FAMILY" :ID
                                  "XFAM:PF00209.16" :NAME "SNF"))
                                ("hyphens" "defensin"
                                 ("defensin" "ONT:PROTEIN" :ID "UP:Q86QI5"
                                  :NAME "Defensin"))
                                ("hyphens" "VAP"
                                 ("VAP" "ONT:PROTEIN" :ID "UP:P03552" :NAME
                                  "Virion-associated protein"))
                                ("hyphens" "WASP"
                                 ("WASP" "ONT:GENE-PROTEIN" :ID "UP:P42768"
                                  :NAME "Wiskott-Aldrich syndrome protein"))
                                ("hyphens" "UII"
                                 ("UII" "ONT:GENE-PROTEIN" :ID "HGNC:12636"
                                  :NAME "urotensin 2"))
                                ("orig" "TSG"
                                 ("TSG" "ONT:GENE-PROTEIN" :ID
                                  "XFAM:PF04668.10" :NAME "tsg"))
                                ("orig" "THP"
                                 ("THP" "ONT:GENE-PROTEIN" :ID "NCIT:C52924"
                                  :NAME "GLI2"))
                                ("downcase" "ski"
                                 ("SKI" "ONT:GENE-PROTEIN" :ID "HGNC:10896"
                                  :NAME "SKI proto-oncogene"))
                                ("orig" "SBF"
                                 ("SBF" "ONT:GENE-PROTEIN" :ID
                                  "XFAM:PF01758.14" :NAME "SBF"))
                                ("orig" "SAP"
                                 ("SAP" "ONT:GENE-PROTEIN" :ID "UP:P02743"
                                  :NAME "Serum amyloid P-component"))
                                ("orig" "Nup"
                                 ("Nup" "ONT:PROTEIN-FAMILY" :ID
                                  "XFAM:PF06516.9" :NAME "NUP"))
                                ("orig" "HIF"
                                 ("HIF" "ONT:PROTEIN-FAMILY" :ID "NCIT:C113839"
                                  :NAME "hypoxia inducible factor family"))
                                ("orig" "LPCAT"
                                 ("LPCAT" "ONT:PROTEIN" :ID "UP:Q6P1A2" :NAME
                                  "Lysophospholipid acyltransferase 5"))
                                ("orig" "IPI"
                                 ("IPI" "ONT:PROTEIN" :ID "UP:P03718" :NAME
                                  "Internal protein I"))
                                ("hyphens" "PRF"
                                 ("PRF" "ONT:GENE-PROTEIN" :ID "XFAM:PF06875.9"
                                  :NAME "PRF"))
                                ("orig" "PGC"
                                 ("PGC" "ONT:GENE-PROTEIN" :ID "HGNC:8890"
                                  :NAME "progastricsin"))
                                ("orig" "PAM"
                                 ("PAM" "ONT:GENE-PROTEIN" :ID "HGNC:8596"
                                  :NAME
                                  "peptidylglycine alpha-amidating monooxygenase"))
                                ("orig" "NOS"
                                 ("NOS" "ONT:GENE-PROTEIN" :ID "UP:O61608"
                                  :NAME "Nitric oxide synthase"))
                                ("orig" "NHE"
                                 ("NHE" "ONT:GENE-PROTEIN" :ID "UP:P81242"
                                  :NAME
                                  "Non-hemolytic enterotoxin 105 kDa component"))
                                ("hyphens" "NFH"
                                 ("NFH" "ONT:GENE-PROTEIN" :ID "UP:P12036"
                                  :NAME "Neurofilament heavy polypeptide"))
                                ("downcase" "msc"
                                 ("MSC" "ONT:GENE-PROTEIN" :ID "HGNC:7321"
                                  :NAME "musculin"))
                                ("orig" "MPC"
                                 ("MPC" "ONT:GENE-PROTEIN" :ID "UP:Q53034"
                                  :NAME "Metapyrocatechase"))
                                ("orig" "MLL"
                                 ("MLL" "ONT:GENE-PROTEIN" :ID "NCIT:C53066"
                                  :NAME "MLL"))
                                ("orig" "MCC"
                                 ("MCC" "ONT:GENE-PROTEIN" :ID "HGNC:6935"
                                  :NAME "mutated in colorectal cancers"))
                                ("orig" "LMP"
                                 ("LMP" "ONT:GENE-PROTEIN" :ID
                                  "XFAM:PF04778.10" :NAME "LMP"))
                                ("downcase" "pde"
                                 ("Pde" "ONT:GENE" :ID "HGNC:877" :NAME
                                  "aldehyde dehydrogenase 7 family member A1"))
                                ("hyphens-dc" "nts"
                                 ("NTS" "ONT:GENE" :ID "HGNC:8038" :NAME
                                  "neurotensin"))
                                ("orig" "NRF"
                                 ("NRF" "ONT:GENE" :ID "HGNC:19374" :NAME
                                  "NFKB repressing factor"))
                                ("hyphens-dc" "hbx"
                                 ("HBx" "ONT:PROTEIN" :ID "UP:P69714" :NAME
                                  "Protein X"))
                                ("hyphens-dc" "bsk"
                                 ("Bsk" "ONT:PROTEIN" :ID "UP:Q922K9" :NAME
                                  "Tyrosine-protein kinase FRK"))
                                ("hyphens-dc" "adrs"
                                 ("ADRs" "ONT:PROTEIN" :ID "UP:Q09851" :NAME
                                  "NADPH-dependent 1-acyldihydroxyacetone phosphate reductase"))
                                ("orig" "Sprouty"
                                 ("Sprouty" "ONT:PROTEIN-FAMILY" :ID "FA:03814"
                                  :NAME "sprouty family"))
                                ("orig" "kinesin"
                                 ("kinesin" "ONT:GENE-PROTEIN" :ID "FA:01965"
                                  :NAME "kinesin family"))
                                ("hyphens-dc" "pca"
                                 ("PCA" "ONT:GENE-PROTEIN" :ID "UP:P00299"
                                  :NAME "Plastocyanin A, chloroplastic"))
                                ("hyphens" "lymphoblasts"
                                 ("lymphoblasts" "ONT:CELL" :ID "BTO:0000772"
                                  :NAME "lymphoblast"))
                                ("orig" "trans"
                                 ("trans" "ONT:PROTEIN-FAMILY" :ID
                                  "XFAM:PF06986.9" :NAME "TraN"))
                                ("orig" "parathyroid"
                                 ("parathyroid" "ONT:PROTEIN-FAMILY" :ID
                                  "XFAM:PF01279.15" :NAME "parathyroid"))
                                ("orig" "myosin"
                                 ("myosin" "ONT:PROTEIN-FAMILY" :ID "FA:05287"
                                  :NAME "myosin family"))
                                ("orig" "cullin"
                                 ("cullin" "ONT:PROTEIN-FAMILY" :ID "FA:00787"
                                  :NAME "cullin family"))
                                ("orig" "connexin"
                                 ("connexin" "ONT:PROTEIN-FAMILY" :ID
                                  "FA:00722" :NAME "connexin family"))
                                ("orig" "WNT"
                                 ("WNT" "ONT:PROTEIN-FAMILY" :ID "FA:04686"
                                  :NAME "wnt family"))
                                ("orig" "TGF"
                                 ("TGF" "ONT:PROTEIN-FAMILY" :ID "NCIT:C20453"
                                  :NAME "transforming growth factor"))
                                ("orig" "FOXO"
                                 ("FOXO" "ONT:PROTEIN-FAMILY" :ID
                                  "NCIT:C118892" :NAME "FOXO family"))
                                ("orig" "FLAG"
                                 ("FLAG" "ONT:PROTEIN-FAMILY" :ID
                                  "XFAM:PF03646.13" :NAME "FlaG"))
                                ("orig" "AMPKalpha"
                                 ("AMPKalpha" "ONT:PROTEIN-FAMILY" :ID
                                  "NCIT:C116019" :NAME
                                  "5-AMP-activated protein kinase catalytic subunit alpha"))
                                ("orig" "neurofibromin"
                                 ("neurofibromin" "ONT:PROTEIN" :ID "UP:P35608"
                                  :NAME "Neurofibromin"))
                                ("hyphens" "gonadotropin"
                                 ("gonadotropin" "ONT:PROTEIN" :ID "NCIT:C2273"
                                  :NAME "gonadotropin"))
                                ("hyphens" "LDL"
                                 ("LDL" "ONT:PROTEIN" :ID "NCIT:C25187" :NAME
                                  "low density lipoprotein"))
                                ("hyphens" "HDP"
                                 ("HDP" "ONT:PROTEIN" :ID "UP:Q8IL04" :NAME
                                  "Heme ligase"))
                                ("orig" "CRY"
                                 ("CRY" "ONT:PROTEIN" :ID "UP:P15570" :NAME
                                  "Beta-elicitin cryptogein"))
                                ("orig" "CCI"
                                 ("CCI" "ONT:PROTEIN" :ID "UP:P32954" :NAME
                                  "Cysteine proteinase 1"))
                                ("hyphens" "nanoparticles"
                                 ("nanoparticles" "ONT:MOLECULE" :ID
                                  "CHEBI:50803" :NAME "nanoparticle"))
                                ("hyphens" "macromolecules"
                                 ("macromolecules" "ONT:MOLECULE" :ID
                                  "CHEBI:33839" :NAME "macromolecule"))
                                ("hyphens" "glycans"
                                 ("glycans" "ONT:MOLECULE" :ID "CHEBI:18154"
                                  :NAME "polysaccharide"))
                                ("orig" "neu"
                                 ("neu" "ONT:GENE-PROTEIN" :ID "NCIT:C17319"
                                  :NAME
                                  "ERBB2 receptor protein-tyrosine kinase"))
                                ("hyphens" "immunoglobulin"
                                 ("immunoglobulin" "ONT:GENE-PROTEIN" :ID
                                  "FA:01833" :NAME
                                  "immunoglobulin superfamily"))
                                ("hyphens-dc" "hcg"
                                 ("hCG" "ONT:GENE-PROTEIN" :ID "UP:Q9NFL4"
                                  :NAME "Hemocyanin G chain"))
                                ("orig" "VEGFR"
                                 ("VEGFR" "ONT:GENE-PROTEIN" :ID "GO:0005021"
                                  :NAME
                                  "vascular endothelial growth factor-activated receptor activity"))
                                ("orig" "VDAC"
                                 ("VDAC" "ONT:GENE-PROTEIN" :ID "NCIT:C51093"
                                  :NAME "VDAC1"))
                                ("hyphens" "TPA"
                                 ("TPA" "ONT:GENE-PROTEIN" :ID "UP:P00750"
                                  :NAME "Tissue-type plasminogen activator"))
                                ("hyphens" "TAZ"
                                 ("TAZ" "ONT:GENE-PROTEIN" :ID "HGNC:11577"
                                  :NAME "tafazzin"))
                                ("orig" "SPC"
                                 ("SPC" "ONT:GENE-PROTEIN" :ID "UP:P11686"
                                  :NAME
                                  "Pulmonary surfactant-associated protein C"))
                                ("downcase" "pacap"
                                 ("PACAP" "ONT:GENE-PROTEIN" :ID "UP:P18509"
                                  :NAME
                                  "Pituitary adenylate cyclase-activating polypeptide"))
                                ("orig" "NKD"
                                 ("NKD" "ONT:GENE-PROTEIN" :ID "UP:P30974"
                                  :NAME
                                  "Tachykinin-like peptides receptor 86C"))
                                ("hyphens" "JUN"
                                 ("JUN" "ONT:GENE-PROTEIN" :ID "HGNC:6204"
                                  :NAME
                                  "Jun proto-oncogene, AP-1 transcription factor subunit"))
                                ("hyphens" "GLK"
                                 ("GLK" "ONT:GENE-PROTEIN" :ID "NCIT:C116307"
                                  :NAME
                                  "mitogen-activated protein kinase kinase kinase kinase 3"))
                                ("hyphens-dc" "fos"
                                 ("Fos" "ONT:GENE-PROTEIN" :ID "FA:00408" :NAME
                                  "fos subfamily"))
                                ("hyphens-dc" "fts"
                                 ("FTS" "ONT:GENE-PROTEIN" :ID "FA:04283" :NAME
                                  "FTS subfamily"))
                                ("hyphens" "FLIP"
                                 ("FLIP" "ONT:GENE-PROTEIN" :ID "NCIT:C96017"
                                  :NAME "CFLAR"))
                                ("orig" "FKBP"
                                 ("FKBP" "ONT:GENE-PROTEIN" :ID "UP:P48375"
                                  :NAME "12 kDa FK506-binding protein"))
                                ("orig" "Abl"
                                 ("Abl" "ONT:GENE-PROTEIN" :ID "UP:Q00022"
                                  :NAME "Agaricus bisporus lectin"))
                                ("hyphens-dc" "galn"
                                 ("GalN" "ONT:GENE" :ID "HGNC:4114" :NAME
                                  "galanin and GMAP prepropeptide"))
                                ("downcase" "gag"
                                 ("GAG" "ONT:GENE" :ID "NCIT:C16614" :NAME
                                  "GAG gene"))
                                ("orig" "ErbB"
                                 ("ErbB" "ONT:GENE" :ID "NCIT:C17763" :NAME
                                  "oncogene ERB-B"))
                                ("orig" "DRG"
                                 ("DRG" "ONT:GENE" :ID "NCIT:C126990" :NAME
                                  "DRG1"))
                                ("orig" "CDK"
                                 ("CDK" "ONT:CELL-LINE" :ID "CVCL:R774" :NAME
                                  "DK1 [Tursiops]"))
                                ("orig" "proteasome"
                                 ("proteasome" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF00227.24" :NAME "proteasome"))
                                ("orig" "endothelin"
                                 ("endothelin" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF00322.15" :NAME "endothelin"))
                                ("orig" "SAF"
                                 ("SAF" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF08666.10" :NAME "SAF"))
                                ("hyphens" "RES"
                                 ("RES" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF08808.9" :NAME "RES"))
                                ("orig" "PDGF"
                                 ("PDGF" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF00341.15" :NAME "PDGF"))
                                ("hyphens" "NTR"
                                 ("NTR" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF01759.19" :NAME "NTR"))
                                ("hyphens" "NHL"
                                 ("NHL" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF01436.19" :NAME "NHL"))
                                ("orig" "LIM"
                                 ("LIM" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF00412.20" :NAME "LIM"))
                                ("orig" "IRS"
                                 ("IRS" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF02174.15" :NAME "IRS"))
                                ("orig" "FGF"
                                 ("FGF" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF00167.16" :NAME "FGF"))
                                ("orig" "DEP"
                                 ("DEP" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF00610.19" :NAME "DEP"))
                                ("orig" "CCT"
                                 ("CCT" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF06203.12" :NAME "CCT"))
                                ("orig" "CARD"
                                 ("CARD" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF00619.19" :NAME "CARD"))
                                ("hyphens" "BRK"
                                 ("BRK" "ONT:MOLECULAR-DOMAIN" :ID
                                  "XFAM:PF07533.14" :NAME "BRK"))
                                ("hyphens" "thiamine"
                                 ("thiamine" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "CHEBI:26948" :NAME "thiamine"))
                                ("hyphens" "sulfonate"
                                 ("sulfonate" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "NCIT:C222" :NAME "alkylsulfonate compound"))
                                ("orig" "phorbol"
                                 ("phorbol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "MESH:C033085" :NAME "phorbol"))
                                ("hyphens" "pCMX"
                                 ("p-CMX" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "MESH:C007027" :NAME "chloroxylenol"))
                                ("hyphens" "gossypol"
                                 ("gossypol" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "NCIT:C529" :NAME "gossypol"))
                                ("hyphens" "dimethyl"
                                 ("di-methyl" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "CHEBI:33601" :NAME "safranin O"))
                                ("orig" "bisindolylmaleimide"
                                 ("bisindolylmaleimide"
                                  "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "MESH:C088060" :NAME "bisindolylmaleimide"))
                                ("hyphens" "arsenite"
                                 ("arsenite" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "MESH:C015001" :NAME "arsenite"))
                                ("orig" "acetylcholine"
                                 ("acetylcholine" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                  :ID "NCIT:C77840" :NAME "acetylcholine"))
                                ("hyphens" "NVP"
                                 ("NVP" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "NCIT:C29277" :NAME "nevirapine"))
                                ("orig" "MDA"
                                 ("MDA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "NCIT:C80152" :NAME "tenamfetamine"))
                                ("orig" "IFN"
                                 ("IFN" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "NCIT:C584" :NAME "therapeutic interferon"))
                                ("orig" "FRS"
                                 ("FRS" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "NCIT:C515" :NAME "furosemide"))
                                ("orig" "CCL"
                                 ("CCL" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "CHEBI:3478" :NAME "cefaclor"))
                                ("hyphens-dc" "atc"
                                 ("ATC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                  "NCIT:C2354" :NAME
                                  "thiazolidine carboxylic acid"))
                                ("hyphens" "urea"
                                 ("urea" "ONT:MOLECULE" :ID "CHEBI:16199" :NAME
                                  "urea"))
                                ("hyphens" "phosphate"
                                 ("phosphate" "ONT:MOLECULE" :ID "CHEBI:26020"
                                  :NAME "phosphate"))
                                ("hyphens" "nanoparticle"
                                 ("nanoparticle" "ONT:MOLECULE" :ID
                                  "CHEBI:50803" :NAME "nanoparticle"))
                                ("hyphens" "methyladenine"
                                 ("methyladenine" "ONT:MOLECULE" :ID
                                  "CHEBI:25272" :NAME "methyladenine"))
                                ("hyphens" "macromolecule"
                                 ("macromolecule" "ONT:MOLECULE" :ID
                                  "CHEBI:33839" :NAME "macromolecule"))
                                ("orig" "leukotriene"
                                 ("leukotriene" "ONT:MOLECULE" :ID
                                  "CHEBI:25029" :NAME "leukotriene"))
                                ("hyphens" "glycan"
                                 ("glycan" "ONT:MOLECULE" :ID "CHEBI:18154"
                                  :NAME "polysaccharide"))
                                ("hyphens" "disulfide"
                                 ("disulfide" "ONT:MOLECULE" :ID "CHEBI:48343"
                                  :NAME "disulfide"))
                                ("orig" "desferrioxamine"
                                 ("desferrioxamine" "ONT:MOLECULE" :ID
                                  "CHEBI:50453" :NAME "desferrioxamine"))
                                ("hyphens" "cyclodextrin"
                                 ("cyclodextrin" "ONT:MOLECULE" :ID
                                  "CHEBI:23456" :NAME "cyclodextrin"))
                                ("hyphens" "ceramide"
                                 ("ceramide" "ONT:MOLECULE" :ID "CHEBI:17761"
                                  :NAME "ceramide"))
                                ("orig" "aldehyde"
                                 ("aldehyde" "ONT:MOLECULE" :ID "CHEBI:17478"
                                  :NAME "aldehyde"))
                                ("orig" "acetyl"
                                 ("acetyl" "ONT:MOLECULE" :ID "CHEBI:46887"
                                  :NAME "acetyl"))
                                ("hyphens-dc" "sel"
                                 ("SEL" "ONT:MOLECULE" :ID "CHEBI:24866" :NAME
                                  "salt"))
                                ("orig" "NBT"
                                 ("NBT" "ONT:MOLECULE" :ID "CHEBI:9505" :NAME
                                  "nitro blue tetrazolium dichloride"))
                                ("hyphens" "NAC"
                                 ("NAC" "ONT:MOLECULE" :ID "CHEBI:7421" :NAME
                                  "NAC"))
                                ("downcase" "fitc"
                                 ("FITC" "ONT:MOLECULE" :ID "CHEBI:37926" :NAME
                                  "fluorescein isothiocyanate"))
                                ("orig" "superoxide"
                                 ("superoxide" "ONT:CHEMICAL" :ID "CHEBI:18421"
                                  :NAME "superoxide"))
                                ("orig" "retinal"
                                 ("retinal" "ONT:CHEMICAL" :ID "CHEBI:15035"
                                  :NAME "retinal"))
                                ("orig" "estrogen"
                                 ("estrogen" "ONT:CHEMICAL" :ID "CHEBI:50114"
                                  :NAME "estrogen"))
                                ("hyphens" "estrogen"
                                 ("estro-gen" "ONT:CHEMICAL" :ID "CHEBI:50114"
                                  :NAME "estrogen"))
                                ("orig" "ecdysone"
                                 ("ecdysone" "ONT:CHEMICAL" :ID "CHEBI:16688"
                                  :NAME "ecdysone"))
                                ("hyphens" "antigen"
                                 ("antigen" "ONT:CHEMICAL" :ID "CHEBI:59132"
                                  :NAME "antigen"))
                                ("hyphens" "TAA"
                                 ("TAA" "ONT:CHEMICAL" :ID "NCIT:C44454" :NAME
                                  "thioacetamide"))
                                ("orig" "NMDA"
                                 ("NMDA" "ONT:CHEMICAL" :ID "CHEBI:31882" :NAME
                                  "N-methyl-D-aspartic acid"))
                                ("downcase" "kcl"
                                 ("KCl" "ONT:CHEMICAL" :ID "CHEBI:32588" :NAME
                                  "potassium chloride"))
                                ("hyphens" "GalNAc"
                                 ("GalNAc" "ONT:CHEMICAL" :ID "CHEBI:28800"
                                  :NAME "N-acetylgalactosamine"))
                                ("hyphens-dc" "gcb"
                                 ("GC-B" "ONT:CHEMICAL" :ID "CHEBI:74858" :NAME
                                  "GCB"))
                                ("hyphens" "FAD"
                                 ("FAD" "ONT:CHEMICAL" :ID "CHEBI:16238" :NAME
                                  "FAD"))
                                ("downcase" "cyt"
                                 ("Cyt" "ONT:CHEMICAL" :ID "CHEBI:16040" :NAME
                                  "cytosine"))
                                ("orig" "CPP"
                                 ("CPP" "ONT:CHEMICAL" :ID "CHEBI:34603" :NAME
                                  "CPP"))
                                ("orig" "CMH"
                                 ("CMH" "ONT:CHEMICAL" :ID "CHEBI:62107" :NAME
                                  "beta-D-glucosyl-N-(docosanoyl)sphingosine"))
                                ("hyphens" "CMH"
                                 ("CM-H" "ONT:CHEMICAL" :ID "CHEBI:62107" :NAME
                                  "beta-D-glucosyl-N-(docosanoyl)sphingosine"))
                                ("hyphens-dc" "npa"
                                 ("n-PA" "ONT:CELL-LINE" :ID "CVCL:0467" :NAME
                                  "NPA"))
                                ("orig" "min"
                                 ("min" "ONT:CELL-LINE" :ID "CVCL:E777" :NAME
                                  "MIN"))
                                ("orig" "cal"
                                 ("cal" "ONT:CELL-LINE" :ID "CVCL:E514" :NAME
                                  "CAL"))
                                ("hyphens" "TEM"
                                 ("TEM" "ONT:CELL-LINE" :ID "CVCL:E844" :NAME
                                  "TEM"))
                                ("hyphens" "TAC"
                                 ("TAC" "ONT:CELL-LINE" :ID "CVCL:D939" :NAME
                                  "MRC-iPS-26"))
                                ("downcase" "saka"
                                 ("SakA" "ONT:CELL-LINE" :ID "CVCL:4803" :NAME
                                  "Saka"))
                                ("orig" "SPS"
                                 ("SPS" "ONT:CELL-LINE" :ID "CVCL:R927" :NAME
                                  "SPS"))
                                ("hyphens-dc" "sips"
                                 ("SIP-S" "ONT:CELL-LINE" :ID "CVCL:DF10" :NAME
                                  "SIPS"))
                                ("hyphens" "RCP"
                                 ("RCP" "ONT:CELL-LINE" :ID "CVCL:4285" :NAME
                                  "RCP"))
                                ("orig" "PLC"
                                 ("PLC" "ONT:CELL-LINE" :ID "CVCL:0485" :NAME
                                  "PLC/PRF/5"))
                                ("hyphens" "PAR"
                                 ("P-AR" "ONT:CELL-LINE" :ID "CVCL:E801" :NAME
                                  "PAR"))
                                ("hyphens-dc" "mar"
                                 ("MAR" "ONT:CELL-LINE" :ID "CVCL:0B87" :NAME
                                  "MAR"))
                                ("hyphens" "LBS"
                                 ("LBS" "ONT:CELL-LINE" :ID "CVCL:E751" :NAME
                                  "LB"))
                                ("hyphens" "KMP"
                                 ("KMP" "ONT:CELL-LINE" :ID "CVCL:4531" :NAME
                                  "KMP"))
                                ("hyphens" "IEG"
                                 ("IEG" "ONT:CELL-LINE" :ID "CVCL:W364" :NAME
                                  "IEG"))
                                ("downcase" "hsp"
                                 ("Hsp" "ONT:CELL-LINE" :ID "CVCL:5291" :NAME
                                  "HS-P"))
                                ("hyphens" "DEN"
                                 ("DEN" "ONT:CELL-LINE" :ID "CVCL:1R33" :NAME
                                  "DEN-HSA"))
                                ("orig" "COS"
                                 ("COS" "ONT:CELL-LINE" :ID "CVCL:0222" :NAME
                                  "COS"))
                                ("orig" "CHO"
                                 ("CHO" "ONT:CELL-LINE" :ID "CVCL:0213" :NAME
                                  "CHO"))
                                ("orig" "BTB"
                                 ("BTB" "ONT:CELL-LINE" :ID "CVCL:E505" :NAME
                                  "BTB"))
                                ("orig" "ARNT"
                                 ("ARNT" "ONT:CELL-LINE" :ID "CVCL:E461" :NAME
                                  "ARNT"))
                                ("orig" "platelet"
                                 ("platelet" "ONT:CELL" :ID "CO:0000233" :NAME
                                  "platelet"))
                                ("hyphens" "monocyte"
                                 ("monocyte" "ONT:CELL" :ID "BTO:0000876" :NAME
                                  "monocyte"))
                                ("orig" "macrophage"
                                 ("macrophage" "ONT:CELL" :ID "CO:0000235"
                                  :NAME "macrophage"))
                                ("hyphens" "lymphocyte"
                                 ("lymphocyte" "ONT:CELL" :ID "BTO:0000775"
                                  :NAME "lymphocyte"))
                                ("hyphens" "lymphoblast"
                                 ("lymphoblast" "ONT:CELL" :ID "BTO:0000772"
                                  :NAME "lymphoblast"))
                                ("hyphens" "lymphocyte"
                                 ("lym-phocyte" "ONT:CELL" :ID "BTO:0000775"
                                  :NAME "lymphocyte"))
                                ("orig" "granulocyte"
                                 ("granulocyte" "ONT:CELL" :ID "BTO:0000539"
                                  :NAME "granulocyte"))
                                ("hyphens" "NSC"
                                 ("NSC" "ONT:CELL" :ID "CO:0000047" :NAME
                                  "neuronal stem cell"))
                                ("orig" "HSC"
                                 ("HSC" "ONT:CELL" :ID "BTO:0000725" :NAME
                                  "hematopoietic stem cell"))
                                ("hyphens" "telangiectasia"
                                 ("telangiectasia"
                                  "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID
                                  "NCIT:C28194" :NAME "telangiectasia"))
                                ("hyphens" "nephropathy"
                                 ("nephropathy"
                                  "ONT:MEDICAL-DISORDERS-AND-CONDITIONS" :ID
                                  "NCIT:C34843" :NAME "nephropathy"))
                                ("orig" "TCA"
                                 ("TCA" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                  :ID "NCIT:C101040" :NAME
                                  "total colonic aganglionisis"))
                                ("downcase" "hpv"
                                 ("HPV" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                  :ID "EFO:0001668" :NAME
                                  "human papilloma virus infection"))
                                ("downcase" "dia"
                                 ("Dia" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                  :ID "NCIT:C9476" :NAME
                                  "desmoplastic infantile astrocytoma"))
                                ("orig" "CIN"
                                 ("CIN" "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                  :ID "NCIT:C7346" :NAME
                                  "cervical squamous intraepithelial neoplasia"))
                                ("orig" "retinoblastoma"
                                 ("retinoblastoma" "ONT:CANCER" :ID
                                  "NCIT:C7541" :NAME "retinoblastoma"))
                                ("hyphens" "neoplasia"
                                 ("neoplasia" "ONT:CANCER" :ID "NCIT:C3262"
                                  :NAME "neoplasm"))
                                ("hyphens" "lymphoma"
                                 ("lymphoma" "ONT:CANCER" :ID "EFO:0000574"
                                  :NAME "lymphoma"))
                                ("hyphens" "TAM"
                                 ("TAM" "ONT:CANCER" :ID "NCIT:C82339" :NAME
                                  "transient abnormal myelopoiesis"))
                                ("orig" "MCL"
                                 ("MCL" "ONT:CANCER" :ID "EFO:1001469" :NAME
                                  "Mantle cell lymphoma"))
                                ("hyphens" "HCL"
                                 ("HCL" "ONT:CANCER" :ID "NCIT:C7402" :NAME
                                  "hairy cell leukemia"))
                                ("orig" "ECT"
                                 ("ECT" "ONT:CANCER" :ID "NCIT:C121785" :NAME
                                  "ectomesenchymal chondromyxoid tumor"))
                                ("orig" "AML"
                                 ("AML" "ONT:CANCER" :ID "EFO:0000222" :NAME
                                  "acute myeloid leukemia"))
                                ("orig" "replication"
                                 ("replication" "ONT:BIOLOGICAL-PROCESS" :ID
                                  "NCIT:C16514" :NAME "DNA replication"))
                                ("hyphens" "invasion"
                                 ("invasion" "ONT:BIOLOGICAL-PROCESS" :ID
                                  "NCIT:C20625" :NAME "tumor cell invasion"))
                                ("hyphens" "checkpoint"
                                 ("checkpoint" "ONT:BIOLOGICAL-PROCESS" :ID
                                  "NCIT:C18689" :NAME "cell cycle checkpoint"))
                                ("hyphens" "UPR"
                                 ("UPR" "ONT:BIOLOGICAL-PROCESS" :ID
                                  "NCIT:C118900" :NAME
                                  "unfolded protein response"))
                                ("hyphens" "NRP"
                                 ("NRP" "ONT:BIOLOGICAL-PROCESS" :ID
                                  "GO:0085015" :NAME
                                  "dormancy maintenance of symbiont in host"))
                                ("downcase" "mdr"
                                 ("MDR" "ONT:BIOLOGICAL-PROCESS" :ID
                                  "NCIT:C17745" :NAME "multidrug resistance"))
                                ("hyphens" "retrovirus"
                                 ("retrovirus" "ONT:VIRUS" :ID "NCIT:C14268"
                                  :NAME "retroviridae"))
                                ("hyphens" "chromatography"
                                 ("chromatography" "ONT:PROCEDURE" :ID
                                  "NCIT:C16431" :NAME "chromatography"))
                                ("hyphens" "strain"
                                 ("strain" "ONT:ORGANISM" :ID "NCIT:C14419"
                                  :NAME "organism strains"))
                                ("orig" "murine"
                                 ("murine" "ONT:NONHUMAN-ANIMAL" :ID
                                  "NCIT:C14238" :NAME "mouse"))
                                ("orig" "PIK"
                                 ("PIK" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                  "GO:0019035" :NAME
                                  "viral integration complex"))
                                ("hyphens-dc" "disc"
                                 ("DISC" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                  "GO:0031264" :NAME
                                  "death-inducing signaling complex"))
                                ("hyphens" "vesicle"
                                 ("vesicle" "ONT:CELL-PART" :ID "GO:0031982"
                                  :NAME "vesicle"))
                                ("hyphens" "synapse"
                                 ("synapse" "ONT:CELL-PART" :ID "UP:SL-0258"
                                  :NAME "Synapse"))
                                ("orig" "neurite"
                                 ("neurite" "ONT:CELL-PART" :ID "GO:0043005"
                                  :NAME "neuron projection"))
                                ("orig" "microtubule"
                                 ("microtubule" "ONT:CELL-PART" :ID
                                  "GO:0005874" :NAME "microtubule"))
                                ("hyphens" "chromosome"
                                 ("chro-mosome" "ONT:CELL-PART" :ID
                                  "UP:SL-0468" :NAME "Chromosome"))
                                ("orig" "axon"
                                 ("axon" "ONT:CELL-PART" :ID "UP:SL-0279" :NAME
                                  "Axon"))
                                ("orig" "TGN"
                                 ("TGN" "ONT:CELL-PART" :ID "GO:0005802" :NAME
                                  "trans-Golgi network"))
                                ("orig" "Golgi"
                                 ("Golgi" "ONT:CELL-PART" :ID "UP:SL-0132"
                                  :NAME "Golgi apparatus"))
                                ("hyphens" "siRNA"
                                 ("si-RNA" "ONT:RNA" :ID "NCIT:C2191" :NAME
                                  "small interfering RNA"))
                                ("orig" "RNAs"
                                 ("RNAs" "ONT:RNA" :ID "NCIT:C812" :NAME
                                  "ribonucleic acid"))
                                ("orig" "RNA"
                                 ("RNA" "ONT:RNA" :ID "NCIT:C812" :NAME
                                  "ribonucleic acid"))))

(defparameter *NAME-ID-MISMATCHES* '((CELLULAR-LOCATION CAVEOLA "GO:0005901"
                                      :NEWUID "UP:SL-0035")))

(defparameter *PROT-FAM-REDEF* 'NIL)

(defparameter *INHIBITED-PLURALS* '("CMXRo" "stress fiber" "HCT 116" "PD 98059"
                                    "neur" "jas" "oligosaccharide" "siva"
                                    "granulocyte" "bromodomain" "zingerone"
                                    "wogonin" "vorinostat" "violacein"
                                    "vinorelbine" "vincristine" "vinblastine"
                                    "vancomycin" "tryptamine" "triptolide"
                                    "trifluoperazine" "tiotidine" "tiliroside"
                                    "thymoquinone" "tetrathiomolybdate"
                                    "theophylline" "tetrathiomolybdate"
                                    "tetrandrine" "tetracycline" "terazosin"
                                    "telmisartan" "taxane" "tanespimycin"
                                    "talazoparib" "tadalafil" "staurosporine"
                                    "sirtinol" "sevoflurane" "sesamin"
                                    "saporin" "saponin" "rottlerin"
                                    "rosuvastatin" "rhein" "ranitidine"
                                    "quinacrine" "pyridine" "puromycin"
                                    "puerarin" "proanthocyanidin" "prednisone"
                                    "prazosin" "pravastatin" "pranlukast"
                                    "polydatin" "polyacrylamide" "pirfenidone"
                                    "piperine" "pinocembrin" "picropodophyllin"
                                    "phenylephrine" "phenformin"
                                    "lambrolizumab" "pelargonidin"
                                    "pegvisomant" "ouabain" "osimertinib"
                                    "oridonin" "octylamine" "octreotide"
                                    "octopamine" "nortriptyline" "nobiletin"
                                    "nifedipine" "niclosamide" "nelfinavir"
                                    "naringin" "naftopidil" "nabilone"
                                    "myricetin" "montelukast" "monastrol"
                                    "mithramycin" "micafungin" "mibefradil"
                                    "metformin" "menadione" "melatonin"
                                    "medroxyprogesterone" "matrine"
                                    "mangiferin" "luteolin" "lovastatin"
                                    "locostatin" "lipopolysaccharide"
                                    "limonene" "leflunomide" "latrunculin A"
                                    "latanoprost" "landiolol" "ketamine"
                                    "kaempferol" "isorhamnetin" "isoquercitrin"
                                    "isoprenaline"
                                    "therapeutic interferon beta"
                                    "indomethacin" "imperatorin" "hyperoside"
                                    "honokiol" "harmine" "haloperidol"
                                    "genipin" "gemcitabine" "geldanamycin"
                                    "gartanin" "fucoidan" "fluoxetine"
                                    "fludioxonil" "fasudil" "eupafolin"
                                    "etomoxir" "esmolol" "escitalopram"
                                    "erastin" "epirubicin" "enalapril"
                                    "doxycycline" "doxazosin" "diltiazem"
                                    "digitoxin" "dexmedetomidine" "daphnetin"
                                    "dapagliflozin" "danusertib" "daidzein"
                                    "dactinomycin" "curcumin" "costunolide"
                                    "corynoline" "cordycepin" "clotrimazole"
                                    "clofazimine" "clarithromycin"
                                    "ciprofloxacin" "cilostazol" "ciglitazone"
                                    "chelerythrine" "cavidine" "carboplatin"
                                    "carbachol" "capsazepine" "capsaicin"
                                    "camptothecin" "calcipotriol" "cafestol"
                                    "butein" "butaprost" "bromopyruvate"
                                    "bleomycin" "biotin" "biflorin" "baicalin"
                                    "baicalein" "atorvastatin" "astragalin"
                                    "apigenin" "apatinib" "antidepressant"
                                    "antiestrogen" "antiestrogen"
                                    "anti-androgen" "anserine" "anemonin"
                                    "amlexanox" "allopurinol" "allicin"
                                    "alizarin" "albendazole" "afzelin"
                                    "adjuvant" "acteoside" "acetaminophen"
                                    "gefitinib" "vitexin" "rofecoxib"
                                    "bortezomib" "etoposide" "tranilast"
                                    "torin 2" "torin 1" "tinzaparin"
                                    "tianeptine" "paclitaxel" "temozolomide"
                                    "TGX 221" "simvastatin" "shikonin"
                                    "imatinib" "imatinib" "bosutinib"
                                    "SB 216763" "romidepsin" "mifepristone"
                                    "everolimus" "propranolol" "piceatannol"
                                    "paeonol" "bortezomib" "nifurtimox"
                                    "naringenin" "acetylcysteine"
                                    "moxifloxacin" "dimethyl sulfone" "MRK 003"
                                    "lupeol" "liraglutide" "linagliptin"
                                    "levofloxacin" "LDN 193189" "KT 5720"
                                    "gefitinib" "iguratimod" "icaritin"
                                    "fulvestrant" "homoharringtonine"
                                    "trastuzumab" "Go 6976" "gentamicin"
                                    "bisindolylmaleimide I" "flavopiridol"
                                    "fisetin" "farrerol" "fangchinoline"
                                    "fingolimod hydrochloride" "depsipeptide"
                                    "emodin" "elesclomol" "ETP 45658"
                                    "diosmetin" "dieckol" "deltarasin"
                                    "diacetyldichlorofluorescein"
                                    "cypermethrin" "cyclopamine" "cromolyn"
                                    "seliciclib" "irinotecan" "CGK 733"
                                    "cisplatin" "bufalin" "BI 2536" "astilbin"
                                    "artemisinin" "bevacizumab" "amitriptyline"
                                    "tyrphostin AG 1478" "mercaptoethanol"
                                    "tartrate" "tamoxifen" "succinate"
                                    "steroid" "statin" "sapogenin" "quercetin"
                                    "polyphenol" "peptidoglycan"
                                    "oligonucleotide" "nanorod"
                                    "mononucleotide" "monoamine" "mevalonate"
                                    "maltose" "lignan" "ketone"
                                    "isothiocyanate" "iodonium" "hydroxyl"
                                    "hydrochloride" "glycoside" "flavonoid"
                                    "dinucleotide" "deoxyglucose"
                                    "corticosteroid" "choline" "catechin"
                                    "mercaptoethanol" "azide" "astaxanthin"
                                    "apocynin" "anion" "acetone" "sulfide"
                                    "primary amino group" "Dizocilpine"
                                    "berberine" "tunicamycin" "tocotrienol"
                                    "thapsigargin" "testosterone" "surfactin"
                                    "squalene" "serotonin" "rutin" "propidium"
                                    "progestin" "peroxynitrite" "paraquat"
                                    "oligomycin" "estradiol" "nitrite"
                                    "metabolite" "metabolite" "luzindole"
                                    "isoalantolactone" "iopamidol" "ionophore"
                                    "hydrosulfide" "hexane" "hesperidin"
                                    "guanosine" "gallein" "fluorescein"
                                    "endotoxin" "endocannabinoid" "digoxigenin"
                                    "diethyldithiocarbamate" "cystine"
                                    "corticosterone" "cofactor" "chitosan"
                                    "celastrol" "catecholamine" "carrageenan"
                                    "cannabinoid" "calycosin" "calcitriol"
                                    "borneol" "biomarker" "biliverdin"
                                    "azithromycin" "arachidonate" "antifolate"
                                    "alloxan" "actinomycin D" "acrylamide"
                                    "SAM" "oleamide" "icariin" "hemin"
                                    "cantharidin" "CHIR 99021" "avermectin"
                                    "SFK" "SFK" "LAD 2" "Schneider 1" "BAS"
                                    "thymocyte" "splenocyte" "osteoclast"
                                    "oocyte" "interneuron" "erythrocyte"
                                    "eosinophil" "enterocyte" "basophil"
                                    "uveitis" "retinopathy" "preeclampsia"
                                    "nevus" "microphthalmia" "cardiomyopathy"
                                    "adenoma" "tumorigenesis" "parasitism"
                                    "lysis" "lysis" "hypoplasia" "endocytosis"
                                    "anergy" "parapoxvirus" "lentivirus"
                                    "adenovirus" "recombination"
                                    "quantitative reverse transcriptase PCR"
                                    "densitometry" "hypertrophy"
                                    "hyperlipidemia" "leishmania" "ribosome"
                                    "apoptosome" "ripoptosome"
                                    "IgG immunoglobulin complex"
                                    "IgG immunoglobulin complex"
                                    "IgG immunoglobulin complex" "nematode"
                                    "organelle" "micronucleus" "lysosome"
                                    "fibril" "centromere" "actomyosin"
                                    "multivesicular body" "francisella"
                                    "chlamydia" "prophase" "microgram"))

