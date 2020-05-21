(in-package :sparser)

(defparameter *SUPPRESSED-HYPHENATED-NEW-WORDS* 'NIL)

(defparameter *SUPPRESSED-MOD-REDEFS* '(("upcase" "AKT"
                                         ("akt" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:AKT" :NAME "AKT"))
                                        ("upcase" "BEAS"
                                         ("beas" "ONT:PROTEIN" :ID "UP:B6D9A8"
                                          :NAME
                                          "Beauvericin nonribosomal cyclodepsipeptide synthetase"))
                                        ("upcase" "CEA"
                                         ("cea" "ONT:GENE-PROTEIN" :ID
                                          "FA:01836" :NAME "CEA family"))
                                        ("upcase" "DIX"
                                         ("dix" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF00778" :NAME "DIX"))
                                        ("upcase" "ELD"
                                         ("eld" "ONT:GENE" :ID "NCIT:C92531"
                                          :NAME "ARID1A"))
                                        ("upcase" "ETC"
                                         ("etc" "ONT:PROTEIN" :ID "UP:P32940"
                                          :NAME "Endothelin-3 receptor"))
                                        ("upcase" "ETL"
                                         ("etl" "ONT:GENE" :ID "HGNC:20822"
                                          :NAME
                                          "adhesion G protein-coupled receptor L4"))
                                        ("upcase" "LEM"
                                         ("lem" "ONT:GENE-PROTEIN" :ID
                                          "FA:02030" :NAME "LEM family"))
                                        ("upcase" "PLC"
                                         ("plc" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:PLC" :NAME "PLC"))
                                        ("upcase" "SOI"
                                         ("soi" "ONT:PROTEIN" :ID "GO:0018846"
                                          :NAME
                                          "styrene-oxide isomerase activity"))
                                        ("upcase" "SSP"
                                         ("ssp" "ONT:PROTEIN" :ID "UP:D8KY57"
                                          :NAME
                                          "Probable salivary secreted peptide"))
                                        ("upcase" "AAR"
                                         ("Aar" "ONT:PROTEIN" :ID "UP:Q54765"
                                          :NAME
                                          "Long-chain acyl-[acyl-carrier-protein] reductase"))
                                        ("upcase" "CRFK"
                                         ("CrFK" "ONT:CELL-LINE" :ID
                                          "CVCL:2426" :NAME "CRFK"))
                                        ("upcase" "CREB"
                                         ("CreB" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:CREB" :NAME "CREB"))
                                        ("upcase" "DDX"
                                         ("DDx" "ONT:GENE" :ID "NCIT:C129053"
                                          :NAME "AKR1C3"))
                                        ("upcase" "ESTA"
                                         ("Esta" "ONT:PROTEIN" :ID "UP:Q9Y871"
                                          :NAME "Feruloyl esterase B"))
                                        ("upcase" "IGEL"
                                         ("Igel" "ONT:GENE" :ID "NCIT:C101624"
                                          :NAME "MS4A2"))
                                        ("upcase" "NAO"
                                         ("Nao" "ONT:PROTEIN" :ID "GO:0052664"
                                          :NAME
                                          "nitroalkane oxidase activity"))
                                        ("upcase" "PLA"
                                         ("Pla" "ONT:PROTEIN" :ID "UP:A1CFS2"
                                          :NAME "Probable pectin lyase A"))
                                        ("upcase" "POI"
                                         ("Poi" "ONT:PROTEIN" :ID "UP:P81765"
                                          :NAME "Tyrosinase inhibitor"))
                                        ("upcase" "RPA"
                                         ("RpA" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:RPA" :NAME "RPA"))))

(defparameter *ID-MISMATCH-REDEF* '(("upcase" "AIT" "UP:Q8N695"
                                     ("ait" "ONT:GENE" :ID "NCIT:C121498" :NAME
                                      "SLC5A8"))
                                    ("upcase" "ANS" "UP:P51091"
                                     ("ans" "ONT:PROTEIN" :ID "UP:Q96323" :NAME
                                      "Leucoanthocyanidin dioxygenase"))
                                    ("upcase" "CUTA" "UP:O60888"
                                     ("cuta" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:21101" :NAME
                                      "cutA divalent cation tolerance homolog"))
                                    ("upcase" "EEN" "UP:Q99961"
                                     ("een" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97789" :NAME "SH3GL1"))
                                    ("upcase" "ENT" "UP:Q95P23"
                                     ("ent" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C114925" :NAME "NT5E"))
                                    ("upcase" "EPM" "UP:P32856"
                                     ("epm" "ONT:GENE" :ID "NCIT:C116089" :NAME
                                      "STX2"))
                                    ("upcase" "GRIPE" "UP:Q6GYQ0"
                                     ("gripe" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:17770" :NAME
                                      "Ral GTPase activating protein catalytic alpha subunit 1"))
                                    ("upcase" "IFNAR" "UP:P17181"
                                     ("ifnar" "ONT:GENE" :ID "NCIT:C51352"
                                      :NAME "IFNAR1"))
                                    ("upcase" "IGA" "UP:P11912"
                                     ("iga" "ONT:GENE-PROTEIN" :ID "NCIT:C565"
                                      :NAME "IgA"))
                                    ("upcase" "MCRA" "XFAM:PF06100.9"
                                     ("mcra" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06100" :NAME "MCRA"))
                                    ("upcase" "NHS" "UP:Q6T4R5"
                                     ("nhs" "ONT:GENE-PROTEIN" :ID "HGNC:7820"
                                      :NAME "NHS actin remodeling regulator"))
                                    ("upcase" "NOMO" "UP:Q5JPE7"
                                     ("nomo" "ONT:GENE" :ID "HGNC:22652" :NAME
                                      "NODAL modulator 2"))
                                    ("upcase" "NTS" "UP:P30990"
                                     ("nts" "ONT:GENE-PROTEIN" :ID "UP:P32560"
                                      :NAME "Neurotensin"))
                                    ("upcase" "PARVA" "UP:Q9NVD7"
                                     ("parva" "ONT:GENE" :ID "HGNC:14652" :NAME
                                      "parvin alpha"))
                                    ("upcase" "PHY" "XFAM:PF00360.18"
                                     ("phy" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF00360" :NAME "PHY"))
                                    ("upcase" "PROT" "UP:Q99884"
                                     ("prot" "ONT:GENE" :ID "HGNC:11054" :NAME
                                      "solute carrier family 6 member 7"))
                                    ("upcase" "RAGA" "UP:Q7L523"
                                     ("raga" "ONT:GENE-PROTEIN" :ID "UP:Q3SX43"
                                      :NAME
                                      "Ras-related GTP-binding protein A"))
                                    ("upcase" "RARA" "UP:P10276"
                                     ("rara" "ONT:GENE-PROTEIN" :ID "HGNC:9864"
                                      :NAME "retinoic acid receptor alpha"))
                                    ("upcase" "SANS" "UP:Q495M9"
                                     ("sans" "ONT:GENE" :ID "HGNC:29533" :NAME
                                      "N(alpha)-acetyltransferase 50, NatE catalytic subunit"))
                                    ("upcase" "SID" "XFAM:PF11778.6"
                                     ("sid" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF11778" :NAME "SID"))
                                    ("upcase" "TIGR" "UP:Q99972"
                                     ("tigr" "ONT:GENE-PROTEIN" :ID "HGNC:7610"
                                      :NAME "myocilin"))
                                    ("upcase" "TRAS" "UP:P14498"
                                     ("tras" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12027" :NAME
                                      "T cell receptor alpha locus"))
                                    ("upcase" "TTL" "UP:Q8NG68"
                                     ("ttl" "ONT:GENE-PROTEIN" :ID "HGNC:21586"
                                      :NAME "tubulin tyrosine ligase"))
                                    ("upcase" "XLS" "UP:Q9BUH6"
                                     ("xls" "ONT:GENE" :ID "HGNC:27849" :NAME
                                      "PAXX non-homologous end joining factor"))
                                    ("upcase" "ATPW" "UP:Q99766"
                                     ("ATPw" "ONT:GENE" :ID "HGNC:18799" :NAME
                                      "distal membrane arm assembly complex 2 like"))
                                    ("upcase" "AGL" "UP:P35573"
                                     ("AgL" "ONT:GENE-PROTEIN" :ID "HGNC:321"
                                      :NAME
                                      "amylo-alpha-1, 6-glucosidase, 4-alpha-glucanotransferase"))
                                    ("upcase" "APOB" "UP:P04114"
                                     ("Apob" "ONT:GENE-PROTEIN" :ID "HGNC:603"
                                      :NAME "apolipoprotein B"))
                                    ("upcase" "ARSA" "UP:O43681"
                                     ("ArsA" "ONT:GENE-PROTEIN" :ID "HGNC:713"
                                      :NAME "arylsulfatase A"))
                                    ("upcase" "CGB" "UP:P01233"
                                     ("CgB" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20684" :NAME "secretogranin-1"))
                                    ("upcase" "DTR" "UP:Q99075"
                                     ("DTr" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C26123" :NAME
                                      "heparin-binding EGF-like growth factor"))
                                    ("upcase" "EDA" "UP:Q92838"
                                     ("EdA" "ONT:GENE" :ID "HGNC:3157" :NAME
                                      "ectodysplasin A"))
                                    ("upcase" "GGS" "UP:C9K2Q3"
                                     ("GGs" "ONT:PROTEIN" :ID "UP:A0A2L0VXR5"
                                      :NAME
                                      "Geranylgeranyl pyrophosphate synthase"))
                                    ("upcase" "GAPDH" "UP:P04406"
                                     ("Gapdh" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4141" :NAME
                                      "glyceraldehyde-3-phosphate dehydrogenase"))
                                    ("upcase" "JACOP" "UP:Q0VF96"
                                     ("JACoP" "ONT:GENE" :ID "NCIT:C98065"
                                      :NAME "CGNL1"))
                                    ("upcase" "KSH" "UP:Q9VWH8"
                                     ("Ksh" "ONT:PROTEIN" :ID "UP:F1CMX0" :NAME
                                      "3-ketosteroid-9-alpha-monooxygenase, oxygenase component"))
                                    ("upcase" "LTBR" "UP:P36941"
                                     ("Ltbr" "ONT:GENE-PROTEIN" :ID "HGNC:6718"
                                      :NAME "lymphotoxin beta receptor"))
                                    ("upcase" "LTN" "UP:P47992"
                                     ("Ltn" "ONT:GENE" :ID "NCIT:C50973" :NAME
                                      "XCL1"))
                                    ("upcase" "MAVS" "UP:Q7Z434"
                                     ("Mavs" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:29233" :NAME
                                      "mitochondrial antiviral signaling protein"))
                                    ("upcase" "PIGR" "UP:P01833"
                                     ("PIgR" "ONT:GENE-PROTEIN" :ID "HGNC:8968"
                                      :NAME
                                      "polymeric immunoglobulin receptor"))
                                    ("upcase" "VHR" "UP:P51452"
                                     ("Vhr" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C25856" :NAME
                                      "dual specificity protein phosphatase 3"))
                                    ("upcase" "VIC" "UP:Q43358"
                                     ("Vic" "ONT:PROTEIN" :ID "UP:P22389" :NAME
                                      "Endothelin-2"))
                                    ("upcase" "AARS" "UP:P49588"
                                     ("aaRS" "ONT:GENE" :ID "HGNC:20" :NAME
                                      "alanyl-tRNA synthetase 1"))
                                    ("upcase" "TPRC" "UP:Q92733"
                                     ("TprC" "ONT:GENE" :ID "NCIT:C70995" :NAME
                                      "PRCC"))
                                    ("upcase" "LGA" "UP:Q9UI32"
                                     ("lgA" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49388" :NAME "GLS2"))))

(defparameter *ID-AND-CAT-MISMATCH* '(("orig" "HTA" "UP:O27848" :OLD-CAT
                                       PROTEIN :NEW-CAT RNA
                                       ("HTA" "ONT:RNA" :ID "HGNC:48612" :NAME
                                        "hepatocellular carcinoma associated transcript 5"))
                                      ("upcase" "CET" "UP:P08369" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("cet" "ONT:CHEMICAL" :ID "CHEBI:124991"
                                        :NAME "cefalotin"))
                                      ("upcase" "CHP" "UP:Q99653" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("chp" "ONT:GENE-PROTEIN" :ID "FA:05055"
                                        :NAME "CHP subfamily"))
                                      ("upcase" "DEF" "UP:Q68CQ4" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("def" "ONT:GENE-PROTEIN" :ID "FA:00922"
                                        :NAME "def family"))
                                      ("upcase" "HOR" "UP:Q9RB09" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("hor" "ONT:CELL-LINE" :ID "CVCL:E703"
                                        :NAME "HOR"))
                                      ("upcase" "OLS" "UP:B1Q2B6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("ols" "ONT:CELL" :ID "CO:0000128" :NAME
                                        "oligodendrocyte"))
                                      ("upcase" "PSU" "UP:P05460" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("psu" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF07455" :NAME "psu"))
                                      ("upcase" "TED" "UP:O75949" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("ted" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF08341" :NAME "TED"))
                                      ("upcase" "AGF" "UP:Q8NI99" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("AGf" "ONT:CELL-LINE" :ID "CVCL:D101"
                                        :NAME "AG-F"))
                                      ("upcase" "ATA" "UP:A3M3H0" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Ata" "ONT:CHEMICAL" :ID "NCIT:C44331"
                                        :NAME "amitrole"))
                                      ("upcase" "CCR" "UP:Q3IZ91" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Ccr" "ONT:PROTEIN" :ID "GO:0043880"
                                        :NAME
                                        "crotonyl-CoA reductase activity"))
                                      ("upcase" "CLA" "UP:P0CL70" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Cla" "ONT:CELL-LINE" :ID "CVCL:E529"
                                        :NAME "CLA"))
                                      ("upcase" "COR" "UP:P17651" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Cor" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF16095" :NAME "COR"))
                                      ("upcase" "CREC" "UP:A1CTE6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("CreC" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:00753" :NAME "CREC family"))
                                      ("upcase" "DAL" "UP:P85120" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Dal" "ONT:CHEMICAL" :ID "CHEBI:15570"
                                        :NAME "D-alanine"))
                                      ("upcase" "DYRK" "UP:Q13627" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Dyrk" "ONT:GENE-PROTEIN" :ID
                                        "FPLX:DYRK" :NAME "DYRK"))
                                      ("upcase" "HAE" "UP:P47735" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Hae" "ONT:CELL-LINE" :ID "CVCL:0C12"
                                        :NAME "HA-E"))
                                      ("upcase" "HET" "UP:Q15424" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Het" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF06985" :NAME "HET"))
                                      ("upcase" "JUPITER" "UP:B3M0Y8" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Jupiter" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:01784" :NAME "JUPITER family"))
                                      ("upcase" "MPN" "UP:Q9BQR3" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("Mpn" "ONT:CANCER" :ID "NCIT:C4345"
                                        :NAME "myeloproliferative neoplasm"))
                                      ("orig" "SacI" "XFAM:PF09566" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT ORGANIZATION
                                       ("SacI" "ONT:PROFESSIONAL-ORGANIZATION"
                                        :ID "NCIT:C39511" :NAME
                                        "cancer therapy and research center"))
                                      ("upcase" "TERRA" "UP:Q8BG36" :OLD-CAT
                                       PROTEIN :NEW-CAT RNA
                                       ("Terra" "ONT:RNA" :ID "NCIT:C116964"
                                        :NAME
                                        "telomeric repeat-containing RNA"))
                                      ("upcase" "VIR" "UP:Q9W1R5" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Vir" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:04582" :NAME "vir family"))
                                      ("upcase" "CLN" "UP:Q9XGI7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cLN" "ONT:CELL-LINE" :ID "CVCL:3663"
                                        :NAME "CLN"))
                                      ("upcase" "HTK" "UP:P54760" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("hTK" "ONT:CELL-LINE" :ID "CVCL:2522"
                                        :NAME "HTK-"))))

(defparameter *NO-ID-REDEF* 'NIL)

(defparameter *NAMECAT-ID-MISMATCHES* '((MOLECULE ACID NIL :NEWUID
                                         "CHEBI:37527" :WORD "acide")
                                        (MOLECULE AGONIST NIL :NEWUID
                                         "CHEBI:48705" :WORD "agoniste")))

(defparameter *NO-RULE-REDEF* 'NIL)

(defparameter *NAME-ID-MISMATCHES* '((DRUG "ethionamide" "NCIT:C47522" :NEWUID
                                      "CHEBI:4885" :WORD "ETH")
                                     (DRUG "nitazoxanide" "NCIT:C47637" :NEWUID
                                      "MESH:C041747" :WORD "NTZ")
                                     (DRUG "racecadotril" "NCIT:C66503" :NEWUID
                                      "MESH:C049331" :WORD "acetorphan")
                                     (DRUG "adjuvant" "CHEBI:60809" :NEWUID
                                      "NCIT:C2140" :WORD "adj")
                                     (DRUG "cefotaxime" "NCIT:C354" :NEWUID
                                      "CHEBI:204928" :WORD "cefotaxima")
                                     (DRUG "heparin" "NCIT:C539" :NEWUID
                                      "CHEBI:28304" :WORD "heparina")
                                     (DRUG "ribavirin" "NCIT:C807" :NEWUID
                                      "CHEBI:63580" :WORD "ribavirine")
                                     (DRUG "motavizumab" "NCIT:C88584" :NEWUID
                                      "MESH:C506968" :WORD "Numax")
                                     (DRUG "gemcitabine" "MESH:C056507" :NEWUID
                                      "NCIT:C66876" :WORD "dFdC")
                                     (MOLECULE "thymidine" "PUBCHEM:5789"
                                      :NEWUID "CHEBI:17748" :WORD "dThd")))

(defparameter *PROT-FAM-REDEF* 'NIL)

(defparameter *VIOLATES-NO-PLURAL* 'NIL)

(defparameter *WORD-DIFF-POS-NAME* 'NIL)

(defparameter *PLURALS-OF-EXISTING-CATS* 'NIL)

(defparameter *DIFF-POS-OF-EXISTING-CATS* 'NIL)

(defparameter *PLURALS-OF-EXISTING-WORDS* '((BIO-ORGAN "cercariae"
                                             "BTO:0005513" :NAME "cercaria")
                                            (DRUG "phenols" "CHEBI:15882" :NAME
                                             "phenol")))

(defparameter *DIFF-POS-OF-EXISTING-WORDS* 'NIL)

(defparameter *SYNONYM-FOR-EXISTING-WORDS* '((DRUG "CDGP" "NCIT:C61099"
                                              "nedaplatin")
                                             (DISEASE "CINCA" "NCIT:C116380"
                                              "chronic infantile neurological cutaneous and articular syndrome")
                                             (MOLECULE "EER" "CHEBI:144557"
                                              "Glu-Glu-Arg")
                                             (DRUG "ETH" "CHEBI:4885"
                                              "ethionamide")
                                             (RNA "IRM" "HGNC:14574"
                                              "maternally expressed 8, small nucleolar RNA host gene")
                                             (DRUG "MEPC" "MESH:C570869"
                                              "2-methylphenyl cinnamate")
                                             (DRUG "NTZ" "MESH:C041747"
                                              "nitazoxanide")
                                             (DRUG "ZDV" "NCIT:C947"
                                              "zidovudine")
                                             (DRUG "acetorphan" "MESH:C049331"
                                              "racecadotril")
                                             (DRUG "adj" "NCIT:C2140"
                                              "adjuvant")
                                             (MOLECULE "aesculin" "CHEBI:4853"
                                              "esculin")
                                             (DRUG "amoxycillin" "NCIT:C237"
                                              "amoxicillin")
                                             (MOLECULE "antagonista"
                                              "CHEBI:48706" "antagonist")
                                             (MOLECULE "azote" "CHEBI:25555"
                                              "nitrogen atom")
                                             (MOLECULE "bichromate"
                                              "CHEBI:33141" "dichromate(2-)")
                                             (DRUG "carac" "NCIT:C505"
                                              "fluorouracil")
                                             (DRUG "cefotaxima" "CHEBI:204928"
                                              "cefotaxime")
                                             (MOLECULE "cisplatine"
                                              "CHEBI:27899" "cisplatin")
                                             (DRUG "heparina" "CHEBI:28304"
                                              "heparin")
                                             (DRUG "hyoscine" "NCIT:C47712"
                                              "scopolamine")
                                             (MOLECULE "lauroyl" "CHEBI:32359"
                                              "dodecanoyl group")
                                             (DRUG "ophenylenediamine"
                                              "MESH:C034193"
                                              "1,2-diaminobenzene")
                                             (MOLECULE "oxygene" "CHEBI:25805"
                                              "oxygen atom")
                                             (MOLECULE "phosphore"
                                              "CHEBI:28659" "phosphorus atom")
                                             (MOLECULE "pristinamycine"
                                              "CHEBI:85274" "pristinamycin")
                                             (DRUG "ribavirine" "CHEBI:63580"
                                              "ribavirin")
                                             (DRUG "sulfatrim" "NCIT:C909"
                                              "trimethoprim-sulfamethoxazole")
                                             (DRUG "Amoxicilline" "NCIT:C237"
                                              "amoxicillin")
                                             (BACTERIUM "Branhamella"
                                              "NCIT:C86009" "moraxella")
                                             (DRUG "Celsentri" "NCIT:C73144"
                                              "maraviroc")
                                             (DRUG "Epivir" "NCIT:C1471"
                                              "lamivudine")
                                             (DRUG "Hivid" "NCIT:C430"
                                              "zalcitabine")
                                             (MOLECULE "Ltryptophan"
                                              "CHEBI:16828" "L-tryptophan")
                                             (DRUG "Numax" "MESH:C506968"
                                              "motavizumab")
                                             (DRUG "Persantine" "NCIT:C445"
                                              "dipyridamole")
                                             (DRUG "PhosTag" "MESH:C514153"
                                              "1,3-bis(bis(pyridin-2-ylmethyl)amino)propan-2-ol")
                                             (DRUG "Retrovir" "NCIT:C947"
                                              "zidovudine")
                                             (MOLECULE "Sadenosylhomocysteine"
                                              "CHEBI:16680"
                                              "S-adenosyl-L-homocysteine")
                                             (DRUG "Streptavidinagarose"
                                              "MESH:C049538"
                                              "streptavidin-agarose")
                                             (DRUG "Sustiva" "NCIT:C29027"
                                              "efavirenz")
                                             (DRUG "Synvisc" "MESH:C049816"
                                              "hylan")
                                             (CELL-TYPE "Tlymphocytes"
                                              "BTO:0000782" "T-lymphocyte")
                                             (DRUG "Videx" "NCIT:C431"
                                              "didanosine")
                                             (DRUG "Viramune" "NCIT:C29277"
                                              "nevirapine")
                                             (DRUG "Zerit" "NCIT:C1428"
                                              "stavudine")
                                             (CELLULAR-LOCATION "cSMAC"
                                              "GO:0001772"
                                              "immunological synapse")
                                             (DRUG "dFdC" "NCIT:C66876"
                                              "gemcitabine")
                                             (MOLECULE "dThd" "CHEBI:17748"
                                              "thymidine")))

(defparameter *CATEGORY-MISMATCH-EXISTING-CATS* '((:ORIG-CAT DRUG :NEW-CAT
                                                   MOLECULE :NAME "inhibitor"
                                                   :NEWUID "CHEBI:35222" :WORD
                                                   "inhibiteur")
                                                  (:ORIG-CAT SMALL-MOLECULE
                                                   :NEW-CAT MOLECULE :NAME
                                                   "nucleoside" :NEWUID
                                                   "CHEBI:33838" :WORD
                                                   "nucleoside")
                                                  (:ORIG-CAT NUCLEOTIDE
                                                   :NEW-CAT MOLECULE :NAME
                                                   "dGDP" :NEWUID "CHEBI:28862"
                                                   :WORD "Dgdp")))

(defparameter *CATEGORY-MISMATCH-EXISTING-WORDS* '((:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "BG1" :NEWUID "CVCL:6570"
                                                    :WORD "BGI")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "4,4'-diaminodiphenylmethane"
                                                    :NEWUID "CHEBI:32506" :WORD
                                                    "DDM")
                                                   (:ORIG-CAT VACCINE :NEW-CAT
                                                    DRUG :NAME
                                                    "trivalent influenza vaccine"
                                                    :NEWUID "NCIT:C2643" :WORD
                                                    "TIV")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "amikacin"
                                                    :NEWUID "CHEBI:2637" :WORD
                                                    "amikacine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "amoxicillin" :NEWUID
                                                    "CHEBI:2676" :WORD
                                                    "amoxicilina")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "dihydromyricetin" :NEWUID
                                                    "CHEBI:28917" :WORD
                                                    "ampelopsin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "ampicillin"
                                                    :NEWUID "CHEBI:28971" :WORD
                                                    "ampicilline")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "bacitracin"
                                                    :NEWUID "CHEBI:28669" :WORD
                                                    "bacitracine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "cyclosporin A" :NEWUID
                                                    "CHEBI:4031" :WORD
                                                    "ciclosporine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "ciprofloxacin" :NEWUID
                                                    "CHEBI:100241" :WORD
                                                    "ciprofloxacine")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "cysteine" :NEWUID
                                                    "CHEBI:15356" :WORD
                                                    "cystein")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "phenylalanine" :NEWUID
                                                    "CHEBI:28044" :WORD
                                                    "fenilalanina")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT MOLECULE :NAME
                                                    "glycoprotein" :NEWUID
                                                    "CHEBI:17089" :WORD
                                                    "glycoproteine")
                                                   (:ORIG-CAT BIO-GROUPING
                                                    :NEW-CAT MOLECULE :NAME
                                                    "group" :NEWUID
                                                    "CHEBI:24433" :WORD
                                                    "groupe")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "isoleucine" :NEWUID
                                                    "CHEBI:24898" :WORD "hile")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "ivermectin"
                                                    :NEWUID "CHEBI:6078" :WORD
                                                    "ivermectine")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "3-methylcholanthrene"
                                                    :NEWUID "CHEBI:34342" :WORD
                                                    "methylcholanthrene")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "methicillin" :NEWUID
                                                    "CHEBI:6827" :WORD
                                                    "meticillin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "metronidazole" :NEWUID
                                                    "CHEBI:6909" :WORD
                                                    "metronidazol")
                                                   (:ORIG-CAT ORGANISM :NEW-CAT
                                                    BIO-ORGAN :NAME "plant"
                                                    :NEWUID "BTO:0001481" :WORD
                                                    "plantae")
                                                   (:ORIG-CAT VACCINE :NEW-CAT
                                                    DRUG :NAME
                                                    "trivalent influenza vaccine"
                                                    :NEWUID "NCIT:C2643" :WORD
                                                    "Flublok")
                                                   (:ORIG-CAT BIO-GROUPING
                                                    :NEW-CAT MOLECULE :NAME
                                                    "group" :NEWUID
                                                    "CHEBI:24433" :WORD
                                                    "Grupo")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "vancomycin"
                                                    :NEWUID "CHEBI:28001" :WORD
                                                    "Vancomycine")))

