(in-package :sparser)

(defparameter *SUPPRESSED-HYPHENATED-NEW-WORDS* 'NIL)

(defparameter *SUPPRESSED-MOD-REDEFS* '(("upcase" "SGC"
                                         ("sgc" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:SGC" :NAME "SGC"))
                                        ("upcase" "EPN"
                                         ("epn" "ONT:PROTEIN-FAMILY" :ID
                                          "FPLX:EPN" :NAME "EPN"))
                                        ("upcase" "SMT"
                                         ("smt" "ONT:PROTEIN" :ID "UP:Q8RUW5"
                                          :NAME
                                          "Serine carboxypeptidase-like 8"))
                                        ("upcase" "FHA"
                                         ("fha" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF00498" :NAME "FHA"))
                                        ("upcase" "CTF"
                                         ("ctf" "ONT:GENE-PROTEIN" :ID
                                          "NCIT:C20186" :NAME
                                          "nuclear factor-I"))
                                        ("upcase" "NCR"
                                         ("ncr" "ONT:PROTEIN-FAMILY" :ID
                                          "NCIT:C129776" :NAME
                                          "natural cytotoxicity receptor family"))
                                        ("upcase" "PGA"
                                         ("pga" "ONT:PROTEIN" :ID "UP:P20041"
                                          :NAME "Polygalacturonase"))
                                        ("upcase" "NSG"
                                         ("nsg" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:02525" :NAME "NSG family"))
                                        ("upcase" "IAH"
                                         ("iah" "ONT:PROTEIN" :ID "UP:Q04557"
                                          :NAME "Indoleacetamide hydrolase"))
                                        ("upcase" "CPK"
                                         ("cpk" "ONT:PROTEIN" :ID
                                          "NCIT:C113245" :NAME
                                          "creatine kinase"))
                                        ("upcase" "AHR"
                                         ("ahr" "ONT:GENE-PROTEIN" :ID
                                          "UP:P35869" :NAME
                                          "Aryl hydrocarbon receptor"))
                                        ("upcase" "ASMA"
                                         ("asma" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF05170" :NAME "AsmA"))
                                        ("upcase" "LCAD"
                                         ("lcad" "ONT:GENE-PROTEIN" :ID
                                          "UP:P28330" :NAME
                                          "Long-chain specific acyl-CoA dehydrogenase, mitochondrial"))
                                        ("upcase" "TGFB"
                                         ("tgfb" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:TGFB" :NAME "TGFB"))
                                        ("upcase" "TLR"
                                         ("tlr" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:TLR" :NAME "TLR"))
                                        ("upcase" "TRB"
                                         ("trb" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q9PVE4" :NAME
                                          "Thyroid hormone receptor beta"))
                                        ("upcase" "LPM"
                                         ("lpm" "ONT:PROTEIN" :ID "UP:Q25381"
                                          :NAME "Actin, muscle"))
                                        ("upcase" "APN"
                                         ("apn" "ONT:GENE-PROTEIN" :ID
                                          "UP:P15144" :NAME
                                          "Aminopeptidase N"))
                                        ("upcase" "RRF"
                                         ("rrf" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q96E11" :NAME
                                          "Ribosome-recycling factor, mitochondrial"))
                                        ("upcase" "HMT"
                                         ("hmt" "ONT:PROTEIN" :ID "UP:P50135"
                                          :NAME
                                          "Histamine N-methyltransferase"))
                                        ("upcase" "RBC"
                                         ("rbc" "ONT:CELL" :ID "BTO:0000424"
                                          :NAME "erythrocyte"))
                                        ("upcase" "RXN"
                                         ("rxn" "ONT:PROTEIN" :ID "UP:Q9MYK8"
                                          :NAME "Prorelaxin"))
                                        ("upcase" "AGR"
                                         ("agr" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:00127" :NAME "AGR family"))
                                        ("upcase" "BMC"
                                         ("bmc" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF00936" :NAME "BMC"))
                                        ("upcase" "SAA"
                                         ("saa" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:SAA" :NAME "SAA"))
                                        ("upcase" "CSI"
                                         ("csi" "ONT:PROTEIN" :ID "UP:P07469"
                                          :NAME "Corticostatin 1"))
                                        ("upcase" "CCT"
                                         ("cct" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:CCT_complex" :NAME
                                          "CCT-complex"))
                                        ("upcase" "GAT"
                                         ("gat" "ONT:GENE-PROTEIN" :ID
                                          "UP:P07464" :NAME
                                          "Galactoside O-acetyltransferase"))
                                        ("upcase" "RTI"
                                         ("rti" "ONT:PROTEIN" :ID "UP:P80301"
                                          :NAME "Defensin-like protein 4"))
                                        ("upcase" "DCF"
                                         ("dcf" "ONT:PROTEIN" :ID "GO:0004167"
                                          :NAME
                                          "dopachrome isomerase activity"))
                                        ("upcase" "DPD"
                                         ("dpd" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q12882" :NAME
                                          "Dihydropyrimidine dehydrogenase [NADP(+)]"))
                                        ("upcase" "AKT"
                                         ("akt" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:AKT" :NAME "AKT"))
                                        ("upcase" "IGF"
                                         ("igf" "ONT:GENE-PROTEIN" :ID
                                          "UP:P22618" :NAME
                                          "Insulin-like growth factor"))
                                        ("upcase" "PLC"
                                         ("plc" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:PLC" :NAME "PLC"))
                                        ("upcase" "GDI"
                                         ("gdi" "ONT:GENE-PROTEIN" :ID
                                          "GO:0005092" :NAME
                                          "GDP-dissociation inhibitor activity"))
                                        ("upcase" "PPQ"
                                         ("ppq" "ONT:MEASURE-UNIT" :ID
                                          "UO:0000172" :NAME
                                          "parts per quadrillion"))
                                        ("upcase" "PEF"
                                         ("pef" "ONT:MOLECULE" :ID
                                          "CHEBI:55310" :NAME
                                          "poly(2,5-ethylene furandicarboxylate)"))
                                        ("upcase" "ABCC"
                                         ("abcc" "ONT:GENE-PROTEIN" :ID
                                          "FA:00048" :NAME "ABCC family"))
                                        ("upcase" "LSL"
                                         ("lsl" "ONT:PROTEIN" :ID "UP:P84821"
                                          :NAME "Lectin 80 kDa subunit"))
                                        ("upcase" "PGM"
                                         ("pgm" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q9SCY0" :NAME
                                          "Phosphoglucomutase, chloroplastic"))
                                        ("upcase" "OSD"
                                         ("osd" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF03392" :NAME "OS-D"))
                                        ("upcase" "VLP"
                                         ("vlp" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q6RSH7" :NAME
                                          "von Hippel-Lindau-like protein"))
                                        ("upcase" "DAT"
                                         ("dat" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q01959" :NAME
                                          "Sodium-dependent dopamine transporter"))
                                        ("upcase" "ICH"
                                         ("ich" "ONT:GENE" :ID "NCIT:C152982"
                                          :NAME "COL4A2"))
                                        ("upcase" "SSP"
                                         ("ssp" "ONT:PROTEIN" :ID "UP:D8KY57"
                                          :NAME
                                          "Probable salivary secreted peptide"))
                                        ("upcase" "OCH"
                                         ("Och" "ONT:PROTEIN" :ID "UP:Q93TU6"
                                          :NAME "6-oxocamphor hydrolase"))
                                        ("upcase" "TREX"
                                         ("Trex" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:01185" :NAME "TREX family"))
                                        ("upcase" "TSH"
                                         ("Tsh" "ONT:PROTEIN" :ID "NCIT:C2280"
                                          :NAME "thyroid-stimulating hormone"))
                                        ("upcase" "HSVTK"
                                         ("HSVtk" "ONT:GENE" :ID "NCIT:C19817"
                                          :NAME "HSV-Tk gene"))
                                        ("upcase" "BMK"
                                         ("Bmk" "ONT:PROTEIN" :ID "UP:P08103"
                                          :NAME "Tyrosine-protein kinase HCK"))
                                        ("upcase" "DNT"
                                         ("dNT" "ONT:PROTEIN" :ID "UP:P39979"
                                          :NAME
                                          "D-amino-acid N-acetyltransferase HPA3"))
                                        ("upcase" "PSB"
                                         ("pSB" "ONT:PROTEIN" :ID "UP:Q54DE8"
                                          :NAME "Presenilin-B"))
                                        ("upcase" "IFIT"
                                         ("Ifit" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:01813" :NAME "IFIT family"))
                                        ("upcase" "MANIKA"
                                         ("Manika" "ONT:CELL-LINE" :ID
                                          "CVCL:E770" :NAME "MANIKA"))
                                        ("upcase" "FLUAV"
                                         ("FluAv" "ONT:VIRUS" :ID "NCIT:C53454"
                                          :NAME "influenza A virus"))
                                        ("upcase" "CEA"
                                         ("Cea" "ONT:GENE-PROTEIN" :ID
                                          "FA:01836" :NAME "CEA family"))
                                        ("upcase" "SFB"
                                         ("Sfb" "ONT:PROTEIN" :ID "UP:P21272"
                                          :NAME
                                          "CCAAT/enhancer-binding protein beta"))
                                        ("upcase" "BMT"
                                         ("Bmt" "ONT:PROTEIN" :ID "UP:Q6T1F6"
                                          :NAME
                                          "Bergaptol O-methyltransferase {ECO:0000312|EMBL:AAR24096.2}"))
                                        ("upcase" "CIK"
                                         ("Cik" "ONT:CELL-LINE" :ID "CVCL:CV32"
                                          :NAME "CIK"))
                                        ("upcase" "PKB"
                                         ("pKb" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:AKT" :NAME "AKT"))
                                        ("upcase" "ORFY"
                                         ("ORFy" "ONT:PROTEIN" :ID "UP:P38943"
                                          :NAME
                                          "Uncharacterized transporter CKL_3017"))
                                        ("upcase" "LLO"
                                         ("Llo" "ONT:PROTEIN" :ID "UP:D2NZ73"
                                          :NAME "Listeriolysin O"))
                                        ("upcase" "RPA"
                                         ("RpA" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:RPA" :NAME "RPA"))
                                        ("upcase" "BAL"
                                         ("Bal" "ONT:GENE-PROTEIN" :ID
                                          "UP:P19835" :NAME
                                          "Bile salt-activated lipase"))
                                        ("upcase" "ASI"
                                         ("aSi" "ONT:PROTEIN" :ID "UP:Q5FYB1"
                                          :NAME "Arylsulfatase I"))
                                        ("upcase" "AAL"
                                         ("Aal" "ONT:PROTEIN" :ID "UP:Q6WY08"
                                          :NAME "Anti-tumor lectin"))
                                        ("upcase" "SII"
                                         ("SIi" "ONT:GENE-PROTEIN" :ID
                                          "UP:P04815" :NAME
                                          "Spleen trypsin inhibitor I"))
                                        ("upcase" "STD"
                                         ("Std"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C3365" :NAME
                                          "sexually transmitted disorder"))
                                        ("upcase" "VAI"
                                         ("Vai" "ONT:PROTEIN" :ID "UP:P01065"
                                          :NAME
                                          "Bowman-Birk type proteinase inhibitor"))
                                        ("upcase" "EMJ"
                                         ("EMj" "ONT:CELL-LINE" :ID "CVCL:E583"
                                          :NAME "EMJ"))
                                        ("upcase" "ASD"
                                         ("Asd" "ONT:PROTEIN" :ID "UP:P51689"
                                          :NAME "Arylsulfatase D"))
                                        ("upcase" "ETB"
                                         ("Etb" "ONT:GENE-PROTEIN" :ID
                                          "UP:P24530" :NAME
                                          "Endothelin receptor type B"))
                                        ("upcase" "OHR"
                                         ("Ohr" "ONT:CELL-LINE" :ID "CVCL:F503"
                                          :NAME "OHR"))
                                        ("upcase" "BSS"
                                         ("Bss" "ONT:GENE" :ID "NCIT:C126547"
                                          :NAME "GP1BA"))
                                        ("upcase" "NCD"
                                         ("Ncd" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:01974" :NAME "NCD subfamily"))
                                        ("upcase" "UAA"
                                         ("Uaa" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF08449" :NAME "UAA"))
                                        ("upcase" "BIE"
                                         ("Bie" "ONT:CELL-LINE" :ID "CVCL:HC67"
                                          :NAME "BIE"))
                                        ("upcase" "SPT"
                                         ("SpT" "ONT:GENE-PROTEIN" :ID
                                          "UP:P21549" :NAME
                                          "Serine--pyruvate aminotransferase"))
                                        ("upcase" "PDX"
                                         ("Pdx" "ONT:PROTEIN" :ID "UP:P00259"
                                          :NAME "Putidaredoxin"))
                                        ("upcase" "SCA"
                                         ("Sca" "ONT:PROTEIN" :ID "UP:Q10992"
                                          :NAME
                                          "Cysteine proteinase inhibitor A"))
                                        ("upcase" "CHRM"
                                         ("ChRM" "ONT:PROTEIN-FAMILY" :ID
                                          "FPLX:CHRM" :NAME "CHRM"))
                                        ("upcase" "CLS"
                                         ("CLs" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q9UJA2" :NAME
                                          "Cardiolipin synthase (CMP-forming)"))
                                        ("upcase" "PNA"
                                         ("pNA" "ONT:PROTEIN" :ID "UP:P02872"
                                          :NAME "Galactose-binding lectin"))
                                        ("upcase" "ALASH"
                                         ("Alash" "ONT:GENE-PROTEIN" :ID
                                          "UP:P13196" :NAME
                                          "5-aminolevulinate synthase, nonspecific, mitochondrial"))
                                        ("upcase" "LAC"
                                         ("Lac" "ONT:PROTEIN" :ID "NCIT:C70620"
                                          :NAME
                                          "lupus anticoagulant antibody"))
                                        ("upcase" "IFNA"
                                         ("Ifna" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:IFNA" :NAME "IFNA"))
                                        ("upcase" "DMAB"
                                         ("DMAb" "ONT:CHEMICAL" :ID
                                          "NCIT:C44324" :NAME
                                          "4-dimethylaminoazobenzene"))
                                        ("upcase" "MOMP"
                                         ("MoMP" "ONT:PROTEIN" :ID "UP:Q46203"
                                          :NAME "Major outer membrane porin"))
                                        ("upcase" "CREB"
                                         ("CreB" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:CREB" :NAME "CREB"))
                                        ("upcase" "IFN"
                                         ("Ifn" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:Interferon" :NAME
                                          "Interferon"))
                                        ("upcase" "PRDX"
                                         ("Prdx" "ONT:PROTEIN-FAMILY" :ID
                                          "FPLX:PRDX" :NAME "PRDX"))
                                        ("downcase" "ferristatin"
                                         ("Ferristatin"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C531943" :NAME "ferristatin"))
                                        ("upcase" "ITR"
                                         ("Itr" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q90334" :NAME
                                          "Isotocin receptor"))
                                        ("upcase" "PARV"
                                         ("ParV" "ONT:PROTEIN-FAMILY" :ID
                                          "FPLX:PARV" :NAME "PARV"))
                                        ("upcase" "HIF"
                                         ("Hif" "ONT:PROTEIN-FAMILY" :ID
                                          "FPLX:HIF" :NAME "HIF"))
                                        ("upcase" "TNC"
                                         ("Tnc" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:Troponin_C" :NAME
                                          "Troponin-C"))
                                        ("upcase" "ABA"
                                         ("Aba" "ONT:PROTEIN" :ID "UP:Q00022"
                                          :NAME "Agaricus bisporus lectin"))
                                        ("upcase" "CAKI"
                                         ("Caki" "ONT:PROTEIN" :ID "UP:Q24210"
                                          :NAME
                                          "Peripheral plasma membrane protein CASK"))
                                        ("upcase" "HSPA"
                                         ("HspA" "ONT:PROTEIN-FAMILY" :ID
                                          "FPLX:HSPA" :NAME "HSPA"))
                                        ("upcase" "HTF"
                                         ("hTF" "ONT:PROTEIN" :ID "UP:Q9R1S4"
                                          :NAME "X-box-binding protein 1"))
                                        ("upcase" "HCC"
                                         ("hCC" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q9NFL6" :NAME
                                          "Hemocyanin C chain"))
                                        ("upcase" "SAFB"
                                         ("safB" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q15424" :NAME
                                          "Scaffold attachment factor B1"))
                                        ("upcase" "HES"
                                         ("HEs" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:HES" :NAME "HES"))
                                        ("upcase" "MLC"
                                         ("MlC" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:MYL" :NAME "MYL"))
                                        ("upcase" "NACA"
                                         ("Naca" "ONT:GENE-PROTEIN" :ID
                                          "HGNC:7629" :NAME
                                          "nascent polypeptide associated complex subunit alpha"))
                                        ("upcase" "TFR"
                                         ("Tfr" "ONT:GENE-PROTEIN" :ID
                                          "UP:P02786" :NAME
                                          "Transferrin receptor protein 1"))
                                        ("upcase" "MCSF"
                                         ("mcsF" "ONT:GENE-PROTEIN" :ID
                                          "UP:P09603" :NAME
                                          "Macrophage colony-stimulating factor 1"))
                                        ("upcase" "NCS"
                                         ("NCs" "ONT:PROTEIN" :ID "UP:P0A3R9"
                                          :NAME "Neocarzinostatin"))
                                        ("upcase" "TRM"
                                         ("Trm" "ONT:PROTEIN-FAMILY" :ID
                                          "XFAM:PF02005" :NAME "TRM"))
                                        ("upcase" "ASPA"
                                         ("AspA" "ONT:GENE" :ID "HGNC:756"
                                          :NAME "aspartoacylase"))
                                        ("upcase" "CMOS"
                                         ("CMOs" "ONT:PROTEIN" :ID
                                          "NCIT:C17327" :NAME
                                          "proto-oncogene serine/Threonine-protein kinase mos"))
                                        ("upcase" "GMCSF"
                                         ("Gmcsf" "ONT:GENE-PROTEIN" :ID
                                          "UP:P04141" :NAME
                                          "Granulocyte-macrophage colony-stimulating factor"))
                                        ("upcase" "CRFK"
                                         ("CrFK" "ONT:CELL-LINE" :ID
                                          "CVCL:2426" :NAME "CRFK"))
                                        ("upcase" "MSR"
                                         ("Msr" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q9UBK8" :NAME
                                          "Methionine synthase reductase"))
                                        ("upcase" "PCNS"
                                         ("PCNs" "ONT:PROTEIN" :ID "UP:Q7SZN0"
                                          :NAME
                                          "Venom prothrombin activator pseutarin-C non-catalytic subunit"))
                                        ("upcase" "ROL"
                                         ("Rol" "ONT:PROTEIN" :ID "UP:P61872"
                                          :NAME "Lipase"))
                                        ("upcase" "GHV"
                                         ("GhV" "ONT:GENE-PROTEIN" :ID
                                          "UP:P01242" :NAME
                                          "Growth hormone variant"))
                                        ("upcase" "PSV"
                                         ("PsV" "ONT:PROTEIN" :ID "UP:P08798"
                                          :NAME "Prespore vesicle protein"))
                                        ("upcase" "ACEI"
                                         ("ACEi" "ONT:PROTEIN" :ID "UP:Q9P8W3"
                                          :NAME
                                          "Zinc finger transcription factor ace1"))
                                        ("upcase" "JAK"
                                         ("Jak" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:JAK" :NAME "JAK"))
                                        ("upcase" "PLA"
                                         ("Pla" "ONT:PROTEIN" :ID "UP:A1CFS2"
                                          :NAME "Probable pectin lyase A"))
                                        ("upcase" "ABM"
                                         ("Abm" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF03992" :NAME "ABM"))
                                        ("upcase" "NSM"
                                         ("Nsm" "ONT:PROTEIN" :ID "UP:Q01268"
                                          :NAME "Movement protein"))
                                        ("upcase" "GPV"
                                         ("gpV" "ONT:GENE-PROTEIN" :ID
                                          "UP:P40197" :NAME
                                          "Platelet glycoprotein V"))
                                        ("upcase" "STK"
                                         ("Stk" "ONT:GENE-PROTEIN" :ID
                                          "NCIT:C17325" :NAME
                                          "serine/Threonine protein kinase"))
                                        ("upcase" "GAII"
                                         ("GAii" "ONT:PROTEIN" :ID "UP:P29760"
                                          :NAME "Glucoamylase S2"))
                                        ("upcase" "NHE"
                                         ("Nhe" "ONT:GENE-PROTEIN" :ID
                                          "UP:P81242" :NAME
                                          "Non-hemolytic enterotoxin 105 kDa component"))))

(defparameter *ID-MISMATCH-REDEF* '(("orig" "ELKS" "UP:Q8IUD2"
                                     ("ELKS" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97501" :NAME "ERC1"))
                                    ("orig" "UXT" "UP:Q9UBK9"
                                     ("UXT" "ONT:GENE-PROTEIN" :ID "HGNC:12641"
                                      :NAME
                                      "ubiquitously expressed prefoldin like chaperone"))
                                    ("orig" "IKBKB" "UP:O14920"
                                     ("IKBKB" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5960" :NAME
                                      "inhibitor of nuclear factor kappa B kinase subunit beta"))
                                    ("orig" "GPL" "UP:Q8NI17"
                                     ("GPL" "ONT:PROTEIN" :ID "UP:P81139" :NAME
                                      "Pancreatic lipase-related protein 2"))
                                    ("orig" "HRB" "UP:P52594"
                                     ("HRB" "ONT:GENE" :ID "HGNC:5175" :NAME
                                      "ArfGAP with FG repeats 1"))
                                    ("orig" "CPU" "UP:Q96IY4"
                                     ("CPU" "ONT:GENE-PROTEIN" :ID "HGNC:2300"
                                      :NAME "carboxypeptidase B2"))
                                    ("orig" "AIDA" "UP:Q96BJ3"
                                     ("AIDA" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:25761" :NAME
                                      "axin interactor, dorsalization associated"))
                                    ("orig" "RTA" "UP:O43251"
                                     ("RTA" "ONT:GENE-PROTEIN" :ID "UP:Q1HVG0"
                                      :NAME
                                      "Replication and transcription activator"))
                                    ("orig" "IIS" "UP:Q6XE38"
                                     ("IIS" "ONT:GENE-PROTEIN" :ID "HGNC:31748"
                                      :NAME
                                      "secretoglobin family 1D member 4"))
                                    ("orig" "PLG" "UP:P00747"
                                     ("PLG" "ONT:GENE-PROTEIN" :ID "HGNC:9071"
                                      :NAME "plasminogen"))
                                    ("orig" "PGT" "UP:Q92959"
                                     ("PGT" "ONT:GENE-PROTEIN" :ID "HGNC:10955"
                                      :NAME
                                      "solute carrier organic anion transporter family member 2A1"))
                                    ("orig" "RHOU" "UP:Q7L0Q8"
                                     ("RHOU" "ONT:GENE" :ID "HGNC:17794" :NAME
                                      "ras homolog family member U"))
                                    ("orig" "PERK" "UP:Q9NZJ5"
                                     ("PERK" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C102828" :NAME "EIF2AK3"))
                                    ("upcase" "TRH" "UP:P20396"
                                     ("trh" "ONT:GENE-PROTEIN" :ID "HGNC:12298"
                                      :NAME "thyrotropin releasing hormone"))
                                    ("upcase" "CLC" "UP:Q05315"
                                     ("clc" "ONT:GENE-PROTEIN" :ID "HGNC:2014"
                                      :NAME "Charcot-Leyden crystal galectin"))
                                    ("upcase" "FXI" "UP:P03951"
                                     ("fxi" "ONT:GENE-PROTEIN" :ID "UP:Q5NTB3"
                                      :NAME "Coagulation factor XI"))
                                    ("upcase" "TBP" "UP:P20226"
                                     ("tbp" "ONT:GENE-PROTEIN" :ID "HGNC:11588"
                                      :NAME "TATA-box binding protein"))
                                    ("upcase" "IRP" "UP:P09544"
                                     ("irp" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17510" :NAME "protein wnt-2"))
                                    ("upcase" "PELO" "UP:Q9BRX2"
                                     ("pelo" "ONT:GENE-PROTEIN" :ID "HGNC:8829"
                                      :NAME
                                      "pelota mRNA surveillance and ribosome rescue factor"))
                                    ("upcase" "JMP" "UP:P28062"
                                     ("jmp" "ONT:GENE" :ID "NCIT:C112076" :NAME
                                      "PSMB8"))
                                    ("upcase" "FRT" "UP:P17948"
                                     ("frt" "ONT:GENE" :ID "NCIT:C52169" :NAME
                                      "FLT1"))
                                    ("upcase" "WIP" "UP:O43516"
                                     ("wip" "ONT:GENE" :ID "HGNC:12736" :NAME
                                      "WAS/WASL interacting protein family member 1"))
                                    ("upcase" "FAC" "UP:Q00597"
                                     ("fac" "ONT:GENE" :ID "NCIT:C86028" :NAME
                                      "FANCC"))
                                    ("upcase" "GUS" "UP:A1Z6E0"
                                     ("gus" "ONT:GENE-PROTEIN" :ID "UP:P05804"
                                      :NAME "Beta-glucuronidase"))
                                    ("upcase" "PKI" "FA:02884"
                                     ("pki" "ONT:PROTEIN-FAMILY" :ID "FPLX:PKI"
                                      :NAME "PKI"))
                                    ("upcase" "TRT" "UP:O14746"
                                     ("trt" "ONT:GENE" :ID "NCIT:C52497" :NAME
                                      "TERT"))
                                    ("upcase" "ESD" "UP:P10768"
                                     ("esd" "ONT:GENE" :ID "HGNC:3465" :NAME
                                      "esterase D"))
                                    ("upcase" "HBT" "UP:Q8LGU6"
                                     ("hbt" "ONT:PROTEIN" :ID "UP:Q9M593" :NAME
                                      "Non-symbiotic hemoglobin"))
                                    ("upcase" "SSF" "XFAM:PF00474.15"
                                     ("ssf" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00474" :NAME "SSF"))
                                    ("upcase" "CNIL" "UP:O95406"
                                     ("cnil" "ONT:GENE" :ID "HGNC:19431" :NAME
                                      "cornichon family AMPA receptor auxiliary protein 1"))
                                    ("upcase" "GPNMB" "UP:Q14956"
                                     ("gpnmb" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4462" :NAME "glycoprotein nmb"))
                                    ("upcase" "IFIX" "UP:Q6K0P9"
                                     ("ifix" "ONT:GENE" :ID "HGNC:28894" :NAME
                                      "pyrin and HIN domain family member 1"))
                                    ("upcase" "SPF" "UP:O76054"
                                     ("spf" "ONT:GENE-PROTEIN" :ID "HGNC:10699"
                                      :NAME "SEC14 like lipid binding 2"))
                                    ("upcase" "SDS" "UP:P20132"
                                     ("sds" "ONT:GENE-PROTEIN" :ID "UP:O67049"
                                      :NAME
                                      "Shikimate dehydrogenase (NADP(+)) {ECO:0000255|HAMAP-Rule:MF_00222, ECO:0000303|PubMed:17649975}"))
                                    ("upcase" "TST" "UP:Q16762"
                                     ("tst" "ONT:GENE-PROTEIN" :ID "HGNC:12388"
                                      :NAME "thiosulfate sulfurtransferase"))
                                    ("upcase" "IFF" "UP:P01574"
                                     ("iff" "ONT:GENE" :ID "HGNC:5434" :NAME
                                      "interferon beta 1"))
                                    ("upcase" "PGD" "UP:P52209"
                                     ("pgd" "ONT:GENE-PROTEIN" :ID "HGNC:8891"
                                      :NAME "phosphogluconate dehydrogenase"))
                                    ("upcase" "PTI" "UP:P35237"
                                     ("pti" "ONT:GENE" :ID "HGNC:8950" :NAME
                                      "serpin family B member 6"))
                                    ("upcase" "BDM" "XFAM:PF10684.7"
                                     ("bdm" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF10684" :NAME "BDM"))
                                    ("upcase" "JIK" "UP:Q9H2K8"
                                     ("jik" "ONT:GENE" :ID "NCIT:C106219" :NAME
                                      "TAOK3"))
                                    ("upcase" "CEB" "UP:Q15836"
                                     ("ceb" "ONT:GENE-PROTEIN" :ID "HGNC:12644"
                                      :NAME
                                      "vesicle associated membrane protein 3"))
                                    ("upcase" "SDF" "XFAM:PF00375.16"
                                     ("sdf" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF00375" :NAME "SDF"))
                                    ("upcase" "PLI" "UP:P08697"
                                     ("pli" "ONT:GENE-PROTEIN" :ID "UP:P22975"
                                      :NAME "Sperm-specific protein PL-I"))
                                    ("upcase" "CFD" "UP:P00746"
                                     ("cfd" "ONT:GENE" :ID "HGNC:2771" :NAME
                                      "complement factor D"))
                                    ("upcase" "CGB" "UP:P01233"
                                     ("cgb" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20684" :NAME "secretogranin-1"))
                                    ("upcase" "AGP" "XFAM:PF06376.10"
                                     ("agp" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06376" :NAME "AGP"))
                                    ("upcase" "PRN" "UP:Q9H6Q4"
                                     ("prn" "ONT:GENE" :ID "HGNC:14179" :NAME
                                      "cytosolic iron-sulfur assembly component 3"))
                                    ("upcase" "IHB" "UP:P0ACJ0"
                                     ("ihb" "ONT:PROTEIN" :ID "UP:A0NLY7" :NAME
                                      "Isatin hydrolase"))
                                    ("upcase" "FBA" "XFAM:PF04300.11"
                                     ("fba" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04300" :NAME "FBA"))
                                    ("upcase" "PIF" "XFAM:PF05092.10"
                                     ("pif" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05092" :NAME "PIF"))
                                    ("upcase" "TIGR" "UP:Q99972"
                                     ("tigr" "ONT:GENE-PROTEIN" :ID "HGNC:7610"
                                      :NAME "myocilin"))
                                    ("upcase" "CIG" "UP:P02751"
                                     ("cig" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C16581" :NAME "fibronectin"))
                                    ("upcase" "CRC" "UP:Q8L925"
                                     ("crc" "ONT:PROTEIN" :ID "UP:Q719L8" :NAME
                                      "Snaclec crotocetin"))
                                    ("upcase" "FDP" "UP:Q9NRC9"
                                     ("fdp" "ONT:GENE" :ID "HGNC:8517" :NAME
                                      "otoraplin"))
                                    ("upcase" "MRC" "UP:P41217"
                                     ("mrc" "ONT:GENE" :ID "NCIT:C80106" :NAME
                                      "CD200"))
                                    ("upcase" "CDF" "UP:P05231"
                                     ("cdf" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20451" :NAME "interleukin-6"))
                                    ("upcase" "PGC" "UP:P20142"
                                     ("pgc" "ONT:GENE-PROTEIN" :ID "HGNC:8890"
                                      :NAME "progastricsin"))
                                    ("upcase" "KDR" "UP:P35968"
                                     ("kdr" "ONT:GENE-PROTEIN" :ID "HGNC:6307"
                                      :NAME "kinase insert domain receptor"))
                                    ("upcase" "CPX" "UP:P36551"
                                     ("cpx" "ONT:GENE" :ID "NCIT:C150337" :NAME
                                      "TBX22"))
                                    ("upcase" "SMCY" "UP:Q9BY66"
                                     ("smcy" "ONT:GENE" :ID "HGNC:11115" :NAME
                                      "lysine demethylase 5D"))
                                    ("upcase" "ACG" "UP:Q5JSL3"
                                     ("acg" "ONT:GENE-PROTEIN" :ID "HGNC:23483"
                                      :NAME "dedicator of cytokinesis 11"))
                                    ("upcase" "DFR" "UP:P51109"
                                     ("dfr" "ONT:PROTEIN" :ID "UP:P51102" :NAME
                                      "Dihydroflavonol 4-reductase"))
                                    ("upcase" "NSF" "UP:P46459"
                                     ("nsf" "ONT:GENE" :ID "HGNC:8016" :NAME
                                      "N-ethylmaleimide sensitive factor, vesicle fusing ATPase"))
                                    ("upcase" "GAA" "UP:P10253"
                                     ("gaa" "ONT:GENE" :ID "HGNC:4065" :NAME
                                      "glucosidase alpha, acid"))
                                    ("upcase" "GGT" "UP:P19440"
                                     ("ggt" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C37959" :NAME
                                      "gamma-glutamyl transpeptidase"))
                                    ("upcase" "OTU" "XFAM:PF02338.17"
                                     ("otu" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF02338" :NAME "OTU"))
                                    ("upcase" "TGA" "UP:O43435"
                                     ("tga" "ONT:GENE" :ID "NCIT:C75412" :NAME
                                      "TBX1"))
                                    ("upcase" "PKS" "UP:P10398"
                                     ("pks" "ONT:GENE-PROTEIN" :ID "UP:O65595"
                                      :NAME
                                      "Probable pyruvate kinase, cytosolic isozyme"))
                                    ("upcase" "SID" "XFAM:PF11778.6"
                                     ("sid" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF11778" :NAME "SID"))
                                    ("upcase" "CPZ" "UP:Q66K79"
                                     ("cpz" "ONT:GENE-PROTEIN" :ID "HGNC:2333"
                                      :NAME "carboxypeptidase Z"))
                                    ("upcase" "MDB" "UP:Q12979"
                                     ("mdb" "ONT:GENE" :ID "HGNC:81" :NAME
                                      "ABR activator of RhoGEF and GTPase"))
                                    ("upcase" "WAC" "UP:Q9BTA9"
                                     ("wac" "ONT:GENE" :ID "HGNC:17327" :NAME
                                      "WW domain containing adaptor with coiled-coil"))
                                    ("upcase" "CPAN" "UP:O76075"
                                     ("cpan" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C126526" :NAME "DFFB"))
                                    ("upcase" "PRKCE" "UP:Q02156"
                                     ("prkce" "ONT:GENE" :ID "HGNC:9401" :NAME
                                      "protein kinase C epsilon"))
                                    ("upcase" "RAF" "FA:03114"
                                     ("raf" "ONT:GENE-PROTEIN" :ID "FPLX:RAF"
                                      :NAME "RAF"))
                                    ("upcase" "LPP" "UP:Q93052"
                                     ("lpp" "ONT:GENE-PROTEIN" :ID "HGNC:6679"
                                      :NAME
                                      "LIM domain containing preferred translocation partner in lipoma"))
                                    ("upcase" "MGH" "UP:P28321"
                                     ("mgh" "ONT:PROTEIN" :ID "UP:O94305" :NAME
                                      "Putative monoglyceride lipase"))
                                    ("upcase" "CNB" "UP:P63098"
                                     ("cnb" "ONT:GENE" :ID "NCIT:C52097" :NAME
                                      "PPP3R1"))
                                    ("upcase" "MTOR" "UP:P42345"
                                     ("mtor" "ONT:GENE-PROTEIN" :ID "HGNC:3942"
                                      :NAME
                                      "mechanistic target of rapamycin kinase"))
                                    ("upcase" "NTS" "UP:P30990"
                                     ("nts" "ONT:GENE-PROTEIN" :ID "UP:P32560"
                                      :NAME "Neurotensin"))
                                    ("upcase" "TMAP" "UP:Q8WWK9"
                                     ("tmap" "ONT:GENE" :ID "HGNC:1990" :NAME
                                      "cytoskeleton associated protein 2"))
                                    ("upcase" "GLD" "UP:P32816"
                                     ("gld" "ONT:PROTEIN" :ID "PR:000036782"
                                      :NAME
                                      "tumor necrosis factor ligand superfamily member 6 isoform FasL sequence variant F273L"))
                                    ("upcase" "MANEA" "UP:Q5SRI9"
                                     ("manea" "ONT:GENE" :ID "HGNC:21072" :NAME
                                      "mannosidase endo-alpha"))
                                    ("upcase" "CYTB" "UP:P00156"
                                     ("cytb" "ONT:GENE" :ID "HGNC:7427" :NAME
                                      "mitochondrially encoded cytochrome b"))
                                    ("upcase" "ABCR" "UP:P78363"
                                     ("abcr" "ONT:GENE" :ID "HGNC:34" :NAME
                                      "ATP binding cassette subfamily A member 4"))
                                    ("upcase" "ACF" "UP:Q9NQ94"
                                     ("acf" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20154" :NAME "ACF complex"))
                                    ("upcase" "CSDB" "UP:P67809"
                                     ("csdb" "ONT:GENE" :ID "NCIT:C93120" :NAME
                                      "YBX1"))
                                    ("upcase" "PARVA" "UP:Q9NVD7"
                                     ("parva" "ONT:GENE" :ID "HGNC:14652" :NAME
                                      "parvin alpha"))
                                    ("upcase" "PAG" "UP:Q06830"
                                     ("pag" "ONT:GENE-PROTEIN" :ID "UP:Q28389"
                                      :NAME
                                      "Pregnancy-associated glycoprotein"))
                                    ("upcase" "PSORT" "UP:Q7Z5L2"
                                     ("psort" "ONT:GENE" :ID "HGNC:23512" :NAME
                                      "R3H domain and coiled-coil containing 1 like"))
                                    ("upcase" "MAFF" "UP:Q9ULX9"
                                     ("maff" "ONT:GENE" :ID "HGNC:6780" :NAME
                                      "MAF bZIP transcription factor F"))
                                    ("upcase" "IGA" "UP:P11912"
                                     ("iga" "ONT:GENE-PROTEIN" :ID "NCIT:C565"
                                      :NAME "IgA"))
                                    ("upcase" "SANS" "UP:Q495M9"
                                     ("sans" "ONT:GENE" :ID "HGNC:29533" :NAME
                                      "N(alpha)-acetyltransferase 50, NatE catalytic subunit"))
                                    ("upcase" "XLS" "UP:Q9BUH6"
                                     ("xls" "ONT:GENE" :ID "HGNC:27849" :NAME
                                      "PAXX non-homologous end joining factor"))
                                    ("upcase" "MGA" "UP:O43451"
                                     ("mga" "ONT:GENE" :ID "HGNC:14010" :NAME
                                      "MAX dimerization protein MGA"))
                                    ("upcase" "NRX" "UP:Q6DKJ4"
                                     ("nrx" "ONT:GENE" :ID "HGNC:18008" :NAME
                                      "nucleoredoxin"))
                                    ("upcase" "AAH" "UP:Q6FCU0"
                                     ("aah" "ONT:PROTEIN" :ID "UP:O32149" :NAME
                                      "Allantoate amidohydrolase"))
                                    ("upcase" "HTH" "UP:Q9S746"
                                     ("hth" "ONT:PROTEIN" :ID "UP:P84220" :NAME
                                      "Hypertrehalosaemic hormone"))
                                    ("upcase" "MYM" "UP:Q9UBW7"
                                     ("mym" "ONT:GENE" :ID "NCIT:C97874" :NAME
                                      "ZMYM2"))
                                    ("upcase" "TPI" "UP:P60174"
                                     ("tpi" "ONT:GENE-PROTEIN" :ID "UP:Q30PQ5"
                                      :NAME "Triosephosphate isomerase"))
                                    ("upcase" "GMD" "UP:O60547"
                                     ("gmd" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C114602" :NAME "GMDS"))
                                    ("upcase" "CAC" "UP:O43772"
                                     ("cac" "ONT:GENE-PROTEIN" :ID "HGNC:1421"
                                      :NAME
                                      "solute carrier family 25 member 20"))
                                    ("upcase" "MLKL" "UP:Q8NB16"
                                     ("mlkl" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:26617" :NAME
                                      "mixed lineage kinase domain like pseudokinase"))
                                    ("upcase" "OMP" "UP:P47874"
                                     ("omp" "ONT:GENE-PROTEIN" :ID "HGNC:8136"
                                      :NAME "olfactory marker protein"))
                                    ("upcase" "STH" "UP:Q8IWL8"
                                     ("sth" "ONT:GENE-PROTEIN" :ID "HGNC:18839"
                                      :NAME "saitohin"))
                                    ("upcase" "ASAM" "UP:Q9H6B4"
                                     ("asam" "ONT:GENE" :ID "HGNC:24039" :NAME
                                      "CXADR like membrane protein"))
                                    ("upcase" "CTA" "UP:P49585"
                                     ("cta" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104954" :NAME "PCYT1A"))
                                    ("upcase" "TGC" "UP:P21980"
                                     ("tgc" "ONT:GENE-PROTEIN" :ID "HGNC:11778"
                                      :NAME "transglutaminase 2"))
                                    ("upcase" "IDE" "UP:P14735"
                                     ("ide" "ONT:GENE" :ID "HGNC:5381" :NAME
                                      "insulin degrading enzyme"))
                                    ("upcase" "MSU" "UP:P12694"
                                     ("msu" "ONT:GENE" :ID "HGNC:986" :NAME
                                      "branched chain keto acid dehydrogenase E1 subunit alpha"))
                                    ("upcase" "NHS" "UP:Q6T4R5"
                                     ("nhs" "ONT:GENE-PROTEIN" :ID "HGNC:7820"
                                      :NAME "NHS actin remodeling regulator"))
                                    ("upcase" "PLAT" "UP:P00750"
                                     ("plat" "ONT:GENE-PROTEIN" :ID "HGNC:9051"
                                      :NAME
                                      "plasminogen activator, tissue type"))
                                    ("upcase" "SVA" "XFAM:PF05326.9"
                                     ("sva" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF05326" :NAME "SVA"))
                                    ("upcase" "NPS" "UP:P0C0P6"
                                     ("nps" "ONT:GENE" :ID "HGNC:33940" :NAME
                                      "neuropeptide S"))
                                    ("upcase" "LVI" "UP:Q90243"
                                     ("lvi" "ONT:PROTEIN" :ID "UP:P19988" :NAME
                                      "Leucokinin-6"))
                                    ("upcase" "ING" "XFAM:PF12998"
                                     ("ing" "ONT:PROTEIN-FAMILY" :ID "FA:01856"
                                      :NAME "ING family"))
                                    ("upcase" "QIK" "UP:Q9H0K1"
                                     ("qik" "ONT:GENE" :ID "NCIT:C92519" :NAME
                                      "SIK2"))
                                    ("upcase" "HEF" "UP:P68762"
                                     ("hef" "ONT:PROTEIN" :ID "UP:P07973" :NAME
                                      "Hemagglutinin-esterase-fusion glycoprotein"))
                                    ("upcase" "KARI" "UP:B0CE35"
                                     ("kari" "ONT:PROTEIN" :ID "UP:Q9AQ96"
                                      :NAME
                                      "Ketol-acid reductoisomerase (NADP(+))"))
                                    ("upcase" "MACH" "UP:Q14790"
                                     ("mach" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18182" :NAME "caspase-8"))
                                    ("upcase" "GDC" "UP:P16260"
                                     ("gdc" "ONT:PROTEIN" :ID "UP:Q01888" :NAME
                                      "Graves disease carrier protein"))
                                    ("upcase" "DPT" "UP:Q07507"
                                     ("dpt" "ONT:GENE" :ID "HGNC:3011" :NAME
                                      "dermatopontin"))
                                    ("upcase" "PMF" "UP:P04280"
                                     ("pmf" "ONT:GENE" :ID "HGNC:9337" :NAME
                                      "proline rich protein BstNI subfamily 1 (gene/pseudogene)"))
                                    ("upcase" "IFB" "UP:P01574"
                                     ("IfB" "ONT:GENE-PROTEIN" :ID "UP:P23731"
                                      :NAME "Intermediate filament protein B"))
                                    ("upcase" "LBP" "UP:P18428"
                                     ("Lbp" "ONT:GENE-PROTEIN" :ID "HGNC:6517"
                                      :NAME
                                      "lipopolysaccharide binding protein"))
                                    ("upcase" "PSII" "UP:Q5QA78"
                                     ("PsiI" "ONT:GENE-PROTEIN" :ID "UP:P56768"
                                      :NAME
                                      "Photosystem I reaction center subunit VIII"))
                                    ("upcase" "TESC" "UP:Q96BS2"
                                     ("TeSC" "ONT:GENE" :ID "HGNC:26065" :NAME
                                      "tescalcin"))
                                    ("upcase" "POLN" "UP:Q7Z5Q5"
                                     ("polN" "ONT:GENE" :ID "HGNC:18870" :NAME
                                      "DNA polymerase nu"))
                                    ("upcase" "EFP" "UP:Q14258"
                                     ("Efp" "ONT:GENE-PROTEIN" :ID "UP:O67376"
                                      :NAME "Elongation factor P"))
                                    ("upcase" "KRC" "UP:Q5T1R4"
                                     ("KRc" "ONT:GENE" :ID "HGNC:13561" :NAME
                                      "HIVEP zinc finger 3"))
                                    ("upcase" "SRO" "UP:Q8TAV4"
                                     ("Sro" "ONT:GENE" :ID "HGNC:19420" :NAME
                                      "stomatin like 3"))
                                    ("upcase" "TMS" "UP:P04818"
                                     ("Tms" "ONT:GENE-PROTEIN" :ID "UP:P06579"
                                      :NAME "Thrombomodulin"))
                                    ("upcase" "CGN" "UP:Q9P2M7"
                                     ("Cgn" "ONT:GENE" :ID "HGNC:17429" :NAME
                                      "cingulin"))
                                    ("upcase" "GIF" "UP:P14174"
                                     ("Gif" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C30075" :NAME "metallothionein-3"))
                                    ("upcase" "TACE" "UP:P78536"
                                     ("tACE" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C48216" :NAME
                                      "disintegrin and metalloproteinase domain-containing protein 17"))
                                    ("upcase" "ESX" "UP:P78545"
                                     ("Esx" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52126" :NAME "ELF3"))
                                    ("upcase" "FADB" "UP:B7I3P1"
                                     ("fadB" "ONT:PROTEIN" :ID "UP:Q949X0"
                                      :NAME
                                      "Palmitoyl-monogalactosyldiacylglycerol delta-7 desaturase, chloroplastic"))
                                    ("upcase" "HELZ" "UP:P42694"
                                     ("helZ" "ONT:GENE" :ID "HGNC:16878" :NAME
                                      "helicase with zinc finger"))
                                    ("upcase" "DMK" "UP:Q09013"
                                     ("DMk" "ONT:GENE-PROTEIN" :ID "HGNC:2933"
                                      :NAME "DM1 protein kinase"))
                                    ("upcase" "SETX" "UP:Q7Z333"
                                     ("SetX" "ONT:GENE" :ID "HGNC:445" :NAME
                                      "senataxin"))
                                    ("upcase" "NARR" "UP:P0DI83"
                                     ("narR" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16519" :NAME
                                      "RAB34, member RAS oncogene family"))
                                    ("orig" "CatB" "UP:Q43931"
                                     ("CatB" "ONT:GENE-PROTEIN" :ID "UP:A2YH64"
                                      :NAME "Catalase isozyme B"))
                                    ("upcase" "LVM" "UP:Q15049"
                                     ("LvM" "ONT:GENE" :ID "HGNC:17082" :NAME
                                      "modulator of VRAC current 1"))
                                    ("upcase" "TMHS" "UP:Q8TAF8"
                                     ("TMHs" "ONT:GENE" :ID "HGNC:21253" :NAME
                                      "LHFPL tetraspan subfamily member 5"))
                                    ("upcase" "LIPE" "UP:Q05469"
                                     ("Lipe" "ONT:GENE" :ID "HGNC:6621" :NAME
                                      "lipase E, hormone sensitive type"))
                                    ("upcase" "TRN" "UP:Q92973"
                                     ("TrN" "ONT:GENE-PROTEIN" :ID "HGNC:6401"
                                      :NAME "transportin 1"))
                                    ("upcase" "CYPH" "UP:O43447"
                                     ("CypH" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C156928" :NAME "PPIA"))
                                    ("upcase" "GABRQ" "UP:Q9UN88"
                                     ("Gabrq" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14454" :NAME
                                      "gamma-aminobutyric acid type A receptor theta subunit"))
                                    ("upcase" "RDX" "UP:P35241"
                                     ("Rdx" "ONT:GENE-PROTEIN" :ID "HGNC:9944"
                                      :NAME "radixin"))
                                    ("upcase" "PDG" "UP:O43175"
                                     ("pDG" "ONT:GENE" :ID "NCIT:C99475" :NAME
                                      "PHGDH"))
                                    ("upcase" "CAMR" "UP:Q99714"
                                     ("CamR" "ONT:GENE" :ID "HGNC:4800" :NAME
                                      "hydroxysteroid 17-beta dehydrogenase 10"))
                                    ("upcase" "KAL" "UP:P23352"
                                     ("Kal" "ONT:GENE" :ID "NCIT:C75620" :NAME
                                      "ANOS1"))
                                    ("upcase" "SYNCRIP" "UP:O60506"
                                     ("Syncrip" "ONT:GENE" :ID "HGNC:16918"
                                      :NAME
                                      "synaptotagmin binding cytoplasmic RNA interacting protein"))
                                    ("upcase" "PLM" "UP:O00168"
                                     ("Plm" "ONT:GENE" :ID "HGNC:4025" :NAME
                                      "FXYD domain containing ion transport regulator 1"))
                                    ("upcase" "ABS" "UP:Q9UJV9"
                                     ("ABs" "ONT:GENE" :ID "NCIT:C151914" :NAME
                                      "DDX41"))
                                    ("upcase" "IKK" "NCIT:C104199"
                                     ("Ikk" "ONT:GENE-PROTEIN" :ID
                                      "FPLX:IKK_family" :NAME "IKK-family"))
                                    ("upcase" "OCN" "UP:P02818"
                                     ("Ocn" "ONT:GENE" :ID "HGNC:1043" :NAME
                                      "bone gamma-carboxyglutamate protein"))
                                    ("upcase" "HRM" "XFAM:PF02793.20"
                                     ("HRm" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF02793" :NAME "HRM"))
                                    ("orig" "Ifnar" "UP:P17181"
                                     ("Ifnar" "ONT:GENE" :ID "NCIT:C51352"
                                      :NAME "IFNAR1"))
                                    ("upcase" "FASL" "UP:P48023"
                                     ("Fasl" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20529" :NAME
                                      "tumor necrosis factor ligand superfamily member 6"))
                                    ("upcase" "RIPA" "UP:Q9W704"
                                     ("RiPA" "ONT:PROTEIN" :ID "UP:Q6NI56"
                                      :NAME
                                      "HTH-type transcriptional regulator RipA"))
                                    ("upcase" "CNP" "UP:P09543"
                                     ("Cnp" "ONT:GENE-PROTEIN" :ID "HGNC:2158"
                                      :NAME
                                      "2',3'-cyclic nucleotide 3' phosphodiesterase"))
                                    ("upcase" "CPN" "UP:P15169"
                                     ("CPn" "ONT:PROTEIN" :ID "UP:Q2KJ83" :NAME
                                      "Carboxypeptidase N catalytic chain"))
                                    ("upcase" "KAS" "UP:Q8L3X9"
                                     ("Kas" "ONT:PROTEIN" :ID "UP:Q9HU15" :NAME
                                      "Beta-ketoacyl-[acyl-carrier-protein] synthase FabY"))
                                    ("upcase" "PALM" "UP:O75781"
                                     ("pALM" "ONT:GENE" :ID "HGNC:8594" :NAME
                                      "paralemmin"))
                                    ("upcase" "SNL" "UP:Q16658"
                                     ("sNL" "ONT:GENE" :ID "NCIT:C101606" :NAME
                                      "FSCN1"))
                                    ("upcase" "BTS" "UP:Q13286"
                                     ("BTs" "ONT:GENE" :ID "NCIT:C156971" :NAME
                                      "CLN3"))
                                    ("upcase" "GFAP" "UP:P14136"
                                     ("Gfap" "ONT:GENE-PROTEIN" :ID "HGNC:4235"
                                      :NAME "glial fibrillary acidic protein"))
                                    ("upcase" "NGC" "UP:O95196"
                                     ("Ngc" "ONT:GENE" :ID "HGNC:2467" :NAME
                                      "chondroitin sulfate proteoglycan 5"))
                                    ("upcase" "TPRC" "UP:Q92733"
                                     ("TprC" "ONT:GENE" :ID "NCIT:C70995" :NAME
                                      "PRCC"))
                                    ("upcase" "GPH" "UP:Q9NQX3"
                                     ("Gph" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97526" :NAME "GPHN"))
                                    ("upcase" "TDO" "UP:P48775"
                                     ("Tdo" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17218" :NAME
                                      "tryptophan 2,3-dioxygenase"))
                                    ("upcase" "BFP" "UP:Q9ULX5"
                                     ("Bfp" "ONT:GENE-PROTEIN" :ID "UP:P80893"
                                      :NAME "Blue fluorescence protein"))
                                    ("upcase" "SRL" "UP:Q86TD4"
                                     ("Srl" "ONT:GENE-PROTEIN" :ID "HGNC:11295"
                                      :NAME "sarcalumenin"))
                                    ("upcase" "ABRA" "UP:Q8N0Z2"
                                     ("AbrA" "ONT:GENE" :ID "HGNC:30655" :NAME
                                      "actin binding Rho activating protein"))
                                    ("upcase" "NRC" "UP:Q9JL19"
                                     ("nRC" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C33997" :NAME
                                      "nuclear receptor coactivator 6"))
                                    ("upcase" "LANA" "NCIT:C114489"
                                     ("Lana" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C114488" :NAME "HHV8 ORF73 gene"))
                                    ("upcase" "MAV" "UP:O95198"
                                     ("MaV" "ONT:GENE" :ID "HGNC:6353" :NAME
                                      "kelch like family member 2"))
                                    ("upcase" "PPOL" "UP:P09874"
                                     ("pPOL" "ONT:GENE" :ID "NCIT:C51001" :NAME
                                      "PARP1"))
                                    ("upcase" "AVP" "UP:P01185"
                                     ("Avp" "ONT:GENE-PROTEIN" :ID "HGNC:894"
                                      :NAME "arginine vasopressin"))
                                    ("upcase" "CNTF" "UP:P26441"
                                     ("Cntf" "ONT:GENE-PROTEIN" :ID "HGNC:2169"
                                      :NAME "ciliary neurotrophic factor"))
                                    ("upcase" "NELFE" "UP:P18615"
                                     ("Nelfe" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:13974" :NAME
                                      "negative elongation factor complex member E"))
                                    ("upcase" "PDGFC" "UP:Q9NRA1"
                                     ("Pdgfc" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8801" :NAME
                                      "platelet derived growth factor C"))
                                    ("upcase" "SNRPE" "UP:P62304"
                                     ("Snrpe" "ONT:GENE" :ID "HGNC:11161" :NAME
                                      "small nuclear ribonucleoprotein polypeptide E"))
                                    ("upcase" "RGP" "XFAM:PF03214.11"
                                     ("rGP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03214" :NAME "RGP"))
                                    ("upcase" "ALDOA" "UP:P04075"
                                     ("Aldoa" "ONT:GENE" :ID "HGNC:414" :NAME
                                      "aldolase, fructose-bisphosphate A"))
                                    ("upcase" "LDHB" "UP:P07195"
                                     ("Ldhb" "ONT:GENE-PROTEIN" :ID "HGNC:6541"
                                      :NAME "lactate dehydrogenase B"))
                                    ("upcase" "PFKP" "UP:Q01813"
                                     ("Pfkp" "ONT:GENE-PROTEIN" :ID "HGNC:8878"
                                      :NAME "phosphofructokinase, platelet"))
                                    ("upcase" "PKM" "UP:P14618"
                                     ("Pkm" "ONT:GENE-PROTEIN" :ID "HGNC:9021"
                                      :NAME "pyruvate kinase M1/2"))
                                    ("upcase" "ACTR" "UP:Q9Y6Q9"
                                     ("ActR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18172" :NAME
                                      "nuclear receptor coactivator 3"))
                                    ("upcase" "LARS" "UP:Q9P2J5"
                                     ("Lars" "ONT:GENE-PROTEIN" :ID "UP:F9USS9"
                                      :NAME "Lactate racemase"))
                                    ("upcase" "CEBPB" "UP:P17676"
                                     ("Cebpb" "ONT:GENE" :ID "HGNC:1834" :NAME
                                      "CCAAT enhancer binding protein beta"))
                                    ("upcase" "CATG" "UP:P08311"
                                     ("CatG" "ONT:GENE" :ID "NCIT:C104054"
                                      :NAME "CTSG"))
                                    ("upcase" "PBI" "UP:Q9NRW3"
                                     ("pBi" "ONT:GENE" :ID "HGNC:17353" :NAME
                                      "apolipoprotein B mRNA editing enzyme catalytic subunit 3C"))
                                    ("upcase" "BOD" "UP:O43521"
                                     ("BoD" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C21195" :NAME
                                      "bcl-2-like protein 11"))
                                    ("upcase" "DSS" "UP:Q01453"
                                     ("DSs" "ONT:GENE" :ID "NCIT:C75865" :NAME
                                      "NR0B1"))
                                    ("upcase" "EHF" "UP:Q9NZC4"
                                     ("Ehf" "ONT:GENE-PROTEIN" :ID "HGNC:3246"
                                      :NAME "ETS homologous factor"))
                                    ("upcase" "IMD" "XFAM:PF08397.9"
                                     ("Imd" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF08397" :NAME "IMD"))
                                    ("upcase" "ADN" "UP:P00746"
                                     ("adN" "ONT:GENE" :ID "NCIT:C84325" :NAME
                                      "CFD"))
                                    ("upcase" "HMP" "UP:Q16891"
                                     ("hMP" "ONT:GENE-PROTEIN" :ID "HGNC:6047"
                                      :NAME
                                      "inner membrane mitochondrial protein"))
                                    ("upcase" "GHR" "UP:P10912"
                                     ("Ghr" "ONT:GENE-PROTEIN" :ID "HGNC:4263"
                                      :NAME "growth hormone receptor"))
                                    ("upcase" "PMI" "UP:O15305"
                                     ("PMi" "ONT:GENE-PROTEIN" :ID "HGNC:9115"
                                      :NAME "phosphomannomutase 2"))
                                    ("upcase" "PEBP" "UP:P30086"
                                     ("PeBP" "ONT:GENE" :ID "HGNC:8630" :NAME
                                      "phosphatidylethanolamine binding protein 1"))
                                    ("upcase" "PPID" "UP:Q08752"
                                     ("Ppid" "ONT:GENE" :ID "HGNC:9257" :NAME
                                      "peptidylprolyl isomerase D"))
                                    ("upcase" "SGTA" "UP:O43765"
                                     ("Sgta" "ONT:GENE" :ID "HGNC:10819" :NAME
                                      "small glutamine rich tetratricopeptide repeat containing alpha"))
                                    ("upcase" "SPEG" "UP:Q15772"
                                     ("Speg" "ONT:GENE" :ID "HGNC:16901" :NAME
                                      "striated muscle enriched protein kinase"))
                                    ("upcase" "NASP" "UP:P49321"
                                     ("nASP" "ONT:GENE-PROTEIN" :ID "HGNC:7644"
                                      :NAME
                                      "nuclear autoantigenic sperm protein"))
                                    ("upcase" "POLB" "UP:P06746"
                                     ("polB" "ONT:GENE" :ID "HGNC:9174" :NAME
                                      "DNA polymerase beta"))
                                    ("upcase" "AIT" "UP:Q8N695"
                                     ("Ait" "ONT:GENE" :ID "NCIT:C121498" :NAME
                                      "SLC5A8"))
                                    ("upcase" "CMT" "UP:P02807"
                                     ("CMt" "ONT:PROTEIN" :ID "UP:I6WHP7" :NAME
                                      "Cysteine methyltransferase"))
                                    ("upcase" "COPA" "UP:P53621"
                                     ("CopA" "ONT:GENE" :ID "HGNC:2230" :NAME
                                      "COPI coat complex subunit alpha"))
                                    ("upcase" "CTAG" "UP:P78358"
                                     ("Ctag" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C39286" :NAME
                                      "cancer/Testis antigen 1"))
                                    ("upcase" "LPO" "UP:P22079"
                                     ("LPo" "ONT:GENE-PROTEIN" :ID "HGNC:6678"
                                      :NAME "lactoperoxidase"))
                                    ("upcase" "RNASEK" "UP:Q6P5S7"
                                     ("RNaseK" "ONT:GENE" :ID "HGNC:33911"
                                      :NAME "ribonuclease K"))
                                    ("upcase" "SWA" "UP:P40688"
                                     ("Swa" "ONT:GENE" :ID "HGNC:6184" :NAME
                                      "intersectin 2"))
                                    ("upcase" "CORT" "UP:O00230"
                                     ("Cort" "ONT:GENE" :ID "HGNC:2257" :NAME
                                      "cortistatin"))
                                    ("upcase" "CYM" "UP:P23946"
                                     ("CyM" "ONT:GENE" :ID "NCIT:C124244" :NAME
                                      "CMA1"))
                                    ("upcase" "DPYS" "UP:Q14117"
                                     ("Dpys" "ONT:GENE" :ID "HGNC:3013" :NAME
                                      "dihydropyrimidinase"))
                                    ("upcase" "HARI" "UP:Q9Y4X5"
                                     ("Hari" "ONT:GENE" :ID "NCIT:C134184"
                                      :NAME "ARIH1"))
                                    ("upcase" "INHA" "UP:P05111"
                                     ("Inha" "ONT:GENE-PROTEIN" :ID "HGNC:6065"
                                      :NAME "inhibin subunit alpha"))
                                    ("upcase" "ISS" "UP:P19592"
                                     ("Iss" "ONT:PROTEIN" :ID "UP:D3WYV9" :NAME
                                      "Inulosucrase"))
                                    ("upcase" "PTPT" "UP:P17706"
                                     ("PTPt" "ONT:GENE" :ID "NCIT:C138102"
                                      :NAME "PTPN2"))
                                    ("upcase" "PVA" "UP:P32926"
                                     ("Pva" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C101149" :NAME "DSG3"))
                                    ("upcase" "TPMT" "UP:P51580"
                                     ("Tpmt" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12014" :NAME
                                      "thiopurine S-methyltransferase"))
                                    ("upcase" "EMB" "UP:Q6PCB8"
                                     ("Emb" "ONT:GENE" :ID "HGNC:30465" :NAME
                                      "embigin"))
                                    ("upcase" "MSS" "UP:Q9H173"
                                     ("MSs" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C89002" :NAME "SIL1"))
                                    ("upcase" "MYOC" "UP:Q99972"
                                     ("Myoc" "ONT:GENE" :ID "HGNC:7610" :NAME
                                      "myocilin"))
                                    ("upcase" "SPDS" "UP:P57305"
                                     ("SPDs" "ONT:PROTEIN" :ID "UP:Q8G4L4"
                                      :NAME
                                      "Probable polyamine aminopropyl transferase"))
                                    ("upcase" "SELE" "UP:P16581"
                                     ("Sele" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10718" :NAME "selectin E"))
                                    ("upcase" "IBP" "UP:Q9H4E7"
                                     ("ibP" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C122728" :NAME "TSPO"))
                                    ("upcase" "IGFR" "UP:P08069"
                                     ("Igfr" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17530" :NAME
                                      "insulin-like growth factor receptor"))
                                    ("upcase" "INA" "UP:Q16352"
                                     ("Ina" "ONT:GENE" :ID "HGNC:6057" :NAME
                                      "internexin neuronal intermediate filament protein alpha"))
                                    ("upcase" "AGMAT" "UP:Q9BSE5"
                                     ("Agmat" "ONT:GENE" :ID "HGNC:18407" :NAME
                                      "agmatinase"))
                                    ("upcase" "EVPL" "UP:Q92817"
                                     ("Evpl" "ONT:GENE" :ID "HGNC:3503" :NAME
                                      "envoplakin"))
                                    ("upcase" "GRK" "NCIT:C26233"
                                     ("Grk" "ONT:GENE-PROTEIN" :ID "FPLX:GRK"
                                      :NAME "GRK"))
                                    ("upcase" "NOGOR" "UP:Q9BZR6"
                                     ("NogoR" "ONT:GENE" :ID "HGNC:18601" :NAME
                                      "reticulon 4 receptor"))
                                    ("upcase" "TRID" "UP:O14798"
                                     ("TriD" "ONT:GENE" :ID "NCIT:C104516"
                                      :NAME "TNFRSF10C"))
                                    ("upcase" "AATF" "UP:Q9NY61"
                                     ("AATf" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:19235" :NAME
                                      "apoptosis antagonizing transcription factor"))
                                    ("upcase" "GNE" "UP:Q9Y223"
                                     ("Gne" "ONT:GENE" :ID "HGNC:23657" :NAME
                                      "glucosamine (UDP-N-acetyl)-2-epimerase/N-acetylmannosamine kinase"))
                                    ("upcase" "PBF" "UP:P53801"
                                     ("Pbf" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C117259" :NAME "ZNF395"))
                                    ("upcase" "PTPRG" "UP:P23470"
                                     ("Ptprg" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9671" :NAME
                                      "protein tyrosine phosphatase receptor type G"))
                                    ("upcase" "TBN" "UP:Q7Z7C8"
                                     ("Tbn" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C30070" :NAME
                                      "transcription initiation factor TFIID subunit 8"))
                                    ("upcase" "PRCP" "UP:P42785"
                                     ("PrCP" "ONT:GENE-PROTEIN" :ID "HGNC:9344"
                                      :NAME "prolylcarboxypeptidase"))
                                    ("upcase" "PSE" "UP:O95238"
                                     ("Pse" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C102919" :NAME "SPDEF"))
                                    ("upcase" "VHR" "UP:P51452"
                                     ("Vhr" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C25856" :NAME
                                      "dual specificity protein phosphatase 3"))
                                    ("upcase" "MCCB" "UP:Q9HCC0"
                                     ("McCb" "ONT:GENE" :ID "HGNC:6937" :NAME
                                      "methylcrotonoyl-CoA carboxylase 2"))
                                    ("upcase" "BLMH" "UP:Q13867"
                                     ("Blmh" "ONT:GENE" :ID "HGNC:1059" :NAME
                                      "bleomycin hydrolase"))
                                    ("upcase" "EDEM" "UP:Q92611"
                                     ("Edem" "ONT:GENE" :ID "HGNC:18967" :NAME
                                      "ER degradation enhancing alpha-mannosidase like protein 1"))
                                    ("upcase" "OGN" "UP:P20774"
                                     ("Ogn" "ONT:GENE" :ID "HGNC:8126" :NAME
                                      "osteoglycin"))
                                    ("upcase" "SDPR" "UP:O95810"
                                     ("Sdpr" "ONT:GENE" :ID "HGNC:10690" :NAME
                                      "caveolae associated protein 2"))
                                    ("upcase" "ADM" "UP:P35318"
                                     ("Adm" "ONT:GENE-PROTEIN" :ID "HGNC:259"
                                      :NAME "adrenomedullin"))
                                    ("upcase" "API" "UP:P15636"
                                     ("Api" "ONT:GENE-PROTEIN" :ID "UP:Q9M1T1"
                                      :NAME
                                      "Probable arabinose 5-phosphate isomerase"))
                                    ("upcase" "BSG" "UP:P35613"
                                     ("BSg" "ONT:GENE" :ID "HGNC:1116" :NAME
                                      "basigin (Ok blood group)"))
                                    ("upcase" "TPC" "UP:Q9HRE8"
                                     ("TpC" "ONT:GENE" :ID "NCIT:C54425" :NAME
                                      "CCDC6"))
                                    ("upcase" "MSAP" "UP:Q13126"
                                     ("mSAP" "ONT:GENE" :ID "NCIT:C103995"
                                      :NAME "MTAP"))
                                    ("upcase" "MOCA" "UP:Q8IZD9"
                                     ("MoCA" "ONT:GENE" :ID "HGNC:2989" :NAME
                                      "dedicator of cytokinesis 3"))
                                    ("upcase" "OASL" "UP:Q15646"
                                     ("OASl" "ONT:GENE" :ID "HGNC:8090" :NAME
                                      "2'-5'-oligoadenylate synthetase like"))
                                    ("upcase" "BGLAP" "UP:P02818"
                                     ("Bglap" "ONT:GENE" :ID "HGNC:1043" :NAME
                                      "bone gamma-carboxyglutamate protein"))
                                    ("upcase" "DRB" "UP:P01911"
                                     ("Drb" "ONT:GENE" :ID "NCIT:C52341" :NAME
                                      "HLA-DRB1"))
                                    ("upcase" "DST" "UP:Q03001"
                                     ("Dst" "ONT:GENE-PROTEIN" :ID "HGNC:1090"
                                      :NAME "dystonin"))
                                    ("upcase" "NANS" "UP:Q9NR45"
                                     ("NanS" "ONT:GENE" :ID "HGNC:19237" :NAME
                                      "N-acetylneuraminate synthase"))
                                    ("upcase" "OBSCN" "UP:Q5VST9"
                                     ("Obscn" "ONT:GENE" :ID "HGNC:15719" :NAME
                                      "obscurin, cytoskeletal calmodulin and titin-interacting RhoGEF"))
                                    ("upcase" "POK" "UP:Q58379"
                                     ("Pok" "ONT:GENE" :ID "NCIT:C52242" :NAME
                                      "ZBTB7A"))
                                    ("upcase" "TRDN" "UP:Q13061"
                                     ("Trdn" "ONT:GENE" :ID "HGNC:12261" :NAME
                                      "triadin"))
                                    ("upcase" "TTN" "UP:Q8WZ42"
                                     ("Ttn" "ONT:GENE" :ID "HGNC:12403" :NAME
                                      "titin"))
                                    ("upcase" "ACADVL" "UP:P49748"
                                     ("Acadvl" "ONT:GENE" :ID "HGNC:92" :NAME
                                      "acyl-CoA dehydrogenase very long chain"))
                                    ("upcase" "SPIA" "UP:Q02465"
                                     ("SPIa" "ONT:GENE" :ID "NCIT:C52874" :NAME
                                      "SPI1"))
                                    ("upcase" "SDHB" "UP:P21912"
                                     ("Sdhb" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10681" :NAME
                                      "succinate dehydrogenase complex iron sulfur subunit B"))
                                    ("upcase" "TRAK" "XFAM:PF06586.9"
                                     ("Trak" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF06586" :NAME "TraK"))
                                    ("upcase" "PPN" "UP:Q9H237"
                                     ("ppN" "ONT:GENE" :ID "NCIT:C132190" :NAME
                                      "PORCN"))
                                    ("upcase" "FIGN" "UP:Q5HY92"
                                     ("Fign" "ONT:GENE" :ID "HGNC:13285" :NAME
                                      "fidgetin, microtubule severing factor"))
                                    ("upcase" "CTSD" "UP:P07339"
                                     ("Ctsd" "ONT:GENE-PROTEIN" :ID "HGNC:2529"
                                      :NAME "cathepsin D"))
                                    ("upcase" "HVEM" "UP:Q92956"
                                     ("HvEM" "ONT:GENE" :ID "NCIT:C97844" :NAME
                                      "TNFRSF14"))
                                    ("upcase" "MORC" "UP:Q86VD1"
                                     ("mORC" "ONT:GENE" :ID "HGNC:7198" :NAME
                                      "MORC family CW-type zinc finger 1"))
                                    ("upcase" "PBC" "XFAM:PF03792.11"
                                     ("pBC" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03792" :NAME "PBC"))
                                    ("upcase" "TCL" "UP:Q9H4E5"
                                     ("Tcl" "ONT:GENE" :ID "NCIT:C106081" :NAME
                                      "RHOJ"))
                                    ("upcase" "ADRAR" "UP:P08913"
                                     ("Adrar" "ONT:GENE" :ID "NCIT:C51404"
                                      :NAME "ADRA2A"))
                                    ("upcase" "APPL" "UP:Q9UKG1"
                                     ("Appl" "ONT:GENE" :ID "HGNC:24035" :NAME
                                      "adaptor protein, phosphotyrosine interacting with PH domain and leucine zipper 1"))
                                    ("upcase" "CSR" "UP:Q6AZY7"
                                     ("Csr" "ONT:GENE-PROTEIN" :ID "UP:Q8KES3"
                                      :NAME
                                      "Sepiapterin reductase {ECO:0000312|EMBL:AAM71851.1}"))
                                    ("upcase" "NAPG" "UP:Q99747"
                                     ("Napg" "ONT:GENE" :ID "HGNC:7642" :NAME
                                      "NSF attachment protein gamma"))
                                    ("upcase" "IMAC" "UP:Q9Y258"
                                     ("iMac" "ONT:GENE" :ID "NCIT:C49743" :NAME
                                      "CCL26"))
                                    ("upcase" "GLDH" "UP:Q9SU56"
                                     ("Gldh" "ONT:PROTEIN" :ID "UP:O13702"
                                      :NAME "Glycerol dehydrogenase 1"))
                                    ("upcase" "SCLL" "UP:Q9UBW7"
                                     ("ScLL" "ONT:GENE" :ID "NCIT:C97874" :NAME
                                      "ZMYM2"))
                                    ("upcase" "SOLH" "UP:O75808"
                                     ("Solh" "ONT:GENE" :ID "HGNC:11182" :NAME
                                      "calpain 15"))
                                    ("upcase" "APX" "UP:P27695"
                                     ("Apx" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C21415" :NAME
                                      "DNA-(Apurinic or apyrimidinic site) lyase"))
                                    ("upcase" "TSPAN" "UP:Q96SJ8"
                                     ("Tspan" "ONT:GENE" :ID "HGNC:20660" :NAME
                                      "tetraspanin 18"))
                                    ("upcase" "TYROBP" "UP:O43914"
                                     ("Tyrobp" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12449" :NAME
                                      "transmembrane immune signaling adaptor TYROBP"))
                                    ("upcase" "DMD" "UP:P11532"
                                     ("Dmd" "ONT:GENE-PROTEIN" :ID "HGNC:2928"
                                      :NAME "dystrophin"))
                                    ("upcase" "IFNLR" "UP:Q8IU57"
                                     ("Ifnlr" "ONT:GENE" :ID "HGNC:18584" :NAME
                                      "interferon lambda receptor 1"))
                                    ("upcase" "PFS" "UP:O32028"
                                     ("Pfs" "ONT:PROTEIN" :ID "UP:P47244" :NAME
                                      "Phosphoglucomutase-1"))
                                    ("upcase" "FLIPR" "UP:Q2YXC0"
                                     ("FLIPr" "ONT:PROTEIN" :ID "UP:Q2FHS7"
                                      :NAME "FPRL1 inhibitory protein"))
                                    ("upcase" "GASDERMIN" "XFAM:PF04598"
                                     ("Gasdermin" "ONT:GENE-PROTEIN" :ID
                                      "FA:01471" :NAME "gasdermin family"))
                                    ("upcase" "UST" "UP:Q9Y2C2"
                                     ("uST" "ONT:GENE" :ID "HGNC:17223" :NAME
                                      "uronyl 2-sulfotransferase"))
                                    ("upcase" "NBR" "UP:Q5VV41"
                                     ("Nbr" "ONT:GENE" :ID "HGNC:15515" :NAME
                                      "Rho guanine nucleotide exchange factor 16"))
                                    ("upcase" "PPARA" "UP:Q07869"
                                     ("PPARa" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9232" :NAME
                                      "peroxisome proliferator activated receptor alpha"))
                                    ("upcase" "HLP" "UP:P10144"
                                     ("hlP" "ONT:GENE-PROTEIN" :ID "UP:Q5KQS5"
                                      :NAME "HSF-like protein"))
                                    ("upcase" "XLA" "UP:Q06187"
                                     ("xlA" "ONT:GENE" :ID "NCIT:C75014" :NAME
                                      "BTK"))
                                    ("upcase" "LTB" "UP:Q06643"
                                     ("Ltb" "ONT:GENE-PROTEIN" :ID "HGNC:6711"
                                      :NAME "lymphotoxin beta"))
                                    ("upcase" "NES" "UP:P48681"
                                     ("NEs" "ONT:GENE" :ID "HGNC:7756" :NAME
                                      "nestin"))
                                    ("upcase" "PROCR" "UP:Q9UNN8"
                                     ("Procr" "ONT:GENE" :ID "HGNC:9452" :NAME
                                      "protein C receptor"))
                                    ("upcase" "RGCC" "UP:Q9H4X1"
                                     ("Rgcc" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20369" :NAME
                                      "regulator of cell cycle"))
                                    ("upcase" "CTAGE" "HGNC:24346"
                                     ("cTAGE" "ONT:GENE-PROTEIN" :ID "FA:00774"
                                      :NAME "cTAGE family"))
                                    ("upcase" "ACSA" "UP:Q9NR19"
                                     ("AcSa" "ONT:GENE" :ID "HGNC:15814" :NAME
                                      "acyl-CoA synthetase short chain family member 2"))
                                    ("upcase" "CFTR" "UP:P13569"
                                     ("Cftr" "ONT:GENE-PROTEIN" :ID "HGNC:1884"
                                      :NAME
                                      "CF transmembrane conductance regulator"))
                                    ("upcase" "HPN" "UP:P05981"
                                     ("Hpn" "ONT:GENE" :ID "HGNC:5155" :NAME
                                      "hepsin"))
                                    ("upcase" "NPY" "UP:P01303"
                                     ("Npy" "ONT:GENE-PROTEIN" :ID "HGNC:7955"
                                      :NAME "neuropeptide Y"))
                                    ("upcase" "GLRB" "UP:P48167"
                                     ("Glrb" "ONT:GENE-PROTEIN" :ID "HGNC:4329"
                                      :NAME "glycine receptor beta"))
                                    ("upcase" "LYZ" "UP:P61626"
                                     ("Lyz" "ONT:GENE-PROTEIN" :ID "HGNC:6740"
                                      :NAME "lysozyme"))
                                    ("upcase" "NONO" "UP:Q15233"
                                     ("Nono" "ONT:GENE-PROTEIN" :ID "HGNC:7871"
                                      :NAME
                                      "non-POU domain containing octamer binding"))
                                    ("upcase" "MMAB" "UP:Q96EY8"
                                     ("mMAb" "ONT:GENE" :ID "HGNC:19331" :NAME
                                      "metabolism of cobalamin associated B"))
                                    ("upcase" "POLA" "UP:P09884"
                                     ("polA" "ONT:GENE" :ID "HGNC:9173" :NAME
                                      "DNA polymerase alpha 1, catalytic subunit"))
                                    ("upcase" "HYDIN" "UP:Q4G0P3"
                                     ("Hydin" "ONT:GENE" :ID "HGNC:19368" :NAME
                                      "HYDIN axonemal central pair apparatus protein"))
                                    ("upcase" "MSC" "UP:O60682"
                                     ("Msc" "ONT:GENE-PROTEIN" :ID "HGNC:7321"
                                      :NAME "musculin"))
                                    ("upcase" "ASG" "UP:Q96EG1"
                                     ("aSG" "ONT:PROTEIN" :ID "UP:Q32KH9" :NAME
                                      "Arylsulfatase G"))
                                    ("upcase" "MDEG" "UP:Q16515"
                                     ("mDeg" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C114693" :NAME "ASIC2"))
                                    ("upcase" "DERA" "UP:Q9Y315"
                                     ("Dera" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:24269" :NAME
                                      "deoxyribose-phosphate aldolase"))
                                    ("upcase" "DIR" "UP:P30518"
                                     ("Dir" "ONT:GENE-PROTEIN" :ID "UP:P09208"
                                      :NAME "Insulin-like receptor"))
                                    ("upcase" "FCRL" "UP:Q7L513"
                                     ("FcRL" "ONT:GENE" :ID "HGNC:18504" :NAME
                                      "Fc receptor like A"))
                                    ("upcase" "RIGI" "UP:O95786"
                                     ("Rigi" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C101420" :NAME "DDX58"))
                                    ("upcase" "ENP" "UP:P81768"
                                     ("eNP" "ONT:PROTEIN" :ID "UP:Q9QCE9" :NAME
                                      "Nucleoprotein"))
                                    ("upcase" "AKTIP" "UP:Q9H8T0"
                                     ("Aktip" "ONT:GENE" :ID "HGNC:16710" :NAME
                                      "AKT interacting protein"))
                                    ("upcase" "APOM" "UP:O95445"
                                     ("Apom" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:13916" :NAME "apolipoprotein M"))
                                    ("upcase" "BOM" "UP:Q6ISB3"
                                     ("Bom" "ONT:GENE" :ID "NCIT:C162373" :NAME
                                      "GRHL2"))
                                    ("upcase" "BSND" "UP:Q8WZ55"
                                     ("Bsnd" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16512" :NAME
                                      "barttin CLCNK type accessory beta subunit"))
                                    ("upcase" "EDA" "UP:Q92838"
                                     ("EdA" "ONT:GENE" :ID "HGNC:3157" :NAME
                                      "ectodysplasin A"))
                                    ("upcase" "PDXK" "UP:O00764"
                                     ("Pdxk" "ONT:GENE" :ID "HGNC:8819" :NAME
                                      "pyridoxal kinase"))
                                    ("upcase" "VTN" "UP:P04004"
                                     ("Vtn" "ONT:GENE-PROTEIN" :ID "HGNC:12724"
                                      :NAME "vitronectin"))
                                    ("upcase" "AARS" "UP:P49588"
                                     ("aaRS" "ONT:GENE" :ID "HGNC:20" :NAME
                                      "alanyl-tRNA synthetase 1"))
                                    ("upcase" "SFD" "UP:P35625"
                                     ("sfD" "ONT:GENE" :ID "NCIT:C52121" :NAME
                                      "TIMP3"))
                                    ("upcase" "CLI" "UP:P10909"
                                     ("CLi" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C84430" :NAME "CLU"))
                                    ("upcase" "CLIF" "UP:Q8WYA1"
                                     ("Clif" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C119696" :NAME "ARNTL2"))
                                    ("upcase" "DHC" "XFAM:PF09626.8"
                                     ("DhC" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF09626" :NAME "DHC"))
                                    ("upcase" "DMR" "UP:Q27297"
                                     ("DmR" "ONT:GENE" :ID "HGNC:19667" :NAME
                                      "WD repeat domain 20"))
                                    ("upcase" "ERP" "UP:Q9BY08"
                                     ("Erp" "ONT:GENE" :ID "NCIT:C52541" :NAME
                                      "ELK3"))
                                    ("upcase" "MAVS" "UP:Q7Z434"
                                     ("Mavs" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:29233" :NAME
                                      "mitochondrial antiviral signaling protein"))
                                    ("upcase" "MXA" "UP:P20592"
                                     ("Mxa" "ONT:GENE" :ID "NCIT:C113310" :NAME
                                      "MX1"))
                                    ("upcase" "PES" "UP:P79741"
                                     ("Pes" "ONT:GENE-PROTEIN" :ID "UP:P48147"
                                      :NAME "Prolyl endopeptidase"))
                                    ("upcase" "RALF" "XFAM:PF05498.9"
                                     ("Ralf" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF05498" :NAME "RALF"))
                                    ("upcase" "RVR" "UP:Q14995"
                                     ("Rvr" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C101742" :NAME "NR1D2"))
                                    ("upcase" "ILA" "UP:Q07011"
                                     ("iLA" "ONT:GENE" :ID "NCIT:C105112" :NAME
                                      "TNFRSF9"))
                                    ("upcase" "PPCA" "UP:P10619"
                                     ("pPCA" "ONT:PROTEIN" :ID "UP:P30694"
                                      :NAME
                                      "C4 phosphoenolpyruvate carboxylase"))
                                    ("upcase" "ACTB" "UP:P60709"
                                     ("Actb" "ONT:GENE-PROTEIN" :ID "HGNC:132"
                                      :NAME "actin beta"))
                                    ("upcase" "CST" "UP:Q86V15"
                                     ("Cst" "ONT:GENE-PROTEIN" :ID "UP:Q61420"
                                      :NAME "CMP-sialic acid transporter"))
                                    ("upcase" "ITGAX" "UP:P20702"
                                     ("Itgax" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6152" :NAME
                                      "integrin subunit alpha X"))
                                    ("upcase" "MADA" "UP:O06924"
                                     ("Mada" "ONT:GENE" :ID "NCIT:C61149" :NAME
                                      "LMNA"))
                                    ("upcase" "MCRA" "XFAM:PF06100.9"
                                     ("mcrA" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06100" :NAME "MCRA"))
                                    ("upcase" "ARHS" "UP:Q92730"
                                     ("ARHs" "ONT:GENE" :ID "HGNC:18314" :NAME
                                      "Rho family GTPase 1"))
                                    ("upcase" "AGA" "UP:P20933"
                                     ("AgA" "ONT:GENE-PROTEIN" :ID "HGNC:318"
                                      :NAME "aspartylglucosaminidase"))
                                    ("upcase" "TDT" "UP:P04053"
                                     ("tdT" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C16509" :NAME
                                      "DNA nucleotidylexotransferase"))
                                    ("upcase" "GCG" "UP:P01275"
                                     ("Gcg" "ONT:GENE-PROTEIN" :ID "HGNC:4191"
                                      :NAME "glucagon"))
                                    ("upcase" "NSE" "UP:P09104"
                                     ("Nse" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C62213" :NAME "ENO2"))
                                    ("upcase" "NXN" "UP:Q6DKJ4"
                                     ("NxN" "ONT:GENE" :ID "HGNC:18008" :NAME
                                      "nucleoredoxin"))
                                    ("upcase" "PHET" "UP:O60271"
                                     ("Phet" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14524" :NAME
                                      "sperm associated antigen 9"))
                                    ("upcase" "EPOX" "UP:P07099"
                                     ("Epox" "ONT:GENE" :ID "NCIT:C49357" :NAME
                                      "EPHX1"))
                                    ("upcase" "HAVCR" "UP:Q96D42"
                                     ("Havcr" "ONT:GENE" :ID "NCIT:C116607"
                                      :NAME "HAVCR1"))
                                    ("upcase" "MRK" "UP:Q9NYL2"
                                     ("Mrk" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C150262" :NAME "ICK"))
                                    ("upcase" "SPAP" "UP:Q13113"
                                     ("SpaP" "ONT:GENE" :ID "NCIT:C52371" :NAME
                                      "PDZK1IP1"))
                                    ("upcase" "AMT" "UP:P48728"
                                     ("Amt" "ONT:GENE" :ID "HGNC:473" :NAME
                                      "aminomethyltransferase"))
                                    ("upcase" "CIITA" "UP:P33076"
                                     ("Ciita" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7067" :NAME
                                      "class II major histocompatibility complex transactivator"))
                                    ("upcase" "ECSCR" "UP:Q19T08"
                                     ("Ecscr" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:35454" :NAME
                                      "endothelial cell surface expressed chemotaxis and apoptosis regulator"))
                                    ("upcase" "FPR" "UP:P21462"
                                     ("Fpr" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C26208" :NAME
                                      "fMet-leu-phe receptor"))
                                    ("upcase" "GRAS" "XFAM:PF03514.12"
                                     ("GRAs" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF03514" :NAME "GRAS"))
                                    ("upcase" "HEXB" "UP:P07686"
                                     ("HexB" "ONT:GENE" :ID "HGNC:4879" :NAME
                                      "hexosaminidase subunit beta"))
                                    ("upcase" "IDUA" "UP:P35475"
                                     ("IduA" "ONT:GENE" :ID "HGNC:5391" :NAME
                                      "alpha-L-iduronidase"))
                                    ("upcase" "ITGAL" "UP:P20701"
                                     ("Itgal" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6148" :NAME
                                      "integrin subunit alpha L"))
                                    ("upcase" "NEFL" "UP:P07196"
                                     ("Nefl" "ONT:GENE" :ID "HGNC:7739" :NAME
                                      "neurofilament light"))
                                    ("upcase" "NEFM" "UP:P07197"
                                     ("Nefm" "ONT:GENE" :ID "HGNC:7734" :NAME
                                      "neurofilament medium"))
                                    ("upcase" "PBGS" "UP:P13716"
                                     ("PBGs" "ONT:GENE" :ID "HGNC:395" :NAME
                                      "aminolevulinate dehydratase"))
                                    ("upcase" "PPIB" "UP:P23284"
                                     ("Ppib" "ONT:GENE" :ID "HGNC:9255" :NAME
                                      "peptidylprolyl isomerase B"))
                                    ("upcase" "PTPRM" "UP:P28827"
                                     ("Ptprm" "ONT:GENE" :ID "HGNC:9675" :NAME
                                      "protein tyrosine phosphatase receptor type M"))
                                    ("upcase" "SGCE" "UP:O43556"
                                     ("Sgce" "ONT:GENE" :ID "HGNC:10808" :NAME
                                      "sarcoglycan epsilon"))
                                    ("upcase" "SPI" "UP:P10645"
                                     ("spI" "ONT:PROTEIN" :ID "UP:P86242" :NAME
                                      "Papain inhibitor"))
                                    ("upcase" "ABO" "UP:P16442"
                                     ("Abo" "ONT:GENE" :ID "HGNC:79" :NAME
                                      "ABO, alpha 1-3-N-acetylgalactosaminyltransferase and alpha 1-3-galactosyltransferase"))
                                    ("upcase" "ALAD" "UP:P13716"
                                     ("Alad" "ONT:GENE-PROTEIN" :ID "HGNC:395"
                                      :NAME "aminolevulinate dehydratase"))
                                    ("upcase" "CALS" "UP:P35219"
                                     ("CaLS" "ONT:GENE" :ID "HGNC:1382" :NAME
                                      "carbonic anhydrase 8"))
                                    ("upcase" "GOK" "UP:Q13586"
                                     ("GoK" "ONT:GENE" :ID "NCIT:C52380" :NAME
                                      "STIM1"))
                                    ("upcase" "JACOP" "UP:Q0VF96"
                                     ("JACoP" "ONT:GENE" :ID "NCIT:C98065"
                                      :NAME "CGNL1"))
                                    ("upcase" "MBP" "UP:P02686"
                                     ("Mbp" "ONT:GENE-PROTEIN" :ID "HGNC:6925"
                                      :NAME "myelin basic protein"))
                                    ("upcase" "MEX" "UP:Q8NEG5"
                                     ("Mex" "ONT:GENE-PROTEIN" :ID "HGNC:30990"
                                      :NAME
                                      "zinc finger SWIM-type containing 2"))
                                    ("upcase" "NGL" "UP:P04626"
                                     ("NgL" "ONT:GENE" :ID "NCIT:C52166" :NAME
                                      "ERBB2"))
                                    ("upcase" "SFL" "UP:Q9V3L1"
                                     ("SfL" "ONT:GENE-PROTEIN" :ID "UP:Q9NUL5"
                                      :NAME
                                      "Shiftless antiviral inhibitor of ribosomal frameshifting protein"))
                                    ("upcase" "GTX" "UP:Q9C056"
                                     ("Gtx" "ONT:GENE-PROTEIN" :ID "UP:P43685"
                                      :NAME "Gilatoxin"))
                                    ("upcase" "SCT" "UP:P09683"
                                     ("Sct" "ONT:GENE-PROTEIN" :ID "HGNC:10607"
                                      :NAME "secretin"))
                                    ("upcase" "VIP" "UP:P01282"
                                     ("Vip" "ONT:GENE-PROTEIN" :ID "HGNC:12693"
                                      :NAME "vasoactive intestinal peptide"))
                                    ("upcase" "NAAA" "UP:Q02083"
                                     ("nAAA" "ONT:GENE" :ID "HGNC:736" :NAME
                                      "N-acylethanolamine acid amidase"))
                                    ("upcase" "MANF" "UP:P55145"
                                     ("Manf" "ONT:GENE" :ID "HGNC:15461" :NAME
                                      "mesencephalic astrocyte derived neurotrophic factor"))
                                    ("upcase" "VAPB" "UP:O95292"
                                     ("VapB" "ONT:GENE-PROTEIN" :ID "UP:A2VDZ9"
                                      :NAME
                                      "Vesicle-associated membrane protein-associated protein B"))
                                    ("upcase" "HRC" "UP:P23327"
                                     ("HRc" "ONT:GENE-PROTEIN" :ID "HGNC:5178"
                                      :NAME
                                      "histidine rich calcium binding protein"))
                                    ("upcase" "RIS" "UP:Q9NYN1"
                                     ("RIs" "ONT:GENE" :ID "HGNC:30289" :NAME
                                      "RAS like family 12"))
                                    ("upcase" "ARH" "UP:Q5SW96"
                                     ("ArH" "ONT:GENE" :ID "HGNC:18640" :NAME
                                      "low density lipoprotein receptor adaptor protein 1"))
                                    ("upcase" "EPCAM" "UP:P16422"
                                     ("Epcam" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11529" :NAME
                                      "epithelial cell adhesion molecule"))
                                    ("upcase" "LIF" "UP:P15018"
                                     ("Lif" "ONT:GENE-PROTEIN" :ID "HGNC:6596"
                                      :NAME
                                      "LIF interleukin 6 family cytokine"))
                                    ("upcase" "NOK" "UP:Q6J9G0"
                                     ("NoK" "ONT:GENE" :ID "HGNC:18889" :NAME
                                      "serine/threonine/tyrosine kinase 1"))
                                    ("upcase" "TESS" "UP:Q9UGI8"
                                     ("TeSS" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C73549" :NAME "TES"))
                                    ("upcase" "APOB" "UP:P04114"
                                     ("Apob" "ONT:GENE-PROTEIN" :ID "HGNC:603"
                                      :NAME "apolipoprotein B"))
                                    ("upcase" "CATA" "UP:P07773"
                                     ("CatA" "ONT:PROTEIN" :ID "UP:P0C549"
                                      :NAME "Catalase isozyme A"))
                                    ("upcase" "DAK" "UP:Q3LXA3"
                                     ("Dak" "ONT:GENE-PROTEIN" :ID "UP:P0C1F9"
                                      :NAME "Deoxyadenosine kinase"))
                                    ("upcase" "DTL" "UP:Q9NZJ0"
                                     ("Dtl" "ONT:GENE" :ID "HGNC:30288" :NAME
                                      "denticleless E3 ubiquitin protein ligase homolog"))
                                    ("upcase" "GIIA" "UP:Q14697"
                                     ("GIIa" "ONT:GENE" :ID "HGNC:4138" :NAME
                                      "glucosidase II alpha subunit"))
                                    ("upcase" "LBA" "UP:P50851"
                                     ("Lba" "ONT:GENE" :ID "HGNC:1742" :NAME
                                      "LPS responsive beige-like anchor protein"))
                                    ("upcase" "OTC" "UP:P00480"
                                     ("Otc" "ONT:GENE-PROTEIN" :ID "HGNC:8512"
                                      :NAME "ornithine carbamoyltransferase"))
                                    ("upcase" "PRB" "UP:P06400"
                                     ("Prb" "ONT:PROTEIN" :ID "NCIT:C17075"
                                      :NAME "progesterone receptor"))
                                    ("upcase" "RHOB" "UP:P62745"
                                     ("Rhob" "ONT:GENE-PROTEIN" :ID "HGNC:668"
                                      :NAME "ras homolog family member B"))
                                    ("upcase" "TTR" "UP:P02766"
                                     ("Ttr" "ONT:GENE-PROTEIN" :ID "HGNC:12405"
                                      :NAME "transthyretin"))
                                    ("upcase" "EGP" "UP:P16422"
                                     ("eGP" "ONT:PROTEIN" :ID "NCIT:C20209"
                                      :NAME
                                      "epithelial cell adhesion molecule"))
                                    ("upcase" "CHAD" "UP:O15335"
                                     ("ChAd" "ONT:GENE" :ID "HGNC:1909" :NAME
                                      "chondroadherin"))
                                    ("upcase" "DDR" "XFAM:PF08841.8"
                                     ("DdR" "ONT:GENE-PROTEIN" :ID "FPLX:DDR"
                                      :NAME "DDR"))
                                    ("upcase" "IGJ" "UP:P01591"
                                     ("IgJ" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C113523" :NAME "JCHAIN"))
                                    ("upcase" "JOS" "UP:P54252"
                                     ("Jos" "ONT:GENE" :ID "HGNC:7106" :NAME
                                      "ataxin 3"))
                                    ("upcase" "LAK" "UP:P56559"
                                     ("Lak" "ONT:GENE" :ID "HGNC:698" :NAME
                                      "ADP ribosylation factor like GTPase 4C"))
                                    ("upcase" "IRGM" "UP:A1A4Y4"
                                     ("Irgm" "ONT:GENE" :ID "HGNC:29597" :NAME
                                      "immunity related GTPase M"))
                                    ("downcase" "favipiravir" "PUBCHEM:492405"
                                     ("Favipiravir"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "NCIT:C81605" :NAME "favipiravir"))
                                    ("upcase" "PIGR" "UP:P01833"
                                     ("pIgR" "ONT:GENE-PROTEIN" :ID "HGNC:8968"
                                      :NAME
                                      "polymeric immunoglobulin receptor"))
                                    ("upcase" "DPYD" "UP:Q12882"
                                     ("Dpyd" "ONT:GENE-PROTEIN" :ID "HGNC:3012"
                                      :NAME "dihydropyrimidine dehydrogenase"))
                                    ("upcase" "ETO" "UP:Q06455"
                                     ("EtO" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18320" :NAME "protein CBFA2T1"))
                                    ("upcase" "GAPDH" "UP:P04406"
                                     ("Gapdh" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4141" :NAME
                                      "glyceraldehyde-3-phosphate dehydrogenase"))
                                    ("upcase" "PLT" "UP:Q02083"
                                     ("Plt" "ONT:PROTEIN" :ID "UP:Q12674" :NAME
                                      "Probable phospholipid-transporting ATPase DNF3"))
                                    ("upcase" "TMT" "UP:Q9NRR2"
                                     ("Tmt" "ONT:GENE" :ID "HGNC:14134" :NAME
                                      "tryptase gamma 1"))
                                    ("upcase" "AHCY" "UP:P23526"
                                     ("ahcY" "ONT:GENE-PROTEIN" :ID "HGNC:343"
                                      :NAME "adenosylhomocysteinase"))
                                    ("upcase" "FASLG" "UP:P48023"
                                     ("FasLG" "ONT:GENE" :ID "HGNC:11936" :NAME
                                      "Fas ligand"))
                                    ("upcase" "HYPF" "UP:Q9GZV9"
                                     ("HypF" "ONT:GENE" :ID "NCIT:C104383"
                                      :NAME "FGF23"))
                                    ("upcase" "RDR" "UP:Q15758"
                                     ("rDR" "ONT:GENE" :ID "NCIT:C118926" :NAME
                                      "SLC1A5"))
                                    ("upcase" "FDX" "UP:P10109"
                                     ("Fdx" "ONT:GENE" :ID "HGNC:3638" :NAME
                                      "ferredoxin 1"))
                                    ("upcase" "PROT" "UP:Q99884"
                                     ("Prot" "ONT:GENE" :ID "HGNC:11054" :NAME
                                      "solute carrier family 6 member 7"))
                                    ("upcase" "TOX" "UP:O94900"
                                     ("Tox" "ONT:GENE-PROTEIN" :ID "HGNC:18988"
                                      :NAME
                                      "thymocyte selection associated high mobility group box"))
                                    ("upcase" "VIC" "UP:Q43358"
                                     ("Vic" "ONT:PROTEIN" :ID "UP:P22389" :NAME
                                      "Endothelin-2"))
                                    ("upcase" "WHRN" "UP:Q9P202"
                                     ("Whrn" "ONT:GENE" :ID "HGNC:16361" :NAME
                                      "whirlin"))
                                    ("upcase" "PAGA" "UP:Q06830"
                                     ("pagA" "ONT:GENE" :ID "HGNC:9352" :NAME
                                      "peroxiredoxin 1"))
                                    ("upcase" "SCOC" "UP:Q9UIL1"
                                     ("scoC" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20335" :NAME
                                      "short coiled-coil protein"))))

(defparameter *ID-AND-CAT-MISMATCH* '(("orig" "DDP" "UP:O60220" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("DDP" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C376" :NAME "cisplatin"))
                                      ("orig" "ARD" "UP:Q9BV57" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ARD" "ONT:CELL-LINE" :ID "CVCL:XD83"
                                        :NAME "ARD"))
                                      ("orig" "ASA" "UP:Q08DD1" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ASA" "ONT:CELL-LINE" :ID "CVCL:UW34"
                                        :NAME "ASA"))
                                      ("orig" "CHOP" "UP:P35638" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CHOP" "ONT:CELL-LINE" :ID "CVCL:4702"
                                        :NAME "CHOP"))
                                      ("upcase" "NAC" "UP:Q9C000" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("nac" "ONT:CELL-LINE" :ID "CVCL:IX18"
                                        :NAME "NAC"))
                                      ("upcase" "EPF" "UP:P61604" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("epf" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF17181" :NAME "EPF"))
                                      ("upcase" "MST" "UP:P25325" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("mst" "ONT:CELL-LINE" :ID "CVCL:VT16"
                                        :NAME "MST"))
                                      ("upcase" "CAF" "UP:Q13111" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("caf" "ONT:CELL-LINE" :ID "CVCL:R883"
                                        :NAME "CAF"))
                                      ("upcase" "ICD" "UP:O67480" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("icd"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C34723" :NAME
                                        "impulse-control disorder"))
                                      ("upcase" "DBF" "UP:P02810" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("dbf" "ONT:CHEMICAL" :ID "CHEBI:28145"
                                        :NAME "dibenzofuran"))
                                      ("upcase" "SHP" "UP:Q15466" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("shp" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF03579" :NAME "SHP"))
                                      ("upcase" "MBL" "UP:P11226" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("mbl" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1151" :NAME
                                        "mannose-binding lectin"))
                                      ("upcase" "GMK" "UP:Q16774" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("gmk" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C11571" :NAME
                                        "GM2-KLH vaccine/QS21"))
                                      ("upcase" "PID" "UP:O94776" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("pid" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00640" :NAME "PID"))
                                      ("upcase" "RTH" "UP:Q9SD42" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("rth" "ONT:CELL-LINE" :ID "CVCL:AZ91"
                                        :NAME "RTH"))
                                      ("upcase" "NEP" "XFAM:PF10167.7" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("nep" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C16836" :NAME "neprilysin"))
                                      ("upcase" "FAE" "UP:Q9HB96" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("fae" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF08714" :NAME "fae"))
                                      ("upcase" "KFC" "UP:Q9I9E0" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("kfc" "ONT:CELL-LINE" :ID "CVCL:0I51"
                                        :NAME "KFC"))
                                      ("upcase" "CPS" "GO:0004088" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("cps" "ONT:GENE-PROTEIN" :ID
                                        "HGNC:2295" :NAME "ceruloplasmin"))
                                      ("upcase" "DEF" "UP:Q68CQ4" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("def" "ONT:GENE-PROTEIN" :ID "FA:00922"
                                        :NAME "def family"))
                                      ("upcase" "MIC" "FA:02295" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("mic" "ONT:CELL-LINE" :ID "CVCL:EI96"
                                        :NAME "MIC"))
                                      ("upcase" "SMZ" "UP:Q6PV68" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("smz" "ONT:CHEMICAL" :ID "CHEBI:102265"
                                        :NAME "sulfamethazine"))
                                      ("upcase" "GMAP" "UP:P22466" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("gmap" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF06540" :NAME "GMAP"))
                                      ("upcase" "IPK" "XFAM:PF03770" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("ipk" "ONT:GENE-PROTEIN" :ID
                                        "UP:Q8H1F7" :NAME
                                        "Isopentenyl phosphate kinase"))
                                      ("upcase" "CCO" "UP:P21817" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cco" "ONT:CELL-LINE" :ID "CVCL:4142"
                                        :NAME "CCO"))
                                      ("upcase" "TCC" "UP:Q9H9B4" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("tcc" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0005579" :NAME
                                        "membrane attack complex"))
                                      ("upcase" "MCI" "UP:D6RGH6" :OLD-CAT
                                       PROTEIN :NEW-CAT UNIT-OF-MEASURE
                                       ("mci" "ONT:MEASURE-UNIT" :ID
                                        "UO:0000145" :NAME "millicurie"))
                                      ("upcase" "PTS" "UP:Q03393" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("pts" "ONT:CHEMICAL" :ID "CHEBI:141395"
                                        :NAME "Pro-Thr"))
                                      ("upcase" "EAE" "UP:Q03547" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("eae"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0001066" :NAME
                                        "experimental autoimmune encephalomyelitis"))
                                      ("upcase" "PFC" "UP:P27918" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("pfc" "ONT:CELL-LINE" :ID "CVCL:6F45"
                                        :NAME "PFC"))
                                      ("upcase" "CPA" "UP:P15085" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cpa" "ONT:CELL-LINE" :ID "CVCL:C451"
                                        :NAME "CP-A"))
                                      ("upcase" "CMA" "UP:P05820" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("cma" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C365" :NAME
                                        "chlormadinone acetate"))
                                      ("upcase" "THI" "UP:P45362" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("thi"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C27071" :NAME
                                        "transient hypogammaglobulinemia of infancy"))
                                      ("upcase" "CLM" "UP:Q7TSN2" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("clm" "ONT:CHEMICAL" :ID "CHEBI:71615"
                                        :NAME "cyclo(L-leucyl-L-methionyl)"))
                                      ("upcase" "OSF" "UP:Q92882" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("osf" "ONT:CELL-LINE" :ID "CVCL:VG01"
                                        :NAME "OS-F"))
                                      ("upcase" "TSP" "FA:04006" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("tsp" "ONT:GENE-PROTEIN" :ID
                                        "UP:Q858F5" :NAME
                                        "Tail spike protein"))
                                      ("upcase" "HAL" "UP:P42357" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("hal" "ONT:CELL-LINE" :ID "CVCL:D788"
                                        :NAME "HAL"))
                                      ("upcase" "UNP" "UP:Q13107" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("unp" "ONT:MOLECULE" :ID "CHEBI:33349"
                                        :NAME "dubnium atom"))
                                      ("upcase" "TDI" "UP:P0CAT3" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("tdi" "ONT:CHEMICAL" :ID "NCIT:C44457"
                                        :NAME "toluene diisocyanate"))
                                      ("upcase" "TERRA" "UP:Q8BG36" :OLD-CAT
                                       PROTEIN :NEW-CAT RNA
                                       ("terra" "ONT:RNA" :ID "NCIT:C116964"
                                        :NAME
                                        "telomeric repeat-containing RNA"))
                                      ("upcase" "FCL" "UP:P33217" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("fcl" "ONT:CELL-LINE" :ID "BTO:0000453"
                                        :NAME "fibroblast cell line"))
                                      ("upcase" "DCM" "IPR001525" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT DISEASE
                                       ("dcm"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0000407" :NAME
                                        "dilated cardiomyopathy"))
                                      ("upcase" "STN" "UP:Q05639" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("stn" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1226" :NAME
                                        "sialyl Tn antigen"))
                                      ("upcase" "MUR" "UP:P06019" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("mur" "ONT:CHEMICAL" :ID "CHEBI:28118"
                                        :NAME "muramic acid"))
                                      ("upcase" "NPT" "UP:A1YCA5" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("npt" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C153425" :NAME
                                        "platinum acetylacetonate-titanium dioxide nanoparticles"))
                                      ("upcase" "AICD" "UP:P05067" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-PROCESS
                                       ("aicd" "ONT:BIOLOGICAL-PROCESS" :ID
                                        "GO:0006924" :NAME
                                        "activation-induced cell death of T cells"))
                                      ("upcase" "SIF" "UP:P91620" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("sif" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF06767" :NAME "sif"))
                                      ("upcase" "CAMB" "UP:P0DP24" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("camb" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C150700" :NAME
                                        "encochleated amphotericin B"))
                                      ("upcase" "DDD" "UP:Q94918" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("ddd" "ONT:CHEMICAL" :ID "CHEBI:27841"
                                        :NAME "DDD"))
                                      ("upcase" "MSP" "UP:P26927" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("msp" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF01716" :NAME "MSP"))
                                      ("upcase" "AST" "UP:Q9NRA2" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ast" "ONT:CELL-LINE" :ID "CVCL:S100"
                                        :NAME "AST"))
                                      ("upcase" "MCC" "UP:P23508" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("mcc" "ONT:CELL-LINE" :ID "CVCL:UG10"
                                        :NAME "MCC"))
                                      ("upcase" "HDA" "UP:A8AD95" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("hda" "ONT:CHEMICAL" :ID "CHEBI:17314"
                                        :NAME "13-hydroxydocosanoic acid"))
                                      ("upcase" "TDF" "UP:Q05066" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("tdf" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C47747" :NAME
                                        "tenofovir disoproxil fumarate"))
                                      ("upcase" "URI" "UP:O94763" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("uri"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C35650" :NAME
                                        "upper respiratory tract infection"))
                                      ("upcase" "PSU" "UP:P05460" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("psu" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF07455" :NAME "psu"))
                                      ("upcase" "BUP" "UP:Q9UBI1" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("bup" "ONT:GENE-PROTEIN" :ID "FA:00647"
                                        :NAME "BUP family"))
                                      ("upcase" "BCM" "UP:Q02223" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("bcm" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1154" :NAME "carbendazim"))
                                      ("upcase" "TMC" "UP:P46977" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("tmc" "ONT:GENE-PROTEIN" :ID "FA:04030"
                                        :NAME "TMC family"))
                                      ("upcase" "ADC" "UP:Q6ZQY3" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Adc" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF06314" :NAME "ADC"))
                                      ("upcase" "ADCAII" "UP:O15265" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("AdcAII"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "ORPHANET:208508" :NAME
                                        "Autosomal dominant cerebellar ataxia type 2"))
                                      ("upcase" "INCF" "UP:P0DJI5" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("IncF" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF17626" :NAME "IncF"))
                                      ("upcase" "RDS" "UP:P23942" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("RDs"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C27560" :NAME
                                        "respiratory distress syndrome"))
                                      ("upcase" "OLS" "UP:B1Q2B6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("OLs" "ONT:CELL" :ID "CO:0000128" :NAME
                                        "oligodendrocyte"))
                                      ("upcase" "AMA" "UP:P37112" :OLD-CAT
                                       PROTEIN :NEW-CAT ORGANIZATION
                                       ("aMa" "ONT:PROFESSIONAL-ORGANIZATION"
                                        :ID "NCIT:C39317" :NAME
                                        "american medical association"))
                                      ("upcase" "SEGA" "UP:P32286" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("Sega" "ONT:CANCER" :ID "NCIT:C3696"
                                        :NAME
                                        "subependymal giant cell astrocytoma"))
                                      ("upcase" "INCA" "UP:Q5XLA6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Inca" "ONT:GENE-PROTEIN" :ID
                                        "FA:01853" :NAME "INCA family"))
                                      ("upcase" "SPR" "UP:P25103" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Spr" "ONT:CELL-LINE" :ID "CVCL:L986"
                                        :NAME "SpR"))
                                      ("upcase" "AVD" "UP:P02701" :OLD-CAT
                                       PROTEIN :NEW-CAT CELLULAR-LOCATION
                                       ("AVd" "ONT:CELL-PART" :ID "GO:0044754"
                                        :NAME "autolysosome"))
                                      ("upcase" "EPG" "UP:Q6UW88" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("EpG" "ONT:CELL-LINE" :ID "CVCL:R841"
                                        :NAME "EPG"))
                                      ("upcase" "EAD" "UP:Q03546" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("eAd"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C129304" :NAME
                                        "congenital myasthenic syndrome 5"))
                                      ("orig" "HpaI" "UP:Q47098" :OLD-CAT FLUAV
                                       :NEW-CAT DRUG
                                       ("HpaI" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "MESH:C016679" :NAME
                                        "polyacrylamide"))
                                      ("upcase" "PII" "UP:G3FNQ9" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Pii" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00543" :NAME "P-II"))
                                      ("upcase" "ETC" "UP:P32940" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Etc" "ONT:CELL-LINE" :ID "CVCL:F272"
                                        :NAME "ETC"))
                                      ("upcase" "CCR" "UP:Q3IZ91" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Ccr" "ONT:PROTEIN" :ID "GO:0043880"
                                        :NAME
                                        "crotonyl-CoA reductase activity"))
                                      ("upcase" "PBL" "UP:Q46790" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("PBl" "ONT:CANCER" :ID "NCIT:C7224"
                                        :NAME "plasmablastic lymphoma"))
                                      ("upcase" "DSR" "UP:Q97GB9" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("DSr" "ONT:PROTEIN" :ID "GO:0047560"
                                        :NAME
                                        "3-dehydrosphinganine reductase activity"))
                                      ("upcase" "PYC" "UP:Q9KWU4" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("pYC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C128889" :NAME
                                        "french maritime pine bark extract"))
                                      ("upcase" "GOR" "UP:Q8IX06" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Gor" "ONT:CELL-LINE" :ID "CVCL:V740"
                                        :NAME "Gor"))
                                      ("upcase" "CTP" "UP:P53007" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("cTP" "ONT:CHEMICAL" :ID "CHEBI:17677"
                                        :NAME "CTP"))
                                      ("upcase" "HAE" "UP:P47735" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Hae" "ONT:CELL-LINE" :ID "CVCL:0C12"
                                        :NAME "HA-E"))
                                      ("upcase" "PCI" "UP:P05154" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Pci" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01399" :NAME "PCI"))
                                      ("upcase" "SAB" "UP:O60239" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("SaB" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF04382" :NAME "SAB"))
                                      ("upcase" "DME" "UP:Q8LK56" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Dme" "ONT:CHEMICAL" :ID "CHEBI:42263"
                                        :NAME "1,2-dimethoxyethane"))
                                      ("upcase" "HSP" "NCIT:C16672" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("hSP" "ONT:CELL-LINE" :ID "CVCL:5291"
                                        :NAME "HS-P"))
                                      ("upcase" "CHL" "UP:Q9MBA1" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Chl" "ONT:CELL-LINE" :ID "CVCL:0212"
                                        :NAME "CHL"))
                                      ("upcase" "IMPDH" "XFAM:PF00478" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Impdh" "ONT:GENE-PROTEIN" :ID
                                        "UP:P49058" :NAME
                                        "Inosine-5'-monophosphate dehydrogenase"))
                                      ("upcase" "MCA" "UP:P60254" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("McA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:34342" :NAME
                                        "3-methylcholanthrene"))
                                      ("upcase" "GGR" "UP:P47871" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-PROCESS
                                       ("GGr" "ONT:BIOLOGICAL-PROCESS" :ID
                                        "GO:0070911" :NAME
                                        "global genome nucleotide-excision repair"))
                                      ("upcase" "PHL" "UP:P11346" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Phl" "ONT:CELL-LINE" :ID "CVCL:5863"
                                        :NAME "PHL"))
                                      ("upcase" "PRF" "XFAM:PF06875.9" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN-DOMAIN
                                       ("pRF" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF06875" :NAME "PRF"))
                                      ("upcase" "AKR" "IPR020471" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT ORGANISM
                                       ("Akr" "ONT:NONHUMAN-ANIMAL" :ID
                                        "NCIT:C37354" :NAME "AKR mouse"))
                                      ("upcase" "ESC" "UP:Q9S7C9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("Esc" "ONT:CELL" :ID "CO:0002322" :NAME
                                        "embryonic stem cell"))
                                      ("upcase" "RPLS" "UP:B0CAC6" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("RPLs"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:1001829" :NAME
                                        "Posterior Leukoencephalopathy Syndrome"))
                                      ("upcase" "SIAE" "NCIT:C91283" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Siae" "ONT:GENE" :ID "HGNC:18187"
                                        :NAME "sialic acid acetylesterase"))
                                      ("upcase" "CHP" "UP:Q99653" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("cHP" "ONT:GENE-PROTEIN" :ID "FA:05055"
                                        :NAME "CHP subfamily"))
                                      ("upcase" "DIC" "UP:Q9UBX3" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("DiC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C411" :NAME "dacarbazine"))
                                      ("upcase" "SBF" "XFAM:PF01758.14"
                                       :OLD-CAT PROTEIN-FAMILY :NEW-CAT
                                       CELL-LINE
                                       ("Sbf" "ONT:CELL-LINE" :ID "CVCL:WY68"
                                        :NAME "SBF"))
                                      ("upcase" "CAA" "UP:P04480" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("caA"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0006790" :NAME
                                        "cerebral amyloid angiopathy"))
                                      ("upcase" "YMDB" "UP:O31775" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Ymdb" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF13277" :NAME "YmdB"))
                                      ("upcase" "CLP" "UP:P27482" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("Clp" "ONT:CELL" :ID "CO:0000051" :NAME
                                        "common lymphoid progenitor"))
                                      ("upcase" "ERC" "UP:Q9ERA7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELLULAR-LOCATION
                                       ("ERc" "ONT:CELL-PART" :ID "UP:SL-0232"
                                        :NAME "Recycling endosome"))
                                      ("upcase" "BGM" "UP:Q96GR2" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BGm" "ONT:CELL-LINE" :ID "CVCL:4125"
                                        :NAME "BGM"))
                                      ("upcase" "DDA" "UP:P32270" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("Dda" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C429" :NAME "dideoxyadenosine"))
                                      ("upcase" "MOSC" "UP:Q07609" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Mosc" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF03473" :NAME "MOSC"))
                                      ("upcase" "SSH" "UP:Q8WYL5" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("SSh" "ONT:MOLECULE" :ID "CHEBI:30605"
                                        :NAME "disulfanyl group"))
                                      ("upcase" "HET" "UP:Q15424" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Het" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF06985" :NAME "HET"))
                                      ("upcase" "SLN" "UP:O00631" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Sln" "ONT:CELL-LINE" :ID "CVCL:S948"
                                        :NAME "SLN"))
                                      ("upcase" "DED" "UP:Q9NY61" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Ded" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01335" :NAME "DED"))
                                      ("upcase" "CPB" "UP:P15086" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Cpb" "ONT:CELL-LINE" :ID "CVCL:Z515"
                                        :NAME "CPB"))
                                      ("upcase" "TRC" "UP:Q9NBK5" :OLD-CAT
                                       PROTEIN :NEW-CAT RNA
                                       ("Trc" "ONT:RNA" :ID "HGNC:12250" :NAME
                                        "tRNA-Cys (GCA) 24-1"))
                                      ("upcase" "CREC" "UP:A1CTE6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("CreC" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:00753" :NAME "CREC family"))
                                      ("upcase" "ARO" "UP:P11511" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Aro" "ONT:CELL-LINE" :ID "CVCL:0144"
                                        :NAME "ARO"))
                                      ("upcase" "BTX" "UP:P80163" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BTx" "ONT:CELL-LINE" :ID "CVCL:4134"
                                        :NAME "BT"))
                                      ("upcase" "PEPA" "UP:Q96KP4" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("Pepa" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0000343" :NAME
                                        "plastid-encoded plastid RNA polymerase complex A"))
                                      ("upcase" "RBR" "UP:A9UL14" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("RBr" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:03241" :NAME "RBR family"))
                                      ("upcase" "BVR" "UP:P53004" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Bvr" "ONT:CELL-LINE" :ID "CVCL:1M70"
                                        :NAME "BVR"))
                                      ("upcase" "NIA" "UP:P90245" :OLD-CAT
                                       PROTEIN :NEW-CAT ORGANIZATION
                                       ("NIa" "ONT:PROFESSIONAL-ORGANIZATION"
                                        :ID "NCIT:C82604" :NAME
                                        "national institute on aging"))
                                      ("upcase" "MSV" "NCIT:C51245" :OLD-CAT
                                       PROTEIN :NEW-CAT UNIT-OF-MEASURE
                                       ("mSv" "ONT:MEASURE-UNIT" :ID
                                        "UO:0000138" :NAME "millisievert"))
                                      ("upcase" "KAT" "UP:Q8NFU3" :OLD-CAT
                                       PROTEIN :NEW-CAT UNIT-OF-MEASURE
                                       ("Kat" "ONT:MEASURE-UNIT" :ID
                                        "UO:0000120" :NAME "katal"))
                                      ("upcase" "MLD" "UP:O15121" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Mld" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF11647" :NAME "MLD"))
                                      ("upcase" "CCDB" "UP:P45709" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("ccdB" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01845" :NAME "CcdB"))
                                      ("orig" "recA" "UP:Q06609" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("recA" "ONT:CELL-LINE" :ID "CVCL:ER23"
                                        :NAME "RECA"))
                                      ("upcase" "ATC" "UP:Q9ZNV5" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("ATc" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C2354" :NAME "timonacic"))
                                      ("upcase" "CLN" "UP:Q9XGI7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cLN" "ONT:CELL-LINE" :ID "CVCL:3663"
                                        :NAME "CLN"))
                                      ("upcase" "CALD" "UP:Q6R4R6" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("Cald"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C142852" :NAME
                                        "cerebral adrenoleukodystrophy"))
                                      ("upcase" "KLK" "UP:Q5S2C3" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Klk" "ONT:GENE-PROTEIN" :ID "FPLX:KLK"
                                        :NAME "KLK"))
                                      ("upcase" "ETM" "UP:P11039" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("eTM" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF17577" :NAME "ETM"))
                                      ("upcase" "BTH" "UP:Q8R4P5" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BtH" "ONT:CELL-LINE" :ID "CVCL:WK89"
                                        :NAME "BT-H"))
                                      ("upcase" "SCD" "UP:O00767" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("sCD" "ONT:GENE-PROTEIN" :ID "FPLX:SCD"
                                        :NAME "SCD"))
                                      ("orig" "sIL" "UP:Q15468" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("sIL"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C8334" :NAME
                                        "squamous cell intraepithelial neoplasia"))
                                      ("upcase" "DFC" "UP:F4J2K2" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("dFC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C76928" :NAME "dexelvucitabine"))
                                      ("upcase" "ABC" "XFAM:PF00005" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT DISEASE
                                       ("AbC"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C3516" :NAME
                                        "aneurysmal bone cyst"))
                                      ("upcase" "BRL" "UP:O95696" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Brl" "ONT:CELL-LINE" :ID "CVCL:4565"
                                        :NAME "BRL"))
                                      ("upcase" "DPN" "UP:Q26263" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Dpn" "ONT:CHEMICAL" :ID "CHEBI:16998"
                                        :NAME "D-phenylalanine"))
                                      ("upcase" "ENT" "UP:Q95P23" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Ent" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF03735" :NAME "ENT"))
                                      ("upcase" "ETI" "UP:P23827" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Eti" "ONT:CHEMICAL" :ID "CHEBI:53454"
                                        :NAME "5,8,11-icosatriynoic acid"))
                                      ("upcase" "MSN" "UP:P26038" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MSn" "ONT:CELL-LINE" :ID "CVCL:9882"
                                        :NAME "MSN"))
                                      ("upcase" "PSM" "UP:Q04609" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Psm" "ONT:CELL-LINE" :ID "CVCL:R917"
                                        :NAME "PSM-1"))
                                      ("upcase" "PTR" "XFAM:PF12789.5" :OLD-CAT
                                       PROTEIN-DOMAIN :NEW-CAT CELL-LINE
                                       ("Ptr" "ONT:CELL-LINE" :ID "CVCL:HF63"
                                        :NAME "PT-r"))
                                      ("upcase" "PSS" "XFAM:PF03034.13"
                                       :OLD-CAT PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("PSs" "ONT:GENE-PROTEIN" :ID
                                        "UP:D7UQ44" :NAME
                                        "Prosolanapyrone synthase"))
                                      ("upcase" "CYP" "XFAM:PF00067" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("Cyp" "ONT:PROTEIN" :ID "NCIT:C16484"
                                        :NAME "cytochrome P450"))
                                      ("upcase" "GDS" "UP:Q5SBP6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("GDs" "ONT:GENE-PROTEIN" :ID
                                        "GO:0005085" :NAME
                                        "guanyl-nucleotide exchange factor activity"))
                                      ("upcase" "TGT" "UP:Q9BXR0" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("TgT" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF01702" :NAME "TGT"))
                                      ("upcase" "FACS" "UP:P9WQ37" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-METHOD
                                       ("Facs" "ONT:PROCEDURE" :ID
                                        "NCIT:C17353" :NAME
                                        "fluorescence activated cell sorting"))
                                      ("upcase" "BAP" "UP:Q99623" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Bap" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF06639" :NAME "BAP"))
                                      ("upcase" "GALK" "UP:P51570" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("GalK" "ONT:GENE-PROTEIN" :ID
                                        "FA:01505" :NAME "galK subfamily"))
                                      ("upcase" "CTAB" "UP:B0C0A5" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("CTAb" "ONT:CHEMICAL" :ID "CHEBI:3567"
                                        :NAME
                                        "cetyltrimethylammonium bromide"))
                                      ("upcase" "CASA" "UP:P47710" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-PROCESS
                                       ("Casa" "ONT:BIOLOGICAL-PROCESS" :ID
                                        "GO:0061684" :NAME
                                        "chaperone-mediated autophagy"))
                                      ("upcase" "CLA" "UP:P0CL70" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Cla" "ONT:CELL-LINE" :ID "CVCL:E529"
                                        :NAME "CLA"))
                                      ("upcase" "DAL" "UP:P85120" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Dal" "ONT:CHEMICAL" :ID "CHEBI:15570"
                                        :NAME "D-alanine"))
                                      ("upcase" "LOL" "UP:Q08397" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Lol" "ONT:CELL-LINE" :ID "CVCL:WH00"
                                        :NAME "L-OL"))
                                      ("upcase" "TED" "UP:O75949" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Ted" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF08341" :NAME "TED"))
                                      ("upcase" "DBM" "UP:P09172" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("dBm" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C659" :NAME "mitobronitol"))
                                      ("upcase" "DMP" "UP:Q38167" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-PROCESS
                                       ("dMP" "ONT:BIOLOGICAL-PROCESS" :ID
                                        "GO:0035882" :NAME
                                        "defecation rhythm"))
                                      ("upcase" "CLINT" "UP:Q14677" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Clint" "ONT:CELL-LINE" :ID "CVCL:V933"
                                        :NAME "S006006"))
                                      ("upcase" "CSPC" "UP:P20718" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("cspC" "ONT:CANCER" :ID "NCIT:C153336"
                                        :NAME
                                        "castration-sensitive prostate carcinoma"))
                                      ("upcase" "JUPITER" "UP:B3M0Y8" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Jupiter" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:01784" :NAME "JUPITER family"))
                                      ("upcase" "VIR" "UP:Q9W1R5" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Vir" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:04582" :NAME "vir family"))
                                      ("upcase" "ROP" "UP:P04000" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("RoP" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01815" :NAME "rop"))
                                      ("upcase" "VBS" "UP:Q12062" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("VBs" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF08913" :NAME "VBS"))
                                      ("upcase" "NIF" "UP:Q9PTJ6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Nif" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF03031" :NAME "NIF"))
                                      ("upcase" "COPB" "UP:P53618" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("copB" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF05275" :NAME "CopB"))
                                      ("upcase" "KARS" "UP:Q15046" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("KARs" "ONT:GENE-PROTEIN" :ID
                                        "FPLX:Kainate_family" :NAME
                                        "Kainate-family"))
                                      ("upcase" "SGBS" "UP:P51654" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SGBs" "ONT:CELL-LINE" :ID "CVCL:GS28"
                                        :NAME "SGBS"))
                                      ("upcase" "MTLR" "UP:O43193" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("mTLR" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF05068" :NAME "MtlR"))
                                      ("upcase" "BSA" "UP:P02769" :OLD-CAT
                                       PROTEIN :NEW-CAT ORGANIZATION
                                       ("Bsa" "ONT:PROFESSIONAL-ORGANIZATION"
                                        :ID "NCIT:C39333" :NAME
                                        "board of scientific advisors NCI"))
                                      ("upcase" "SACI" "UP:Q96PN6" :OLD-CAT
                                       PROTEIN :NEW-CAT ORGANIZATION
                                       ("SacI" "ONT:PROFESSIONAL-ORGANIZATION"
                                        :ID "NCIT:C39511" :NAME
                                        "cancer therapy and research center"))
                                      ("upcase" "PAF" "XFAM:PF15715.3" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN-DOMAIN
                                       ("paF" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF15715" :NAME "PAF"))
                                      ("upcase" "RNS" "UP:P16114" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("rNs"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:1001838" :NAME
                                        "renal nutcracker syndrome"))
                                      ("upcase" "FCS" "NCIT:C113696" :OLD-CAT
                                       EXPERIMENTAL-CONDITION :NEW-CAT PROTEIN
                                       ("FCs" "ONT:PROTEIN" :ID "UP:Q06529"
                                        :NAME
                                        "Cytochrome subunit of sulfide dehydrogenase"))
                                      ("upcase" "COR" "UP:P17651" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Cor" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF16095" :NAME "COR"))
                                      ("upcase" "NMA" "UP:Q13145" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("Nma" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1178" :NAME "tilarginine"))
                                      ("upcase" "ATA" "UP:A3M3H0" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Ata" "ONT:CHEMICAL" :ID "NCIT:C44331"
                                        :NAME "amitrole"))
                                      ("upcase" "BON" "XFAM:PF04972" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("Bon" "ONT:CELL-LINE" :ID "CVCL:E493"
                                        :NAME "BON"))
                                      ("upcase" "PIC" "UP:Q9XYZ5" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("Pic" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0019035" :NAME
                                        "viral integration complex"))
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
                                      ("upcase" "FHC" "UP:P02794" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("fHC" "ONT:CELL-LINE" :ID "CVCL:3688"
                                        :NAME "FHC"))))

(defparameter *NO-ID-REDEF* 'NIL)

(defparameter *NAMECAT-ID-MISMATCHES* 'NIL)

(defparameter *NO-RULE-REDEF* 'NIL)

(defparameter *NAME-ID-MISMATCHES* '((DISEASE "hepatitis C infection"
                                      "NCIT:C3098" :NEWUID "EFO:0003047" :WORD
                                      "NANBH")
                                     (MOLECULE "deferoxamine mesylate"
                                      "PUBCHEM:24883429" :NEWUID "NCIT:C417"
                                      :WORD "DFM")
                                     (MOLECULE "biguanide" "PUBCHEM:5939"
                                      :NEWUID "CHEBI:3095" :WORD "HBIG")
                                     (DRUG "adefovir" "MESH:C053001" :NEWUID
                                      "NCIT:C61526" :WORD "PMEA")
                                     (DRUG "tamsulosin hydrochloride"
                                      "NCIT:C29486" :NEWUID "CHEBI:9399" :WORD
                                      "OMNIC")
                                     (DRUG "ethionamide" "NCIT:C47522" :NEWUID
                                      "CHEBI:4885" :WORD "ETH")
                                     (CELL-LINE "BCBL-1" "EFO:0002048" :NEWUID
                                      "CVCL:0165" :WORD "BCBL")
                                     (MOLECULE "vigabatrin" "PUBCHEM:5665"
                                      :NEWUID "CHEBI:63638" :WORD "GVG")
                                     (CANCER "chronic lymphocytic leukemia"
                                      "NCIT:C3163" :NEWUID "EFO:0000095" :WORD
                                      "CLL")
                                     (DRUG "nitazoxanide" "NCIT:C47637" :NEWUID
                                      "MESH:C041747" :WORD "NTZ")
                                     (DRUG "clomipramine" "NCIT:C61608" :NEWUID
                                      "CHEBI:47780" :WORD "chlorimipramine")
                                     (DRUG "antihypertensive agent"
                                      "CHEBI:35674" :NEWUID "NCIT:C270" :WORD
                                      "hypotensives")
                                     (DRUG "gefitinib" "CHEBI:49668" :NEWUID
                                      "NCIT:C1855" :WORD "iressa")
                                     (DRUG "procarbazine" "NCIT:C773" :NEWUID
                                      "NCIT:C62072" :WORD "ibenzmethyzin")
                                     (MOLECULE "myo-inositol" "PUBCHEM:892"
                                      :NEWUID "CHEBI:17268" :WORD
                                      "myoinositol")
                                     (DRUG "cefuroxime" "NCIT:C61669" :NEWUID
                                      "CHEBI:3515" :WORD "cefuroxim")
                                     (DRUG "trastuzumab" "MESH:D000068878"
                                      :NEWUID "NCIT:C1647" :WORD "herceptin")
                                     (DRUG "ribavirin" "NCIT:C807" :NEWUID
                                      "CHEBI:63580" :WORD "ribavirine")
                                     (DRUG "cyclosporine" "PUBCHEM:5284373"
                                      :NEWUID "NCIT:C406" :WORD "ciclosporin")
                                     (DRUG "ridaforolimus" "MESH:C515074"
                                      :NEWUID "NCIT:C49061" :WORD
                                      "deforolimus")
                                     (DRUG "ganciclovir" "NCIT:C517" :NEWUID
                                      "CHEBI:465284" :WORD "gancyclovir")
                                     (DRUG "cyclopropane" "NCIT:C81404" :NEWUID
                                      "MESH:C030797" :WORD "trimethylene")
                                     (DRUG "isoquercitrin" "NCIT:C99879"
                                      :NEWUID "MESH:C016527" :WORD
                                      "isoquercetin")
                                     (DRUG "cyclopropane" "NCIT:C81404" :NEWUID
                                      "CHEBI:30365" :WORD "cyclopropan")
                                     (DRUG "heparin" "NCIT:C539" :NEWUID
                                      "CHEBI:28304" :WORD "heparinum")
                                     (MOLECULE "dodecanoate" "PUBCHEM:102182"
                                      :NEWUID "CHEBI:18262" :WORD "laurate")
                                     (CELLULAR-LOCATION "pseudopodium"
                                      "UP:SL-0298" :NEWUID "GO:0031143" :WORD
                                      "pseudopod")
                                     (DISEASE "lymphadenitis" "HP:0002840"
                                      :NEWUID "NCIT:C26821" :WORD "adenitis")
                                     (DRUG "natalizumab" NIL :NEWUID
                                      "NCIT:C77862" :WORD "Tysabri")
                                     (MOLECULE "benzene" "NCIT:C302" :NEWUID
                                      "CHEBI:16716" :WORD "Phene")
                                     (DRUG "mizoribine" "NCIT:C66172" :NEWUID
                                      "MESH:C010052" :WORD "Bredinin")
                                     (DRUG "crizotinib" NIL :NEWUID
                                      "NCIT:C74061" :WORD "Xalkori")
                                     (DRUG "alemtuzumab" NIL :NEWUID
                                      "NCIT:C1681" :WORD "Campath")
                                     (DRUG "ceftiofur" "NCIT:C81036" :NEWUID
                                      "MESH:C053503" :WORD "Naxcel")
                                     (DRUG "halothane" "NCIT:C47554" :NEWUID
                                      "CHEBI:5615" :WORD "Fluothane")
                                     (PROTEIN-DOMAIN "F-box" "XFAM:PF00646.31"
                                      :NEWUID "XFAM:PF00646" :WORD "Fbox")
                                     (DRUG "rituximab" NIL :NEWUID "NCIT:C1702"
                                      :WORD "Rituxan")
                                     (DRUG "methoxyflurane" "NCIT:C75098"
                                      :NEWUID "CHEBI:6843" :WORD "Penthrane")
                                     (DRUG "infliximab" NIL :NEWUID
                                      "NCIT:C1789" :WORD "Remicade")
                                     (DRUG "antihypertensive agent"
                                      "CHEBI:35674" :NEWUID "NCIT:C270" :WORD
                                      "Antihypertensives")
                                     (MOLECULE "cadaverine" "PUBCHEM:273"
                                      :NEWUID "CHEBI:18127" :WORD "DapE")
                                     (DRUG "motavizumab" "NCIT:C88584" :NEWUID
                                      "MESH:C506968" :WORD "Numax")
                                     (DRUG "heparin" "NCIT:C539" :NEWUID
                                      "CHEBI:28304" :WORD "Heparine")
                                     (DRUG "ofatumumab" NIL :NEWUID
                                      "NCIT:C66952" :WORD "Arzerra")
                                     (DRUG "cetuximab" "CHEMBL1201577" :NEWUID
                                      "NCIT:C1723" :WORD "Erbitux")
                                     (DRUG "rituximab" NIL :NEWUID "NCIT:C1702"
                                      :WORD "Mabthera")
                                     (DRUG "molgramostim" "NCIT:C77591" :NEWUID
                                      "MESH:C082430" :WORD "Leucomax")
                                     (MOLECULE "lithium acetate"
                                      "PUBCHEM:3474584" :NEWUID "CHEBI:63045"
                                      :WORD "LiOAc")
                                     (MOLECULE "tylosin" "PUBCHEM:72715817"
                                      :NEWUID "CHEBI:17658" :WORD "Tylan")
                                     (DRUG "adjuvant" "CHEBI:60809" :NEWUID
                                      "NCIT:C2140" :WORD "Adj")
                                     (DRUG "carfilzomib" NIL :NEWUID
                                      "NCIT:C52196" :WORD "Kyprolis")
                                     (MOLECULE "sphingosine" "PUBCHEM:5353955"
                                      :NEWUID "CHEBI:16393" :WORD "Sphingosin")
                                     (DRUG "secukinumab" NIL :NEWUID
                                      "MESH:C555450" :WORD "Cosentyx")
                                     (DRUG "ramucirumab" NIL :NEWUID
                                      "NCIT:C70792" :WORD "Cyramza")
                                     (DRUG "adalimumab" NIL :NEWUID
                                      "NCIT:C65216" :WORD "Humira")
                                     (DRUG "nivolumab" NIL :NEWUID
                                      "NCIT:C68814" :WORD "Opdivo")
                                     (DRUG "necitumumab" NIL :NEWUID
                                      "NCIT:C88281" :WORD "Portrazza")
                                     (DRUG "brodalumab" NIL :NEWUID
                                      "MESH:C571216" :WORD "Siliq")
                                     (DRUG "ustekinumab" NIL :NEWUID
                                      "NCIT:C84237" :WORD "Stelara")
                                     (DRUG "panitumumab" NIL :NEWUID
                                      "NCIT:C1857" :WORD "Vectibix")
                                     (DRUG "ipilimumab" NIL :NEWUID
                                      "NCIT:C2654" :WORD "Yervoy")
                                     (DRUG "zoledronic acid" "CHEBI:46557"
                                      :NEWUID "NCIT:C1699" :WORD "Zometa")))

(defparameter *PROT-FAM-REDEF* 'NIL)

(defparameter *VIOLATES-NO-PLURAL* '((DRUG "benzotriazoles" "MESH:C012771"
                                      "benzotriazole")
                                     (DRUG "salicylamides" "NCIT:C80566"
                                      "salicylamide")
                                     (DRUG "salicylanilides" "NCIT:C84142"
                                      "salicylanilide")
                                     (DRUG "eumelanins" "MESH:C041877"
                                      "eumelanin")
                                     (DRUG "prenols" "MESH:C009034" "prenol")
                                     (DRUG "lysophosphatidylethanolamines"
                                      "MESH:C008301"
                                      "lysophosphatidylethanolamine")
                                     (DRUG "oligomannosides" "MESH:C028569"
                                      "oligomannoside")
                                     (DRUG "milbemycins" "MESH:C027837"
                                      "milbemycin")
                                     (DRUG "benzothiazoles" "MESH:C005465"
                                      "benzothiazole")
                                     (DRUG "Saikosaponins" "MESH:C025759"
                                      "saikosaponin")))

(defparameter *WORD-DIFF-POS-NAME* 'NIL)

(defparameter *PLURALS-OF-EXISTING-CATS* 'NIL)

(defparameter *DIFF-POS-OF-EXISTING-CATS* 'NIL)

(defparameter *PLURALS-OF-EXISTING-WORDS* '((MOLECULE "sulfonates"
                                             "CHEBI:33543" :NAME "sulfonate")
                                            (DRUG "thienopyridines"
                                             "MESH:C446540" :NAME
                                             "thienopyridine")
                                            (PROTEIN-DOMAIN "wws"
                                             "XFAM:PF00397" :NAME "WW")
                                            (DRUG "phenothiazines" "NCIT:C740"
                                             :NAME "phenothiazine")
                                            (DRUG "pyridines" "MESH:C023666"
                                             :NAME "pyridine")
                                            (DRUG "phenanthrenes"
                                             "MESH:C031181" :NAME
                                             "phenanthrene")
                                            (DRUG "benzaldehydes"
                                             "MESH:C032175" :NAME
                                             "benzaldehyde")
                                            (DRUG "benzamides" "MESH:C037689"
                                             :NAME "benzamide")
                                            (DRUG "hydrazines" "NCIT:C29097"
                                             :NAME "hydrazine")
                                            (DRUG "uridines" "NCIT:C922" :NAME
                                             "uridine")
                                            (DRUG "benzophenones"
                                             "MESH:C047723" :NAME
                                             "benzophenone")
                                            (DRUG "pullulans" "MESH:C009109"
                                             :NAME "pullulan")
                                            (DRUG "phenols" "CHEBI:15882" :NAME
                                             "phenol")
                                            (DRUG "pyrazoles" "MESH:C031280"
                                             :NAME "pyrazole")
                                            (DRUG "aziridines" "MESH:C033132"
                                             :NAME "aziridine")
                                            (DRUG "catechols" "MESH:C034221"
                                             :NAME "catechol")
                                            (DRUG "maleimides" "MESH:C043592"
                                             :NAME "maleimide")
                                            (DRUG "Bleomycins" "NCIT:C313"
                                             :NAME "bleomycin")
                                            (CELLULAR-LOCATION "Micronuclei"
                                             "GO:0031040" :NAME "micronucleus")))

(defparameter *DIFF-POS-OF-EXISTING-WORDS* 'NIL)

(defparameter *SYNONYM-FOR-EXISTING-WORDS* '((CELL-LINE "MRCV" "CVCL:0440"
                                              "MRC-5")
                                             (MOLECULE "PHV" "CHEBI:53390"
                                              "poly(hydroxyvalerate)")
                                             (MOLECULE "AGUA" "CHEBI:15377"
                                              "water")
                                             (DRUG "DMTU" "MESH:C038983"
                                              "1,3-dimethylthiourea")
                                             (DRUG "NMH" "NCIT:C645"
                                              "methylnitrosourea")
                                             (CELL-LINE "QGY" "CVCL:6715"
                                              "QGY-7703")
                                             (DISEASE "MIRAS" "ORPHANET:94125"
                                              "Recessive mitochondrial ataxia syndrome")
                                             (CELLULAR-LOCATION "GWB"
                                              "UP:SL-0230" "P-body")
                                             (CELL-LINE "JSE" "CVCL:0C17"
                                              "JS-E")
                                             (CELL-LINE "CCRFCEM" "CVCL:0207"
                                              "CCRF-CEM")
                                             (CELL-LINE "NSO" "CVCL:3940"
                                              "NS0")
                                             (CELL-LINE "KWS" "CVCL:9816"
                                              "KWS-I")
                                             (DISEASE "NANBH" "EFO:0003047"
                                              "hepatitis C infection")
                                             (RNA "SSRA" "NCIT:C95954"
                                              "transfer-messenger RNA")
                                             (DRUG "CTO" "NCIT:C91090"
                                              "carboxyamidotriazole orotate")
                                             (CELL-LINE "XTH" "CVCL:1892"
                                              "XTH-2")
                                             (DISEASE "CSOM" "NCIT:C128386"
                                              "chronic suppurative otitis media")
                                             (CELL-LINE "HUG" "CVCL:4845"
                                              "HuG-1")
                                             (DRUG "MNU" "NCIT:C645"
                                              "methylnitrosourea")
                                             (DRUG "THC" "NCIT:C867"
                                              "dronabinol")
                                             (DRUG "MTQ" "NCIT:C640"
                                              "methaqualone")
                                             (MOLECULE "DFM" "NCIT:C417"
                                              "deferoxamine mesylate")
                                             (DRUG "PVPI" "NCIT:C766"
                                              "povidone-iodine")
                                             (DRUG "KLT" "NCIT:C91705"
                                              "kanglaite")
                                             (DISEASE "MDCL" "NCIT:C148369"
                                              "muscular dystrophy congenital, LMNA-related")
                                             (MOLECULE "RCN" "CHEBI:18379"
                                              "nitrile")
                                             (CELL-LINE "CAPI" "CVCL:0I81"
                                              "CaPi")
                                             (MOLECULE "IPPC" "CHEBI:82035"
                                              "propham")
                                             (MOLECULE "PAPS" "CHEBI:58339"
                                              "3'-phosphonato-5'-adenylyl sulfate(4-)")
                                             (DISEASE "EME" "NCIT:C116593"
                                              "early myoclonic encephalopathy")
                                             (MOLECULE "HNCO" "CHEBI:29202"
                                              "isocyanic acid")
                                             (CELL-LINE "GACT" "CVCL:WT57"
                                              "HPE-GAC-T")
                                             (MOLECULE "HBIG" "CHEBI:3095"
                                              "biguanide")
                                             (DRUG "PMEA" "NCIT:C61526"
                                              "adefovir")
                                             (DRUG "PMPA" "NCIT:C29490"
                                              "tenofovir")
                                             (DISEASE "MDRTB" "NCIT:C128415"
                                              "multidrug-resistant tuberculosis")
                                             (CELL-LINE "CAPT" "CVCL:WI61"
                                              "CAP-T")
                                             (DRUG "IUDR" "NCIT:C563"
                                              "idoxuridine")
                                             (MOLECULE "FLEX" "CHEBI:138164"
                                              "fomesafen-sodium")
                                             (DRUG "OMNIC" "CHEBI:9399"
                                              "tamsulosin hydrochloride")
                                             (CELL-LINE "PEO" "CVCL:2686"
                                              "PEO1")
                                             (CELL-LINE "LMAT" "CVCL:A640"
                                              "L-MAT")
                                             (MOLECULE "IDM" "CHEBI:55312"
                                              "diphenylmethane monoisocyanate")
                                             (DRUG "DCFHDA" "MESH:C029569"
                                              "diacetyldichlorofluorescein")
                                             (DRUG "ETH" "CHEBI:4885"
                                              "ethionamide")
                                             (DRUG "IMO" "NCIT:C607"
                                              "leucovorin calcium")
                                             (DISEASE "ACU" "EFO:1001871"
                                              "acquired cold urticaria")
                                             (MOLECULE "DMSA" "NCIT:C61953"
                                              "succimer")
                                             (MOLECULE "AGN" "CHEBI:9141"
                                              "silver(0)")
                                             (CELL-LINE "TSM" "CVCL:U157"
                                              "TSM1")
                                             (DRUG "MLII" "MESH:C057669"
                                              "mutalipocin II")
                                             (DRUG "ICON" "NCIT:C1512"
                                              "immunoconjugate")
                                             (CELL-LINE "NCG" "CVCL:8824"
                                              "SJNB-7")
                                             (CELL-LINE "ECV" "CVCL:2029"
                                              "ECV-304")
                                             (MOLECULE "PEI" "CHEBI:53231"
                                              "poly(ethylene imine)")
                                             (BIO-METHOD "WGAS" "NCIT:C93020"
                                              "whole genome association study")
                                             (DRUG "AED" "NCIT:C97356"
                                              "cystamine dihydrochloride")
                                             (DRUG "CBN" "NCIT:C84510"
                                              "cannabinol")
                                             (DISEASE "CVA" "EFO:0000712"
                                              "stroke")
                                             (DRUG "DFMO" "NCIT:C226"
                                              "eflornithine")
                                             (DRUG "NGNA" "MESH:C032592"
                                              "N-glycolylneuraminic acid")
                                             (DRUG "PMSG" "NCIT:C29773"
                                              "pregnant mare serum gonadotropin")
                                             (DRUG "UDCA" "NCIT:C1818"
                                              "ursodiol")
                                             (DRUG "VCR" "NCIT:C933"
                                              "vincristine")
                                             (DRUG "ELLA" "NCIT:C91057"
                                              "ulipristal acetate")
                                             (CELLULAR-LOCATION "MVE"
                                              "GO:0005771"
                                              "multivesicular body")
                                             (DRUG "TASQ" "NCIT:C74080"
                                              "tasquinimod")
                                             (CELL-LINE "HSB" "CVCL:1859"
                                              "CCRF-HSB-2")
                                             (MOLECULE "ESSENCE" "CHEBI:48318"
                                              "fragrance")
                                             (CELL-LINE "BCBL" "CVCL:0165"
                                              "BCBL-1")
                                             (DRUG "QIV" "NCIT:C128455"
                                              "quadrivalent inactivated influenza vaccine")
                                             (CELL-LINE "YAC" "CVCL:2244"
                                              "YAC-1")
                                             (DRUG "AEBSF" "MESH:C002010"
                                              "4-(2-aminoethyl)benzenesulfonylfluoride")
                                             (DRUG "CMM" "NCIT:C352"
                                              "carubicin")
                                             (MOLECULE "FHF" "CHEBI:30480"
                                              "difluoridohydrogenate(1-)")
                                             (MOLECULE "GVG" "CHEBI:63638"
                                              "vigabatrin")
                                             (CANCER "CLL" "EFO:0000095"
                                              "chronic lymphocytic leukemia")
                                             (DRUG "NTZ" "MESH:C041747"
                                              "nitazoxanide")
                                             (MOLECULE "CBV" "CHEBI:421843"
                                              "(-)-carbovir")
                                             (DRUG "ACV" "NCIT:C205"
                                              "acyclovir")
                                             (CELLULAR-LOCATION "CORE"
                                              "GO:0019013"
                                              "viral nucleocapsid")
                                             (DRUG "GCV" "NCIT:C517"
                                              "ganciclovir")
                                             (DRUG "adenosylornithine"
                                              "NCIT:C73041" "sinefungin")
                                             (MOLECULE "aminotriazole"
                                              "NCIT:C44331" "amitrole")
                                             (MOLECULE "naphtalene"
                                              "CHEBI:16482" "naphthalene")
                                             (CELL-LINE "mxi" "CVCL:4774"
                                              "MX-1")
                                             (MOLECULE "oxidizer" "CHEBI:63248"
                                              "oxidising agent")
                                             (DRUG "chlorimipramine"
                                              "CHEBI:47780" "clomipramine")
                                             (MOLECULE "diphosphatidylglycerol"
                                              "CHEBI:28494" "cardiolipin")
                                             (MOLECULE "glycerinaldehyde"
                                              "CHEBI:5445" "glyceraldehyde")
                                             (DRUG "alizarine" "MESH:C010078"
                                              "alizarin")
                                             (DRUG "dimethylthiourea"
                                              "MESH:C038983"
                                              "1,3-dimethylthiourea")
                                             (MOLECULE "reducer" "CHEBI:63247"
                                              "reducing agent")
                                             (MOLECULE "glutardialdehyde"
                                              "CHEBI:64276" "glutaraldehyde")
                                             (DRUG "hypotensives" "NCIT:C270"
                                              "antihypertensive agent")
                                             (DRUG "iressa" "NCIT:C1855"
                                              "gefitinib")
                                             (DRUG "deltadehydrocortisone"
                                              "NCIT:C770" "prednisone")
                                             (MOLECULE "adamantan"
                                              "CHEBI:40519" "adamantane")
                                             (MOLECULE
                                              "hexadecyltrimethylammonium"
                                              "CHEBI:39561"
                                              "cetyltrimethylammonium ion")
                                             (DRUG "amethopterin" "NCIT:C642"
                                              "methotrexate")
                                             (DRUG "cytoxan" "NCIT:C405"
                                              "cyclophosphamide")
                                             (DRUG "ibenzmethyzin"
                                              "NCIT:C62072" "procarbazine")
                                             (MOLECULE "guanosin" "CHEBI:16750"
                                              "guanosine")
                                             (MOLECULE "trinitrophenyl"
                                              "CHEBI:53067"
                                              "2,4,6-trinitrophenyl group")
                                             (MOLECULE "carbinol" "CHEBI:17790"
                                              "methanol")
                                             (DISEASE "oesophagitis"
                                              "NCIT:C9224" "esophagitis")
                                             (DISEASE "spondylarthropathy"
                                              "EFO:0000706"
                                              "spondyloarthropathy")
                                             (DRUG "cedilanid" "CHEBI:135898"
                                              "lanatoside C")
                                             (DRUG "hyperin" "MESH:C021304"
                                              "hyperoside")
                                             (BIO-PROCESS "geotropism"
                                              "GO:0009630" "gravitropism")
                                             (MOLECULE "amylum" "CHEBI:28017"
                                              "starch")
                                             (DRUG "anastrazole" "NCIT:C1607"
                                              "anastrozole")
                                             (DISEASE "hypocalcaemia"
                                              "HP:0002901" "Hypocalcemia")
                                             (DRUG "holotoxins" "MESH:C001883"
                                              "stichoposide")
                                             (MOLECULE "hydrochlorid"
                                              "CHEBI:36807" "hydrochloride")
                                             (DRUG "geraniin" "MESH:C024603"
                                              "Geraniin")
                                             (CELL-TYPE "lipocytes"
                                              "CO:0000632"
                                              "hepatic stellate cell")
                                             (MOLECULE "myoinositol"
                                              "CHEBI:17268" "myo-inositol")
                                             (MOLECULE "gammaglutamyl"
                                              "CHEBI:24190"
                                              "gamma-glutamyl group")
                                             (DISEASE "pollakiuria"
                                              "HP:0000103" "polyuria")
                                             (MOLECULE "cystin" "CHEBI:17376"
                                              "cystine")
                                             (MOLECULE "carbobenzyloxy"
                                              "CHEBI:51097"
                                              "benzyloxycarbonyl group")
                                             (MOLECULE "methylmethane"
                                              "CHEBI:42266" "ethane")
                                             (MOLECULE "polyformaldehyde"
                                              "CHEBI:53421"
                                              "poly(oxymethylene) macromolecule")
                                             (BIO-METHOD "secondstrand"
                                              "NCIT:C150426"
                                              "second-strand library sequencing")
                                             (MOLECULE "tromethamine"
                                              "CHEBI:9754" "tris")
                                             (DRUG "accure" "NCIT:C603"
                                              "isotretinoin")
                                             (MOLECULE "acetylglucosamine"
                                              "CHEBI:28009"
                                              "N-acetyl-beta-D-glucosamine")
                                             (MOLECULE "ribofuranosyl"
                                              "CHEBI:26565" "ribosyl group")
                                             (DRUG "sophoridine" "MESH:C034244"
                                              "matrine")
                                             (UNIT-OF-MEASURE "micrometre"
                                              "UO:0000017" "micrometer")
                                             (ORGANISM "microspora"
                                              "NCIT:C123335" "microsporidia")
                                             (MOLECULE "phenylmethane"
                                              "CHEBI:17578" "toluene")
                                             (MOLECULE "acylglycerols"
                                              "CHEBI:17408" "monoglyceride")
                                             (MOLECULE "polysiloxane"
                                              "CHEBI:48140"
                                              "silicone macromolecule")
                                             (DRUG "atipamezol" "NCIT:C72921"
                                              "atipamezole")
                                             (DRUG "immunon" "MESH:C459208"
                                              "Immunon")
                                             (MOLECULE "polymethylmethacrylate"
                                              "CHEBI:61369"
                                              "poly(methyl methacrylate) polymer")
                                             (MOLECULE "bibenzyl" "CHEBI:34047"
                                              "1,2-dihydrostilbene")
                                             (MOLECULE "methyne" "CHEBI:29432"
                                              "methanylylidene group")
                                             (DRUG "pentylenetetrazol"
                                              "NCIT:C81054" "pentetrazol")
                                             (DRUG "cefuroxim" "CHEBI:3515"
                                              "cefuroxime")
                                             (UNIT-OF-MEASURE "kda"
                                              "UO:0000222" "kilodalton")
                                             (CANCER "paraproteinemia"
                                              "EFO:0000203"
                                              "monoclonal gammopathy")
                                             (DRUG "herceptin" "NCIT:C1647"
                                              "trastuzumab")
                                             (MOLECULE "trichloromethane"
                                              "NCIT:C29815" "chloroform")
                                             (DRUG "oubain" "CHEBI:472805"
                                              "ouabain")
                                             (DRUG "acycloguanosine"
                                              "NCIT:C205" "acyclovir")
                                             (DRUG "ribavirine" "CHEBI:63580"
                                              "ribavirin")
                                             (MOLECULE "oestrogen"
                                              "CHEBI:50114" "estrogen")
                                             (MOLECULE "carrageenin"
                                              "CHEBI:3435" "carrageenan")
                                             (MOLECULE "cotrimoxazol"
                                              "CHEBI:3770" "co-trimoxazole")
                                             (DRUG "diethylaminoethanol"
                                              "MESH:C007369"
                                              "2-diethylaminoethanol")
                                             (DRUG "itaconate" "MESH:C005229"
                                              "itaconic acid")
                                             (DRUG "kempferol" "MESH:C006552"
                                              "kaempferol")
                                             (VIRUS "mcv" "NCIT:C73535"
                                              "merkel cell polyomavirus")
                                             (MOLECULE "phloridzin"
                                              "CHEBI:8113" "phlorizin")
                                             (MOLECULE "betalactam"
                                              "CHEBI:35627" "beta-lactam")
                                             (DRUG "ciclosporin" "NCIT:C406"
                                              "cyclosporine")
                                             (MOLECULE "dimethylnitrosamine"
                                              "NCIT:C44417"
                                              "N-nitrosodimethylamine")
                                             (BIO-PROCESS "hematophagy"
                                              "GO:0044369"
                                              "feeding on blood of other organism")
                                             (MOLECULE "acetylamino"
                                              "CHEBI:48374" "acetamido group")
                                             (DRUG "deforolimus" "NCIT:C49061"
                                              "ridaforolimus")
                                             (DRUG "iododeoxyuridine"
                                              "NCIT:C563" "idoxuridine")
                                             (MOLECULE "oxalacetate"
                                              "CHEBI:16452" "oxaloacetate(2-)")
                                             (DRUG "predate" "NCIT:C1202"
                                              "prednisolone acetate")
                                             (MOLECULE "pyrrolidone"
                                              "CHEBI:36592" "pyrrolidin-2-one")
                                             (MOLECULE "tertbutyl"
                                              "CHEBI:30355" "tert-butyl group")
                                             (DRUG "epipodophyllotoxin"
                                              "NCIT:C1331"
                                              "epipodophyllotoxin compound")
                                             (DRUG "gancyclovir" "CHEBI:465284"
                                              "ganciclovir")
                                             (MOLECULE "myristoyl"
                                              "CHEBI:25456"
                                              "tetradecanoyl group")
                                             (DRUG "puromycine" "NCIT:C787"
                                              "puromycin")
                                             (MOLECULE "serotonine"
                                              "CHEBI:28790" "serotonin")
                                             (DRUG "silybin" "CHEBI:9144"
                                              "silibinin")
                                             (MOLECULE "titania" "CHEBI:32234"
                                              "titanium dioxide")
                                             (DRUG "trimethylene"
                                              "MESH:C030797" "cyclopropane")
                                             (UNIT-OF-MEASURE "kvh"
                                              "UO:0000230" "kilovolt-hour")
                                             (DRUG "isoquercetin"
                                              "MESH:C016527" "isoquercitrin")
                                             (MOLECULE "benzenesulfonyl"
                                              "CHEBI:52916"
                                              "phenylsulfonyl group")
                                             (MOLECULE "butanoyl" "CHEBI:22972"
                                              "butyryl group")
                                             (MOLECULE "dibenzyl" "CHEBI:34047"
                                              "1,2-dihydrostilbene")
                                             (UNIT-OF-MEASURE "femtolitre"
                                              "UO:0000104" "femtoliter")
                                             (UNIT-OF-MEASURE "nanometre"
                                              "UO:0000018" "nanometer")
                                             (DRUG "pristan" "MESH:C009042"
                                              "pristane")
                                             (DRUG "tetrandrin" "NCIT:C28952"
                                              "tetrandrine")
                                             (MOLECULE "dimethylbenzene"
                                              "CHEBI:27338" "xylene")
                                             (MOLECULE "ammoniac" "CHEBI:16134"
                                              "ammonia")
                                             (MOLECULE "cyclopentan"
                                              "CHEBI:23492" "cyclopentane")
                                             (DRUG "cyclopropan" "CHEBI:30365"
                                              "cyclopropane")
                                             (DRUG "fucoidin" "MESH:C007789"
                                              "fucoidan")
                                             (DISEASE "hyperglycaemia"
                                              "HP:0003074" "Hyperglycemia")
                                             (DRUG "methylenedioxyamphetamine"
                                              "NCIT:C80152" "tenamfetamine")
                                             (MOLECULE "pentanoate"
                                              "CHEBI:31011" "valerate")
                                             (DRUG "psychostimulant"
                                              "NCIT:C47795" "CNS stimulant")
                                             (MOLECULE "vinylidene"
                                              "CHEBI:29854"
                                              "ethenylidene group")
                                             (CELLULAR-LOCATION "capsomer"
                                              "GO:0046727" "capsomere")
                                             (MOLECULE "haeme" "CHEBI:30413"
                                              "heme")
                                             (MOLECULE "murein" "CHEBI:8005"
                                              "peptidoglycan")
                                             (MOLECULE "xylol" "CHEBI:27338"
                                              "xylene")
                                             (ORGANISM "coneflower"
                                              "NCIT:C54160" "echinacea")
                                             (MOLECULE "hematoxyline"
                                              "CHEBI:51686" "haematoxylin")
                                             (ORGANISM "mustelid" "NCIT:C77096"
                                              "mustelidae")
                                             (DRUG "cromoglycate" "NCIT:C61691"
                                              "cromolyn")
                                             (MOLECULE "dioxine" "NCIT:C864"
                                              "tetrachlorodibenzodioxin")
                                             (MOLECULE "dithiotreitol"
                                              "CHEBI:18320"
                                              "1,4-dithiothreitol")
                                             (MOLECULE "ledene" "CHEBI:63444"
                                              "viridiflorene")
                                             (DISEASE "pinkeye" "NCIT:C35704"
                                              "acute contagious conjunctivitis")
                                             (CELLULAR-LOCATION
                                              "autophagolysosome" "GO:0044754"
                                              "autolysosome")
                                             (DRUG "decongestant" "CHEBI:77715"
                                              "nasal decongestant")
                                             (DRUG "heparinum" "CHEBI:28304"
                                              "heparin")
                                             (MOLECULE "methanoate"
                                              "CHEBI:15740" "formate")
                                             (DRUG "verbascoside"
                                              "MESH:C058956" "acteoside")
                                             (MOLECULE "adenosylhomocysteine"
                                              "CHEBI:16680"
                                              "S-adenosyl-L-homocysteine")
                                             (MOLECULE "laurate" "CHEBI:18262"
                                              "dodecanoate")
                                             (CELLULAR-LOCATION "pseudopod"
                                              "GO:0031143" "pseudopodium")
                                             (DRUG "radiosensitizer"
                                              "NCIT:C798"
                                              "radiosensitizing agent")
                                             (DRUG "piceid" "MESH:C058229"
                                              "polydatin")
                                             (ORGANISM "wik" "NCIT:C79954"
                                              "WIK zebrafish")
                                             (DISEASE "adenitis" "NCIT:C26821"
                                              "lymphadenitis")
                                             (DISEASE "purpura" "HP:0000979"
                                              "Purpura")
                                             (MOLECULE "cholecalciferol"
                                              "CHEBI:28940" "calciol")
                                             (MOLECULE "diglycine"
                                              "CHEBI:24786"
                                              "iminodiacetic acid")
                                             (DRUG "cefradine" "NCIT:C47441"
                                              "cephradine")
                                             (MOLECULE "microbicide"
                                              "CHEBI:33281"
                                              "antimicrobial agent")
                                             (UNIT-OF-MEASURE "nls"
                                              "UO:0000102" "nanoliter")
                                             (MOLECULE "cetyltrimethylammonium"
                                              "CHEBI:39561"
                                              "cetyltrimethylammonium ion")
                                             (BIO-PROCESS "anabolism"
                                              "GO:0009058"
                                              "biosynthetic process")
                                             (MOLECULE "polybutylcyanoacrylate"
                                              "CHEBI:61239"
                                              "poly(butyl 2-cyanoacrylate) polymer")
                                             (DRUG "sulphoxide" "MESH:C005746"
                                              "sulfoxide")
                                             (CELL-TYPE "Mcell" "BTO:0003600"
                                              "M cell")
                                             (DRUG "Biotine" "CHEBI:15956"
                                              "biotin")
                                             (DRUG "Bleo" "NCIT:C313"
                                              "bleomycin")
                                             (DRUG "Sanchi" "MESH:C027816"
                                              "San-Chi")
                                             (DRUG "Tysabri" "NCIT:C77862"
                                              "natalizumab")
                                             (MOLECULE "Phene" "CHEBI:16716"
                                              "benzene")
                                             (DRUG "Copegus" "NCIT:C807"
                                              "ribavirin")
                                             (DRUG "Herplex" "NCIT:C563"
                                              "idoxuridine")
                                             (MOLECULE "LSTa" "CHEBI:89919"
                                              "Sialyllacto-N-tetraose a")
                                             (DRUG "Virazole" "NCIT:C807"
                                              "ribavirin")
                                             (DRUG "Zocor" "NCIT:C29454"
                                              "simvastatin")
                                             (DRUG "Ruprintrivir" "NCIT:C82255"
                                              "rupintrivir")
                                             (DRUG "Bredinin" "MESH:C010052"
                                              "mizoribine")
                                             (DRUG "Gana" "NCIT:C47786"
                                              "zanamivir")
                                             (MOLECULE "Isothiourea"
                                              "NCIT:C44455" "thiourea")
                                             (DRUG "FLUt" "NCIT:C509"
                                              "flutamide")
                                             (DRUG "Selzentry" "NCIT:C73144"
                                              "maraviroc")
                                             (DRUG "Xalkori" "NCIT:C74061"
                                              "crizotinib")
                                             (MOLECULE "Levamisol" "CHEBI:6432"
                                              "levamisole")
                                             (ORGANISM "Hansenula"
                                              "NCIT:C123544" "pichia")
                                             (DRUG "Campath" "NCIT:C1681"
                                              "alemtuzumab")
                                             (MOLECULE "Bala" "CHEBI:16958"
                                              "beta-alanine")
                                             (UNIT-OF-MEASURE "Amu"
                                              "UO:0000221" "dalton")
                                             (MOLECULE "Fluorogold"
                                              "CHEBI:53251"
                                              "poly(tetrafluoroethylene)")
                                             (MOLECULE "Isoflavon"
                                              "CHEBI:18220" "isoflavone")
                                             (DRUG "Roter" "MESH:C010804"
                                              "bismuth subnitrate")
                                             (DRUG "Dichloran" "MESH:C004354"
                                              "dicloran")
                                             (MOLECULE "Eau" "CHEBI:15377"
                                              "water")
                                             (CELL-LINE "Wurzburg" "CVCL:0584"
                                              "Jurkat Wurzburg")
                                             (DRUG "Kineret" "NCIT:C38717"
                                              "anakinra")
                                             (CELLULAR-PROCESS "Oestrus"
                                              "GO:0060209" "estrus")
                                             (MOLECULE "Ole" "CHEBI:25667"
                                              "oleoyl group")
                                             (DRUG "TMPyP" "MESH:C021096"
                                              "tetra(4-N-methylpyridyl)porphine")
                                             (DRUG "Naxcel" "MESH:C053503"
                                              "ceftiofur")
                                             (DRUG "Fluothane" "CHEBI:5615"
                                              "halothane")
                                             (VIRUS "MMuLV" "NCIT:C14241"
                                              "moloney leukemia virus")
                                             (DRUG "Unistat" "MESH:C008599"
                                              "nitromide")
                                             (DRUG "pRed" "NCIT:C770"
                                              "prednisone")
                                             (BIO-METHOD "ChipSeq"
                                              "EFO:0002692" "ChIP-seq")
                                             (PROTEIN-DOMAIN "Fbox"
                                              "XFAM:PF00646" "F-box")
                                             (DRUG "Aztec" "NCIT:C947"
                                              "zidovudine")
                                             (DRUG "Rituxan" "NCIT:C1702"
                                              "rituximab")
                                             (DRUG "Honghua" "MESH:C079426"
                                              "Honghua extract, Carthamus tinctorius")
                                             (MOLECULE "Ibu" "CHEBI:30356"
                                              "isobutyl group")
                                             (DRUG "Berenil" "MESH:C003915"
                                              "diminazene aceturate")
                                             (DRUG "Povidone" "CHEBI:53248"
                                              "poly(vinylpyrrolidone)")
                                             (DRUG "Penthrane" "CHEBI:6843"
                                              "methoxyflurane")
                                             (DRUG "Varivax" "NCIT:C77799"
                                              "varicella-zoster virus strain oka/Merck live antigen")
                                             (BACTERIUM "Enterobacteraceae"
                                              "NCIT:C85932"
                                              "enterobacteriaceae")
                                             (MOLECULE "GlcN" "CHEBI:5417"
                                              "glucosamine")
                                             (DRUG "Aranesp" "NCIT:C1878"
                                              "darbepoetin alfa")
                                             (DRUG "Eprex" "NCIT:C2695"
                                              "epoetin alfa")
                                             (DRUG "Remicade" "NCIT:C1789"
                                              "infliximab")
                                             (DRUG "Lucentis" "NCIT:C67562"
                                              "ranibizumab")
                                             (DISEASE "KCs" "EFO:1001001"
                                              "keratoconjunctivitis sicca")
                                             (DRUG "Antihypertensives"
                                              "NCIT:C270"
                                              "antihypertensive agent")
                                             (MOLECULE "DapE" "CHEBI:18127"
                                              "cadaverine")
                                             (MOLECULE "iNPC" "CHEBI:82035"
                                              "propham")
                                             (ORGANISM "Felid" "NCIT:C14321"
                                              "felidae")
                                             (ORGANISM "Trypanosome"
                                              "NCIT:C125931" "trypanosoma")
                                             (RNA "tmRNA" "NCIT:C95954"
                                              "transfer-messenger RNA")
                                             (MOLECULE "Leden" "CHEBI:63444"
                                              "viridiflorene")
                                             (VIRUS "MoMuLV" "NCIT:C14241"
                                              "moloney leukemia virus")
                                             (DRUG "Numax" "MESH:C506968"
                                              "motavizumab")
                                             (MOLECULE "Sensitizer"
                                              "CHEBI:139492" "sensitiser")
                                             (CELL-LINE "DAnTE" "CVCL:7186"
                                              "Dante")
                                             (DRUG "Fuyuan" "MESH:C547331"
                                              "fu-yuan")
                                             (BIO-COMPLEX "HCAb" "GO:0071762"
                                              "heavy chain immunoglobulin complex")
                                             (MOLECULE "Ethan" "CHEBI:42266"
                                              "ethane")
                                             (DISEASE "Hypoalbuminaemia"
                                              "HP:0003073" "hypoalbuminemia")
                                             (DISEASE
                                              "Laryngotracheobronchitis"
                                              "NCIT:C26735" "croup")
                                             (MOLECULE "Natrium" "CHEBI:26708"
                                              "sodium atom")
                                             (DRUG "Aldara" "NCIT:C1431"
                                              "imiquimod")
                                             (DRUG "Betadine" "NCIT:C766"
                                              "povidone-iodine")
                                             (MOLECULE "Leukotrien"
                                              "CHEBI:25029" "leukotriene")
                                             (BIO-METHOD "qRTPCR" "NCIT:C28408"
                                              "quantitative reverse transcriptase PCR")
                                             (DRUG "Heparine" "CHEBI:28304"
                                              "heparin")
                                             (MOLECULE "eitC" "CHEBI:60597"
                                              "eosin 5-isothiocyanate")
                                             (BIO-METHOD "rRTPCR" "NCIT:C28408"
                                              "quantitative reverse transcriptase PCR")
                                             (DRUG "Arzerra" "NCIT:C66952"
                                              "ofatumumab")
                                             (MOLECULE "Betapropiolactone"
                                              "CHEBI:49073"
                                              "beta-propiolactone")
                                             (DRUG "Erbitux" "NCIT:C1723"
                                              "cetuximab")
                                             (DRUG "Immunol" "NCIT:C610"
                                              "levamisole hydrochloride")
                                             (DRUG "Lex" "NCIT:C96898"
                                              "CD15 antigen")
                                             (DRUG "Mabthera" "NCIT:C1702"
                                              "rituximab")
                                             (DRUG "SLea" "NCIT:C327"
                                              "CA19-9 antigen")
                                             (CELL-LINE "Mutu" "CVCL:7202"
                                              "Mutu-1")
                                             (DRUG "Rapamune" "NCIT:C1212"
                                              "sirolimus")
                                             (MOLECULE "Ifc" "CHEBI:82035"
                                              "propham")
                                             (DRUG "MonoS" "NCIT:C72638"
                                              "rufloxacin")
                                             (DRUG "BCi" "MESH:C543522"
                                              "2-benzylidene-3-(cyclohexylamino)-2,3-dihydro-1H-inden-1-one")
                                             (RNA "trnG" "HGNC:7486"
                                              "mitochondrially encoded tRNA-Gly (GGN)")
                                             (DRUG "Ifo" "NCIT:C564"
                                              "ifosfamide")
                                             (DRUG "Leucomax" "MESH:C082430"
                                              "molgramostim")
                                             (MOLECULE "AcOEt" "CHEBI:27750"
                                              "ethyl acetate")
                                             (MOLECULE "LiOAc" "CHEBI:63045"
                                              "lithium acetate")
                                             (DRUG "Ssd" "NCIT:C66567"
                                              "silver sulfadiazine")
                                             (RNA "Rian" "HGNC:14574"
                                              "maternally expressed 8, small nucleolar RNA host gene")
                                             (MOLECULE "Tylan" "CHEBI:17658"
                                              "tylosin")
                                             (MOLECULE "HOAc" "CHEBI:15366"
                                              "acetic acid")
                                             (BIO-COMPLEX "preBCR" "GO:0035369"
                                              "pre-B cell receptor complex")
                                             (MOLECULE "Acqua" "CHEBI:15377"
                                              "water")
                                             (MOLECULE "OAADPr" "CHEBI:76279"
                                              "2''-O-acetyl-ADP-D-ribose")
                                             (MOLECULE "Trizma" "CHEBI:9754"
                                              "tris")
                                             (DRUG "Alferon" "NCIT:C225"
                                              "recombinant interferon alfa")
                                             (DISEASE "Arrythmia" "EFO:0004269"
                                              "cardiac arrhythmia")
                                             (MOLECULE "BuOH" "CHEBI:28885"
                                              "butan-1-ol")
                                             (DRUG "Adj" "NCIT:C2140"
                                              "adjuvant")
                                             (DRUG "Kyprolis" "NCIT:C52196"
                                              "carfilzomib")
                                             (MOLECULE "Sphingosin"
                                              "CHEBI:16393" "sphingosine")
                                             (MOLECULE "tBu" "CHEBI:30355"
                                              "tert-butyl group")
                                             (MOLECULE "Saccharose"
                                              "CHEBI:17992" "sucrose")
                                             (DRUG "Mifegyne" "NCIT:C655"
                                              "mifepristone")
                                             (DRUG "Mevinolin" "NCIT:C620"
                                              "lovastatin")
                                             (DRUG "AcmA" "NCIT:C202"
                                              "aclarubicin")
                                             (CELL-TYPE "BBcell" "CO:0000819"
                                              "B-1 B cell")
                                             (DRUG "Rotarix" "NCIT:C96394"
                                              "rotavirus vaccine")
                                             (CELLULAR-LOCATION "cisGolgi"
                                              "UP:SL-0067" "cis-Golgi network")
                                             (DRUG "Histopaque" "CHEBI:53692"
                                              "sodium amidotrizoate")
                                             (ORGANISM "Mesocricetus"
                                              "NCIT:C14212" "hamster")
                                             (ORGANISM "Panax" "NCIT:C91401"
                                              "ginseng")
                                             (DRUG "Synagis" "NCIT:C2625"
                                              "palivizumab")
                                             (DRUG "Zoletil" "MESH:C006131"
                                              "tiletamine, zolazepam drug combination")
                                             (MOLECULE "dbcAMP" "CHEBI:50095"
                                              "bucladesine")
                                             (MOLECULE "TLCs" "CHEBI:17864"
                                              "taurolithocholic acid sulfate")
                                             (DRUG "Tecemotide" "NCIT:C2195"
                                              "emepepimut-S")
                                             (MOLECULE "Xenon" "CHEBI:49957"
                                              "xenon atom")
                                             (DRUG "YxiN" "MESH:C005810"
                                              "tetrahydrozoline")
                                             (DRUG "Cosentyx" "MESH:C555450"
                                              "secukinumab")
                                             (DRUG "Cyramza" "NCIT:C70792"
                                              "ramucirumab")
                                             (DRUG "Hemel" "NCIT:C544"
                                              "altretamine")
                                             (DRUG "Humira" "NCIT:C65216"
                                              "adalimumab")
                                             (DRUG "Opdivo" "NCIT:C68814"
                                              "nivolumab")
                                             (DRUG "Portrazza" "NCIT:C88281"
                                              "necitumumab")
                                             (DRUG "Siliq" "MESH:C571216"
                                              "brodalumab")
                                             (DRUG "Stelara" "NCIT:C84237"
                                              "ustekinumab")
                                             (DRUG "Vectibix" "NCIT:C1857"
                                              "panitumumab")
                                             (DRUG "Yervoy" "NCIT:C2654"
                                              "ipilimumab")
                                             (DRUG "Optigene" "MESH:C005810"
                                              "tetrahydrozoline")
                                             (DRUG "Shenfu" "MESH:C492793"
                                              "Shen-Fu")
                                             (DRUG "Baytril" "NCIT:C72660"
                                              "enrofloxacin")
                                             (DRUG "Tylenol" "NCIT:C198"
                                              "acetaminophen")
                                             (DRUG "Zometa" "NCIT:C1699"
                                              "zoledronic acid")
                                             (MOLECULE "Bisbenzimide"
                                              "CHEBI:51232"
                                              "2'-(4-ethoxyphenyl)-5-(4-methylpiperazin-1-yl)-2,5'-bibenzimidazole")
                                             (CELL-LINE "Nde" "CVCL:4262"
                                              "ND-E")
                                             (DRUG "Prob" "NCIT:C772"
                                              "probenecid")
                                             (CELL-TYPE "iTreg" "CO:0000902"
                                              "induced T-regulatory cell")))

(defparameter *CATEGORY-MISMATCH-EXISTING-CATS* '((:ORIG-CAT BIO-AGENT :NEW-CAT
                                                   MOLECULE :NAME "neurotoxin"
                                                   :NEWUID "CHEBI:50910" :WORD
                                                   "neurotoxicant")
                                                  (:ORIG-CAT CORONAVIRUS
                                                   :NEW-CAT VIRUS :NAME
                                                   "betacoronavirus" :NEWUID
                                                   "NCIT:C113207" :WORD
                                                   "BetaCoV")))

(defparameter *CATEGORY-MISMATCH-EXISTING-WORDS* '((:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "vinorelbine tartrate"
                                                    :NEWUID "NCIT:C1395" :WORD
                                                    "NVB")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME "ArfA"
                                                    :NEWUID "XFAM:PF03889"
                                                    :WORD "ARFA")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "furazolidone"
                                                    :NEWUID "CHEBI:5195" :WORD
                                                    "FZL")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "TM1" :NEWUID "CVCL:F787"
                                                    :WORD "TMI")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME "ParB"
                                                    :NEWUID "XFAM:PF08775"
                                                    :WORD "PARB")
                                                   (:ORIG-CAT NUCLEOBASE
                                                    :NEW-CAT MOLECULE :NAME
                                                    "uracil" :NEWUID
                                                    "CHEBI:17568" :WORD "URA")
                                                   (:ORIG-CAT NUCLEOBASE
                                                    :NEW-CAT MOLECULE :NAME
                                                    "thymine" :NEWUID
                                                    "CHEBI:17821" :WORD "THY")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "medroxyprogesterone acetate"
                                                    :NEWUID "NCIT:C1155" :WORD
                                                    "AMEN")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    DRUG :NAME "etoposide"
                                                    :NEWUID "NCIT:C491" :WORD
                                                    "EPEG")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "4,4'-diaminodiphenylmethane"
                                                    :NEWUID "CHEBI:32506" :WORD
                                                    "DDM")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "BGM"
                                                    :NEWUID "CVCL:4125" :WORD
                                                    "BGMK")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "entecavir"
                                                    :NEWUID "NCIT:C65513" :WORD
                                                    "ETV")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "BG1" :NEWUID "CVCL:6570"
                                                    :WORD "BGI")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "arginine" :NEWUID
                                                    "CHEBI:29016" :WORD
                                                    "arginin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "xanthone"
                                                    :NEWUID "CHEBI:37647" :WORD
                                                    "xanthenone")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "cyclosporin A" :NEWUID
                                                    "CHEBI:4031" :WORD
                                                    "ciclosporine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "ethylamine"
                                                    :NEWUID "CHEBI:15862" :WORD
                                                    "ethanamine")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "leucine" :NEWUID
                                                    "CHEBI:25017" :WORD
                                                    "leucin")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    DISEASE :NAME
                                                    "adrenocortical insufficiency"
                                                    :NEWUID "NCIT:C26691" :WORD
                                                    "hypocortisolism")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "thimerosal"
                                                    :NEWUID "CHEBI:9546" :WORD
                                                    "merthiolate")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "isoflurane"
                                                    :NEWUID "CHEBI:6015" :WORD
                                                    "isofluranum")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "levofloxacin" :NEWUID
                                                    "CHEBI:63598" :WORD
                                                    "levofloxacine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "benzimidazole" :NEWUID
                                                    "CHEBI:36622" :WORD
                                                    "benzimidazol")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "urea" :NEWUID
                                                    "NCIT:C29531" :WORD
                                                    "carbamide")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "chloramine"
                                                    :NEWUID "MESH:C030816"
                                                    :WORD "monochloramine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "formamide"
                                                    :NEWUID "CHEBI:16397" :WORD
                                                    "formamid")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "propofol"
                                                    :NEWUID "CHEBI:44915" :WORD
                                                    "disoprivan")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "furosemide"
                                                    :NEWUID "CHEBI:47426" :WORD
                                                    "frusemide")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "methionine" :NEWUID
                                                    "CHEBI:16811" :WORD
                                                    "methionin")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "lidocaine"
                                                    :NEWUID "NCIT:C614" :WORD
                                                    "lignocaine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "phenazine"
                                                    :NEWUID "CHEBI:36674" :WORD
                                                    "dibenzopyrazine")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "hexanoic acid"
                                                    :NEWUID "MESH:C037652"
                                                    :WORD "caproate")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "foscarnet"
                                                    :NEWUID "NCIT:C71630" :WORD
                                                    "phosphonoformate")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "farnesyl pyrophosphate"
                                                    :NEWUID "MESH:C004808"
                                                    :WORD
                                                    "farnesylpyrophosphate")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "tryptophan" :NEWUID
                                                    "CHEBI:27897" :WORD
                                                    "tryptophane")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "bacitracin"
                                                    :NEWUID "CHEBI:28669" :WORD
                                                    "bacitracine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "chloramphenicol" :NEWUID
                                                    "CHEBI:17698" :WORD
                                                    "chloromycetin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "methylamine" :NEWUID
                                                    "CHEBI:16830" :WORD
                                                    "methanamine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "pyrazole"
                                                    :NEWUID "CHEBI:14973" :WORD
                                                    "pyrazol")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "alanine" :NEWUID
                                                    "CHEBI:16449" :WORD
                                                    "alanin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "vancomycin"
                                                    :NEWUID "CHEBI:28001" :WORD
                                                    "vancomycine")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "kaempferol"
                                                    :NEWUID "CHEBI:28499" :WORD
                                                    "kaempherol")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "isoflurane"
                                                    :NEWUID "CHEBI:6015" :WORD
                                                    "isoflurano")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "doxycycline" :NEWUID
                                                    "CHEBI:50845" :WORD
                                                    "doxycyclin")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    MOLECULE :NAME "butyrate"
                                                    :NEWUID "CHEBI:17968" :WORD
                                                    "butanoate")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "methicillin" :NEWUID
                                                    "CHEBI:6827" :WORD
                                                    "meticillin")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "serine" :NEWUID
                                                    "CHEBI:17822" :WORD
                                                    "serin")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "tyrosine" :NEWUID
                                                    "CHEBI:18186" :WORD
                                                    "tyrosin")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "tetracycline" :NEWUID
                                                    "CHEBI:27902" :WORD
                                                    "tetracyclin")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "cysteine" :NEWUID
                                                    "CHEBI:15356" :WORD
                                                    "Cystein")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "nystatin"
                                                    :NEWUID "NCIT:C710" :WORD
                                                    "Mycostatin")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "hexachlorophene" :NEWUID
                                                    "NCIT:C47556" :WORD
                                                    "pHisoHex")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    DRUG :NAME "aprotinin"
                                                    :NEWUID "NCIT:C47402" :WORD
                                                    "Trasylol")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "imatinib mesylate" :NEWUID
                                                    "NCIT:C1687" :WORD
                                                    "Glivec")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "amantadine"
                                                    :NEWUID "NCIT:C61632" :WORD
                                                    "Amantidine")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "isoflurane"
                                                    :NEWUID "NCIT:C65978" :WORD
                                                    "Forane")
                                                   (:ORIG-CAT AMINO-ACID
                                                    :NEW-CAT MOLECULE :NAME
                                                    "histidine" :NEWUID
                                                    "CHEBI:27570" :WORD
                                                    "Histidin")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "medroxyprogesterone acetate"
                                                    :NEWUID "NCIT:C1155" :WORD
                                                    "Provera")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "medroxyprogesterone acetate"
                                                    :NEWUID "NCIT:C1155" :WORD
                                                    "DepoProvera")
                                                   (:ORIG-CAT BIO-GROUPING
                                                    :NEW-CAT MOLECULE :NAME
                                                    "group" :NEWUID
                                                    "CHEBI:24433" :WORD
                                                    "Groupe")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "fenbendazole" :NEWUID
                                                    "CHEBI:77092" :WORD
                                                    "Fenbendazol")
                                                   (:ORIG-CAT VACCINE :NEW-CAT
                                                    DRUG :NAME
                                                    "trivalent influenza vaccine"
                                                    :NEWUID "NCIT:C2643" :WORD
                                                    "Fluarix")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "sodium chloride" :NEWUID
                                                    "NCIT:C29974" :WORD "Nacl")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "fluconazole"
                                                    :NEWUID "NCIT:C500" :WORD
                                                    "Diflucan")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME "BRK"
                                                    :NEWUID "XFAM:PF07533"
                                                    :WORD "Tch")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "omeprazole"
                                                    :NEWUID "CHEBI:7772" :WORD
                                                    "Omeprazol")
                                                   (:ORIG-CAT BIO-GROUPING
                                                    :NEW-CAT MOLECULE :NAME
                                                    "group" :NEWUID
                                                    "CHEBI:24433" :WORD
                                                    "Grupo")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "isoflurane"
                                                    :NEWUID "CHEBI:6015" :WORD
                                                    "Forene")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "I-BET" :NEWUID
                                                    "PUBCHEM:46943432" :WORD
                                                    "iBET")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "isoflurane"
                                                    :NEWUID "NCIT:C65978" :WORD
                                                    "IsoFlo")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "diethylenetriamine"
                                                    :NEWUID "CHEBI:30629" :WORD
                                                    "Dien")
                                                   (:ORIG-CAT VACCINE :NEW-CAT
                                                    DRUG :NAME
                                                    "trivalent influenza vaccine"
                                                    :NEWUID "NCIT:C2643" :WORD
                                                    "Fluzone")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "cerivastatin"
                                                    :NEWUID "MESH:C086276"
                                                    :WORD "Certa")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "famciclovir"
                                                    :NEWUID "NCIT:C29044" :WORD
                                                    "Famvir")
                                                   (:ORIG-CAT VACCINE :NEW-CAT
                                                    DRUG :NAME
                                                    "trivalent influenza vaccine"
                                                    :NEWUID "NCIT:C2643" :WORD
                                                    "TiV")
                                                   (:ORIG-CAT NUCLEOBASE
                                                    :NEW-CAT MOLECULE :NAME
                                                    "guanine" :NEWUID
                                                    "CHEBI:16235" :WORD "Gua")
                                                   (:ORIG-CAT ORGANISM :NEW-CAT
                                                    BIO-ORGAN :NAME "plant"
                                                    :NEWUID "BTO:0001481" :WORD
                                                    "Viridiplantae")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "acetonitrile" :NEWUID
                                                    "CHEBI:38472" :WORD "MeCN")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT DRUG :NAME
                                                    "cyclin-dependent kinase inhibitor"
                                                    :NEWUID "NCIT:C2185" :WORD
                                                    "CDKi")
                                                   (:ORIG-CAT ORGANISM :NEW-CAT
                                                    BIO-ORGAN :NAME "plant"
                                                    :NEWUID "BTO:0001481" :WORD
                                                    "Plantae")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME
                                                    "favipiravir" :NEWUID
                                                    "CHEBI:134722" :WORD
                                                    "Avigan")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "amphotericin B"
                                                    :NEWUID "NCIT:C238" :WORD
                                                    "AmB")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME "CodY"
                                                    :NEWUID "XFAM:PF06018"
                                                    :WORD "Cody")
                                                   (:ORIG-CAT VACCINE :NEW-CAT
                                                    DRUG :NAME
                                                    "trivalent influenza vaccine"
                                                    :NEWUID "NCIT:C2643" :WORD
                                                    "Flublok")))

(defparameter *SUPPRESSED-REDEFS* '(("TPN"
                                     ("TPN" "ONT:GENE-PROTEIN" :ID "UP:O15533"
                                      :NAME "Tapasin"))
                                    ("IFNGR"
                                     ("IFNGR" "ONT:GENE-PROTEIN" :ID
                                      "FPLX:Interferon_gamma_receptor" :NAME
                                      "Interferon-gamma-receptor"))
                                    ("SNAP"
                                     ("SNAP" "ONT:GENE-PROTEIN" :ID "FA:03701"
                                      :NAME "SNAP family"))
                                    ("PSA"
                                     ("PSA" "ONT:GENE-PROTEIN" :ID "UP:P07288"
                                      :NAME "Prostate-specific antigen"))
                                    ("CBG"
                                     ("CBG" "ONT:GENE-PROTEIN" :ID "UP:P08185"
                                      :NAME "Corticosteroid-binding globulin"))
                                    ("FCR"
                                     ("FCR" "ONT:PROTEIN-FAMILY" :ID
                                      "NCIT:C17070" :NAME "Fc receptor"))
                                    ("MPTP"
                                     ("MPTP" "ONT:PROTEIN" :ID "UP:Q06180"
                                      :NAME
                                      "Tyrosine-protein phosphatase non-receptor type 2"))
                                    ("CMC"
                                     ("CMC" "ONT:PROTEIN-FAMILY" :ID "FA:04991"
                                      :NAME "CMC family"))
                                    ("picosecond"
                                     ("picosecond" "ONT:TIME-UNIT" :ID
                                      "UO:0000030" :NAME "picosecond"))
                                    ("Kelvin"
                                     ("Kelvin" "ONT:TEMPERATURE-UNIT" :ID
                                      "UO:0000012" :NAME "kelvin"))
                                    ("pFL"
                                     ("pFL" "ONT:GENE-PROTEIN" :ID "GO:0008861"
                                      :NAME
                                      "formate C-acetyltransferase activity"))
                                    ("pNL"
                                     ("pNL" "ONT:PROTEIN" :ID "UP:O34819" :NAME
                                      "Pectin lyase"))))

(defparameter *NON-BIO-DEFS* '(("NIDA" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19757" :NAME
                                "national institute on drug abuse")
                               ("UWCCC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39559" :NAME
                                "university of wisconsin carbone cancer center")
                               ("NINDS" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82627" :NAME
                                "national institute of neurological disorders and stroke")
                               ("HRSA" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39417" :NAME
                                "health resources and services administration")
                               ("NCRR" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C20016" :NAME
                                "national center for research resources")
                               ("AHIC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C156646" :NAME
                                "american health information community")
                               ("NIDDK" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19756" :NAME
                                "national institute of diabetes and digestive and kidney diseases")
                               ("NCCR" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39470" :NAME
                                "national coalition for cancer research")
                               ("NEMA" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C94940" :NAME
                                "national electrical manufacturers association")
                               ("NDRI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C126658" :NAME
                                "national disease research interchange")
                               ("NCHS" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C16893" :NAME
                                "national center for health statistics")
                               ("USPHS" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C17238" :NAME
                                "united states public health service")
                               ("NHGRI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82617" :NAME
                                "national human genome research institute")
                               ("NINR" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19758" :NAME
                                "national institute of nursing research")
                               ("NPO" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C54073" :NAME "nonprofit organization")
                               ("CBER" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82668" :NAME
                                "center for biologics evaluation and research")
                               ("UMIN" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C132784" :NAME
                                "university medical information network")
                               ("TRIG" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19668" :NAME
                                "tobacco research implementation group")
                               ("NCCS" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39475" :NAME
                                "neuroblastoma children's cancer society")
                               ("IMAGE" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C45993" :NAME
                                "integrated molecular analysis of genomes and their expression consortium")
                               ("NIGMS" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C20131" :NAME
                                "national institute of general medical sciences")
                               ("NIBIB" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82609" :NAME
                                "national institute of biomedical imaging and bioengineering")
                               ("ECOG" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C25491" :NAME
                                "eastern cooperative oncology group")
                               ("OHRP" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C94499" :NAME
                                "office for human research protections")
                               ("AJCC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39315" :NAME
                                "american joint committee on cancer")
                               ("MHRA" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C142608" :NAME
                                "medicines and healthcare products regulatory agency")
                               ("EORTC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19741" :NAME
                                "european organization for research and treatment of cancer")
                               ("DOE" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19224" :NAME "department of energy")
                               ("CIBMTR" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C106396" :NAME
                                "center for international blood and marrow transplant research")
                               ("NMDP" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C62593" :NAME
                                "national marrow donor program")
                               ("FASP" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39401" :NAME
                                "fellow of american college of physicians")
                               ("IACUC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19487" :NAME
                                "institutional animal care and use committee")
                               ("sanfordburnham"
                                "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39336" :NAME
                                "sanford-burnham medical research institute")
                               ("ansi" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C142388" :NAME
                                "american national standards institute")
                               ("niehs" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82610" :NAME
                                "national institute of environmental health sciences")
                               ("cdisc" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C65168" :NAME
                                "clinical data interchange standards consortium")
                               ("apha" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39318" :NAME
                                "american public health association")
                               ("ahrq" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39304" :NAME
                                "agency for healthcare research and quality")
                               ("hci" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39422" :NAME
                                "huntsman cancer institute")
                               ("iarc" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39431" :NAME
                                "international agency for research on cancer")
                               ("irb" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C16741" :NAME
                                "institutional review board")
                               ("asco" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39319" :NAME
                                "american society of clinical oncology")
                               ("deca" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82615" :NAME
                                "division of epidemiology and clinical applications")
                               ("org" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19711" :NAME
                                "professional organization or group")
                               ("Feelings" "ONT:REFERENTIAL-SEM" :ID
                                "NCIT:C77965" :NAME "feelings")
                               ("Vcc" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39561" :NAME
                                "vermont cancer center at the university of vermont")
                               ("Winship" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C105630" :NAME
                                "winship cancer institute")
                               ("kCI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39328" :NAME
                                "barbara ann karmano cancer institute")
                               ("UnoS" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C110972" :NAME
                                "united network for organ sharing")
                               ("Coculture" "ONT:REFERENTIAL-SEM" :ID
                                "BTO:0003143" :NAME "coculture")
                               ("nCIC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C25582" :NAME
                                "national cancer institute of canada")
                               ("Nanomaterials" "ONT:PROFESSIONAL-ORGANIZATION"
                                :ID "NCIT:C53671" :NAME "nanomaterials")
                               ("BioPAX" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C61010" :NAME "bioPAX")
                               ("Acro" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39313" :NAME
                                "american college of radiation oncology")
                               ("sIG" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19782" :NAME
                                "surveillance implementation group")))

