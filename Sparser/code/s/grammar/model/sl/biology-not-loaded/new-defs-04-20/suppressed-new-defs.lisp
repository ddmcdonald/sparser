(in-package :sparser)

(defparameter *SUPPRESSED-HYPHENATED-NEW-WORDS* 'NIL)

(defparameter *SUPPRESSED-MOD-REDEFS* '(("downcase" "rubulaviruses"
                                         ("Rubulaviruses" "ONT:VIRUS" :ID
                                          "NCIT:C14326" :NAME "rubulavirus"))))

(defparameter *ID-MISMATCH-REDEF* 'NIL)

(defparameter *ID-AND-CAT-MISMATCH* '(("orig" "TCRs" "XFAM:PF03638" :OLD-CAT
                                       PROTEIN-DOMAIN :NEW-CAT PROTEIN-FAMILY
                                       ("TCRs" "ONT:GENE-PROTEIN" :ID
                                        "FPLX:TCR" :NAME "TCR"))
                                      ("upcase" "SOTA" "UP:Q9S3K0" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Sota" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF03968" :NAME "OstA"))))

(defparameter *NO-ID-REDEF* 'NIL)

(defparameter *NAMECAT-ID-MISMATCHES* '((BIO-METHOD SPECTROSCOPY NIL :NEWUID
                                         "NCIT:C17155" :WORD "SpectroDESIGNER")
                                        (BIO-METHOD SPECTROSCOPY NIL :NEWUID
                                         "NCIT:C17155" :WORD "SpectroCHIP")
                                        (CELLULAR-LOCATION DENDRITIC-SPINE
                                         "can't get rule" :NEWUID "UP:SL-0284"
                                         :WORD "sapien")
                                        (BIO-METHOD ARRAY NIL :NEWUID
                                         "EFO:0002698" :WORD "microarrray")
                                        (CELLULAR-LOCATION MEMBRANE
                                         "can't get rule" :NEWUID "UP:SL-0162"
                                         :WORD "mebrane")
                                        (MOLECULE PEPTIDE NIL :NEWUID
                                         "CHEBI:16670" :WORD "epetide")
                                        (CELLULAR-LOCATION ENDOSOME
                                         "can't get rule" :NEWUID "UP:SL-0101"
                                         :WORD "endsome")))

(defparameter *NO-RULE-REDEF* 'NIL)

(defparameter *NAME-ID-MISMATCHES* '((PROTEIN-DOMAIN "RTP" "XFAM:PF02334.14"
                                      :NEWUID "XFAM:PF02334" :WORD "rUTP")
                                     (DRUG "ribavirin" "NCIT:C807" :NEWUID
                                      "CHEBI:63580" :WORD "rBIV")
                                     (CELL-TYPE "cell" NIL :NEWUID "CO:0000000"
                                      :WORD "XCell")
                                     (CELL-LINE "SK-ES-1" "EFO:0002858" :NEWUID
                                      "CVCL:0627" :WORD "Skyes")
                                     (DRUG "dipyridamole" "NCIT:C445" :NEWUID
                                      "CHEBI:4653" :WORD "Plesanton")
                                     (DRUG "clofibrate" "NCIT:C378" :NEWUID
                                      "CHEBI:3750" :WORD "PeIB")
                                     (DRUG "risperidone" "NCIT:C29416" :NEWUID
                                      "CHEBI:8871" :WORD "Ospedale")
                                     (DRUG "mepolizumab" NIL :NEWUID
                                      "NCIT:C157376" :WORD "NucAway")
                                     (DRUG "mepolizumab" NIL :NEWUID
                                      "NCIT:C157376" :WORD "Nacalai")
                                     (PROTEIN-DOMAIN "LisH" "XFAM:PF08513.9"
                                      :NEWUID "XFAM:PF08513" :WORD "Lishui")
                                     (DRUG "lansoprazole" "NCIT:C29150" :NEWUID
                                      "CHEBI:6375" :WORD "Lanzhou")
                                     (MOLECULE "ibuprofen" "PUBCHEM:3672"
                                      :NEWUID "CHEBI:5855" :WORD "Innovagen")
                                     (DRUG "interferon alfacon-1" NIL :NEWUID
                                      "NCIT:C1766" :WORD "InVivoGen")
                                     (PROTEIN-DOMAIN "IGR" "XFAM:PF09597.8"
                                      :NEWUID "XFAM:PF09597" :WORD "IgVR")
                                     (DRUG "genistein" "CHEBI:28088" :NEWUID
                                      "NCIT:C1113" :WORD "Geneesmiddelen")
                                     (MOLECULE "ophiobolin A" "PUBCHEM:5281387"
                                      :NEWUID "CHEBI:7777" :WORD
                                      "Cochliobilus")
                                     (DRUG "nifuroxazide" "NCIT:C90982" :NEWUID
                                      "MESH:C013150" :WORD "BioFX")
                                     (MOLECULE "dodecanoate" "PUBCHEM:102182"
                                      :NEWUID "CHEBI:18262" :WORD "vulgate")
                                     (PROTEIN-DOMAIN "peptidase S8"
                                      "XFAM:PF00082.20" :NEWUID "XFAM:PF00082"
                                      :WORD "subtiles")
                                     (PROTEIN-DOMAIN "runt" "XFAM:PF00853.17"
                                      :NEWUID "XFAM:PF00853" :WORD "raint")
                                     (CELLULAR-LOCATION "pseudopodium"
                                      "UP:SL-0298" :NEWUID "GO:0031143" :WORD
                                      "pseudopods")
                                     (CELLULAR-LOCATION "mitochondrion"
                                      "UP:SL-0173" :NEWUID "GO:0005739" :WORD
                                      "mitochondira")
                                     (MOLECULE "kainic acid" "PUBCHEM:10255"
                                      :NEWUID "CHEBI:31746" :WORD "kinasource")
                                     (MOLECULE "myo-inositol" "PUBCHEM:892"
                                      :NEWUID "CHEBI:17268" :WORD "inspite")
                                     (BIO-METHOD "genotyping" "EFO:0000750"
                                      :NEWUID "NCIT:C45447" :WORD "gentoype")
                                     (DRUG "heparin" "NCIT:C539" :NEWUID
                                      "CHEBI:28304" :WORD "fluxus")
                                     (MOLECULE "ursolic acid" "PUBCHEM:64945"
                                      :NEWUID "CHEBI:9908" :WORD "erson")
                                     (PROTEIN-DOMAIN "CUB" "XFAM:PF00431.18"
                                      :NEWUID "XFAM:PF00431" :WORD "cbu")
                                     (DRUG "bortezomib" "CHEBI:52717" :NEWUID
                                      "NCIT:C1851" :WORD "borterzomib")
                                     (MOLECULE "deferoxamine mesylate"
                                      "PUBCHEM:24883429" :NEWUID "NCIT:C417"
                                      :WORD "YDFAFRDL")
                                     (MOLECULE "purvalanol A" "PUBCHEM:456214"
                                      :NEWUID "CHEBI:47600" :WORD "PIRV")
                                     (PROTEIN-DOMAIN "PATR" "XFAM:PF12951.5"
                                      :NEWUID "XFAM:PF12951" :WORD "PEKATR")
                                     (PROTEIN-DOMAIN "GAGA" "XFAM:PF09237.9"
                                      :NEWUID "XFAM:PF09237" :WORD "GGAGA")
                                     (PROTEIN-DOMAIN "DSL" "XFAM:PF01414.17"
                                      :NEWUID "XFAM:PF01414" :WORD "DSLR")
                                     (MOLECULE "1-chloro-2,4-dinitrobenzene"
                                      "PUBCHEM:6" :NEWUID "CHEBI:34718" :WORD
                                      "CLDB")))

(defparameter *PROT-FAM-REDEF* '((:OLD-ID NIL 'BEST
                                  ("dbEST" "ONT:GENE-PROTEIN" :ID "FPLX:BEST"
                                   :NAME "BEST"))))

