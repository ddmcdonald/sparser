(in-package :sparser)

(defparameter *SUPPRESSED-HYPHENATED-NEW-WORDS* 'NIL)

(defparameter *SUPPRESSED-MOD-REDEFS* '(("upcase" "ARB" ;; added
                                         ("arb" "ONT:PROTEIN" :ID "UP:Q54NZ7"
                                          :NAME "Aldose reductase B"))
                                        ("upcase" "CPT" ;; added but questionable
                                         ("cpt" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q56148" :NAME
                                          "Chloramphenicol 3-O phosphotransferase"))
                                        ("upcase" "ETC" ;;treefrog
                                         ("etc" "ONT:PROTEIN" :ID "UP:P32940"
                                          :NAME "Endothelin-3 receptor"))
                                        ("upcase" "FDA" ;;bad making prof-def
                                         ("fda" "ONT:PROTEIN" :ID "UP:P81543"
                                          :NAME
                                          "Zinc-containing ferredoxin A"))
                                        ("upcase" "HOC" ;; added
                                         ("hoc" "ONT:PROTEIN" :ID "UP:P18056"
                                          :NAME
                                          "Highly immunogenic outer capsid protein {ECO:0000255|HAMAP-Rule:MF_04116}"))
                                        ("upcase" "MLE" ;; added but questionable
                                         ("mle" "ONT:PROTEIN" :ID "UP:Q43931"
                                          :NAME "Muconate cycloisomerase 1"))
                                        ("upcase" "NOS" ;;added
                                         ("nos" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:NOS" :NAME "NOS"))
                                        ("upcase" "PHAS"
                                         ("PHAs" "ONT:MOLECULE" :ID
                                          "CHEBI:53387" :NAME
                                          "poly(hydroxyalkanoate)"))
                                        ("upcase" "STD"
                                         ("Std"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C3365" :NAME
                                          "sexually transmitted disorder"))))

(defparameter *ID-MISMATCH-REDEF* '(("orig" "ASPM" "UP:Q8IZT6" ;; done
                                     ("ASPM" "ONT:GENE" :ID "HGNC:19048" :NAME
                                      "abnormal spindle microtubule assembly"))
                                    ("upcase" "ASC" "XFAM:PF00858.22"  ;;done
                                     ("asc" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00858" :NAME "ASC"))
                                    ("upcase" "CBR" "UP:P16152" ;;done
                                     ("cbr" "ONT:GENE-PROTEIN" :ID "UP:P21554"
                                      :NAME "Cannabinoid receptor 1"))
                                    ("upcase" "COMP" "UP:P49747" ;;done
                                     ("comp" "ONT:GENE-PROTEIN" :ID "HGNC:2227"
                                      :NAME
                                      "cartilage oligomeric matrix protein"))
                                    ("upcase" "GOV" "UP:O95716" ;;done
                                     ("gov" "ONT:GENE" :ID "HGNC:9779" :NAME
                                      "RAB3D, member RAS oncogene family"))
                                    ("upcase" "HPD" "UP:P32754" ;;done
                                     ("hpd" "ONT:GENE-PROTEIN" :ID "HGNC:5147"
                                      :NAME
                                      "4-hydroxyphenylpyruvate dioxygenase"))
                                    ("upcase" "ING" "XFAM:PF12998"
                                     ("ing" "ONT:PROTEIN-FAMILY" :ID "FA:01856"
                                      :NAME "ING family"))
                                    ("upcase" "PGRP" "UP:O75594" ;;done
                                     ("pgrp" "ONT:GENE" :ID "HGNC:8904" :NAME
                                      "peptidoglycan recognition protein 1"))
                                    ("upcase" "SYM" "UP:Q8MSU4" ;;done
                                     ("sym" "ONT:GENE" :ID "HGNC:22935" :NAME
                                      "symplekin"))
                                    ("upcase" "TERT" "UP:O14746" ;;done
                                     ("tert" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11730" :NAME
                                      "telomerase reverse transcriptase"))
                                    ("upcase" "TIF" "UP:Q06418" ;;done
                                     ("tif" "ONT:GENE" :ID "HGNC:12446" :NAME
                                      "TYRO3 protein tyrosine kinase"))
                                    ("upcase" "VARS" "UP:P26640" ;;done
                                     ("vars" "ONT:GENE" :ID "HGNC:12651" :NAME
                                      "valyl-tRNA synthetase 1"))
                                    ("upcase" "ACACA" "UP:Q13085" ;;don
                                     ("Acaca" "ONT:GENE-PROTEIN" :ID "HGNC:84"
                                      :NAME "acetyl-CoA carboxylase alpha"))
                                    ("upcase" "CALU" "UP:O43852" ;;done
                                     ("Calu" "ONT:GENE" :ID "HGNC:1458" :NAME
                                      "calumenin"))
                                    ("upcase" "DSCAM" "UP:O60469" ;;done
                                     ("Dscam" "ONT:GENE" :ID "HGNC:3039" :NAME
                                      "DS cell adhesion molecule"))
                                    ("upcase" "GDF" "UP:P09466" ;;done
                                     ("Gdf" "ONT:GENE" :ID "HGNC:8573" :NAME
                                      "progestagen associated endometrial protein"))
                                    ("upcase" "IARS" "UP:P41252" ;;done
                                     ("IARs" "ONT:GENE" :ID "HGNC:5330" :NAME
                                      "isoleucyl-tRNA synthetase 1"))
                                    ("upcase" "IFNA" "NCIT:C20494" ;; done
                                     ("IFNa" "ONT:GENE-PROTEIN" :ID "FPLX:IFNA"
                                      :NAME "IFNA"))
                                    ("upcase" "JUNO" "UP:A6ND01" ;; done
                                     ("Juno" "ONT:GENE" :ID "HGNC:32565" :NAME
                                      "IZUMO1 receptor, JUNO"))
                                    ("upcase" "LPO" "UP:P22079" ;; done
                                     ("Lpo" "ONT:GENE-PROTEIN" :ID "HGNC:6678"
                                      :NAME "lactoperoxidase"))
                                    ("upcase" "MAV" "UP:O95198" ;; done
                                     ("Mav" "ONT:GENE" :ID "HGNC:6353" :NAME
                                      "kelch like family member 2"))
                                    ("upcase" "NES" "UP:P48681" ;; done
                                     ("Nes" "ONT:GENE" :ID "HGNC:7756" :NAME
                                      "nestin"))
                                    ("upcase" "PHY" "XFAM:PF00360.18" ;; done
                                     ("Phy" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF00360" :NAME "PHY"))
                                    ("upcase" "PRKACA" "UP:P17612" ;; done
                                     ("Prkaca" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9380" :NAME
                                      "protein kinase cAMP-activated catalytic subunit alpha"))
                                    ("upcase" "TBP" "UP:P20226" ;; done
                                     ("Tbp" "ONT:GENE-PROTEIN" :ID "HGNC:11588"
                                      :NAME "TATA-box binding protein"))
                                    ("upcase" "NCBE" "UP:Q6U841" ;; done
                                     ("nCBE" "ONT:GENE" :ID "HGNC:13811" :NAME
                                      "solute carrier family 4 member 10"))
                                    ("upcase" "SCAI" "UP:Q8N9R8" ;; done
                                     ("sCAI" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:26709" :NAME
                                      "suppressor of cancer cell invasion"))))

(defparameter *ID-AND-CAT-MISMATCH* '(("upcase" "ATO" "UP:P48987" :OLD-CAT ;; done
                                       PROTEIN :NEW-CAT DRUG
                                       ("ato" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1005" :NAME "arsenic trioxide"))
                                      ("upcase" "BAM" "UP:Q9UQE7" :OLD-CAT ;; done
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("bam" "ONT:GENE-PROTEIN" :ID ;; done
                                        "NCIT:C21195" :NAME
                                        "bcl-2-like protein 11"))
                                      ("upcase" "CAL" "UP:Q9HD26" :OLD-CAT ;; done
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cal" "ONT:CELL-LINE" :ID "CVCL:E514"
                                        :NAME "CAL"))
                                      ("upcase" "CBS" "UP:P35520" :OLD-CAT ;; done
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cbs" "ONT:CELL-LINE" :ID "CVCL:D298"
                                        :NAME "CBS"))
                                      ("upcase" "CCMB" "UP:P93280" :OLD-CAT ;; done
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("ccmb" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF03379" :NAME "CcmB"))
                                      ("upcase" "COI" "UP:P00395" :OLD-CAT ;; done
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("coi" "ONT:GENE" :ID "NCIT:C128942"
                                        :NAME "MT-CO1"))
                                      ("orig" "dna" "CHEBI:16991" :OLD-CAT ;;done
                                       BIO-CHEMICAL-ENTITY :NEW-CAT BIO-METHOD
                                       ("dna" "ONT:PROCEDURE" :ID
                                        "NCIT:C135409" :NAME
                                        "deoxyribonucleic acid measurement"))
                                      ("upcase" "ELE" "UP:Q8GVZ6" :OLD-CAT ;;done
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ele" "ONT:CELL-LINE" :ID "CVCL:0C08"
                                        :NAME "EL-E"))
                                      ;;done
                                      ("orig" "gonad" "NCIT:C12725" :OLD-CAT
                                       BIO-ORGAN :NEW-CAT CELL-LINE
                                       ("gonad" "ONT:CELL-LINE" :ID "CVCL:WY78"
                                        :NAME "GON"))
                                      ;;done
                                      ("upcase" "IGB" "UP:P40259" :OLD-CAT ;;done
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("igb" "ONT:GENE" :ID "NCIT:C97425"
                                        :NAME "CD79B"))
                                      ("upcase" "LAT" "UP:O43561" :OLD-CAT;;done
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("lat" "ONT:CELL-LINE" :ID "CVCL:2101"
                                        :NAME "LAT"))
                                      ("upcase" "LCF" "UP:Q14005" :OLD-CAT;;done
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("lcf" "ONT:CELL-LINE" :ID "CVCL:S938"
                                        :NAME "LCF"))
                                      ("upcase" "REG" "UP:P05451" :OLD-CAT ;;done
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("reg" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C50964" :NAME "EXTL3"))
                                      ("upcase" "RST" "UP:Q96S37" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("rst" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF12174" :NAME "RST"))
                                      ("upcase" "STK" "UP:Q38836" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("stk" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C17325" :NAME ;;done
                                        "serine/Threonine protein kinase"))
                                      ("upcase" "STL" "UP:P0A8V2" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("stl" "ONT:GENE" :ID "NCIT:C97904"
                                        :NAME "RNF217-AS1"))
                                      ("upcase" "ALG" "UP:Q9ZNB7" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG ;;done
                                       ("Alg" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C62577" :NAME
                                        "antilymphocyte serum"))
                                      ("upcase" "EST" "UP:P18773" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Est" "ONT:GENE" :ID "NCIT:C51214" ;;done
                                        :NAME "MAP3K8"))
                                      ("upcase" "IFNAR" "UP:P17181" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Ifnar" "ONT:GENE" :ID "NCIT:C51352"
                                        :NAME "IFNAR1"))
                                      ("upcase" "ISWI" "UP:O60264" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Iswi" "ONT:GENE-PROTEIN" :ID
                                        "FA:03705" :NAME "ISWI subfamily"))
                                      ("upcase" "MXB" "UP:P20592" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("MxB" "ONT:GENE" :ID "NCIT:C101553"
                                        :NAME "MX2"))
                                      ("upcase" "RTX" "XFAM:PF02382" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CANCER ;;done
                                       ("RTx" "ONT:CANCER" :ID "NCIT:C82594"
                                        :NAME "refractory thrombocytopenia"))
                                      ("upcase" "SACI" "UP:Q96PN6" :OLD-CAT
                                       PROTEIN :NEW-CAT ORGANIZATION
                                       ("SacI" "ONT:PROFESSIONAL-ORGANIZATION"
                                        :ID "NCIT:C39511" :NAME
                                        "cancer therapy and research center"))
                                      ("upcase" "TECK" "UP:O15444" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Teck" "ONT:GENE" :ID "NCIT:C49742"
                                        :NAME "CCL25"))
                                      ("upcase" "TGT" "UP:Q9BXR0" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Tgt" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF01702" :NAME "TGT"))
                                      ("upcase" "TRT" "UP:O14746" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Trt" "ONT:GENE" :ID "NCIT:C52497"
                                        :NAME "TERT"))
                                      ("upcase" "UBX" "UP:P05048" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Ubx" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00789" :NAME "UBX"))
                                      ;;done
                                      ("upcase" "LNP" "UP:Q9C0E8" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("lnP" "ONT:GENE" :ID "NCIT:C126504"
                                        :NAME "NUSAP1"))
                                      ("upcase" "NSP" "UP:O95405" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("nsP" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C17692" :NAME "reticulon-1"))))
;; dealt with
(defparameter *NO-ID-REDEF* '(("orig" "polyprotein"
                               ("polyprotein" "ONT:PROTEIN" :ID "UP:C1JCT1"
                                :NAME "Polyprotein"))
                              ("orig" "vRNA"
                               ("vRNA" "ONT:RNA" :ID "HGNC:12654" :NAME
                                "vault RNA 1-1"))))

(defparameter *NAMECAT-ID-MISMATCHES* 'NIL)

(defparameter *NO-RULE-REDEF* 'NIL)
;; dealt with
(defparameter *NAME-ID-MISMATCHES* '((CELL-LINE "CCRF-CEM" "NCIT:C117114"
                                      :NEWUID "CVCL:0207" :WORD "CEM")
                                     (VIRUS "epstein-barr virus" "TI:10376" ;;done
                                      :NEWUID "NCIT:C14204" :WORD "EBV")
                                     (MOLECULE "formic acid" "PUBCHEM:284"
                                      :NEWUID "CHEBI:30751" :WORD "HCOOH")
                                     (VIRUS "herpes simplex virus" ;; done
                                      "NCIT:C14311" :NEWUID "NCIT:C112419"
                                      :WORD "HSV")
                                     (CELL-LINE "RERF-LC-MS" "EFO:0002852"
                                      :NEWUID "CVCL:1655" :WORD "LCMS") ;;done
                                     (PROTEIN-DOMAIN "RTC" "XFAM:PF01137.19"
                                      :NEWUID "XFAM:PF01137" :WORD "RCT") ;;bad
                                     (PROTEIN-DOMAIN "furin-like" ;;done
                                      "XFAM:PF00757.18" :NEWUID "XFAM:PF00757"
                                      :WORD "furinlike")
                                     (MOLECULE "propionate" "PUBCHEM:104745"
                                      :NEWUID "CHEBI:17272" :WORD "propanoate")
                                     (MOLECULE "acetic acid" "PUBCHEM:176"
                                      :NEWUID "CHEBI:15366" :WORD "AcOH")
                                     ;; should do better
                                     (BIO-METHOD "genotyping" "EFO:0000750" 
                                      :NEWUID "NCIT:C45447" :WORD "Genotype")))

(defparameter *PROT-FAM-REDEF* 'NIL)

(defparameter *VIOLATES-NO-PLURAL* 'NIL)

(defparameter *WORD-DIFF-POS-NAME* 'NIL)

(defparameter *PLURALS-OF-EXISTING-CATS* 'NIL)

(defparameter *DIFF-POS-OF-EXISTING-CATS* 'NIL)

;; dealt with
(defparameter *PLURALS-OF-EXISTING-WORDS* '((CELLULAR-LOCATION "cilia"
                                             "UP:SL-0066" :NAME "Cilium")
                                            (DRUG "heparins" "NCIT:C539" :NAME
                                             "heparin")
                                            (DRUG "methylamines" "MESH:C027451"
                                             :NAME "methylamine")
                                            (VIRUS "Herpesviridae"
                                             "NCIT:C14217" :NAME "herpesvirus")
                                            (VIRUS "Poxviridae" "NCIT:C14261"
                                             :NAME "poxvirus")))

(defparameter *DIFF-POS-OF-EXISTING-WORDS* 'NIL)

;;not actually suppressed unless it's also in one of the other lists
(defparameter *SYNONYM-FOR-EXISTING-WORDS* '((CELL-LINE "BHK" "CVCL:1914"
                                              "BHK-21")
                                             (CELL-LINE "CEM" "CVCL:0207"
                                              "CCRF-CEM")
                                             (DRUG "DMF" "NCIT:C63670"
                                              "dimethyl fumarate")
                                             (VIRUS "EBV" "NCIT:C14204"
                                              "epstein-barr virus")
                                             (MOLECULE "HCOOH" "CHEBI:30751"
                                              "formic acid")
                                             (DRUG "HPAI" "MESH:C016679"
                                              "polyacrylamide")
                                             (VIRUS "HSV" "NCIT:C112419"
                                              "herpes simplex virus")
                                             (CELL-LINE "KEMI" "CVCL:7199"
                                              "Kem-BL")
                                             (CELL-LINE "LCMS" "CVCL:1655"
                                              "RERF-LC-MS")
                                             (MOLECULE "NNN" "NCIT:C44414"
                                              "nitrosonornicotine")
                                             (MOLECULE "PTFE" "CHEBI:53251"
                                              "poly(tetrafluoroethylene)")
                                             (PROTEIN-DOMAIN "RCT"
                                              "XFAM:PF01137" "RTC")
                                             (DRUG "URD" "NCIT:C922" "uridine")
                                             (DRUG "aminomethane"
                                              "MESH:C027451" "methylamine")
                                             (DISEASE "bacteraemia"
                                              "EFO:0003033" "bacteriemia")
                                             (MOLECULE "benzyl" "CHEBI:22744"
                                              "benzyl group")
                                             (MOLECULE "betamercaptoethanol"
                                              "CHEBI:41218" "mercaptoethanol")
                                             (MOLECULE "callose" "CHEBI:37671"
                                              "(1->3)-beta-D-glucan")
                                             (MOLECULE "dodecyl" "CHEBI:23870"
                                              "dodecyl group")
                                             (PROTEIN-DOMAIN "furinlike"
                                              "XFAM:PF00757" "furin-like")
                                             (MOLECULE "nucleophile"
                                              "CHEBI:59740"
                                              "nucleophilic reagent")
                                             (MOLECULE "ophthalaldehyde"
                                              "CHEBI:70851" "phthalaldehyde")
                                             (MOLECULE "orthovanadate"
                                              "CHEBI:46442" "vanadate(3-)")
                                             (DISEASE "parasitemia"
                                              "EFO:0001067"
                                              "parasitic infection")
                                             (DRUG "polysulfone" "MESH:C017662"
                                              "polysulfone P 1700")
                                             (MOLECULE "propanoate"
                                              "CHEBI:17272" "propionate")
                                             (MOLECULE "sulfonyl" "CHEBI:29825"
                                              "sulfonyl group")
                                             (MOLECULE "thioglycolate"
                                              "CHEBI:30066"
                                              "thioglycolate(1-)")
                                             (MOLECULE "tripolyphosphate"
                                              "CHEBI:18036" "triphosphate(5-)")
                                             (BIO-METHOD "ttest" "NCIT:C53231"
                                              "t-test")
                                             (MOLECULE "AcOH" "CHEBI:15366"
                                              "acetic acid")
                                             (CELL-TYPE "Bcell" "CO:0000236"
                                              "B cell")
                                             (DRUG "Biologicals" "NCIT:C307"
                                              "biological agent")
                                             (BIO-METHOD "Endpoint"
                                              "NCIT:C82866"
                                              "endpoint value derivation technique")
                                             (MOLECULE "Fuc" "CHEBI:33984"
                                              "fucose")
                                             (BIO-METHOD "Genotype"
                                              "NCIT:C45447" "genotyping")
                                             (MOLECULE "Glc" "CHEBI:17234"
                                              "glucose")
                                             (MOLECULE "MeOH" "CHEBI:17790"
                                              "methanol")
                                             (DRUG "Mesalazine" "NCIT:C29249"
                                              "mesalamine")
                                             (DRUG "MonoQ" "MESH:C042855"
                                              "Mono Q")
                                             (MOLECULE "NeuAc" "CHEBI:17012"
                                              "N-acetylneuraminic acid")
                                             (MOLECULE
                                              "Polytetrafluoroethylene"
                                              "CHEBI:53251"
                                              "poly(tetrafluoroethylene)")
                                             (BIO-METHOD "RNAseq" "EFO:0002770"
                                              "transcription profiling by high throughput sequencing")
                                             (VIRUS "SARSCoV" "NCIT:C112432"
                                              "SARS coronavirus")
                                             (BIO-METHOD "qPCR" "NCIT:C51962"
                                              "real time PCR")))
;; dealt with
(defparameter *CATEGORY-MISMATCH-EXISTING-CATS* '((:ORIG-CAT SMALL-MOLECULE
                                                   :NEW-CAT MOLECULE :NAME
                                                   "nucleoside" :NEWUID
                                                   "CHEBI:33838" :WORD
                                                   "nucleoside")
                                                  (:ORIG-CAT MODIFIER :NEW-CAT
                                                   BIO-METHOD :NAME "sequencer"
                                                   :NEWUID "EFO:0003739" :WORD
                                                   "sequencer")
                                                  (:ORIG-CAT ENDURANT :NEW-CAT
                                                   ORGANISM :NAME "organism"
                                                   :NEWUID "NCIT:C14250" :WORD
                                                   "taxon")))

(defparameter *CATEGORY-MISMATCH-EXISTING-WORDS* '((:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "buthionine sulfoximine"
                                                    :NEWUID "NCIT:C1029" :WORD
                                                    "BSO")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "cidofovir"
                                                    :NEWUID "NCIT:C1600" :WORD
                                                    "CDV")
                                                   ;; actually prof org
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "BG1" :NEWUID "CVCL:6570"
                                                    :WORD "bgi")
                                                   ;;hard to deal with
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "phenylalanine" :NEWUID
                                                    "CHEBI:28044" :WORD
                                                    "phenylalanin")
                                                   ;;dealt with
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "ritonavir"
                                                    :NEWUID "NCIT:C1609" :WORD
                                                    "Norvir")
                                                   ;; need to deal with better
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "sumatriptan"
                                                    :NEWUID "CHEBI:10650" :WORD
                                                    "Sumatran")))

