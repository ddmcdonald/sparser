(in-package :sparser)

(defparameter *SUPPRESSED-HYPHENATED-NEW-WORDS* '((PROTEIN-FAMILY "hits"
                                                   ("h-its"
                                                    "ONT:PROTEIN-FAMILY" :ID
                                                    "FA:01775" :NAME
                                                    "HIT family"))
                                                  (PROTEIN "lysc"
                                                   ("Lys-c" "ONT:PROTEIN" :ID
                                                    "UP:Q7M135" :NAME
                                                    "Lysyl endopeptidase"))
                                                  (PROTEIN "RXN"
                                                   ("RX-N" "ONT:PROTEIN" :ID
                                                    "UP:Q9MYK8" :NAME
                                                    "Prorelaxin"))
                                                  (PROTEIN "probnp"
                                                   ("Pro-BNP" "ONT:PROTEIN" :ID
                                                    "NCIT:C88522" :NAME
                                                    "natriuretic peptides B"))
                                                  (PROTEIN "endon"
                                                   ("end-on" "ONT:PROTEIN" :ID
                                                    "UP:P49714" :NAME
                                                    "Tail spike protein"))
                                                  (ORGANIZATION "network"
                                                   ("net-work"
                                                    "ONT:PROFESSIONAL-ORGANIZATION"
                                                    :ID "NCIT:C19975" :NAME
                                                    "consortium or network"))
                                                  (MOLECULE "HDLC"
                                                   ("HDL-C" "ONT:MOLECULE" :ID
                                                    "CHEBI:47775" :NAME
                                                    "high-density lipoprotein cholesterol"))
                                                  (PROTEIN "ifnr"
                                                   ("IFN-r" "ONT:GENE-PROTEIN"
                                                    :ID "NCIT:C37278" :NAME
                                                    "interferon alpha/Beta receptor 2"))
                                                  (PROTEIN-FAMILY "gcfc"
                                                   ("Gc-Fc" "ONT:GENE-PROTEIN"
                                                    :ID "XFAM:PF07842" :NAME
                                                    "GCFC"))
                                                  (PROTEIN-FAMILY "RXR"
                                                   ("R-X-R" "ONT:GENE-PROTEIN"
                                                    :ID "FPLX:RXR" :NAME
                                                    "RXR"))
                                                  (PROTEIN-FAMILY "tie"
                                                   ("Ti-E" "ONT:GENE-PROTEIN"
                                                    :ID "FA:03134" :NAME
                                                    "tie subfamily"))
                                                  (PROTEIN-FAMILY "def"
                                                   ("d-e-f" "ONT:GENE-PROTEIN"
                                                    :ID "FA:00922" :NAME
                                                    "def family"))
                                                  (PROTEIN "ghl"
                                                   ("gH-L" "ONT:GENE-PROTEIN"
                                                    :ID "HGNC:4262" :NAME
                                                    "growth hormone 2"))
                                                  (PROTEIN "nbp"
                                                   ("n-bp" "ONT:GENE-PROTEIN"
                                                    :ID "NCIT:C91792" :NAME
                                                    "TP63"))
                                                  (PROTEIN "bsac"
                                                   ("BSA-c" "ONT:GENE" :ID
                                                    "NCIT:C97297" :NAME
                                                    "MKL1"))
                                                  (PROTEIN "AMID"
                                                   ("A-MID" "ONT:GENE" :ID
                                                    "HGNC:21411" :NAME
                                                    "apoptosis inducing factor mitochondria associated 2"))
                                                  (PROTEIN "hcad"
                                                   ("HC-Ad" "ONT:GENE" :ID
                                                    "NCIT:C113325" :NAME
                                                    "CALD1"))
                                                  (PROTEIN "feo"
                                                   ("Fe-O" "ONT:GENE" :ID
                                                    "NCIT:C84931" :NAME
                                                    "TNFRSF11A"))
                                                  (PROTEIN "EVA"
                                                   ("EV-A" "ONT:GENE" :ID
                                                    "HGNC:3496" :NAME
                                                    "myelin protein zero like 2"))
                                                  (PROTEIN "MPRA"
                                                   ("MPR-A" "ONT:GENE" :ID
                                                    "HGNC:23146" :NAME
                                                    "progestin and adipoQ receptor family member 7"))
                                                  (PROTEIN "VIII"
                                                   ("V-III" "ONT:GENE" :ID
                                                    "HGNC:2294" :NAME
                                                    "cytochrome c oxidase subunit 8A"))
                                                  (PROTEIN "cytb"
                                                   ("cyt-b" "ONT:GENE" :ID
                                                    "HGNC:7427" :NAME
                                                    "mitochondrially encoded cytochrome b"))
                                                  (PROTEIN "topk"
                                                   ("top-K" "ONT:GENE" :ID
                                                    "HGNC:18282" :NAME
                                                    "PDZ binding kinase"))
                                                  (MOLECULE "AHA"
                                                   ("A-HA" "ONT:CHEMICAL" :ID
                                                    "NCIT:C47381" :NAME
                                                    "acetohydroxamic acid"))
                                                  (MOLECULE "trisphosphate"
                                                   ("Tris-phosphate"
                                                    "ONT:CHEMICAL" :ID
                                                    "CHEBI:39949" :NAME
                                                    "triphosphoric acid"))
                                                  (CELL-LINE "SAV"
                                                   ("SA-V" "ONT:CELL-LINE" :ID
                                                    "CVCL:7210" :NAME
                                                    "Sav-BL"))
                                                  (CANCER "IIIC"
                                                   ("III-C" "ONT:CANCER" :ID
                                                    "NCIT:C88139" :NAME
                                                    "stage IIIC uveal melanoma AJCC v7"))
                                                  (CANCER "TALL"
                                                   ("T-ALL" "ONT:CANCER" :ID
                                                    "EFO:0000209" :NAME
                                                    "T-cell acute lymphoblastic leukemia"))
                                                  (BIO-PROCESS "maturation"
                                                   ("matura-tion"
                                                    "ONT:BIOLOGICAL-PROCESS"
                                                    :ID "NCIT:C17770" :NAME
                                                    "maturation"))))