(defparameter *VIOLATES-NO-PLURAL* '((CELL-LINE "Jurkats" "CVCL:0065" "Jurkat")
                                     (DRUG "trichothecenes" "MESH:C000630165"
                                      "trichothecene")
                                     (DRUG "tannins" "CHEBI:26848" "tannin")
                                     (DRUG "resiquimods" "NCIT:C63958"
                                      "resiquimod")
                                     (DRUG "immunoconjugates" "NCIT:C1512"
                                      "immunoconjugate")))

(defparameter *WORD-DIFF-POS-NAME* 'NIL)

(defparameter *PLURALS-OF-EXISTING-CATS* 'NIL)

(defparameter *DIFF-POS-OF-EXISTING-CATS* 'NIL)

(defparameter *PLURALS-OF-EXISTING-WORDS* '((BACTERIUM "Yersiniae"
                                             "NCIT:C86852" :NAME "yersinia")
                                            (VIRUS "Polyomaviridae"
                                             "NCIT:C14260" :NAME
                                             "polyomavirus")
                                            (VIRUS "Papillomaviridae"
                                             "NCIT:C14251" :NAME
                                             "papillomavirus")
                                            (BACTERIUM "Neisseriae"
                                             "NCIT:C76371" :NAME "neisseria")
                                            (BACTERIUM "Flavobacteria"
                                             "NCIT:C76320" :NAME
                                             "flavobacterium")
                                            (MOLECULE "CPPs" "CHEBI:34603"
                                             :NAME "CPP")
                                            (PROTEIN-DOMAIN "CBPs"
                                             "XFAM:PF12192" :NAME "CBP")
                                            (DISEASE "tetani" "EFO:0005593"
                                             :NAME "tetanus")
                                            (DRUG "saponins" "NCIT:C823" :NAME
                                             "saponin")
                                            (BACTERIUM "salmonellae"
                                             "NCIT:C76380" :NAME "salmonella")
                                            (BACTERIUM "rickettsiae"
                                             "NCIT:C76379" :NAME "rickettsia")
                                            (DISEASE "nevi" "EFO:0000625" :NAME
                                             "nevus")
                                            (BACTERIUM "lactobacilli"
                                             "NCIT:C76352" :NAME
                                             "lactobacillus")
                                            (DRUG "imiquimods" "NCIT:C1431"
                                             :NAME "imiquimod")
                                            (BACTERIUM "enterococci"
                                             "NCIT:C76311" :NAME
                                             "enterococcus")
                                            (MOLECULE "depsipeptides"
                                             "CHEBI:23643" :NAME
                                             "depsipeptide")))

(defparameter *DIFF-POS-OF-EXISTING-WORDS* 'NIL)

(defparameter *SYNONYM-FOR-EXISTING-WORDS* '((DRUG "wtOspA" "NCIT:C875"
                                              "thiotepa")
                                             (CANCER "uMT" "NCIT:C6481"
                                              "inflammatory myofibroblastic tumor")
                                             (RNA "sgRNA" "NCIT:C95952"
                                              "guide RNA")
                                             (BIO-METHOD "sFDR" "NCIT:C64214"
                                              "false discovery rate")
                                             (PROTEIN-DOMAIN "rUTP"
                                              "XFAM:PF02334" "RTP")
                                             (BIO-METHOD "rPCR" "NCIT:C18136"
                                              "reverse transcriptase-polymerase chain reaction")
                                             (DRUG "rDCs" "NCIT:C1462"
                                              "radicicol")
                                             (DRUG "rBIV" "CHEBI:63580"
                                              "ribavirin")
                                             (CELL-LINE "pWHsIm" "CVCL:F640"
                                              "HISM")
                                             (PROTEIN-DOMAIN "pTriex"
                                              "XFAM:PF18689" "PriX")
                                             (CELL-TYPE "pMNV" "BTO:0000751"
                                              "leukocyte")
                                             (DISEASE "pHCMV" "EFO:0001062"
                                              "cytomegalovirus infection")
                                             (MOLECULE "mmgD" "CHEBI:50161"
                                              "motexafin gadolinium")
                                             (UNIT-OF-MEASURE "milliQ"
                                              "UO:0010009" "milli")
                                             (CELL-LINE "mRMR" "CVCL:E779"
                                              "MMR")
                                             (DRUG "mCerulean" "CHEBI:59219"
                                              "ceruletide")
                                             (DRUG "hmAb" "NCIT:C1125"
                                              "hexamethylene bisacetamide")
                                             (CELL-LINE "eaeA" "CVCL:Z253"
                                              "BTI-EAA")
                                             (CELL-LINE "Ztm" "CVCL:B478"
                                              "TZM-bl")
                                             (BIO-COMPLEX "Ypic" "GO:0019035"
                                              "viral integration complex")
                                             (CELL-LINE "Xcm" "CVCL:R825"
                                              "CCM")
                                             (CELL-TYPE "XCell" "CO:0000000"
                                              "cell")
                                             (VIRUS "Whispovirus"
                                              "NCIT:C112029" "sapovirus")
                                             (CELL-LINE "Westburg" "CVCL:0584"
                                              "Jurkat Wurzburg")
                                             (DRUG "Wehrheim" "NCIT:C857"
                                              "teniposide")
                                             (MOLECULE "WHxAg" "CHEBI:73702"
                                              "wax")
                                             (CELL-LINE "WHeAg" "CVCL:1H01"
                                              "WAG")
                                             (MOLECULE "WETit" "CHEBI:33811"
                                              "hydrogen tritium oxide")
                                             (DRUG "Vybrant" "MESH:C099521"
                                              "2-aminobenzoic acid 2-(bromoacetyl)hydrazide")
                                             (VIRUS "ViroChip" "NCIT:C14219"
                                              "human immunodeficiency virus")
                                             (DRUG "Uddel" "MESH:C017662"
                                              "polysulfone P 1700")
                                             (MOLECULE "TriLux" "CHEBI:82625"
                                              "Trolox")
                                             (CELLULAR-LOCATION "Tij"
                                              "UP:SL-0265" "Tight junction")
                                             (DRUG "Tesque" "MESH:C061730"
                                              "N-(6-methoxy-8-quinolyl)-4-toluenesulfonamide")
                                             (CELLULAR-LOCATION "Techniplast"
                                              "GO:0009705"
                                              "plant-type vacuole membrane")
                                             (DRUG "TRIsol" "MESH:C411644"
                                              "trizol")
                                             (VIRUS "TBDev" "NCIT:C112422"
                                              "tick-borne encephalitis virus")
                                             (MOLECULE "SulfoSite"
                                              "CHEBI:17359" "sulfite")
                                             (BACTERIUM "Streptoccocus"
                                              "NCIT:C76383" "streptococcus")
                                             (DRUG "Streetsville"
                                              "CHEBI:472805" "ouabain")
                                             (BACTERIUM "Staphyloccocus"
                                              "NCIT:C62583" "staphylococcus")
                                             (BACTERIUM "Staphycoccus"
                                              "NCIT:C62583" "staphylococcus")
                                             (MOLECULE "Stabilzyme"
                                              "CHEBI:77966" "food stabiliser")
                                             (BACTERIUM "Sphingomonadales"
                                              "NCIT:C85964"
                                              "sphingomonadaceae")
                                             (CELL-LINE "SpFr" "CVCL:0I61"
                                              "PF-R")
                                             (CELL-LINE "Skyes" "CVCL:0627"
                                              "SK-ES-1")
                                             (CELL-LINE "Simina" "CVCL:0097"
                                              "SIM/EW27")
                                             (CELL-LINE "SigHMM" "CVCL:0097"
                                              "SIM/EW27")
                                             (VIRUS "Siadenovirus"
                                              "NCIT:C14179" "adenoviridae")
                                             (CELL-LINE "Siaa" "CVCL:F582"
                                              "SIA")
                                             (CELL-LINE "SiAr" "CVCL:F582"
                                              "SIA")
                                             (DRUG "Seeplex" "NCIT:C61754"
                                              "escitalopram")
                                             (DRUG "Sanquin" "CHEBI:3638"
                                              "chloroquine")
                                             (DISEASE "STIs" "NCIT:C3365"
                                              "sexually transmitted disorder")
                                             (CELLULAR-LOCATION "SEcv"
                                              "GO:0020003"
                                              "symbiont-containing vacuole")
                                             (VIRUS "Roniviridae"
                                              "NCIT:C112026" "reoviridae")
                                             (DRUG "Ribavarin" "NCIT:C807"
                                              "ribavirin")
                                             (BACTERIUM "Rhodobacterales"
                                              "NCIT:C118931"
                                              "rhodobacteraceae")
                                             (BACTERIUM "Rhizobiales"
                                              "NCIT:C85959" "rhizobiaceae")
                                             (VIRUS "Rhinvoirus" "NCIT:C77200"
                                              "rhinovirus")
                                             (VIRUS "Rhabdovirdae"
                                              "NCIT:C112027" "rhabdoviridae")
                                             (CELL-LINE "RNAIater" "CVCL:E846"
                                              "TER-ND")
                                             (UNIT-OF-MEASURE "PyMOL"
                                              "UO:0000042" "picomole")
                                             (BACTERIUM "Proprionibacterium"
                                              "NCIT:C86013"
                                              "propionibacterium")
                                             (BACTERIUM "Poribacteria"
                                              "NCIT:C76196" "proteobacteria")
                                             (MOLECULE "Pontoise" "CHEBI:25901"
                                              "pentose")
                                             (DRUG "Plesanton" "CHEBI:4653"
                                              "dipyridamole")
                                             (VIRUS "Picornavirales"
                                              "NCIT:C14256" "picornavirus")
                                             (MOLECULE "Phosfate" "CHEBI:26020"
                                              "phosphate")
                                             (VIRUS "Phaeovirus" "NCIT:C14299"
                                              "parvovirus")
                                             (DISEASE "Pesudorabies"
                                              "EFO:0007457" "pseudorabies")
                                             (DRUG "PeIB" "CHEBI:3750"
                                              "clofibrate")
                                             (DRUG "PPIs" "NCIT:C29723"
                                              "proton pump inhibitor")
                                             (CELL-LINE "PJdV" "CVCL:5858"
                                              "PDV")
                                             (MOLECULE "PBoV" "NCIT:C29849"
                                              "piperonyl butoxide")
                                             (CELL-LINE "PBMo" "CVCL:V647"
                                              "PMO")
                                             (DRUG "Ospedale" "CHEBI:8871"
                                              "risperidone")
                                             (DRUG "Osletamivir" "NCIT:C62061"
                                              "oseltamivir")
                                             (CELLULAR-LOCATION "Nucleid"
                                              "UP:SL-0187" "Nucleoid")
                                             (DRUG "NucAway" "NCIT:C157376"
                                              "mepolizumab")
                                             (MOLECULE "Nickell" "NCIT:C690"
                                              "nickel")
                                             (DRUG "Nextera" "NCIT:C1869"
                                              "valdecoxib")
                                             (CELL-LINE "Neugem" "CVCL:0R16"
                                              "NGM")
                                             (DRUG "Nacalai" "NCIT:C157376"
                                              "mepolizumab")
                                             (DRUG "NICs" "NCIT:C691"
                                              "nicotine")
                                             (VIRUS "MuCoV" "NCIT:C112357"
                                              "molluscum contagiosum virus")
                                             (DISEASE "Mqpa" "EFO:1000784"
                                              "microscopic polyangiitis")
                                             (CELL-LINE "Monw" "CVCL:M846"
                                              "MON")
                                             (ORGANISM "Microneb" "NCIT:C14329"
                                              "microorganism")
                                             (DRUG "MdBV" "NCIT:C74063"
                                              "mixed bacteria vaccine")
                                             (BIO-PROCESS "Mayinga"
                                              "GO:0007618" "mating")
                                             (DISEASE "MagAttract"
                                              "EFO:0001059" "cataract")
                                             (DISEASE "MSQuant" "NCIT:C35040"
                                              "strabismus")
                                             (CELL-LINE "MIMIx" "CVCL:Z366"
                                              "SfSWT-1")
                                             (DRUG "MAbs" "NCIT:C20401"
                                              "monoclonal antibody")
                                             (CELL-TYPE "Lympholyte"
                                              "BTO:0000775" "lymphocyte")
                                             (UNIT-OF-MEASURE "Lumina"
                                              "UO:0000118" "lumen")
                                             (DRUG "Lucigen" "NCIT:C286"
                                              "asparaginase")
                                             (MOLECULE "LogitBoost"
                                              "CHEBI:17716" "lactose")
                                             (MOLECULE "Logg" "CHEBI:74538"
                                              "Leu-Gly-Gly")
                                             (PROTEIN-DOMAIN "Lishui"
                                              "XFAM:PF08513" "LisH")
                                             (DRUG "Liponavir" "NCIT:C2095"
                                              "lopinavir")
                                             (DRUG "LipofectamineTM"
                                              "MESH:C086724" "Lipofectamine")
                                             (DRUG "Lipofectamin"
                                              "MESH:C086724" "Lipofectamine")
                                             (DRUG "Linezolide" "NCIT:C29158"
                                              "linezolid")
                                             (DRUG "Lanzhou" "CHEBI:6375"
                                              "lansoprazole")
                                             (DRUG "Lambaréné" "NCIT:C47456"
                                              "clofazimine")
                                             (DRUG "Lambarene" "NCIT:C47456"
                                              "clofazimine")
                                             (BACTERIUM "Klebsiela"
                                              "NCIT:C28165" "klebsiella")
                                             (CELL-LINE "Kaeo" "CVCL:W455"
                                              "KAO")
                                             (MOLECULE "Invotrogene"
                                              "CHEBI:50113" "androgen")
                                             (MOLECULE "Innovagen" "CHEBI:5855"
                                              "ibuprofen")
                                             (DISEASE "Infuenza" "EFO:0007328"
                                              "influenza")
                                             (DISEASE "Influenzy" "EFO:0007328"
                                              "influenza")
                                             (DRUG "InVivoGen" "NCIT:C1766"
                                              "interferon alfacon-1")
                                             (PROTEIN-DOMAIN "IgVR"
                                              "XFAM:PF09597" "IGR")
                                             (MOLECULE "Hennigsdorf"
                                              "CHEBI:16199" "urea")
                                             (BACTERIUM "Heliocobacter"
                                              "NCIT:C14296" "helicobacter")
                                             (DISEASE "HPeV" "EFO:0001668"
                                              "human papilloma virus infection")
                                             (VIRUS "HBoV" "NCIT:C14215"
                                              "hepatitis B virus")
                                             (UNIT-OF-MEASURE "Graur"
                                              "UO:0000134" "Gray")
                                             (CELL-LINE "Gpos" "CVCL:DF53"
                                              "GPS")
                                             (CELL-LINE "Gomen" "CVCL:1232"
                                              "GI-ME-N")
                                             (ORGANISM "Goettingen"
                                              "NCIT:C77102" "gottingen pig")
                                             (MOLECULE "Glyko" "CHEBI:13643"
                                              "glycol")
                                             (DRUG "Glutamax" "NCIT:C509"
                                              "flutamide")
                                             (DRUG "Geneesmiddelen"
                                              "NCIT:C1113" "genistein")
                                             (MOLECULE "GeneDeciper"
                                              "CHEBI:42768" "geneticin")
                                             (ORGANISM "Ganfornina"
                                              "NCIT:C76364"
                                              "california rabbit")
                                             (BACTERIUM "Gammaproteobacteria"
                                              "NCIT:C76196" "proteobacteria")
                                             (MOLECULE "Fluorchem"
                                              "CHEBI:24061" "fluorine atom")
                                             (SUBSTANCE "FluAID" "NCIT:C25278"
                                              "fluid")
                                             (VIRUS "Flaviridae" "NCIT:C112031"
                                              "filoviridae")
                                             (MOLECULE "Favorgen" "CHEBI:29365"
                                              "phosgene")
                                             (MOLECULE "Fastgene" "CHEBI:29365"
                                              "phosgene")
                                             (DRUG "Farmingen" "NCIT:C486"
                                              "ethinyl estradiol")
                                             (MOLECULE "Estado" "CHEBI:27007"
                                              "tin atom")
                                             (VIRUS "Enterovius" "NCIT:C14203"
                                              "enterovirus")
                                             (BACTERIUM "Enterobatecriaceae"
                                              "NCIT:C85932"
                                              "enterobacteriaceae")
                                             (BACTERIUM "Enterobactericeae"
                                              "NCIT:C85932"
                                              "enterobacteriaceae")
                                             (BACTERIUM "Enhydrobacter"
                                              "NCIT:C76310" "enterobacter")
                                             (DRUG "Enfurvitide" "NCIT:C2105"
                                              "enfuvirtide")
                                             (DRUG "ECGs" "NCIT:C29773"
                                              "pregnant mare serum gonadotropin")
                                             (MOLECULE "Duh" "CHEBI:16450"
                                              "2'-deoxyuridine")
                                             (CELL-LINE "Doumith" "CVCL:W397"
                                              "SMITH")
                                             (DRUG "Dnov" "MESH:C024132"
                                              "4,6-dinitro-o-cresol")
                                             (MOLECULE "Directigen" "NCIT:C859"
                                              "teratogen")
                                             (CELL-LINE "DeDuve" "CVCL:2886"
                                              "Dede")
                                             (DRUG "DaqPRO" "NCIT:C29307"
                                              "oxaprozin")
                                             (DRUG "DEPPs" "MESH:C038694"
                                              "dipalmitoylphosphatidylserine")
                                             (DRUG "Cuxhaven" "NCIT:C1518"
                                              "raloxifene")
                                             (DRUG "CsCl" "CHEBI:3478"
                                              "cefaclor")
                                             (CELL-LINE "CpGV" "CVCL:1G78"
                                              "CPG")
                                             (MOLECULE "Cochliobilus"
                                              "CHEBI:7777" "ophiobolin A")
                                             (VIRUS "CnMV" "NCIT:C14196"
                                              "cytomegalovirus")
                                             (BACTERIUM "Chlamyophila"
                                              "NCIT:C86254" "chlamydophila")
                                             (BIO-METHOD "Chipster"
                                              "EFO:0002692" "ChIP-seq")
                                             (DRUG "Chimerx" "NCIT:C509"
                                              "flutamide")
                                             (DRUG "Cesena" "NCIT:C617"
                                              "lomustine")
                                             (DRUG "Cergy" "NCIT:C17879"
                                              "cisplatin-E therapeutic implant")
                                             (CELLULAR-LOCATION "Centriprep"
                                              "UP:SL-0047" "Centromere")
                                             (MOLECULE "CellTiter"
                                              "CHEBI:82661"
                                              "diatomaceous earth")
                                             (CELLULAR-LOCATION "COVc"
                                              "UP:SL-0073"
                                              "Contractile vacuole")
                                             (DRUG "CFSEhigh" "MESH:C087165"
                                              "5-(6)-carboxyfluorescein diacetate succinimidyl ester")
                                             (DISEASE "CARIFs" "EFO:0003819"
                                              "dental caries")
                                             (DRUG "BuCoV" "NCIT:C73198"
                                              "buciclovir")
                                             (CELL-LINE "BstB" "CVCL:E505"
                                              "BTB")
                                             (DRUG "BlCm" "NCIT:C1154"
                                              "carbendazim")
                                             (DRUG "BioXcell" "NCIT:C1326"
                                              "doxorubicin hydrochloride")
                                             (MOLECULE "BioManager"
                                              "CHEBI:59163" "biomarker")
                                             (MOLECULE "BioImage" "CHEBI:59163"
                                              "biomarker")
                                             (DRUG "BioFX" "MESH:C013150"
                                              "nifuroxazide")
                                             (MOLECULE "Bethyl" "CHEBI:62801"
                                              "ethyl")
                                             (RNA "Bagos" "HGNC:40144"
                                              "CFTR antisense RNA 1")
                                             (DRUG "Aztecs" "NCIT:C947"
                                              "zidovudine")
                                             (MOLECULE "Azmax" "CHEBI:2955"
                                              "azithromycin")
                                             (MOLECULE "Axygen" "CHEBI:25805"
                                              "oxygen atom")
                                             (DRUG "Avestin" "NCIT:C2039"
                                              "bevacizumab")
                                             (DRUG "AtoG" "NCIT:C278"
                                              "anti-thymocyte globulin")
                                             (VIRUS "Asfarviridae"
                                              "NCIT:C112231" "astroviridae")
                                             (DRUG "Aravan" "NCIT:C1128"
                                              "leflunomide")
                                             (DRUG "Antimicrob" "NCIT:C258"
                                              "antibiotic")
                                             (MOLECULE "AntiJen" "CHEBI:59132"
                                              "antigen")
                                             (UNIT-OF-MEASURE "Angström"
                                              "UO:0000019" "angstrom")
                                             (MOLECULE "Aminco" "CHEBI:46882"
                                              "primary amino group")
                                             (DRUG "Ames" "MESH:C017501"
                                              "methylamphotericin B")
                                             (DISEASE "AmeliaView"
                                              "NCIT:C34370" "amelia")
                                             (CELL-LINE "Ambu" "CVCL:E443"
                                              "31227ABO")
                                             (MOLECULE "Altromin" "CHEBI:2955"
                                              "azithromycin")
                                             (DRUG "Algemeen" "MESH:C038905"
                                              "elemene")
                                             (DRUG "AdCMVEnv" "CHEBI:60809"
                                              "adjuvant")
                                             (CELL-LINE "AaLT" "CVCL:Y087"
                                              "ALT")
                                             (CELLULAR-LOCATION "AAAVd"
                                              "GO:0044754" "autolysosome")
                                             (DRUG "AAAVa" "NCIT:C1128"
                                              "leflunomide")
                                             (DRUG "zanavivir" "NCIT:C47786"
                                              "zanamivir")
                                             (DRUG "xietiao" "NCIT:C47529"
                                              "ezetimibe")
                                             (CELL-LINE "wuerzburg" "CVCL:0584"
                                              "Jurkat Wurzburg")
                                             (MOLECULE "vulgate" "CHEBI:18262"
                                              "dodecanoate")
                                             (MOLECULE "vraagstukken"
                                              "CHEBI:50745" "progestogen")
                                             (VIRUS "vaccinica" "NCIT:C14281"
                                              "vaccinia virus")
                                             (MOLECULE "thethe" "CHEBI:16385"
                                              "organic sulfide")
                                             (MOLECULE "tetricopeptide"
                                              "CHEBI:48030" "tetrapeptide")
                                             (PROTEIN-DOMAIN "subtiles"
                                              "XFAM:PF00082" "peptidase S8")
                                             (DRUG "staurospores" "NCIT:C1237"
                                              "staurosporine")
                                             (MOLECULE "soucrose" "CHEBI:17992"
                                              "sucrose")
                                             (DRUG "rimantidine" "NCIT:C61927"
                                              "rimantadine")
                                             (MOLECULE "ribonucleocapsid"
                                              "CHEBI:18254" "ribonucleoside")
                                             (MOLECULE "regeant" "CHEBI:33893"
                                              "reagent")
                                             (PROTEIN-DOMAIN "raint"
                                              "XFAM:PF00853" "runt")
                                             (CELLULAR-LOCATION "pseudopods"
                                              "GO:0031143" "pseudopodium")
                                             (ORGANISM "protists" "NCIT:C77914"
                                              "protista")
                                             (DRUG "polyacrilamide"
                                              "MESH:C016679" "polyacrylamide")
                                             (VIRUS "polioviruse" "NCIT:C14259"
                                              "poliovirus")
                                             (UNIT-OF-MEASURE "pmoles"
                                              "UO:0000042" "picomole")
                                             (DRUG "ployvinylidene"
                                              "MESH:C534904" "polyvinylamine")
                                             (UNIT-OF-MEASURE "picotiter"
                                              "UO:0000103" "picoliter")
                                             (DRUG "pentabarbitone"
                                              "NCIT:C61885" "pentobarbital")
                                             (VIRUS "paleovirus" "NCIT:C14259"
                                              "poliovirus")
                                             (DRUG "osetalmivir" "NCIT:C62061"
                                              "oseltamivir")
                                             (MOLECULE "orthovandate"
                                              "CHEBI:46442" "vanadate(3-)")
                                             (CELL-LINE "orst" "CVCL:8399"
                                              "OST")
                                             (MOLECULE "oher" "CHEBI:76721"
                                              "(E)-4-oxohex-2-enal")
                                             (CELLULAR-LOCATION "nucleocapids"
                                              "GO:0019013"
                                              "viral nucleocapsid")
                                             (MOLECULE "noaa" "CHEBI:21547"
                                              "N-acetyl-L-aspartic acid")
                                             (UNIT-OF-MEASURE "nmoles"
                                              "UO:0000041" "nanomole")
                                             (VIRUS "nidovirus" "NCIT:C112358"
                                              "nairovirus")
                                             (DISEASE "monkypox" "NCIT:C128421"
                                              "monkeypox")
                                             (CELLULAR-LOCATION "mitochondira"
                                              "GO:0005739" "mitochondrion")
                                             (CELLULAR-LOCATION "microvili"
                                              "UP:SL-0293" "Microvillus")
                                             (UNIT-OF-MEASURE "microisolater"
                                              "UO:0000101" "microliter")
                                             (ORGANISM "microbome"
                                              "NCIT:C68564" "microbiome")
                                             (DRUG "mgcv" "NCIT:C517"
                                              "ganciclovir")
                                             (DRUG "methylpredisolone"
                                              "NCIT:C647" "methylprednisolone")
                                             (DRUG "methycellulose"
                                              "NCIT:C29253" "methylcellulose")
                                             (MOLECULE "methanesulphonate"
                                              "CHEBI:25224" "methanesulfonate")
                                             (DISEASE "meninoencephalitis"
                                              "NCIT:C34813"
                                              "meningoencephalitis")
                                             (DISEASE "mengoencephalitis"
                                              "NCIT:C34813"
                                              "meningoencephalitis")
                                             (DRUG "maitainance" "NCIT:C626"
                                              "maytansine")
                                             (MOLECULE "lycopercici"
                                              "CHEBI:9630" "tomatine")
                                             (DRUG "lsoda" "NCIT:C76104"
                                              "lysergide")
                                             (DRUG "liqourice" "NCIT:C61436"
                                              "licorice")
                                             (DRUG "lipopolysacharide"
                                              "NCIT:C101788"
                                              "lipopolysaccharide")
                                             (MOLECULE "kinasource"
                                              "CHEBI:31746" "kainic acid")
                                             (CELL-TYPE "karatinocytes"
                                              "BTO:0000667" "keratinocyte")
                                             (MOLECULE "invitrogen"
                                              "CHEBI:50113" "androgen")
                                             (MOLECULE "inspite" "CHEBI:17268"
                                              "myo-inositol")
                                             (CELL-LINE "hgsc" "CVCL:M752"
                                              "GSC")
                                             (DISEASE "hfmdt" "NCIT:C128439"
                                              "hand foot and mouth disease")
                                             (DRUG "hexons" "NCIT:C75979"
                                              "hexamethonium")
                                             (VIRUS "herpesvirues"
                                              "NCIT:C14217" "herpesvirus")
                                             (CANCER "condylomata" "NCIT:C2960"
                                              "condyloma acuminatum")
                                             (MOLECULE "hematoxlin"
                                              "CHEBI:51686" "haematoxylin")
                                             (ORGANISM "helminthes"
                                              "NCIT:C125642" "helminth")
                                             (MOLECULE
                                              "glycosylphosphatidylinisotol"
                                              "CHEBI:24410"
                                              "glycosylphosphatidylinositol")
                                             (DRUG "glycolproteins"
                                              "NCIT:C1204" "polysaccharide-K")
                                             (BIO-METHOD "gentoype"
                                              "NCIT:C45447" "genotyping")
                                             (BIO-METHOD "genotypesin"
                                              "EFO:0000750" "genotyping")
                                             (DRUG "geldanamcyin" "NCIT:C1112"
                                              "geldanamycin")
                                             (DRUG "gancclovir" "NCIT:C517"
                                              "ganciclovir")
                                             (DRUG "fluxus" "CHEBI:28304"
                                              "heparin")
                                             (MOLECULE "fluoreoscein"
                                              "CHEBI:31624" "fluorescein")
                                             (MOLECULE "ethidum" "CHEBI:42478"
                                              "ethidium")
                                             (MOLECULE "erson" "CHEBI:9908"
                                              "ursolic acid")
                                             (MOLECULE "endotoxines"
                                              "NCIT:C50918" "endotoxin")
                                             (MOLECULE "docecyl" "CHEBI:23870"
                                              "dodecyl group")
                                             (MOLECULE "disulphides"
                                              "CHEBI:48343" "disulfide")
                                             (MOLECULE "disulphide"
                                              "CHEBI:48343" "disulfide")
                                             (DISEASE "distocia" "EFO:1000911"
                                              "dystocia")
                                             (MOLECULE "deoxycholat"
                                              "CHEBI:23614" "deoxycholate")
                                             (MOLECULE "deoxicholate"
                                              "CHEBI:23614" "deoxycholate")
                                             (VIRUS "cyotomegalovirus"
                                              "NCIT:C14196" "cytomegalovirus")
                                             (MOLECULE "chlorophorm"
                                              "NCIT:C29815" "chloroform")
                                             (DRUG "chaloramphenicol"
                                              "NCIT:C363" "chloramphenicol")
                                             (PROTEIN-DOMAIN "cbu"
                                              "XFAM:PF00431" "CUB")
                                             (MOLECULE "cabomoyl" "CHEBI:33100"
                                              "carbamoyl")
                                             (DRUG "borterzomib" "NCIT:C1851"
                                              "bortezomib")
                                             (CELL-TYPE "blastp" "BTO:0000125"
                                              "blast cell")
                                             (MOLECULE "blastocidin"
                                              "CHEBI:22905" "blasticidin")
                                             (MOLECULE "bisbenzidine"
                                              "NCIT:C44335" "benzidine")
                                             (DRUG "biphoton" "CHEBI:15956"
                                              "biotin")
                                             (MOLECULE "bioimager"
                                              "CHEBI:59163" "biomarker")
                                             (ORGANISM "avain" "NCIT:C14189"
                                              "aves")
                                             (DRUG "atimepazole" "NCIT:C72921"
                                              "atipamezole")
                                             (ORGANISM "archea" "NCIT:C61092"
                                              "archaea")
                                             (VIRUS "archaeovirus"
                                              "NCIT:C112272" "echovirus")
                                             (ORGANISM "archae" "NCIT:C61092"
                                              "archaea")
                                             (MOLECULE "arabosinide"
                                              "CHEBI:22601" "arabinoside")
                                             (BIO-METHOD "aquantile"
                                              "NCIT:C48920" "quantile")
                                             (DRUG "antimicrobials" "NCIT:C258"
                                              "antibiotic")
                                             (VIRUS "adenovirsuses"
                                              "NCIT:C14179" "adenoviridae")
                                             (DRUG "acepromazin" "NCIT:C77568"
                                              "acepromazine")
                                             (DRUG "absoft" "MESH:C002010"
                                              "4-(2-aminoethyl)benzenesulfonylfluoride")
                                             (MOLECULE "YDFAFRDL" "NCIT:C417"
                                              "deferoxamine mesylate")
                                             (CELL-LINE "WSIB" "CVCL:J514"
                                              "WSB")
                                             (CELL-LINE "WRAIR" "CVCL:E846"
                                              "TER-ND")
                                             (CELL-LINE "WPSI" "CVCL:4892"
                                              "PS-1 [Human urinary bladder carcinoma]")
                                             (VIRUS "WHBV" "NCIT:C124253"
                                              "woodchuck hepatitis virus")
                                             (CELL-LINE "WAIFW" "CVCL:1H00"
                                              "WAF")
                                             (MOLECULE "VWR" "CHEBI:140422"
                                              "VR nerve agent")
                                             (CELL-LINE "VTM" "CVCL:1G80"
                                              "CTM")
                                             (CELL-LINE "VCCC" "CVCL:2426"
                                              "CRFK")
                                             (CELL-LINE "UTMB" "CVCL:6F95"
                                              "TmB")
                                             (CELL-LINE "TTW" "CVCL:1774" "TT")
                                             (DRUG "TSEQ" "MESH:C061730"
                                              "N-(6-methoxy-8-quinolyl)-4-toluenesulfonamide")
                                             (CELL-LINE "TMMU" "CVCL:1894"
                                              "TMM")
                                             (MOLECULE "TBY" "CHEBI:30355"
                                              "tert-butyl group")
                                             (MOLECULE "TAOC" "CHEBI:33228"
                                              "TOAC")
                                             (ORGANISM "SWPV" "NCIT:C15062"
                                              "SWV mouse")
                                             (CELL-LINE "SEVI" "CVCL:5943"
                                              "SVI")
                                             (CELL-LINE "RWYC" "CVCL:4339"
                                              "WRC")
                                             (MOLECULE "RSRR" "CHEBI:16385"
                                              "organic sulfide")
                                             (MOLECULE "RRSRR" "CHEBI:16385"
                                              "organic sulfide")
                                             (BIO-COMPLEX "RJC" "GO:0035145"
                                              "exon-exon junction complex")
                                             (CELL-LINE "REWH" "CVCL:1650"
                                              "Reh")
                                             (CANCER "RCKC" "EFO:0000681"
                                              "renal cell carcinoma")
                                             (BIO-METHOD "RAPDF" "EFO:0004167"
                                              "RAPD")
                                             (MOLECULE "PTTV" "CHEBI:3088"
                                              "bilanafos")
                                             (BIO-ORGAN "PPSY" "EFO:0003397"
                                              "hypopharyngeal sense organ")
                                             (MOLECULE "PIRV" "CHEBI:47600"
                                              "purvalanol A")
                                             (PROTEIN-DOMAIN "PEKATR"
                                              "XFAM:PF12951" "PATR")
                                             (MOLECULE "PBNV" "CHEBI:27889"
                                              "lead(0)")
                                             (MOLECULE "PAUP" "CHEBI:53758"
                                              "PAP")
                                             (CELL-LINE "NGHA" "EFO:0002777"
                                              "Normal Human Astrocytes")
                                             (DRUG "MSCE" "NCIT:C91039"
                                              "metergoline")
                                             (DRUG "MOWSE" "MESH:C035456"
                                              "di-beta-(morpholinoethyl)selenide")
                                             (VIRUS "MACV" "NCIT:C73535"
                                              "merkel cell polyomavirus")
                                             (CELL-LINE "LYQB" "CVCL:4701"
                                              "CHO-LY-B")
                                             (MOLECULE "LTQTM" "CHEBI:24995"
                                              "lactam")
                                             (DRUG "LSDV" "NCIT:C76104"
                                              "lysergide")
                                             (CELL-LINE "LNYV" "CVCL:VI00"
                                              "LN-V")
                                             (CELL-LINE "LNCX" "CVCL:9578"
                                              "LNC")
                                             (CANCER "JMOL" "NCIT:C9233"
                                              "juvenile myelomonocytic leukemia")
                                             (CELL-LINE "JWMT" "CVCL:2077"
                                              "JIMT-1")
                                             (CELL-LINE "JEM" "CVCL:2030"
                                              "EJM")
                                             (VIRUS "JCVI" "NCIT:C14229"
                                              "JC virus")
                                             (CELL-LINE "JCQHC" "CVCL:M093"
                                              "JHC")
                                             (DRUG "IPMA" "NCIT:C47680"
                                              "potassium iodide")
                                             (CELL-LINE "ICFA" "CVCL:M423"
                                              "ICF")
                                             (MOLECULE "IATA" "NCIT:C44331"
                                              "amitrole")
                                             (CELL-LINE "IAEC" "CVCL:X373"
                                              "IAC")
                                             (BIO-PROCESS "HRRRR" "GO:0000724"
                                              "double-strand break repair via homologous recombination")
                                             (VIRUS "HPMV" "NCIT:C125640"
                                              "human metapneumovirus")
                                             (CANCER "HLCV" "NCIT:C7401"
                                              "hairy cell leukemia variant")
                                             (CANCER "GTY" "NCIT:C4699"
                                              "gestational trophoblastic tumor")
                                             (CELL-LINE "GJT" "CVCL:Z599"
                                              "GJR")
                                             (CELL-LINE "GJRB" "CVCL:Z599"
                                              "GJR")
                                             (PROTEIN-DOMAIN "GGAGA"
                                              "XFAM:PF09237" "GAGA")
                                             (VIRUS "FLUV" "NCIT:C53454"
                                              "influenza A virus")
                                             (CELL-LINE "FKL" "CVCL:9T05"
                                              "FLK")
                                             (PROTEIN-DOMAIN "FETP"
                                              "XFAM:PF07504" "FTP")
                                             (CELL-LINE "EMEA" "CVCL:L350"
                                              "Ema")
                                             (CELL-LINE "ELIE" "CVCL:0C08"
                                              "EL-E")
                                             (DRUG "ELDKWA" "NCIT:C648"
                                              "methyltestosterone")
                                             (MOLECULE "EEEV" "CHEBI:73493"
                                              "Glu-Glu-Glu")
                                             (PROTEIN-DOMAIN "DSLR"
                                              "XFAM:PF01414" "DSL")
                                             (CELL-LINE "DPV" "CVCL:5858"
                                              "PDV")
                                             (CELL-LINE "DHOV" "CVCL:E562"
                                              "DHO")
                                             (MOLECULE "DDW" "CHEBI:16598"
                                              "DDE")
                                             (DRUG "CVBD" "NCIT:C118452"
                                              "cannabidiol")
                                             (CELL-LINE "CPEG" "CVCL:1G78"
                                              "CPG")
                                             (MOLECULE "CLDB" "CHEBI:34718"
                                              "1-chloro-2,4-dinitrobenzene")
                                             (BIO-METHOD "CIDM" "NCIT:C48061"
                                              "collision-induced dissociation")
                                             (CELL-LINE "CCUG" "CVCL:R838"
                                              "CCG")
                                             (CELL-LINE "CCGV" "CVCL:R838"
                                              "CCG")
                                             (CELL-LINE "AMRC" "CVCL:IW83"
                                              "ARM-C")))

