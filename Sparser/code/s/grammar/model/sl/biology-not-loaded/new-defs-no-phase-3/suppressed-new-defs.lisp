(in-package :sparser)

(defparameter *SUPPRESSED-HYPHENATED-NEW-WORDS* '((PROTEIN-DOMAIN "ubox"
                                                   ("U-box"
                                                    "ONT:MOLECULAR-DOMAIN" :ID
                                                    "XFAM:PF04564.13" :NAME
                                                    "U-box"))
                                                  (PROTEIN-DOMAIN "CXC"
                                                   ("C-X-C"
                                                    "ONT:MOLECULAR-DOMAIN" :ID
                                                    "XFAM:PF03638.13" :NAME
                                                    "TCR"))
                                                  (DRUG "pCMX"
                                                   ("p-CMX"
                                                    "ONT:PHARMACOLOGIC-SUBSTANCE"
                                                    :ID "MESH:C007027" :NAME
                                                    "chloroxylenol"))
                                                  (DRUG "dimethyl"
                                                   ("di-methyl"
                                                    "ONT:PHARMACOLOGIC-SUBSTANCE"
                                                    :ID "CHEBI:33601" :NAME
                                                    "safranin O"))
                                                  (DRUG "antiviral"
                                                   ("anti-viral"
                                                    "ONT:PHARMACOLOGIC-SUBSTANCE"
                                                    :ID "NCIT:C281" :NAME
                                                    "antiviral agent"))
                                                  (DRUG "antimicrobial"
                                                   ("anti-microbial"
                                                    "ONT:PHARMACOLOGIC-SUBSTANCE"
                                                    :ID "NCIT:C258" :NAME
                                                    "antibiotic"))
                                                  (DRUG "HMGCoA"
                                                   ("HMG-CoA"
                                                    "ONT:PHARMACOLOGIC-SUBSTANCE"
                                                    :ID "MESH:C008047" :NAME
                                                    "3-hydroxy-3-methylglutaryl-coenzyme A"))
                                                  (MOLECULE
                                                   "Phosphatidylinositol"
                                                   ("Phosphatidy-linositol"
                                                    "ONT:MOLECULE" :ID
                                                    "CHEBI:28874" :NAME
                                                    "phosphatidylinositol"))
                                                  (MOLECULE "neurotransmitter"
                                                   ("neuro-transmitter"
                                                    "ONT:CHEMICAL" :ID
                                                    "CHEBI:25512" :NAME
                                                    "neurotransmitter"))
                                                  (MOLECULE "estrogen"
                                                   ("estro-gen" "ONT:CHEMICAL"
                                                    :ID "CHEBI:50114" :NAME
                                                    "estrogen"))
                                                  (MOLECULE "cofactor"
                                                   ("co-factor" "ONT:CHEMICAL"
                                                    :ID "CHEBI:23357" :NAME
                                                    "cofactor"))
                                                  (MOLECULE "DYE"
                                                   ("D-Y-E" "ONT:CHEMICAL" :ID
                                                    "CHEBI:37958" :NAME "dye"))
                                                  (MOLECULE "CMH"
                                                   ("CM-H" "ONT:CHEMICAL" :ID
                                                    "CHEBI:62107" :NAME
                                                    "beta-D-glucosyl-N-(docosanoyl)sphingosine"))
                                                  (CELL-LINE "npa"
                                                   ("n-PA" "ONT:CELL-LINE" :ID
                                                    "CVCL:0467" :NAME "NPA"))
                                                  (CELL-LINE "PAR"
                                                   ("P-AR" "ONT:CELL-LINE" :ID
                                                    "CVCL:E801" :NAME "PAR"))
                                                  (CELL-LINE "NIC"
                                                   ("N-IC" "ONT:CELL-LINE" :ID
                                                    "CVCL:F577" :NAME "NIC"))
                                                  (CELL-LINE "LCMS"
                                                   ("LC-MS" "ONT:CELL-LINE" :ID
                                                    "CVCL:1655" :NAME
                                                    "RERF-LC-MS"))
                                                  (CELL-TYPE "osteoblast"
                                                   ("osteo-blast" "ONT:CELL"
                                                    :ID "BTO:0001593" :NAME
                                                    "osteoblast"))
                                                  (CELL-TYPE "lymphocyte"
                                                   ("lym-phocyte" "ONT:CELL"
                                                    :ID "BTO:0000775" :NAME
                                                    "lymphocyte"))
                                                  (DISEASE "pgs"
                                                   ("p-GS"
                                                    "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                                    :ID "NCIT:C124839" :NAME
                                                    "pettigrew syndrome"))
                                                  (DISEASE "XPE"
                                                   ("XP-E"
                                                    "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                                    :ID "NCIT:C114771" :NAME
                                                    "xeroderma pigmentosum complementation group E"))
                                                  (CANCER "TALL"
                                                   ("T-ALL" "ONT:CANCER" :ID
                                                    "EFO:0000209" :NAME
                                                    "T-cell acute lymphoblastic leukemia"))
                                                  (BIO-PROCESS "checkpoint"
                                                   ("check-point"
                                                    "ONT:BIOLOGICAL-PROCESS"
                                                    :ID "NCIT:C18689" :NAME
                                                    "cell cycle checkpoint"))
                                                  (BIO-PROCESS
                                                   "Phosphorylation"
                                                   ("Phosphoryla-tion"
                                                    "ONT:BIOLOGICAL-PROCESS"
                                                    :ID "GO:0016310" :NAME
                                                    "phosphorylation"))
                                                  (CELLULAR-LOCATION "midbody"
                                                   ("mid-body" "ONT:CELL-PART"
                                                    :ID "UP:SL-0469" :NAME
                                                    "Midbody"))
                                                  (CELLULAR-LOCATION
                                                   "chromosome"
                                                   ("chro-mosome"
                                                    "ONT:CELL-PART" :ID
                                                    "UP:SL-0468" :NAME
                                                    "Chromosome"))))