(defparameter *SUPPRESSED-REDEFS* '(("DDCT"
                                     ("DDCT" "ONT:GENE" :ID "HGNC:2732" :NAME
                                      "D-dopachrome tautomerase"))))

(defparameter *NON-BIO-DEFS* '(("AHRQ" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39304" :NAME
                                "agency for healthcare research and quality")
                               ("CDER" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82669" :NAME
                                "center for drug evaluation and research")
                               ("CDRH" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82670" :NAME
                                "center for devices and radiological health")
                               ("HCI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39422" :NAME
                                "huntsman cancer institute")
                               ("HGNC" "ONT:DATABASE" :ID "DB:6" :NAME "HGNC")
                               ("IACUC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19487" :NAME
                                "institutional animal care and use committee")
                               ("IRB" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C16741" :NAME
                                "institutional review board")
                               ("KCI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39328" :NAME
                                "barbara ann karmano cancer institute")
                               ("MHRA" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C142608" :NAME
                                "medicines and healthcare products regulatory agency")
                               ("NDRI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C126658" :NAME
                                "national disease research interchange")
                               ("NIMH" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C16894" :NAME
                                "national institute of mental health")
                               ("coculture" "ONT:REFERENTIAL-SEM" :ID
                                "BTO:0003143" :NAME "coculture")
                               ("Nanomaterials" "ONT:PROFESSIONAL-ORGANIZATION"
                                :ID "NCIT:C53671" :NAME "nanomaterials")
                               ("Sig" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19782" :NAME
                                "surveillance implementation group")))