(defparameter *SUPPRESSED-MOD-REDEFS* '(("hyphens" "DENV2"
                                         ("DENV-2" "ONT:VIRUS" :ID
                                          "NCIT:C112267" :NAME
                                          "dengue virus 2"))
                                        ("hyphens" "HTLVI"
                                         ("HTLV-I" "ONT:VIRUS" :ID
                                          "NCIT:C14223" :NAME "HTLV-1"))
                                        ("hyphens" "HPV6"
                                         ("HPV-6" "ONT:VIRUS" :ID "NCIT:C14319"
                                          :NAME "human papillomavirus-6"))
                                        ("hyphens" "HHV6"
                                         ("HHV-6" "ONT:VIRUS" :ID "NCIT:C14218"
                                          :NAME "human herpesvirus 6"))
                                        ("hyphens" "betaretroviruses"
                                         ("beta-retroviruses" "ONT:VIRUS" :ID
                                          "NCIT:C14291" :NAME
                                          "betaretrovirus"))
                                        ("hyphens" "betacoronaviruses"
                                         ("beta-coronaviruses" "ONT:VIRUS" :ID
                                          "NCIT:C113207" :NAME
                                          "betacoronavirus"))
                                        ("hyphens" "betacoronavirus"
                                         ("beta-coronavirus" "ONT:VIRUS" :ID
                                          "NCIT:C113207" :NAME
                                          "betacoronavirus"))
                                        ("hyphens" "alphacoronavirus"
                                         ("alpha-coronavirus" "ONT:VIRUS" :ID
                                          "NCIT:C119319" :NAME
                                          "alphacoronavirus"))
                                        ("hyphens" "henipaviruses"
                                         ("henipa-viruses" "ONT:VIRUS" :ID
                                          "NCIT:C112290" :NAME "henipavirus"))
                                        ("hyphens-dc" "hpiv2"
                                         ("hPIV-2" "ONT:VIRUS" :ID
                                          "NCIT:C112316" :NAME
                                          "human parainfluenza virus 2"))
                                        ("hyphens" "gammaretroviruses"
                                         ("gamma-retroviruses" "ONT:VIRUS" :ID
                                          "NCIT:C14305" :NAME
                                          "gammaretrovirus"))
                                        ("hyphens" "gammacoronaviruses"
                                         ("gamma-coronaviruses" "ONT:VIRUS" :ID
                                          "NCIT:C122313" :NAME
                                          "gammacoronavirus"))
                                        ("hyphens" "gammacoronavirus"
                                         ("gamma-coronavirus" "ONT:VIRUS" :ID
                                          "NCIT:C122313" :NAME
                                          "gammacoronavirus"))
                                        ("hyphens" "lyssaviruses"
                                         ("lyssa-viruses" "ONT:VIRUS" :ID
                                          "NCIT:C112330" :NAME "lyssavirus"))
                                        ("hyphens" "rhinovirus"
                                         ("rhino-virus" "ONT:VIRUS" :ID
                                          "NCIT:C77200" :NAME "rhinovirus"))
                                        ("hyphens" "retroviruses"
                                         ("retro-viruses" "ONT:VIRUS" :ID
                                          "NCIT:C14268" :NAME "retroviridae"))
                                        ("hyphens" "suspensions"
                                         ("suspen-sions" "ONT:SUBSTANCE" :ID
                                          "NCIT:C45304" :NAME "suspension"))
                                        ("hyphens" "miRNAs"
                                         ("miR-NAs" "ONT:RNA" :ID "NCIT:C25966"
                                          :NAME "microRNA"))
                                        ("hyphens" "siRNAs"
                                         ("siR-NAs" "ONT:RNA" :ID "NCIT:C2191"
                                          :NAME "small interfering RNA"))
                                        ("hyphens" "tRNA"
                                         ("t-RNA" "ONT:RNA" :ID "NCIT:C816"
                                          :NAME "transfer RNA"))
                                        ("hyphens" "COL1"
                                         ("COL-1" "ONT:PROTEIN-FAMILY" :ID
                                          "FPLX:COL1" :NAME "COL1"))
                                        ("hyphens" "SNAI"
                                         ("SNA-I" "ONT:PROTEIN-FAMILY" :ID
                                          "FPLX:SNAI" :NAME "SNAI"))
                                        ("hyphens" "RNA1"
                                         ("RNA-1" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:03414" :NAME "RNA1 family"))
                                        ("hyphens" "classII"
                                         ("class-II" "ONT:PROTEIN-FAMILY" :ID
                                          "FA:04726" :NAME
                                          "class-II subfamily"))
                                        ("hyphens" "proteasome"
                                         ("protea-some" "ONT:PROTEIN-FAMILY"
                                          :ID "FPLX:Proteasome" :NAME
                                          "Proteasome"))
                                        ("hyphens" "CMF"
                                         ("CM-F" "ONT:PROTEIN" :ID "UP:P34090"
                                          :NAME "Conditioned medium factor"))
                                        ("hyphens" "GS4"
                                         ("GS-4" "ONT:PROTEIN" :ID "UP:P24146"
                                          :NAME "Lectin-4"))
                                        ("hyphens" "GROα"
                                         ("GRO-α" "ONT:PROTEIN" :ID "UP:O46676"
                                          :NAME
                                          "Growth-regulated protein homolog alpha"))
                                        ("hyphens" "Ly6G"
                                         ("Ly-6G" "ONT:PROTEIN" :ID "UP:P35461"
                                          :NAME "Lymphocyte antigen 6G"))
                                        ("hyphens" "IL18R"
                                         ("IL-18R" "ONT:PROTEIN" :ID
                                          "GO:0042008" :NAME
                                          "interleukin-18 receptor activity"))
                                        ("hyphens" "TRL4"
                                         ("TRL-4" "ONT:PROTEIN" :ID "UP:P09694"
                                          :NAME
                                          "Uncharacterized protein IRL4"))
                                        ("upcase" "AS-2"
                                         ("as-2" "ONT:PROTEIN" :ID "UP:P01528"
                                          :NAME "Delta-actitoxin-Avd1c"))
                                        ("hyphens" "antibodies"
                                         ("antibod-ies" "ONT:PROTEIN" :ID
                                          "NCIT:C16295" :NAME "antibody"))
                                        ("hyphens" "VT1"
                                         ("VT-1" "ONT:PROTEIN" :ID "UP:P0DMB6"
                                          :NAME
                                          "Phospholipase A1 verutoxin-1"))
                                        ("hyphens" "α2M"
                                         ("α2-M" "ONT:PROTEIN" :ID "UP:P01023"
                                          :NAME "Alpha-2-macroglobulin"))
                                        ("hyphens" "cDNA"
                                         ("c-DNA" "ONT:PROCESS" :ID
                                          "EFO:0004187" :NAME
                                          "cDNA library construction"))
                                        ("hyphens" "alpha2"
                                         ("alpha-2" "ONT:PROCEDURE" :ID
                                          "NCIT:C67051" :NAME
                                          "alpha2 significance"))
                                        ("hyphens" "firststrand"
                                         ("first-strand" "ONT:PROCEDURE" :ID
                                          "NCIT:C150428" :NAME
                                          "first-strand library sequencing"))
                                        ("hyphens" "eigenvalue"
                                         ("eigen-value" "ONT:PROCEDURE" :ID
                                          "NCIT:C61068" :NAME "eigenvalue"))
                                        ("hyphens" "microdissection"
                                         ("micro-dissection" "ONT:PROCEDURE"
                                          :ID "NCIT:C18124" :NAME
                                          "microdissection"))
                                        ("hyphens" "DCFDA"
                                         ("DCF-DA"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C029569" :NAME
                                          "diacetyldichlorofluorescein"))
                                        ("hyphens" "ATG"
                                         ("A-T-G" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C278" :NAME
                                          "anti-thymocyte globulin"))
                                        ("hyphens" "GSK2606414"
                                         ("GSK-2606414"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C576403" :NAME
                                          "7-methyl-5-(1-((3-(trifluoromethyl)phenyl)acetyl)-2,3-dihydro-1H-indol-5-yl)-7H-pyrrolo(2,3-d)pyrimidin-4-amine"))
                                        ("hyphens" "QS21"
                                         ("QS-21" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "NCIT:C1478" :NAME "QS21"))
                                        ("hyphens" "YM3"
                                         ("YM-3" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                          :ID "MESH:C079110" :NAME
                                          "N-(3-pyridylmethyl)epidoxorubicin"))
                                        ("hyphens" "cryoprotectant"
                                         ("cryo-protectant"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "NCIT:C53306" :NAME
                                          "cryoprotective agent"))
                                        ("hyphens" "prodrug"
                                         ("pro-drug"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "CHEBI:50266" :NAME "prodrug"))
                                        ("hyphens" "paraformaldehyde"
                                         ("para-formaldehyde"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C003043" :NAME "paraform"))
                                        ("hyphens" "tribromoethanol"
                                         ("tri-bromo-ethanol"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C062527" :NAME
                                          "tribromoethanol"))
                                        ("hyphens" "ICR"
                                         ("IC-R" "ONT:NONHUMAN-ANIMAL" :ID
                                          "NCIT:C37408" :NAME "ICR mouse"))
                                        ("hyphens" "PDLs"
                                         ("PD-Ls" "ONT:MOLECULE" :ID
                                          "CHEBI:53413" :NAME
                                          "poly(D-lysine) macromolecule"))
                                        ("hyphens-dc" "mea"
                                         ("Me-A" "ONT:MOLECULE" :ID
                                          "CHEBI:17141" :NAME "cysteamine"))
                                        ("hyphens" "dinucleotide"
                                         ("di-nucleotide" "ONT:MOLECULE" :ID
                                          "CHEBI:47885" :NAME "dinucleotide"))
                                        ("hyphens"
                                         "glycosylphosphatidylinositol"
                                         ("glycosyl-phosphatidylinositol"
                                          "ONT:MOLECULE" :ID "CHEBI:24410"
                                          :NAME
                                          "glycosylphosphatidylinositol"))
                                        ("hyphens" "oligonucleotides"
                                         ("oligo-nucleotides" "ONT:MOLECULE"
                                          :ID "CHEBI:7754" :NAME
                                          "oligonucleotide"))
                                        ("hyphens" "oligonucleotide"
                                         ("oligo-nucleotide" "ONT:MOLECULE" :ID
                                          "CHEBI:7754" :NAME
                                          "oligonucleotide"))
                                        ("hyphens" "nanoparticles"
                                         ("nano-particles" "ONT:MOLECULE" :ID
                                          "CHEBI:50803" :NAME "nanoparticle"))
                                        ("hyphens" "mucopolysaccharides"
                                         ("muco-polysaccharides" "ONT:MOLECULE"
                                          :ID "CHEBI:37395" :NAME
                                          "mucopolysaccharide"))
                                        ("hyphens" "CXC"
                                         ("C-X-C" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF03638" :NAME "TCR"))
                                        ("hyphens" "BglII"
                                         ("Bgl-II" "ONT:MOLECULAR-DOMAIN" :ID
                                          "XFAM:PF09195" :NAME
                                          "endonuc-BglII"))
                                        ("hyphens" "bronchopneumonia"
                                         ("broncho-pneumonia"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C26710" :NAME
                                          "bronchopneumonia"))
                                        ("hyphens" "gastroenteritis"
                                         ("gastro-enteritis"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:1001463" :NAME
                                          "gastroenteritis"))
                                        ("hyphens" "infections"
                                         ("infec-tions"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C26726" :NAME
                                          "infectious disorder"))
                                        ("hyphens" "infection"
                                         ("infec-tion"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C26726" :NAME
                                          "infectious disorder"))
                                        ("hyphens" "influenza"
                                         ("in-fluenza"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "EFO:0007328" :NAME "influenza"))
                                        ("hyphens" "meningoencephalitis"
                                         ("meningo-encephalitis"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C34813" :NAME
                                          "meningoencephalitis"))
                                        ("hyphens" "megaesophagus"
                                         ("mega-esophagus"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C34811" :NAME
                                          "megaesophagus"))
                                        ("hyphens" "thyroiditis"
                                         ("thy-roiditis"
                                          "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                          :ID "NCIT:C26894" :NAME
                                          "thyroiditis"))
                                        ("hyphens" "millivolts"
                                         ("milli-volts" "ONT:MEASURE-UNIT" :ID
                                          "UO:0000247" :NAME "millivolt"))
                                        ("hyphens" "BRI"
                                         ("BR-I" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:BMP_receptor_type_I" :NAME
                                          "BMP-receptor-type-I"))
                                        ("hyphens" "ATPase"
                                         ("ATP-ase" "ONT:GENE-PROTEIN" :ID
                                          "GO:0016887" :NAME
                                          "ATPase activity"))
                                        ("hyphens" "ARP2"
                                         ("ARP-2" "ONT:GENE-PROTEIN" :ID
                                          "FA:00080" :NAME "ARP2 subfamily"))
                                        ("hyphens" "EBNA3"
                                         ("EBNA-3" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q69138" :NAME
                                          "Epstein-Barr nuclear antigen 3"))
                                        ("hyphens" "NFL"
                                         ("N-FL" "ONT:GENE-PROTEIN" :ID
                                          "UP:P07196" :NAME
                                          "Neurofilament light polypeptide"))
                                        ("hyphens" "HETE"
                                         ("HET-E" "ONT:CHEMICAL" :ID
                                          "CHEBI:36275" :NAME "HETE"))
                                        ("hyphens-dc" "e64d"
                                         ("E64-d" "ONT:CHEMICAL" :ID
                                          "CHEBI:101381" :NAME "aloxistatin"))
                                        ("hyphens" "biomarker"
                                         ("bio-marker" "ONT:CHEMICAL" :ID
                                          "CHEBI:59163" :NAME "biomarker"))
                                        ("hyphens" "betacitronellol"
                                         ("beta-citronellol" "ONT:CHEMICAL" :ID
                                          "CHEBI:50462" :NAME "citronellol"))
                                        ("hyphens" "cmh"
                                         ("cm-h" "ONT:CHEMICAL" :ID
                                          "CHEBI:62107" :NAME
                                          "beta-D-glucosyl-N-(docosanoyl)sphingosine"))
                                        ("hyphens" "immunogen"
                                         ("immu-nogen" "ONT:CHEMICAL" :ID
                                          "CHEBI:60816" :NAME "immunogen"))
                                        ("hyphens" "neurotransmitter"
                                         ("neuro-transmitter" "ONT:CHEMICAL"
                                          :ID "CHEBI:25512" :NAME
                                          "neurotransmitter"))
                                        ("hyphens" "mineralocorticoid"
                                         ("mineralo-corticoid" "ONT:CHEMICAL"
                                          :ID "CHEBI:25354" :NAME
                                          "mineralocorticoid"))
                                        ("hyphens" "triphosphate"
                                         ("tri-phosphate" "ONT:CHEMICAL" :ID
                                          "CHEBI:18036" :NAME
                                          "triphosphate(5-)"))
                                        ("hyphens" "tripeptide"
                                         ("tri-peptide" "ONT:CHEMICAL" :ID
                                          "CHEBI:47923" :NAME "tripeptide"))
                                        ("hyphens" "superantigen"
                                         ("super-antigen" "ONT:CHEMICAL" :ID
                                          "NCIT:C1456" :NAME "superantigen"))
                                        ("hyphens" "transGolgi"
                                         ("trans-Golgi" "ONT:CELL-PART" :ID
                                          "UP:SL-0266" :NAME
                                          "trans-Golgi network"))
                                        ("hyphens" "CCG"
                                         ("C-C-G" "ONT:CELL-LINE" :ID
                                          "CVCL:R838" :NAME "CCG"))
                                        ("hyphens" "AT5"
                                         ("AT-5" "ONT:CELL-LINE" :ID
                                          "CVCL:Y661" :NAME "R-3327-AT-5"))
                                        ("hyphens" "AD3"
                                         ("AD-3" "ONT:CELL-LINE" :ID
                                          "CVCL:M504" :NAME "AD3"))
                                        ("hyphens" "ICF"
                                         ("IC-F" "ONT:CELL-LINE" :ID
                                          "CVCL:M423" :NAME "ICF"))
                                        ("hyphens" "IB3"
                                         ("IB-3" "ONT:CELL-LINE" :ID
                                          "CVCL:0338" :NAME "IB3-1"))
                                        ("hyphens" "HL60"
                                         ("HL-60" "ONT:CELL-LINE" :ID
                                          "NCIT:C19433" :NAME "HL60"))
                                        ("hyphens" "GM1"
                                         ("GM-1" "ONT:CELL-LINE" :ID
                                          "CVCL:Z794" :NAME "GM1"))
                                        ("hyphens" "FL1"
                                         ("FL-1" "ONT:CELL-LINE" :ID
                                          "CVCL:M895" :NAME "T24T FL1"))
                                        ("hyphens" "NA1"
                                         ("NA-1" "ONT:CELL-LINE" :ID
                                          "CVCL:6852" :NAME "TCL-Na1"))
                                        ("hyphens" "Sf9"
                                         ("Sf-9" "ONT:CELL-LINE" :ID
                                          "CVCL:0549" :NAME "Sf9"))
                                        ("hyphens" "SVR"
                                         ("S-V-R" "ONT:CELL-LINE" :ID
                                          "CVCL:6455" :NAME "SVR"))
                                        ("hyphens" "RTT"
                                         ("RT-T" "ONT:CELL-LINE" :ID
                                          "CVCL:R853" :NAME "RTT"))
                                        ("hyphens" "RS1"
                                         ("RS-1" "ONT:CELL-LINE" :ID
                                          "CVCL:DR20" :NAME "RS1"))
                                        ("hyphens" "PR8"
                                         ("PR-8" "ONT:CELL-LINE" :ID
                                          "CVCL:Z909" :NAME "PR8"))
                                        ("hyphens" "XL1"
                                         ("XL-1" "ONT:CELL-LINE" :ID
                                          "CVCL:6E60" :NAME "Xl1"))))

(defparameter *ID-MISMATCH-REDEF* '(("hyphens" "SVA" "XFAM:PF05326.9"
                                     ("SV-A" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF05326" :NAME "SVA"))
                                    ("hyphens" "PI3Ka" "XFAM:PF00613.18"
                                     ("PI3K-a" "ONT:PROTEIN-FAMILY" :ID
                                      "XFAM:PF00613" :NAME "PI3Ka"))
                                    ("hyphens" "CD3ζ" "UP:P20963"
                                     ("CD3-ζ" "ONT:PROTEIN" :ID "NCIT:C38903"
                                      :NAME
                                      "T-cell surface glycoprotein CD3 zeta chain"))
                                    ("hyphens" "HAM" "UP:Q6VMQ6"
                                     ("HA-M" "ONT:PROTEIN" :ID "NCIT:C119672"
                                      :NAME
                                      "activating transcription factor 7-interacting protein 1"))
                                    ("hyphens" "EFG" "UP:Q96RP9"
                                     ("EF-G" "ONT:PROTEIN" :ID "UP:Q9ZEU4"
                                      :NAME "Elongation factor G"))
                                    ("hyphens-dc" "p21" "UP:P38936"
                                     ("P2-1" "ONT:PROTEIN" :ID "UP:P84674"
                                      :NAME "Basic phospholipase A2 VRV-PL-V"))
                                    ("hyphens" "TNFβ" "UP:P01374"
                                     ("TNF-β" "ONT:PROTEIN" :ID "NCIT:C20536"
                                      :NAME "lymphotoxin-alpha"))
                                    ("hyphens-dc" "rbpjκ" "UP:Q06330"
                                     ("RBP-J-κ" "ONT:PROTEIN" :ID "UP:O02019"
                                      :NAME "Suppressor of hairless homolog"))
                                    ("hyphens" "nsp12" "UP:P0DTD1"
                                     ("nsp1-2" "ONT:PROTEIN" :ID "UP:Q86199"
                                      :NAME
                                      "Non-structural protein 1, peptide 2"))
                                    ("hyphens" "vcyclin" "UP:Q01043"
                                     ("v-cyclin" "ONT:PROTEIN" :ID "UP:Q77Q36"
                                      :NAME "viral cyclin homolog"))
                                    ("hyphens" "dihydroartemisinin"
                                     "CHEBI:207229"
                                     ("dihydro-artemisinin"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C039060" :NAME
                                      "dihydroartemisinin"))
                                    ("hyphens" "in2" "PUBCHEM:11966255"
                                     ("in-2" "ONT:MOLECULE" :ID "CHEBI:37116"
                                      :NAME "diindium"))
                                    ("hyphens" "thiosulphate" "PUBCHEM:1084"
                                     ("thio-sulphate" "ONT:MOLECULE" :ID
                                      "CHEBI:26977" :NAME "thiosulfate"))
                                    ("hyphens" "PAX" "XFAM:PF00292.16"
                                     ("PA-X" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF00292" :NAME "PAX"))
                                    ("hyphens" "NotI" "XFAM:PF12183.6"
                                     ("Not-I" "ONT:MOLECULAR-DOMAIN" :ID
                                      "XFAM:PF12183" :NAME "NotI"))
                                    ("hyphens" "CEACAM5" "UP:P06731"
                                     ("CEACAM-5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1817" :NAME
                                      "CEA cell adhesion molecule 5"))
                                    ("upcase" "CD8B" "UP:P10966"
                                     ("CD8b" "ONT:GENE-PROTEIN" :ID "HGNC:1707"
                                      :NAME "CD8b molecule"))
                                    ("hyphens" "CCL7" "UP:P80098"
                                     ("CCL-7" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10634" :NAME
                                      "C-C motif chemokine ligand 7"))
                                    ("hyphens" "BIRC3" "UP:Q13489"
                                     ("BIRC-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:591" :NAME
                                      "baculoviral IAP repeat containing 3"))
                                    ("hyphens" "BIRC2" "UP:Q13490"
                                     ("BIRC-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:590" :NAME
                                      "baculoviral IAP repeat containing 2"))
                                    ("hyphens-dc" "bip1" "UP:Q13323"
                                     ("BIP-1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C21203" :NAME
                                      "bcl-2-interacting killer"))
                                    ("hyphens-dc" "apoh" "UP:P02749"
                                     ("Apo-H" "ONT:GENE-PROTEIN" :ID "HGNC:616"
                                      :NAME "apolipoprotein H"))
                                    ("hyphens" "ATG3" "UP:Q9NT62"
                                     ("ATG-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20962" :NAME
                                      "autophagy related 3"))
                                    ("hyphens" "AIM2" "UP:O14862"
                                     ("AIM-2" "ONT:GENE-PROTEIN" :ID "HGNC:357"
                                      :NAME "absent in melanoma 2"))
                                    ("hyphens-dc" "ifng" "UP:P01579"
                                     ("IFN-g" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5438" :NAME "interferon gamma"))
                                    ("hyphens" "IFIT2" "UP:P09913"
                                     ("IFIT-2" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q60462" :NAME
                                      "Interferon-induced protein with tetratricopeptide repeats 2"))
                                    ("hyphens" "HRC" "UP:P23327"
                                     ("HR-C" "ONT:GENE-PROTEIN" :ID "HGNC:5178"
                                      :NAME
                                      "histidine rich calcium binding protein"))
                                    ("hyphens" "GPC" "UP:P04921"
                                     ("GP-C" "ONT:GENE-PROTEIN" :ID "HGNC:4704"
                                      :NAME
                                      "glycophorin C (Gerbich blood group)"))
                                    ("hyphens" "EFP" "UP:Q14258"
                                     ("EF-P" "ONT:GENE-PROTEIN" :ID "UP:O67376"
                                      :NAME "Elongation factor P"))
                                    ("hyphens" "PARP9" "UP:Q8IXQ6"
                                     ("PARP-9" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:24118" :NAME
                                      "poly(ADP-ribose) polymerase family member 9"))
                                    ("hyphens" "PARP4" "UP:Q9UKK3"
                                     ("PARP-4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:271" :NAME
                                      "poly(ADP-ribose) polymerase family member 4"))
                                    ("hyphens" "PARP14" "UP:Q460N5"
                                     ("PARP-14" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:29232" :NAME
                                      "poly(ADP-ribose) polymerase family member 14"))
                                    ("hyphens" "NCF1" "UP:P14598"
                                     ("NCF-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:O77774" :NAME
                                      "Neutrophil cytosol factor 1"))
                                    ("upcase" "MMP-12" "UP:P39900"
                                     ("Mmp-12" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7158" :NAME
                                      "matrix metallopeptidase 12"))
                                    ("hyphens" "MIP1β" "UP:P13236"
                                     ("MIP1-β" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20477" :NAME
                                      "C-C motif chemokine 4"))
                                    ("hyphens" "MIP1β" "UP:P13236"
                                     ("MIP-1-β" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20477" :NAME
                                      "C-C motif chemokine 4"))
                                    ("hyphens" "LCP1" "UP:P13796"
                                     ("LCP-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6528" :NAME
                                      "lymphocyte cytosolic protein 1"))
                                    ("upcase" "IKK-B" "UP:O14920"
                                     ("IKK-b" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q95KV0" :NAME
                                      "Inhibitor of nuclear factor kappa-B kinase subunit beta"))
                                    ("hyphens" "TRIM5alpha" "UP:Q9C035"
                                     ("TRIM5-alpha" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C98162" :NAME "TRIM5"))
                                    ("hyphens" "TRIM25" "UP:Q14258"
                                     ("TRIM-25" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12932" :NAME
                                      "tripartite motif containing 25"))
                                    ("hyphens" "TP2" "UP:O14746"
                                     ("TP-2" "ONT:GENE-PROTEIN" :ID "UP:Q05952"
                                      :NAME "Nuclear transition protein 2"))
                                    ("hyphens" "TNFb" "UP:P01374"
                                     ("TNF-b" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20536" :NAME "lymphotoxin-alpha"))
                                    ("hyphens" "SLA2" "UP:Q9H6Q3"
                                     ("SLA-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:17329" :NAME "Src like adaptor 2"))
                                    ("hyphens" "SDHA" "UP:P31040"
                                     ("SDH-A" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10680" :NAME
                                      "succinate dehydrogenase complex flavoprotein subunit A"))
                                    ("hyphens-dc" "rab10" "UP:P61026"
                                     ("Rab-10" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9759" :NAME
                                      "RAB10, member RAS oncogene family"))
                                    ("hyphens" "RP9" "UP:Q8TA86"
                                     ("RP-9" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10288" :NAME
                                      "RP9 pre-mRNA splicing factor"))
                                    ("hyphens" "PSE" "UP:O95238"
                                     ("PS-E" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C102919" :NAME "SPDEF"))
                                    ("upcase" "APP-1" "UP:Q13310"
                                     ("app-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8557" :NAME
                                      "poly(A) binding protein cytoplasmic 4"))
                                    ("upcase" "ZBP1" "UP:Q9H171"
                                     ("Zbp1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16176" :NAME
                                      "Z-DNA binding protein 1"))
                                    ("upcase" "CAP-2" "UP:P50452"
                                     ("cap-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20039" :NAME
                                      "cyclase associated actin cytoskeleton regulatory protein 2"))
                                    ("upcase" "CAP-1" "UP:Q13114"
                                     ("cap-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:W4VS53" :NAME "CRISP/Allergen/PR-1"))
                                    ("upcase" "GP38" "UP:P79677"
                                     ("gp38" "ONT:GENE-PROTEIN" :ID "UP:Q09YD1"
                                      :NAME "Gene product 38"))
                                    ("upcase" "EAT-2" "UP:O14796"
                                     ("eat-2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C118226" :NAME
                                      "SH2 domain-containing protein 1B"))
                                    ("hyphens" "eIF2α" "UP:P05198"
                                     ("eIF2-α" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q9FE78" :NAME
                                      "Eukaryotic translation initiation factor 2 subunit alpha"))
                                    ("hyphens" "nsp1" "UP:P0DTD1"
                                     ("nsp-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q0H8C5" :NAME
                                      "Non-structural protein 1"))
                                    ("upcase" "NEO1" "UP:Q92859"
                                     ("neo1" "ONT:GENE-PROTEIN" :ID "HGNC:7754"
                                      :NAME "neogenin 1"))
                                    ("hyphens" "rod1" "UP:O95758"
                                     ("rod-1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C114438" :NAME
                                      "polypyrimidine tract-binding protein 3"))
                                    ("hyphens" "usp46" "UP:P62068"
                                     ("usp-46" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20075" :NAME
                                      "ubiquitin specific peptidase 46"))
                                    ("hyphens-dc" "cyt19" "UP:Q9HBK9"
                                     ("Cyt-19" "ONT:GENE" :ID "HGNC:17452"
                                      :NAME "arsenite methyltransferase"))
                                    ("hyphens" "CV2" "UP:Q8CJ69"
                                     ("CV-2" "ONT:GENE" :ID "HGNC:20637" :NAME
                                      "dihydropyrimidinase like 5"))
                                    ("hyphens" "CHN" "UP:P15882"
                                     ("CH-N" "ONT:GENE" :ID "NCIT:C96008" :NAME
                                      "NR4A3"))
                                    ("hyphens" "CEACAM8" "UP:P31997"
                                     ("CEACAM-8" "ONT:GENE" :ID "HGNC:1820"
                                      :NAME "CEA cell adhesion molecule 8"))
                                    ("hyphens" "AspN" "UP:Q9BXN1"
                                     ("Asp-N" "ONT:GENE" :ID "HGNC:14872" :NAME
                                      "asporin"))
                                    ("hyphens-dc" "aac3" "UP:O49447"
                                     ("AAC-3" "ONT:GENE" :ID "NCIT:C52297"
                                      :NAME "SLC25A6"))
                                    ("hyphens" "HLAL" "UP:P07098"
                                     ("HLA-L" "ONT:GENE" :ID "HGNC:6622" :NAME
                                      "lipase F, gastric type"))
                                    ("hyphens" "GGA3" "UP:Q9NZ52"
                                     ("GGA-3" "ONT:GENE" :ID "HGNC:17079" :NAME
                                      "golgi associated, gamma adaptin ear containing, ARF binding protein 3"))
                                    ("hyphens-dc" "f10" "UP:P00742"
                                     ("F-10" "ONT:GENE" :ID "HGNC:3528" :NAME
                                      "coagulation factor X"))
                                    ("hyphens" "OAS2" "UP:P29728"
                                     ("OAS-2" "ONT:GENE" :ID "HGNC:8087" :NAME
                                      "2'-5'-oligoadenylate synthetase 2"))
                                    ("hyphens" "OAS1" "UP:P00973"
                                     ("OAS-1" "ONT:GENE" :ID "HGNC:8086" :NAME
                                      "2'-5'-oligoadenylate synthetase 1"))
                                    ("upcase" "NALP3" "UP:Q96P20"
                                     ("Nalp3" "ONT:GENE" :ID "NCIT:C77203"
                                      :NAME "NLRP3"))
                                    ("hyphens" "NPC1" "UP:O15118"
                                     ("NPC-1" "ONT:GENE" :ID "HGNC:7897" :NAME
                                      "NPC intracellular cholesterol transporter 1"))
                                    ("hyphens" "NGC" "UP:O95196"
                                     ("NG-C" "ONT:GENE" :ID "HGNC:2467" :NAME
                                      "chondroitin sulfate proteoglycan 5"))
                                    ("hyphens" "MUC5" "UP:P98088"
                                     ("MUC-5" "ONT:GENE" :ID "NCIT:C90333"
                                      :NAME "MUC5AC"))
                                    ("hyphens-dc" "mpcl" "UP:Q8WXI8"
                                     ("MPC-L" "ONT:GENE" :ID "HGNC:14554" :NAME
                                      "C-type lectin domain family 4 member D"))
                                    ("hyphens" "MBL2" "UP:P11226"
                                     ("MBL-2" "ONT:GENE" :ID "HGNC:6922" :NAME
                                      "mannose binding lectin 2"))
                                    ("hyphens-dc" "lyp1" "UP:Q9Y2R2"
                                     ("LyP-1" "ONT:GENE" :ID "NCIT:C49524"
                                      :NAME "PTPN22"))
                                    ("hyphens" "TLR10" "UP:Q9BXR5"
                                     ("TLR-10" "ONT:GENE" :ID "HGNC:15634"
                                      :NAME "toll like receptor 10"))
                                    ("hyphens" "TAC3" "UP:Q9UHF0"
                                     ("TAC-3" "ONT:GENE" :ID "HGNC:11521" :NAME
                                      "tachykinin precursor 3"))
                                    ("hyphens" "TMT" "UP:Q9NRR2"
                                     ("T-M-T" "ONT:GENE" :ID "HGNC:14134" :NAME
                                      "tryptase gamma 1"))
                                    ("hyphens" "Rab18" "UP:Q9NP72"
                                     ("Rab-18" "ONT:GENE" :ID "HGNC:14244"
                                      :NAME
                                      "RAB18, member RAS oncogene family"))
                                    ("hyphens" "RG4" "UP:Q13432"
                                     ("R-G-4" "ONT:GENE" :ID "NCIT:C102481"
                                      :NAME "UNC119"))
                                    ("hyphens" "POP7" "UP:O75817"
                                     ("POP-7" "ONT:GENE" :ID "HGNC:19949" :NAME
                                      "POP7 homolog, ribonuclease P/MRP subunit"))
                                    ("upcase" "DC3" "UP:Q6ZPD8"
                                     ("dC3" "ONT:GENE" :ID "HGNC:23250" :NAME
                                      "diacylglycerol O-acyltransferase 2 like 6"))
                                    ("hyphens" "crg2" "UP:P17515"
                                     ("crg-2" "ONT:GENE" :ID "NCIT:C49756"
                                      :NAME "CXCL10"))
                                    ("hyphens" "genesis" "UP:Q9UJU5"
                                     ("genes-is" "ONT:GENE" :ID "NCIT:C92175"
                                      :NAME "FOXD3"))
                                    ("upcase" "LH3" "UP:O60568"
                                     ("lh3" "ONT:GENE" :ID "HGNC:9083" :NAME
                                      "procollagen-lysine,2-oxoglutarate 5-dioxygenase 3"))
                                    ("upcase" "LAG-2" "UP:P22749"
                                     ("lag-2" "ONT:GENE" :ID "NCIT:C120947"
                                      :NAME "GNLY"))
                                    ("upcase" "IRE-1" "UP:O75460"
                                     ("ire-1" "ONT:GENE" :ID "NCIT:C113613"
                                      :NAME "ERN1"))
                                    ("hyphens" "fMLF" "PUBCHEM:443295"
                                     ("f-MLF" "ONT:CHEMICAL" :ID "CHEBI:53490"
                                      :NAME
                                      "N-formyl-L-methionyl-L-leucyl-L-phenylalanine"))
                                    ("hyphens-dc" "hep2" "EFO:0006438"
                                     ("Hep-2" "ONT:CELL-LINE" :ID "CVCL:1906"
                                      :NAME "HEp-2"))
                                    ("hyphens" "HCT116" "EFO:0002824"
                                     ("HCT-116" "ONT:CELL-LINE" :ID
                                      "NCIT:C117161" :NAME "HCT-116"))
                                    ("hyphens" "FRE" "CVCL:0B88"
                                     ("FR-E" "ONT:CELL-LINE" :ID "CVCL:0C10"
                                      :NAME "FR-E"))
                                    ("hyphens-dc" "ni1" "CVCL:D426"
                                     ("Ni-1" "ONT:CELL-LINE" :ID "CVCL:GT45"
                                      :NAME "NI-1"))
                                    ("hyphens" "SC1" "CVCL:6F19"
                                     ("SC-1" "ONT:CELL-LINE" :ID "CVCL:1888"
                                      :NAME "Sc-1"))
                                    ("hyphens" "biosynthesis" "NCIT:C17702"
                                     ("bio-synthesis" "ONT:BIOLOGICAL-PROCESS"
                                      :ID "GO:0009058" :NAME
                                      "biosynthetic process"))))

(defparameter *ID-AND-CAT-MISMATCH* '(("hyphens" "DEN1" "UP:Q96LD8" :OLD-CAT
                                       PROTEIN :NEW-CAT VIRUS
                                       ("DEN-1" "ONT:VIRUS" :ID "NCIT:C112266"
                                        :NAME "dengue virus 1"))
                                      ("upcase" "APH-1" "UP:W2TQH2" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Aph-1" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:00222" :NAME "APH-1 family"))
                                      ("hyphens" "nsp10" "UP:P0DTD1" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("nsp-10" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF09401" :NAME "NSP10"))
                                      ("hyphens-dc" "p22" "CVCL:4267" :OLD-CAT
                                       CELL-LINE :NEW-CAT PROTEIN
                                       ("P2-2" "ONT:PROTEIN" :ID "UP:P84674"
                                        :NAME
                                        "Basic phospholipase A2 VRV-PL-V"))
                                      ("hyphens" "PI4K" "UP:Q9FMJ0" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("PI-4-K" "ONT:PROTEIN" :ID "GO:0004430"
                                        :NAME
                                        "1-phosphatidylinositol 4-kinase activity"))
                                      ("hyphens" "oxidoreductase" "UP:Q9SUP1"
                                       :OLD-CAT PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("oxido-reductase" "ONT:PROTEIN" :ID
                                        "GO:0016491" :NAME
                                        "oxidoreductase activity"))
                                      ("hyphens" "TAG72" "UP:Q61E36" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("TAG-72" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C1269" :NAME
                                        "TAG-72 antigen"))
                                      ("hyphens" "SeMet" "PUBCHEM:15103"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("Se-Met" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C2833" :NAME
                                        "L-selenomethionine"))
                                      ("hyphens" "dodecylphosphocholine"
                                       "CHEBI:78018" :OLD-CAT MOLECULE :NEW-CAT
                                       DRUG
                                       ("dodecyl-phosphocholine"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C028810" :NAME
                                        "dodecylphosphocholine"))
                                      ("hyphens-dc" "dnds" "PUBCHEM:5282251"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("dN-dS" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "MESH:C022306" :NAME
                                        "4,4'-dinitro-2,2'-stilbenedisulfonic acid"))
                                      ("hyphens" "hydroxymethylbilane"
                                       "UP:P08397" :OLD-CAT PROTEIN :NEW-CAT
                                       DRUG
                                       ("hydroxymethyl-bilane"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C024393" :NAME
                                        "hydroxymethylbilane"))
                                      ("hyphens" "aminoglycosides" "NCIT:C2363"
                                       :OLD-CAT DRUG :NEW-CAT MOLECULE
                                       ("amino-glycosides" "ONT:MOLECULE" :ID
                                        "CHEBI:47779" :NAME "aminoglycoside"))
                                      ("hyphens" "AOP" "UP:Q01842" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("AO-P"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C97167" :NAME
                                        "anemia of prematurity"))
                                      ("hyphens" "HHV8" "NCIT:C14327" :OLD-CAT
                                       VIRUS :NEW-CAT DISEASE
                                       ("HHV-8"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0002612" :NAME
                                        "human herpesvirus 8 infection"))
                                      ("hyphens" "PSC" "CVCL:6G33" :OLD-CAT
                                       CELL-LINE :NEW-CAT DISEASE
                                       ("PS-C"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C135180" :NAME
                                        "posterior subcapsular cataract"))
                                      ("hyphens" "DNAJ" "XFAM:PF00226" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("DNA-J" "ONT:GENE-PROTEIN" :ID
                                        "NCIT:C104663" :NAME "DNAJ protein"))
                                      ("hyphens" "CART" "UP:Q16568" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("CAR-T" "ONT:GENE-PROTEIN" :ID
                                        "FA:00467" :NAME "CART family"))
                                      ("upcase" "IFN-B" "UP:P01574" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("IFN-b" "ONT:GENE-PROTEIN" :ID
                                        "FPLX:IFNB" :NAME "IFNB"))
                                      ("upcase" "TRM112" "UP:Q9UI30" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Trm112" "ONT:GENE-PROTEIN" :ID
                                        "FA:04207" :NAME "TRM112 family"))
                                      ("hyphens" "DHA" "CHEBI:207229" :OLD-CAT
                                       DRUG :NEW-CAT MOLECULE
                                       ("D-HA" "ONT:CHEMICAL" :ID "CHEBI:36005"
                                        :NAME "docosahexaenoic acid"))
                                      ("hyphens-dc" "ai2" "UP:P03876" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("AI-2" "ONT:CHEMICAL" :ID "CHEBI:40646"
                                        :NAME "autoinducer-2"))
                                      ("hyphens" "HAA" "PUBCHEM:547" :OLD-CAT
                                       MOLECULE :NEW-CAT CELLULAR-LOCATION
                                       ("HA-A" "ONT:CELL-PART" :ID "GO:0032117"
                                        :NAME
                                        "horsetail-astral microtubule array"))
                                      ("hyphens" "DF1" "UP:Q38950" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("DF-1" "ONT:CELL-LINE" :ID "CVCL:0570"
                                        :NAME "UMNSAH/DF-1"))
                                      ("hyphens" "DEC205" "UP:O60449" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("DEC-205" "ONT:CELL-LINE" :ID
                                        "CVCL:9171" :NAME "DEC-205"))
                                      ("hyphens" "COS7" "UP:Q07788" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("COS-7" "ONT:CELL-LINE" :ID "CVCL:0224"
                                        :NAME "COS-7"))
                                      ("hyphens" "CL100" "UP:P28562" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CL-100" "ONT:CELL-LINE" :ID
                                        "CVCL:Y428" :NAME "CL100"))
                                      ("hyphens" "CCL3" "UP:P10147" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CCL-3" "ONT:CELL-LINE" :ID "CVCL:M023"
                                        :NAME "CCL3"))
                                      ("hyphens" "BCP1" "IPR025602" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("BCP-1" "ONT:CELL-LINE" :ID "CVCL:0107"
                                        :NAME "BCP-1"))
                                      ("hyphens" "1b2" "UP:Q9JJL3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("1b-2" "ONT:CELL-LINE" :ID "CVCL:J101"
                                        :NAME "1B2-1B7"))
                                      ("hyphens-dc" "hic" "UP:Q9P1T7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Hi-C" "ONT:CELL-LINE" :ID "CVCL:WJ24"
                                        :NAME "HIC"))
                                      ("hyphens" "HTR8" "UP:P59169" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HTR-8" "ONT:CELL-LINE" :ID "CVCL:D728"
                                        :NAME "HTR-8"))
                                      ("hyphens" "HAL" "UP:P42357" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HA-L" "ONT:CELL-LINE" :ID "CVCL:D788"
                                        :NAME "HAL"))
                                      ("hyphens" "HAE" "UP:P47735" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HA-E" "ONT:CELL-LINE" :ID "CVCL:0C12"
                                        :NAME "HA-E"))
                                      ("hyphens-dc" "gi1" "UP:P49215" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("GI-1" "ONT:CELL-LINE" :ID "CVCL:1231"
                                        :NAME "GI-1"))
                                      ("hyphens-dc" "f12" "UP:P00748" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("F-12" "ONT:CELL-LINE" :ID "CVCL:M045"
                                        :NAME "F12"))
                                      ("hyphens" "EL4" "UP:Q570B4" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("EL-4" "ONT:CELL-LINE" :ID "CVCL:0255"
                                        :NAME "EL4"))
                                      ("hyphens-dc" "mac2" "UP:P17931" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Mac-2" "ONT:CELL-LINE" :ID "CVCL:H632"
                                        :NAME "Mac-2"))
                                      ("hyphens" "LAN2" "UP:P34815" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("LAN-2" "ONT:CELL-LINE" :ID "CVCL:1829"
                                        :NAME "LA-N-2"))
                                      ("hyphens" "TP3" "UP:Q7M2P1" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TP-3" "ONT:CELL-LINE" :ID "CVCL:J968"
                                        :NAME "TP-3"))
                                      ("hyphens" "TA3" "UP:Q96RI9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TA-3" "ONT:CELL-LINE" :ID "CVCL:4315"
                                        :NAME "TA3"))
                                      ("hyphens" "SI1" "UP:Q9P2N6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SI-1" "ONT:CELL-LINE" :ID "CVCL:3165"
                                        :NAME "Si-1"))
                                      ("hyphens" "U87MG" "UP:Q8N9N8" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("U-87MG" "ONT:CELL-LINE" :ID
                                        "CVCL:0022" :NAME "U-87MG ATCC"))
                                      ("hyphens-dc" "th2" "UP:Q9Y5Y4" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Th-2" "ONT:CELL-LINE" :ID
                                        "EFO:0002804" :NAME "TH-2"))
                                      ("hyphens" "Th1" "UP:Q8IXH7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Th-1" "ONT:CELL-LINE" :ID "CVCL:5J51"
                                        :NAME "TH1"))
                                      ("hyphens" "hE1" "UP:P61916" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("hE-1" "ONT:CELL-LINE" :ID "CVCL:2922"
                                        :NAME "HE-1"))
                                      ("hyphens" "hr1" "UP:Q96GN5" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("hr-1" "ONT:CELL-LINE" :ID "CVCL:2676"
                                        :NAME "P3HR-1"))
                                      ("upcase" "MM3" "UP:Q91771" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("mm3" "ONT:CELL-LINE" :ID "CVCL:VG92"
                                        :NAME "MM-3"))
                                      ("hyphens" "IIB" "UP:Q00403" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("II-B" "ONT:CANCER" :ID "NCIT:C88136"
                                        :NAME
                                        "stage IIB uveal melanoma AJCC v7"))
                                      ("hyphens" "glycosylation" "GO:0006486"
                                       :OLD-CAT POST-TRANSLATIONAL-MODIFICATION
                                       :NEW-CAT BIO-PROCESS
                                       ("glycosyla-tion"
                                        "ONT:BIOLOGICAL-PROCESS" :ID
                                        "GO:0070085" :NAME "glycosylation"))))