(defparameter *SUPPRESSED-MOD-REDEFS* '(("downcase"
                                         "transforming growth factor-beta1 protein"
                                         ("Transforming growth factor-beta1 protein"
                                          "uniprot" :TYPE "gene" :ID
                                          "UP:P01137"))
                                        ("downcase" "grb10"
                                         ("Grb10" "uniprot" :TYPE "gene" :ID
                                          "UP:Q13322"))
                                        ("downcase" "cox-2"
                                         ("Cox-2" "uniprot" :TYPE "gene" :ID
                                          "UP:P35354"))
                                        ("downcase" "caenorhabditis elegans"
                                         ("Caenorhabditis elegans" "taxonomy"
                                          :TYPE "species" :ID "TI:6239"))
                                        ("hyphens-dc" "zr751"
                                         ("ZR75-1" "cellosaurus" :TYPE
                                          "cellline" :ID "CVCL:0588"))
                                        ("downcase" "rg1"
                                         ("Rg1" "ONT:PROTEIN" :ID "UP:Q16821"
                                          :NAME
                                          "Protein phosphatase 1 regulatory subunit 3A"))
                                        ("downcase" "scfas"
                                         ("SCFAs" "ONT:CHEMICAL" :ID
                                          "CHEBI:26666" :NAME
                                          "short-chain fatty acid"))
                                        ("downcase" "oxytocin"
                                         ("Oxytocin" "ONT:PROTEIN" :ID
                                          "UP:P69056" :NAME "Oxytocin"))
                                        ("downcase" "oct6"
                                         ("Oct6" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q03052" :NAME
                                          "POU domain, class 3, transcription factor 1"))
                                        ("downcase" "mtb"
                                         ("Mtb" "ONT:GENE-PROTEIN" :ID
                                          "UP:P27087" :NAME
                                          "Metallothionein B"))
                                        ("downcase" "ftase"
                                         ("Ftase" "ONT:PROTEIN" :ID
                                          "GO:0004660" :NAME
                                          "protein farnesyltransferase activity"))
                                        ("downcase" "frizzled5"
                                         ("Frizzled5" "ONT:PROTEIN" :ID
                                          "UP:Q13467" :NAME "Frizzled-5"))
                                        ("downcase" "coi1"
                                         ("Coi1" "ONT:PROTEIN" :ID "UP:O04197"
                                          :NAME
                                          "Coronatine-insensitive protein 1"))
                                        ("downcase" "bsk"
                                         ("Bsk" "ONT:PROTEIN" :ID "UP:Q922K9"
                                          :NAME "Tyrosine-protein kinase FRK"))
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
                                        ("downcase" "sln1p"
                                         ("Sln1p" "ONT:PROTEIN" :ID
                                          "GO:0004673" :NAME
                                          "protein histidine kinase activity"))
                                        ("upcase" "FGFR"
                                         ("Fgfr" "ONT:PROTEIN" :ID
                                          "NCIT:C17297" :NAME
                                          "fibroblast growth factor receptor family"))
                                        ("downcase" "imp7"
                                         ("Imp7" "ONT:GENE-PROTEIN" :ID
                                          "UP:O95373" :NAME "Importin-7"))
                                        ("downcase" "cul-5"
                                         ("Cul-5" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q93034" :NAME "Cullin-5"))
                                        ("downcase" "beclin1"
                                         ("Beclin1" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q14457" :NAME "Beclin-1"))
                                        ("downcase" "ang1"
                                         ("Ang1" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q15389" :NAME "Angiopoietin-1"))
                                        ("downcase" "abl"
                                         ("Abl" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q00022" :NAME
                                          "Agaricus bisporus lectin"))
                                        ("downcase" "rgcs"
                                         ("RGCs" "ONT:CELL" :ID "CO:0000740"
                                          :NAME "retinal ganglion cell"))
                                        ("downcase" "pbmcs"
                                         ("PBMCs" "ONT:CELL" :ID "BTO:0001025"
                                          :NAME
                                          "peripheral blood mononuclear cell"))
                                        ("hyphens-dc" "ku55933"
                                         ("Ku-55933"
                                          "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                          "MESH:C495818" :NAME
                                          "2-morpholin-4-yl-6-thianthren-1-yl-pyran-4-one"))
                                        ("hyphens-dc" "actd"
                                         ("act-D" "ONT:CHEMICAL" :ID
                                          "CHEBI:27666" :NAME "actinomycin D"))
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
                                        ("downcase" "de-sumoylation"
                                         ("de-SUMOylation"
                                          "ONT:BIOLOGICAL-PROCESS" :ID
                                          "GO:0016926" :NAME
                                          "protein desumoylation"))
                                        ("hyphens" "mRNA"
                                         ("m-RNA" "ONT:MRNA" :ID "NCIT:C813"
                                          :NAME "messenger RNA"))))

(group-by *ID-MISMATCH-REDEF* #'(lambda(x) (list (subseq (third x) 0 (search ":" (third x))) (subseq (getf (fourth x) :ID) 0 (search ":" (getf (fourth x) :ID))))))
 
(defparameter *ID-MISMATCH-REDEF* '(("upcase" "KN-93" "CHEBI:91460"
                                     ("Kn-93" "pubchem" :TYPE "simple-chemical"
                                      :ID "PCID:3837"))
                                    ("orig" "phosphatidylinositol 3-phosphate"
                                     "CHEBI:26034"
                                     ("phosphatidylinositol 3-phosphate"
                                      "pubchem" :TYPE "simple-chemical" :ID
                                      "PCID:6857403"))
                                    ("downcase" "tgf-beta" "FA:03989"
                                     ("Tgf-beta" "interpro" :TYPE "family" :ID
                                      "IPR015615"))
                                    ("orig" "cullin family" "FA:00787"
                                     ("cullin family" "pfam" :TYPE "family" :ID
                                      "XFAM:PF00888"))
                                    ("orig" "peripheral blood mononuclear cell"
                                     "BTO:0001025"
                                     ("peripheral blood mononuclear cell" "cl"
                                      :TYPE "celltype" :ID "CO:2000001"))
                                    ("orig" "goblet cell" "BTO:0001540"
                                     ("goblet cell" "cl" :TYPE "celltype" :ID
                                      "CO:0000160"))
                                    ("orig" "pancreatic beta cell"
                                     "BTO:0000783"
                                     ("pancreatic beta cell" "cl" :TYPE
                                      "celltype" :ID "CO:0000169"))
                                    ("orig" "A549" "EFO:0001086"
                                     ("A549" "cellosaurus" :TYPE "cellline" :ID
                                      "CVCL:0023"))
                                    ("hyphens-dc" "bxpc3" "EFO:0002709"
                                     ("BXPC-3" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL:0186"))
                                    ("orig" "CFPAC-1" "EFO:0006551"
                                     ("CFPAC-1" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL:1119"))
                                    ("hyphens-dc" "colo205" "CVCL:F402"
                                     ("Colo-205" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL:0218"))
                                    ("upcase" "BEAS-2B" "EFO:0001089"
                                     ("Beas-2B" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL:0168"))
                                    ("orig" "HS-5" "CVCL:3720"
                                     ("HS-5" "cellosaurus" :TYPE "cellline" :ID
                                      "CVCL:0809"))
                                    ("orig" "synovial cell" "CO:0000214"
                                     ("synovial cell" "tissuelist" :TYPE "cell"
                                      :ID "TS-0995"))
                                    ("orig" "mesenchymal stem cell"
                                     "CO:0000134"
                                     ("mesenchymal stem cell" "tissuelist"
                                      :TYPE "cell" :ID "TS-0618"))
                                    ("orig" "B cell" "CO:0000236"
                                     ("B cell" "tissuelist" :TYPE "cell" :ID
                                      "TS-0068"))
                                    ("upcase" "SPI" "UP:P10645"
                                     ("spi" "ONT:PROTEIN" :ID "NCIT:C17284"
                                      :NAME "chromogranin-A"))
                                    ("orig" "matrix metalloproteinase-2"
                                     "UP:P08253"
                                     ("matrix metalloproteinase-2"
                                      "ONT:PROTEIN" :ID "NCIT:C17592" :NAME
                                      "matrix metalloproteinase-2"))
                                    ("orig" "visfatin" "UP:P43490"
                                     ("visfatin" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C30138" :NAME
                                      "pre-B-cell colony-enhancing factor"))
                                    ("orig" "ttk" "UP:P33981"
                                     ("ttk" "ONT:GENE-PROTEIN" :ID "HGNC:12401"
                                      :NAME "TTK protein kinase"))
                                    ("orig" "tNOX" "UP:Q16206"
                                     ("tNOX" "ONT:GENE-PROTEIN" :ID "HGNC:2259"
                                      :NAME
                                      "ecto-NOX disulfide-thiol exchanger 2"))
                                    ("orig" "perlecan" "UP:P98160"
                                     ("perlecan" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95448" :NAME
                                      "basement membrane-specific heparan sulfate proteoglycan core protein"))
                                    ("orig" "periostin" "UP:Q15063"
                                     ("periostin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16953" :NAME "periostin"))
                                    ("orig" "p85beta" "UP:O00459"
                                     ("p85beta" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C101285" :NAME
                                      "phosphatidylinositol 3-kinase regulatory subunit beta"))
                                    ("orig" "p67" "UP:P50579"
                                     ("p67" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97245" :NAME "CD33"))
                                    ("orig" "p190" "UP:P78357"
                                     ("p190" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C25999" :NAME
                                      "contactin associated protein-1"))
                                    ("orig" "nSMase2" "UP:Q9NY59"
                                     ("nSMase2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C105032" :NAME
                                      "sphingomyelin phosphodiesterase 3"))
                                    ("orig" "myostatin" "UP:O14793"
                                     ("myostatin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4223" :NAME "myostatin"))
                                    ("orig" "myocardin" "UP:Q8IZQ8"
                                     ("myocardin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16067" :NAME "myocardin"))
                                    ("orig" "myh11" "UP:P35749"
                                     ("myh11" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7569" :NAME
                                      "myosin heavy chain 11"))
                                    ("orig" "melittin" "UP:Q8LW54"
                                     ("melittin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P68407" :NAME "Melittin"))
                                    ("orig" "zif268" "UP:P18146"
                                     ("zif268" "ONT:GENE" :ID "NCIT:C99600"
                                      :NAME "EGR1"))
                                    ("orig" "vasa" "UP:Q9NQI0"
                                     ("vasa" "ONT:GENE" :ID "HGNC:18700" :NAME
                                      "DEAD-box helicase 4"))
                                    ("orig" "pgc1a" "UP:Q9UBK2"
                                     ("pgc1a" "ONT:GENE" :ID "NCIT:C116294"
                                      :NAME "PPARGC1A"))
                                    ("orig" "p38delta" "UP:O15264"
                                     ("p38delta" "ONT:GENE" :ID "NCIT:C51218"
                                      :NAME "MAPK13"))
                                    ("orig" "mut" "UP:P22033"
                                     ("mut" "ONT:GENE" :ID "HGNC:7526" :NAME
                                      "methylmalonyl-CoA mutase"))
                                    ("orig" "esterases" "UP:Q05487"
                                     ("esterases" "ONT:PROTEIN" :ID "UP:P22266"
                                      :NAME "Esterase"))
                                    ("orig" "chemerin" "UP:Q99969"
                                     ("chemerin" "ONT:PROTEIN" :ID "UP:Q29RS5"
                                      :NAME
                                      "Retinoic acid receptor responder protein 2"))
                                    ("orig" "alpha-actinin-4" "UP:O43707"
                                     ("alpha-actinin-4" "ONT:PROTEIN" :ID
                                      "NCIT:C126634" :NAME "alpha-actinin-4"))
                                    ("orig" "alpha-MSH" "UP:P01189"
                                     ("alpha-MSH" "ONT:PROTEIN" :ID
                                      "NCIT:C114797" :NAME
                                      "melanotropin alpha"))
                                    ("orig" "VAP" "UP:Q8AWI5"
                                     ("VAP" "ONT:PROTEIN" :ID "UP:P03552" :NAME
                                      "Virion-associated protein"))
                                    ("orig" "SAGA" "UP:A1CPG1"
                                     ("SAGA" "ONT:PROTEIN" :ID "NCIT:C19804"
                                      :NAME "SAGA"))
                                    ("downcase" "rho1" "UP:Q9HF54"
                                     ("Rho1" "ONT:PROTEIN" :ID "UP:P24406"
                                      :NAME "Transforming protein RhoA"))
                                    ("orig" "hnRNPA1" "UP:P09651"
                                     ("hnRNPA1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5031" :NAME
                                      "heterogeneous nuclear ribonucleoprotein A1"))
                                    ("orig" "hBD3" "UP:P81534"
                                     ("hBD3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C91757" :NAME "beta-defensin 103"))
                                    ("orig" "follistatin" "UP:P19883"
                                     ("follistatin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3971" :NAME "follistatin"))
                                    ("orig" "epimorphin" "UP:P32856"
                                     ("epimorphin" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C116090" :NAME "syntaxin-2"))
                                    ("orig" "elastin" "UP:P15502"
                                     ("elastin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3327" :NAME "elastin"))
                                    ("orig" "eIF2B" "UP:P20042"
                                     ("eIF2B" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18162" :NAME "eIF2B"))
                                    ("upcase" "CYP11A1" "UP:P05108"
                                     ("cyp11a1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2590" :NAME
                                      "cytochrome P450 family 11 subfamily A member 1"))
                                    ("orig" "cyclin D3" "UP:P30281"
                                     ("cyclin D3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1585" :NAME "cyclin D3"))
                                    ("orig" "cIAP1" "UP:Q13490"
                                     ("cIAP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20931" :NAME
                                      "baculoviral IAP repeat-containing protein-2"))
                                    ("orig" "cFLIP" "UP:O15519"
                                     ("cFLIP" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C96018" :NAME
                                      "CASP8 and FADD-like apoptosis regulator"))
                                    ("orig" "biglycan" "UP:P21810"
                                     ("biglycan" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1044" :NAME "biglycan"))
                                    ("orig" "betacellulin" "UP:P35070"
                                     ("betacellulin" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20432" :NAME "betacellulin"))
                                    ("orig" "XAF1" "UP:Q6GPH4"
                                     ("XAF1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:30932" :NAME
                                      "XIAP associated factor 1"))
                                    ("downcase" "wnt5b" "UP:Q9H1J7"
                                     ("Wnt5b" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16265" :NAME
                                      "Wnt family member 5B"))
                                    ("downcase" "vegfa" "UP:P15692"
                                     ("Vegfa" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12680" :NAME
                                      "vascular endothelial growth factor A"))
                                    ("orig" "VMP1" "UP:Q96GC9"
                                     ("VMP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:29559" :NAME
                                      "vacuole membrane protein 1"))
                                    ("orig" "VDR" "UP:P11473"
                                     ("VDR" "ONT:GENE-PROTEIN" :ID "HGNC:12679"
                                      :NAME
                                      "vitamin D (1,25- dihydroxyvitamin D3) receptor"))
                                    ("orig" "UII" "UP:O95399"
                                     ("UII" "ONT:GENE-PROTEIN" :ID "HGNC:12636"
                                      :NAME "urotensin 2"))
                                    ("orig" "U2AF65" "UP:P26368"
                                     ("U2AF65" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:23156" :NAME
                                      "U2 small nuclear RNA auxiliary factor 2"))
                                    ("downcase" "twist1" "UP:Q15672"
                                     ("Twist1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12428" :NAME
                                      "twist family bHLH transcription factor 1"))
                                    ("orig" "TrkC" "UP:Q16288"
                                     ("TrkC" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C33984" :NAME
                                      "neurotrophic tyrosine kinase receptor type-3"))
                                    ("downcase" "thioredoxin" "UP:P10599"
                                     ("Thioredoxin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12435" :NAME "thioredoxin"))
                                    ("orig" "TdT" "UP:P04053"
                                     ("TdT" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C16509" :NAME
                                      "terminal deoxyribonucleotidyl transferase"))
                                    ("orig" "TYMS" "UP:P04818"
                                     ("TYMS" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12441" :NAME
                                      "thymidylate synthetase"))
                                    ("orig" "TSP2" "UP:P35442"
                                     ("TSP2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18038" :NAME "thrombospondin-2"))
                                    ("orig" "TSP1" "UP:P07996"
                                     ("TSP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17547" :NAME "thrombospondin-1"))
                                    ("orig" "TRPV4" "UP:Q9HBA0"
                                     ("TRPV4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:18083" :NAME
                                      "transient receptor potential cation channel subfamily V member 4"))
                                    ("orig" "TRPM7" "UP:Q96QT4"
                                     ("TRPM7" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:17994" :NAME
                                      "transient receptor potential cation channel subfamily M member 7"))
                                    ("orig" "TRPM2" "UP:O94759"
                                     ("TRPM2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12339" :NAME
                                      "transient receptor potential cation channel subfamily M member 2"))
                                    ("orig" "TRIM16" "UP:O95361"
                                     ("TRIM16" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:17241" :NAME
                                      "tripartite motif containing 16"))
                                    ("orig" "TRIB2" "UP:Q92519"
                                     ("TRIB2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:30809" :NAME
                                      "tribbles pseudokinase 2"))
                                    ("orig" "TOLLIP" "UP:Q9H0E2"
                                     ("TOLLIP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16476" :NAME
                                      "toll interacting protein"))
                                    ("orig" "TNFR2" "UP:P20333"
                                     ("TNFR2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51381" :NAME "TNFRSF1B"))
                                    ("orig" "THP" "UP:P07911"
                                     ("THP" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52924" :NAME "GLI2"))
                                    ("orig" "TFF1" "UP:P04155"
                                     ("TFF1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11755" :NAME "trefoil factor 1"))
                                    ("orig" "TBP" "UP:P20226"
                                     ("TBP" "ONT:GENE-PROTEIN" :ID "HGNC:11588"
                                      :NAME "TATA-box binding protein"))
                                    ("orig" "TBN" "UP:Q7Z7C8"
                                     ("TBN" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C30070" :NAME
                                      "taube nuss homologue protein"))
                                    ("downcase" "sox-2" "UP:P48431"
                                     ("Sox-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11195" :NAME "SRY-box 2"))
                                    ("downcase" "smo" "UP:Q99835"
                                     ("Smo" "ONT:GENE-PROTEIN" :ID "HGNC:11119"
                                      :NAME
                                      "smoothened, frizzled class receptor"))
                                    ("downcase" "siah1" "UP:Q8IUQ4"
                                     ("Siah1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10857" :NAME
                                      "siah E3 ubiquitin protein ligase 1"))
                                    ("downcase" "shh" "UP:Q15465"
                                     ("Shh" "ONT:GENE-PROTEIN" :ID "HGNC:10848"
                                      :NAME "sonic hedgehog"))
                                    ("downcase" "sfrp1" "UP:Q8N474"
                                     ("Sfrp1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10776" :NAME
                                      "secreted frizzled related protein 1"))
                                    ("orig" "SerpinB2" "UP:P05120"
                                     ("SerpinB2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8584" :NAME
                                      "serpin family B member 2"))
                                    ("orig" "SRSF2" "UP:Q01130"
                                     ("SRSF2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10783" :NAME
                                      "serine and arginine rich splicing factor 2"))
                                    ("orig" "SPATA2" "UP:Q9UM82"
                                     ("SPATA2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14681" :NAME
                                      "spermatogenesis associated 2"))
                                    ("orig" "SOD3" "UP:P08294"
                                     ("SOD3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11181" :NAME
                                      "superoxide dismutase 3, extracellular"))
                                    ("orig" "SMG" "UP:Q9UPU9"
                                     ("SMG" "ONT:GENE-PROTEIN" :ID "HGNC:23023"
                                      :NAME
                                      "sterile alpha motif domain containing 4A"))
                                    ("orig" "SMARCE1" "UP:Q969G3"
                                     ("SMARCE1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11109" :NAME
                                      "SWI/SNF related, matrix associated, actin dependent regulator of chromatin, subfamily e, member 1"))
                                    ("downcase" "ski" "UP:P12755"
                                     ("SKI" "ONT:GENE-PROTEIN" :ID "HGNC:10896"
                                      :NAME "SKI proto-oncogene"))
                                    ("orig" "SCIMP" "UP:Q6UWF3"
                                     ("SCIMP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:33504" :NAME
                                      "SLP adaptor and CSK interacting membrane protein"))
                                    ("orig" "S100A8" "UP:P05109"
                                     ("S100A8" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10498" :NAME
                                      "S100 calcium binding protein A8"))
                                    ("orig" "S100A12" "UP:P80511"
                                     ("S100A12" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10489" :NAME
                                      "S100 calcium binding protein A12"))
                                    ("orig" "S100A11" "UP:P31949"
                                     ("S100A11" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10488" :NAME
                                      "S100 calcium binding protein A11"))
                                    ("downcase" "rom" "UP:Q03395"
                                     ("Rom" "ONT:GENE-PROTEIN" :ID "HGNC:10254"
                                      :NAME
                                      "retinal outer segment membrane protein 1"))
                                    ("orig" "RhoGDI2" "UP:P52566"
                                     ("RhoGDI2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:679" :NAME
                                      "Rho GDP dissociation inhibitor beta"))
                                    ("orig" "RalA" "UP:P11233"
                                     ("RalA" "ONT:GENE-PROTEIN" :ID "HGNC:9839"
                                      :NAME "RAS like proto-oncogene A"))
                                    ("orig" "dys" "UP:O95163"
                                     ("dys" "ONT:GENE" :ID "HGNC:5959" :NAME
                                      "inhibitor of kappa light polypeptide gene enhancer in B-cells, kinase complex-associated protein"))
                                    ("orig" "cfos" "UP:P01100"
                                     ("cfos" "ONT:GENE" :ID "HGNC:3796" :NAME
                                      "Fos proto-oncogene, AP-1 transcription factor subunit"))
                                    ("orig" "cJun" "UP:P05412"
                                     ("cJun" "ONT:GENE" :ID "HGNC:6204" :NAME
                                      "Jun proto-oncogene, AP-1 transcription factor subunit"))
                                    ("orig" "beta4" "UP:Q13509"
                                     ("beta4" "ONT:GENE" :ID "NCIT:C104243"
                                      :NAME "TUBB3"))
                                    ("downcase" "zeb-1" "UP:P37275"
                                     ("Zeb-1" "ONT:GENE" :ID "HGNC:11642" :NAME
                                      "zinc finger E-box binding homeobox 1"))
                                    ("orig" "ZRF1" "UP:Q99543"
                                     ("ZRF1" "ONT:GENE" :ID "HGNC:13192" :NAME
                                      "DnaJ heat shock protein family (Hsp40) member C2"))
                                    ("orig" "WNK3" "UP:Q9BYP7"
                                     ("WNK3" "ONT:GENE" :ID "HGNC:14543" :NAME
                                      "WNK lysine deficient protein kinase 3"))
                                    ("orig" "WDR20" "UP:Q8TBZ3"
                                     ("WDR20" "ONT:GENE" :ID "HGNC:19667" :NAME
                                      "WD repeat domain 20"))
                                    ("orig" "USP46" "UP:P62068"
                                     ("USP46" "ONT:GENE" :ID "HGNC:20075" :NAME
                                      "ubiquitin specific peptidase 46"))
                                    ("orig" "USP45" "UP:Q70EL2"
                                     ("USP45" "ONT:GENE" :ID "HGNC:20080" :NAME
                                      "ubiquitin specific peptidase 45"))
                                    ("orig" "USP39" "UP:Q53GS9"
                                     ("USP39" "ONT:GENE" :ID "HGNC:20071" :NAME
                                      "ubiquitin specific peptidase 39"))
                                    ("downcase" "trib1" "UP:Q96RU8"
                                     ("Trib1" "ONT:GENE" :ID "HGNC:16891" :NAME
                                      "tribbles pseudokinase 1"))
                                    ("downcase" "tmp21" "UP:P49755"
                                     ("Tmp21" "ONT:GENE" :ID "HGNC:16998" :NAME
                                      "transmembrane p24 trafficking protein 10"))
                                    ("orig" "TUBB4B" "UP:P68371"
                                     ("TUBB4B" "ONT:GENE" :ID "HGNC:20771"
                                      :NAME "tubulin beta 4B class IVb"))
                                    ("orig" "TTM" "UP:Q96PX8"
                                     ("TTM" "ONT:GENE" :ID "NCIT:C90129" :NAME
                                      "SLITRK1"))
                                    ("orig" "TRIM11" "UP:Q96F44"
                                     ("TRIM11" "ONT:GENE" :ID "HGNC:16281"
                                      :NAME "tripartite motif containing 11"))
                                    ("orig" "TRAF5" "UP:O00463"
                                     ("TRAF5" "ONT:GENE" :ID "HGNC:12035" :NAME
                                      "TNF receptor associated factor 5"))
                                    ("orig" "TRAF3" "UP:Q13114"
                                     ("TRAF3" "ONT:GENE" :ID "HGNC:12033" :NAME
                                      "TNF receptor associated factor 3"))
                                    ("orig" "TNAP" "UP:P05186"
                                     ("TNAP" "ONT:GENE" :ID "NCIT:C104231"
                                      :NAME "ALPL"))
                                    ("orig" "TGR5" "UP:Q8TDU6"
                                     ("TGR5" "ONT:GENE" :ID "HGNC:19680" :NAME
                                      "G protein-coupled bile acid receptor 1"))
                                    ("orig" "TET1" "UP:Q8NFU7"
                                     ("TET1" "ONT:GENE" :ID "HGNC:29484" :NAME
                                      "tet methylcytosine dioxygenase 1"))
                                    ("orig" "TBX3" "UP:O15119"
                                     ("TBX3" "ONT:GENE" :ID "HGNC:11602" :NAME
                                      "T-box 3"))
                                    ("orig" "TBLR1" "UP:Q9BZK7"
                                     ("TBLR1" "ONT:GENE" :ID "NCIT:C80117"
                                      :NAME "TBL1XR1"))
                                    ("orig" "TBL1" "UP:Q9BQ87"
                                     ("TBL1" "ONT:GENE" :ID "HGNC:18502" :NAME
                                      "transducin beta like 1, Y-linked"))
                                    ("orig" "TAX1BP1" "UP:Q86VP1"
                                     ("TAX1BP1" "ONT:GENE" :ID "HGNC:11575"
                                      :NAME "Tax1 binding protein 1"))
                                    ("downcase" "stab2" "UP:Q8WWQ8"
                                     ("Stab2" "ONT:GENE" :ID "HGNC:18629" :NAME
                                      "stabilin 2"))
                                    ("downcase" "snf2" "UP:P51531"
                                     ("Snf2" "ONT:GENE" :ID "HGNC:11098" :NAME
                                      "SWI/SNF related, matrix associated, actin dependent regulator of chromatin, subfamily a, member 2"))
                                    ("orig" "SYP" "UP:P08247"
                                     ("SYP" "ONT:GENE" :ID "HGNC:11506" :NAME
                                      "synaptophysin"))
                                    ("orig" "SWI" "UP:Q9W568"
                                     ("SWI" "ONT:GENE" :ID "HGNC:11097" :NAME
                                      "SWI/SNF related, matrix associated, actin dependent regulator of chromatin, subfamily a, member 1"))
                                    ("orig" "ST7L" "UP:Q8TDW4"
                                     ("ST7L" "ONT:GENE" :ID "HGNC:18441" :NAME
                                      "suppression of tumorigenicity 7 like"))
                                    ("orig" "SOX21" "UP:Q9Y651"
                                     ("SOX21" "ONT:GENE" :ID "HGNC:11197" :NAME
                                      "SRY-box 21"))
                                    ("orig" "SNL" "UP:Q16658"
                                     ("SNL" "ONT:GENE" :ID "NCIT:C101606" :NAME
                                      "FSCN1"))
                                    ("orig" "SIRT2" "UP:Q8IXJ6"
                                     ("SIRT2" "ONT:GENE" :ID "HGNC:10886" :NAME
                                      "sirtuin 2"))
                                    ("orig" "SH3P2" "UP:Q92882"
                                     ("SH3P2" "ONT:GENE" :ID "HGNC:8510" :NAME
                                      "osteoclast stimulating factor 1"))
                                    ("orig" "SGLT2" "UP:P31639"
                                     ("SGLT2" "ONT:GENE" :ID "NCIT:C119005"
                                      :NAME "SLC5A2"))
                                    ("orig" "SGLT1" "UP:P13866"
                                     ("SGLT1" "ONT:GENE" :ID "NCIT:C77166"
                                      :NAME "SLC5A1"))
                                    ("orig" "SCG10" "UP:Q93045"
                                     ("SCG10" "ONT:GENE" :ID "HGNC:10577" :NAME
                                      "stathmin 2"))
                                    ("downcase" "s1pr2" "UP:O95136"
                                     ("S1pr2" "ONT:GENE" :ID "HGNC:3169" :NAME
                                      "sphingosine-1-phosphate receptor 2"))
                                    ("downcase" "s100beta" "UP:P04271"
                                     ("S100beta" "ONT:GENE" :ID "NCIT:C98128"
                                      :NAME "S100B"))
                                    ("orig" "S100A16" "UP:Q96FQ6"
                                     ("S100A16" "ONT:GENE" :ID "HGNC:20441"
                                      :NAME
                                      "S100 calcium binding protein A16"))
                                    ("orig" "RhoE" "UP:P61587"
                                     ("RhoE" "ONT:GENE" :ID "HGNC:671" :NAME
                                      "Rho family GTPase 3"))
                                    ("orig" "RegIV" "UP:Q9BYZ8"
                                     ("RegIV" "ONT:GENE" :ID "HGNC:22977" :NAME
                                      "regenerating family member 4"))
                                    ("orig" "NF-kb" "UP:P19838"
                                     ("NF-kb" "ONT:PROTEIN" :ID "NCIT:C17380"
                                      :NAME "NF-kB"))
                                    ("orig" "IPI" "UP:P39804"
                                     ("IPI" "ONT:PROTEIN" :ID "UP:P03718" :NAME
                                      "Internal protein I"))
                                    ("orig" "IL-12p40" "UP:Q9T1T6"
                                     ("IL-12p40" "ONT:PROTEIN" :ID
                                      "NCIT:C28509" :NAME "interleukin-12B"))
                                    ("orig" "HIF-2alpha" "UP:Q99814"
                                     ("HIF-2alpha" "ONT:PROTEIN" :ID
                                      "NCIT:C104306" :NAME
                                      "endothelial PAS domain-containing protein 1"))
                                    ("orig" "RPE" "UP:Q96AT9"
                                     ("RPE" "ONT:GENE-PROTEIN" :ID "HGNC:10293"
                                      :NAME
                                      "ribulose-5-phosphate-3-epimerase"))
                                    ("orig" "RIPK3" "UP:Q9Y572"
                                     ("RIPK3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10021" :NAME
                                      "receptor interacting serine/threonine kinase 3"))
                                    ("orig" "RIPK1" "UP:Q13546"
                                     ("RIPK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10019" :NAME
                                      "receptor interacting serine/threonine kinase 1"))
                                    ("orig" "RIP3" "UP:Q6WCQ1"
                                     ("RIP3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C29873" :NAME
                                      "receptor-interacting serine-threonine protein kinase-3"))
                                    ("orig" "RIP1" "UP:Q13546"
                                     ("RIP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17923" :NAME
                                      "receptor-interacting serine-threonine kinase-1"))
                                    ("orig" "RB3" "UP:Q9H169"
                                     ("RB3" "ONT:GENE-PROTEIN" :ID "HGNC:16078"
                                      :NAME "stathmin 4"))
                                    ("orig" "RANBP2" "UP:P49792"
                                     ("RANBP2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9848" :NAME
                                      "RAN binding protein 2"))
                                    ("orig" "RAD51" "UP:Q06609"
                                     ("RAD51" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9817" :NAME "RAD51 recombinase"))
                                    ("downcase" "psip1" "UP:O75475"
                                     ("Psip1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9527" :NAME
                                      "PC4 and SFRS1 interacting protein 1"))
                                    ("orig" "PhIP" "UP:Q8WWQ0"
                                     ("PhIP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:15673" :NAME
                                      "pleckstrin homology domain interacting protein"))
                                    ("downcase" "pgp" "UP:A6NDG6"
                                     ("Pgp" "ONT:GENE-PROTEIN" :ID "HGNC:8909"
                                      :NAME "phosphoglycolate phosphatase"))
                                    ("downcase" "per1" "UP:O15534"
                                     ("Per1" "ONT:GENE-PROTEIN" :ID "HGNC:8845"
                                      :NAME "period circadian clock 1"))
                                    ("downcase" "pdx1" "UP:P52945"
                                     ("Pdx1" "ONT:GENE-PROTEIN" :ID "HGNC:6107"
                                      :NAME
                                      "pancreatic and duodenal homeobox 1"))
                                    ("downcase" "pax5" "UP:Q02548"
                                     ("Pax5" "ONT:GENE-PROTEIN" :ID "HGNC:8619"
                                      :NAME "paired box 5"))
                                    ("downcase" "pax2" "UP:Q02962"
                                     ("Pax2" "ONT:GENE-PROTEIN" :ID "HGNC:8616"
                                      :NAME "paired box 2"))
                                    ("orig" "PTPRT" "UP:O14522"
                                     ("PTPRT" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9682" :NAME
                                      "protein tyrosine phosphatase, receptor type T"))
                                    ("orig" "PTPRR" "UP:Q15256"
                                     ("PTPRR" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9680" :NAME
                                      "protein tyrosine phosphatase, receptor type R"))
                                    ("orig" "PTH" "UP:P01270"
                                     ("PTH" "ONT:GENE-PROTEIN" :ID "HGNC:9606"
                                      :NAME "parathyroid hormone"))
                                    ("orig" "PRLRs" "UP:P16471"
                                     ("PRLRs" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9446" :NAME "prolactin receptor"))
                                    ("orig" "PRLR" "UP:P16471"
                                     ("PRLR" "ONT:GENE-PROTEIN" :ID "HGNC:9446"
                                      :NAME "prolactin receptor"))
                                    ("orig" "PP2Calpha" "UP:P35813"
                                     ("PP2Calpha" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9275" :NAME
                                      "protein phosphatase, Mg2+/Mn2+ dependent 1A"))
                                    ("orig" "PP13" "UP:Q9UHV8"
                                     ("PP13" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C101557" :NAME
                                      "galactoside-binding soluble lectin 13"))
                                    ("orig" "PODXL" "UP:O00592"
                                     ("PODXL" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9171" :NAME "podocalyxin like"))
                                    ("orig" "PML" "UP:P29590"
                                     ("PML" "ONT:GENE-PROTEIN" :ID "HGNC:9113"
                                      :NAME "promyelocytic leukemia"))
                                    ("orig" "PGC1alpha" "UP:Q9UBK2"
                                     ("PGC1alpha" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q865B7" :NAME
                                      "Peroxisome proliferator-activated receptor gamma coactivator 1-alpha"))
                                    ("orig" "PGC" "UP:P20142"
                                     ("PGC" "ONT:GENE-PROTEIN" :ID "HGNC:8890"
                                      :NAME "progastricsin"))
                                    ("orig" "PDCD5" "UP:O14737"
                                     ("PDCD5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8764" :NAME
                                      "programmed cell death 5"))
                                    ("orig" "PARG" "UP:Q86W56"
                                     ("PARG" "ONT:GENE-PROTEIN" :ID "HGNC:8605"
                                      :NAME "poly(ADP-ribose) glycohydrolase"))
                                    ("orig" "PAM" "UP:P19021"
                                     ("PAM" "ONT:GENE-PROTEIN" :ID "HGNC:8596"
                                      :NAME
                                      "peptidylglycine alpha-amidating monooxygenase"))
                                    ("downcase" "p450c17" "UP:P05093"
                                     ("P450c17" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52321" :NAME "CYP17A1"))
                                    ("downcase" "oxt" "UP:P01178"
                                     ("Oxt" "ONT:GENE-PROTEIN" :ID "HGNC:8528"
                                      :NAME
                                      "oxytocin/neurophysin I prepropeptide"))
                                    ("downcase" "orai1" "UP:Q96D31"
                                     ("Orai1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:25896" :NAME
                                      "ORAI calcium release-activated calcium modulator 1"))
                                    ("downcase" "ocstamp" "UP:Q9BR26"
                                     ("Ocstamp" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16116" :NAME
                                      "osteoclast stimulatory transmembrane protein"))
                                    ("orig" "ObR" "UP:P48357"
                                     ("ObR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51373" :NAME "LEPR"))
                                    ("orig" "OGT" "UP:O15294"
                                     ("OGT" "ONT:GENE-PROTEIN" :ID "HGNC:8127"
                                      :NAME
                                      "O-linked N-acetylglucosamine (GlcNAc) transferase"))
                                    ("orig" "OCT4" "UP:Q01860"
                                     ("OCT4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C61141" :NAME "POU5F1"))
                                    ("downcase" "nup153" "UP:P49790"
                                     ("Nup153" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8062" :NAME "nucleoporin 153"))
                                    ("orig" "NKB" "UP:Q9UHF0"
                                     ("NKB" "ONT:GENE-PROTEIN" :ID "UP:P67935"
                                      :NAME "Neurokinin-B"))
                                    ("orig" "NK3R" "UP:P29371"
                                     ("NK3R" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C30057" :NAME
                                      "tachykinin receptor-3"))
                                    ("downcase" "mnk2" "UP:Q9HBH9"
                                     ("Mnk2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C91866" :NAME
                                      "MAP kinase-interacting serine-threonine-protein kinase 2"))
                                    ("downcase" "mki67" "UP:P46013"
                                     ("Mki67" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7107" :NAME
                                      "marker of proliferation Ki-67"))
                                    ("upcase" "MBP" "UP:P02686"
                                     ("Mbp" "ONT:GENE-PROTEIN" :ID "HGNC:6925"
                                      :NAME "myelin basic protein"))
                                    ("orig" "MTDH" "UP:Q86UE4"
                                     ("MTDH" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:29608" :NAME "metadherin"))
                                    ("orig" "MSH6" "UP:P52701"
                                     ("MSH6" "ONT:GENE-PROTEIN" :ID "HGNC:7329"
                                      :NAME "mutS homolog 6"))
                                    ("orig" "MSC" "UP:O60682"
                                     ("MSC" "ONT:GENE-PROTEIN" :ID "HGNC:7321"
                                      :NAME "musculin"))
                                    ("orig" "MRP3" "UP:O15438"
                                     ("MRP3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C106022" :NAME "ABCC3"))
                                    ("orig" "MLL" "UP:Q03164"
                                     ("MLL" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C53066" :NAME "MLL"))
                                    ("orig" "MLC2" "UP:P24844"
                                     ("MLC2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:15754" :NAME
                                      "myosin light chain 9"))
                                    ("orig" "MKP1" "UP:P28562"
                                     ("MKP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C29568" :NAME
                                      "dual specificity phosphatase-1"))
                                    ("orig" "MKP-2" "UP:Q13115"
                                     ("MKP-2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C112129" :NAME
                                      "dual specificity protein phosphatase 4"))
                                    ("orig" "MGMT" "UP:P16455"
                                     ("MGMT" "ONT:GENE-PROTEIN" :ID "HGNC:7059"
                                      :NAME
                                      "O-6-methylguanine-DNA methyltransferase"))
                                    ("orig" "MGL" "UP:Q99685"
                                     ("MGL" "ONT:GENE-PROTEIN" :ID "UP:O35678"
                                      :NAME
                                      "Monoglyceride lipase {ECO:0000312MGI:MGI:1346042}"))
                                    ("orig" "MEN1" "UP:O00255"
                                     ("MEN1" "ONT:GENE-PROTEIN" :ID "HGNC:7010"
                                      :NAME "menin 1"))
                                    ("orig" "MELK" "UP:Q14680"
                                     ("MELK" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16870" :NAME
                                      "maternal embryonic leucine zipper kinase"))
                                    ("orig" "MEIS1" "UP:O00470"
                                     ("MEIS1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7000" :NAME "Meis homeobox 1"))
                                    ("orig" "MED27" "UP:Q6P2C8"
                                     ("MED27" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2377" :NAME
                                      "mediator complex subunit 27"))
                                    ("orig" "MCP1" "UP:P13500"
                                     ("MCP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49745" :NAME "CCL2"))
                                    ("orig" "MCC" "UP:P23508"
                                     ("MCC" "ONT:GENE-PROTEIN" :ID "HGNC:6935"
                                      :NAME "mutated in colorectal cancers"))
                                    ("orig" "MC1R" "UP:Q01726"
                                     ("MC1R" "ONT:GENE-PROTEIN" :ID "HGNC:6929"
                                      :NAME "melanocortin 1 receptor"))
                                    ("orig" "MAFG" "UP:O15525"
                                     ("MAFG" "ONT:GENE-PROTEIN" :ID "HGNC:6781"
                                      :NAME "MAF bZIP transcription factor G"))
                                    ("orig" "LRP6" "UP:O75581"
                                     ("LRP6" "ONT:GENE-PROTEIN" :ID "HGNC:6698"
                                      :NAME "LDL receptor related protein 6"))
                                    ("orig" "LRP5" "UP:O75197"
                                     ("LRP5" "ONT:GENE-PROTEIN" :ID "HGNC:6697"
                                      :NAME "LDL receptor related protein 5"))
                                    ("orig" "LRP1" "UP:Q07954"
                                     ("LRP1" "ONT:GENE-PROTEIN" :ID "HGNC:6692"
                                      :NAME "LDL receptor related protein 1"))
                                    ("orig" "LPCAT1" "UP:Q8NF37"
                                     ("LPCAT1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:25718" :NAME
                                      "lysophosphatidylcholine acyltransferase 1"))
                                    ("orig" "LEF1" "UP:Q9UJU2"
                                     ("LEF1" "ONT:GENE-PROTEIN" :ID "HGNC:6551"
                                      :NAME
                                      "lymphoid enhancer binding factor 1"))
                                    ("orig" "LC-3" "UP:P82160"
                                     ("LC-3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104677" :NAME
                                      "microtubule-associated proteins 1A-1B light chain 3"))
                                    ("downcase" "klotho" "UP:Q9UEF7"
                                     ("Klotho" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6344" :NAME "klotho"))
                                    ("orig" "IVD" "UP:P26440"
                                     ("IVD" "ONT:GENE-PROTEIN" :ID "HGNC:6186"
                                      :NAME "isovaleryl-CoA dehydrogenase"))
                                    ("orig" "IRF7" "UP:Q92985"
                                     ("IRF7" "ONT:GENE-PROTEIN" :ID "HGNC:6122"
                                      :NAME "interferon regulatory factor 7"))
                                    ("orig" "IRF6" "UP:O14896"
                                     ("IRF6" "ONT:GENE-PROTEIN" :ID "HGNC:6121"
                                      :NAME "interferon regulatory factor 6"))
                                    ("orig" "IRF4" "UP:Q15306"
                                     ("IRF4" "ONT:GENE-PROTEIN" :ID "HGNC:6119"
                                      :NAME "interferon regulatory factor 4"))
                                    ("orig" "IRF3" "UP:Q14653"
                                     ("IRF3" "ONT:GENE-PROTEIN" :ID "HGNC:6118"
                                      :NAME "interferon regulatory factor 3"))
                                    ("orig" "IRF2" "UP:P14316"
                                     ("IRF2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52130" :NAME "IRF2"))
                                    ("orig" "IRF1" "UP:P10914"
                                     ("IRF1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52129" :NAME "IRF1"))
                                    ("orig" "IRAK4" "UP:Q9NWZ3"
                                     ("IRAK4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:17967" :NAME
                                      "interleukin 1 receptor associated kinase 4"))
                                    ("orig" "IMP3" "UP:Q9NV31"
                                     ("IMP3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14497" :NAME
                                      "IMP3, U3 small nucleolar ribonucleoprotein"))
                                    ("orig" "IL7R" "UP:P16871"
                                     ("IL7R" "ONT:GENE-PROTEIN" :ID "HGNC:6024"
                                      :NAME "interleukin 7 receptor"))
                                    ("orig" "IL1beta" "UP:P01584"
                                     ("IL1beta" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20522" :NAME
                                      "interleukin-1-beta"))
                                    ("orig" "IL1R1" "UP:P14778"
                                     ("IL1R1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5993" :NAME
                                      "interleukin 1 receptor type 1"))
                                    ("orig" "IL-27R" "UP:Q6UWB1"
                                     ("IL-27R" "ONT:GENE-PROTEIN" :ID
                                      "GO:0045509" :NAME
                                      "interleukin-27 receptor activity"))
                                    ("orig" "IKBKE" "UP:Q14164"
                                     ("IKBKE" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14552" :NAME
                                      "inhibitor of kappa light polypeptide gene enhancer in B-cells, kinase epsilon"))
                                    ("orig" "IDH2" "UP:P48735"
                                     ("IDH2" "ONT:GENE-PROTEIN" :ID "HGNC:5383"
                                      :NAME
                                      "isocitrate dehydrogenase (NADP(+)) 2, mitochondrial"))
                                    ("orig" "IDH1" "UP:O75874"
                                     ("IDH1" "ONT:GENE-PROTEIN" :ID "HGNC:5382"
                                      :NAME
                                      "isocitrate dehydrogenase (NADP(+)) 1, cytosolic"))
                                    ("downcase" "hur" "UP:Q15717"
                                     ("Hur" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C107476" :NAME "ELAVL1"))
                                    ("downcase" "homer1" "UP:Q86YM7"
                                     ("Homer1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q2KJ56" :NAME
                                      "Homer protein homolog 1"))
                                    ("orig" "HPSE" "UP:Q9Y251"
                                     ("HPSE" "ONT:GENE-PROTEIN" :ID "HGNC:5164"
                                      :NAME "heparanase"))
                                    ("orig" "HPR" "UP:P00739"
                                     ("HPR" "ONT:GENE-PROTEIN" :ID "HGNC:5156"
                                      :NAME "haptoglobin-related protein"))
                                    ("orig" "HOXD3" "UP:P31249"
                                     ("HOXD3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5137" :NAME "homeobox D3"))
                                    ("orig" "HLA" "NCIT:C121977"
                                     ("HLA" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20705" :NAME
                                      "MHC class-II protein"))
                                    ("orig" "HK2" "UP:P52789"
                                     ("HK2" "ONT:GENE-PROTEIN" :ID "HGNC:4923"
                                      :NAME "hexokinase 2"))
                                    ("orig" "HK-2" "UP:P52789"
                                     ("HK-2" "ONT:GENE-PROTEIN" :ID "HGNC:4923"
                                      :NAME "hexokinase 2"))
                                    ("orig" "HIF-1a" "UP:Q16665"
                                     ("HIF-1a" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52040" :NAME "HIF1A"))
                                    ("orig" "RXFP3" "UP:Q9NSD7"
                                     ("RXFP3" "ONT:GENE" :ID "HGNC:24883" :NAME
                                      "relaxin/insulin like family peptide receptor 3"))
                                    ("orig" "RXFP1" "UP:Q9HBX9"
                                     ("RXFP1" "ONT:GENE" :ID "HGNC:19718" :NAME
                                      "relaxin/insulin like family peptide receptor 1"))
                                    ("orig" "RUSC2" "UP:Q8N2Y8"
                                     ("RUSC2" "ONT:GENE" :ID "HGNC:23625" :NAME
                                      "RUN and SH3 domain containing 2"))
                                    ("orig" "RUNX3" "UP:Q13761"
                                     ("RUNX3" "ONT:GENE" :ID "HGNC:10473" :NAME
                                      "runt related transcription factor 3"))
                                    ("orig" "RPL4" "UP:P36578"
                                     ("RPL4" "ONT:GENE" :ID "HGNC:10353" :NAME
                                      "ribosomal protein L4"))
                                    ("orig" "RPL23" "UP:P62829"
                                     ("RPL23" "ONT:GENE" :ID "HGNC:10316" :NAME
                                      "ribosomal protein L23"))
                                    ("orig" "RPL11" "UP:P62913"
                                     ("RPL11" "ONT:GENE" :ID "HGNC:10301" :NAME
                                      "ribosomal protein L11"))
                                    ("orig" "RPEL1" "UP:Q2QD12"
                                     ("RPEL1" "ONT:GENE" :ID "HGNC:45241" :NAME
                                      "ribulose-5-phosphate-3-epimerase like 1"))
                                    ("orig" "RNF41" "UP:Q9H4P4"
                                     ("RNF41" "ONT:GENE" :ID "HGNC:18401" :NAME
                                      "ring finger protein 41"))
                                    ("orig" "RNF26" "UP:Q9BY78"
                                     ("RNF26" "ONT:GENE" :ID "HGNC:14646" :NAME
                                      "ring finger protein 26"))
                                    ("orig" "RNF126" "UP:Q9BV68"
                                     ("RNF126" "ONT:GENE" :ID "HGNC:21151"
                                      :NAME "ring finger protein 126"))
                                    ("orig" "RIPK4" "UP:P57078"
                                     ("RIPK4" "ONT:GENE" :ID "HGNC:496" :NAME
                                      "receptor interacting serine/threonine kinase 4"))
                                    ("orig" "RHBDL4" "UP:P58872"
                                     ("RHBDL4" "ONT:GENE" :ID "HGNC:16502"
                                      :NAME "rhomboid like 3"))
                                    ("orig" "RHAMM" "UP:O75330"
                                     ("RHAMM" "ONT:GENE" :ID "NCIT:C51553"
                                      :NAME "HMMR"))
                                    ("orig" "RGMb" "UP:Q6NW40"
                                     ("RGMb" "ONT:GENE" :ID "HGNC:26896" :NAME
                                      "repulsive guidance molecule family member b"))
                                    ("orig" "RBQ3" "UP:Q15291"
                                     ("RBQ3" "ONT:GENE" :ID "HGNC:9888" :NAME
                                      "RB binding protein 5, histone lysine methyltransferase complex subunit"))
                                    ("orig" "RBM10" "UP:P98175"
                                     ("RBM10" "ONT:GENE" :ID "HGNC:9896" :NAME
                                      "RNA binding motif protein 10"))
                                    ("orig" "RASSF1A" "UP:Q9NS23"
                                     ("RASSF1A" "ONT:GENE" :ID "NCIT:C60666"
                                      :NAME "RASSF1"))
                                    ("downcase" "prdm14" "UP:Q9GZV8"
                                     ("Prdm14" "ONT:GENE" :ID "HGNC:14001"
                                      :NAME "PR/SET domain 14"))
                                    ("downcase" "perp" "UP:Q96FX8"
                                     ("Perp" "ONT:GENE" :ID "HGNC:17637" :NAME
                                      "PERP, TP53 apoptosis effector"))
                                    ("downcase" "per2" "UP:O15055"
                                     ("Per2" "ONT:GENE" :ID "HGNC:8846" :NAME
                                      "period circadian clock 2"))
                                    ("upcase" "PDE" "UP:P49419"
                                     ("Pde" "ONT:GENE" :ID "HGNC:877" :NAME
                                      "aldehyde dehydrogenase 7 family member A1"))
                                    ("orig" "PTPsigma" "UP:Q13332"
                                     ("PTPsigma" "ONT:GENE" :ID "NCIT:C124924"
                                      :NAME "PTPRS"))
                                    ("orig" "PTHLH" "UP:P12272"
                                     ("PTHLH" "ONT:GENE" :ID "HGNC:9607" :NAME
                                      "parathyroid hormone like hormone"))
                                    ("orig" "PSGR" "UP:Q9H255"
                                     ("PSGR" "ONT:GENE" :ID "HGNC:15195" :NAME
                                      "olfactory receptor family 51 subfamily E member 2"))
                                    ("orig" "PSAT1" "UP:Q9Y617"
                                     ("PSAT1" "ONT:GENE" :ID "HGNC:19129" :NAME
                                      "phosphoserine aminotransferase 1"))
                                    ("orig" "PRPF19" "UP:Q9UMS4"
                                     ("PRPF19" "ONT:GENE" :ID "HGNC:17896"
                                      :NAME "pre-mRNA processing factor 19"))
                                    ("orig" "PRAT" "UP:Q06203"
                                     ("PRAT" "ONT:GENE" :ID "HGNC:9238" :NAME
                                      "phosphoribosyl pyrophosphate amidotransferase"))
                                    ("orig" "PLIN" "UP:O60240"
                                     ("PLIN" "ONT:GENE" :ID "HGNC:9076" :NAME
                                      "perilipin 1"))
                                    ("orig" "PINK1" "UP:Q9BXM7"
                                     ("PINK1" "ONT:GENE" :ID "HGNC:14581" :NAME
                                      "PTEN induced putative kinase 1"))
                                    ("orig" "PFD" "UP:P27918"
                                     ("PFD" "ONT:GENE" :ID "NCIT:C118198" :NAME
                                      "CFP"))
                                    ("orig" "PDK3" "UP:Q15120"
                                     ("PDK3" "ONT:GENE" :ID "HGNC:8811" :NAME
                                      "pyruvate dehydrogenase kinase 3"))
                                    ("orig" "PDG" "UP:O43175"
                                     ("PDG" "ONT:GENE" :ID "NCIT:C99475" :NAME
                                      "PHGDH"))
                                    ("orig" "PDE5A" "UP:O76074"
                                     ("PDE5A" "ONT:GENE" :ID "HGNC:8784" :NAME
                                      "phosphodiesterase 5A"))
                                    ("orig" "PCL" "UP:P35916"
                                     ("PCL" "ONT:GENE" :ID "NCIT:C51547" :NAME
                                      "FLT4"))
                                    ("orig" "PBS" "UP:Q7Z859"
                                     ("PBS" "ONT:GENE" :ID "NCIT:C122728" :NAME
                                      "TSPO"))
                                    ("orig" "PAX6" "UP:P26367"
                                     ("PAX6" "ONT:GENE" :ID "HGNC:8620" :NAME
                                      "paired box 6"))
                                    ("orig" "PARK2" "UP:O60260"
                                     ("PARK2" "ONT:GENE" :ID "HGNC:8607" :NAME
                                      "parkin RBR E3 ubiquitin protein ligase"))
                                    ("orig" "PAQR3" "UP:Q6TCH7"
                                     ("PAQR3" "ONT:GENE" :ID "HGNC:30130" :NAME
                                      "progestin and adipoQ receptor family member 3"))
                                    ("downcase" "p450scc" "UP:P05108"
                                     ("P450scc" "ONT:GENE" :ID "NCIT:C52318"
                                      :NAME "CYP11A1"))
                                    ("downcase" "otx2" "UP:P32243"
                                     ("Otx2" "ONT:GENE" :ID "HGNC:8522" :NAME
                                      "orthodenticle homeobox 2"))
                                    ("orig" "OSX" "UP:O15344"
                                     ("OSX" "ONT:GENE" :ID "NCIT:C75731" :NAME
                                      "MID1"))
                                    ("orig" "OR2AT4" "UP:A6NND4"
                                     ("OR2AT4" "ONT:GENE" :ID "HGNC:19620"
                                      :NAME
                                      "olfactory receptor family 2 subfamily AT member 4"))
                                    ("orig" "OR1A2" "UP:Q9Y585"
                                     ("OR1A2" "ONT:GENE" :ID "HGNC:8180" :NAME
                                      "olfactory receptor family 1 subfamily A member 2"))
                                    ("orig" "OAS1" "UP:P00973"
                                     ("OAS1" "ONT:GENE" :ID "HGNC:8086" :NAME
                                      "2'-5'-oligoadenylate synthetase 1"))
                                    ("downcase" "nox-4" "UP:Q9NPH5"
                                     ("Nox-4" "ONT:GENE" :ID "HGNC:7891" :NAME
                                      "NADPH oxidase 4"))
                                    ("downcase" "nit1" "UP:Q86X76"
                                     ("Nit1" "ONT:GENE" :ID "HGNC:7828" :NAME
                                      "nitrilase 1"))
                                    ("downcase" "ndrg4" "UP:Q9ULP0"
                                     ("Ndrg4" "ONT:GENE" :ID "HGNC:14466" :NAME
                                      "NDRG family member 4"))
                                    ("orig" "NTS" "UP:P30990"
                                     ("NTS" "ONT:GENE" :ID "HGNC:8038" :NAME
                                      "neurotensin"))
                                    ("orig" "NRP2" "UP:O60462"
                                     ("NRP2" "ONT:GENE" :ID "HGNC:8005" :NAME
                                      "neuropilin 2"))
                                    ("orig" "NRF" "UP:O15226"
                                     ("NRF" "ONT:GENE" :ID "HGNC:19374" :NAME
                                      "NFKB repressing factor"))
                                    ("orig" "NOK" "UP:Q6J9G0"
                                     ("NOK" "ONT:GENE" :ID "HGNC:18889" :NAME
                                      "serine/threonine/tyrosine kinase 1"))
                                    ("orig" "NNMT" "UP:P40261"
                                     ("NNMT" "ONT:GENE" :ID "HGNC:7861" :NAME
                                      "nicotinamide N-methyltransferase"))
                                    ("orig" "NLRC4" "UP:Q9NPP4"
                                     ("NLRC4" "ONT:GENE" :ID "HGNC:16412" :NAME
                                      "NLR family CARD domain containing 4"))
                                    ("orig" "NKG2A" "UP:P26715"
                                     ("NKG2A" "ONT:GENE" :ID "NCIT:C104363"
                                      :NAME "KLRC1"))
                                    ("orig" "NES1" "UP:O43240"
                                     ("NES1" "ONT:GENE" :ID "NCIT:C97207" :NAME
                                      "KLK10"))
                                    ("orig" "NDP52" "UP:Q13137"
                                     ("NDP52" "ONT:GENE" :ID "HGNC:29912" :NAME
                                      "calcium binding and coiled-coil domain 2"))
                                    ("downcase" "n-cad" "UP:P19022"
                                     ("N-cad" "ONT:GENE" :ID "NCIT:C77158"
                                      :NAME "CDH2"))
                                    ("downcase" "mpz" "UP:P25189"
                                     ("Mpz" "ONT:GENE" :ID "HGNC:7225" :NAME
                                      "myelin protein zero"))
                                    ("downcase" "mincle" "UP:Q9ULY5"
                                     ("Mincle" "ONT:GENE" :ID "HGNC:14555"
                                      :NAME
                                      "C-type lectin domain family 4 member E"))
                                    ("downcase" "malat1" "UP:Q9UHZ2"
                                     ("Malat1" "ONT:GENE" :ID "NCIT:C92697"
                                      :NAME "MALAT1"))
                                    ("orig" "MVD" "UP:P53602"
                                     ("MVD" "ONT:GENE" :ID "HGNC:7529" :NAME
                                      "mevalonate diphosphate decarboxylase"))
                                    ("orig" "MDMs" "UP:P55000"
                                     ("MDMs" "ONT:GENE" :ID "HGNC:18746" :NAME
                                      "secreted LY6/PLAUR domain containing 1"))
                                    ("orig" "MAZ" "UP:P56270"
                                     ("MAZ" "ONT:GENE" :ID "HGNC:6914" :NAME
                                      "MYC associated zinc finger protein"))
                                    ("orig" "MARVELD1" "UP:Q9BSK0"
                                     ("MARVELD1" "ONT:GENE" :ID "HGNC:28674"
                                      :NAME "MARVEL domain containing 1"))
                                    ("downcase" "lypd6" "UP:Q86Y78"
                                     ("Lypd6" "ONT:GENE" :ID "HGNC:28751" :NAME
                                      "LY6/PLAUR domain containing 6"))
                                    ("downcase" "lim1" "UP:P48742"
                                     ("Lim1" "ONT:GENE" :ID "NCIT:C53010" :NAME
                                      "LHX1"))
                                    ("downcase" "lhcgr" "UP:P22888"
                                     ("Lhcgr" "ONT:GENE" :ID "HGNC:6585" :NAME
                                      "luteinizing hormone/choriogonadotropin receptor"))
                                    ("orig" "LPXN" "UP:O60711"
                                     ("LPXN" "ONT:GENE" :ID "HGNC:14061" :NAME
                                      "leupaxin"))
                                    ("orig" "LPC" "UP:Q16549"
                                     ("LPC" "ONT:GENE" :ID "NCIT:C97657" :NAME
                                      "PCSK7"))
                                    ("orig" "LMP7" "UP:P28062"
                                     ("LMP7" "ONT:GENE" :ID "NCIT:C112076"
                                      :NAME "PSMB8"))
                                    ("orig" "LMP2" "UP:P28065"
                                     ("LMP2" "ONT:GENE" :ID "NCIT:C73447" :NAME
                                      "PSMB9"))
                                    ("downcase" "kv4.2" "UP:Q9NZV8"
                                     ("Kv4.2" "ONT:GENE" :ID "HGNC:6238" :NAME
                                      "potassium voltage-gated channel subfamily D member 2"))
                                    ("downcase" "kv1.3" "UP:P22001"
                                     ("Kv1.3" "ONT:GENE" :ID "HGNC:6221" :NAME
                                      "potassium voltage-gated channel subfamily A member 3"))
                                    ("downcase" "kif13b" "UP:Q9NQT8"
                                     ("Kif13b" "ONT:GENE" :ID "HGNC:14405"
                                      :NAME "kinesin family member 13B"))
                                    ("orig" "KLK6" "UP:Q92876"
                                     ("KLK6" "ONT:GENE" :ID "HGNC:6367" :NAME
                                      "kallikrein related peptidase 6"))
                                    ("orig" "KLF8" "UP:O95600"
                                     ("KLF8" "ONT:GENE" :ID "HGNC:6351" :NAME
                                      "Kruppel like factor 8"))
                                    ("orig" "KIF26B" "UP:Q2KJY2"
                                     ("KIF26B" "ONT:GENE" :ID "HGNC:25484"
                                      :NAME "kinesin family member 26B"))
                                    ("orig" "KIF14" "UP:Q15058"
                                     ("KIF14" "ONT:GENE" :ID "HGNC:19181" :NAME
                                      "kinesin family member 14"))
                                    ("orig" "KIAA1522" "UP:Q9P206"
                                     ("KIAA1522" "ONT:GENE" :ID "HGNC:29301"
                                      :NAME "KIAA1522"))
                                    ("orig" "KDM2A" "UP:Q9Y2K7"
                                     ("KDM2A" "ONT:GENE" :ID "HGNC:13606" :NAME
                                      "lysine demethylase 2A"))
                                    ("orig" "JWA" "UP:O75915"
                                     ("JWA" "ONT:GENE" :ID "HGNC:16937" :NAME
                                      "ADP ribosylation factor like GTPase 6 interacting protein 5"))
                                    ("orig" "JMJD3" "UP:O15054"
                                     ("JMJD3" "ONT:GENE" :ID "NCIT:C80018"
                                      :NAME "JMJD3"))
                                    ("orig" "JAZ" "UP:Q9UL40"
                                     ("JAZ" "ONT:GENE" :ID "HGNC:16403" :NAME
                                      "zinc finger protein 346"))
                                    ("downcase" "id4" "UP:P47928"
                                     ("Id4" "ONT:GENE" :ID "HGNC:5363" :NAME
                                      "inhibitor of DNA binding 4, HLH protein"))
                                    ("downcase" "ibsp" "UP:P21815"
                                     ("Ibsp" "ONT:GENE" :ID "HGNC:5341" :NAME
                                      "integrin binding sialoprotein"))
                                    ("downcase" "iba-1" "UP:P55008"
                                     ("Iba-1" "ONT:GENE" :ID "HGNC:352" :NAME
                                      "allograft inflammatory factor 1"))
                                    ("orig" "ISCs" "UP:Q9Y697"
                                     ("ISCs" "ONT:GENE" :ID "HGNC:15910" :NAME
                                      "NFS1, cysteine desulfurase"))
                                    ("orig" "IL-32alpha" "UP:P24001"
                                     ("IL-32alpha" "ONT:GENE" :ID
                                      "NCIT:C127925" :NAME "IL32"))
                                    ("orig" "IDE" "UP:P14735"
                                     ("IDE" "ONT:GENE" :ID "HGNC:5381" :NAME
                                      "insulin degrading enzyme"))
                                    ("orig" "ID1" "UP:P41134"
                                     ("ID1" "ONT:GENE" :ID "HGNC:5360" :NAME
                                      "inhibitor of DNA binding 1, HLH protein"))
                                    ("orig" "HSP90beta" "UP:P08238"
                                     ("HSP90beta" "ONT:GENE" :ID "NCIT:C97590"
                                      :NAME "HSP90AB1"))
                                    ("orig" "HNE" "UP:P08246"
                                     ("HNE" "ONT:GENE" :ID "NCIT:C104196" :NAME
                                      "ELANE"))
                                    ("orig" "HLJ1" "UP:Q9UDY4"
                                     ("HLJ1" "ONT:GENE" :ID "NCIT:C62455" :NAME
                                      "DNAJB4"))
                                    ("orig" "HBx" "UP:Q64902"
                                     ("HBx" "ONT:PROTEIN" :ID "UP:P69714" :NAME
                                      "Protein X"))
                                    ("orig" "FcgammaRIIB" "UP:P31994"
                                     ("FcgammaRIIB" "ONT:PROTEIN" :ID
                                      "NCIT:C38555" :NAME
                                      "IgG-Fc-receptor-IIB"))
                                    ("orig" "BLA" "UP:P67920"
                                     ("BLA" "ONT:PROTEIN" :ID "UP:P06278" :NAME
                                      "Alpha-amylase"))
                                    ("orig" "BCAT" "UP:O67733"
                                     ("BCAT" "ONT:PROTEIN" :ID "UP:O14370"
                                      :NAME
                                      "Branched-chain-amino-acid aminotransferase, mitochondrial"))
                                    ("orig" "LAC" "UP:Q26474"
                                     ("LAC" "ONT:PROTEIN" :ID "NCIT:C70620"
                                      :NAME "lupus anticoagulant antibody"))
                                    ("orig" "IAP1" "UP:Q13489"
                                     ("IAP1" "ONT:PROTEIN" :ID "UP:P15693"
                                      :NAME
                                      "Intestinal-type alkaline phosphatase 1"))
                                    ("orig" "CD3-ε" "UP:P07766"
                                     ("CD3-ε" "ONT:PROTEIN" :ID "NCIT:C25792"
                                      :NAME
                                      "T-cell surface glycoprotein-CD3 epsilon chain"))
                                    ("orig" "smad3" "UP:P84022"
                                     ("smad3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6769" :NAME
                                      "SMAD family member 3"))
                                    ("orig" "p21Rac1" "UP:P63000"
                                     ("p21Rac1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C99664" :NAME "RAC1"))
                                    ("orig" "p120" "UP:Q00839"
                                     ("p120" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C79771" :NAME "CTNND1"))
                                    ("orig" "p110β" "UP:P42338"
                                     ("p110β" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51161" :NAME "PIK3CB"))
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
                                    ("downcase" "skp2" "UP:Q13309"
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
                                    ("orig" "PLC-γ2" "UP:P16885"
                                     ("PLC-γ2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49383" :NAME "PLCG2"))
                                    ("orig" "PBR" "UP:P30536"
                                     ("PBR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C122728" :NAME "TSPO"))
                                    ("orig" "PARP1" "UP:P09874"
                                     ("PARP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51001" :NAME "PARP1"))
                                    ("orig" "PAR1A" "UP:P27448"
                                     ("PAR1A" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6897" :NAME
                                      "microtubule affinity regulating kinase 3"))
                                    ("orig" "NRAS" "UP:P01111"
                                     ("NRAS" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52549" :NAME "NRAS"))
                                    ("orig" "NDRG2" "UP:Q9UN36"
                                     ("NDRG2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14460" :NAME
                                      "NDRG family member 2"))
                                    ("downcase" "n-myc" "UP:P04198"
                                     ("N-myc" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C53088" :NAME "NMYC"))
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
                                    ("orig" "LIFR" "UP:P42702"
                                     ("LIFR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51374" :NAME "LIFR"))
                                    ("orig" "LEPR" "UP:P48357"
                                     ("LEPR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51373" :NAME "LEPR"))
                                    ("orig" "IGFBP1" "UP:P08833"
                                     ("IGFBP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5469" :NAME
                                      "insulin like growth factor binding protein 1"))
                                    ("orig" "IER3" "UP:P46695"
                                     ("IER3" "ONT:GENE-PROTEIN" :ID "HGNC:5392"
                                      :NAME "immediate early response 3"))
                                    ("orig" "HIF1" "UP:Q9BYW2"
                                     ("HIF1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52040" :NAME "HIF1A"))
                                    ("orig" "HGFR" "UP:P08581"
                                     ("HGFR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18186" :NAME
                                      "hepatocyte growth factor receptor"))
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
                                    ("downcase" "graf" "UP:Q9UNA1"
                                     ("Graf" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97508" :NAME
                                      "rho GTPase-activating protein 26"))
                                    ("orig" "GPI" "UP:P06744"
                                     ("GPI" "ONT:GENE-PROTEIN" :ID "HGNC:4458"
                                      :NAME "glucose-6-phosphate isomerase"))
                                    ("orig" "FOXO1" "UP:Q12778"
                                     ("FOXO1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3819" :NAME "forkhead box O1"))
                                    ("orig" "FAT" "UP:Q14517"
                                     ("FAT" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51154" :NAME "FAT"))
                                    ("orig" "ERK7" "UP:Q8TD08"
                                     ("ERK7" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:24667" :NAME
                                      "mitogen-activated protein kinase 15"))
                                    ("downcase" "dbl" "UP:P10911"
                                     ("Dbl" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C18335" :NAME "oncogene DBL"))
                                    ("orig" "DDIT3" "UP:P35638"
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
                                    ("orig" "CFMs" "UP:P07333"
                                     ("CFMs" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17392" :NAME
                                      "colony stimulating factor-1 receptor"))
                                    ("orig" "CEBPE" "UP:Q15744"
                                     ("CEBPE" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1836" :NAME
                                      "CCAAT/enhancer binding protein epsilon"))
                                    ("orig" "CD24" "UP:P25063"
                                     ("CD24" "ONT:GENE-PROTEIN" :ID "HGNC:1645"
                                      :NAME "CD24 molecule"))
                                    ("orig" "BCL10" "UP:O95999"
                                     ("BCL10" "ONT:GENE-PROTEIN" :ID "HGNC:989"
                                      :NAME "B-cell CLL/lymphoma 10"))
                                    ("downcase" "ack1" "UP:Q07912"
                                     ("Ack1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51063" :NAME "ACK1"))
                                    ("orig" "AHR" "UP:P35869"
                                     ("AHR" "ONT:GENE-PROTEIN" :ID "HGNC:348"
                                      :NAME "aryl hydrocarbon receptor"))
                                    ("orig" "iASPP" "UP:Q8WUF5"
                                     ("iASPP" "ONT:GENE" :ID "NCIT:C95029"
                                      :NAME "PPP1R13L"))
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
                                    ("downcase" "sox17" "UP:Q9H6I2"
                                     ("Sox17" "ONT:GENE" :ID "NCIT:C114834"
                                      :NAME "SOX17"))
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
                                    ("upcase" "RHOU" "UP:Q7L0Q8"
                                     ("Rhou" "ONT:GENE" :ID "HGNC:17794" :NAME
                                      "ras homolog family member U"))
                                    ("orig" "RhoGDI" "UP:P52565"
                                     ("RhoGDI" "ONT:GENE" :ID "HGNC:678" :NAME
                                      "Rho GDP dissociation inhibitor alpha"))
                                    ("orig" "RLIP76" "UP:Q15311"
                                     ("RLIP76" "ONT:GENE" :ID "NCIT:C101287"
                                      :NAME "RALBP1"))
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
                                    ("orig" "PBRs" "UP:B1AH88"
                                     ("PBRs" "ONT:GENE" :ID "NCIT:C122728"
                                      :NAME "TSPO"))
                                    ("downcase" "nek2" "UP:P51955"
                                     ("Nek2" "ONT:GENE" :ID "HGNC:7745" :NAME
                                      "NIMA related kinase 2"))
                                    ("upcase" "NEDD4L" "UP:Q96PU5"
                                     ("Nedd4L" "ONT:GENE" :ID "HGNC:7728" :NAME
                                      "neural precursor cell expressed, developmentally down-regulated 4-like, E3 ubiquitin protein ligase"))
                                    ("orig" "NKRF" "UP:O15226"
                                     ("NKRF" "ONT:GENE" :ID "HGNC:19374" :NAME
                                      "NFKB repressing factor"))
                                    ("orig" "NISCH" "UP:Q9Y2I1"
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
                                    ("orig" "LIMK" "UP:P53667"
                                     ("LIMK" "ONT:GENE" :ID "NCIT:C51212" :NAME
                                      "LIMK1"))
                                    ("orig" "KLHL24" "UP:Q6TFL4"
                                     ("KLHL24" "ONT:GENE" :ID "HGNC:25947"
                                      :NAME "kelch like family member 24"))
                                    ("orig" "KIAA0323" "UP:O15037"
                                     ("KIAA0323" "ONT:GENE" :ID "HGNC:20166"
                                      :NAME "KH and NYN domain containing"))
                                    ("orig" "IMAC" "UP:Q9Y258"
                                     ("IMAC" "ONT:GENE" :ID "NCIT:C49743" :NAME
                                      "CCL26"))
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
                                    ("orig" "CFP" "UP:P27918"
                                     ("CFP" "ONT:GENE" :ID "HGNC:8864" :NAME
                                      "complement factor properdin"))
                                    ("orig" "CDK8" "UP:P49336"
                                     ("CDK8" "ONT:GENE" :ID "HGNC:1779" :NAME
                                      "cyclin dependent kinase 8"))
                                    ("orig" "CCNG2" "UP:Q16589"
                                     ("CCNG2" "ONT:GENE" :ID "HGNC:1593" :NAME
                                      "cyclin G2"))
                                    ("orig" "C/EBPβ" "UP:P17676"
                                     ("C/EBPβ" "ONT:GENE" :ID "NCIT:C104117"
                                      :NAME "CEBPB"))
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
                                    ("orig" "EML4" "UP:Q9HC35"
                                     ("EML4" "ONT:GENE-PROTEIN" :ID "HGNC:1316"
                                      :NAME
                                      "echinoderm microtubule associated protein like 4"))
                                    ("orig" "ELK1" "UP:P19419"
                                     ("ELK1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52540" :NAME "ELK1"))
                                    ("orig" "UCP" "UP:P25874"
                                     ("UCP" "ONT:GENE" :ID "NCIT:C112493" :NAME
                                      "UCP1"))
                                    ("orig" "MrgX1" "UP:Q96LB2"
                                     ("MrgX1" "ONT:GENE" :ID "HGNC:17962" :NAME
                                      "MAS related GPR family member X1"))
                                    ("orig" "C/EBPalpha" "UP:P49715"
                                     ("C/EBPalpha" "ONT:GENE" :ID "NCIT:C52525"
                                      :NAME "CEBPA"))
                                    ("orig" "neurofibromin" "UP:P21359"
                                     ("neurofibromin" "ONT:PROTEIN" :ID
                                      "UP:P35608" :NAME "Neurofibromin"))
                                    ("orig" "keratin1" "UP:P04264"
                                     ("keratin1" "ONT:PROTEIN" :ID
                                      "NCIT:C96456" :NAME
                                      "keratin type II cytoskeletal 1"))
                                    ("orig" "interleukin-1beta" "UP:P01584"
                                     ("interleukin-1beta" "ONT:PROTEIN" :ID
                                      "NCIT:C20522" :NAME
                                      "interleukin-1-beta"))
                                    ("orig" "gonadotropin" "UP:P01148"
                                     ("gonadotropin" "ONT:PROTEIN" :ID
                                      "NCIT:C2273" :NAME "gonadotropin"))
                                    ("orig" "alphaSMA" "UP:P02751"
                                     ("alphaSMA" "ONT:PROTEIN" :ID
                                      "NCIT:C103972" :NAME
                                      "actin aortic smooth muscle"))
                                    ("orig" "TbetaRII" "UP:P37173"
                                     ("TbetaRII" "ONT:PROTEIN" :ID
                                      "NCIT:C17341" :NAME
                                      "transforming growth factor beta receptor II"))
                                    ("orig" "TbetaRI" "UP:P36897"
                                     ("TbetaRI" "ONT:PROTEIN" :ID "NCIT:C30098"
                                      :NAME
                                      "transforming growth factor beta receptor-I"))
                                    ("downcase" "sprouty2" "UP:O43597"
                                     ("Sprouty2" "ONT:PROTEIN" :ID
                                      "NCIT:C106029" :NAME
                                      "protein sprouty homolog 2"))
                                    ("orig" "PLD" "UP:C0JAU3"
                                     ("PLD" "ONT:PROTEIN" :ID "UP:C0JAT4" :NAME
                                      "Phospholipase D LhSicTox-alphaIA1i"))
                                    ("orig" "PLCbeta1" "UP:Q9NQ66"
                                     ("PLCbeta1" "ONT:PROTEIN" :ID "UP:P10894"
                                      :NAME
                                      "1-phosphatidylinositol 4,5-bisphosphate phosphodiesterase beta-1"))
                                    ("orig" "PKCalpha" "UP:P17252"
                                     ("PKCalpha" "ONT:PROTEIN" :ID "UP:P04409"
                                      :NAME "Protein kinase C alpha type"))
                                    ("orig" "PI4K" "UP:Q9FMJ0"
                                     ("PI4K" "ONT:PROTEIN" :ID "GO:0004430"
                                      :NAME
                                      "1-phosphatidylinositol 4-kinase activity"))
                                    ("orig" "NMDAR" "UP:Q9R1M7"
                                     ("NMDAR" "ONT:PROTEIN" :ID "NCIT:C118457"
                                      :NAME "N-methyl-D-aspartate receptor"))
                                    ("orig" "NF-kappaB2" "UP:Q00653"
                                     ("NF-kappaB2" "ONT:PROTEIN" :ID
                                      "NCIT:C18550" :NAME
                                      "NF-kappa B p49-p100 protein"))
                                    ("orig" "MAPKKK" "UP:P28829"
                                     ("MAPKKK" "ONT:PROTEIN" :ID "GO:0004709"
                                      :NAME
                                      "MAP kinase kinase kinase activity"))
                                    ("orig" "LTP" "UP:P80450"
                                     ("LTP" "ONT:PROTEIN" :ID "UP:P20145" :NAME
                                      "Probable non-specific lipid-transfer protein"))
                                    ("orig" "LDL" "UP:Q14162"
                                     ("LDL" "ONT:PROTEIN" :ID "NCIT:C25187"
                                      :NAME "low density lipoprotein"))
                                    ("orig" "IkB" "UP:P08711"
                                     ("IkB" "ONT:PROTEIN" :ID "NCIT:C17583"
                                      :NAME "I-kappa-B protein"))
                                    ("orig" "IRE1alpha" "UP:O75460"
                                     ("IRE1alpha" "ONT:PROTEIN" :ID
                                      "NCIT:C113614" :NAME
                                      "serine threonine-protein kinase endoribonuclease IRE1"))
                                    ("orig" "IKK" "UP:O15111"
                                     ("IKK" "ONT:PROTEIN" :ID "NCIT:C104199"
                                      :NAME "I-kappa-B kinase"))
                                    ("orig" "HCD" "UP:Q9NR71"
                                     ("HCD" "ONT:PROTEIN" :ID "UP:P02241" :NAME
                                      "Hemocyanin D chain"))
                                    ("orig" "ERalpha" "UP:P03372"
                                     ("ERalpha" "ONT:PROTEIN" :ID "NCIT:C38361"
                                      :NAME "estrogen receptor 1"))
                                    ("orig" "CaMKIalpha" "UP:Q14012"
                                     ("CaMKIalpha" "ONT:PROTEIN" :ID
                                      "NCIT:C116671" :NAME
                                      "calcium-calmodulin-dependent protein kinase type 1"))
                                    ("orig" "CYP" "UP:P34887"
                                     ("CYP" "ONT:PROTEIN" :ID "NCIT:C16484"
                                      :NAME "cytochrome-P450"))
                                    ("orig" "CRY" "UP:Q9Y2S2"
                                     ("CRY" "ONT:PROTEIN" :ID "UP:P15570" :NAME
                                      "Beta-elicitin cryptogein"))
                                    ("orig" "CFA" "UP:O75347"
                                     ("CFA" "ONT:PROTEIN" :ID "UP:O04350" :NAME
                                      "Tubulin-folding cofactor A"))
                                    ("orig" "BSA" "UP:P12878"
                                     ("BSA" "ONT:PROTEIN" :ID "UP:P02769" :NAME
                                      "Serum albumin"))
                                    ("downcase" "amphoterin" "UP:P63159"
                                     ("Amphoterin" "ONT:PROTEIN" :ID
                                      "NCIT:C20328" :NAME "HMGB1"))
                                    ("orig" "thrombopoietin" "UP:P40225"
                                     ("thrombopoietin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11795" :NAME "thrombopoietin"))
                                    ("orig" "rabaptin5" "UP:Q15276"
                                     ("rabaptin5" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97753" :NAME
                                      "rab GTPase-binding effector protein 1"))
                                    ("orig" "pten" "UP:P60484"
                                     ("pten" "ONT:GENE-PROTEIN" :ID "HGNC:9588"
                                      :NAME "phosphatase and tensin homolog"))
                                    ("orig" "parafibromin" "UP:Q6P1J9"
                                     ("parafibromin" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q5ZLM0" :NAME "Parafibromin"))
                                    ("orig" "p67phox" "UP:P19878"
                                     ("p67phox" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104565" :NAME
                                      "neutrophil cytosolic factor-2"))
                                    ("orig" "p50" "UP:Q43731"
                                     ("p50" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C94298" :NAME "NFKB1"))
                                    ("orig" "p48" "UP:Q8IUI8"
                                     ("p48" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104656" :NAME
                                      "interferon regulatory factor-9"))
                                    ("orig" "p47phox" "UP:P14598"
                                     ("p47phox" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7660" :NAME
                                      "neutrophil cytosolic factor 1"))
                                    ("orig" "p44MAPK" "UP:P27361"
                                     ("p44MAPK" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17408" :NAME "MAP-kinase-3"))
                                    ("orig" "p42" "UP:Q8NFH3"
                                     ("p42" "ONT:GENE-PROTEIN" :ID "HGNC:21420"
                                      :NAME "cyclin dependent kinase 20"))
                                    ("orig" "p300" "UP:Q09472"
                                     ("p300" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52127" :NAME "EP300"))
                                    ("orig" "p16INK4a" "UP:P42771"
                                     ("p16INK4a" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49511" :NAME "CDKN2A"))
                                    ("orig" "p16" "UP:Q96518"
                                     ("p16" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49511" :NAME "CDKN2A"))
                                    ("orig" "osteoprotegerin" "UP:O00300"
                                     ("osteoprotegerin" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C30111" :NAME "osteoprotegerin"))
                                    ("orig" "neurotensin" "UP:P30990"
                                     ("neurotensin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8038" :NAME "neurotensin"))
                                    ("orig" "neu" "UP:P04626"
                                     ("neu" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17319" :NAME
                                      "ERBB2 receptor protein-tyrosine kinase"))
                                    ("orig" "mesothelin" "UP:Q13421"
                                     ("mesothelin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7371" :NAME "mesothelin"))
                                    ("orig" "ghrelin" "UP:Q9UBU3"
                                     ("ghrelin" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q8JFY4" :NAME "Ghrelin"))
                                    ("orig" "filaggrin" "UP:P20930"
                                     ("filaggrin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3748" :NAME "filaggrin"))
                                    ("orig" "ephrinA1" "UP:P20827"
                                     ("ephrinA1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3221" :NAME "ephrin A1"))
                                    ("orig" "eIF4A1" "UP:P60842"
                                     ("eIF4A1" "ONT:GENE-PROTEIN" :ID
                                      "UP:P41376" :NAME
                                      "Eukaryotic initiation factor 4A-1"))
                                    ("orig" "cyclinB1" "UP:P14635"
                                     ("cyclinB1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1579" :NAME "cyclin B1"))
                                    ("orig" "beta3" "UP:O09029"
                                     ("beta3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C79757" :NAME "BHLHB5"))
                                    ("orig" "bdnf" "UP:P23560"
                                     ("bdnf" "ONT:GENE-PROTEIN" :ID "HGNC:1033"
                                      :NAME
                                      "brain derived neurotrophic factor"))
                                    ("orig" "amphiregulin" "UP:P15514"
                                     ("amphiregulin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:651" :NAME "amphiregulin"))
                                    ("orig" "adrenomedullin" "UP:P35318"
                                     ("adrenomedullin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:259" :NAME "adrenomedullin"))
                                    ("orig" "YAP1" "UP:P46937"
                                     ("YAP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16262" :NAME
                                      "Yes associated protein 1"))
                                    ("orig" "XBP1" "UP:P17861"
                                     ("XBP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12801" :NAME
                                      "X-box binding protein 1"))
                                    ("downcase" "wnt3" "UP:P56703"
                                     ("Wnt3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12782" :NAME
                                      "Wnt family member 3"))
                                    ("orig" "WISP1" "UP:O95388"
                                     ("WISP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12769" :NAME
                                      "WNT1 inducible signaling pathway protein 1"))
                                    ("orig" "WIPI1" "UP:Q5MNZ9"
                                     ("WIPI1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:25471" :NAME
                                      "WD repeat domain, phosphoinositide interacting 1"))
                                    ("orig" "WEE1" "UP:P30291"
                                     ("WEE1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12761" :NAME
                                      "WEE1 G2 checkpoint kinase"))
                                    ("orig" "WBP2" "UP:Q969T9"
                                     ("WBP2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12738" :NAME
                                      "WW domain binding protein 2"))
                                    ("orig" "VLDLR" "UP:P98155"
                                     ("VLDLR" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12698" :NAME
                                      "very low density lipoprotein receptor"))
                                    ("orig" "VIP" "UP:P01282"
                                     ("VIP" "ONT:GENE-PROTEIN" :ID "HGNC:12693"
                                      :NAME "vasoactive intestinal peptide"))
                                    ("orig" "VEGFR" "UP:P17948"
                                     ("VEGFR" "ONT:GENE-PROTEIN" :ID
                                      "GO:0005021" :NAME
                                      "vascular endothelial growth factor-activated receptor activity"))
                                    ("orig" "VDAC" "UP:P21796"
                                     ("VDAC" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51093" :NAME "VDAC1"))
                                    ("orig" "USF1" "UP:P22415"
                                     ("USF1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12593" :NAME
                                      "upstream transcription factor 1"))
                                    ("orig" "TrkB" "UP:Q16620"
                                     ("TrkB" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C33983" :NAME
                                      "neurotrophic tyrosine kinase receptor type-2"))
                                    ("downcase" "trk" "UP:P04629"
                                     ("Trk" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17660" :NAME
                                      "receptor tyrosine kinase"))
                                    ("downcase" "tcf3" "UP:P15923"
                                     ("Tcf3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11633" :NAME
                                      "transcription factor 3"))
                                    ("orig" "TWEAK" "UP:O43508"
                                     ("TWEAK" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C117068" :NAME
                                      "tumor necrosis factor ligand superfamily member 12"))
                                    ("orig" "TUBB3" "UP:Q13509"
                                     ("TUBB3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20772" :NAME
                                      "tubulin beta 3 class III"))
                                    ("orig" "TSLP" "UP:Q969D9"
                                     ("TSLP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:30743" :NAME
                                      "thymic stromal lymphopoietin"))
                                    ("orig" "TRX2" "UP:Q99757"
                                     ("TRX2" "ONT:GENE-PROTEIN" :ID "UP:Q8KE49"
                                      :NAME "Thioredoxin-2"))
                                    ("orig" "TRAIL" "UP:P50591"
                                     ("TRAIL" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C50962" :NAME "TNFSF10"))
                                    ("orig" "TRAF2" "UP:Q12933"
                                     ("TRAF2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12032" :NAME
                                      "TNF receptor associated factor 2"))
                                    ("orig" "TPL2" "UP:P41279"
                                     ("TPL2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20585" :NAME
                                      "MAP-kinase kinase kinase 8"))
                                    ("orig" "TOR" "UP:Q9FR53"
                                     ("TOR" "ONT:GENE-PROTEIN" :ID "GO:0050626"
                                      :NAME
                                      "trimethylamine-N-oxide reductase (cytochrome c) activity"))
                                    ("orig" "TNFalpha" "UP:P01375"
                                     ("TNFalpha" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20535" :NAME
                                      "tumor necrosis factor-alpha"))
                                    ("orig" "TNFR1" "UP:P19438"
                                     ("TNFR1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51380" :NAME "TNFRSF1A"))
                                    ("orig" "TLR5" "UP:O60602"
                                     ("TLR5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11851" :NAME
                                      "toll like receptor 5"))
                                    ("orig" "TIMP1" "UP:P01033"
                                     ("TIMP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11820" :NAME
                                      "TIMP metallopeptidase inhibitor 1"))
                                    ("orig" "TFPI" "UP:P10646"
                                     ("TFPI" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11760" :NAME
                                      "tissue factor pathway inhibitor"))
                                    ("orig" "TCF7L2" "UP:Q9NQB0"
                                     ("TCF7L2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11641" :NAME
                                      "transcription factor 7 like 2"))
                                    ("orig" "TCF4" "UP:P15884"
                                     ("TCF4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C105957" :NAME "TCF4"))
                                    ("orig" "TBK1" "UP:Q9UHD2"
                                     ("TBK1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11584" :NAME
                                      "TANK binding kinase 1"))
                                    ("orig" "TAZ" "UP:Q16635"
                                     ("TAZ" "ONT:GENE-PROTEIN" :ID "HGNC:11577"
                                      :NAME "tafazzin"))
                                    ("orig" "TAL1" "UP:P17542"
                                     ("TAL1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11556" :NAME
                                      "TAL bHLH transcription factor 1, erythroid differentiation factor"))
                                    ("orig" "SerpinE1" "UP:P05121"
                                     ("SerpinE1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8583" :NAME
                                      "serpin family E member 1"))
                                    ("orig" "SVCT2" "UP:Q9UGH3"
                                     ("SVCT2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10973" :NAME
                                      "solute carrier family 23 member 2"))
                                    ("orig" "SUZ12" "UP:Q15022"
                                     ("SUZ12" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:17101" :NAME
                                      "SUZ12 polycomb repressive complex 2 subunit"))
                                    ("orig" "STS" "UP:P08842"
                                     ("STS" "ONT:GENE-PROTEIN" :ID "HGNC:11425"
                                      :NAME
                                      "steroid sulfatase (microsomal), isozyme S"))
                                    ("orig" "STRAP" "UP:Q9Y3F4"
                                     ("STRAP" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:30796" :NAME
                                      "serine/threonine kinase receptor associated protein"))
                                    ("orig" "STK11" "UP:Q15831"
                                     ("STK11" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11389" :NAME
                                      "serine/threonine kinase 11"))
                                    ("orig" "STIM1" "UP:Q13586"
                                     ("STIM1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11386" :NAME
                                      "stromal interaction molecule 1"))
                                    ("orig" "STAT-3" "UP:P40763"
                                     ("STAT-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11364" :NAME
                                      "signal transducer and activator of transcription 3"))
                                    ("orig" "SSa" "UP:P27797"
                                     ("SSa" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95314" :NAME "CALR"))
                                    ("orig" "SPRY4" "UP:Q9C004"
                                     ("SPRY4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:15533" :NAME
                                      "sprouty RTK signaling antagonist 4"))
                                    ("orig" "SPRY1" "UP:O43609"
                                     ("SPRY1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11269" :NAME
                                      "sprouty RTK signaling antagonist 1"))
                                    ("orig" "SPF" "UP:O76054"
                                     ("SPF" "ONT:GENE-PROTEIN" :ID "HGNC:10699"
                                      :NAME "SEC14 like lipid binding 2"))
                                    ("orig" "SOX2" "UP:P48431"
                                     ("SOX2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11195" :NAME "SRY-box 2"))
                                    ("orig" "S100A9" "UP:P06702"
                                     ("S100A9" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10499" :NAME
                                      "S100 calcium binding protein A9"))
                                    ("orig" "RhoA" "UP:P61586"
                                     ("RhoA" "ONT:GENE-PROTEIN" :ID "HGNC:667"
                                      :NAME "ras homolog family member A"))
                                    ("downcase" "rasgrf-1" "UP:Q13972"
                                     ("Rasgrf-1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52912" :NAME "RASGRF1"))
                                    ("orig" "RYK" "UP:P34925"
                                     ("RYK" "ONT:GENE-PROTEIN" :ID "HGNC:10481"
                                      :NAME "receptor-like tyrosine kinase"))
                                    ("orig" "RSK4" "UP:Q9UK32"
                                     ("RSK4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10435" :NAME
                                      "ribosomal protein S6 kinase A6"))
                                    ("orig" "RRM2" "UP:P31350"
                                     ("RRM2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10452" :NAME
                                      "ribonucleotide reductase regulatory subunit M2"))
                                    ("orig" "ROS1" "UP:P08922"
                                     ("ROS1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10261" :NAME
                                      "ROS proto-oncogene 1, receptor tyrosine kinase"))
                                    ("orig" "RIG" "UP:Q9UBP4"
                                     ("RIG" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95420" :NAME "DKK3"))
                                    ("orig" "RHOJ" "UP:Q9H4E5"
                                     ("RHOJ" "ONT:GENE-PROTEIN" :ID "HGNC:688"
                                      :NAME "ras homolog family member J"))
                                    ("orig" "RGS2" "UP:P41220"
                                     ("RGS2" "ONT:GENE-PROTEIN" :ID "HGNC:9998"
                                      :NAME
                                      "regulator of G-protein signaling 2"))
                                    ("orig" "RGS11" "UP:O94810"
                                     ("RGS11" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9993" :NAME
                                      "regulator of G-protein signaling 11"))
                                    ("orig" "REP" "UP:P21947"
                                     ("REP" "ONT:GENE-PROTEIN" :ID "UP:P18919"
                                      :NAME "Replication-associated protein"))
                                    ("orig" "RCC1" "UP:P18754"
                                     ("RCC1" "ONT:GENE-PROTEIN" :ID "HGNC:1913"
                                      :NAME
                                      "regulator of chromosome condensation 1"))
                                    ("orig" "RARB" "UP:P10826"
                                     ("RARB" "ONT:GENE-PROTEIN" :ID "HGNC:9865"
                                      :NAME "retinoic acid receptor beta"))
                                    ("orig" "RANKL" "UP:O14788"
                                     ("RANKL" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C50965" :NAME "TNFSF11"))
                                    ("orig" "RANK" "UP:Q9Y6Q6"
                                     ("RANK" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C84994" :NAME
                                      "tumor necrosis factor receptor superfamily member 11A"))
                                    ("orig" "RAGE" "UP:Q15109"
                                     ("RAGE" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51275" :NAME "RAGE"))
                                    ("downcase" "pparg" "UP:P37231"
                                     ("Pparg" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9236" :NAME
                                      "peroxisome proliferator activated receptor gamma"))
                                    ("downcase" "pinin" "UP:Q9H307"
                                     ("Pinin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P79122" :NAME "Pinin"))
                                    ("downcase" "persephin" "UP:O60542"
                                     ("Persephin" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9579" :NAME "persephin"))
                                    ("orig" "PTPRC" "UP:P08575"
                                     ("PTPRC" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9666" :NAME
                                      "protein tyrosine phosphatase, receptor type C"))
                                    ("orig" "PSMA" "UP:Q04609"
                                     ("PSMA" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49386" :NAME "FOLH1"))
                                    ("orig" "PRL-3" "UP:O75365"
                                     ("PRL-3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9636" :NAME
                                      "protein tyrosine phosphatase type IVA, member 3"))
                                    ("orig" "PLCgamma1" "UP:P19174"
                                     ("PLCgamma1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104822" :NAME "PLCG1"))
                                    ("orig" "PLAGL1" "UP:Q9UM63"
                                     ("PLAGL1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9046" :NAME
                                      "PLAG1 like zinc finger 1"))
                                    ("orig" "PEG3" "UP:Q9GZU2"
                                     ("PEG3" "ONT:GENE-PROTEIN" :ID "HGNC:8826"
                                      :NAME "paternally expressed 3"))
                                    ("orig" "PDC" "UP:P20941"
                                     ("PDC" "ONT:GENE-PROTEIN" :ID "HGNC:8759"
                                      :NAME "phosducin"))
                                    ("orig" "PD1" "UP:Q15116"
                                     ("PD1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C94696" :NAME "PDCD1"))
                                    ("orig" "PAX3" "UP:P23760"
                                     ("PAX3" "ONT:GENE-PROTEIN" :ID "HGNC:8617"
                                      :NAME "paired box 3"))
                                    ("orig" "PARP" "UP:Q11208"
                                     ("PARP" "ONT:GENE-PROTEIN" :ID "UP:P35875"
                                      :NAME "Poly [ADP-ribose] polymerase"))
                                    ("orig" "P70S6K" "UP:P23443"
                                     ("P70S6K" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C84317" :NAME
                                      "ribosomal protein S6 kinase beta-1"))
                                    ("downcase" "p-gp" "UP:A6NDG6"
                                     ("P-gp" "ONT:GENE-PROTEIN" :ID "HGNC:8909"
                                      :NAME "phosphoglycolate phosphatase"))
                                    ("orig" "OSMR" "UP:Q99650"
                                     ("OSMR" "ONT:GENE-PROTEIN" :ID "HGNC:8507"
                                      :NAME "oncostatin M receptor"))
                                    ("orig" "OGG1" "UP:O15527"
                                     ("OGG1" "ONT:GENE-PROTEIN" :ID "HGNC:8125"
                                      :NAME "8-oxoguanine DNA glycosylase"))
                                    ("orig" "NQO1" "UP:P15559"
                                     ("NQO1" "ONT:GENE-PROTEIN" :ID "HGNC:2874"
                                      :NAME "NAD(P)H quinone dehydrogenase 1"))
                                    ("orig" "NPY" "UP:P01303"
                                     ("NPY" "ONT:GENE-PROTEIN" :ID "HGNC:7955"
                                      :NAME "neuropeptide Y"))
                                    ("orig" "NLK" "UP:Q9UBE8"
                                     ("NLK" "ONT:GENE-PROTEIN" :ID "HGNC:29858"
                                      :NAME "nemo like kinase"))
                                    ("downcase" "nkd" "UP:Q969G9"
                                     ("NKD" "ONT:GENE-PROTEIN" :ID "UP:P30974"
                                      :NAME
                                      "Tachykinin-like peptides receptor 86C"))
                                    ("orig" "NK1r" "UP:P25103"
                                     ("NK1r" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C41023" :NAME
                                      "tachykinin receptor-1"))
                                    ("orig" "NIS" "UP:Q92911"
                                     ("NIS" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17536" :NAME
                                      "sodium-iodide symporter"))
                                    ("orig" "NFkappaB" "UP:Q04206"
                                     ("NFkappaB" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C94298" :NAME "NFKB1"))
                                    ("orig" "NDRG1" "UP:Q92597"
                                     ("NDRG1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7679" :NAME
                                      "N-myc downstream regulated 1"))
                                    ("orig" "NBL1" "UP:P41271"
                                     ("NBL1" "ONT:GENE-PROTEIN" :ID "HGNC:7650"
                                      :NAME
                                      "neuroblastoma 1, DAN family BMP antagonist"))
                                    ("downcase" "munc18-1" "UP:P61764"
                                     ("Munc18-1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11444" :NAME
                                      "syntaxin binding protein 1"))
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
                                    ("orig" "MUC5AC" "UP:P98088"
                                     ("MUC5AC" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7515" :NAME
                                      "mucin 5AC, oligomeric mucus/gel-forming"))
                                    ("orig" "MUC16" "UP:Q8WXI7"
                                     ("MUC16" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:15582" :NAME
                                      "mucin 16, cell surface associated"))
                                    ("orig" "MUC1" "UP:P15941"
                                     ("MUC1" "ONT:GENE-PROTEIN" :ID "HGNC:7508"
                                      :NAME
                                      "mucin 1, cell surface associated"))
                                    ("orig" "MNK1" "UP:Q9BUB5"
                                     ("MNK1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C33991" :NAME
                                      "MAP-kinase interacting kinase-1"))
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
                                    ("orig" "MMP-10" "UP:P09238"
                                     ("MMP-10" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7156" :NAME
                                      "matrix metallopeptidase 10"))
                                    ("orig" "MKP3" "UP:Q16828"
                                     ("MKP3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C106025" :NAME "DUSP6"))
                                    ("orig" "MITF" "UP:O75030"
                                     ("MITF" "ONT:GENE-PROTEIN" :ID "HGNC:7105"
                                      :NAME
                                      "melanogenesis associated transcription factor"))
                                    ("orig" "MCL1" "UP:Q07820"
                                     ("MCL1" "ONT:GENE-PROTEIN" :ID "HGNC:6943"
                                      :NAME "BCL2 family apoptosis regulator"))
                                    ("orig" "MALT1" "UP:Q9UDY8"
                                     ("MALT1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6819" :NAME "MALT1 paracaspase"))
                                    ("orig" "MAL" "UP:P01732"
                                     ("MAL" "ONT:GENE-PROTEIN" :ID "HGNC:6817"
                                      :NAME
                                      "mal, T-cell differentiation protein"))
                                    ("orig" "LTB" "UP:Q06643"
                                     ("LTB" "ONT:GENE-PROTEIN" :ID "HGNC:6711"
                                      :NAME "lymphotoxin beta"))
                                    ("orig" "LSD1" "UP:O60341"
                                     ("LSD1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C78142" :NAME "AOF2"))
                                    ("orig" "LOX" "UP:P28300"
                                     ("LOX" "ONT:GENE-PROTEIN" :ID "HGNC:6664"
                                      :NAME "lysyl oxidase"))
                                    ("orig" "LATS1" "UP:O95835"
                                     ("LATS1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6514" :NAME
                                      "large tumor suppressor kinase 1"))
                                    ("orig" "LASP1" "UP:Q14847"
                                     ("LASP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6513" :NAME
                                      "LIM and SH3 protein 1"))
                                    ("downcase" "kras" "UP:P01116"
                                     ("Kras" "ONT:GENE-PROTEIN" :ID "HGNC:6407"
                                      :NAME "KRAS proto-oncogene, GTPase"))
                                    ("orig" "JUNB" "UP:P17275"
                                     ("JUNB" "ONT:GENE-PROTEIN" :ID "HGNC:6205"
                                      :NAME
                                      "JunB proto-oncogene, AP-1 transcription factor subunit"))
                                    ("orig" "JUN" "UP:P05412"
                                     ("JUN" "ONT:GENE-PROTEIN" :ID "HGNC:6204"
                                      :NAME
                                      "Jun proto-oncogene, AP-1 transcription factor subunit"))
                                    ("downcase" "il-1beta" "UP:P01584"
                                     ("Il-1beta" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C20522" :NAME
                                      "interleukin-1-beta"))
                                    ("orig" "IgM" "UP:O07582"
                                     ("IgM" "ONT:GENE-PROTEIN" :ID "NCIT:C569"
                                      :NAME "IgM"))
                                    ("orig" "ITCH" "UP:Q96J02"
                                     ("ITCH" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:13890" :NAME
                                      "itchy E3 ubiquitin protein ligase"))
                                    ("orig" "IL27" "UP:Q8NEV9"
                                     ("IL27" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:19157" :NAME "interleukin 27"))
                                    ("orig" "IL-6R" "UP:P08887"
                                     ("IL-6R" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6019" :NAME
                                      "interleukin 6 receptor"))
                                    ("orig" "IGFBP7" "UP:Q16270"
                                     ("IGFBP7" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5476" :NAME
                                      "insulin like growth factor binding protein 7"))
                                    ("orig" "IGFBP5" "UP:P24593"
                                     ("IGFBP5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5474" :NAME
                                      "insulin like growth factor binding protein 5"))
                                    ("orig" "IGF2R" "UP:P11717"
                                     ("IGF2R" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5467" :NAME
                                      "insulin like growth factor 2 receptor"))
                                    ("orig" "IGF-1R" "UP:P08069"
                                     ("IGF-1R" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5465" :NAME
                                      "insulin like growth factor 1 receptor"))
                                    ("orig" "ICAM2" "UP:P13598"
                                     ("ICAM2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5345" :NAME
                                      "intercellular adhesion molecule 2"))
                                    ("orig" "ICAM1" "UP:P05362"
                                     ("ICAM1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5344" :NAME
                                      "intercellular adhesion molecule 1"))
                                    ("downcase" "hras" "UP:P01112"
                                     ("Hras" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52545" :NAME "HRAS"))
                                    ("upcase" "HGF" "UP:P14210"
                                     ("Hgf" "ONT:GENE-PROTEIN" :ID "HGNC:4893"
                                      :NAME "hepatocyte growth factor"))
                                    ("orig" "HSP60" "UP:P10809"
                                     ("HSP60" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104339" :NAME "HSPD1"))
                                    ("orig" "HS1" "UP:P14317"
                                     ("HS1" "ONT:GENE-PROTEIN" :ID "UP:P0C2F4"
                                      :NAME "Heteroscorpine-1"))
                                    ("orig" "HMGA2" "UP:P52926"
                                     ("HMGA2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5009" :NAME
                                      "high mobility group AT-hook 2"))
                                    ("orig" "HHAT" "UP:Q5VTY9"
                                     ("HHAT" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:18270" :NAME
                                      "hedgehog acyltransferase"))
                                    ("orig" "HFREP1" "UP:Q08830"
                                     ("HFREP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3695" :NAME "fibrinogen like 1"))
                                    ("orig" "HES2" "UP:Q9Y543"
                                     ("HES2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C114518" :NAME "HES2"))
                                    ("orig" "HDAC6" "UP:Q9UBN7"
                                     ("HDAC6" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:14064" :NAME
                                      "histone deacetylase 6"))
                                    ("orig" "HDAC1" "UP:Q13547"
                                     ("HDAC1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4852" :NAME
                                      "histone deacetylase 1"))
                                    ("orig" "HDAC" "UP:Q54VQ7"
                                     ("HDAC" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C16682" :NAME
                                      "histone deacetylase"))
                                    ("downcase" "gclm" "UP:P48507"
                                     ("Gclm" "ONT:GENE-PROTEIN" :ID "HGNC:4312"
                                      :NAME
                                      "glutamate-cysteine ligase modifier subunit"))
                                    ("downcase" "gata3" "UP:P23771"
                                     ("Gata3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4172" :NAME
                                      "GATA binding protein 3"))
                                    ("upcase" "GADD45B" "UP:O75293"
                                     ("Gadd45b" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4096" :NAME
                                      "growth arrest and DNA damage inducible beta"))
                                    ("orig" "GSK3alpha" "UP:P49840"
                                     ("GSK3alpha" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51206" :NAME "GSK3A"))
                                    ("orig" "GLK" "UP:Q8IVH8"
                                     ("GLK" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C116307" :NAME
                                      "mitogen-activated protein kinase kinase kinase kinase 3"))
                                    ("orig" "GAS6" "UP:Q14393"
                                     ("GAS6" "ONT:GENE-PROTEIN" :ID "HGNC:4168"
                                      :NAME "growth arrest specific 6"))
                                    ("orig" "FcRIIIb" "UP:O75015"
                                     ("FcRIIIb" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51394" :NAME "FCGR3B"))
                                    ("orig" "FSHr" "UP:P23945"
                                     ("FSHr" "ONT:GENE-PROTEIN" :ID "HGNC:3969"
                                      :NAME
                                      "follicle stimulating hormone receptor"))
                                    ("orig" "FPR1" "UP:P21462"
                                     ("FPR1" "ONT:GENE-PROTEIN" :ID "HGNC:3826"
                                      :NAME "formyl peptide receptor 1"))
                                    ("orig" "FOXO3" "UP:O43524"
                                     ("FOXO3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3821" :NAME "forkhead box O3"))
                                    ("orig" "FOXA2" "UP:Q9Y261"
                                     ("FOXA2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5022" :NAME "forkhead box A2"))
                                    ("orig" "FLT3" "UP:P36888"
                                     ("FLT3" "ONT:GENE-PROTEIN" :ID "HGNC:3765"
                                      :NAME "fms related tyrosine kinase 3"))
                                    ("orig" "FLIP" "UP:P57184"
                                     ("FLIP" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C96017" :NAME "CFLAR"))
                                    ("orig" "FKBP" "UP:Q754K8"
                                     ("FKBP" "ONT:GENE-PROTEIN" :ID "UP:P48375"
                                      :NAME "12 kDa FK506-binding protein"))
                                    ("orig" "FATP1" "UP:Q6PCB7"
                                     ("FATP1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q3ZKN0" :NAME
                                      "Long-chain fatty acid transport protein 1"))
                                    ("orig" "FAE" "UP:Q9HB96"
                                     ("FAE" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C86552" :NAME "FANCE"))
                                    ("orig" "FADD" "UP:Q13158"
                                     ("FADD" "ONT:GENE-PROTEIN" :ID "HGNC:3573"
                                      :NAME "Fas associated via death domain"))
                                    ("orig" "FABP4" "UP:P15090"
                                     ("FABP4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3559" :NAME
                                      "fatty acid binding protein 4"))
                                    ("upcase" "EGR1" "UP:P18146"
                                     ("Egr1" "ONT:GENE-PROTEIN" :ID "HGNC:3238"
                                      :NAME "early growth response 1"))
                                    ("upcase" "EGF" "UP:P01133"
                                     ("Egf" "ONT:GENE-PROTEIN" :ID "HGNC:3229"
                                      :NAME "epidermal growth factor"))
                                    ("orig" "EZH2" "UP:Q15910"
                                     ("EZH2" "ONT:GENE-PROTEIN" :ID "HGNC:3527"
                                      :NAME
                                      "enhancer of zeste 2 polycomb repressive complex 2 subunit"))
                                    ("orig" "ETS1" "UP:P14921"
                                     ("ETS1" "ONT:GENE-PROTEIN" :ID "HGNC:3488"
                                      :NAME
                                      "ETS proto-oncogene 1, transcription factor"))
                                    ("orig" "EMP2" "UP:P54851"
                                     ("EMP2" "ONT:GENE-PROTEIN" :ID "HGNC:3334"
                                      :NAME "epithelial membrane protein 2"))
                                    ("orig" "ELF3" "UP:P78545"
                                     ("ELF3" "ONT:GENE-PROTEIN" :ID "HGNC:3318"
                                      :NAME
                                      "E74 like ETS transcription factor 3"))
                                    ("orig" "EHF" "UP:Q9NZC4"
                                     ("EHF" "ONT:GENE-PROTEIN" :ID "HGNC:3246"
                                      :NAME "ETS homologous factor"))
                                    ("orig" "E2F1" "UP:Q01094"
                                     ("E2F1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52538" :NAME "E2F1"))
                                    ("orig" "DUSP4" "UP:Q13115"
                                     ("DUSP4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3070" :NAME
                                      "dual specificity phosphatase 4"))
                                    ("orig" "DUSP1" "UP:P28562"
                                     ("DUSP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:3064" :NAME
                                      "dual specificity phosphatase 1"))
                                    ("orig" "DRD1" "UP:P21728"
                                     ("DRD1" "ONT:GENE-PROTEIN" :ID "HGNC:3020"
                                      :NAME "dopamine receptor D1"))
                                    ("orig" "DR4" "UP:O00220"
                                     ("DR4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C62757" :NAME
                                      "HLA class II histocompatibility antigen DRB1-4 beta chain protein"))
                                    ("orig" "DMP1" "UP:Q13316"
                                     ("DMP1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95576" :NAME "DMP1"))
                                    ("orig" "DDR1" "UP:Q08345"
                                     ("DDR1" "ONT:GENE-PROTEIN" :ID "HGNC:2730"
                                      :NAME
                                      "discoidin domain receptor tyrosine kinase 1"))
                                    ("downcase" "cyp2b" "UP:P20813"
                                     ("Cyp2b" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C40050" :NAME
                                      "cytochrome P450-2B6"))
                                    ("orig" "CyclinD1" "UP:P42751"
                                     ("CyclinD1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1582" :NAME "cyclin D1"))
                                    ("downcase" "cullin3" "UP:Q13618"
                                     ("Cullin3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2553" :NAME "cullin 3"))
                                    ("orig" "CsA" "UP:Q13216"
                                     ("CsA" "ONT:GENE-PROTEIN" :ID "UP:P08796"
                                      :NAME "Contact site A protein"))
                                    ("downcase" "cdk3" "UP:Q00526"
                                     ("Cdk3" "ONT:GENE-PROTEIN" :ID "HGNC:1772"
                                      :NAME "cyclin dependent kinase 3"))
                                    ("orig" "CaSR" "UP:P41180"
                                     ("CaSR" "ONT:GENE-PROTEIN" :ID "HGNC:1514"
                                      :NAME "calcium sensing receptor"))
                                    ("orig" "CYP2B6" "UP:P20813"
                                     ("CYP2B6" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2615" :NAME
                                      "cytochrome P450 family 2 subfamily B member 6"))
                                    ("orig" "CXCR7" "UP:P25106"
                                     ("CXCR7" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C91370" :NAME "CXCR7"))
                                    ("orig" "CXCL5" "UP:P42830"
                                     ("CXCL5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10642" :NAME
                                      "C-X-C motif chemokine ligand 5"))
                                    ("orig" "CXCL3" "UP:P19876"
                                     ("CXCL3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4604" :NAME
                                      "C-X-C motif chemokine ligand 3"))
                                    ("orig" "CXCL2" "UP:P19875"
                                     ("CXCL2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4603" :NAME
                                      "C-X-C motif chemokine ligand 2"))
                                    ("orig" "CX3CL1" "UP:P78423"
                                     ("CX3CL1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10647" :NAME
                                      "C-X3-C motif chemokine ligand 1"))
                                    ("orig" "CTSS" "UP:P25774"
                                     ("CTSS" "ONT:GENE-PROTEIN" :ID "HGNC:2545"
                                      :NAME "cathepsin S"))
                                    ("orig" "CTSK" "UP:P43235"
                                     ("CTSK" "ONT:GENE-PROTEIN" :ID "HGNC:2536"
                                      :NAME "cathepsin K"))
                                    ("orig" "CTSB" "UP:P07858"
                                     ("CTSB" "ONT:GENE-PROTEIN" :ID "HGNC:2527"
                                      :NAME "cathepsin B"))
                                    ("orig" "CTR1" "UP:O15431"
                                     ("CTR1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C127859" :NAME "SLC31A1"))
                                    ("orig" "CTLA4" "UP:P16410"
                                     ("CTLA4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51345" :NAME "CTLA4"))
                                    ("orig" "CTA" "UP:P49585"
                                     ("CTA" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104954" :NAME "PCYT1A"))
                                    ("orig" "CRY2" "UP:Q49AN0"
                                     ("CRY2" "ONT:GENE-PROTEIN" :ID "HGNC:2385"
                                      :NAME "cryptochrome circadian clock 2"))
                                    ("orig" "CRP" "UP:P02741"
                                     ("CRP" "ONT:GENE-PROTEIN" :ID "HGNC:2367"
                                      :NAME "C-reactive protein"))
                                    ("orig" "CPEB" "UP:Q9BZB8"
                                     ("CPEB" "ONT:GENE-PROTEIN" :ID "UP:P0C279"
                                      :NAME
                                      "Cytoplasmic polyadenylation element-binding protein 1"))
                                    ("orig" "CLU" "UP:P10909"
                                     ("CLU" "ONT:GENE-PROTEIN" :ID "HGNC:2095"
                                      :NAME "clusterin"))
                                    ("orig" "CDX2" "UP:Q99626"
                                     ("CDX2" "ONT:GENE-PROTEIN" :ID "HGNC:1806"
                                      :NAME "caudal type homeobox 2"))
                                    ("orig" "CDT1" "UP:Q9H211"
                                     ("CDT1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:24576" :NAME
                                      "chromatin licensing and DNA replication factor 1"))
                                    ("orig" "CDKN2A" "UP:Q8N726"
                                     ("CDKN2A" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1787" :NAME
                                      "cyclin dependent kinase inhibitor 2A"))
                                    ("orig" "CDKN1C" "UP:P49918"
                                     ("CDKN1C" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1786" :NAME
                                      "cyclin dependent kinase inhibitor 1C"))
                                    ("orig" "CDK9" "UP:P50750"
                                     ("CDK9" "ONT:GENE-PROTEIN" :ID "HGNC:1780"
                                      :NAME "cyclin dependent kinase 9"))
                                    ("orig" "CDH5" "UP:P33151"
                                     ("CDH5" "ONT:GENE-PROTEIN" :ID "HGNC:1764"
                                      :NAME "cadherin 5"))
                                    ("orig" "CD71" "UP:P02786"
                                     ("CD71" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C38519" :NAME
                                      "transferrin receptor-1"))
                                    ("orig" "CD40" "UP:P25942"
                                     ("CD40" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11919" :NAME "CD40 molecule"))
                                    ("orig" "CD147" "UP:P35613"
                                     ("CD147" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95070" :NAME "basigin"))
                                    ("orig" "CD14" "UP:P08571"
                                     ("CD14" "ONT:GENE-PROTEIN" :ID "HGNC:1628"
                                      :NAME "CD14 molecule"))
                                    ("orig" "CD133" "UP:O43490"
                                     ("CD133" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C64330" :NAME "PROM1"))
                                    ("orig" "CCL5" "UP:P13501"
                                     ("CCL5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10632" :NAME
                                      "C-C motif chemokine ligand 5"))
                                    ("orig" "CCL21" "UP:O00585"
                                     ("CCL21" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10620" :NAME
                                      "C-C motif chemokine ligand 21"))
                                    ("orig" "CCL2" "UP:P13500"
                                     ("CCL2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:10618" :NAME
                                      "C-C motif chemokine ligand 2"))
                                    ("orig" "CBP" "UP:Q92793"
                                     ("CBP" "ONT:GENE-PROTEIN" :ID "UP:O42720"
                                      :NAME "Calcium-binding protein"))
                                    ("orig" "CASP9" "UP:P55211"
                                     ("CASP9" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C49561" :NAME "CASP9"))
                                    ("orig" "CASP8" "UP:Q14790"
                                     ("CASP8" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1509" :NAME "caspase 8"))
                                    ("orig" "CASP3" "UP:P42574"
                                     ("CASP3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1504" :NAME "caspase 3"))
                                    ("orig" "CAII" "UP:P00918"
                                     ("CAII" "ONT:GENE-PROTEIN" :ID "HGNC:1373"
                                      :NAME "carbonic anhydrase 2"))
                                    ("downcase" "btg2" "UP:P78543"
                                     ("Btg2" "ONT:GENE-PROTEIN" :ID "HGNC:1131"
                                      :NAME "BTG anti-proliferation factor 2"))
                                    ("downcase" "bip" "UP:P11021"
                                     ("Bip" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C26293" :NAME
                                      "bone morphogenetic protein-3B"))
                                    ("orig" "BRIP1" "UP:Q9BX63"
                                     ("BRIP1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20473" :NAME
                                      "BRCA1 interacting protein C-terminal helicase 1"))
                                    ("orig" "BRG1" "UP:P51532"
                                     ("BRG1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C52111" :NAME "SMARCA4"))
                                    ("orig" "BRD4" "UP:O60885"
                                     ("BRD4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:13575" :NAME
                                      "bromodomain containing 4"))
                                    ("orig" "BRCA2" "UP:P51587"
                                     ("BRCA2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1101" :NAME
                                      "BRCA2, DNA repair associated"))
                                    ("orig" "BRCA1" "UP:P38398"
                                     ("BRCA1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:1100" :NAME
                                      "BRCA1, DNA repair associated"))
                                    ("orig" "BMI1" "UP:P35226"
                                     ("BMI1" "ONT:GENE-PROTEIN" :ID "HGNC:1066"
                                      :NAME
                                      "BMI1 proto-oncogene, polycomb ring finger"))
                                    ("orig" "BCL6" "UP:P41182"
                                     ("BCL6" "ONT:GENE-PROTEIN" :ID "HGNC:1001"
                                      :NAME "B-cell CLL/lymphoma 6"))
                                    ("orig" "BAFFR" "UP:Q96RJ3"
                                     ("BAFFR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C111796" :NAME "TNFRSF13C"))
                                    ("downcase" "apod" "UP:P05090"
                                     ("Apod" "ONT:GENE-PROTEIN" :ID "HGNC:612"
                                      :NAME "apolipoprotein D"))
                                    ("orig" "ApoER2" "UP:Q14114"
                                     ("ApoER2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C95250" :NAME "LRP8"))
                                    ("downcase" "angiopoietin-2" "UP:O15123"
                                     ("Angiopoietin-2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:485" :NAME "angiopoietin 2"))
                                    ("downcase" "amigo3" "UP:Q86WK7"
                                     ("Amigo3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:24075" :NAME
                                      "adhesion molecule with Ig like domain 3"))
                                    ("upcase" "AMIGO2" "UP:Q86SJ2"
                                     ("Amigo2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C119684" :NAME "AMIGO2"))
                                    ("downcase" "amigo-2" "UP:Q86SJ2"
                                     ("Amigo-2" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C119684" :NAME "AMIGO2"))
                                    ("orig" "ATRX" "UP:P46100"
                                     ("ATRX" "ONT:GENE-PROTEIN" :ID "HGNC:886"
                                      :NAME "ATRX, chromatin remodeler"))
                                    ("orig" "ATG14" "UP:Q6ZNE5"
                                     ("ATG14" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:19962" :NAME
                                      "autophagy related 14"))
                                    ("orig" "ATF2" "UP:P15336"
                                     ("ATF2" "ONT:GENE-PROTEIN" :ID "HGNC:784"
                                      :NAME
                                      "activating transcription factor 2"))
                                    ("orig" "ARC" "UP:Q7LC44"
                                     ("ARC" "ONT:GENE-PROTEIN" :ID "HGNC:648"
                                      :NAME
                                      "activity regulated cytoskeleton associated protein"))
                                    ("orig" "AQP1" "UP:P29972"
                                     ("AQP1" "ONT:GENE-PROTEIN" :ID "HGNC:633"
                                      :NAME
                                      "aquaporin 1 (Colton blood group)"))
                                    ("orig" "ALK" "UP:Q9UM73"
                                     ("ALK" "ONT:GENE-PROTEIN" :ID "HGNC:427"
                                      :NAME
                                      "anaplastic lymphoma receptor tyrosine kinase"))
                                    ("orig" "ACTA2" "UP:P62736"
                                     ("ACTA2" "ONT:GENE-PROTEIN" :ID "HGNC:130"
                                      :NAME
                                      "actin, alpha 2, smooth muscle, aorta"))
                                    ("orig" "ABCC2" "UP:Q92887"
                                     ("ABCC2" "ONT:GENE-PROTEIN" :ID "HGNC:53"
                                      :NAME
                                      "ATP binding cassette subfamily C member 2"))
                                    ("orig" "ABCB1" "UP:P08183"
                                     ("ABCB1" "ONT:GENE-PROTEIN" :ID "HGNC:40"
                                      :NAME
                                      "ATP binding cassette subfamily B member 1"))
                                    ("orig" "A3AR" "UP:P0DMS8"
                                     ("A3AR" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51399" :NAME "ADORA3"))
                                    ("orig" "4EBP-1" "UP:Q13541"
                                     ("4EBP-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q0P5A7" :NAME
                                      "Eukaryotic translation initiation factor 4E-binding protein 1"))
                                    ("orig" "ssk1" "UP:O60566"
                                     ("ssk1" "ONT:GENE" :ID "NCIT:C95593" :NAME
                                      "BUB1B"))
                                    ("orig" "p85alpha" "UP:P27986"
                                     ("p85alpha" "ONT:GENE" :ID "NCIT:C97734"
                                      :NAME "PIK3R1"))
                                    ("orig" "p38gamma" "UP:P53778"
                                     ("p38gamma" "ONT:GENE" :ID "NCIT:C51217"
                                      :NAME "MAPK12"))
                                    ("orig" "p38alpha" "UP:Q16539"
                                     ("p38alpha" "ONT:GENE" :ID "NCIT:C51219"
                                      :NAME "MAPK14"))
                                    ("orig" "p190RhoGAP" "UP:Q9NRY4"
                                     ("p190RhoGAP" "ONT:GENE" :ID "NCIT:C97269"
                                      :NAME "GRLF1"))
                                    ("orig" "osterix" "UP:Q8TDD2"
                                     ("osterix" "ONT:GENE" :ID "HGNC:17321"
                                      :NAME "Sp7 transcription factor"))
                                    ("orig" "mdr1" "UP:P08183"
                                     ("mdr1" "ONT:GENE" :ID "NCIT:C52273" :NAME
                                      "ABCB1"))
                                    ("orig" "hBDs" "UP:P02042"
                                     ("hBDs" "ONT:GENE" :ID "HGNC:4829" :NAME
                                      "hemoglobin subunit delta"))
                                    ("orig" "gC1qR" "UP:Q07021"
                                     ("gC1qR" "ONT:GENE" :ID "HGNC:1243" :NAME
                                      "complement C1q binding protein"))
                                    ("orig" "fMLP" "UP:P21462"
                                     ("fMLP" "ONT:GENE" :ID "NCIT:C51444" :NAME
                                      "FPR1"))
                                    ("orig" "alpha4" "UP:P78318"
                                     ("alpha4" "ONT:GENE" :ID "NCIT:C51259"
                                      :NAME "IGBP1"))
                                    ("orig" "alpha1B-AR" "UP:P35368"
                                     ("alpha1B-AR" "ONT:GENE" :ID "NCIT:C51402"
                                      :NAME "ADRA1B"))
                                    ("orig" "alpha1A-AR" "UP:P25100"
                                     ("alpha1A-AR" "ONT:GENE" :ID "NCIT:C51401"
                                      :NAME "ADRA1A"))
                                    ("orig" "ZEB1" "UP:P37275"
                                     ("ZEB1" "ONT:GENE" :ID "HGNC:11642" :NAME
                                      "zinc finger E-box binding homeobox 1"))
                                    ("downcase" "yki" "UP:Q45VV3"
                                     ("Yki" "ONT:GENE" :ID "NCIT:C96031" :NAME
                                      "YAP1"))
                                    ("orig" "WTIP" "UP:A6NIX2"
                                     ("WTIP" "ONT:GENE" :ID "HGNC:20964" :NAME
                                      "Wilms tumor 1 interacting protein"))
                                    ("orig" "WNK1" "UP:Q9H4A3"
                                     ("WNK1" "ONT:GENE" :ID "HGNC:14540" :NAME
                                      "WNK lysine deficient protein kinase 1"))
                                    ("orig" "VRK3" "UP:Q8IV63"
                                     ("VRK3" "ONT:GENE" :ID "HGNC:18996" :NAME
                                      "vaccinia related kinase 3"))
                                    ("orig" "VIII" "UP:P69540"
                                     ("VIII" "ONT:GENE" :ID "HGNC:2294" :NAME
                                      "cytochrome c oxidase subunit 8A"))
                                    ("orig" "UbcH5a" "UP:P51668"
                                     ("UbcH5a" "ONT:GENE" :ID "HGNC:12474"
                                      :NAME
                                      "ubiquitin conjugating enzyme E2 D1"))
                                    ("orig" "ULK1" "UP:O75385"
                                     ("ULK1" "ONT:GENE" :ID "HGNC:12558" :NAME
                                      "unc-51 like autophagy activating kinase 1"))
                                    ("orig" "TNS2" "UP:Q63HR2"
                                     ("TNS2" "ONT:GENE" :ID "HGNC:19737" :NAME
                                      "tensin 2"))
                                    ("orig" "TAK1" "UP:P49116"
                                     ("TAK1" "ONT:GENE" :ID "NCIT:C106598"
                                      :NAME "NR2C2"))
                                    ("downcase" "sur8" "UP:Q9UQ13"
                                     ("Sur8" "ONT:GENE" :ID "HGNC:15454" :NAME
                                      "SHOC2, leucine rich repeat scaffold protein"))
                                    ("downcase" "sox9" "UP:P48436"
                                     ("Sox9" "ONT:GENE" :ID "HGNC:11204" :NAME
                                      "SRY-box 9"))
                                    ("downcase" "sac1" "UP:Q9NTJ5"
                                     ("Sac1" "ONT:GENE" :ID "HGNC:17059" :NAME
                                      "SAC1 suppressor of actin mutations 1-like (yeast)"))
                                    ("orig" "SYN" "UP:P06241"
                                     ("SYN" "ONT:GENE" :ID "NCIT:C51117" :NAME
                                      "FYN"))
                                    ("orig" "STAG3" "UP:Q9UJ98"
                                     ("STAG3" "ONT:GENE" :ID "HGNC:11356" :NAME
                                      "stromal antigen 3"))
                                    ("orig" "STAG2" "UP:Q8N3U4"
                                     ("STAG2" "ONT:GENE" :ID "HGNC:11355" :NAME
                                      "stromal antigen 2"))
                                    ("orig" "SRSF1" "UP:Q07955"
                                     ("SRSF1" "ONT:GENE" :ID "HGNC:10780" :NAME
                                      "serine and arginine rich splicing factor 1"))
                                    ("orig" "SREBP1C" "UP:P36956"
                                     ("SREBP1C" "ONT:GENE" :ID "NCIT:C105086"
                                      :NAME "SREBF1"))
                                    ("orig" "SQSTM1" "UP:Q13501"
                                     ("SQSTM1" "ONT:GENE" :ID "HGNC:11280"
                                      :NAME "sequestosome 1"))
                                    ("orig" "SPRR2A" "UP:P35326"
                                     ("SPRR2A" "ONT:GENE" :ID "HGNC:11261"
                                      :NAME "small proline rich protein 2A"))
                                    ("orig" "SNAI2" "UP:O43623"
                                     ("SNAI2" "ONT:GENE" :ID "HGNC:11094" :NAME
                                      "snail family transcriptional repressor 2"))
                                    ("orig" "SLC25A22" "UP:Q9H936"
                                     ("SLC25A22" "ONT:GENE" :ID "HGNC:19954"
                                      :NAME
                                      "solute carrier family 25 member 22"))
                                    ("orig" "SIRT6" "UP:Q8N6T7"
                                     ("SIRT6" "ONT:GENE" :ID "HGNC:14934" :NAME
                                      "sirtuin 6"))
                                    ("orig" "SHCBP1" "UP:Q8NEM2"
                                     ("SHCBP1" "ONT:GENE" :ID "HGNC:29547"
                                      :NAME
                                      "SHC binding and spindle associated 1"))
                                    ("orig" "SF2" "UP:Q07955"
                                     ("SF2" "ONT:GENE" :ID "NCIT:C116044" :NAME
                                      "SRSF1"))
                                    ("orig" "SET8" "UP:Q9NQR1"
                                     ("SET8" "ONT:GENE" :ID "NCIT:C73665" :NAME
                                      "SETD8"))
                                    ("orig" "SDS" "UP:P20132"
                                     ("SDS" "ONT:GENE" :ID "HGNC:10691" :NAME
                                      "serine dehydratase"))
                                    ("orig" "SCD1" "UP:O00767"
                                     ("SCD1" "ONT:GENE" :ID "NCIT:C102777"
                                      :NAME "SCD"))
                                    ("orig" "S100A4" "UP:P26447"
                                     ("S100A4" "ONT:GENE" :ID "HGNC:10494"
                                      :NAME "S100 calcium binding protein A4"))
                                    ("orig" "RSK" "UP:P18652"
                                     ("RSK" "ONT:GENE" :ID "NCIT:C104765" :NAME
                                      "RPS6KA1"))
                                    ("orig" "RPS6" "UP:P62753"
                                     ("RPS6" "ONT:GENE" :ID "HGNC:10429" :NAME
                                      "ribosomal protein S6"))
                                    ("orig" "RNF43" "UP:Q68DV7"
                                     ("RNF43" "ONT:GENE" :ID "HGNC:18505" :NAME
                                      "ring finger protein 43"))
                                    ("orig" "RHBDD1" "UP:Q8TEB9"
                                     ("RHBDD1" "ONT:GENE" :ID "HGNC:23081"
                                      :NAME "rhomboid domain containing 1"))
                                    ("orig" "RELN" "UP:P78509"
                                     ("RELN" "ONT:GENE" :ID "HGNC:9957" :NAME
                                      "reelin"))
                                    ("downcase" "ptf1a" "UP:Q7RTS3"
                                     ("Ptf1a" "ONT:GENE" :ID "HGNC:23734" :NAME
                                      "pancreas specific transcription factor, 1a"))
                                    ("downcase" "prdx3" "UP:P30048"
                                     ("Prdx3" "ONT:GENE" :ID "HGNC:9354" :NAME
                                      "peroxiredoxin 3"))
                                    ("downcase" "piezo1" "UP:Q92508"
                                     ("Piezo1" "ONT:GENE" :ID "HGNC:28993"
                                      :NAME
                                      "piezo type mechanosensitive ion channel component 1"))
                                    ("orig" "PTX3" "UP:P26022"
                                     ("PTX3" "ONT:GENE" :ID "HGNC:9692" :NAME
                                      "pentraxin 3"))
                                    ("orig" "PTER" "UP:Q96BW5"
                                     ("PTER" "ONT:GENE" :ID "HGNC:9590" :NAME
                                      "phosphotriesterase related"))
                                    ("orig" "PNN" "UP:Q9H307"
                                     ("PNN" "ONT:GENE" :ID "HGNC:9162" :NAME
                                      "pinin, desmosome associated protein"))
                                    ("orig" "PLN" "UP:P26678"
                                     ("PLN" "ONT:GENE" :ID "HGNC:9080" :NAME
                                      "phospholamban"))
                                    ("orig" "PLCzeta" "UP:Q86YW0"
                                     ("PLCzeta" "ONT:GENE" :ID "HGNC:19218"
                                      :NAME "phospholipase C zeta 1"))
                                    ("orig" "PI4KA" "UP:P42356"
                                     ("PI4KA" "ONT:GENE" :ID "HGNC:8983" :NAME
                                      "phosphatidylinositol 4-kinase alpha"))
                                    ("orig" "PHB1" "UP:P35232"
                                     ("PHB1" "ONT:GENE" :ID "HGNC:8912" :NAME
                                      "prohibitin"))
                                    ("orig" "PGRMC1" "UP:O00264"
                                     ("PGRMC1" "ONT:GENE" :ID "HGNC:16090"
                                      :NAME
                                      "progesterone receptor membrane component 1"))
                                    ("orig" "PDZK1" "UP:Q5T2W1"
                                     ("PDZK1" "ONT:GENE" :ID "HGNC:8821" :NAME
                                      "PDZ domain containing 1"))
                                    ("orig" "PDK4" "UP:Q16654"
                                     ("PDK4" "ONT:GENE" :ID "HGNC:8812" :NAME
                                      "pyruvate dehydrogenase kinase 4"))
                                    ("orig" "OTX1" "UP:P32242"
                                     ("OTX1" "ONT:GENE" :ID "HGNC:8521" :NAME
                                      "orthodenticle homeobox 1"))
                                    ("orig" "OGD" "UP:Q01F03"
                                     ("OGD" "ONT:GENE" :ID "NCIT:C51542" :NAME
                                      "FGFR1"))
                                    ("orig" "OCN" "UP:P02818"
                                     ("OCN" "ONT:GENE" :ID "HGNC:1043" :NAME
                                      "bone gamma-carboxyglutamate protein"))
                                    ("downcase" "nrf-2" "UP:Q16236"
                                     ("Nrf-2" "ONT:GENE" :ID "NCIT:C54238"
                                      :NAME "NFE2L2"))
                                    ("downcase" "nmnat1" "UP:Q9HAN9"
                                     ("Nmnat1" "ONT:GENE" :ID "HGNC:17877"
                                      :NAME
                                      "nicotinamide nucleotide adenylyltransferase 1"))
                                    ("upcase" "NALP3" "UP:Q96P20"
                                     ("Nalp3" "ONT:GENE" :ID "NCIT:C77203"
                                      :NAME "NLRP3"))
                                    ("orig" "NaV1.7" "UP:Q15858"
                                     ("NaV1.7" "ONT:GENE" :ID "NCIT:C114811"
                                      :NAME "SCN9A"))
                                    ("orig" "NR4A2" "UP:P43354"
                                     ("NR4A2" "ONT:GENE" :ID "HGNC:7981" :NAME
                                      "nuclear receptor subfamily 4 group A member 2"))
                                    ("orig" "NOX4" "UP:Q9NPH5"
                                     ("NOX4" "ONT:GENE" :ID "HGNC:7891" :NAME
                                      "NADPH oxidase 4"))
                                    ("orig" "NOX2" "UP:P04839"
                                     ("NOX2" "ONT:GENE" :ID "NCIT:C106595"
                                      :NAME "CYBB"))
                                    ("orig" "NORE1A" "UP:Q8WWW0"
                                     ("NORE1A" "ONT:GENE" :ID "NCIT:C104721"
                                      :NAME "RASSF5"))
                                    ("orig" "NLRP3" "UP:Q96P20"
                                     ("NLRP3" "ONT:GENE" :ID "HGNC:16400" :NAME
                                      "NLR family pyrin domain containing 3"))
                                    ("orig" "NKG2D" "UP:P26718"
                                     ("NKG2D" "ONT:GENE" :ID "NCIT:C101751"
                                      :NAME "KLRK1"))
                                    ("orig" "NKD1" "UP:Q969G9"
                                     ("NKD1" "ONT:GENE" :ID "HGNC:17045" :NAME
                                      "naked cuticle homolog 1"))
                                    ("orig" "NKCC1" "UP:P55011"
                                     ("NKCC1" "ONT:GENE" :ID "NCIT:C102514"
                                      :NAME "SLC12A2"))
                                    ("orig" "NK2" "UP:P22808"
                                     ("NK2" "ONT:GENE" :ID "NCIT:C52389" :NAME
                                      "TAC1"))
                                    ("orig" "NEUROG2" "UP:Q9H2A3"
                                     ("NEUROG2" "ONT:GENE" :ID "HGNC:13805"
                                      :NAME "neurogenin 2"))
                                    ("orig" "NEU3" "UP:Q9UQ49"
                                     ("NEU3" "ONT:GENE" :ID "HGNC:7760" :NAME
                                      "neuraminidase 3"))
                                    ("orig" "NEIL1" "UP:Q96FI4"
                                     ("NEIL1" "ONT:GENE" :ID "HGNC:18448" :NAME
                                      "nei like DNA glycosylase 1"))
                                    ("orig" "MyoD1" "UP:P15172"
                                     ("MyoD1" "ONT:GENE" :ID "HGNC:7611" :NAME
                                      "myogenic differentiation 1"))
                                    ("orig" "MrgX4" "UP:Q96LA9"
                                     ("MrgX4" "ONT:GENE" :ID "HGNC:17617" :NAME
                                      "MAS related GPR family member X4"))
                                    ("orig" "MrgX3" "UP:Q96LB0"
                                     ("MrgX3" "ONT:GENE" :ID "HGNC:17980" :NAME
                                      "MAS related GPR family member X3"))
                                    ("orig" "MrgX2" "UP:Q96LB1"
                                     ("MrgX2" "ONT:GENE" :ID "NCIT:C124963"
                                      :NAME "MRGPRX2"))
                                    ("downcase" "mid1" "UP:O15344"
                                     ("Mid1" "ONT:GENE" :ID "HGNC:7095" :NAME
                                      "midline 1"))
                                    ("downcase" "mfn2" "UP:O95140"
                                     ("Mfn2" "ONT:GENE" :ID "HGNC:16877" :NAME
                                      "mitofusin 2"))
                                    ("orig" "MYPT1" "UP:O14974"
                                     ("MYPT1" "ONT:GENE" :ID "HGNC:7618" :NAME
                                      "protein phosphatase 1 regulatory subunit 12A"))
                                    ("orig" "MTA1" "UP:Q13330"
                                     ("MTA1" "ONT:GENE" :ID "HGNC:7410" :NAME
                                      "metastasis associated 1"))
                                    ("orig" "MRE11" "UP:P49959"
                                     ("MRE11" "ONT:GENE" :ID "NCIT:C98168"
                                      :NAME "MRE11A"))
                                    ("orig" "MLK1" "UP:P80192"
                                     ("MLK1" "ONT:GENE" :ID "HGNC:6861" :NAME
                                      "mitogen-activated protein kinase kinase kinase 9"))
                                    ("orig" "MEST" "UP:Q5EB52"
                                     ("MEST" "ONT:GENE" :ID "HGNC:7028" :NAME
                                      "mesoderm specific transcript"))
                                    ("orig" "MEF" "UP:Q99607"
                                     ("MEF" "ONT:GENE" :ID "NCIT:C97473" :NAME
                                      "ELF4"))
                                    ("orig" "MBNL1" "UP:Q9NR56"
                                     ("MBNL1" "ONT:GENE" :ID "HGNC:6923" :NAME
                                      "muscleblind like splicing regulator 1"))
                                    ("orig" "MAP3K17" "UP:Q9UL54"
                                     ("MAP3K17" "ONT:GENE" :ID "HGNC:16835"
                                      :NAME "TAO kinase 2"))
                                    ("orig" "MANF" "UP:P55145"
                                     ("MANF" "ONT:GENE" :ID "HGNC:15461" :NAME
                                      "mesencephalic astrocyte derived neurotrophic factor"))
                                    ("downcase" "lnk" "UP:Q9UQQ2"
                                     ("Lnk" "ONT:GENE" :ID "NCIT:C102803" :NAME
                                      "SH2B3"))
                                    ("downcase" "lgi4" "UP:Q8N135"
                                     ("Lgi4" "ONT:GENE" :ID "HGNC:18712" :NAME
                                      "leucine rich repeat LGI family member 4"))
                                    ("orig" "LRIG1" "UP:Q96JA1"
                                     ("LRIG1" "ONT:GENE" :ID "HGNC:17360" :NAME
                                      "leucine rich repeats and immunoglobulin like domains 1"))
                                    ("orig" "LRCC" "UP:P07954"
                                     ("LRCC" "ONT:GENE" :ID "NCIT:C95269" :NAME
                                      "FH"))
                                    ("orig" "LC3B" "UP:Q9GZQ8"
                                     ("LC3B" "ONT:GENE" :ID "NCIT:C116659"
                                      :NAME "MAP1LC3B"))
                                    ("orig" "LAMA4" "UP:Q16363"
                                     ("LAMA4" "ONT:GENE" :ID "HGNC:6484" :NAME
                                      "laminin subunit alpha 4"))
                                    ("downcase" "krox20" "UP:P11161"
                                     ("Krox20" "ONT:GENE" :ID "HGNC:3239" :NAME
                                      "early growth response 2"))
                                    ("downcase" "klf5" "UP:Q13887"
                                     ("Klf5" "ONT:GENE" :ID "HGNC:6349" :NAME
                                      "Kruppel like factor 5"))
                                    ("orig" "KLHL12" "UP:Q53G59"
                                     ("KLHL12" "ONT:GENE" :ID "HGNC:19360"
                                      :NAME "kelch like family member 12"))
                                    ("orig" "KLF4" "UP:O43474"
                                     ("KLF4" "ONT:GENE" :ID "HGNC:6348" :NAME
                                      "Kruppel like factor 4"))
                                    ("orig" "KDM2B" "UP:Q8NHM5"
                                     ("KDM2B" "ONT:GENE" :ID "HGNC:13610" :NAME
                                      "lysine demethylase 2B"))
                                    ("orig" "KCC2" "UP:Q9H2X9"
                                     ("KCC2" "ONT:GENE" :ID "HGNC:13818" :NAME
                                      "solute carrier family 12 member 5"))
                                    ("downcase" "jub" "UP:Q96IF1"
                                     ("Jub" "ONT:GENE" :ID "NCIT:C115437" :NAME
                                      "AJUBA"))
                                    ("downcase" "ink4a" "UP:P42771"
                                     ("Ink4a" "ONT:GENE" :ID "NCIT:C49511"
                                      :NAME "CDKN2A"))
                                    ("downcase" "ikaros" "UP:Q13422"
                                     ("Ikaros" "ONT:GENE" :ID "NCIT:C68731"
                                      :NAME "IKZF1"))
                                    ("orig" "HSP47" "UP:P50454"
                                     ("HSP47" "ONT:GENE" :ID "HGNC:1546" :NAME
                                      "serpin family H member 1"))
                                    ("orig" "HHLA2" "UP:Q9UM44"
                                     ("HHLA2" "ONT:GENE" :ID "HGNC:4905" :NAME
                                      "HERV-H LTR-associating 2"))
                                    ("orig" "HES5" "UP:Q5TA89"
                                     ("HES5" "ONT:GENE" :ID "HGNC:19764" :NAME
                                      "hes family bHLH transcription factor 5"))
                                    ("orig" "HES1" "UP:Q14469"
                                     ("HES1" "ONT:GENE" :ID "HGNC:5192" :NAME
                                      "hes family bHLH transcription factor 1"))
                                    ("orig" "HCRP1" "UP:Q8NEZ2"
                                     ("HCRP1" "ONT:GENE" :ID "HGNC:24928" :NAME
                                      "VPS37A, ESCRT-I subunit"))
                                    ("downcase" "gpr34" "UP:Q9UPC5"
                                     ("Gpr34" "ONT:GENE" :ID "HGNC:4490" :NAME
                                      "G protein-coupled receptor 34"))
                                    ("downcase" "gata4" "UP:P43694"
                                     ("Gata4" "ONT:GENE" :ID "HGNC:4173" :NAME
                                      "GATA binding protein 4"))
                                    ("orig" "GMPR" "UP:P36959"
                                     ("GMPR" "ONT:GENE" :ID "HGNC:4376" :NAME
                                      "guanosine monophosphate reductase"))
                                    ("downcase" "fn14" "UP:Q9NP84"
                                     ("Fn14" "ONT:GENE" :ID "NCIT:C117072"
                                      :NAME "TNFRSF12A"))
                                    ("orig" "FSTL1" "UP:Q12841"
                                     ("FSTL1" "ONT:GENE" :ID "HGNC:3972" :NAME
                                      "follistatin like 1"))
                                    ("orig" "FPRL1" "UP:P25090"
                                     ("FPRL1" "ONT:GENE" :ID "HGNC:3827" :NAME
                                      "formyl peptide receptor 2"))
                                    ("orig" "FGE" "UP:Q8NBK3"
                                     ("FGE" "ONT:GENE" :ID "NCIT:C127892" :NAME
                                      "SUMF1"))
                                    ("orig" "FES" "UP:P07332"
                                     ("FES" "ONT:GENE" :ID "HGNC:3657" :NAME
                                      "FES proto-oncogene, tyrosine kinase"))
                                    ("orig" "FBW7" "UP:Q969H0"
                                     ("FBW7" "ONT:GENE" :ID "NCIT:C50390" :NAME
                                      "FBXW7"))
                                    ("orig" "FBS" "UP:Q9HAH7"
                                     ("FBS" "ONT:GENE" :ID "HGNC:20442" :NAME
                                      "fibrosin"))
                                    ("orig" "FAM3A" "UP:P98173"
                                     ("FAM3A" "ONT:GENE" :ID "HGNC:13749" :NAME
                                      "family with sequence similarity 3 member A"))
                                    ("orig" "ErbB" "UP:P00533"
                                     ("ErbB" "ONT:GENE" :ID "NCIT:C17763" :NAME
                                      "oncogene ERB-B"))
                                    ("downcase" "epac" "UP:O95398"
                                     ("Epac" "ONT:GENE" :ID "HGNC:16629" :NAME
                                      "Rap guanine nucleotide exchange factor 3"))
                                    ("orig" "ERRF" "UP:Q8NEQ6"
                                     ("ERRF" "ONT:GENE" :ID "HGNC:28339" :NAME
                                      "chromosome 1 open reading frame 64"))
                                    ("orig" "EED" "UP:O75530"
                                     ("EED" "ONT:GENE" :ID "HGNC:3188" :NAME
                                      "embryonic ectoderm development"))
                                    ("orig" "EEA1" "UP:Q15075"
                                     ("EEA1" "ONT:GENE" :ID "HGNC:3185" :NAME
                                      "early endosome antigen 1"))
                                    ("orig" "ECM" "UP:Q13201"
                                     ("ECM" "ONT:GENE" :ID "NCIT:C115183" :NAME
                                      "MMRN1"))
                                    ("orig" "DclK1" "UP:O15075"
                                     ("DclK1" "ONT:GENE" :ID "HGNC:2700" :NAME
                                      "doublecortin like kinase 1"))
                                    ("downcase" "dab1" "UP:O75553"
                                     ("Dab1" "ONT:GENE" :ID "HGNC:2661" :NAME
                                      "DAB1, reelin adaptor protein"))
                                    ("orig" "DSS" "UP:Q01453"
                                     ("DSS" "ONT:GENE" :ID "NCIT:C75901" :NAME
                                      "PMP22"))
                                    ("orig" "DSG2" "UP:Q14126"
                                     ("DSG2" "ONT:GENE" :ID "HGNC:3049" :NAME
                                      "desmoglein 2"))
                                    ("orig" "DRG" "UP:Q9Y295"
                                     ("DRG" "ONT:GENE" :ID "NCIT:C126990" :NAME
                                      "DRG1"))
                                    ("orig" "DMRTA1" "UP:Q5VZB9"
                                     ("DMRTA1" "ONT:GENE" :ID "HGNC:13826"
                                      :NAME "DMRT like family A1"))
                                    ("downcase" "cten" "UP:Q8IZW8"
                                     ("Cten" "ONT:GENE" :ID "HGNC:24352" :NAME
                                      "tensin 4"))
                                    ("downcase" "cited1" "UP:Q99966"
                                     ("Cited1" "ONT:GENE" :ID "HGNC:1986" :NAME
                                      "Cbp/p300 interacting transactivator with Glu/Asp rich carboxy-terminal domain 1"))
                                    ("orig" "CTGF" "UP:P29279"
                                     ("CTGF" "ONT:GENE" :ID "HGNC:2500" :NAME
                                      "connective tissue growth factor"))
                                    ("orig" "CSE" "UP:Q9C942"
                                     ("CSE" "ONT:GENE" :ID "HGNC:11005" :NAME
                                      "solute carrier family 2 member 1"))
                                    ("orig" "CRS" "UP:Q15672"
                                     ("CRS" "ONT:GENE" :ID "HGNC:12428" :NAME
                                      "twist family bHLH transcription factor 1"))
                                    ("orig" "CRL4" "UP:Q9NRM6"
                                     ("CRL4" "ONT:GENE" :ID "NCIT:C97969" :NAME
                                      "IL17RB"))
                                    ("orig" "CORT" "UP:O00230"
                                     ("CORT" "ONT:GENE" :ID "HGNC:2257" :NAME
                                      "cortistatin"))
                                    ("orig" "CLK4" "UP:Q9HAZ1"
                                     ("CLK4" "ONT:GENE" :ID "HGNC:13659" :NAME
                                      "CDC like kinase 4"))
                                    ("orig" "CLCA1" "UP:A8K7I4"
                                     ("CLCA1" "ONT:GENE" :ID "HGNC:2015" :NAME
                                      "chloride channel accessory 1"))
                                    ("orig" "CGREF1" "UP:Q99674"
                                     ("CGREF1" "ONT:GENE" :ID "HGNC:16962"
                                      :NAME
                                      "cell growth regulator with EF-hand domain 1"))
                                    ("orig" "CEBPD" "UP:P49716"
                                     ("CEBPD" "ONT:GENE" :ID "HGNC:1835" :NAME
                                      "CCAAT/enhancer binding protein delta"))
                                    ("orig" "CDT2" "UP:Q9NZJ0"
                                     ("CDT2" "ONT:GENE" :ID "NCIT:C101609"
                                      :NAME "DTL"))
                                    ("orig" "CD39" "UP:P49961"
                                     ("CD39" "ONT:GENE" :ID "NCIT:C113580"
                                      :NAME "ENTPD1"))
                                    ("orig" "CD31" "UP:Q08481"
                                     ("CD31" "ONT:GENE" :ID "NCIT:C51186" :NAME
                                      "PECAM1"))
                                    ("orig" "CCL28" "UP:Q9NRJ3"
                                     ("CCL28" "ONT:GENE" :ID "HGNC:17700" :NAME
                                      "C-C motif chemokine ligand 28"))
                                    ("orig" "C/EBPbeta" "UP:P17676"
                                     ("C/EBPbeta" "ONT:GENE" :ID "NCIT:C104117"
                                      :NAME "CEBPB"))
                                    ("downcase" "bis" "UP:O95817"
                                     ("Bis" "ONT:GENE" :ID "NCIT:C105995" :NAME
                                      "BAG3"))
                                    ("orig" "BFT" "UP:P78337"
                                     ("BFT" "ONT:GENE" :ID "HGNC:9004" :NAME
                                      "paired like homeodomain 1"))
                                    ("orig" "BECN1" "UP:Q14457"
                                     ("BECN1" "ONT:GENE" :ID "HGNC:1034" :NAME
                                      "beclin 1"))
                                    ("orig" "ApoA1" "UP:P02647"
                                     ("ApoA1" "ONT:GENE" :ID "HGNC:600" :NAME
                                      "apolipoprotein A1"))
                                    ("orig" "ATF4" "UP:P18848"
                                     ("ATF4" "ONT:GENE" :ID "HGNC:786" :NAME
                                      "activating transcription factor 4"))
                                    ("orig" "ASK3" "UP:Q6ZN16"
                                     ("ASK3" "ONT:GENE" :ID "HGNC:31689" :NAME
                                      "mitogen-activated protein kinase kinase kinase 15"))
                                    ("orig" "ASCT2" "UP:Q15758"
                                     ("ASCT2" "ONT:GENE" :ID "NCIT:C118926"
                                      :NAME "SLC1A5"))
                                    ("orig" "ARID1B" "UP:Q8NFD5"
                                     ("ARID1B" "ONT:GENE" :ID "HGNC:18040"
                                      :NAME "AT-rich interaction domain 1B"))
                                    ("orig" "APJ" "UP:P35414"
                                     ("APJ" "ONT:GENE" :ID "HGNC:339" :NAME
                                      "apelin receptor"))
                                    ("orig" "ANGPTL4" "UP:Q9BY76"
                                     ("ANGPTL4" "ONT:GENE" :ID "HGNC:16039"
                                      :NAME "angiopoietin like 4"))
                                    ("orig" "ANF" "UP:Q9UBX0"
                                     ("ANF" "ONT:GENE" :ID "HGNC:4877" :NAME
                                      "HESX homeobox 1"))
                                    ("orig" "AID" "UP:Q9GZX7"
                                     ("AID" "ONT:GENE" :ID "NCIT:C101414" :NAME
                                      "AICDA"))
                                    ("orig" "ABCG1" "UP:P45844"
                                     ("ABCG1" "ONT:GENE" :ID "HGNC:73" :NAME
                                      "ATP binding cassette subfamily G member 1"))
                                    ("orig" "ABCA7" "UP:Q8IZY2"
                                     ("ABCA7" "ONT:GENE" :ID "HGNC:37" :NAME
                                      "ATP binding cassette subfamily A member 7"))
                                    ("orig" "ABCA1" "UP:O95477"
                                     ("ABCA1" "ONT:GENE" :ID "HGNC:29" :NAME
                                      "ATP binding cassette subfamily A member 1"))
                                    ("orig" "rosiglitazone" "NCIT:C2583"
                                     ("rosiglitazone"
                                      "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                      "MESH:C089730" :NAME "rosiglitazone"))
                                    ("hyphens" "U2OS" "CVCL:0042"
                                     ("U2-OS" "ONT:CELL-LINE" :ID "EFO:0002869"
                                      :NAME "U2OS"))
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
                                    ("orig" "DT40" "CVCL:0249"
                                     ("DT40" "ONT:CELL-LINE" :ID "EFO:0006274"
                                      :NAME "DT40"))
                                    ("orig" "nucleus" "GO:0005634"
                                     ("nucleus" "ONT:CELL-PART" :ID
                                      "UP:SL-0191" :NAME "Nucleus"))
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
                                      "UP:SL-0086" :NAME "Cytoplasm"))))

(defparameter *ID-AND-CAT-MISMATCH* '(("hyphens" "ML7" "UP:P16260" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("ML-7" "pubchem" :TYPE
                                        "simple-chemical" :ID "PCID:4216"))
                                      ("orig" "prostaglandin E2" "CHEBI:15551"
                                       :OLD-CAT DRUG :NEW-CAT MOLECULE
                                       ("prostaglandin E2" "pubchem" :TYPE
                                        "simple-chemical" :ID "PCID:5280360"))
                                      ("downcase" "hydrogen peroxide"
                                       "NCIT:C28156" :OLD-CAT DRUG :NEW-CAT
                                       MOLECULE
                                       ("Hydrogen peroxide" "pubchem" :TYPE
                                        "simple-chemical" :ID "PCID:784"))
                                      ("orig" "oxidized glutathione"
                                       "NCIT:C62624" :OLD-CAT DRUG :NEW-CAT
                                       MOLECULE
                                       ("oxidized glutathione" "pubchem" :TYPE
                                        "simple-chemical" :ID "PCID:975"))
                                      ("orig" "sphingosine 1-phosphate"
                                       "CHEBI:37550" :OLD-CAT DRUG :NEW-CAT
                                       MOLECULE
                                       ("sphingosine 1-phosphate" "pubchem"
                                        :TYPE "simple-chemical" :ID
                                        "PCID:5353956"))
                                      ("orig" "adipokinetic hormone"
                                       "UP:P84241" :OLD-CAT PROTEIN :NEW-CAT
                                       PROTEIN-FAMILY
                                       ("adipokinetic hormone" "pfam" :TYPE
                                        "family" :ID "XFAM:PF06377"))
                                      ("orig"
                                       "second mitochondria derived activator of caspase"
                                       "UP:Q9NR28" :OLD-CAT PROTEIN :NEW-CAT
                                       PROTEIN-FAMILY
                                       ("second mitochondria derived activator of caspase"
                                        "pfam" :TYPE "family" :ID
                                        "XFAM:PF09057"))
                                      ("orig"
                                       "vascular cell adhesion molecule-1"
                                       "UP:P19320" :OLD-CAT PROTEIN :NEW-CAT
                                       PROTEIN-FAMILY
                                       ("vascular cell adhesion molecule-1"
                                        "interpro" :TYPE "family" :ID
                                        "IPR003989"))
                                      ("orig" "cell membrane" "GO:0005886"
                                       :OLD-CAT PLASMA-MEMBRANE :NEW-CAT
                                       CELLULAR-LOCATION
                                       ("cell membrane" "uniprot" :TYPE
                                        "cellular-component" :ID "UP:SL-0039"))
                                      ("hyphens" "TPC1" "UP:Q9ULQ1" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TPC-1" "cellosaurus" :TYPE "cellline"
                                        :ID "CVCL:6298"))
                                      ("hyphens-dc" "d11" "UP:P31277" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("D1-1" "cellosaurus" :TYPE "cellline"
                                        :ID "CVCL:3502"))
                                      ("orig" "DNA replication" "NCIT:C16514"
                                       :OLD-CAT BIO-PROCESS :NEW-CAT
                                       CELLULAR-PROCESS
                                       ("DNA replication" "go" :TYPE
                                        "bioprocess" :ID "GO:0006260"))
                                      ("orig" "glutathione peroxidase"
                                       "UP:Q98234" :OLD-CAT PROTEIN :NEW-CAT
                                       PROTEIN-FAMILY
                                       ("glutathione peroxidase" "pfam" :TYPE
                                        "family" :ID "XFAM:PF00255"))
                                      ("orig" "BH3" "XFAM:PF15285.4" :OLD-CAT
                                       PROTEIN-DOMAIN :NEW-CAT PROTEIN-FAMILY
                                       ("BH3" "pfam" :TYPE "family" :ID
                                        "XFAM:PF15285"))
                                      ("orig" "nucleoside diphosphate kinase"
                                       "UP:Q9UR66" :OLD-CAT PROTEIN :NEW-CAT
                                       PROTEIN-FAMILY
                                       ("nucleoside diphosphate kinase" "pfam"
                                        :TYPE "family" :ID "XFAM:PF00334"))
                                      ("orig" "clamp" "UP:Q0IH24" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("clamp" "pfam" :TYPE "family" :ID
                                        "XFAM:PF14769"))
                                      ("orig" "SV40" "NCIT:C14279" :OLD-CAT
                                       VIRUS :NEW-CAT ORGANISM
                                       ("SV40" "taxonomy" :TYPE "species" :ID
                                        "TI:10633"))
                                      ("hyphens-dc" "tak165" "NCIT:C66212"
                                       :OLD-CAT DRUG :NEW-CAT MOLECULE
                                       ("TAK-165" "pubchem" :TYPE
                                        "simple-chemical" :ID "PCID:644692"))
                                      ("orig" "AAD" "UP:A5FVT7" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("AAD" "pubchem" :TYPE "simple-chemical"
                                        :ID "PCID:469"))
                                      ("hyphens-dc" "panc1" "UP:B4RYN9"
                                       :OLD-CAT PROTEIN :NEW-CAT CELL-LINE
                                       ("Panc-1" "cellosaurus" :TYPE "cellline"
                                        :ID "CVCL:0480"))
                                      ("orig" "neur" "UP:O14594" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("neur" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF00064.16" :NAME "neur"))
                                      ("downcase" "snf" "UP:P43332" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("SNF" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF00209.16" :NAME "SNF"))
                                      ("orig" "SBF" "UP:P52747" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("SBF" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF01758.14" :NAME "SBF"))
                                      ("downcase" "nup" "UP:O93844" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Nup" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF06516.9" :NAME "NUP"))
                                      ("orig" "HIF" "UP:Q9NWT6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("HIF" "ONT:PROTEIN-FAMILY" :ID
                                        "NCIT:C113839" :NAME
                                        "hypoxia inducible factor family"))
                                      ("upcase" "MAS" "UP:P04201" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Mas" "ONT:GENE-PROTEIN" :ID "FA:01426"
                                        :NAME "mas subfamily"))
                                      ("orig" "HSPCs" "XFAM:PF02518" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT PROTEIN
                                       ("HSPCs" "ONT:GENE" :ID "HGNC:9536"
                                        :NAME "proteasome subunit alpha 7"))
                                      ("downcase" "galpha" "UP:P20353" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Galpha" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:01401" :NAME "G-alpha family"))
                                      ("upcase" "HOMER" "UP:Q9Z214" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Homer" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:01786" :NAME "homer family"))
                                      ("orig" "FLIM" "UP:P57182" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("FLIM" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF02154.13" :NAME "FliM"))
                                      ("orig" "alpha1" "UP:P0CY06" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-METHOD
                                       ("alpha1" "ONT:PROCEDURE" :ID
                                        "NCIT:C67050" :NAME
                                        "affy alpha1 significance"))
                                      ("orig" "TGF" "UP:P01137" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("TGF" "ONT:PROTEIN-FAMILY" :ID
                                        "NCIT:C20453" :NAME
                                        "transforming growth factor"))
                                      ("orig" "PP2B" "UP:P07978" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("PP2B" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:03002" :NAME "PP-2B subfamily"))
                                      ("orig" "PAF" "UP:Q15004" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("PAF" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF15715.3" :NAME "PAF"))
                                      ("orig" "IF3" "UP:P48676" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("IF3" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:01810" :NAME "IF-3 family"))
                                      ("downcase" "humanin" "UP:Q8IVG9"
                                       :OLD-CAT PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Humanin" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:04811" :NAME "humanin family"))
                                      ("orig" "progestins" "CHEBI:59826"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("progestins"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C776" :NAME
                                        "therapeutic progestin"))
                                      ("downcase" "ali" "UP:Q9V3E7" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("ALI"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0004610" :NAME
                                        "acute lung injury"))
                                      ("upcase" "MST1" "UP:Q13043" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Mst1" "ONT:CELL-LINE" :ID "CVCL:0J34"
                                        :NAME "MST-1"))
                                      ("orig" "CDK" "NCIT:C17767" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("CDK" "ONT:CELL-LINE" :ID "CVCL:R774"
                                        :NAME "DK1 [Tursiops]"))
                                      ("orig" "rad4" "UP:P14736" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("rad4" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF03835.13" :NAME "rad4"))
                                      ("orig" "endothelin" "UP:P05305" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("endothelin" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00322.15" :NAME "endothelin"))
                                      ("orig" "bromodomain" "UP:Q86IX6"
                                       :OLD-CAT PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("bromodomain" "ONT:MOLECULAR-DOMAIN"
                                        :ID "XFAM:PF00439.23" :NAME
                                        "bromodomain"))
                                      ("orig" "TIMP" "UP:P01033" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("TIMP" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00965.15" :NAME "TIMP"))
                                      ("orig" "SHD1" "UP:A6NKF1" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("SHD1" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF03983.10" :NAME "SHD1"))
                                      ("orig" "SAF" "UP:Q8BHF7" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("SAF" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF08666.10" :NAME "SAF"))
                                      ("orig" "SAB" "UP:O60239" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("SAB" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF04382.11" :NAME "SAB"))
                                      ("hyphens" "ProQ" "UP:A0KKL4" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Pro-Q" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF04352.11" :NAME "ProQ"))
                                      ("orig" "PRP19" "UP:Q9UMS4" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("PRP19" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF08606.9" :NAME "prp19"))
                                      ("hyphens" "PRC" "UP:Q5VV67" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("PR-C" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF05239.14" :NAME "PRC"))
                                      ("orig" "PGI" "UP:P06744" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("PGI" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00342.17" :NAME "PGI"))
                                      ("orig" "PDGF" "UP:P04085" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("PDGF" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00341.15" :NAME "PDGF"))
                                      ("orig" "PAM2" "UP:O14126" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("PAM2" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF07145.13" :NAME "PAM2"))
                                      ("orig" "NHL" "UP:Q9NZ71" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("NHL" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01436.19" :NAME "NHL"))
                                      ("orig" "LIM" "UP:Q25132" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("LIM" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00412.20" :NAME "LIM"))
                                      ("orig" "IRS" "UP:P41252" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("IRS" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF02174.15" :NAME "IRS"))
                                      ("upcase" "HMA" "UP:Q79FX8" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Hma" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00403.24" :NAME "HMA"))
                                      ("orig" "GFP" "UP:P42212" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("GFP" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01353.20" :NAME "GFP"))
                                      ("downcase" "fgf" "UP:P41444" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("FGF" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00167.16" :NAME "FGF"))
                                      ("orig" "DMA" "UP:P28067" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("DMA" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF03474.12" :NAME "DMA"))
                                      ("orig" "DED" "UP:Q9NY61" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("DED" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF01335.19" :NAME "DED"))
                                      ("downcase" "cdc24" "UP:P11433" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Cdc24" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF06395.9" :NAME "CDC24"))
                                      ("orig" "CTD" "UP:Q9HKT2" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("CTD" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF12815.5" :NAME "CTD"))
                                      ("orig" "CCT" "UP:Q9UPI3" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("CCT" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF06203.12" :NAME "CCT"))
                                      ("orig" "CARD" "UP:F6IBC7" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("CARD" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00619.19" :NAME "CARD"))
                                      ("downcase" "bro1" "UP:Q74ZJ6" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Bro1" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF03097.16" :NAME "BRO1"))
                                      ("orig" "BRK" "UP:Q13882" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("BRK" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF07533.14" :NAME "BRK"))
                                      ("orig" "AAA" "UP:Q39102" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("AAA" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF00004.27" :NAME "AAA"))
                                      ("hyphens" "wortmannin" "UP:Q13535"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("wortman-nin"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1277" :NAME "wortmannin"))
                                      ("orig" "rtPA" "UP:O31466" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("rtPA" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C39607" :NAME
                                        "recombinant tissue plasminogen activator"))
                                      ("hyphens" "proB" "UP:P0A7B5" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("pro-B" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C772" :NAME "probenecid"))
                                      ("orig" "heregulin" "UP:Q02297" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("heregulin"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1426" :NAME
                                        "recombinant heregulin"))
                                      ("orig" "gp120" "UP:Q14624" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("gp120" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C29554" :NAME
                                        "gp-120 antigen"))
                                      ("orig" "cycloheximide" "UP:P10109"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("cycloheximide"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:27641" :NAME "cycloheximide"))
                                      ("hyphens" "antioxidant" "UP:P30044"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("anti-oxidant"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C275" :NAME "antioxidant"))
                                      ("hyphens" "antimitotics" "CHEBI:64911"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("anti-mitotics"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C273" :NAME "antimitotic agent"))
                                      ("orig" "anandamide" "CHEBI:2700"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("anandamide"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C078814" :NAME "anandamide"))
                                      ("upcase" "SERPINB5" "UP:P36952" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("SerpinB5"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C085344" :NAME "SERPIN-B5"))
                                      ("orig" "STZ" "UP:Q11206" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("STZ" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C845" :NAME "streptozocin"))
                                      ("hyphens" "SP600125" "UP:P33981"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("SP-600125"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C432165" :NAME
                                        "anthra(1,9-cd)pyrazol-6(2H)-one"))
                                      ("orig" "SBI" "UP:Q2YVZ4" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("SBI" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C116883" :NAME
                                        "serum-derived bovine immunoglobulin protein isolate"))
                                      ("orig" "PP2" "UP:Q99463" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("PP2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "CHEBI:78331" :NAME "PP2"))
                                      ("hyphens" "PP2" "UP:Q99463" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("PP-2" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "CHEBI:78331" :NAME "PP2"))
                                      ("downcase" "pma" "UP:Q13794" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("PMA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C866" :NAME
                                        "tetradecanoylphorbol acetate"))
                                      ("orig" "PHA" "UP:P80463" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("PHA" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C88791" :NAME
                                        "phytohemagglutinin"))
                                      ("hyphens-dc" "np40" "CHEBI:63016"
                                       :OLD-CAT MOLECULE :NEW-CAT DRUG
                                       ("NP-40" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "MESH:C010615" :NAME
                                        "Nonidet P-40"))
                                      ("orig" "MTX" "UP:Q13505" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("MTX" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C642" :NAME "methotrexate"))
                                      ("hyphens" "MIP1beta" "UP:P13236"
                                       :OLD-CAT PROTEIN :NEW-CAT DRUG
                                       ("MIP-1beta"
                                        "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1467" :NAME
                                        "therapeutic human macrophage inflammatory protein-1 beta"))
                                      ("hyphens" "MG132" "UP:Q9NXV6" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("MG-132" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "CHEBI:75142" :NAME
                                        "N-benzyloxycarbonyl-L-leucyl-L-leucyl-L-leucinal"))
                                      ("hyphens" "MCP2" "UP:P80075" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("MCP-2" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C1671" :NAME
                                        "recombinant human macrophage chemoattractant protein-2"))
                                      ("downcase" "mbc" "UP:Q01815" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("MBC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1154" :NAME "carbendazim"))
                                      ("orig" "MB2" "UP:Q0KIY6" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("MB2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C005542" :NAME
                                        "S-(beta-p-methoxypropiophenone)thiamine"))
                                      ("orig" "IFN" "UP:P51526" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("IFN" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C584" :NAME
                                        "therapeutic interferon"))
                                      ("orig" "GL2" "UP:P46607" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("GL2" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C104256" :NAME
                                        "alpha-methylhomocysteine thiolactone"))
                                      ("orig" "FSH" "UP:P13709" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("FSH" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C71762" :NAME "folitropin"))
                                      ("orig" "DFC" "UP:F4J2K2" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("DFC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C76928" :NAME "dexelvucitabine"))
                                      ("downcase" "dcp" "UP:P12821" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("DCP" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C107676" :NAME "dicycloplatin"))
                                      ("hyphens" "COL3" "UP:Q9SK53" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("COL-3" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C2454" :NAME "COL-3"))
                                      ("orig" "CAI" "UP:P00915" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("CAI" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C1141" :NAME
                                        "carboxyamidotriazole"))
                                      ("orig" "CA125" "UP:Q8WXI7" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("CA125" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C325" :NAME
                                        "CA-125 antigen"))
                                      ("hyphens" "BB94" "UP:Q6HA08" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("BB-94" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C1529" :NAME "batimastat"))
                                      ("orig" "ATC" "UP:Q9ZNV5" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("ATC" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "NCIT:C2354" :NAME
                                        "thiazolidine carboxylic acid"))
                                      ("orig" "AN1" "UP:P80884" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("AN1" "ONT:PHARMACOLOGIC-SUBSTANCE" :ID
                                        "MESH:C100229" :NAME "amphetaminil"))
                                      ("orig" "ACTH" "UP:P01189" :OLD-CAT
                                       PROTEIN :NEW-CAT DRUG
                                       ("ACTH" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                        :ID "NCIT:C212" :NAME
                                        "therapeutic corticotropin"))
                                      ("orig" "phosphoinositide" "UP:Q6ZUJ8"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("phosphoinositide" "ONT:MOLECULE" :ID
                                        "CHEBI:18179" :NAME
                                        "phosphoinositide"))
                                      ("hyphens" "phosphoinositide" "UP:Q6ZUJ8"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("phospho-inositide" "ONT:MOLECULE" :ID
                                        "CHEBI:18179" :NAME
                                        "phosphoinositide"))
                                      ("hyphens" "phosphatidylinositol"
                                       "UP:Q9W1M7" :OLD-CAT PROTEIN :NEW-CAT
                                       MOLECULE
                                       ("phosphatidyl-inositol" "ONT:MOLECULE"
                                        :ID "CHEBI:28874" :NAME
                                        "phosphatidylinositol"))
                                      ("orig" "palmitoyl" "UP:Q15067" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("palmitoyl" "ONT:MOLECULE" :ID
                                        "CHEBI:45021" :NAME "palmitoyl group"))
                                      ("orig" "nicotinamide" "UP:P43490"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("nicotinamide" "ONT:MOLECULE" :ID
                                        "CHEBI:17154" :NAME "nicotinamide"))
                                      ("orig" "monoamine" "UP:Q05940" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("monoamine" "ONT:MOLECULE" :ID
                                        "CHEBI:63534" :NAME "monoamine"))
                                      ("orig" "glycerol" "UP:C0RM12" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("glycerol" "ONT:MOLECULE" :ID
                                        "CHEBI:17754" :NAME "glycerol"))
                                      ("orig" "apelin-36" "UP:Q9ULZ1" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("apelin-36" "ONT:MOLECULE" :ID
                                        "CHEBI:80132" :NAME "Apelin-36"))
                                      ("orig" "apelin-13" "UP:Q9ULZ1" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("apelin-13" "ONT:MOLECULE" :ID
                                        "CHEBI:80131" :NAME "Apelin-13"))
                                      ("downcase" "pfo" "UP:P0C2E9" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("PFO" "ONT:MOLECULE" :ID "CHEBI:53347"
                                        :NAME
                                        "poly(9,9'-dioctylfluorene) macromolecule"))
                                      ("orig" "PDAC" "UP:O34798" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("PDAC" "ONT:MOLECULE" :ID "CHEBI:53355"
                                        :NAME
                                        "poly(diallyldimethylammonium chloride) macromolecule"))
                                      ("orig" "PACAP38" "UP:P18509" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("PACAP38" "ONT:MOLECULE" :ID
                                        "CHEBI:80302" :NAME
                                        "Pituitary adenylate cyclase-activating peptide-38"))
                                      ("orig" "OCL" "UP:Q61146" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("OCL" "ONT:MOLECULE" :ID "CHEBI:29879"
                                        :NAME "chlorooxy group"))
                                      ("orig" "NAC" "UP:Q9C000" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("NAC" "ONT:MOLECULE" :ID "CHEBI:7421"
                                        :NAME "NAC"))
                                      ("downcase" "dpp" "UP:Q9NZW4" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Dpp" "ONT:MOLECULE" :ID "CHEBI:60069"
                                        :NAME "dipropyl phthalate"))
                                      ("hyphens" "CCK8" "UP:P06307" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("CCK-8" "ONT:MOLECULE" :ID
                                        "CHEBI:80327" :NAME
                                        "Cholecystokinin-8"))
                                      ("hyphens" "pH3" "UP:Q8NDX5" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("p-H3" "ONT:CHEMICAL" :ID "CHEBI:30278"
                                        :NAME "phosphane"))
                                      ("orig" "oxLDL" "UP:P78380" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("oxLDL" "ONT:CHEMICAL" :ID
                                        "CHEBI:60151" :NAME "oxidised LDL"))
                                      ("orig" "malonyl-CoA" "UP:O95822"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("malonyl-CoA" "ONT:CHEMICAL" :ID
                                        "CHEBI:15531" :NAME "malonyl-CoA"))
                                      ("hyphens" "endocrine" "UP:Q5W5W9"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("en-docrine" "ONT:CHEMICAL" :ID
                                        "CHEBI:24621" :NAME "hormone"))
                                      ("orig" "androgen" "UP:Q13772" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("androgen" "ONT:CHEMICAL" :ID
                                        "CHEBI:50113" :NAME "androgen"))
                                      ("hyphens" "androgen" "UP:Q13772"
                                       :OLD-CAT PROTEIN :NEW-CAT MOLECULE
                                       ("andro-gen" "ONT:CHEMICAL" :ID
                                        "CHEBI:50113" :NAME "androgen"))
                                      ("orig" "acetyl-CoA" "UP:Q9BWD1" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("acetyl-CoA" "ONT:CHEMICAL" :ID
                                        "CHEBI:15351" :NAME "acetyl-CoA"))
                                      ("downcase" "tcdd" "UP:Q7Z3E1" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("TCDD" "ONT:CHEMICAL" :ID "NCIT:C864"
                                        :NAME "tetrachlorodibenzodioxin"))
                                      ("orig" "TAA" "UP:P0C1B3" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("TAA" "ONT:CHEMICAL" :ID "NCIT:C44454"
                                        :NAME "thioacetamide"))
                                      ("orig" "SIS3" "UP:Q8GYT9" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("SIS3" "ONT:CHEMICAL" :ID "CHEBI:87461"
                                        :NAME "SIS3"))
                                      ("orig" "SFA" "UP:P32771" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("SFA" "ONT:CHEMICAL" :ID "CHEBI:26607"
                                        :NAME "saturated fatty acid"))
                                      ("orig" "SAM" "UP:Q9LDQ7" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("SAM" "ONT:CHEMICAL" :ID "CHEBI:67040"
                                        :NAME "S-adenosyl-L-methioninate"))
                                      ("orig" "SAH" "UP:Q53FZ2" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("SAH" "ONT:CHEMICAL" :ID "CHEBI:16680"
                                        :NAME "S-adenosyl-L-homocysteine"))
                                      ("orig" "PFOA" "UP:P0C2E9" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("PFOA" "ONT:CHEMICAL" :ID "CHEBI:35549"
                                        :NAME "perfluorooctanoic acid"))
                                      ("orig" "ICA" "UP:Q9DBD0" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("ICA" "ONT:CHEMICAL" :ID "CHEBI:29202"
                                        :NAME "isocyanic acid"))
                                      ("orig" "HOX" "UP:P93762" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("HOX" "ONT:CHEMICAL" :ID "CHEBI:46904"
                                        :NAME "oxalate(1-)"))
                                      ("hyphens" "GCB" "UP:P20594" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("GC-B" "ONT:CHEMICAL" :ID "CHEBI:74858"
                                        :NAME "GCB"))
                                      ("orig" "EGTA" "UP:A0R5N1" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("EGTA" "ONT:CHEMICAL" :ID "NCIT:C72097"
                                        :NAME "egtazic acid"))
                                      ("downcase" "dpr" "UP:P0CB53" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("DpR" "ONT:CHEMICAL" :ID "CHEBI:16313"
                                        :NAME "D-proline"))
                                      ("orig" "DPN" "UP:Q26263" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("DPN" "ONT:CHEMICAL" :ID "CHEBI:16998"
                                        :NAME "D-phenylalanine"))
                                      ("orig" "DMN" "UP:O15061" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("DMN" "ONT:CHEMICAL" :ID "NCIT:C44417"
                                        :NAME "N-nitrosodimethylamine"))
                                      ("orig" "DHA" "UP:Q8U671" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("DHA" "ONT:CHEMICAL" :ID "CHEBI:36005"
                                        :NAME "docosahexaenoic acid"))
                                      ("downcase" "cyt" "UP:P95339" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("Cyt" "ONT:CHEMICAL" :ID "CHEBI:16040"
                                        :NAME "cytosine"))
                                      ("orig" "CPP" "UP:Q64755" :OLD-CAT
                                       PROTEIN :NEW-CAT MOLECULE
                                       ("CPP" "ONT:CHEMICAL" :ID "CHEBI:34603"
                                        :NAME "CPP"))
                                      ("upcase" "SEH" "UP:P34913" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("sEH" "ONT:CELL-LINE" :ID "CVCL:R855"
                                        :NAME "SEH"))
                                      ("downcase" "rh3" "UP:Q8L7S8" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("rH3" "ONT:CELL-LINE" :ID "CVCL:L415"
                                        :NAME "Rh3"))
                                      ("orig" "p15" "UP:P41478" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("p15" "ONT:CELL-LINE" :ID "CVCL:6G55"
                                        :NAME "GEM-81 clone P15"))
                                      ("orig" "min" "UP:Q9UNW1" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("min" "ONT:CELL-LINE" :ID "CVCL:E777"
                                        :NAME "MIN"))
                                      ("orig" "mec1" "UP:Q75DB8" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("mec1" "ONT:CELL-LINE" :ID "CVCL:1870"
                                        :NAME "MEC-1"))
                                      ("upcase" "FLK-1" "UP:P35968" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("flk-1" "ONT:CELL-LINE" :ID "CVCL:M788"
                                        :NAME "FLK-1"))
                                      ("upcase" "CTB" "UP:Q01459" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ctb" "ONT:CELL-LINE" :ID "CVCL:9W61"
                                        :NAME "CTb"))
                                      ("upcase" "CDR2" "UP:Q01850" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cdr2" "ONT:CELL-LINE" :ID "CVCL:H172"
                                        :NAME "CDR2"))
                                      ("upcase" "CAL" "UP:Q9HD26" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("cal" "ONT:CELL-LINE" :ID "CVCL:E514"
                                        :NAME "CAL"))
                                      ("upcase" "BL6" "UP:P12877" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("bl6" "ONT:CELL-LINE" :ID "CVCL:M564"
                                        :NAME "BL-6"))
                                      ("upcase" "BC1" "UP:A2XHZ9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("bc1" "ONT:CELL-LINE" :ID "CVCL:1079"
                                        :NAME "BC-1"))
                                      ("upcase" "AP-2" "UP:P05549" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("aP-2" "ONT:CELL-LINE" :ID "CVCL:W419"
                                        :NAME "AP2"))
                                      ("orig" "ZEB2" "UP:O60315" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ZEB2" "ONT:CELL-LINE" :ID "CVCL:6E09"
                                        :NAME "ZEB2"))
                                      ("orig" "YAP" "UP:P46938" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("YAP" "ONT:CELL-LINE" :ID "CVCL:8467"
                                        :NAME "YAP"))
                                      ("upcase" "VP1" "UP:P03135" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Vp1" "ONT:CELL-LINE" :ID "CVCL:5623"
                                        :NAME "INER-51/VP-1"))
                                      ("orig" "VH1" "UP:P28562" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("VH1" "ONT:CELL-LINE" :ID "CVCL:V247"
                                        :NAME "V-H1"))
                                      ("downcase" "vg1" "UP:P09534" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("VG1" "ONT:CELL-LINE" :ID "CVCL:0106"
                                        :NAME "VG-1"))
                                      ("hyphens" "U87MG" "UP:Q8N9N8" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("U87-MG" "ONT:CELL-LINE" :ID
                                        "CVCL:0022" :NAME "U-87MG ATCC"))
                                      ("hyphens" "U87MG" "UP:Q8N9N8" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("U-87MG" "ONT:CELL-LINE" :ID
                                        "CVCL:0022" :NAME "U-87MG ATCC"))
                                      ("upcase" "TM4" "UP:Q40170" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Tm4" "ONT:CELL-LINE" :ID "CVCL:4327"
                                        :NAME "TM4"))
                                      ("hyphens" "TSG6" "UP:P98066" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TSG-6" "ONT:CELL-LINE" :ID "CVCL:S861"
                                        :NAME "TSG6"))
                                      ("orig" "TS2" "UP:Q9SSP5" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TS2" "ONT:CELL-LINE" :ID "CVCL:A323"
                                        :NAME "TS-2"))
                                      ("downcase" "tmk1" "UP:P43298" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TMK1" "ONT:CELL-LINE" :ID "CVCL:4384"
                                        :NAME "TMK-1"))
                                      ("hyphens-dc" "tmk1" "UP:P43298" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TMK-1" "ONT:CELL-LINE" :ID "CVCL:4384"
                                        :NAME "TMK-1"))
                                      ("orig" "TLR3" "UP:O15455" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TLR3" "ONT:CELL-LINE" :ID "CVCL:5601"
                                        :NAME "TLR3"))
                                      ("orig" "TLR1" "UP:Q15399" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TLR1" "ONT:CELL-LINE" :ID "CVCL:F955"
                                        :NAME "TLR1"))
                                      ("orig" "THP1" "UP:Q08231" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("THP1" "ONT:CELL-LINE" :ID "CVCL:0006"
                                        :NAME "THP-1"))
                                      ("hyphens" "THP1" "UP:Q08231" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("THP-1" "ONT:CELL-LINE" :ID "CVCL:0006"
                                        :NAME "THP-1"))
                                      ("downcase" "th2" "UP:Q9Y5Y4" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TH2" "ONT:CELL-LINE" :ID "EFO:0002804"
                                        :NAME "TH-2"))
                                      ("orig" "TEM" "UP:Q9H2S6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TEM" "ONT:CELL-LINE" :ID "CVCL:E844"
                                        :NAME "TEM"))
                                      ("orig" "TE1" "UP:Q42371" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TE1" "ONT:CELL-LINE" :ID "CVCL:1759"
                                        :NAME "TE-1"))
                                      ("hyphens" "TE1" "UP:Q42371" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TE-1" "ONT:CELL-LINE" :ID "CVCL:1759"
                                        :NAME "TE-1"))
                                      ("orig" "TANK" "UP:Q92844" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TANK" "ONT:CELL-LINE" :ID "CVCL:0E95"
                                        :NAME "Tank"))
                                      ("orig" "TAC" "UP:P03734" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("TAC" "ONT:CELL-LINE" :ID "CVCL:D939"
                                        :NAME "MRC-iPS-26"))
                                      ("downcase" "sp1" "UP:P08047" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Sp1" "ONT:CELL-LINE" :ID "CVCL:AZ65"
                                        :NAME "SP1"))
                                      ("hyphens-dc" "sp1" "UP:P08047" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Sp-1" "ONT:CELL-LINE" :ID "CVCL:R987"
                                        :NAME "SP-1"))
                                      ("upcase" "SIM" "UP:Q9LZ78" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Sim" "ONT:CELL-LINE" :ID "CVCL:0097"
                                        :NAME "SIM/EW27"))
                                      ("upcase" "SCAR" "UP:P62701" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Scar" "ONT:CELL-LINE" :ID "CVCL:D621"
                                        :NAME "SK-OV-3/CBP"))
                                      ("orig" "SakA" "UP:Q4WSF6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SakA" "ONT:CELL-LINE" :ID "CVCL:4803"
                                        :NAME "Saka"))
                                      ("orig" "SW480" "UP:O14763" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SW480" "ONT:CELL-LINE" :ID
                                        "EFO:0002083" :NAME "SW480"))
                                      ("hyphens" "ST2" "UP:Q06520" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ST-2" "ONT:CELL-LINE" :ID "CVCL:2205"
                                        :NAME "ST-2"))
                                      ("hyphens" "SPCA1" "UP:P98194" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SPC-A1" "ONT:CELL-LINE" :ID
                                        "CVCL:6955" :NAME "SPC-A1"))
                                      ("hyphens" "SNU16" "UP:Q06819" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SNU-16" "ONT:CELL-LINE" :ID
                                        "CVCL:0076" :NAME "SNU-16"))
                                      ("orig" "SNA" "UP:P19382" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SNA" "ONT:CELL-LINE" :ID "CVCL:E831"
                                        :NAME "SNA-BLL"))
                                      ("orig" "SLN" "UP:O00631" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SLN" "ONT:CELL-LINE" :ID "CVCL:S948"
                                        :NAME "SLN"))
                                      ("hyphens-dc" "skm1" "UP:P35499" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SKM-1" "ONT:CELL-LINE" :ID
                                        "EFO:0006753" :NAME "SKM-1"))
                                      ("orig" "SKH1" "UP:Q9Y884" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SKH1" "ONT:CELL-LINE" :ID "CVCL:C124"
                                        :NAME "SKH1"))
                                      ("hyphens" "SKH1" "UP:Q9Y884" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SKH-1" "ONT:CELL-LINE" :ID "CVCL:C124"
                                        :NAME "SKH1"))
                                      ("hyphens" "SIPS" "UP:P28628" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SIP-S" "ONT:CELL-LINE" :ID "CVCL:DF10"
                                        :NAME "SIPS"))
                                      ("orig" "SHS" "UP:Q24522" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SHS" "ONT:CELL-LINE" :ID "CVCL:6F94"
                                        :NAME "SHS"))
                                      ("orig" "SH4" "UP:P55248" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SH4" "ONT:CELL-LINE" :ID "CVCL:1692"
                                        :NAME "SH-4"))
                                      ("orig" "SH1" "UP:P19651" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SH1" "ONT:CELL-LINE" :ID "CVCL:C722"
                                        :NAME "SH1"))
                                      ("hyphens" "SET2" "FA:01770" :OLD-CAT
                                       PROTEIN-FAMILY :NEW-CAT CELL-LINE
                                       ("SET-2" "ONT:CELL-LINE" :ID
                                        "EFO:0006486" :NAME "SET-2"))
                                      ("orig" "SCP" "UP:Q9BRV3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SCP" "ONT:CELL-LINE" :ID "CVCL:4298"
                                        :NAME "SCP"))
                                      ("downcase" "scc" "UP:P05108" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SCC" "ONT:CELL-LINE" :ID "CVCL:1R13"
                                        :NAME "SCC-TC"))
                                      ("orig" "SC1" "UP:Q9Y242" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SC1" "ONT:CELL-LINE" :ID "CVCL:6F19"
                                        :NAME "SC1"))
                                      ("hyphens" "SBF1" "UP:O95248" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("SBF-1" "ONT:CELL-LINE" :ID "CVCL:R985"
                                        :NAME "SBF-1"))
                                      ("upcase" "RH30" "UP:Q8W4R3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Rh30" "ONT:CELL-LINE" :ID "CVCL:0041"
                                        :NAME "Rh30"))
                                      ("upcase" "RH2" "UP:Q94A52" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Rh2" "ONT:CELL-LINE" :ID "CVCL:A460"
                                        :NAME "Rh2"))
                                      ("downcase" "rh18" "UP:Q9FLB0" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Rh18" "ONT:CELL-LINE" :ID "CVCL:1659"
                                        :NAME "Rh18"))
                                      ("downcase" "rh1" "UP:Q68J47" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Rh1" "ONT:CELL-LINE" :ID "CVCL:1658"
                                        :NAME "Rh1"))
                                      ("hyphens-dc" "rec1" "UP:O60671" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Rec-1" "ONT:CELL-LINE" :ID
                                        "EFO:0002317" :NAME "REC1"))
                                      ("downcase" "rat2" "UP:P35729" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Rat2" "ONT:CELL-LINE" :ID "CVCL:0513"
                                        :NAME "Rat2"))
                                      ("downcase" "rat1" "UP:O22194" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Rat1" "ONT:CELL-LINE" :ID
                                        "NCIT:C19584" :NAME "rat-1"))
                                      ("hyphens-dc" "rat1" "UP:O22194" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Rat-1" "ONT:CELL-LINE" :ID
                                        "NCIT:C19584" :NAME "rat-1"))
                                      ("hyphens" "RS1" "UP:O15537" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("RS-1" "ONT:CELL-LINE" :ID "CVCL:8423"
                                        :NAME "RS-1"))
                                      ("orig" "RPE1" "UP:Q5D869" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("RPE1" "ONT:CELL-LINE" :ID "CVCL:4388"
                                        :NAME "hTERT-RPE1"))
                                      ("hyphens" "RPE1" "UP:Q5D869" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("RPE-1" "ONT:CELL-LINE" :ID "CVCL:4388"
                                        :NAME "hTERT-RPE1"))
                                      ("orig" "RH4" "UP:P41376" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("RH4" "ONT:CELL-LINE" :ID "CVCL:5916"
                                        :NAME "Rh4"))
                                      ("orig" "RGS" "UP:Q99697" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("RGS" "ONT:CELL-LINE" :ID "CVCL:1G60"
                                        :NAME "RGS"))
                                      ("downcase" "rgm1" "UP:Q00453" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("RGM1" "ONT:CELL-LINE" :ID "CVCL:0499"
                                        :NAME "RGM1"))
                                      ("orig" "RCP" "UP:P04000" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("RCP" "ONT:CELL-LINE" :ID "CVCL:4285"
                                        :NAME "RCP"))
                                      ("orig" "RBE" "UP:Q9LHS9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("RBE" "ONT:CELL-LINE" :ID "CVCL:4896"
                                        :NAME "RBE"))
                                      ("downcase" "panc1" "UP:B4RYN9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PanC1" "ONT:CELL-LINE" :ID
                                        "EFO:0002713" :NAME "Panc1"))
                                      ("orig" "PSC" "UP:P35820" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PSC" "ONT:CELL-LINE" :ID "CVCL:6G33"
                                        :NAME "P-SC(1)"))
                                      ("orig" "PR2" "UP:P33157" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PR2" "ONT:CELL-LINE" :ID "CVCL:T644"
                                        :NAME "LSCC-PR2"))
                                      ("hyphens" "PR2" "UP:P33157" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PR-2" "ONT:CELL-LINE" :ID "CVCL:T644"
                                        :NAME "LSCC-PR2"))
                                      ("orig" "PPC1" "UP:Q9MAH0" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PPC1" "ONT:CELL-LINE" :ID "CVCL:4778"
                                        :NAME "PPC-1"))
                                      ("orig" "PLC" "UP:P98160" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PLC" "ONT:CELL-LINE" :ID "CVCL:0485"
                                        :NAME "PLC/PRF/5"))
                                      ("orig" "PKR" "UP:P19525" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PKR" "ONT:CELL-LINE" :ID "CVCL:2693"
                                        :NAME "PKR"))
                                      ("orig" "PIG1" "UP:P47929" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PIG1" "ONT:CELL-LINE" :ID "CVCL:S410"
                                        :NAME "PIG1"))
                                      ("orig" "PGF" "UP:P49763" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PGF" "ONT:CELL-LINE" :ID "CVCL:E806"
                                        :NAME "PGF"))
                                      ("orig" "PFC" "UP:P27918" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PFC" "ONT:CELL-LINE" :ID "CVCL:6F45"
                                        :NAME "PFC"))
                                      ("orig" "PE1" "UP:P41162" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PE1" "ONT:CELL-LINE" :ID "CVCL:6G49"
                                        :NAME "PE-1"))
                                      ("hyphens" "PE1" "UP:P41162" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PE-1" "ONT:CELL-LINE" :ID "CVCL:6G49"
                                        :NAME "PE-1"))
                                      ("orig" "PDH" "UP:Q3L1D1" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PDH" "ONT:CELL-LINE" :ID "CVCL:1G98"
                                        :NAME "PDH"))
                                      ("orig" "PC9" "UP:Q8NBP7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PC9" "ONT:CELL-LINE" :ID "EFO:0002847"
                                        :NAME "PC-9"))
                                      ("orig" "PC7" "UP:Q16549" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PC7" "ONT:CELL-LINE" :ID "CVCL:A786"
                                        :NAME "PC-7"))
                                      ("orig" "PC4" "UP:P53999" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PC4" "ONT:CELL-LINE" :ID "CVCL:7090"
                                        :NAME "PC4"))
                                      ("orig" "PC3" "UP:P78543" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PC3" "ONT:CELL-LINE" :ID "CVCL:0035"
                                        :NAME "PC-3"))
                                      ("hyphens" "PC9" "UP:Q8NBP7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PC-9" "ONT:CELL-LINE" :ID
                                        "EFO:0002847" :NAME "PC-9"))
                                      ("hyphens" "PC2" "UP:O00257" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PC-2" "ONT:CELL-LINE" :ID "CVCL:0483"
                                        :NAME "PC2"))
                                      ("hyphens" "PB1" "UP:Q86U86" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PB-1" "ONT:CELL-LINE" :ID "CVCL:T881"
                                        :NAME "PB1"))
                                      ("orig" "PAC1" "UP:O95456" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PAC1" "ONT:CELL-LINE" :ID "CVCL:U511"
                                        :NAME "PAC1"))
                                      ("hyphens" "PAC1" "UP:O95456" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PAC-1" "ONT:CELL-LINE" :ID "CVCL:U511"
                                        :NAME "PAC1"))
                                      ("orig" "PA1" "UP:Q9BTK6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PA1" "ONT:CELL-LINE" :ID "CVCL:0479"
                                        :NAME "PA-1"))
                                      ("hyphens" "PA1" "UP:Q9BTK6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("PA-1" "ONT:CELL-LINE" :ID "CVCL:0479"
                                        :NAME "PA-1"))
                                      ("hyphens" "OKT3" "UP:P07766" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("OKT-3" "ONT:CELL-LINE" :ID "CVCL:2665"
                                        :NAME "OKT 3"))
                                      ("orig" "NT2" "UP:P59276" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("NT2" "ONT:CELL-LINE" :ID "CVCL:GZ03"
                                        :NAME "NT-2"))
                                      ("orig" "NT1" "UP:P60771" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("NT1" "ONT:CELL-LINE" :ID "EFO:0002707"
                                        :NAME "NT-1"))
                                      ("orig" "NOS2" "UP:P35228" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("NOS2" "ONT:CELL-LINE" :ID "CVCL:3351"
                                        :NAME "NOS-2"))
                                      ("hyphens-dc" "nim1" "UP:Q8IY84" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("NIM-1" "ONT:CELL-LINE" :ID "CVCL:5344"
                                        :NAME "NIM-1"))
                                      ("orig" "NAP" "UP:Q8WYA6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("NAP" "ONT:CELL-LINE" :ID "CVCL:HF46"
                                        :NAME "NAP"))
                                      ("downcase" "mst2" "UP:Q13188" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Mst2" "ONT:CELL-LINE" :ID "CVCL:0J35"
                                        :NAME "MST-2"))
                                      ("downcase" "melan-a" "UP:Q16655"
                                       :OLD-CAT PROTEIN :NEW-CAT CELL-LINE
                                       ("Melan-a" "ONT:CELL-LINE" :ID
                                        "CVCL:4624" :NAME "Melan-a"))
                                      ("upcase" "MEL-18" "UP:P35227" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Mel-18" "ONT:CELL-LINE" :ID
                                        "CVCL:H201" :NAME "Mel-18"))
                                      ("hyphens" "MX1" "UP:P20591" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MX-1" "ONT:CELL-LINE" :ID
                                        "EFO:0006457" :NAME "MX-1"))
                                      ("downcase" "mst3" "UP:Q9Y6E0" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MST3" "ONT:CELL-LINE" :ID "CVCL:0J36"
                                        :NAME "MST-3"))
                                      ("orig" "MS5" "UP:Q9SUC3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MS5" "ONT:CELL-LINE" :ID "CVCL:2128"
                                        :NAME "MS-5"))
                                      ("orig" "MS1" "UP:O50008" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MS1" "ONT:CELL-LINE" :ID "CVCL:6502"
                                        :NAME "MS1"))
                                      ("hyphens" "MS1" "UP:O50008" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MS-1" "ONT:CELL-LINE" :ID
                                        "EFO:0002836" :NAME "MS-1"))
                                      ("hyphens" "MR1" "UP:Q8N490" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MR-1" "ONT:CELL-LINE" :ID "CVCL:8964"
                                        :NAME "MR1"))
                                      ("orig" "MOR" "UP:P23848" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MOR" "ONT:CELL-LINE" :ID "CVCL:2618"
                                        :NAME "MOR"))
                                      ("hyphens" "MNT1" "UP:P27809" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MNT-1" "ONT:CELL-LINE" :ID "CVCL:5624"
                                        :NAME "MNT-1"))
                                      ("hyphens" "MN1" "UP:Q10571" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MN-1" "ONT:CELL-LINE" :ID "CVCL:W126"
                                        :NAME "MN-1"))
                                      ("orig" "MM1" "UP:O15031" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MM1" "ONT:CELL-LINE" :ID "EFO:0001219"
                                        :NAME "MM1"))
                                      ("orig" "MEF1" "UP:Q75CZ5" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MEF1" "ONT:CELL-LINE" :ID "CVCL:G312"
                                        :NAME "ME-F1"))
                                      ("hyphens" "MD2" "UP:Q9Y6Y9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MD-2" "ONT:CELL-LINE" :ID "CVCL:9220"
                                        :NAME "MD2"))
                                      ("orig" "MCF7" "UP:Q5SRH9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MCF7" "ONT:CELL-LINE" :ID "CVCL:0031"
                                        :NAME "MCF-7"))
                                      ("hyphens" "MCF7" "UP:Q5SRH9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MCF-7" "ONT:CELL-LINE" :ID "CVCL:0031"
                                        :NAME "MCF-7"))
                                      ("hyphens" "MA3" "UP:Q9UL41" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("MA-3" "ONT:CELL-LINE" :ID "CVCL:7068"
                                        :NAME "Ma-3"))
                                      ("upcase" "LAG" "UP:P54227" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Lag" "ONT:CELL-LINE" :ID "CVCL:B950"
                                        :NAME "LAG"))
                                      ("orig" "LO2" "UP:Q26495" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("LO2" "ONT:CELL-LINE" :ID "CVCL:6926"
                                        :NAME "L-02"))
                                      ("hyphens" "LN18" "UP:J9RB96" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("LN-18" "ONT:CELL-LINE" :ID
                                        "EFO:0006636" :NAME "LN-18"))
                                      ("orig" "LM8" "UP:P11734" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("LM8" "ONT:CELL-LINE" :ID "CVCL:6669"
                                        :NAME "LM8"))
                                      ("orig" "KO1" "UP:Q93ZB2" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("KO1" "ONT:CELL-LINE" :ID "CVCL:J425"
                                        :NAME "KO-1"))
                                      ("upcase" "JCAM1" "UP:O88792" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("JCaM1" "ONT:CELL-LINE" :ID "CVCL:0354"
                                        :NAME "J.CaM1.6"))
                                      ("orig" "JAR" "UP:Q01989" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("JAR" "ONT:CELL-LINE" :ID "EFO:0002211"
                                        :NAME "JAR"))
                                      ("downcase" "ins2" "UP:P12707" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Ins2" "ONT:CELL-LINE" :ID "CVCL:J993"
                                        :NAME "INS-2"))
                                      ("orig" "INS1" "UP:P12706" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("INS1" "ONT:CELL-LINE" :ID "CVCL:0352"
                                        :NAME "INS-1"))
                                      ("hyphens" "INS1" "UP:P12706" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("INS-1" "ONT:CELL-LINE" :ID
                                        "EFO:0002529" :NAME "INS-1"))
                                      ("hyphens" "IC2" "UP:P82475" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("IC-2" "ONT:CELL-LINE" :ID "CVCL:0341"
                                        :NAME "IC-2"))
                                      ("upcase" "HSP" "UP:P32590" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Hsp" "ONT:CELL-LINE" :ID "CVCL:5291"
                                        :NAME "HS-P"))
                                      ("downcase" "hct1" "UP:P53197" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Hct1" "ONT:CELL-LINE" :ID "CVCL:M747"
                                        :NAME "HCT-1"))
                                      ("orig" "HTR8" "UP:P59169" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HTR8" "ONT:CELL-LINE" :ID "CVCL:D728"
                                        :NAME "HTR-8"))
                                      ("hyphens" "HTR8" "UP:P59169" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HTR-8" "ONT:CELL-LINE" :ID "CVCL:D728"
                                        :NAME "HTR-8"))
                                      ("hyphens" "HT1080" "UP:O75794" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HT-1080" "ONT:CELL-LINE" :ID
                                        "EFO:0002059" :NAME "HT1080"))
                                      ("orig" "HSC2" "UP:P11146" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HSC2" "ONT:CELL-LINE" :ID "CVCL:1287"
                                        :NAME "HSC-2"))
                                      ("hyphens" "HSC4" "UP:P11147" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HSC-4" "ONT:CELL-LINE" :ID "CVCL:1289"
                                        :NAME "HSC-4"))
                                      ("hyphens" "HSC3" "UP:Q7Z6W7" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HSC-3" "ONT:CELL-LINE" :ID "CVCL:1288"
                                        :NAME "HSC-3"))
                                      ("hyphens" "HSC2" "UP:P11146" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HSC-2" "ONT:CELL-LINE" :ID "CVCL:1287"
                                        :NAME "HSC-2"))
                                      ("orig" "HPA" "UP:Q9Y251" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HPA" "ONT:CELL-LINE" :ID "CVCL:W418"
                                        :NAME "HPA"))
                                      ("orig" "HN6" "UP:P0CJ73" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HN6" "ONT:CELL-LINE" :ID "CVCL:8129"
                                        :NAME "HN-6"))
                                      ("orig" "HN5" "UP:P0CJ72" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HN5" "ONT:CELL-LINE" :ID "CVCL:8128"
                                        :NAME "HN-5"))
                                      ("orig" "HN1" "UP:P0CJ68" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HN1" "ONT:CELL-LINE" :ID "CVCL:8123"
                                        :NAME "HN-1"))
                                      ("hyphens" "HL60" "UP:Q9UM07" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HL-60" "ONT:CELL-LINE" :ID
                                        "NCIT:C19433" :NAME "HL60"))
                                      ("orig" "HES4" "UP:Q9HCC6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HES4" "ONT:CELL-LINE" :ID "CVCL:D094"
                                        :NAME "HES-4"))
                                      ("orig" "HEK" "UP:P29320" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HEK" "ONT:CELL-LINE" :ID "CVCL:M624"
                                        :NAME "HEK"))
                                      ("orig" "HCT116" "UP:O00444" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HCT116" "ONT:CELL-LINE" :ID
                                        "EFO:0002824" :NAME "HCT116"))
                                      ("hyphens" "HCT116" "UP:O00444" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HCT-116" "ONT:CELL-LINE" :ID
                                        "NCIT:C117161" :NAME "HCT-116"))
                                      ("hyphens" "HC11" "UP:P13500" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HC-11" "ONT:CELL-LINE" :ID "CVCL:0288"
                                        :NAME "HC11"))
                                      ("hyphens-dc" "haa1" "UP:Q12753" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("HA-A1" "ONT:CELL-LINE" :ID "CVCL:8960"
                                        :NAME "HAA1"))
                                      ("hyphens" "GS1" "UP:Q9Y4I1" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("GS-1" "ONT:CELL-LINE" :ID "CVCL:0H90"
                                        :NAME "GS1"))
                                      ("orig" "GM130" "UP:Q08379" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("GM130" "ONT:CELL-LINE" :ID "CVCL:7274"
                                        :NAME "GM00130"))
                                      ("orig" "GES-1" "UP:Q04456" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("GES-1" "ONT:CELL-LINE" :ID "CVCL:EQ22"
                                        :NAME "GES-1"))
                                      ("orig" "GB1" "UP:Q9UBS5" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("GB1" "ONT:CELL-LINE" :ID "CVCL:1227"
                                        :NAME "GB-1"))
                                      ("downcase" "gak" "UP:O14976" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("GAK" "ONT:CELL-LINE" :ID "CVCL:1225"
                                        :NAME "GAK"))
                                      ("downcase" "fkh1" "UP:P33206" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Fkh1" "ONT:CELL-LINE" :ID "CVCL:2041"
                                        :NAME "FKH-1"))
                                      ("upcase" "FER" "UP:P16591" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Fer" "ONT:CELL-LINE" :ID "CVCL:4200"
                                        :NAME "FER"))
                                      ("hyphens" "FB1" "UP:P0C1Z6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("F-B1" "ONT:CELL-LINE" :ID "CVCL:A603"
                                        :NAME "FB-1"))
                                      ("downcase" "ena" "UP:Q95P23" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Ena" "ONT:CELL-LINE" :ID "CVCL:E584"
                                        :NAME "ENA"))
                                      ("orig" "ES2" "UP:Q96DF8" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ES2" "ONT:CELL-LINE" :ID "CVCL:3509"
                                        :NAME "ES-2"))
                                      ("hyphens" "ES2" "UP:Q96DF8" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ES-2" "ONT:CELL-LINE" :ID "CVCL:AX39"
                                        :NAME "ES2"))
                                      ("orig" "ER1" "UP:Q8N108" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ER1" "ONT:CELL-LINE" :ID "CVCL:L896"
                                        :NAME "ER-1"))
                                      ("hyphens" "EP1" "UP:P34995" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("EP-1" "ONT:CELL-LINE" :ID "CVCL:8350"
                                        :NAME "EP-1"))
                                      ("orig" "EL4" "UP:Q570B4" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("EL4" "ONT:CELL-LINE" :ID "CVCL:0255"
                                        :NAME "EL4"))
                                      ("hyphens" "EL4" "UP:Q570B4" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("EL-4" "ONT:CELL-LINE" :ID "CVCL:0255"
                                        :NAME "EL4"))
                                      ("upcase" "DSH1" "UP:O94742" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Dsh1" "ONT:CELL-LINE" :ID "CVCL:1182"
                                        :NAME "DSH1"))
                                      ("downcase" "du145" "UP:P25490" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("DU145" "ONT:CELL-LINE" :ID "CVCL:0105"
                                        :NAME "DU145"))
                                      ("hyphens" "DLD1" "UP:P32891" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("DLD-1" "ONT:CELL-LINE" :ID
                                        "EFO:0006389" :NAME "DLD1"))
                                      ("downcase" "dg2" "UP:Q25540" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("DG2" "ONT:CELL-LINE" :ID "CVCL:L853"
                                        :NAME "DG2"))
                                      ("orig" "DEN" "UP:P50617" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("DEN" "ONT:CELL-LINE" :ID "CVCL:1R33"
                                        :NAME "DEN-HSA"))
                                      ("orig" "DEC205" "UP:O60449" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("DEC205" "ONT:CELL-LINE" :ID
                                        "CVCL:9171" :NAME "DEC-205"))
                                      ("hyphens" "DEC205" "UP:O60449" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("DEC-205" "ONT:CELL-LINE" :ID
                                        "CVCL:9171" :NAME "DEC-205"))
                                      ("hyphens-dc" "cos1" "UP:P53822" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Cos-1" "ONT:CELL-LINE" :ID
                                        "NCIT:C17968" :NAME "COS-1"))
                                      ("downcase" "che1" "UP:P06276" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Che1" "ONT:CELL-LINE" :ID "CVCL:C111"
                                        :NAME "CHE-1"))
                                      ("hyphens-dc" "che1" "UP:P06276" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Che-1" "ONT:CELL-LINE" :ID "CVCL:C111"
                                        :NAME "CHE-1"))
                                      ("downcase" "cas9" "UP:J3F2B0" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Cas9" "ONT:CELL-LINE" :ID "CVCL:8537"
                                        :NAME "CAS-9"))
                                      ("downcase" "carb" "UP:C1F1S6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Carb" "ONT:CELL-LINE" :ID "CVCL:5715"
                                        :NAME "CarB"))
                                      ("downcase" "caco-2" "UP:O43641" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Caco-2" "ONT:CELL-LINE" :ID
                                        "EFO:0001099" :NAME "Caco-2"))
                                      ("orig" "CT26" "UP:Q86TM3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CT26" "ONT:CELL-LINE" :ID "CVCL:7254"
                                        :NAME "CT26"))
                                      ("hyphens" "CS1" "UP:Q9NQ25" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CS-1" "ONT:CELL-LINE" :ID "CVCL:H245"
                                        :NAME "RPMI-3460/CS1"))
                                      ("orig" "COS7" "UP:Q07788" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("COS7" "ONT:CELL-LINE" :ID "CVCL:0224"
                                        :NAME "COS-7"))
                                      ("hyphens" "COS7" "UP:Q07788" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("COS-7" "ONT:CELL-LINE" :ID "CVCL:0224"
                                        :NAME "COS-7"))
                                      ("downcase" "col1" "UP:O50055" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("COL1" "ONT:CELL-LINE" :ID "CVCL:2A40"
                                        :NAME "Col-1"))
                                      ("hyphens-dc" "col1" "UP:O50055" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("COL-1" "ONT:CELL-LINE" :ID "CVCL:2A40"
                                        :NAME "Col-1"))
                                      ("orig" "CNE1" "UP:P27825" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CNE1" "ONT:CELL-LINE" :ID "CVCL:6888"
                                        :NAME "CNE-1"))
                                      ("hyphens" "CNE1" "UP:P27825" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CNE-1" "ONT:CELL-LINE" :ID "CVCL:6888"
                                        :NAME "CNE-1"))
                                      ("orig" "CM1" "UP:P42738" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CM1" "ONT:CELL-LINE" :ID "CVCL:Y613"
                                        :NAME "CM-1"))
                                      ("orig" "CL100" "UP:P28562" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CL100" "ONT:CELL-LINE" :ID "CVCL:Y428"
                                        :NAME "CL100"))
                                      ("hyphens" "CL10" "UP:Q9FY50" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CL1-0" "ONT:CELL-LINE" :ID "CVCL:3871"
                                        :NAME "CL1-0"))
                                      ("hyphens" "CLA" "UP:P0CL70" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CL-A" "ONT:CELL-LINE" :ID "CVCL:E529"
                                        :NAME "CLA"))
                                      ("downcase" "cho" "UP:Q8L5R3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CHO" "ONT:CELL-LINE" :ID "CVCL:0213"
                                        :NAME "CHO"))
                                      ("orig" "CH1" "UP:Q9UBS9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CH1" "ONT:CELL-LINE" :ID "CVCL:M602"
                                        :NAME "Ch-1"))
                                      ("orig" "CCLP1" "UP:O35711" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CCLP1" "ONT:CELL-LINE" :ID "CVCL:0205"
                                        :NAME "CC-LP-1"))
                                      ("hyphens" "CCLP1" "UP:O35711" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CCLP-1" "ONT:CELL-LINE" :ID
                                        "CVCL:0205" :NAME "CC-LP-1"))
                                      ("orig" "CCL4" "UP:P13236" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CCL4" "ONT:CELL-LINE" :ID "CVCL:M024"
                                        :NAME "CCL4"))
                                      ("orig" "CCL3" "UP:P10147" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CCL3" "ONT:CELL-LINE" :ID "CVCL:M023"
                                        :NAME "CCL3"))
                                      ("downcase" "cc3" "UP:Q9BUP3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CC3" "ONT:CELL-LINE" :ID "CVCL:C639"
                                        :NAME "CC3"))
                                      ("orig" "CC1" "UP:P29380" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CC1" "ONT:CELL-LINE" :ID "CVCL:4141"
                                        :NAME "CC-1"))
                                      ("hyphens-dc" "cc3" "UP:Q9BUP3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CC-3" "ONT:CELL-LINE" :ID "CVCL:C639"
                                        :NAME "CC3"))
                                      ("orig" "CB1" "UP:P21554" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CB1" "ONT:CELL-LINE" :ID "CVCL:U652"
                                        :NAME "CB1"))
                                      ("orig" "CAF" "UP:Q13111" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CAF" "ONT:CELL-LINE" :ID "CVCL:R883"
                                        :NAME "CAF"))
                                      ("orig" "CAD" "UP:A6NK06" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CAD" "ONT:CELL-LINE" :ID "CVCL:0199"
                                        :NAME "CAD"))
                                      ("orig" "CAC1" "UP:Q86Y37" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CAC1" "ONT:CELL-LINE" :ID "CVCL:A421"
                                        :NAME "CAC-1"))
                                      ("downcase" "ca2" "UP:P00918" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("CA2" "ONT:CELL-LINE" :ID "CVCL:B845"
                                        :NAME "CA2"))
                                      ("upcase" "BR2" "UP:P08725" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Br2" "ONT:CELL-LINE" :ID "CVCL:AU04"
                                        :NAME "BR-2"))
                                      ("orig" "BVR" "UP:P53004" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BVR" "ONT:CELL-LINE" :ID "CVCL:1M70"
                                        :NAME "BVR"))
                                      ("orig" "BRN2" "UP:P20265" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BRN2" "ONT:CELL-LINE" :ID "CVCL:0U16"
                                        :NAME "BRN-2"))
                                      ("hyphens-dc" "brn1" "UP:P20264" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BR-N1" "ONT:CELL-LINE" :ID "CVCL:0U15"
                                        :NAME "BRN-1"))
                                      ("hyphens" "BPH1" "UP:P25356" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BPH-1" "ONT:CELL-LINE" :ID "CVCL:1091"
                                        :NAME "BPH-1"))
                                      ("hyphens" "BG1" "UP:Q9SE50" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BG-1" "ONT:CELL-LINE" :ID "CVCL:6570"
                                        :NAME "BG1"))
                                      ("downcase" "bcap37" "UP:O35129" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BCap37" "ONT:CELL-LINE" :ID
                                        "CVCL:0164" :NAME "Bcap37"))
                                      ("orig" "BBM" "UP:Q6PQQ4" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BBM" "ONT:CELL-LINE" :ID "CVCL:4400"
                                        :NAME "BBM"))
                                      ("orig" "BAS" "UP:B6EXY6" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("BAS" "ONT:CELL-LINE" :ID "CVCL:U803"
                                        :NAME "BA"))
                                      ("downcase" "act1" "UP:O43734" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Act1" "ONT:CELL-LINE" :ID "CVCL:6291"
                                        :NAME
                                        "ACT-1 [Human thyroid carcinoma]"))
                                      ("orig" "ASO" "UP:Q40588" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ASO" "ONT:CELL-LINE" :ID "CVCL:R967"
                                        :NAME "ASO"))
                                      ("hyphens" "AS1" "UP:P01533" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("AS-1" "ONT:CELL-LINE" :ID "CVCL:DC71"
                                        :NAME "AS-1"))
                                      ("orig" "ARNT" "UP:P27540" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ARNT" "ONT:CELL-LINE" :ID "CVCL:E461"
                                        :NAME "ARNT"))
                                      ("orig" "APE1" "UP:P27695" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("APE1" "ONT:CELL-LINE" :ID "CVCL:Z272"
                                        :NAME "APE1"))
                                      ("orig" "AP2" "UP:P05549" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("AP2" "ONT:CELL-LINE" :ID "CVCL:W419"
                                        :NAME "AP2"))
                                      ("hyphens" "AP3" "UP:P35632" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("AP-3" "ONT:CELL-LINE" :ID "CVCL:J157"
                                        :NAME "AP-3"))
                                      ("hyphens" "AF6" "UP:P55196" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("AF-6" "ONT:CELL-LINE" :ID "CVCL:U801"
                                        :NAME "AF-6"))
                                      ("orig" "ACHN" "UP:Q9BRS8" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ACHN" "ONT:CELL-LINE" :ID "CVCL:1067"
                                        :NAME "ACHN"))
                                      ("orig" "ABC1" "UP:O95477" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("ABC1" "ONT:CELL-LINE" :ID "CVCL:1066"
                                        :NAME "ABC-1"))
                                      ("orig" "NSC" "UP:P56721" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("NSC" "ONT:CELL" :ID "CO:0000047" :NAME
                                        "neuronal stem cell"))
                                      ("orig" "LEC" "UP:Q9LJR2" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("LEC" "ONT:CELL" :ID "CO:0002138" :NAME
                                        "endothelial cell of lymphatic vessel"))
                                      ("orig" "ICC" "UP:Q47WJ3" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("ICC" "ONT:CELL" :ID "CO:0002088" :NAME
                                        "interstitial cell of Cajal"))
                                      ("orig" "HSC" "UP:P19526" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("HSC" "ONT:CELL" :ID "BTO:0000725"
                                        :NAME "hematopoietic stem cell"))
                                      ("orig" "ESC" "UP:Q9S7C9" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("ESC" "ONT:CELL" :ID "CO:0002322" :NAME
                                        "embryonic stem cell"))
                                      ("orig" "CLP" "UP:P27482" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-TYPE
                                       ("CLP" "ONT:CELL" :ID "CO:0000051" :NAME
                                        "common lymphoid progenitor"))
                                      ("orig" "SCA10" "UP:Q9UBB4" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("SCA10"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "ORPHANET:98761" :NAME
                                        "Spinocerebellar ataxia type 10"))
                                      ("upcase" "MADA" "UP:O06924" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("MadA"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C123417" :NAME
                                        "mandibuloacral dysplasia with type A lipodystrophy"))
                                      ("orig" "EAE" "UP:Q03547" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("EAE"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "EFO:0001066" :NAME
                                        "experimental autoimmune encephalomyelitis"))
                                      ("orig" "CSC" "UP:Q43725" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("CSC"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C115124" :NAME
                                        "central serous chorioretinopathy"))
                                      ("downcase" "cin" "UP:Q96GD0" :OLD-CAT
                                       PROTEIN :NEW-CAT DISEASE
                                       ("CIN"
                                        "ONT:MEDICAL-DISORDERS-AND-CONDITIONS"
                                        :ID "NCIT:C7346" :NAME
                                        "cervical squamous intraepithelial neoplasia"))
                                      ("orig" "retinoblastoma" "UP:P06400"
                                       :OLD-CAT PROTEIN :NEW-CAT CANCER
                                       ("retinoblastoma" "ONT:CANCER" :ID
                                        "NCIT:C7541" :NAME "retinoblastoma"))
                                      ("orig" "TAM" "UP:A1TP97" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("TAM" "ONT:CANCER" :ID "NCIT:C82339"
                                        :NAME
                                        "transient abnormal myelopoiesis"))
                                      ("orig" "RCC" "UP:Q92733" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("RCC" "ONT:CANCER" :ID "EFO:0000681"
                                        :NAME "renal cell carcinoma"))
                                      ("orig" "MPN" "UP:Q9BQR3" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("MPN" "ONT:CANCER" :ID "NCIT:C4345"
                                        :NAME
                                        "chronic myeloproliferative disorder"))
                                      ("orig" "MCL" "UP:Q8WXI8" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("MCL" "ONT:CANCER" :ID "EFO:1001469"
                                        :NAME "Mantle cell lymphoma"))
                                      ("orig" "HCL" "UP:Q9AJS8" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("HCL" "ONT:CANCER" :ID "NCIT:C7402"
                                        :NAME "hairy cell leukemia"))
                                      ("orig" "CCh" "UP:O82089" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("CCh" "ONT:CANCER" :ID "NCIT:C54183"
                                        :NAME
                                        "columnar cell hyperplasia of the breast"))
                                      ("orig" "AML" "UP:Q6PF39" :OLD-CAT
                                       PROTEIN :NEW-CAT CANCER
                                       ("AML" "ONT:CANCER" :ID "EFO:0000222"
                                        :NAME "acute myeloid leukemia"))
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
                                      ("orig" "NRP" "UP:O14786" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-PROCESS
                                       ("NRP" "ONT:BIOLOGICAL-PROCESS" :ID
                                        "GO:0085015" :NAME
                                        "dormancy maintenance of symbiont in host"))
                                      ("orig" "MDR" "UP:P96712" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-PROCESS
                                       ("MDR" "ONT:BIOLOGICAL-PROCESS" :ID
                                        "NCIT:C17745" :NAME
                                        "multidrug resistance"))
                                      ("orig" "HDR" "UP:Q94B35" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-PROCESS
                                       ("HDR" "ONT:BIOLOGICAL-PROCESS" :ID
                                        "GO:0000724" :NAME
                                        "double-strand break repair via homologous recombination"))
                                      ("orig" "ADCC" "UP:O34946" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-PROCESS
                                       ("ADCC" "ONT:BIOLOGICAL-PROCESS" :ID
                                        "GO:0001788" :NAME
                                        "antibody-dependent cellular cytotoxicity"))
                                      ("orig" "LSC" "UP:Q46654" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-METHOD
                                       ("LSC" "ONT:PROCEDURE" :ID
                                        "NCIT:C122170" :NAME
                                        "liquid scintillation counting"))
                                      ("orig" "FACS" "UP:P9WQ37" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-METHOD
                                       ("FACS" "ONT:PROCEDURE" :ID
                                        "NCIT:C17353" :NAME
                                        "fluorescence activated cell sorting"))
                                      ("orig" "eIF4F" "UP:P06730" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("eIF4F" "ONT:MACROMOLECULAR-COMPLEX"
                                        :ID "GO:0016281" :NAME
                                        "eukaryotic translation initiation factor 4F complex"))
                                      ("orig" "eIF2" "UP:P05198" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("eIF2" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0005850" :NAME
                                        "eukaryotic translation initiation factor 2 complex"))
                                      ("hyphens" "chromatin" "UP:Q9SIW2"
                                       :OLD-CAT PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("chro-matin"
                                        "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0000785" :NAME "chromatin"))
                                      ("orig" "TORC1" "UP:Q6UUV9" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("TORC1" "ONT:MACROMOLECULAR-COMPLEX"
                                        :ID "GO:0031931" :NAME
                                        "TORC1 complex"))
                                      ("orig" "PTPC" "UP:P54637" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("PTPC" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0005757" :NAME
                                        "mitochondrial permeability transition pore complex"))
                                      ("orig" "PIC" "UP:Q9XYZ5" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("PIC" "ONT:MACROMOLECULAR-COMPLEX" :ID
                                        "GO:0019035" :NAME
                                        "viral integration complex"))
                                      ("orig" "IgG2a" "UP:P20760" :OLD-CAT
                                       PROTEIN :NEW-CAT BIO-COMPLEX
                                       ("IgG2a" "ONT:MACROMOLECULAR-COMPLEX"
                                        :ID "GO:0071735" :NAME
                                        "IgG immunoglobulin complex"))
                                      ("orig" "cyclosome" "UP:Q13042" :OLD-CAT
                                       PROTEIN :NEW-CAT CELLULAR-LOCATION
                                       ("cyclosome" "ONT:CELL-PART" :ID
                                        "GO:0005680" :NAME
                                        "anaphase-promoting complex"))
                                      ("downcase" "tgn" "UP:O43493" :OLD-CAT
                                       PROTEIN :NEW-CAT CELLULAR-LOCATION
                                       ("TGN" "ONT:CELL-PART" :ID "GO:0005802"
                                        :NAME "trans-Golgi network"))
                                      ("orig" "TER" "UP:Q9NZ01" :OLD-CAT
                                       PROTEIN :NEW-CAT CELLULAR-LOCATION
                                       ("TER" "ONT:CELL-PART" :ID "GO:0097047"
                                        :NAME
                                        "DNA replication termination region"))
                                      ("downcase" "nuclear" "GO:0005634"
                                       :OLD-CAT NUCLEUS :NEW-CAT
                                       CELLULAR-LOCATION
                                       ("Nuclear" "ONT:CELL-PART" :ID
                                        "UP:SL-0191" :NAME "Nucleus"))))

(defparameter *NO-ID-REDEF* '(("orig" "myosin"
                               ("myosin" "ONT:PROTEIN-FAMILY" :ID "FA:05287"
                                :NAME "myosin family"))
                              ("downcase" "wnt"
                               ("WNT" "ONT:PROTEIN-FAMILY" :ID "FA:04686" :NAME
                                "wnt family"))
                              ("hyphens" "trastuzumab"
                               ("trastu-zumab" "ONT:PHARMACOLOGIC-SUBSTANCE"
                                :ID "NCIT:C1647" :NAME "trastuzumab"))
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
                              ("orig" "mitogen"
                               ("mitogen" "ONT:CHEMICAL" :ID "CHEBI:52290"
                                :NAME "mitogen"))
                              ("hyphens" "Saos2"
                               ("Saos-2" "ONT:CELL-LINE" :ID "CVCL:0548" :NAME
                                "SaOS-2"))
                              ("hyphens-dc" "skmel28"
                               ("SK-MEL-28" "ONT:CELL-LINE" :ID "EFO:0003081"
                                :NAME "SK-MEL-28"))
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
                              ("orig" "SDS-PAGE"
                               ("SDS-PAGE" "ONT:PROCEDURE" :ID "NCIT:C18150"
                                :NAME
                                "sodium dodecylsulfate-polyacrylamide gel electrophoresis"))
                              ("orig" "microarray"
                               ("microarray" "ONT:MEDICAL-INSTRUMENT" :ID
                                "EFO:0002698" :NAME "array"))
                              ("hyphens" "microarray"
                               ("micro-array" "ONT:MEDICAL-INSTRUMENT" :ID
                                "EFO:0002698" :NAME "array"))
                              ("orig" "pmol"
                               ("pmol" "ONT:MEASURE-UNIT" :ID "UO:0000042"
                                :NAME "picomole"))))

(defparameter *NAMECAT-ID-MISMATCHES* '((MOLECULE POLYSACCHARIDE NIL :NEWUID
                                         "CHEBI:18154" :WORD "glycan")
                                        (CELLULAR-LOCATION GOLGI-APPARATUS
                                         "GO:0005794" :NEWUID "UP:SL-0132"
                                         :WORD "Golgi")))

(defparameter *NO-RULE-REDEF* 'NIL)

(defparameter *NAME-ID-MISMATCHES* '((DRUG "lambrolizumab" NIL :NEWUID
                                      "NCIT:C106432" :WORD "pembrolizumab")
                                     (DRUG "antiestrogen" NIL :NEWUID
                                      "NCIT:C481" :WORD "anti-oestrogenic")
                                     (DRUG "antiestrogen" NIL :NEWUID
                                      "NCIT:C481" :WORD "anti-estrogenic")
                                     (DRUG "gefitinib" NIL :NEWUID "NCIT:C1855"
                                      :WORD "ZD1839")
                                     (DRUG "rofecoxib" NIL :NEWUID "NCIT:C1832"
                                      :WORD "Vioxx")
                                     (DRUG "bortezomib" NIL :NEWUID
                                      "NCIT:C1851" :WORD "Velcade")
                                     (DRUG "paclitaxel" NIL :NEWUID
                                      "NCIT:C1411" :WORD "Taxol")
                                     (DRUG "temozolomide" NIL :NEWUID
                                      "CHEBI:72564" :WORD "TMZ")
                                     (DRUG "imatinib" NIL :NEWUID "NCIT:C1687"
                                      :WORD "STI571")
                                     (DRUG "imatinib" NIL :NEWUID "NCIT:C1687"
                                      :WORD "STI-571")
                                     (DRUG "bosutinib" NIL :NEWUID
                                      "NCIT:C60809" :WORD "SKI-606")
                                     (DRUG "everolimus" NIL :NEWUID
                                      "NCIT:C48387" :WORD "RAD001")
                                     (DRUG "bortezomib" NIL :NEWUID
                                      "NCIT:C1851" :WORD "PS-341")
                                     (DRUG "dimethyl sulfone" "NCIT:C84616"
                                      :NEWUID "MESH:C025910" :WORD
                                      "Methylsulfonylmethane")
                                     (DRUG "gefitinib" NIL :NEWUID "NCIT:C1855"
                                      :WORD "Iressa")
                                     (DRUG "trastuzumab" NIL :NEWUID
                                      "NCIT:C1647" :WORD "Herceptin")
                                     (DRUG "seliciclib" NIL :NEWUID
                                      "NCIT:C62783" :WORD "CYC202")
                                     (DRUG "irinotecan" NIL :NEWUID
                                      "NCIT:C1381" :WORD "CPT-11")
                                     (DRUG "CI-1033" NIL :NEWUID "NCIT:C1880"
                                      :WORD "CI1033")
                                     (DRUG "cisplatin" NIL :NEWUID "NCIT:C376"
                                      :WORD "CDDP")
                                     (DRUG "bevacizumab" NIL :NEWUID
                                      "NCIT:C2039" :WORD "Anti-VEGF")
                                     (CELL-LINE "UM-UC-3" "CVCL:1783" :NEWUID
                                      "EFO:0006771" :WORD "UMUC3")
                                     (CELL-LINE "SK-MEL-2" "CVCL:0069" :NEWUID
                                      "EFO:0002079" :WORD "Skmel2")
                                     (CELL-LINE "SUM149PT" "EFO:0001240"
                                      :NEWUID "CVCL:3422" :WORD "SUM149")
                                     (CELL-LINE "SK-OV-3" "NCIT:C117210"
                                      :NEWUID "CVCL:0532" :WORD "SKOV-3")
                                     (CELL-LINE "SK-N-SH" "CVCL:0531" :NEWUID
                                      "EFO:0003072" :WORD "SK-NSH")
                                     (CELL-LINE "SCC-9" "EFO:0006485" :NEWUID
                                      "CVCL:1685" :WORD "SCC9")
                                     (CELL-LINE "SCC-25" "EFO:0006483" :NEWUID
                                      "CVCL:1682" :WORD "SCC25")
                                     (CELL-LINE "MDA-MB-468" NIL :NEWUID
                                      "CVCL:0419" :WORD "MDA-468")
                                     (CELL-LINE "LN-229" "EFO:0006637" :NEWUID
                                      "CVCL:0393" :WORD "LN229")
                                     (CELL-LINE "HT-29" "EFO:0001193" :NEWUID
                                      "CVCL:0320" :WORD "HT29")
                                     (CELL-LINE "HO-8910PM" "BTO:0005772"
                                      :NEWUID "CVCL:0310" :WORD "HO8910-pm")
                                     (CELL-LINE "ECC-1" "EFO:0005231" :NEWUID
                                      "CVCL:7260" :WORD "ECC1")
                                     (CELL-LINE "BT-549" "NCIT:C117227" :NEWUID
                                      "CVCL:1092" :WORD "BT549")))

(defparameter *PROT-FAM-REDEF* 'NIL)

(defparameter *INHIBITED-PLURALS* '(("cmxro" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "cmxros")
                                    ("stress fiber" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "stress fibers") ;done
                                    ("pd 98059" :NEW-CAT MOLECULE :OLD-CAT DRUG
                                     "pd 98059s")
                                    ("connexin" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN "connexins") ;done
                                    ("immunoglobulin superfamily" :NEW-CAT
                                     PROTEIN-FAMILY :OLD-CAT PROTEIN-FAMILY
                                     "immunoglobulin superfamilies") ;done
                                    ("immunoglobulin" :NEW-CAT PROTEIN-FAMILY
                                     :OLD-CAT PROTEIN-FAMILY "immunoglobulins") ;done
                                    ("proteasome" :NEW-CAT PROTEIN-DOMAIN
                                     :OLD-CAT PROTEIN "proteasomes") ;done
                                    ("HTH 1" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "HTH 1s")
                                    ("PDZ" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "PDZes")
                                    ("pdz" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN-DOMAIN "pdzes")
                                    ("itam" :NEW-CAT PROTEIN-DOMAIN :OLD-CAT
                                     PROTEIN "itams") ;done
                                    ("urea" :NEW-CAT MOLECULE :OLD-CAT MOLECULE
                                     "ureas") ; can't figure out what happened here (although there is a separate CHEBI id for the plural
                                    ("tartrate" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "tartrates") ; this isn't anywhere in bio -- completely unclear
                                    ("leukotriene" :NEW-CAT MOLECULE :OLD-CAT
                                     PROTEIN "leukotrienes") ;done
                                    ("disulfide" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "disulfides") ;unclear again
                                    ("primary amino group" :NEW-CAT MOLECULE
                                     :OLD-CAT MOLECULE "primary amino groups") ;unclear again
                                    ("Dizocilpine" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "Dizocilpines") ;unclear again
                                    ("nitrite" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "nitrites")  ;unclear again
                                    ("metabolite" :NEW-CAT MOLECULE :OLD-CAT
                                     PROTEIN "metabolites") ;done
                                    ("estradiol" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "estradiols") ;unclear again
                                    ("acrylamide" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "acrylamides") ;unclear again
                                    ("CHIR 99021" :NEW-CAT MOLECULE :OLD-CAT
                                     MOLECULE "CHIR 99021s") ;unclear again
                                    ("NHEK" :NEW-CAT CELL-LINE :OLD-CAT
                                     CELL-LINE "NHEKs")
                                    ("nhek" :NEW-CAT CELL-LINE :OLD-CAT
                                     CELL-LINE "nheks")
                                    ("BEAS-2B cell" :NEW-CAT CELL-LINE :OLD-CAT
                                     CELL-LINE "BEAS-2B cells")
                                    ("BEAS-2B cell" :NEW-CAT CELL-LINE :OLD-CAT
                                     CELL-LINE "BEAS-2B cells")
                                    ("platelet" :NEW-CAT CELL-TYPE :OLD-CAT
                                     PROTEIN "platelets") ;done
                                    ("osteoclast" :NEW-CAT CELL-TYPE :OLD-CAT
                                     PROTEIN "osteoclasts") ;done
                                    ("monocyte" :NEW-CAT CELL-TYPE :OLD-CAT
                                     PROTEIN "monocytes") ;done
                                    ("macrophage" :NEW-CAT CELL-TYPE :OLD-CAT
                                     PROTEIN "macrophages") ;done
                                    ("lysis" :NEW-CAT BIO-PROCESS :OLD-CAT
                                     BIO-PROCESS "lysises")
                                    ("real time PCR" :NEW-CAT BIO-METHOD
                                     :OLD-CAT BIO-METHOD "real time PCRs")
                                    ("WKY rat strain" :NEW-CAT ORGANISM
                                     :OLD-CAT ORGANISM "WKY rat strains")
                                    ("wky" :NEW-CAT ORGANISM :OLD-CAT ORGANISM
                                     "wkies")
                                    ("IgG immunoglobulin complex" :NEW-CAT
                                     BIO-COMPLEX :OLD-CAT BIO-COMPLEX
                                     "IgG immunoglobulin complexes")
                                    ("IgG immunoglobulin complex" :NEW-CAT
                                     BIO-COMPLEX :OLD-CAT BIO-COMPLEX
                                     "IgG immunoglobulin complexes")
                                    ("Pseudopodium" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "Pseudopodiums") 
                                    ("microtubule" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT PROTEIN "microtubules")
                                    ("Invadopodium" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT CELLULAR-LOCATION
                                     "Invadopodiums")
                                    ("centrosome" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT PROTEIN "centrosomes") ;done
                                    ("centromere" :NEW-CAT CELLULAR-LOCATION
                                     :OLD-CAT PROTEIN "centromeres");done
                                    ("Axon" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "Axons")
                                    ("axon" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "axons")
                                    ("multivesicular body" :NEW-CAT
                                     CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "multivesicular bodies")
                                    ("mvbs" :NEW-CAT CELLULAR-LOCATION :OLD-CAT
                                     CELLULAR-LOCATION "mvbses")))

(defparameter *VIOLATES-NO-PLURAL* '((CELL-LINE "NHEKs" "EFO:0002799" "NHEK")
                                     (CELL-LINE "Beas-2B cells" "BTO:0002923"
                                      "BEAS-2B cell")
                                     (CELL-LINE "A2780s" "CVCL:0134" "A2780")))

(defparameter *WORD-DIFF-POS-NAME* 'NIL)

(defparameter *PLURALS-OF-EXISTING-CATS* '((CELLULAR-LOCATION CAVEOLA
                                            "UP:SL-0035" :WORD "caveolae")))

(defparameter *DIFF-POS-OF-EXISTING-CATS* 'NIL)

(defparameter *PLURALS-OF-EXISTING-WORDS* '((DRUG "saponins" "NCIT:C823" :NAME
                                             "saponin")
                                            (DRUG "anti-androgens" "NCIT:C242"
                                             :NAME "anti-androgen")
                                            (CELL-LINE "LBS" "CVCL:E751" :NAME
                                             "LB")
                                            (BIO-PROCESS "G2-phases"
                                             "NCIT:C17356" :NAME "G2-phase")
                                            (RNA "pri-miRNAs" "NCIT:C25967"
                                             :NAME "pri-miRNA")))

(defparameter *DIFF-POS-OF-EXISTING-WORDS* '((BIO-PROCESS "lytic" "NCIT:C37889"
                                              "lysis")))

(defparameter *SYNONYM-FOR-EXISTING-WORDS* '((DRUG "sulfonates" "NCIT:C222"
                                              "alkylsulfonate compound")
                                             (CELL-TYPE "Tcells" "BTO:0000782"
                                              "T-lymphocyte")
                                             (DRUG "zVAD-fmk" "MESH:C096713"
                                              "benzyloxycarbonylvalyl-alanyl-aspartyl fluoromethyl ketone")
                                             (DRUG "thiomolybdate"
                                              "MESH:C020809"
                                              "tetrathiomolybdate")
                                             (DRUG "pevonedistat" "NCIT:C77906"
                                              "NAE inhibitor MLN4924")
                                             (DRUG "pembrolizumab"
                                              "NCIT:C106432" "lambrolizumab")
                                             (DRUG "nutlin3a" "NCIT:C74594"
                                              "nutlin-3a")
                                             (DRUG "latrunculin-A"
                                              "MESH:C037067" "latrunculin A")
                                             (DRUG "interferon-β" "NCIT:C495"
                                              "therapeutic interferon beta")
                                             (DRUG "anti-oestrogenic"
                                              "NCIT:C481" "antiestrogen")
                                             (DRUG "anti-estrogenic"
                                              "NCIT:C481" "antiestrogen")
                                             (DRUG "adeno-p53" "NCIT:C2471"
                                              "Ad5CMV-p53 gene")
                                             (DRUG "ZD1839" "NCIT:C1855"
                                              "gefitinib")
                                             (DRUG "Xalkori" "NCIT:C74061"
                                              "MET tyrosine kinase inhibitor PF-02341066")
                                             (DRUG "Vioxx" "NCIT:C1832"
                                              "rofecoxib")
                                             (DRUG "Velcade" "NCIT:C1851"
                                              "bortezomib")
                                             (DRUG "UCN01" "NCIT:C1271"
                                              "7-hydroxystaurosporine")
                                             (DRUG "Torin1" "CHEBI:84327"
                                              "torin 1")
                                             (DRUG "Taxol" "NCIT:C1411"
                                              "paclitaxel")
                                             (DRUG "TMZ" "CHEBI:72564"
                                              "temozolomide")
                                             (DRUG "TIC10" "NCIT:C113792"
                                              "akt ERK inhibitor ONC201")
                                             (DRUG "TGX221" "MESH:C504718"
                                              "TGX 221")
                                             (DRUG "STI571" "NCIT:C1687"
                                              "imatinib")
                                             (DRUG "STI-571" "NCIT:C1687"
                                              "imatinib")
                                             (DRUG "SN38" "CHEBI:8988" "SN-38")
                                             (DRUG "SKI-606" "NCIT:C60809"
                                              "bosutinib")
                                             (DRUG "SKF96365" "MESH:C063159"
                                              "1-(2-(3-(4-methoxyphenyl)propoxy)-4-methoxyphenylethyl)-1H-imidazole")
                                             (DRUG "SB415286" "MESH:C417520"
                                              "3-(3-chloro-4-hydroxyphenylamino)-4-(4-nitrophenyl)-1H-pyrrole-2,5-dione")
                                             (DRUG "SB216763" "MESH:C417521"
                                              "SB 216763")
                                             (DRUG "RU486" "NCIT:C655"
                                              "mifepristone")
                                             (DRUG "RAD001" "NCIT:C48387"
                                              "everolimus")
                                             (DRUG "PS-341" "NCIT:C1851"
                                              "bortezomib")
                                             (DRUG "PJ34" "MESH:C434926"
                                              "N-(oxo-5,6-dihydrophenanthridin-2-yl)-N,N-dimethylacetamide hydrochloride")
                                             (DRUG "PF573228" "MESH:C521108"
                                              "6-(4-(3-(methylsulfonyl)benzylamino)-5-(trifluoromethyl)pyrimidin-2-ylamino)-3,4-dihydroquinolin-2(1H)-one")
                                             (DRUG "PF2341066" "MESH:C520390"
                                              "PF-2341066")
                                             (DRUG "PF02341066" "NCIT:C74061"
                                              "MET tyrosine kinase inhibitor PF-02341066")
                                             (DRUG "PF-573228" "MESH:C521108"
                                              "6-(4-(3-(methylsulfonyl)benzylamino)-5-(trifluoromethyl)pyrimidin-2-ylamino)-3,4-dihydroquinolin-2(1H)-one")
                                             (DRUG "OSU03012" "CHEBI:131196"
                                              "OSU-03012")
                                             (DRUG "OSU-HDAC42" "NCIT:C116850"
                                              "HDAC inhibitor AR-42")
                                             (DRUG "NU7026" "MESH:C479235"
                                              "2-(morpholin-4-yl)benzo(h)chromen-4-one")
                                             (DRUG "NS398" "CHEBI:73458"
                                              "NS-398")
                                             (DRUG "NPS2143" "MESH:C436740"
                                              "N-(2-hydroxy-3-(2-cyano-3-chlorophenoxy)propyl)-1,1-dimethyl-2-(2-nephthyl)ethylamine")
                                             (DRUG "N-acetylcysteine"
                                              "NCIT:C200" "acetylcysteine")
                                             (DRUG "Methylsulfonylmethane"
                                              "MESH:C025910"
                                              "dimethyl sulfone")
                                             (DRUG "MS275" "NCIT:C1863"
                                              "MS-27-275")
                                             (DRUG "MRK003" "MESH:C523799"
                                              "MRK 003")
                                             (DRUG "MK-1775" "NCIT:C91725"
                                              "WEE1 inhibitor MK-1775")
                                             (DRUG "LDN193189" "MESH:C554430"
                                              "LDN 193189")
                                             (DRUG "Ku0063794" "CHEBI:85572"
                                              "Ku-0063794")
                                             (DRUG "KU60019" "MESH:C546193"
                                              "2-(2,6-dimethylmorpholin-4-yl)-N-(5-(6-morpholin-4-yl-4-oxo-4H-pyran-2-yl)-9H-thioxanthen-2-yl)acetamide")
                                             (DRUG "KT7515" "MESH:C106592"
                                              "3,9-bis((ethylthio)methyl)-K-252a")
                                             (DRUG "KT5720" "MESH:C057416"
                                              "KT 5720")
                                             (DRUG "Iressa" "NCIT:C1855"
                                              "gefitinib")
                                             (DRUG "ICI182780" "MESH:C070081"
                                              "fulvestrant")
                                             (DRUG "Herceptin" "NCIT:C1647"
                                              "trastuzumab")
                                             (DRUG "Go6976" "MESH:C081021"
                                              "Go 6976")
                                             (DRUG "GS1101" "NCIT:C78825"
                                              "PI3K-delta inhibitor CAL-101")
                                             (DRUG "GS-1101" "NCIT:C78825"
                                              "PI3K-delta inhibitor CAL-101")
                                             (DRUG "GF109203x" "MESH:C070515"
                                              "bisindolylmaleimide I")
                                             (DRUG "FTY720" "NCIT:C72782"
                                              "fingolimod hydrochloride")
                                             (DRUG "FR901228" "NCIT:C1544"
                                              "depsipeptide")
                                             (DRUG "FK866" "NCIT:C67043"
                                              "APO866")
                                             (DRUG "FK506" "CHEBI:61049"
                                              "tacrolimus (anhydrous)")
                                             (DRUG "EX527" "MESH:C550547"
                                              "6-chloro-2,3,4,9-tetrahydro-1H-carbazole-1-carboxamide")
                                             (DRUG "ETP45658" "MESH:C544684"
                                              "ETP 45658")
                                             (DRUG "DCFH-DA" "MESH:C029569"
                                              "diacetyldichlorofluorescein")
                                             (DRUG "CYC202" "NCIT:C62783"
                                              "seliciclib")
                                             (DRUG "CPT-11" "NCIT:C1381"
                                              "irinotecan")
                                             (DRUG "CORM2" "MESH:C447082"
                                              "tricarbonyldichlororuthenium (II) dimer")
                                             (DRUG "CI1033" "NCIT:C1880"
                                              "CI-1033")
                                             (DRUG "CGK733" "MESH:C512273"
                                              "CGK 733")
                                             (DRUG "CDDP" "NCIT:C376"
                                              "cisplatin")
                                             (DRUG "BMS345541" "MESH:C471109"
                                              "4(2'-aminoethyl)amino-1,8-dimethylimidazo(1,2-a)quinoxaline")
                                             (DRUG "BI2536" "MESH:C518477"
                                              "BI 2536")
                                             (DRUG "BEZ235" "NCIT:C74072"
                                              "PI3K inhibitor BEZ235")
                                             (DRUG "BAY11-7082" "MESH:C434003"
                                              "3-(4-methylphenylsulfonyl)-2-propenenitrile")
                                             (DRUG "Anti-VEGF" "NCIT:C2039"
                                              "bevacizumab")
                                             (DRUG "AT101" "NCIT:C78348"
                                              "R-gossypol acetic acid")
                                             (DRUG "AH6809" "MESH:C053876"
                                              "6-isopropoxy-9-oxoxanthene-2-carboxylic acid")
                                             (DRUG "AG490" "MESH:C095512"
                                              "alpha-cyano-(3,4-dihydroxy)-N-benzylcinnamide")
                                             (DRUG "AG1478" "MESH:C101044"
                                              "tyrphostin AG 1478")
                                             (DRUG "ABT888" "NCIT:C60768"
                                              "ABT-888")
                                             (DRUG "ABT737" "MESH:C501332"
                                              "ABT-737")
                                             (DRUG "ABT199" "NCIT:C103147"
                                              "bcl-2 inhibitor GDC-0199")
                                             (MOLECULE "β-mercaptoethanol"
                                              "CHEBI:41218" "mercaptoethanol")
                                             (MOLECULE "tert-butyl"
                                              "CHEBI:30355" "tert-butyl group")
                                             (MOLECULE "fMLF" "CHEBI:53490"
                                              "N-formyl-L-methionyl-L-leucyl-L-phenylalanine")
                                             (MOLECULE "disulphide"
                                              "CHEBI:48343" "disulfide")
                                             (MOLECULE "NH2" "CHEBI:46882"
                                              "primary amino group")
                                             (MOLECULE "MK801" "CHEBI:34725"
                                              "Dizocilpine")
                                             (MOLECULE "tBHP" "CHEBI:64090"
                                              "tert-butyl hydroperoxide")
                                             (MOLECULE "oestradiol"
                                              "CHEBI:23965" "estradiol")
                                             (MOLECULE "estradiol-17beta"
                                              "CHEBI:16469" "17beta-estradiol")
                                             (MOLECULE "beta-NAD" "CHEBI:15846"
                                              "NAD(+)")
                                             (MOLECULE "actinomycin-D"
                                              "CHEBI:27666" "actinomycin D")
                                             (MOLECULE "SB239063" "CHEBI:90681"
                                              "SB-239063")
                                             (MOLECULE "PGF2α" "CHEBI:15553"
                                              "prostaglandin F2alpha")
                                             (MOLECULE "PGF2alpha"
                                              "CHEBI:15553"
                                              "prostaglandin F2alpha")
                                             (MOLECULE "NMDA" "CHEBI:31882"
                                              "N-methyl-D-aspartic acid")
                                             (MOLECULE "IPA3" "CHEBI:101355"
                                              "IPA-3")
                                             (MOLECULE "CHIR99021"
                                              "CHEBI:91091" "CHIR 99021")
                                             (CELL-LINE "neuro-2a" "CVCL:0470"
                                              "Neuro-2a")
                                             (CELL-LINE "Wi38" "CVCL:0579"
                                              "WI-38")
                                             (CELL-LINE "WM1205Lu" "CVCL:5239"
                                              "1205Lu")
                                             (CELL-LINE "VA13" "CVCL:2759"
                                              "WI-38 VA13 subline 2RA")
                                             (CELL-LINE "UMUC3" "EFO:0006771"
                                              "UM-UC-3")
                                             (CELL-LINE "UMUC-3" "CVCL:1783"
                                              "UM-UC-3")
                                             (CELL-LINE "UMSCC1" "CVCL:7707"
                                              "UM-SCC-1")
                                             (CELL-LINE "UMR106" "CVCL:3617"
                                              "UMR-106")
                                             (CELL-LINE "U373MG" "CVCL:2219"
                                              "U-373MG ATCC")
                                             (CELL-LINE "U251MG" "CVCL:0021"
                                              "U-251MG")
                                             (CELL-LINE "U251-N" "CVCL:0021"
                                              "U-251MG")
                                             (CELL-LINE "TC71" "CVCL:2213"
                                              "TC-71")
                                             (CELL-LINE "Skmel2" "EFO:0002079"
                                              "SK-MEL-2")
                                             (CELL-LINE "SUM159" "CVCL:5423"
                                              "SUM159PT")
                                             (CELL-LINE "SUM149" "CVCL:3422"
                                              "SUM149PT")
                                             (CELL-LINE "SNU449" "CVCL:0454"
                                              "SNU-449")
                                             (CELL-LINE "SMMC7721" "CVCL:0534"
                                              "SMMC-7721")
                                             (CELL-LINE "SKOV-3" "CVCL:0532"
                                              "SK-OV-3")
                                             (CELL-LINE "SKCO15" "CVCL:A337"
                                              "SK-CO-15")
                                             (CELL-LINE "SK-NSH" "EFO:0003072"
                                              "SK-N-SH")
                                             (CELL-LINE "SK-Hep1" "CVCL:0525"
                                              "SK-HEP-1")
                                             (CELL-LINE "SCC9" "CVCL:1685"
                                              "SCC-9")
                                             (CELL-LINE "SCC25" "CVCL:1682"
                                              "SCC-25")
                                             (CELL-LINE "RWPE1" "CVCL:3791"
                                              "RWPE-1")
                                             (CELL-LINE "RINm5F" "CVCL:0501"
                                              "RIN-m5F")
                                             (CELL-LINE "RBL2H3" "CVCL:0591"
                                              "RBL-2H3")
                                             (CELL-LINE "Panc-Tu-I" "CVCL:4012"
                                              "PancTu-I")
                                             (CELL-LINE "PC3M" "CVCL:9555"
                                              "PC-3M")
                                             (CELL-LINE "PC3-M" "CVCL:9555"
                                              "PC-3M")
                                             (CELL-LINE "OSRC-2" "CVCL:1626"
                                              "OS-RC-2")
                                             (CELL-LINE "OECM1" "CVCL:6782"
                                              "OECM-1")
                                             (CELL-LINE "Neuro2a" "CVCL:0470"
                                              "Neuro-2a")
                                             (CELL-LINE "NIE-115" "CVCL:0451"
                                              "N1E-115")
                                             (CELL-LINE "NB2a" "CVCL:0470"
                                              "Neuro-2a")
                                             (CELL-LINE "Mo7e" "CVCL:2106"
                                              "M-07e")
                                             (CELL-LINE "MiaPaCa2" "CVCL:0428"
                                              "MIA PaCa-2")
                                             (CELL-LINE "MV4–11" "CVCL:0064"
                                              "MV4-11")
                                             (CELL-LINE "MOLM13" "CVCL:2119"
                                              "MOLM-13")
                                             (CELL-LINE "MO59J" "CVCL:0400"
                                              "M059J")
                                             (CELL-LINE "MHCC97H" "CVCL:4972"
                                              "MHCC97-H")
                                             (CELL-LINE "MDA231" "CVCL:0062"
                                              "MDA-MB-231")
                                             (CELL-LINE "MDA-MB231" "CVCL:0062"
                                              "MDA-MB-231")
                                             (CELL-LINE "MDA-468" "CVCL:0419"
                                              "MDA-MB-468")
                                             (CELL-LINE "MDA-231" "CVCL:0062"
                                              "MDA-MB-231")
                                             (CELL-LINE "MCF12A" "CVCL:3744"
                                              "MCF-12A")
                                             (CELL-LINE "MC3T3E1" "CVCL:0409"
                                              "MC3T3-E1")
                                             (CELL-LINE "MB231" "CVCL:0062"
                                              "MDA-MB-231")
                                             (CELL-LINE "LN229" "CVCL:0393"
                                              "LN-229")
                                             (CELL-LINE "LAPC4" "CVCL:4744"
                                              "LAPC-4")
                                             (CELL-LINE "LAD2" "CVCL:0387"
                                              "LAD 2")
                                             (CELL-LINE "Kyse30" "CVCL:1351"
                                              "KYSE-30")
                                             (CELL-LINE "KG1" "CVCL:0374"
                                              "KG-1")
                                             (CELL-LINE "IMR90" "CVCL:0347"
                                              "IMR-90")
                                             (CELL-LINE "Huh7" "EFO:0005384"
                                              "HuH-7")
                                             (CELL-LINE "Hkh2" "CVCL:9797"
                                              "HKh-2")
                                             (CELL-LINE "Hec-1A" "EFO:0002191"
                                              "HEC1A")
                                             (CELL-LINE "HT29" "CVCL:0320"
                                              "HT-29")
                                             (CELL-LINE "HSB-2" "CVCL:1859"
                                              "CCRF-HSB-2")
                                             (CELL-LINE "HO8910-pm" "CVCL:0310"
                                              "HO-8910PM")
                                             (CELL-LINE "FTC133" "CVCL:1219"
                                              "FTC-133")
                                             (CELL-LINE "ECC1" "CVCL:7260"
                                              "ECC-1")
                                             (CELL-LINE "DM1" "CVCL:Z231"
                                              "Schneider 1")
                                             (CELL-LINE "CWR22rv-1" "CVCL:1045"
                                              "22Rv1")
                                             (CELL-LINE "CWR22Rv1" "CVCL:1045"
                                              "22Rv1")
                                             (CELL-LINE "CP70" "CVCL:0135"
                                              "A2780/CP70")
                                             (CELL-LINE "CNE2" "CVCL:6889"
                                              "CNE-2")
                                             (CELL-LINE "CAL27" "CVCL:1107"
                                              "CAL-27")
                                             (CELL-LINE "Bel7402" "CVCL:5492"
                                              "BEL-7402")
                                             (CELL-LINE "Baf-3" "CVCL:0161"
                                              "Ba/F3")
                                             (CELL-LINE "BaF3" "CVCL:0161"
                                              "Ba/F3")
                                             (CELL-LINE "BT549" "CVCL:1092"
                                              "BT-549")
                                             (CELL-LINE "BT474" "CVCL:0179"
                                              "BT-474")
                                             (CELL-LINE "BGC823" "CVCL:3360"
                                              "BGC-823")
                                             (CELL-LINE "ATL2" "CVCL:8338"
                                              "ATL-2")
                                             (CELL-LINE "ASE2" "CVCL:6769"
                                              "AS-E2")
                                             (CELL-LINE "AD293" "CVCL:9804"
                                              "AD-293")
                                             (CELL-TYPE "Tcell" "BTO:0000782"
                                              "T-lymphocyte")
                                             (BIO-METHOD "q-RT-PCR"
                                              "NCIT:C28408"
                                              "quantitative reverse transcriptase PCR")
                                             (ORGANISM "murine" "NCIT:C14238"
                                              "mouse")
                                             (BIO-COMPLEX "IgG3" "GO:0071735"
                                              "IgG immunoglobulin complex")
                                             (BIO-COMPLEX "IgG2b" "GO:0071735"
                                              "IgG immunoglobulin complex")
                                             (CELLULAR-LOCATION "MVE"
                                              "GO:0005771"
                                              "multivesicular body")))

(defparameter *CATEGORY-MISMATCH-EXISTING-CATS* 'NIL)

(defparameter *CATEGORY-MISMATCH-EXISTING-WORDS* '((:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME
                                                    "IFN-gamma" :NEWUID
                                                    "XFAM:PF00714.15" :WORD
                                                    "interferon-gamma")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    PROTEIN-DOMAIN :NAME "PHD"
                                                    :NEWUID "XFAM:PF00628.27"
                                                    :WORD "PHD-finger")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    DRUG :NAME "etoposide"
                                                    :NEWUID "NCIT:C491" :WORD
                                                    "VP16")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    DRUG :NAME "etoposide"
                                                    :NEWUID "NCIT:C491" :WORD
                                                    "VP-16")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "SH-SY5Y"
                                                    :NEWUID "CVCL:0019" :WORD
                                                    "SY-5Y")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "SH-SY5Y"
                                                    :NEWUID "CVCL:0019" :WORD
                                                    "SHSY5Y")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "SH-SY5Y"
                                                    :NEWUID "CVCL:0019" :WORD
                                                    "SH-SY-5Y")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "MCF-10A"
                                                    :NEWUID "CVCL:0598" :WORD
                                                    "MCF10A")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "CV-1"
                                                    :NEWUID "CVCL:0229" :WORD
                                                    "CV1")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    BIO-METHOD :NAME "RIP"
                                                    :NEWUID "EFO:0005033" :WORD
                                                    "RNA-IP")))

(defparameter *SUPPRESSED-REDEFS* '(("suppressor of cytokine signaling-1"
                                     ("suppressor of cytokine signaling-1"
                                      "uniprot" :TYPE "gene-or-gene-product"
                                      :ID "UP:O15524"))
                                    ("purine nucleoside phosphorylase"
                                     ("purine nucleoside phosphorylase"
                                      "uniprot" :TYPE "gene" :ID "UP:P00491"))
                                    ("p16 protein"
                                     ("p16 protein" "uniprot" :TYPE "gene" :ID
                                      "UP:Q96518"))
                                    ("cyclooxygenase 2"
                                     ("cyclooxygenase 2" "uniprot" :TYPE "gene"
                                      :ID "UP:P35354"))
                                    ("CAII protein"
                                     ("CAII protein" "uniprot" :TYPE "gene" :ID
                                      "UP:P00918"))
                                    ("TbetaR I"
                                     ("TbetaR I" "uniprot" :TYPE "gene" :ID
                                      "UP:P36897"))
                                    ("multivesicular bodies"
                                     ("multivesicular bodies" "go" :TYPE
                                      "cellular-component" :ID "GO:0005771"))
                                    ("retinal ganglion cell"
                                     ("retinal ganglion cell" "cl" :TYPE
                                      "celltype" :ID "CO:0000740"))
                                    ("cardiac muscle cell"
                                     ("cardiac muscle cell" "cl" :TYPE
                                      "celltype" :ID "CO:0000746"))
                                    ("MIA PaCa-2"
                                     ("MIA PaCa-2" "cellosaurus" :TYPE
                                      "cellline" :ID "CVCL:0428"))
                                    ("ZR-75-1"
                                     ("ZR-75-1" "cellosaurus" :TYPE "cellline"
                                      :ID "CVCL:0588"))
                                    ("catabolic process"
                                     ("catabolic process" "go" :TYPE
                                      "bioprocess" :ID "GO:0009056"))
                                    ("programmed cell death"
                                     ("programmed cell death" "go" :TYPE
                                      "bioprocess" :ID "GO:0006915"))
                                    ("MDA-MB-435"
                                     ("MDA-MB-435" "cellosaurus" :TYPE
                                      "cellline" :ID "CVCL:0417"))
                                    ("triphosphatases"
                                     ("triphosphatases" "ONT:PROTEIN" :ID
                                      "GO:0050355" :NAME
                                      "triphosphatase activity"))
                                    ("relaxin-3"
                                     ("relaxin-3" "ONT:PROTEIN" :ID "UP:Q8WXF3"
                                      :NAME "Relaxin-3"))
                                    ("relaxin"
                                     ("relaxin" "ONT:PROTEIN" :ID "UP:P11184"
                                      :NAME "Relaxin"))
                                    ("praja2"
                                     ("praja2" "ONT:PROTEIN" :ID "UP:O43164"
                                      :NAME
                                      "E3 ubiquitin-protein ligase Praja-2"))
                                    ("phosphofructokinase-2"
                                     ("phosphofructokinase-2" "ONT:PROTEIN" :ID
                                      "UP:Q27483" :NAME
                                      "ATP-dependent 6-phosphofructokinase 2"))
                                    ("p46"
                                     ("p46" "ONT:PROTEIN" :ID "UP:Q9BY77" :NAME
                                      "Polymerase delta-interacting protein 3"))
                                    ("matrix metalloproteinase-9"
                                     ("matrix metalloproteinase-9"
                                      "ONT:PROTEIN" :ID "UP:P14780" :NAME
                                      "Matrix metalloproteinase-9"))
                                    ("synuclein"
                                     ("synuclein" "ONT:GENE-PROTEIN" :ID
                                      "UP:P37379" :NAME "Synuclein"))
                                    ("ref"
                                     ("ref" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05755.10" :NAME "REF"))
                                    ("mono-oxygenase"
                                     ("mono-oxygenase" "ONT:GENE-PROTEIN" :ID
                                      "GO:0004497" :NAME
                                      "monooxygenase activity"))
                                    ("thymocytes"
                                     ("thymocytes" "ONT:CELL" :ID "BTO:0001372"
                                      :NAME "thymocyte"))
                                    ("splenocytes"
                                     ("splenocytes" "ONT:CELL" :ID "CO:2000074"
                                      :NAME "splenocyte"))
                                    ("glycodelin"
                                     ("glycodelin" "ONT:PROTEIN" :ID
                                      "UP:P09466" :NAME "Glycodelin"))
                                    ("dstat"
                                     ("dstat" "ONT:PROTEIN" :ID "UP:Q24151"
                                      :NAME
                                      "Signal transducer and transcription activator"))
                                    ("demethylases"
                                     ("demethylases" "ONT:PROTEIN" :ID
                                      "GO:0032451" :NAME
                                      "demethylase activity"))
                                    ("defensin"
                                     ("defensin" "ONT:PROTEIN" :ID "UP:Q86QI5"
                                      :NAME "Defensin"))
                                    ("dSRF"
                                     ("dSRF" "ONT:PROTEIN" :ID "UP:Q24535"
                                      :NAME "Serum response factor homolog"))
                                    ("cytolysin"
                                     ("cytolysin" "ONT:PROTEIN" :ID "UP:P19247"
                                      :NAME "Cytolysin"))
                                    ("caspases-9"
                                     ("caspases-9" "ONT:PROTEIN" :ID
                                      "UP:P55211" :NAME "Caspase-9"))
                                    ("caerulein"
                                     ("caerulein" "ONT:PROTEIN" :ID "UP:P56264"
                                      :NAME "Caerulein"))
                                    ("WiHog1B"
                                     ("WiHog1B" "ONT:PROTEIN" :ID "UP:M1T7M3"
                                      :NAME
                                      "Mitogen-activated protein kinase HOG1B"))
                                    ("WiHog1A"
                                     ("WiHog1A" "ONT:PROTEIN" :ID "UP:A3EZ55"
                                      :NAME
                                      "Mitogen-activated protein kinase HOG1A"))
                                    ("TrxR"
                                     ("TrxR" "ONT:PROTEIN" :ID "UP:P80892"
                                      :NAME "Thioredoxin reductase"))
                                    ("TSL"
                                     ("TSL" "ONT:PROTEIN" :ID "UP:Q3T7C9" :NAME
                                      "Diphthamide biosynthesis protein 1"))
                                    ("ST6Gal-I"
                                     ("ST6Gal-I" "ONT:PROTEIN" :ID "UP:Q92182"
                                      :NAME
                                      "Beta-galactoside alpha-2,6-sialyltransferase 1"))
                                    ("SMases"
                                     ("SMases" "ONT:PROTEIN" :ID "UP:P09599"
                                      :NAME "Sphingomyelinase C"))
                                    ("SHI"
                                     ("SHI" "ONT:PROTEIN" :ID "UP:P19651" :NAME
                                      "Delta-stichotoxin-She1a {ECO:0000303PubMed:22683676}"))
                                    ("eicosanoids"
                                     ("eicosanoids" "ONT:MOLECULE" :ID
                                      "CHEBI:23899" :NAME "icosanoid"))
                                    ("interleukin-3"
                                     ("interleukin-3" "ONT:GENE-PROTEIN" :ID
                                      "UP:P08700" :NAME "Interleukin-3"))
                                    ("galanin"
                                     ("galanin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P47215" :NAME "Galanin"))
                                    ("fractalkine"
                                     ("fractalkine" "ONT:GENE-PROTEIN" :ID
                                      "UP:P78423" :NAME "Fractalkine"))
                                    ("eIF4G"
                                     ("eIF4G" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q76E23" :NAME
                                      "Eukaryotic translation initiation factor 4G"))
                                    ("cis"
                                     ("cis" "ONT:GENE-PROTEIN" :ID "UP:Q2HJ53"
                                      :NAME
                                      "Cytokine-inducible SH2-containing protein"))
                                    ("apo"
                                     ("apo" "ONT:GENE-PROTEIN" :ID "UP:Q8N6M6"
                                      :NAME "Aminopeptidase O"))
                                    ("WASP"
                                     ("WASP" "ONT:GENE-PROTEIN" :ID "UP:P42768"
                                      :NAME
                                      "Wiskott-Aldrich syndrome protein"))
                                    ("TSG"
                                     ("TSG" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04668.10" :NAME "tsg"))
                                    ("TGFbeta2"
                                     ("TGFbeta2" "ONT:GENE-PROTEIN" :ID
                                      "UP:P61812" :NAME
                                      "Transforming growth factor beta-2"))
                                    ("TGF-beta3"
                                     ("TGF-beta3" "ONT:GENE-PROTEIN" :ID
                                      "UP:P16047" :NAME
                                      "Transforming growth factor beta-3"))
                                    ("TGF-beta2"
                                     ("TGF-beta2" "ONT:GENE-PROTEIN" :ID
                                      "UP:P61812" :NAME
                                      "Transforming growth factor beta-2"))
                                    ("Spt20"
                                     ("Spt20" "ONT:GENE-PROTEIN" :ID "FA:05167"
                                      :NAME "SPT20 family"))
                                    ("SUMO"
                                     ("SUMO" "ONT:GENE-PROTEIN" :ID "UP:P55853"
                                      :NAME
                                      "Small ubiquitin-related modifier"))
                                    ("SPB"
                                     ("SPB" "ONT:GENE-PROTEIN" :ID "UP:P07988"
                                      :NAME
                                      "Pulmonary surfactant-associated protein B"))
                                    ("SAP"
                                     ("SAP" "ONT:GENE-PROTEIN" :ID "UP:P02743"
                                      :NAME "Serum amyloid P-component"))
                                    ("S1P2"
                                     ("S1P2" "ONT:GENE-PROTEIN" :ID "UP:Q9I8K8"
                                      :NAME
                                      "Sphingosine 1-phosphate receptor 2"))
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
                                    ("RBPjkappa"
                                     ("RBPjkappa" "ONT:PROTEIN" :ID "UP:O02019"
                                      :NAME "Suppressor of hairless homolog"))
                                    ("RARalpha"
                                     ("RARalpha" "ONT:PROTEIN" :ID "UP:P10276"
                                      :NAME "Retinoic acid receptor alpha"))
                                    ("PGA"
                                     ("PGA" "ONT:PROTEIN" :ID "UP:P20041" :NAME
                                      "Polygalacturonase"))
                                    ("PDGFRalpha"
                                     ("PDGFRalpha" "ONT:PROTEIN" :ID
                                      "UP:P16234" :NAME
                                      "Platelet-derived growth factor receptor alpha"))
                                    ("OMT"
                                     ("OMT" "ONT:PROTEIN" :ID "UP:P82455" :NAME
                                      "Orcomyotropin"))
                                    ("OBL"
                                     ("OBL" "ONT:PROTEIN" :ID "UP:Q8T6Z0" :NAME
                                      "Obelin"))
                                    ("NFkB"
                                     ("NFkB" "ONT:PROTEIN" :ID "NCIT:C17380"
                                      :NAME "NF-kB"))
                                    ("MSI"
                                     ("MSI" "ONT:PROTEIN" :ID "UP:Q3BK13" :NAME
                                      "Disintegrin lebein-2-alpha"))
                                    ("MPK2"
                                     ("MPK2" "ONT:PROTEIN" :ID "UP:P47812"
                                      :NAME
                                      "Mitogen-activated protein kinase 14"))
                                    ("MNF"
                                     ("MNF" "ONT:PROTEIN" :ID "UP:P85037" :NAME
                                      "Forkhead box protein K1"))
                                    ("MCA"
                                     ("MCA" "ONT:PROTEIN" :ID "UP:P60254" :NAME
                                      "Maurocalcin"))
                                    ("IgG4"
                                     ("IgG4" "ONT:PROTEIN" :ID "NCIT:C78227"
                                      :NAME "IgG4"))
                                    ("IL-6Ralpha"
                                     ("IL-6Ralpha" "ONT:PROTEIN" :ID
                                      "UP:P08887" :NAME
                                      "Interleukin-6 receptor subunit alpha"))
                                    ("IL-15Ralpha"
                                     ("IL-15Ralpha" "ONT:PROTEIN" :ID
                                      "UP:Q13261" :NAME
                                      "Interleukin-15 receptor subunit alpha"))
                                    ("IKKepsilon"
                                     ("IKKepsilon" "ONT:PROTEIN" :ID
                                      "UP:Q14164" :NAME
                                      "Inhibitor of nuclear factor kappa-B kinase subunit epsilon"))
                                    ("HwHog1"
                                     ("HwHog1" "ONT:PROTEIN" :ID "UP:Q8NJT7"
                                      :NAME
                                      "Mitogen-activated protein kinase HOG1"))
                                    ("HS15"
                                     ("HS15" "ONT:PROTEIN" :ID "UP:P19953"
                                      :NAME "30S ribosomal protein S24e"))
                                    ("R-spondin"
                                     ("R-spondin" "ONT:GENE-PROTEIN" :ID
                                      "FA:03208" :NAME "R-spondin family"))
                                    ("PTHrP"
                                     ("PTHrP" "ONT:GENE-PROTEIN" :ID
                                      "UP:P12272" :NAME
                                      "Parathyroid hormone-related protein"))
                                    ("PSK"
                                     ("PSK" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06404.10" :NAME "PSK"))
                                    ("PRR"
                                     ("PRR" "ONT:GENE-PROTEIN" :ID "UP:P07052"
                                      :NAME
                                      "Pathogenesis-related protein R minor form"))
                                    ("PRF"
                                     ("PRF" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06875.9" :NAME "PRF"))
                                    ("PR1"
                                     ("PR1" "ONT:GENE-PROTEIN" :ID "UP:P33154"
                                      :NAME "Pathogenesis-related protein 1"))
                                    ("PLA2"
                                     ("PLA2" "ONT:GENE-PROTEIN" :ID "UP:Q9TWL9"
                                      :NAME "Conodipine-M alpha chain"))
                                    ("PKCbeta"
                                     ("PKCbeta" "ONT:GENE-PROTEIN" :ID
                                      "UP:P05771" :NAME
                                      "Protein kinase C beta type"))
                                    ("PGC-1alpha"
                                     ("PGC-1alpha" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q865B7" :NAME
                                      "Peroxisome proliferator-activated receptor gamma coactivator 1-alpha"))
                                    ("PEDF"
                                     ("PEDF" "ONT:GENE-PROTEIN" :ID "UP:Q95121"
                                      :NAME
                                      "Pigment epithelium-derived factor"))
                                    ("PAP-2"
                                     ("PAP-2" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF01569.19" :NAME "PAP2"))
                                    ("NOS"
                                     ("NOS" "ONT:GENE-PROTEIN" :ID "UP:O61608"
                                      :NAME "Nitric oxide synthase"))
                                    ("NHE"
                                     ("NHE" "ONT:GENE-PROTEIN" :ID "UP:P81242"
                                      :NAME
                                      "Non-hemolytic enterotoxin 105 kDa component"))
                                    ("NFH"
                                     ("NFH" "ONT:GENE-PROTEIN" :ID "UP:P12036"
                                      :NAME "Neurofilament heavy polypeptide"))
                                    ("MRS"
                                     ("MRS" "ONT:GENE-PROTEIN" :ID "UP:Q1RNF8"
                                      :NAME
                                      "Sterile alpha motif domain-containing protein 11"))
                                    ("MRFs"
                                     ("MRFs" "ONT:GENE-PROTEIN" :ID "FA:02356"
                                      :NAME "MRF family"))
                                    ("MPC"
                                     ("MPC" "ONT:GENE-PROTEIN" :ID "UP:Q53034"
                                      :NAME "Metapyrocatechase"))
                                    ("MLC-2"
                                     ("MLC-2" "ONT:GENE-PROTEIN" :ID
                                      "UP:O14950" :NAME
                                      "Myosin regulatory light chain 12B"))
                                    ("MCT1"
                                     ("MCT1" "ONT:GENE-PROTEIN" :ID "UP:Q9ULC4"
                                      :NAME
                                      "Malignant T-cell-amplified sequence 1"))
                                    ("LMP"
                                     ("LMP" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04778.10" :NAME "LMP"))
                                    ("LDH"
                                     ("LDH" "ONT:GENE-PROTEIN" :ID "FA:02022"
                                      :NAME "LDH family"))
                                    ("IRF-3"
                                     ("IRF-3" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q4JF28" :NAME
                                      "Interferon regulatory factor 3"))
                                    ("IDO"
                                     ("IDO" "ONT:GENE-PROTEIN" :ID "UP:P47125"
                                      :NAME "Indoleamine 2,3-dioxygenase"))
                                    ("HSL"
                                     ("HSL" "ONT:GENE-PROTEIN" :ID "UP:Q05469"
                                      :NAME "Hormone-sensitive lipase"))
                                    ("HSF"
                                     ("HSF" "ONT:GENE-PROTEIN" :ID "UP:P22813"
                                      :NAME "Heat shock factor protein"))
                                    ("EBNA3A"
                                     ("EBNA3A" "ONT:PROTEIN" :ID "UP:Q69138"
                                      :NAME "Epstein-Barr nuclear antigen 3"))
                                    ("EBNA2"
                                     ("EBNA2" "ONT:PROTEIN" :ID "UP:Q69022"
                                      :NAME "Epstein-Barr nuclear antigen 2"))
                                    ("DSP4"
                                     ("DSP4" "ONT:PROTEIN" :ID "UP:Q9BV47"
                                      :NAME
                                      "Dual specificity protein phosphatase 26"))
                                    ("DHHC20"
                                     ("DHHC20" "ONT:PROTEIN" :ID "UP:Q0VC89"
                                      :NAME
                                      "Probable palmitoyltransferase ZDHHC20"))
                                    ("CTL"
                                     ("CTL" "ONT:PROTEIN" :ID "UP:Q6T7B7" :NAME
                                      "C-type lectin 1"))
                                    ("CPSP"
                                     ("CPSP" "ONT:PROTEIN" :ID "UP:P77885"
                                      :NAME
                                      "Carbamoyl-phosphate synthase pyrimidine-specific small chain"))
                                    ("CK2alpha"
                                     ("CK2alpha" "ONT:PROTEIN" :ID "UP:P28523"
                                      :NAME "Casein kinase II subunit alpha"))
                                    ("ATI"
                                     ("ATI" "ONT:PROTEIN" :ID "UP:P21114" :NAME
                                      "Putative A-type inclusion protein"))
                                    ("AAL"
                                     ("AAL" "ONT:PROTEIN" :ID "UP:Q6WY08" :NAME
                                      "Anti-tumor lectin"))
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
                                    ("IκB"
                                     ("IκB" "ONT:PROTEIN" :ID "NCIT:C17583"
                                      :NAME "I-kappa-B protein"))
                                    ("CYP41"
                                     ("CYP41" "ONT:PROTEIN" :ID "UP:Q9P3X9"
                                      :NAME
                                      "41 kDa peptidyl-prolyl cis-trans isomerase"))
                                    ("AMPKα1"
                                     ("AMPKα1" "ONT:PROTEIN" :ID "NCIT:C116033"
                                      :NAME
                                      "5-AMP-activated protein kinase catalytic subunit alpha-1"))
                                    ("kinesin"
                                     ("kinesin" "ONT:GENE-PROTEIN" :ID
                                      "FA:01965" :NAME "kinesin family"))
                                    ("ephrinB2"
                                     ("ephrinB2" "ONT:GENE-PROTEIN" :ID
                                      "UP:P52799" :NAME "Ephrin-B2"))
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
                                    ("PI3Kinase"
                                     ("PI3Kinase" "ONT:GENE-PROTEIN" :ID
                                      "UP:P54673" :NAME
                                      "Phosphatidylinositol 3-kinase 1"))
                                    ("MEF2"
                                     ("MEF2" "ONT:GENE-PROTEIN" :ID "FA:02224"
                                      :NAME "MEF2 family"))
                                    ("LPA3"
                                     ("LPA3" "ONT:GENE-PROTEIN" :ID "UP:Q9UBY5"
                                      :NAME
                                      "Lysophosphatidic acid receptor 3"))
                                    ("HSP20"
                                     ("HSP20" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00011.19" :NAME "HSP20"))
                                    ("HIF-1α"
                                     ("HIF-1α" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q16665" :NAME
                                      "Hypoxia-inducible factor 1-alpha"))
                                    ("GADD45"
                                     ("GADD45" "ONT:GENE-PROTEIN" :ID
                                      "FA:01442" :NAME "GADD45 family"))
                                    ("COBRA1"
                                     ("COBRA1" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06209.11" :NAME "COBRA1"))
                                    ("pericytes"
                                     ("pericytes" "ONT:CELL" :ID "CO:0000669"
                                      :NAME "pericyte cell"))
                                    ("lymphoblasts"
                                     ("lymphoblasts" "ONT:CELL" :ID
                                      "BTO:0000772" :NAME "lymphoblast"))
                                    ("streptavidin"
                                     ("streptavidin" "ONT:PROTEIN" :ID
                                      "UP:P22629" :NAME "Streptavidin"))
                                    ("cotransporter"
                                     ("cotransporter" "ONT:PROTEIN" :ID
                                      "GO:0015293" :NAME "symporter activity"))
                                    ("attractant"
                                     ("attractant" "ONT:PROTEIN" :ID
                                      "GO:0042056" :NAME
                                      "chemoattractant activity"))
                                    ("thrombin"
                                     ("thrombin" "ONT:PROTEIN" :ID "UP:P84122"
                                      :NAME "Thrombin"))
                                    ("symporter"
                                     ("symporter" "ONT:PROTEIN" :ID
                                      "GO:0015293" :NAME "symporter activity"))
                                    ("spinophilin"
                                     ("spinophilin" "ONT:PROTEIN" :ID
                                      "UP:Q96SB3" :NAME "Neurabin-2"))
                                    ("redox"
                                     ("redox" "ONT:PROTEIN" :ID "GO:0016491"
                                      :NAME "oxidoreductase activity"))
                                    ("papain"
                                     ("papain" "ONT:PROTEIN" :ID "UP:P00784"
                                      :NAME "Papain"))
                                    ("pS6"
                                     ("pS6" "ONT:PROTEIN" :ID "UP:P84571" :NAME
                                      "Phylloseptin-6"))
                                    ("mortalin"
                                     ("mortalin" "ONT:PROTEIN" :ID "UP:P38646"
                                      :NAME
                                      "Stress-70 protein, mitochondrial"))
                                    ("mTORC2"
                                     ("mTORC2" "ONT:PROTEIN" :ID "NCIT:C96315"
                                      :NAME "mTORC2"))
                                    ("lyase"
                                     ("lyase" "ONT:PROTEIN" :ID "GO:0016829"
                                      :NAME "lyase activity"))
                                    ("glycogen synthase kinase-3beta"
                                     ("glycogen synthase kinase-3beta"
                                      "ONT:PROTEIN" :ID "GO:0050321" :NAME
                                      "tau-protein kinase activity"))
                                    ("cyclinA"
                                     ("cyclinA" "ONT:PROTEIN" :ID "UP:P20248"
                                      :NAME "Cyclin-A2"))
                                    ("chaperone"
                                     ("chaperone" "ONT:PROTEIN" :ID
                                      "NCIT:C17764" :NAME "chaperone"))
                                    ("caspases-3"
                                     ("caspases-3" "ONT:PROTEIN" :ID
                                      "UP:P42574" :NAME "Caspase-3"))
                                    ("caspase3"
                                     ("caspase3" "ONT:PROTEIN" :ID "UP:P42574"
                                      :NAME "Caspase-3"))
                                    ("beta1"
                                     ("beta1" "ONT:PROTEIN" :ID "UP:Q60420"
                                      :NAME "Transcription factor 12"))
                                    ("beta-arrestin2"
                                     ("beta-arrestin2" "ONT:PROTEIN" :ID
                                      "UP:P32120" :NAME "Beta-arrestin-2"))
                                    ("beta-arrestin1"
                                     ("beta-arrestin1" "ONT:PROTEIN" :ID
                                      "UP:P49407" :NAME "Beta-arrestin-1"))
                                    ("alphavbeta6"
                                     ("alphavbeta6" "ONT:PROTEIN" :ID
                                      "NCIT:C124258" :NAME
                                      "integrin alphaV-beta6"))
                                    ("alphaENaC"
                                     ("alphaENaC" "ONT:PROTEIN" :ID "UP:P37088"
                                      :NAME
                                      "Amiloride-sensitive sodium channel subunit alpha"))
                                    ("TRL4"
                                     ("TRL4" "ONT:PROTEIN" :ID "UP:P09694"
                                      :NAME "Uncharacterized protein IRL4"))
                                    ("TKI"
                                     ("TKI" "ONT:PROTEIN" :ID "UP:P16223" :NAME
                                      "Locustatachykinin-1"))
                                    ("TGFbeta1"
                                     ("TGFbeta1" "ONT:PROTEIN" :ID "UP:P01137"
                                      :NAME
                                      "Transforming growth factor beta-1"))
                                    ("TGFalpha"
                                     ("TGFalpha" "ONT:PROTEIN" :ID "UP:P98138"
                                      :NAME
                                      "Transforming growth factor alpha"))
                                    ("TGF-beta1"
                                     ("TGF-beta1" "ONT:PROTEIN" :ID "UP:P01137"
                                      :NAME
                                      "Transforming growth factor beta-1"))
                                    ("PTTH"
                                     ("PTTH" "ONT:PROTEIN" :ID "UP:P17219"
                                      :NAME "Prothoracicotropic hormone"))
                                    ("POD"
                                     ("POD" "ONT:PROTEIN" :ID "UP:Q5B2E9" :NAME
                                      "Pyranose 2-oxidase"))
                                    ("PLA"
                                     ("PLA" "ONT:PROTEIN" :ID "UP:A1CFS2" :NAME
                                      "Probable pectin lyase A"))
                                    ("PI4Ks"
                                     ("PI4Ks" "ONT:PROTEIN" :ID "GO:0004430"
                                      :NAME
                                      "1-phosphatidylinositol 4-kinase activity"))
                                    ("PGs"
                                     ("PGs" "ONT:PROTEIN" :ID "UP:Q9LW07" :NAME
                                      "Probable polygalacturonase At3g15720"))
                                    ("NS5B"
                                     ("NS5B" "ONT:PROTEIN" :ID "UP:Q89786"
                                      :NAME "Non-structural protein 5b"))
                                    ("NS5A"
                                     ("NS5A" "ONT:PROTEIN" :ID "UP:Q89613"
                                      :NAME "Non-structural protein 5a"))
                                    ("NS3"
                                     ("NS3" "ONT:PROTEIN" :ID "UP:Q9YWQ0" :NAME
                                      "Non-structural protein 3"))
                                    ("MTORC1"
                                     ("MTORC1" "ONT:PROTEIN" :ID "NCIT:C96314"
                                      :NAME "mTORC1"))
                                    ("MPR"
                                     ("MPR" "ONT:PROTEIN" :ID "UP:O00264" :NAME
                                      "Membrane-associated progesterone receptor component 1"))
                                    ("MMP"
                                     ("MMP" "ONT:PROTEIN" :ID "NCIT:C18164"
                                      :NAME "matrix metalloproteinase"))
                                    ("IL-3Ralpha"
                                     ("IL-3Ralpha" "ONT:PROTEIN" :ID
                                      "UP:P26951" :NAME
                                      "Interleukin-3 receptor subunit alpha"))
                                    ("IGF"
                                     ("IGF" "ONT:PROTEIN" :ID "UP:P22618" :NAME
                                      "Insulin-like growth factor"))
                                    ("IFNgamma"
                                     ("IFNgamma" "ONT:PROTEIN" :ID "UP:P01579"
                                      :NAME "Interferon gamma"))
                                    ("I/R"
                                     ("I/R" "ONT:PROTEIN" :ID "UP:P06213" :NAME
                                      "Insulin receptor"))
                                    ("HRP"
                                     ("HRP" "ONT:PROTEIN" :ID "UP:Q08168" :NAME
                                      "58 kDa phosphoprotein"))
                                    ("HDP"
                                     ("HDP" "ONT:PROTEIN" :ID "UP:Q8IL04" :NAME
                                      "Heme ligase"))
                                    ("GsMTx4"
                                     ("GsMTx4" "ONT:PROTEIN" :ID "UP:Q7YT39"
                                      :NAME "M-theraphotoxin-Gr1a"))
                                    ("GSI"
                                     ("GSI" "ONT:PROTEIN" :ID "UP:P05457" :NAME
                                      "Glutamine synthetase 1"))
                                    ("GROalpha"
                                     ("GROalpha" "ONT:PROTEIN" :ID "UP:O46676"
                                      :NAME
                                      "Growth-regulated protein homolog alpha"))
                                    ("FLS"
                                     ("FLS" "ONT:PROTEIN" :ID "UP:Q9ZWQ9" :NAME
                                      "Flavonol synthase/flavanone 3-hydroxylase"))
                                    ("FDA"
                                     ("FDA" "ONT:PROTEIN" :ID "UP:P81543" :NAME
                                      "Zinc-containing ferredoxin A"))
                                    ("DHR"
                                     ("DHR" "ONT:PROTEIN" :ID "UP:Q16983" :NAME
                                      "Diuretic hormone receptor"))
                                    ("CytC"
                                     ("CytC" "ONT:PROTEIN" :ID "UP:Q00951"
                                      :NAME "Hemolysin"))
                                    ("CPC"
                                     ("CPC" "ONT:PROTEIN" :ID "UP:P29602" :NAME
                                      "Cucumber peeling cupredoxin"))
                                    ("CCI"
                                     ("CCI" "ONT:PROTEIN" :ID "UP:P32954" :NAME
                                      "Cysteine proteinase 1"))
                                    ("BAPN"
                                     ("BAPN" "ONT:PROTEIN" :ID "UP:P79098"
                                      :NAME "Aminopeptidase N"))
                                    ("APB"
                                     ("APB" "ONT:PROTEIN" :ID "UP:Q9H4A4" :NAME
                                      "Aminopeptidase B"))
                                    ("AMPKalpha1"
                                     ("AMPKalpha1" "ONT:PROTEIN" :ID
                                      "NCIT:C116033" :NAME
                                      "5-AMP-activated protein kinase catalytic subunit alpha-1"))
                                    ("AEP"
                                     ("AEP" "ONT:PROTEIN" :ID "UP:Q9EQN5" :NAME
                                      "DNA-binding protein SMUBP-2"))
                                    ("ABA"
                                     ("ABA" "ONT:PROTEIN" :ID "UP:Q00022" :NAME
                                      "Agaricus bisporus lectin"))
                                    ("nanoparticles"
                                     ("nanoparticles" "ONT:MOLECULE" :ID
                                      "CHEBI:50803" :NAME "nanoparticle"))
                                    ("macromolecules"
                                     ("macromolecules" "ONT:MOLECULE" :ID
                                      "CHEBI:33839" :NAME "macromolecule"))
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
                                    ("sFRP2"
                                     ("sFRP2" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q863H1" :NAME
                                      "Secreted frizzled-related protein 2"))
                                    ("p44"
                                     ("p44" "ONT:GENE-PROTEIN" :ID "UP:Q8TCB0"
                                      :NAME "Interferon-induced protein 44"))
                                    ("neurotrophin-3"
                                     ("neurotrophin-3" "ONT:GENE-PROTEIN" :ID
                                      "UP:P20783" :NAME "Neurotrophin-3"))
                                    ("merlin"
                                     ("merlin" "ONT:GENE-PROTEIN" :ID
                                      "UP:P35240" :NAME "Merlin"))
                                    ("mGluR2"
                                     ("mGluR2" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q14416" :NAME
                                      "Metabotropic glutamate receptor 2"))
                                    ("hCG"
                                     ("hCG" "ONT:GENE-PROTEIN" :ID "UP:Q9NFL4"
                                      :NAME "Hemocyanin G chain"))
                                    ("galectin-3"
                                     ("galectin-3" "ONT:GENE-PROTEIN" :ID
                                      "UP:P17931" :NAME "Galectin-3"))
                                    ("eIF4G1"
                                     ("eIF4G1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q04637" :NAME
                                      "Eukaryotic translation initiation factor 4 gamma 1"))
                                    ("eIF2alpha"
                                     ("eIF2alpha" "ONT:GENE-PROTEIN" :ID
                                      "FA:01067" :NAME "eIF-2-alpha family"))
                                    ("cyclases"
                                     ("cyclases" "ONT:GENE-PROTEIN" :ID
                                      "GO:0009975" :NAME "cyclase activity"))
                                    ("VCAM1"
                                     ("VCAM1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q28260" :NAME
                                      "Vascular cell adhesion protein 1"))
                                    ("TPA"
                                     ("TPA" "ONT:GENE-PROTEIN" :ID "UP:P00750"
                                      :NAME
                                      "Tissue-type plasminogen activator"))
                                    ("SREBP1"
                                     ("SREBP1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q60416" :NAME
                                      "Sterol regulatory element-binding protein 1"))
                                    ("SPC"
                                     ("SPC" "ONT:GENE-PROTEIN" :ID "UP:P11686"
                                      :NAME
                                      "Pulmonary surfactant-associated protein C"))
                                    ("SPA"
                                     ("SPA" "ONT:GENE-PROTEIN" :ID "UP:Q8IWL1"
                                      :NAME
                                      "Pulmonary surfactant-associated protein A2"))
                                    ("SMCs"
                                     ("SMCs" "ONT:GENE-PROTEIN" :ID "FA:03684"
                                      :NAME "SMC family"))
                                    ("SMC"
                                     ("SMC" "ONT:GENE-PROTEIN" :ID "FA:03684"
                                      :NAME "SMC family"))
                                    ("SIVA"
                                     ("SIVA" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF05458.10" :NAME "siva"))
                                    ("SEP"
                                     ("SEP" "ONT:GENE-PROTEIN" :ID "UP:P49907"
                                      :NAME "Selenoprotein P"))
                                    ("SDH"
                                     ("SDH" "ONT:GENE-PROTEIN" :ID "UP:P20132"
                                      :NAME
                                      "L-serine dehydratase/L-threonine deaminase"))
                                    ("Rho"
                                     ("Rho" "ONT:GENE-PROTEIN" :ID "FA:03668"
                                      :NAME "rho family"))
                                    ("RasGRP"
                                     ("RasGRP" "ONT:GENE-PROTEIN" :ID
                                      "FA:03235" :NAME "RASGRP family"))
                                    ("RAPTOR"
                                     ("RAPTOR" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q8N122" :NAME
                                      "Regulatory-associated protein of mTOR"))
                                    ("PUMA"
                                     ("PUMA" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF15826.3" :NAME "PUMA"))
                                    ("PPE"
                                     ("PPE" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF00823.17" :NAME "PPE"))
                                    ("PPARgamma"
                                     ("PPARgamma" "ONT:GENE-PROTEIN" :ID
                                      "UP:P37231" :NAME
                                      "Peroxisome proliferator-activated receptor gamma"))
                                    ("PPARalpha"
                                     ("PPARalpha" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q07869" :NAME
                                      "Peroxisome proliferator-activated receptor alpha"))
                                    ("PP1"
                                     ("PP1" "ONT:GENE-PROTEIN" :ID "FA:03001"
                                      :NAME "PP-1 subfamily"))
                                    ("PDL1"
                                     ("PDL1" "ONT:GENE-PROTEIN" :ID "UP:Q9NZQ7"
                                      :NAME
                                      "Programmed cell death 1 ligand 1"))
                                    ("PAI1"
                                     ("PAI1" "ONT:GENE-PROTEIN" :ID "UP:P05121"
                                      :NAME
                                      "Plasminogen activator inhibitor 1"))
                                    ("PACAP"
                                     ("PACAP" "ONT:GENE-PROTEIN" :ID
                                      "UP:P18509" :NAME
                                      "Pituitary adenylate cyclase-activating polypeptide"))
                                    ("NP1"
                                     ("NP1" "ONT:GENE-PROTEIN" :ID "UP:Q26239"
                                      :NAME "Nitrophorin-1"))
                                    ("NHE1"
                                     ("NHE1" "ONT:GENE-PROTEIN" :ID "UP:Q552S0"
                                      :NAME "Sodium/hydrogen exchanger 1"))
                                    ("NEDD8"
                                     ("NEDD8" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q15843" :NAME "NEDD8"))
                                    ("MaR1"
                                     ("MaR1" "ONT:GENE-PROTEIN" :ID "UP:Q91175"
                                      :NAME "Alpha-1A adrenergic receptor"))
                                    ("MIG6"
                                     ("MIG6" "ONT:GENE-PROTEIN" :ID "FA:02304"
                                      :NAME "MIG6 family"))
                                    ("JAK"
                                     ("JAK" "ONT:GENE-PROTEIN" :ID "FA:03129"
                                      :NAME "JAK subfamily"))
                                    ("IKKbeta"
                                     ("IKKbeta" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q95KV0" :NAME
                                      "Inhibitor of nuclear factor kappa-B kinase subunit beta"))
                                    ("IFNalpha"
                                     ("IFNalpha" "ONT:GENE-PROTEIN" :ID
                                      "UP:P35849" :NAME "Interferon alpha"))
                                    ("HSP70"
                                     ("HSP70" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17765" :NAME
                                      "heat shock protein-70"))
                                    ("HIF-1alpha"
                                     ("HIF-1alpha" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q16665" :NAME
                                      "Hypoxia-inducible factor 1-alpha"))
                                    ("HCC"
                                     ("HCC" "ONT:GENE-PROTEIN" :ID "UP:Q9NFL6"
                                      :NAME "Hemocyanin C chain"))
                                    ("GRP78"
                                     ("GRP78" "ONT:GENE-PROTEIN" :ID
                                      "UP:P11021" :NAME
                                      "78 kDa glucose-regulated protein"))
                                    ("Fos"
                                     ("Fos" "ONT:GENE-PROTEIN" :ID "FA:00408"
                                      :NAME "fos subfamily"))
                                    ("FTS"
                                     ("FTS" "ONT:GENE-PROTEIN" :ID "FA:04283"
                                      :NAME "FTS subfamily"))
                                    ("FAA"
                                     ("FAA" "ONT:GENE-PROTEIN" :ID "UP:P16930"
                                      :NAME "Fumarylacetoacetase"))
                                    ("DHP"
                                     ("DHP" "ONT:GENE-PROTEIN" :ID "UP:Q55DL0"
                                      :NAME "Dihydropyrimidinase"))
                                    ("Connexin43"
                                     ("Connexin43" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03508.11" :NAME "connexin43"))
                                    ("CaMKI"
                                     ("CaMKI" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q9P7I2" :NAME
                                      "Calcium/calmodulin-dependent protein kinase type I"))
                                    ("CTR"
                                     ("CTR" "ONT:GENE-PROTEIN" :ID "UP:P30988"
                                      :NAME "Calcitonin receptor"))
                                    ("CK2"
                                     ("CK2" "ONT:GENE-PROTEIN" :ID "FA:03101"
                                      :NAME "CK2 subfamily"))
                                    ("CD40L"
                                     ("CD40L" "ONT:GENE-PROTEIN" :ID
                                      "UP:P29965" :NAME "CD40 ligand"))
                                    ("CART"
                                     ("CART" "ONT:GENE-PROTEIN" :ID "FA:00467"
                                      :NAME "CART family"))
                                    ("BET"
                                     ("BET" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF17035.3" :NAME "BET"))
                                    ("Arf"
                                     ("Arf" "ONT:GENE-PROTEIN" :ID "FA:03659"
                                      :NAME "arf family"))
                                    ("ALP"
                                     ("ALP" "ONT:GENE-PROTEIN" :ID "UP:P03973"
                                      :NAME "Antileukoproteinase"))
                                    ("ADC"
                                     ("ADC" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF06314.9" :NAME "ADC"))
                                    ("4E-BP-1"
                                     ("4E-BP-1" "ONT:GENE-PROTEIN" :ID
                                      "UP:Q0P5A7" :NAME
                                      "Eukaryotic translation initiation factor 4E-binding protein 1"))
                                    ("HOTAIR"
                                     ("HOTAIR" "ONT:GENE" :ID "NCIT:C116285"
                                      :NAME "HOTAIR"))
                                    ("GAG"
                                     ("GAG" "ONT:GENE" :ID "NCIT:C16614" :NAME
                                      "GAG gene"))
                                    ("FAL1"
                                     ("FAL1" "ONT:GENE" :ID "NCIT:C119656"
                                      :NAME "FALEC"))
                                    ("vacuoles"
                                     ("vacuoles" "ONT:CELL-PART" :ID
                                      "UP:SL-0272" :NAME "Vacuole"))
                                    ("sarcomeres"
                                     ("sarcomeres" "ONT:CELL-PART" :ID
                                      "UP:SL-0313" :NAME "Sarcomere"))
                                    ("organelles"
                                     ("organelles" "ONT:CELL-PART" :ID
                                      "GO:0043226" :NAME "organelle"))
                                    ("microsomes"
                                     ("microsomes" "ONT:CELL-PART" :ID
                                      "UP:SL-0166" :NAME "Microsome"))
                                    ("synoviocytes"
                                     ("synoviocytes" "ONT:CELL" :ID
                                      "CO:0000214" :NAME "synovial cell"))
                                    ("oocytes"
                                     ("oocytes" "ONT:CELL" :ID "BTO:0000964"
                                      :NAME "oocyte"))
                                    ("granulocytes"
                                     ("granulocytes" "ONT:CELL" :ID
                                      "BTO:0000539" :NAME "granulocyte"))
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
                                    ("gamma-tocopherol"
                                     ("gamma-tocopherol" "ONT:CHEMICAL" :ID
                                      "CHEBI:18185" :NAME "gamma-tocopherol"))
                                    ("PD-153035"
                                     ("PD-153035" "ONT:CHEMICAL" :ID
                                      "CHEBI:91076" :NAME "PD-153035"))
                                    ("GTP"
                                     ("GTP" "ONT:CHEMICAL" :ID "CHEBI:15996"
                                      :NAME "GTP"))
                                    ("GDP"
                                     ("GDP" "ONT:CHEMICAL" :ID "CHEBI:17552"
                                      :NAME "GDP"))
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
                                    ("SKBR3"
                                     ("SKBR3" "ONT:CELL-LINE" :ID "EFO:0001236"
                                      :NAME "SKBR3"))
                                    ("REF52"
                                     ("REF52" "ONT:CELL-LINE" :ID "CVCL:6848"
                                      :NAME "REF52"))
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
                                    ("Calu6"
                                     ("Calu6" "ONT:CELL-LINE" :ID "EFO:0002152"
                                      :NAME "Calu6"))
                                    ("Calu3"
                                     ("Calu3" "ONT:CELL-LINE" :ID "EFO:0002819"
                                      :NAME "Calu3"))
                                    ("AML12"
                                     ("AML12" "ONT:CELL-LINE" :ID "CVCL:0140"
                                      :NAME "AML12"))
                                    ("T-lymphocyte"
                                     ("T-lymphocyte" "ONT:CELL" :ID
                                      "BTO:0000782" :NAME "T-lymphocyte"))
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
                                    ("PTM"
                                     ("PTM" "ONT:BIOLOGICAL-PROCESS" :ID
                                      "GO:0043687" :NAME
                                      "post-translational protein modification"))
                                    ("retroviruses"
                                     ("retroviruses" "ONT:VIRUS" :ID
                                      "NCIT:C14268" :NAME "retroviridae"))
                                    ("meta-analysis"
                                     ("meta-analysis" "ONT:PROCEDURE" :ID
                                      "NCIT:C17886" :NAME "meta-analysis"))
                                    ("syncytium"
                                     ("syncytium" "ONT:INTERNAL-BODY-PART" :ID
                                      "BTO:0005784" :NAME "syncytium"))
                                    ("P-body"
                                     ("P-body" "ONT:CELL-PART" :ID "UP:SL-0230"
                                      :NAME "P-body"))
                                    ("DNA"
                                     ("DNA" "ONT:CELL-PART" :ID "CHEBI:16991"
                                      :NAME "deoxyribonucleic acid"))
                                    ("let-7"
                                     ("let-7" "ONT:RNA" :ID "NCIT:C48183" :NAME
                                      "let-7"))
                                    ("RNAs"
                                     ("RNAs" "ONT:RNA" :ID "NCIT:C812" :NAME
                                      "ribonucleic acid"))
                                    ("RNA"
                                     ("RNA" "ONT:RNA" :ID "NCIT:C812" :NAME
                                      "ribonucleic acid"))))