(defparameter *CATEGORY-MISMATCH-EXISTING-CATS* '((:ORIG-CAT
                                                   EXPERIMENTAL-CONDITION
                                                   :NEW-CAT SUBSTANCE :NAME
                                                   "medium" :NEWUID
                                                   "NCIT:C48164" :WORD
                                                   "mediumP")
                                                  (:ORIG-CAT BIO-RHETORICAL
                                                   :NEW-CAT PROTEIN-DOMAIN
                                                   :NAME "START" :NEWUID
                                                   "XFAM:PF01852" :WORD
                                                   "Tstart")
                                                  (:ORIG-CAT MODIFIER :NEW-CAT
                                                   BIO-METHOD :NAME "sequencer"
                                                   :NEWUID "EFO:0003739" :WORD
                                                   "Sequencher")
                                                  (:ORIG-CAT MOLECULE :NEW-CAT
                                                   DRUG :NAME "drug" :NEWUID
                                                   "CHEBI:23888" :WORD
                                                   "Medicina")
                                                  (:ORIG-CAT PROTEIN-DOMAIN
                                                   :NEW-CAT MOLECULE :NAME
                                                   "epitope" :NEWUID
                                                   "CHEBI:53000" :WORD
                                                   "Mapitope")
                                                  (:ORIG-CAT CELLULAR-PROCESS
                                                   :NEW-CAT PROTEIN-DOMAIN
                                                   :NAME "death" :NEWUID
                                                   "XFAM:PF00531" :WORD
                                                   "Deathit")
                                                  (:ORIG-CAT DISEASE :NEW-CAT
                                                   CANCER :NAME "cancer"
                                                   :NEWUID "EFO:0000311" :WORD
                                                   "Câncer")
                                                  (:ORIG-CAT BIO-PREDICATION
                                                   :NEW-CAT MOLECULE :NAME
                                                   "chemical" :NEWUID
                                                   "NCIT:C48807" :WORD
                                                   "Chemicon")
                                                  (:ORIG-CAT BIO-METHOD
                                                   :NEW-CAT ORGANISM :NAME
                                                   "beagle" :NEWUID
                                                   "NCIT:C53897" :WORD
                                                   "Bogale")
                                                  (:ORIG-CAT ENDURANT :NEW-CAT
                                                   ORGANISM :NAME "organism"
                                                   :NEWUID "NCIT:C14250" :WORD
                                                   "taxa")
                                                  (:ORIG-CAT
                                                   BIO-CHEMICAL-ENTITY :NEW-CAT
                                                   MOLECULE :NAME "substrate"
                                                   :NEWUID "NCIT:C120264" :WORD
                                                   "substract")
                                                  (:ORIG-CAT CELLULAR-PROCESS
                                                   :NEW-CAT BIO-PROCESS :NAME
                                                   "senescence" :NEWUID
                                                   "NCIT:C17467" :WORD
                                                   "senescense")
                                                  (:ORIG-CAT SMALL-MOLECULE
                                                   :NEW-CAT MOLECULE :NAME
                                                   "nucleotide" :NEWUID
                                                   "CHEBI:36976" :WORD
                                                   "nuclotide")
                                                  (:ORIG-CAT PROTEIN-DOMAIN
                                                   :NEW-CAT MOLECULE :NAME
                                                   "epitope" :NEWUID
                                                   "CHEBI:53000" :WORD
                                                   "eiptope")
                                                  (:ORIG-CAT PROTEIN :NEW-CAT
                                                   MOLECULE :NAME "effector"
                                                   :NEWUID "CHEBI:35224" :WORD
                                                   "effecter")
                                                  (:ORIG-CAT BIO-QUALITY
                                                   :NEW-CAT BIO-PROCESS :NAME
                                                   "behavior" :NEWUID
                                                   "GO:0007610" :WORD
                                                   "behaivour")
                                                  (:ORIG-CAT BIO-METHOD
                                                   :NEW-CAT PROTEIN-DOMAIN
                                                   :NAME "LSM" :NEWUID
                                                   "XFAM:PF01423" :WORD
                                                   "WLSMV")
                                                  (:ORIG-CAT NIL :NEW-CAT
                                                   CELL-LINE :NAME "VG" :NEWUID
                                                   "CVCL:X927" :WORD "VZG")
                                                  (:ORIG-CAT BIO-RHETORICAL
                                                   :NEW-CAT BIO-METHOD :NAME
                                                   "mean" :NEWUID "NCIT:C53319"
                                                   :WORD "QMEAN")
                                                  (:ORIG-CAT
                                                   PREPOSITIONAL-OPERATOR
                                                   :NEW-CAT CELL-LINE :NAME
                                                   "OF" :NEWUID "CVCL:M621"
                                                   :WORD "OWF")
                                                  (:ORIG-CAT SCALAR-ATTRIBUTE
                                                   :NEW-CAT CELL-LINE :NAME
                                                   "AGE" :NEWUID "CVCL:Z433"
                                                   :WORD "AGW")))