(defparameter *NO-ID-REDEF* '(("upcase" "SDS-PAGE"
                               ("SDS-Page" "ONT:PROCEDURE" :ID "NCIT:C18150"
                                :NAME
                                "sodium dodecylsulfate-polyacrylamide gel electrophoresis"))
                              ("hyphens" "microarray"
                               ("micro-array" "ONT:MEDICAL-INSTRUMENT" :ID
                                "EFO:0002698" :NAME "array"))
                              ("hyphens" "A375"
                               ("A-375" "ONT:CELL-LINE" :ID "CVCL:0132" :NAME
                                "A-375"))
                              ("hyphens" "HEK293T"
                               ("HEK-293T" "ONT:CELL-LINE" :ID "EFO:0001184"
                                :NAME "HEK293T"))
                              ("hyphens" "HEK293"
                               ("HEK-293" "ONT:CELL-LINE" :ID "EFO:0001182"
                                :NAME "HEK293"))
                              ("hyphens" "PC12"
                               ("PC-12" "ONT:CELL-LINE" :ID "CVCL:0481" :NAME
                                "PC12"))
                              ("hyphens-dc" "skmel28"
                               ("SK-MEL-28" "ONT:CELL-LINE" :ID "EFO:0003081"
                                :NAME "SK-MEL-28"))))