(defparameter *SUPPRESSED-REDEFS* '(("PEF"
                                     ("PEF" "ONT:MOLECULE" :ID "CHEBI:55310"
                                      :NAME
                                      "poly(2,5-ethylene furandicarboxylate)"))
                                    ("capsid"
                                     ("capsid" "ONT:PROTEIN" :ID "NCIT:C16383"
                                      :NAME "capsid protein"))
                                    ("rna"
                                     ("rna" "ONT:RNA" :ID "NCIT:C812" :NAME
                                      "ribonucleic acid"))
                                    ("crRNA"
                                     ("crRNA" "ONT:CELL-PART" :ID
                                      "CHEBI:134528" :NAME "CRISPR RNA"))))

(defparameter *NON-BIO-DEFS* '(("IACUC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19487" :NAME
                                "institutional animal care and use committee")
                               ("IRB" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C16741" :NAME
                                "institutional review board")
                               ("IUPAC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82878" :NAME
                                "international union of pure and applied chemistry")
                               ("NCI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19202" :NAME
                                "national cancer institute")
                               ("NHLBI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82613" :NAME
                                "national heart, lung, and blood institute")
                               ("NICHD" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19754" :NAME
                                "national institute of child health and human development")
                               ("cshl" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39335" :NAME
                                "cold spring harbor laboratory cancer center")
                                        ;done
                               ("globulin" "ONT:REFERENTIAL-SEM" :ID
                                "NCIT:C17125" :NAME "serum globulin")
                               ("jax" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39529" :NAME
                                "the jackson laboratory cancer center")
                               ("nanomaterials" "ONT:PROFESSIONAL-ORGANIZATION"
                                :ID "NCIT:C53671" :NAME "nanomaterials")
                               ("NCBI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C45799" :NAME
                                "national center for biotechnology information")
                               ("nlm" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82620" :NAME
                                "national library of medicine")
                               ("picosecond" "ONT:TIME-UNIT" :ID "UO:0000030"
                                :NAME "picosecond")
                               ("Sci" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C105626" :NAME
                                "stanford cancer institute")))