(defparameter *CATEGORY-MISMATCH-EXISTING-WORDS* '((:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "minocycline hydrochloride"
                                                    :NEWUID "NCIT:C47622" :WORD
                                                    "miniMACS")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "medroxyprogesterone acetate"
                                                    :NEWUID "NCIT:C1155" :WORD
                                                    "VersaMax")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    CELL-LINE :NAME "TCO"
                                                    :NEWUID "CVCL:HE32" :WORD
                                                    "TCoV")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME "SAB"
                                                    :NEWUID "XFAM:PF04382"
                                                    :WORD "Sváb")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "cisplatin"
                                                    :NEWUID "NCIT:C376" :WORD
                                                    "SigmaPlot")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME "PCP"
                                                    :NEWUID "XFAM:PF02429"
                                                    :WORD "PerCP")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "nicotinamide riboside"
                                                    :NEWUID "NCIT:C158078"
                                                    :WORD "Nugen")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "acetonitrile" :NEWUID
                                                    "CHEBI:38472" :WORD
                                                    "Nucmer")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "novobiocin"
                                                    :NEWUID "NCIT:C705" :WORD
                                                    "Novabiochem")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "methicillin" :NEWUID
                                                    "CHEBI:6827" :WORD
                                                    "Medicilon")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "isoflurane"
                                                    :NEWUID "NCIT:C65978" :WORD
                                                    "Isofluran")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "hydroquinone"
                                                    :NEWUID "MESH:C031927"
                                                    :WORD "Illustra")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "Ho"
                                                    :NEWUID "CVCL:M698" :WORD
                                                    "Hilden")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "glycyrrhizin"
                                                    :NEWUID "NCIT:C1117" :WORD
                                                    "Glycyrrhyzin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "chloramphenicol" :NEWUID
                                                    "CHEBI:17698" :WORD
                                                    "Fevicol")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "erythromycin"
                                                    :NEWUID "NCIT:C476" :WORD
                                                    "EuroTB")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "norethindrone"
                                                    :NEWUID "NCIT:C62059" :WORD
                                                    "Erri")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "entecavir"
                                                    :NEWUID "NCIT:C65513" :WORD
                                                    "EToV")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "valsartan"
                                                    :NEWUID "NCIT:C47781" :WORD
                                                    "DiGiovanni")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "duramycin"
                                                    :NEWUID "MESH:C040522"
                                                    :WORD "Dharamacon")
                                                   (:ORIG-CAT CORONAVIRUS
                                                    :NEW-CAT VIRUS :NAME
                                                    "coronaviridae" :NEWUID
                                                    "NCIT:C113205" :WORD
                                                    "Coronavirinae")
                                                   (:ORIG-CAT CLUSTERING
                                                    :NEW-CAT MOLECULE :NAME
                                                    "cluster" :NEWUID
                                                    "CHEBI:33731" :WORD
                                                    "ClustPW")
                                                   (:ORIG-CAT CORONAVIRUS
                                                    :NEW-CAT VIRUS :NAME
                                                    "betacoronavirus" :NEWUID
                                                    "NCIT:C113207" :WORD
                                                    "BtCoV")
                                                   (:ORIG-CAT TIMEZONE :NEW-CAT
                                                    MOLECULE :NAME "EET"
                                                    :NEWUID "CHEBI:64007" :WORD
                                                    "AeET")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "ADF" :NEWUID "CVCL:4689"
                                                    :WORD "AdFW")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "sulfonate"
                                                    :NEWUID "CHEBI:33543" :WORD
                                                    "sulphonate")
                                                   (:ORIG-CAT NUCLEOBASE
                                                    :NEW-CAT MOLECULE :NAME
                                                    "guanine" :NEWUID
                                                    "CHEBI:16235" :WORD
                                                    "quanwen")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "benzestrol"
                                                    :NEWUID "CHEBI:135264"
                                                    :WORD "ictvonline")
                                                   (:ORIG-CAT LABEL :NEW-CAT
                                                    BIO-METHOD :NAME
                                                    "labelling" :NEWUID
                                                    "EFO:0000562" :WORD
                                                    "labelings")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "ketamine"
                                                    :NEWUID "CHEBI:6121" :WORD
                                                    "ketamin")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "glycyrrhizin"
                                                    :NEWUID "NCIT:C1117" :WORD
                                                    "glyrrhizin")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "disulfiram"
                                                    :NEWUID "NCIT:C447" :WORD
                                                    "disulfuram")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "calcium phosphate" :NEWUID
                                                    "MESH:C020243" :WORD
                                                    "calciumphosphate")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "BON" :NEWUID "CVCL:E493"
                                                    :WORD "bono")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "arginine" :NEWUID
                                                    "CHEBI:29016" :WORD
                                                    "argenine")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "amantadine"
                                                    :NEWUID "CHEBI:2618" :WORD
                                                    "aminoadamantanes")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "JH"
                                                    :NEWUID "CVCL:S102" :WORD
                                                    "ZJH")
                                                   (:ORIG-CAT UNIT-OF-MEASURE
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "GB" :NEWUID "CVCL:S928"
                                                    :WORD "ZGB")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "HP"
                                                    :NEWUID "CVCL:3715" :WORD
                                                    "YHP")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "JT"
                                                    :NEWUID "CVCL:UI97" :WORD
                                                    "XJT")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "TEC"
                                                    :NEWUID "CVCL:J026" :WORD
                                                    "TWC")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME "TLD"
                                                    :NEWUID "XFAM:PF07534"
                                                    :WORD "TLDA")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "JH"
                                                    :NEWUID "CVCL:S102" :WORD
                                                    "TJH")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME "SCRL"
                                                    :NEWUID "XFAM:PF06876"
                                                    :WORD "SCWRL")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "RN"
                                                    :NEWUID "CVCL:WT23" :WORD
                                                    "RNY")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "propofol"
                                                    :NEWUID "CHEBI:44915" :WORD
                                                    "RAHYNIVTF")
                                                   (:ORIG-CAT CELL-LINE
                                                    :NEW-CAT PROTEIN-DOMAIN
                                                    :NAME "PAS" :NEWUID
                                                    "XFAM:PF00989" :WORD
                                                    "PASW")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "NML"
                                                    :NEWUID "CVCL:WH38" :WORD
                                                    "NMWL")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "MIC" :NEWUID "CVCL:EI96"
                                                    :WORD "MIIC")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "LF"
                                                    :NEWUID "CVCL:WY77" :WORD
                                                    "LFW")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "JH"
                                                    :NEWUID "CVCL:S102" :WORD
                                                    "JLH")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "JH"
                                                    :NEWUID "CVCL:S102" :WORD
                                                    "JJH")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "JH"
                                                    :NEWUID "CVCL:S102" :WORD
                                                    "JHZ")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "KFC"
                                                    :NEWUID "CVCL:0I51" :WORD
                                                    "JFWC")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "JAC"
                                                    :NEWUID "CVCL:F562" :WORD
                                                    "JAUC")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "HX"
                                                    :NEWUID "CVCL:3318" :WORD
                                                    "HXZ")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "HK"
                                                    :NEWUID "CVCL:L805" :WORD
                                                    "HKY")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "GSE"
                                                    :NEWUID "CVCL:6F81" :WORD
                                                    "GSEQ")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT PROTEIN-DOMAIN
                                                    :NAME "ETF" :NEWUID
                                                    "XFAM:PF01012" :WORD "EYF")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    CELL-LINE :NAME "DG"
                                                    :NEWUID "CVCL:S101" :WORD
                                                    "DWG")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "BP" :NEWUID "CVCL:WN38"
                                                    :WORD "BPW")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "BGM"
                                                    :NEWUID "CVCL:4125" :WORD
                                                    "BEGM")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "BBM"
                                                    :NEWUID "CVCL:4400" :WORD
                                                    "BEBM")))