(defparameter *NAMECAT-ID-MISMATCHES* '((CELLULAR-LOCATION GOLGI-APPARATUS
                                         "GO:0005794" :NEWUID "UP:SL-0132"
                                         :WORD "Golgi-apparatus")))

(defparameter *NO-RULE-REDEF* 'NIL)

(defparameter *NAME-ID-MISMATCHES* '((MOLECULE "coenzyme A" "PUBCHEM:6816"
                                      :NEWUID "CHEBI:15346" :WORD "coenzyme-A")
                                     (MOLECULE "ethidium bromide"
                                      "PUBCHEM:14710" :NEWUID "CHEBI:4883"
                                      :WORD "ethidium-bromide")
                                     (CELL-TYPE "leukocyte" "BTO:0000751"
                                      :NEWUID "CO:0000738" :WORD "immune-cell")))

(defparameter *PROT-FAM-REDEF* 'NIL)

(defparameter *VIOLATES-NO-PLURAL* 'NIL)

(defparameter *WORD-DIFF-POS-NAME* 'NIL)

(defparameter *PLURALS-OF-EXISTING-CATS* 'NIL)

(defparameter *DIFF-POS-OF-EXISTING-CATS* 'NIL)

(defparameter *PLURALS-OF-EXISTING-WORDS* 'NIL)

(defparameter *DIFF-POS-OF-EXISTING-WORDS* 'NIL)

(defparameter *SYNONYM-FOR-EXISTING-WORDS* '((VIRUS "DEN-2" "NCIT:C112267"
                                              "dengue virus 2")
                                             (VIRUS "HTLV-II" "NCIT:C14224"
                                              "HTLV-2")
                                             (VIRUS "HHV5" "NCIT:C14196"
                                              "cytomegalovirus")
                                             (BIO-METHOD "First-stranded"
                                              "NCIT:C150428"
                                              "first-strand library sequencing")
                                             (BIO-METHOD "q-RT-PCR"
                                              "NCIT:C28408"
                                              "quantitative reverse transcriptase PCR")
                                             (DRUG "Ara-A" "NCIT:C929"
                                              "vidarabine")
                                             (DRUG "AG-7088" "NCIT:C82255"
                                              "rupintrivir")
                                             (DRUG "FuGENE-6" "MESH:C411955"
                                              "FuGene")
                                             (DRUG "S-Adenosyl-Methionine"
                                              "NCIT:C63661"
                                              "S-adenosylmethionine")
                                             (DRUG "adenosyl-ornithine"
                                              "NCIT:C73041" "sinefungin")
                                             (DRUG "immuno-adjuvants"
                                              "NCIT:C210" "immunoadjuvant")
                                             (MOLECULE
                                              "isopropyl-β-D-thiogalactopyranoside"
                                              "CHEBI:61448"
                                              "isopropyl beta-D-thiogalactopyranoside")
                                             (MOLECULE "n-octanol"
                                              "CHEBI:37868" "octanol")
                                             (MOLECULE "n-ethyl-maleimide"
                                              "CHEBI:44485" "N-ethylmaleimide")
                                             (MOLECULE "n-butyl" "CHEBI:41264"
                                              "butyl group")
                                             (MOLECULE "tert-butyl"
                                              "CHEBI:30355" "tert-butyl group")
                                             (PROTEIN-DOMAIN "C–X–C"
                                              "XFAM:PF03638" "TCR")
                                             (MOLECULE
                                              "S-Adenosyl-homocysteine"
                                              "CHEBI:16680"
                                              "S-adenosyl-L-homocysteine")
                                             (MOLECULE "actinomycin-D"
                                              "CHEBI:27666" "actinomycin D")
                                             (MOLECULE "Tris-buffer"
                                              "CHEBI:9754" "tris")
                                             (MOLECULE "coenzyme-A"
                                              "CHEBI:15346" "coenzyme A")
                                             (MOLECULE
                                              "glyceraldehydes-3phosphate"
                                              "CHEBI:17138"
                                              "glyceraldehyde 3-phosphate")
                                             (MOLECULE "ethidium-bromide"
                                              "CHEBI:4883" "ethidium bromide")
                                             (MOLECULE
                                              "sulfamethoxazole-trimethoprim"
                                              "CHEBI:3770" "co-trimoxazole")
                                             (CELLULAR-LOCATION "t−j"
                                              "UP:SL-0265" "Tight junction")
                                             (CELL-LINE "M-12" "CVCL:J160"
                                              "LI 66")
                                             (CELL-LINE "T014" "CVCL:2734"
                                              "TO14")
                                             (CELL-LINE "VeroE6" "CVCL:0574"
                                              "Vero C1008")
                                             (CELL-LINE "UT7" "CVCL:2233"
                                              "UT-7")
                                             (CELL-LINE "cm−3" "CVCL:Y620"
                                              "CM-3 [Human ESC]")
                                             (CELL-LINE "e−10" "CVCL:0251"
                                              "NAL1A clone C4E10")
                                             (CELL-LINE "m−1" "CVCL:2107" "M1")
                                             (CELL-TYPE "NK-cells" "CO:0000623"
                                              "natural killer cell")
                                             (CELL-TYPE "NK-cell" "CO:0000623"
                                              "natural killer cell")
                                             (CELL-TYPE "immune-cell"
                                              "CO:0000738" "leukocyte")
                                             (BIO-PROCESS "cross-reactive"
                                              "NCIT:C96482" "cross reaction")
                                             (BIO-PROCESS "self-tolerance"
                                              "NCIT:C17712"
                                              "immunologic tolerance")))

(defparameter *CATEGORY-MISMATCH-EXISTING-CATS* 'NIL)

(defparameter *CATEGORY-MISMATCH-EXISTING-WORDS* '((:ORIG-CAT CORONAVIRUS
                                                    :NEW-CAT VIRUS :NAME
                                                    "betacoronavirus" :NEWUID
                                                    "NCIT:C113207" :WORD
                                                    "beta-CoVs")
                                                   (:ORIG-CAT CORONAVIRUS
                                                    :NEW-CAT VIRUS :NAME
                                                    "betacoronavirus" :NEWUID
                                                    "NCIT:C113207" :WORD
                                                    "beta-CoV")
                                                   (:ORIG-CAT CORONAVIRUS
                                                    :NEW-CAT VIRUS :NAME
                                                    "gammacoronavirus" :NEWUID
                                                    "NCIT:C122313" :WORD
                                                    "gamma-coronavirusa")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "penicillin G"
                                                    :NEWUID "NCIT:C61883" :WORD
                                                    "Penicillin-G")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME "amantadine"
                                                    :NEWUID "CHEBI:2618" :WORD
                                                    "amino-adamantane")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    DRUG :NAME "trichostatin A"
                                                    :NEWUID "NCIT:C1261" :WORD
                                                    "Trichostatin-A")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    DRUG :NAME
                                                    "calcium phosphate" :NEWUID
                                                    "MESH:C020243" :WORD
                                                    "calcium-phosphate")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    DRUG :NAME "protein C"
                                                    :NEWUID "NCIT:C87607" :WORD
                                                    "protein-C")
                                                   (:ORIG-CAT DRUG :NEW-CAT
                                                    MOLECULE :NAME "miglustat"
                                                    :NEWUID "CHEBI:50381" :WORD
                                                    "NB-DNJ")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "LS"
                                                    :NEWUID "CVCL:2105" :WORD
                                                    "l−s")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "RR"
                                                    :NEWUID "CVCL:UI85" :WORD
                                                    "r−R")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "TD"
                                                    :NEWUID "CVCL:5M22" :WORD
                                                    "t−D")))

(defparameter *SUPPRESSED-REDEFS* '(("HCoV-SARS"
                                     ("HCoV-SARS" "ONT:VIRUS" :ID
                                      "NCIT:C112432" :NAME "SARS coronavirus"))))

(defparameter *NON-BIO-DEFS* '(("percep-tion" "ONT:REFERENTIAL-SEM" :ID
                                "NCIT:C16967" :NAME "perception")
                               ("IA-NA" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C80274" :NAME
                                "internet assigned numbers authority")
                               ("HL-7" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C80485" :NAME "health level seven")))

