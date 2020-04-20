(in-package :sparser)

(defparameter *SUPPRESSED-HYPHENATED-NEW-WORDS* 'NIL)

(defparameter *SUPPRESSED-MOD-REDEFS* '(("upcase" "CFU"
                                         ("cfu" "ONT:MEASURE-UNIT" :ID
                                          "UO:0000210" :NAME
                                          "colony forming unit"))
                                        ("upcase" "DPD"
                                         ("dpd" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q12882" :NAME
                                          "Dihydropyrimidine dehydrogenase [NADP(+)]"))
                                        ("upcase" "ETC"
                                         ("etc" "ONT:PROTEIN" :ID "UP:P32940"
                                          :NAME "Endothelin-3 receptor"))
                                        ("upcase" "LAC"
                                         ("lac" "ONT:PROTEIN" :ID "NCIT:C70620"
                                          :NAME
                                          "lupus anticoagulant antibody"))
                                        ("upcase" "PGM"
                                         ("pgm" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q9SCY0" :NAME
                                          "Phosphoglucomutase, chloroplastic"))
                                        ("upcase" "STD"
                                         ("std"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C3365" :NAME
                                          "sexually transmitted disorder"))
                                        ("upcase" "GAII"
                                         ("GAii" "ONT:PROTEIN" :ID "UP:P29760"
                                          :NAME "Glucoamylase S2"))
                                        ("upcase" "HES"
                                         ("Hes" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:HES" :NAME "HES"))
                                        ("upcase" "NCS"
                                         ("Ncs" "ONT:PROTEIN" :ID "UP:P0A3R9"
                                          :NAME "Neocarzinostatin"))
                                        ("upcase" "NHE"
                                         ("Nhe" "ONT:GENE-PROTEIN" :ID
                                          "UP:P81242" :NAME
                                          "Non-hemolytic enterotoxin 105 kDa component"))
                                        ("downcase" "ors"
                                         ("ORs"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C116333" :NAME
                                          "oculo-respiratory syndrome"))
                                        ("upcase" "PCNS"
                                         ("PCNs" "ONT:PROTEIN" :ID "UP:Q7SZN0"
                                          :NAME
                                          "Venom prothrombin activator pseutarin-C non-catalytic subunit"))
                                        ("upcase" "PDX"
                                         ("Pdx" "ONT:PROTEIN" :ID "UP:P00259"
                                          :NAME "Putidaredoxin"))
                                        ("upcase" "SCA"
                                         ("Sca" "ONT:PROTEIN" :ID "UP:Q10992"
                                          :NAME
                                          "Cysteine proteinase inhibitor A"))))

(defparameter *ID-MISMATCH-REDEF* '(("upcase" "ACG" "UP:Q5JSL3"
                                     ("acg" "ONT:GENE-PROTEIN" :ID "HGNC:23483"
                                      :NAME "dedicator of cytokinesis 11"))
                                    ("orig" "caveolae" "GO:0005901"
                                     ("caveolae" "ONT:CELL-PART" :ID
                                      "UP:SL-0035" :NAME "Caveola"))
                                    ("upcase" "CNB" "UP:P63098"
                                     ("cnb" "ONT:GENE" :ID "NCIT:C52097" :NAME
                                      "PPP3R1"))
                                    ("upcase" "DFR" "UP:P51109"
                                     ("dfr" "ONT:PROTEIN" :ID "UP:P51102" :NAME
                                      "Dihydroflavonol 4-reductase"))
                                    ("upcase" "DPT" "UP:Q07507"
                                     ("dpt" "ONT:GENE" :ID "HGNC:3011" :NAME
                                      "dermatopontin"))
                                    ("upcase" "IFNAR" "UP:P17181"
                                     ("ifnar" "ONT:GENE" :ID "NCIT:C51352"
                                      :NAME "IFNAR1"))
                                    ("upcase" "KRC" "UP:Q5T1R4"
                                     ("krc" "ONT:GENE" :ID "HGNC:13561" :NAME
                                      "HIVEP zinc finger 3"))
                                    ("upcase" "MSU" "UP:P12694"
                                     ("msu" "ONT:GENE" :ID "HGNC:986" :NAME
                                      "branched chain keto acid dehydrogenase E1 subunit alpha"))
                                    ("upcase" "NHS" "UP:Q6T4R5"
                                     ("nhs" "ONT:GENE-PROTEIN" :ID "HGNC:7820"
                                      :NAME "NHS actin remodeling regulator"))
                                    ("upcase" "NSF" "UP:P46459"
                                     ("nsf" "ONT:GENE" :ID "HGNC:8016" :NAME
                                      "N-ethylmaleimide sensitive factor, vesicle fusing ATPase"))
                                    ("upcase" "PMF" "UP:P04280"
                                     ("pmf" "ONT:GENE" :ID "HGNC:9337" :NAME
                                      "proline rich protein BstNI subfamily 1 (gene/pseudogene)"))
                                    ("upcase" "TGA" "UP:O43435"
                                     ("tga" "ONT:GENE" :ID "NCIT:C75412" :NAME
                                      "TBX1"))
                                    ("upcase" "TOF" "UP:Q8TBJ5"
                                     ("tof" "ONT:GENE" :ID "HGNC:13506" :NAME
                                      "FEZ family zinc finger 2"))
                                    ("upcase" "XLS" "UP:Q9BUH6"
                                     ("xls" "ONT:GENE" :ID "HGNC:27849" :NAME
                                      "PAXX non-homologous end joining factor"))
                                    ("upcase" "AATF" "UP:Q9NY61"
                                     ("AATf" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:19235" :NAME
                                      "apoptosis antagonizing transcription factor"))
                                    ("upcase" "ACTB" "UP:P60709"
                                     ("Actb" "ONT:GENE-PROTEIN" :ID "HGNC:132"
                                      :NAME "actin beta"))
                                    ("upcase" "CTSD" "UP:P07339"
                                     ("Ctsd" "ONT:GENE-PROTEIN" :ID "HGNC:2529"
                                      :NAME "cathepsin D"))
                                    ("upcase" "EDA" "UP:Q92838"
                                     ("Eda" "ONT:GENE" :ID "HGNC:3157" :NAME
                                      "ectodysplasin A"))
                                    ("upcase" "FDX" "UP:P10109"
                                     ("Fdx" "ONT:GENE" :ID "HGNC:3638" :NAME
                                      "ferredoxin 1"))
                                    ("upcase" "GAPDH" "UP:P04406"
                                     ("Gapdh" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4141" :NAME
                                      "glyceraldehyde-3-phosphate dehydrogenase"))
                                    ("upcase" "GLRB" "UP:P48167"
                                     ("Glrb" "ONT:GENE-PROTEIN" :ID "HGNC:4329"
                                      :NAME "glycine receptor beta"))
                                    ("upcase" "GNE" "UP:Q9Y223"
                                     ("Gne" "ONT:GENE" :ID "HGNC:23657" :NAME
                                      "glucosamine (UDP-N-acetyl)-2-epimerase/N-acetylmannosamine kinase"))
                                    ("upcase" "GTX" "UP:Q9C056"
                                     ("Gtx" "ONT:GENE-PROTEIN" :ID "UP:P43685"
                                      :NAME "Gilatoxin"))
                                    ("upcase" "HRC" "UP:P23327"
                                     ("HrC" "ONT:GENE-PROTEIN" :ID "HGNC:5178"
                                      :NAME
                                      "histidine rich calcium binding protein"))
                                    ("upcase" "HVEM" "UP:Q92956"
                                     ("HvEM" "ONT:GENE" :ID "NCIT:C97844" :NAME
                                      "TNFRSF14"))
                                    ("upcase" "MBP" "UP:P02686"
                                     ("Mbp" "ONT:GENE-PROTEIN" :ID "HGNC:6925"
                                      :NAME "myelin basic protein"))
                                    ("upcase" "NONO" "UP:Q15233"
                                     ("Nono" "ONT:GENE-PROTEIN" :ID "HGNC:7871"
                                      :NAME
                                      "non-POU domain containing octamer binding"))
                                    ("upcase" "PBF" "UP:P53801"
                                     ("Pbf" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C117259" :NAME "ZNF395"))
                                    ("upcase" "PROT" "UP:Q99884"
                                     ("Prot" "ONT:GENE" :ID "HGNC:11054" :NAME
                                      "solute carrier family 6 member 7"))
                                    ("upcase" "PTPRG" "UP:P23470"
                                     ("Ptprg" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9671" :NAME
                                      "protein tyrosine phosphatase receptor type G"))
                                    ("upcase" "SCT" "UP:P09683"
                                     ("Sct" "ONT:GENE-PROTEIN" :ID "HGNC:10607"
                                      :NAME "secretin"))
                                    ("upcase" "TBN" "UP:Q7Z7C8"
                                     ("Tbn" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C30070" :NAME
                                      "transcription initiation factor TFIID subunit 8"))
                                    ("upcase" "TOX" "UP:O94900"
                                     ("Tox" "ONT:GENE-PROTEIN" :ID "HGNC:18988"
                                      :NAME
                                      "thymocyte selection associated high mobility group box"))
                                    ("upcase" "VIP" "UP:P01282"
                                     ("Vip" "ONT:GENE-PROTEIN" :ID "HGNC:12693"
                                      :NAME "vasoactive intestinal peptide"))
                                    ("upcase" "WHRN" "UP:Q9P202"
                                     ("Whrn" "ONT:GENE" :ID "HGNC:16361" :NAME
                                      "whirlin"))
                                    ("upcase" "MMAB" "UP:Q96EY8"
                                     ("mMAb" "ONT:GENE" :ID "HGNC:19331" :NAME
                                      "metabolism of cobalamin associated B"))
                                    ("upcase" "NAAA" "UP:Q02083"
                                     ("nAAA" "ONT:GENE" :ID "HGNC:736" :NAME
                                      "N-acylethanolamine acid amidase"))
                                    ("upcase" "PAGA" "UP:Q06830"
                                     ("pagA" "ONT:GENE" :ID "HGNC:9352" :NAME
                                      "peroxiredoxin 1"))
                                    ("upcase" "POLA" "UP:P09884"
                                     ("polA" "ONT:GENE" :ID "HGNC:9173" :NAME
                                      "DNA polymerase alpha 1, catalytic subunit"))
                                    ("upcase" "SCOC" "UP:Q9UIL1"
                                     ("scoC" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20335" :NAME
                                      "short coiled-coil protein"))))

(defparameter *ID-AND-CAT-MISMATCH* '(("orig" "TGT" "UP:Q9BXR0" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("TGT" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF01702" :NAME "TGT"))
                                      ("upcase" "ATC" "UP:Q9ZNV5" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("atc" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C2354" :NAME "timonacic"))
                                      ("upcase" "BCM" "UP:Q02223" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("bcm" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1154" :NAME "carbendazim"))
                                      ("upcase" "CAA" "UP:P04480" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("caa"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0006790" :NAME
                                        "cerebral amyloid angiopathy"))
                                      ("upcase" "CCO" "UP:P21817" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cco" "ONT:CELL-LINE" :ID "CVCL:4142"
                                        :NAME "CCO"))
                                      ("upcase" "EAE" "UP:Q03547" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("eae"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0001066" :NAME
                                        "experimental autoimmune encephalomyelitis"))
                                      ("upcase" "HSP" "NCIT:C16672" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("hsp" "ONT:CELL-LINE" :ID "CVCL:5291"
                                        :NAME "HS-P"))
                                      ("upcase" "INCA" "UP:Q5XLA6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("inca" "ONT:GENE-PROTEIN" :ID
                                        "FA:01853" :NAME "INCA family"))
                                      ("upcase" "PCI" "UP:P05154" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("pci" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01399" :NAME "PCI"))
                                      ("upcase" "PSU" "UP:P05460" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("psu" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF07455" :NAME "psu"))
                                      ("orig" "sars" "NCIT:C85064" :OLD-CAT
                                       CORONAVIRUS :NEW-CAT PROTEIN
                                       ("sars" "ONT:GENE" :ID "NCIT:C127843"
                                        :NAME "NR1I2"))
                                      ("upcase" "TMC" "UP:P46977" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("tmc" "ONT:GENE-PROTEIN" :ID "FA:04030"
                                        :NAME "TMC family"))
                                      ("upcase" "EPG" "UP:Q6UW88" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("epg" "ONT:CELL-LINE" :ID "CVCL:R841"
                                        :NAME "EPG"))
                                      ("upcase" "BSA" "UP:P02769" :OLD-CAT
                                       PROTEIN :NEW-CAT ORGANIZATION
                                       ("Bsa" "ONT:PROFESSIONAL-ORGANIZATION"
                                        :ID "NCIT:C39333" :NAME
                                        "board of scientific advisors NCI"))
                                      ("upcase" "CLINT" "UP:Q14677" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Clint" "ONT:CELL-LINE" :ID "CVCL:V933"
                                        :NAME "S006006"))
                                      ("upcase" "CPP" "UP:Q64755" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Cpp" "ONT:CHEMICAL" :ID "CHEBI:34603"
                                        :NAME "CPP"))
                                      ("upcase" "MPP" "UP:P25189" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("Mpp" "ONT:CELL" :ID "CO:0000837" :NAME
                                        "hematopoietic multipotent progenitor cell"))
                                      ("upcase" "PXE" "UP:O95255" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PxE" "ONT:CELL-LINE" :ID "CVCL:Z679"
                                        :NAME "BCIRL/AMCY-PxE-CLG"))
                                      ("upcase" "RNS" "UP:P16114" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("RNs"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:1001838" :NAME
                                        "renal nutcracker syndrome"))
                                      ("upcase" "SACI" "UP:Q96PN6" :OLD-CAT
                                       PROTEIN :NEW-CAT ORGANIZATION
                                       ("SacI" "ONT:PROFESSIONAL-ORGANIZATION"
                                        :ID "NCIT:C39511" :NAME
                                        "cancer therapy and research center"))
                                      ("upcase" "CSPC" "UP:P20718" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("cspC" "ONT:CANCER" :ID "NCIT:C153336"
                                        :NAME
                                        "castration-sensitive prostate carcinoma"))
                                      ("upcase" "FHC" "UP:P02794" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("fHC" "ONT:CELL-LINE" :ID "CVCL:3688"
                                        :NAME "FHC"))))

(defparameter *NO-ID-REDEF* 'NIL)

(defparameter *NAMECAT-ID-MISMATCHES* 'NIL)

(defparameter *NO-RULE-REDEF* 'NIL)
;;done
(defparameter *NAME-ID-MISMATCHES* '((DRUG "phenobarbital" "CHEBI:8069" :NEWUID
                                      "NCIT:C739" :WORD "pheno")
                                     (MOLECULE "vitamin E" "PUBCHEM:14985"
                                      :NEWUID "CHEBI:33234" :WORD "vitamine")
                                     (DRUG "bevacizumab" NIL :NEWUID
                                      "NCIT:C2039" :WORD "Avastin")
                                     (DRUG "trastuzumab" "MESH:D000068878"
                                      :NEWUID "NCIT:C1647" :WORD "Herceptin")
                                     (DRUG "cidofovir" "PUBCHEM:60613" :NEWUID
                                      "NCIT:C1600" :WORD "Vistide")))

(defparameter *PROT-FAM-REDEF* 'NIL)
;; done
(defparameter *VIOLATES-NO-PLURAL* '((DRUG "antimalarials" "CHEBI:38068"
                                      "antimalarial")
                                     (DRUG "antitussives" "CHEBI:51177"
                                      "antitussive")
                                     (DRUG "phytosterols" "NCIT:C28178"
                                      "phytosterol")))

(defparameter *WORD-DIFF-POS-NAME* 'NIL)

(defparameter *PLURALS-OF-EXISTING-CATS* 'NIL)

(defparameter *DIFF-POS-OF-EXISTING-CATS* 'NIL)
;;done
(defparameter *PLURALS-OF-EXISTING-WORDS* '((DRUG "antidepressants"
                                             "CHEBI:35469" :NAME
                                             "antidepressant")
                                            (DRUG "indoles" "MESH:C030374"
                                             :NAME "indole")
                                            (DRUG "pyrimidines" "MESH:C030986"
                                             :NAME "pyrimidine")
                                            (DRUG "tetracyclines" "NCIT:C865"
                                             :NAME "tetracycline")
                                            (VIRUS "Parvoviridae" "NCIT:C14299"
                                             :NAME "parvovirus")))

(defparameter *DIFF-POS-OF-EXISTING-WORDS* 'NIL)

(defparameter *SYNONYM-FOR-EXISTING-WORDS* '((VIRUS "CMV" "NCIT:C14196"
                                              "cytomegalovirus")
                                             (DRUG "DNP" "NCIT:C2478"
                                              "dinitrophenyl")
                                             (VIRUS "HTLVI" "NCIT:C14223"
                                              "HTLV-1")
                                             (UNIT-OF-MEASURE "MHO"
                                              "UO:0000264" "siemens")
                                             (DRUG "OPV" "NCIT:C96401"
                                              "oral polio vaccine")
                                             (MOLECULE "TEPA" "CHEBI:49798"
                                              "tetraethylenepentamine")
                                             (DRUG "aciclovir" "NCIT:C205"
                                              "acyclovir")
                                             (MOLECULE "caprylyl" "CHEBI:25650"
                                              "octanoyl group")
                                             (DRUG "carboxyfluorescein"
                                              "MESH:C024098"
                                              "6-carboxyfluorescein")
                                             (MOLECULE "deoxyadenosine"
                                              "CHEBI:16335" "adenosine")
                                             (MOLECULE "dicysteine"
                                              "CHEBI:17376" "cystine")
                                             (MOLECULE
                                              "dioleoylphosphatidylethanolamine"
                                              "CHEBI:60285"
                                              "dioleoyl phosphatidylethanolamine")
                                             (MOLECULE "fluoresceine"
                                              "CHEBI:31624" "fluorescein")
                                             (BIO-ORGAN "gravid" "BTO:0004733"
                                              "gravid adult")
                                             (VIRUS "lentivirinae"
                                              "NCIT:C14290" "lentivirus")
                                             (UNIT-OF-MEASURE "microlitre"
                                              "UO:0000101" "microliter")
                                             (UNIT-OF-MEASURE "nanolitre"
                                              "UO:0000102" "nanoliter")
                                             (DRUG "pheno" "NCIT:C739"
                                              "phenobarbital")
                                             (MOLECULE "phosphatidyl"
                                              "CHEBI:26025"
                                              "phosphatidyl group")
                                             (UNIT-OF-MEASURE "picolitre"
                                              "UO:0000103" "picoliter")
                                             (MOLECULE "thioether"
                                              "CHEBI:16385" "organic sulfide")
                                             (MOLECULE "vitamine" "CHEBI:33234"
                                              "vitamin E")
                                             (MOLECULE "AdoHcy" "CHEBI:16680"
                                              "S-adenosyl-L-homocysteine")
                                             (MOLECULE "Aqua" "CHEBI:15377"
                                              "water")
                                             (DRUG "Avastin" "NCIT:C2039"
                                              "bevacizumab")
                                             (DRUG "Biopharmaceuticals"
                                              "NCIT:C307" "biological agent")
                                             (DRUG "Glycyrrhiza" "NCIT:C61436"
                                              "licorice")
                                             (DRUG "Herceptin" "NCIT:C1647"
                                              "trastuzumab")
                                             (MOLECULE "Hoi" "CHEBI:29231"
                                              "hypoiodous acid")
                                             (UNIT-OF-MEASURE "Kda"
                                              "UO:0000222" "kilodalton")
                                             (ORGANISM "Macaca" "NCIT:C14231"
                                              "macaque")
                                             (ORGANISM "Macacus" "NCIT:C14231"
                                              "macaque")
                                             (RNA "Sirna" "NCIT:C2191"
                                              "small interfering RNA")
                                             (CELL-LINE "TZMbl" "CVCL:B478"
                                              "TZM-bl")
                                             (DRUG "Vistide" "NCIT:C1600"
                                              "cidofovir")
                                             (DRUG "Zovirax" "NCIT:C205"
                                              "acyclovir")
                                             (DRUG "aNI" "MESH:C100229"
                                              "amphetaminil")
                                             (DRUG "rDC" "NCIT:C1462"
                                              "radicicol")))

(defparameter *CATEGORY-MISMATCH-EXISTING-CATS* '((:ORIG-CAT SMALL-MOLECULE
                                                   :NEW-CAT MOLECULE :NAME
                                                   "nucleoside" :NEWUID
                                                   "CHEBI:33838" :WORD
                                                   "nucleoside")))

(defparameter *CATEGORY-MISMATCH-EXISTING-WORDS* '((:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "entecavir"
                                                    :NEWUID "NCIT:C65513" :WORD
                                                    "ETV")
                                                   (:ORIG-CAT NUCLEOBASE
                                                    :NEW-CAT MOLECULE :NAME
                                                    "guanine" :NEWUID
                                                    "CHEBI:16235" :WORD "GUA")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "amantadine"
                                                    :NEWUID "NCIT:C61632" :WORD
                                                    "amantidine")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT DRUG :NAME
                                                    "cyclin-dependent kinase inhibitor"
                                                    :NEWUID "NCIT:C2185" :WORD
                                                    "cdki")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "chloramphenicol" :NEWUID
                                                    "CHEBI:17698" :WORD
                                                    "chloromycetin")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "cysteine" :NEWUID
                                                    "CHEBI:15356" :WORD
                                                    "cystein")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "doxycycline" :NEWUID
                                                    "CHEBI:50845" :WORD
                                                    "doxycyclin")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "lidocaine"
                                                    :NEWUID "NCIT:C614" :WORD
                                                    "lignocaine")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "tryptophan" :NEWUID
                                                    "CHEBI:27897" :WORD
                                                    "tryptophane")))