(defparameter *SUPPRESSED-REDEFS* '(("tetrapeptides"
                                     ("tetrapeptides" "ONT:CHEMICAL" :ID
                                      "CHEBI:48030" :NAME "tetrapeptide"))
                                    ("sterols"
                                     ("sterols" "ONT:MOLECULE" :ID
                                      "CHEBI:15889" :NAME "sterol"))
                                    ("plastids"
                                     ("plastids" "ONT:CELL-PART" :ID
                                      "UP:SL-0209" :NAME "Plastid"))
                                    ("phagosomes"
                                     ("phagosomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0206" :NAME "Phagosome"))
                                    ("morbilliviruses"
                                     ("morbilliviruses" "ONT:VIRUS" :ID
                                      "NCIT:C14309" :NAME "morbillivirus"))
                                    ("microparticles"
                                     ("microparticles" "ONT:CELL-PART" :ID
                                      "UP:SL-0499" :NAME
                                      "Extracellular vesicle"))
                                    ("metacestodes"
                                     ("metacestodes" "ONT:INTERNAL-BODY-PART"
                                      :ID "BTO:0000859" :NAME "metacestode"))
                                    ("canids"
                                     ("canids" "ONT:NONHUMAN-ANIMAL" :ID
                                      "NCIT:C14331" :NAME "canidae"))
                                    ("bradyzoites"
                                     ("bradyzoites" "ONT:INTERNAL-BODY-PART"
                                      :ID "BTO:0002342" :NAME "bradyzoite"))
                                    ("bornaviruses"
                                     ("bornaviruses" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF06208" :NAME "BDV G"))))

(defparameter *NON-BIO-DEFS* '(("Xminj" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39344" :NAME
                                "cancer institute of new jersey")
                               ("SeqHound" "ONT:TIME-UNIT" :ID "UO:0000010"
                                :NAME "second")
                               ("Saco" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39319" :NAME
                                "american society of clinical oncology")
                               ("SacII" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39511" :NAME
                                "cancer therapy and research center")
                               ("Pleasanton" "ONT:REFERENTIAL-SEM" :ID
                                "NCIT:C95497" :NAME "pleasant")
                               ("Plascore" "ONT:REFERENTIAL-SEM" :ID
                                "NCIT:C86580" :NAME "pleasure")
                               ("OptiMEM" "ONT:REFERENTIAL-SEM" :ID
                                "NCIT:C94593" :NAME "optimism")
                               ("MinElute" "ONT:TIME-UNIT" :ID "UO:0000031"
                                :NAME "minute")
                               ("ImageJ" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C45993" :NAME
                                "integrated molecular analysis of genomes and their expression consortium")
                               ("Dylight" "ONT:REFERENTIAL-SEM" :ID
                                "NCIT:C113697" :NAME "delight")
                               ("CAMdeH" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C54720" :NAME
                                "critical assessment of microarray data analysis")
                               ("BioMax" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C61010" :NAME "bioPAX")
                               ("nhri" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82617" :NAME
                                "national human genome research institute")
                               ("embnet" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C106397" :NAME
                                "european group for blood and marrow transplantation")
                               ("consortiums" "ONT:PROFESSIONAL-ORGANIZATION"
                                :ID "NCIT:C19975" :NAME
                                "consortium or network")
                               ("NRCR" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C20016" :NAME
                                "national center for research resources")
                               ("HCIV" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39422" :NAME
                                "huntsman cancer institute")
                               ("AACCCGG" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39326" :NAME
                                "association of community cancer centers")))