(defparameter *SUPPRESSED-REDEFS* '(("IFNGR"
                                     ("IFNGR" "ONT:GENE-PROTEIN" :ID
                                      "FPLX:Interferon_gamma_receptor" :NAME
                                      "Interferon-gamma-receptor"))
                                    ("PFA"
                                     ("PFA" "ONT:MOLECULE" :ID "CHEBI:53371"
                                      :NAME
                                      "omega-hydroxypoly(furan-2,5-diylmethylene) macromolecule"))
                                    ("microsecond"
                                     ("microsecond" "ONT:TIME-UNIT" :ID
                                      "UO:0000029" :NAME "microsecond"))
                                    ("nanosecond"
                                     ("nanosecond" "ONT:TIME-UNIT" :ID
                                      "UO:0000150" :NAME "nanosecond"))
                                    ("taxon"
                                     ("taxon" "ONT:ORGANISM" :ID "NCIT:C14250"
                                      :NAME "organism"))
                                    ("pFL"
                                     ("pFL" "ONT:GENE-PROTEIN" :ID "GO:0008861"
                                      :NAME
                                      "formate C-acetyltransferase activity"))))

(defparameter *NON-BIO-DEFS* '(("COG" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39353" :NAME
                                "children's oncology group")
                               ("DSMB" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C94204" :NAME
                                "data and safety monitoring board")
                               ("FIGO" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C89808" :NAME
                                "federation of gynecology and obstetrics")
                               ("IACUC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19487" :NAME
                                "institutional animal care and use committee")
                               ("IRB" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C16741" :NAME
                                "institutional review board")
                               ("IUPAC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82878" :NAME
                                "international union of pure and applied chemistry")
                               ("MSKCC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39457" :NAME
                                "memorial sloan-kettering cancer center")
                               ("NCI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19202" :NAME
                                "national cancer institute")
                               ("NHLBI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82613" :NAME
                                "national heart, lung, and blood institute")
                               ("SCI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C105626" :NAME
                                "stanford cancer institute")
                               ("USDA" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C68708" :NAME
                                "united states department of agriculture")
                               ("ncbi" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C45799" :NAME
                                "national center for biotechnology information")
                               ("nlm" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82620" :NAME
                                "national library of medicine")
                               ("org" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19711" :NAME
                                "professional organization or group")
                               ("niaid" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19753" :NAME
                                "national institute of allergy and infectious disease")
                               ("Sig" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19782" :NAME
                                "surveillance implementation group")
                               ("nPCR" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C141462" :NAME
                                "national program of cancer registries")))

