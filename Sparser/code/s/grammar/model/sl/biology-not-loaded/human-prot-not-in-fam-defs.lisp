(defparameter *grouped-human-prot-missing-from-fam*
  '(((DEF-FAMILY "MAD-1" :SYNONYMS ("MAD1") :IDENTIFIER "FA:02139")
     ; only protein in this family
  ((DEFINE-PROTEIN "UP:Q9Y6D9"
                   ("HsMAD1" "HsMad1" "MAD1" "MAD1 (mitotic arrest deficient"
                    "MAD1 mitotic arrest deficient like 1"
                    "MAD1 mitotic arrest deficient-like 1 (yeast)" "MAD1L1"
                    "MD1L1_HUMAN" "Mad1L1" "PIG9" "Q9Y6D9" "TP53I9" "TXBP181"
                    "txbp181" "hMAD1"))))
    
    ((DEF-FAMILY "TEL2" :SYNONYMS ("Tel2") :IDENTIFIER "FA:03961")
     ; only protein in this family
     ((DEFINE-PROTEIN "UP:Q9Y603" ("ETV7" "TEL2" "TEL2 family" "tel2"))))
    ((DEF-FAMILY "SIT" :SYNONYMS NIL :IDENTIFIER "XFAM:PF15330.4")
     ; definitely right family, only one defined in humans
     ((DEFINE-PROTEIN "UP:Q9Y3P8"
                   ("SHP2 interacting transmembrane adapter protein" "SIT"
                    "SIT1"
                    "signaling threshold regulating transmembrane adaptor 1"))))
    ((DEF-FAMILY "MRF" :SYNONYMS ("MRFs") :IDENTIFIER "FA:02356")
     ; there are two proteins in this family, but this is the only one we have defined, and the other is only MRF-like
  ((DEFINE-PROTEIN "UP:Q9Y2G1" ("MRF" "myelin gene regulatory factor"))))
    ((DEF-FAMILY "TIP49" :SYNONYMS ("Tip49") :IDENTIFIER "XFAM:PF06068.11")
     ; found a second, so added both
  ((DEFINE-PROTEIN "UP:Q9Y265"
                   ("ECP54" "INO80 complex subunit H" "INO80H" "NMP238"
                    "pontin52" "Q9Y265" "RUVB1_HUMAN" "RUVBL1" "RVB1"
                    "RuvB (E coli homolog)-like 1" "RuvB like AAA ATPase 1"
                    "RuvB-like 1" "RuvB-like 1 (E. coli)"
                    "RuvB-like AAA ATPase" "RuvB-like AAA ATPase 1" "rvb1"
                    "TIP49" "TIP49A" "TIP49a" "tip49" "tip49a"))))
    ((DEF-FAMILY "UMP1" :SYNONYMS ("Ump1") :IDENTIFIER "XFAM:PF05348.9")
     ; only one human one
  ((DEFINE-PROTEIN "UP:Q9Y244" ("UMP1" "ump1"))))
    ((DEF-FAMILY "EXO70" :SYNONYMS ("Exo70" "exo70") :IDENTIFIER "FA:01182")
     ; only one in humans
  ((DEFINE-PROTEIN "UP:Q9UPT5"
                   ("EXO70" "EXO70 family" "EXOC7" "EXOC7_HUMAN"
                    "exocyst complex component 7" "KIAA1067" "Q9UPT5"
                    "exo70"))))
    ((DEF-FAMILY "MIG6" :SYNONYMS ("Mig-6") :IDENTIFIER "FA:02304")
     ; only one in humans
  ((DEFINE-PROTEIN "UP:Q9UJM3"
                   ("ERBB receptor feedback inhibitor 1" "ERRFI" "ERRFI1"
                    "ErbB receptor feedback inhibitor 1" "MIG-6" "MIG6"
                    "MIG6 family" "mig-6" "mig6" "mitogen inducible gene-6"
                    "Q9UJM3" "RALT"))))
 ((DEF-FAMILY "RAP1" :SYNONYMS ("Rap-1") :IDENTIFIER "FA:04773")
  ((DEFINE-PROTEIN "UP:Q9NYB0"
                   ("dopamine receptor-interacting protein 5" "Q9NYB0" "RAP1"
                    "RAP1 family" "RAP1 homolog" "rap-1" "rap1"
                    "repressor/activator protein 1 homolog" "TE2IP_HUMAN"
                    "TERF2 interacting protein"
                    "TERF2-interacting telomeric protein 1" "TERF2IP"
                    "TRF2-interacting telomeric protein 1"
                    "telomeric repeat-binding factor 2-interacting protein 1"
                    "hRap1" "small GTPase Rhoptery associated protein 1"))
   (DEFINE-PROTEIN "UP:Q9UJ41"
                   ("Q9UJ41" "RAB guanine nucleotide exchange factor 1"
                    "RABEX -5" "RABEX5" "RABGEF1" "RABX5_HUMAN" "RAP1"
                    "Rab5 GDP/GTP exchange factor" "RabGEF1"
                    "Rabaptin-5-associated exchange factor for Rab5" "rabex-5"
                    "rabex5"))))
 ((DEF-FAMILY "CAF-1" :SYNONYMS ("CAF1") :IDENTIFIER "FA:00418")
  ((DEFINE-PROTEIN "UP:Q9UIV1"
                   ("BTG1 binding factor 1" "BTG1-binding factor 1" "CAF-1"
                    "CAF1" "CAF1 family"
                    "CCR4-NOT transcription complex subunit 7"
                    "CCR4-associated factor 1" "CNOT7" "CNOT7_HUMAN" "caf1"
                    "caf1a" "cnot7" "Q9UIV1" "subunit 7"))))
 ((DEF-FAMILY "DARPP-32" :SYNONYMS ("DARPP32") :IDENTIFIER "XFAM:PF05395.10")
  ((DEFINE-PROTEIN "UP:Q9UD71"
                   ("DARPP-32" "DARPP32"
                    "Dopamine- and cAMP-regulated neuronal phosphoprotein"
                    "FLJ20940" "PPP1R1B" "PPR1B_HUMAN" "ppp1r1b" "Q9UD71"
                    "dopamine and cAMP regulated phosphoprotein"
                    "protein phosphatase 1 regulatory inhibitor subunit 1B"
                    "regulatory (inhibitor)subunit 1B"))))
 ((DEF-FAMILY "OPT" :SYNONYMS ("opt" "opted" "opts") :IDENTIFIER
              "XFAM:PF03169.13")
  ((DEFINE-PROTEIN "UP:Q9UBM4" ("OPT" "OPTC" "opt" "opted" "opticin" "opts"))))
 ((DEF-FAMILY "DAP10" :SYNONYMS NIL :IDENTIFIER "FA:00875")
  ((DEFINE-PROTEIN "UP:Q9UBK5"
                   ("DAP10" "DAP10 family" "DNAX-activation protein 10" "HCST"
                    "HCST_HUMAN" "KAP10" "Membrane protein DAP10" "Q9UBK5"
                    "Transmembrane adapter protein KAP10"
                    "hematopoietic cell signal transducer"))))
 ((DEF-FAMILY "HOP2" :SYNONYMS ("Hop2") :IDENTIFIER "FA:01789")
  ((DEFINE-PROTEIN "UP:Q9P2W1"
                   ("GT198" "HOP2" "HOP2_HUMAN" "HUMGT198A"
                    "homologous-pairing protein 2 homolog"
                    "PSMC3 interacting protein" "PSMC3IP" "Q9P2W1"
                    "TBP-1 interacting protein" "TBPIP" "hop2"))))
 ((DEF-FAMILY "RCD1" :SYNONYMS ("rcd1") :IDENTIFIER "FA:03250")
  ((DEFINE-PROTEIN "UP:Q92600"
                   ("CCR4-NOT transcription complex subunit 9" "CNOT9" "caf40"
                    "q92600" "RCD1" "RCD1_HUMAN" "RQCD1" "rcd-1"))
   (DEFINE-PROTEIN "UP:Q9P2N6"
                   ("FLJ10081" "KANL3_HUMAN" "KANSL3"
                    "KAT8 regulatory NSL complex subunit 3" "KIAA1310" "NSL3"
                    "Q9P2N6" "rcd1" "SI1" "si1"))))
 ((DEF-FAMILY "GCN2" :SYNONYMS NIL :IDENTIFIER "FA:03102")
  ((DEFINE-PROTEIN "UP:Q9P2K8" ("EIF2AK4" "GCN2" "GCN2 subfamily"))))
 ((DEF-FAMILY "Hic" :SYNONYMS ("hic") :IDENTIFIER "FA:01997")
  ((DEFINE-PROTEIN "UP:Q9P1T7" ("HIC" "hic" "hic subfamily"))))
 ((DEF-FAMILY "RNF12" :SYNONYMS NIL :IDENTIFIER "FA:03425")
  ((DEFINE-PROTEIN "UP:Q9NVW2"
                   ("E3 ubiquitin-protein ligase RLIM" "LIM domain interacting"
                    "LIM domain interacting ring finger protein" "MGC15161"
                    "NY-REN-43" "Q9NVW2" "RLIM" "RNF12" "RNF12_HUMAN" "rlim"
                    "ring finger protein" "ring finger protein 12"
                    "ring finger protein, LIM domain interacting"
                    "ring zinc finger protein NY-REN-43antigen"))))
 ((DEF-FAMILY "DEPP" :SYNONYMS NIL :IDENTIFIER "XFAM:PF15343.4")
  ((DEFINE-PROTEIN "UP:Q9NTK1" ("DEPP"))))
 ((DEF-FAMILY "TOM22" :SYNONYMS ("tom22") :IDENTIFIER "FA:04124")
  ((DEFINE-PROTEIN "UP:Q9NS69"
                   ("Mitochondrial import receptor subunit TOM22 homolog"
                    "Q9NS69" "TOM22" "TOM22_HUMAN" "TOMM22" "tom22 family"
                    "translocase of outer mitochondrial membrane 22"
                    "translocase of outer mitochondrial membrane 22 homolog (yeast)"))))
 ((DEF-FAMILY "SPAN-X" :SYNONYMS ("SPANX") :IDENTIFIER "FA:03786")
  ((DEFINE-PROTEIN "UP:Q9NS26"
                   ("SPAN-X family" "SPANX" "SPANXA1"
                    "sperm protein associated with the nucleus, X-linked, family member A1"))))
 ((DEF-FAMILY "SARA" :SYNONYMS NIL :IDENTIFIER "XFAM:PF11409.6")
  ((DEFINE-PROTEIN "UP:O95405"
                   ("FYVE domain containing 9" "MADHIP"
                    "madh-interacting protein"
                    "mothers against decapentaplegic homolog-interacting protein"
                    "NSP" "novel serine protease" "o95405" "o95405-1"
                    "PPP1R173" "SARA" "sara"
                    "smad anchor for receptor activation" "ZFYV9_HUMAN"
                    "ZFYVE9" "ZFYVE9 isoform 1" "ZFYVE9-1" "zfyve9"
                    "Zinc finger FYVE domain-containing protein 9" "hSARA"
                    "mothers against decapentaplegic homolog (Drosophila)interacting protein"
                    "receptor activation anchor" "regulatory subunit 173"
                    "zinc finger FYVE-type containing 9"))
   (DEFINE-PROTEIN "UP:Q9NR31"
                   ("COPII-associated small GTPase" "GTP-binding protein SAR1a"
                    "Q9NR31" "SAR1" "SAR1A" "SAR1A_HUMAN" "SARA" "SARA1"
                    "sar1a"))))
 ((DEF-FAMILY "LMP" :SYNONYMS ("LMPs") :IDENTIFIER "XFAM:PF04778.10")
  ((DEFINE-PROTEIN "UP:Q9NR12"
                   ("ENIGMA" "LMP" "LMPs" "PDLI7_HUMAN" "PDLIM7"
                    "PDZ and LIM domain 7" "PDZ and LIM domain 7 (enigma)"
                    "PDZ and LIM domain protein 7" "Q9NR12" "enigma"
                    "protein enigma"))))
 ((DEF-FAMILY "RITA" :SYNONYMS NIL :IDENTIFIER "FA:04818")
  ((DEFINE-PROTEIN "UP:Q96K30" ("RITA" "RITA family"))
   (DEFINE-PROTEIN "UP:Q9NQX6"
                   ("Q9NQX6" "RITA" "ZN331_HUMAN" "ZNF331" "ZNF361" "ZNF463"
                    "rearranged in thyroid adenomas"
                    "zinc finger protein 331"))))
 ((DEF-FAMILY "PAR6" :SYNONYMS ("Par6") :IDENTIFIER "FA:02654")
  ((DEFINE-PROTEIN "UP:Q9NPB6"
                   ("PAR-6" "PAR-6 alpha" "PAR-6A" "PAR6" "PAR6 family" "PAR6A"
                    "PAR6A_HUMAN" "PAR6C" "PAR6a" "PAR6alpha" "PARD6" "PARD6A"
                    "par-6" "par6" "Par6C" "par6α"
                    "partitioning defective 6 homolog alpha" "Q9NPB6" "TAX40"
                    "TIP-40" "tax interaction protein 40" "tip40"
                    "par-6 (partitioning defective 6"
                    "par-6 family cell polarity regulator alpha"
                    "par-6 partitioning defective 6 homolog alpha (C. elegans)"
                    "par6alpha" "pard6a" "tax interaction protein-40"))))
 ((DEF-FAMILY "PLUNC" :SYNONYMS ("plunc") :IDENTIFIER "FA:00392")
  ((DEFINE-PROTEIN "UP:Q9NP55" ("PLUNC" "SPLUNC1" "plunc family" "spurt"))))
 ((DEF-FAMILY "SRAP" :SYNONYMS ("SrAp") :IDENTIFIER "XFAM:PF02586.12")
  ((DEFINE-PROTEIN "UP:Q9HD15"
                   ("SRAP" "SrAp" "sra1" "steroid receptor RNA activator 1"))))
 ((DEF-FAMILY "GrpE" :SYNONYMS ("grpE") :IDENTIFIER "FA:01665")
  ((DEFINE-PROTEIN "UP:Q9HAV7"
                   ("FLJ25609" "GREPEL1" "GRPE1_HUMAN" "GRPEL1" "GrpE"
                    "GrpE like 1" "GrpE protein homolog 1, mitochondrial"
                    "GrpE-like 1" "Q9HAV7" "hMGE" "mitochondrial (E. coli)"))))
 ((DEF-FAMILY "XLF" :SYNONYMS ("Xlf") :IDENTIFIER "FA:04698")
  ((DEFINE-PROTEIN "UP:Q9H9Q4"
                   ("cernunnos" "FLJ12610" "NHEJ1" "NHEJ1_HUMAN"
                    "non-homologous end-joining factor 1" "protein cernunnos"
                    "Q9H9Q4" "XLF" "XLF family" "XRCC4-like factor"
                    "non-homologous end joining factor 1"
                    "nonhomologous end-joining factor 1"))))
 ((DEF-FAMILY "FTS" :SYNONYMS NIL :IDENTIFIER "FA:04283")
  ((DEFINE-PROTEIN "UP:Q9H8T0"
                   ("AKT interacting protein" "AKTIP" "FTS" "FTS subfamily"
                    "ft1"))))
 ((DEF-FAMILY "SDS3" :SYNONYMS NIL :IDENTIFIER "FA:03527")
  ((DEFINE-PROTEIN "UP:Q9H7L9"
                   ("FLJ00052" "K63polyUb-SUDS3" "Q9H7L9" "SAP45" "SDS3"
                    "SDS3 family" "SDS3 homolog" "SDS3_HUMAN"
                    "SIN3A corepressor complex component" "SUDS3" "sds3"
                    "sin3 histone deacetylase corepressor complex component"
                    "suds3"
                    "suppressor of defective silencing 3 homolog (S. cerevisiae)"
                    "suppressor of defective silencing 3 homolog (SDS3"))))
 ((DEF-FAMILY "GPP34" :SYNONYMS NIL :IDENTIFIER "XFAM:PF05719.9")
  ((DEFINE-PROTEIN "UP:Q9H4A6"
                   ("GOLP3_HUMAN" "GOLPH3" "GPP34" "golgi phosphoprotein 3"
                    "MIDAS" "midas" "Q9H4A6"))))
 ((DEF-FAMILY "Cdt1" :SYNONYMS ("cdt1") :IDENTIFIER "FA:00547")
  ((DEFINE-PROTEIN "UP:Q9H211"
                   ("CDT1" "CDT1_HUMAN" "cdt1" "DNA replication factor"
                    "DNA replication factor CDT1" "DNA replication factor Cdt1"
                    "DUP" "double parked homolog" "Q9H211" "cdt1 family"
                    "chromatin licensing and DNA replication factor 1"
                    "hCdt1"))))
 ((DEF-FAMILY "ITFG3" :SYNONYMS NIL :IDENTIFIER "FA:01923")
  ((DEFINE-PROTEIN "UP:Q9H0X4" ("ITFG3" "ITFG3 family"))))
 ((DEF-FAMILY "Tollip" :SYNONYMS ("tollip") :IDENTIFIER "FA:04120")
  ((DEFINE-PROTEIN "UP:Q9H0E2"
                   ("IL-1RI" "Q9H0E2" "TOLIP_HUMAN" "TOLLIP"
                    "toll-interacting protein" "tollip"
                    "toll interacting protein" "tollip family"))))
 ((DEF-FAMILY "Mis12" :SYNONYMS ("mis12") :IDENTIFIER "FA:02309")
  ((DEFINE-PROTEIN "UP:Q9H081"
                   ("KNTC2AP" "MGC2488" "MIS12"
                    "MIS12, kinetochore complex component" "MIS12_HUMAN" "MTW1"
                    "mis12" "Q9H081" "hMIS12" "hMis12" "homolog (S. pombe)"
                    "kinetochore complex component" "mis12 family"))))
 ((DEF-FAMILY "Spartan" :SYNONYMS ("spartan") :IDENTIFIER "FA:05084")
  ((DEFINE-PROTEIN "UP:Q9H040"
                   ("c1orf124" "DKFZP547N043"
                    "DNA damage-targeting VCP (p97)adaptor" "DVC1" "Q9H040"
                    "SPRTN" "SPRTN_HUMAN" "spartan"
                    "SprT-like N-terminal domain"
                    "SprT-like domain at the N terminus"
                    "SprT-like domain-containing protein Spartan"
                    "UNQ1880/PRO4323" "chromosome 1 open reading frame 124"))))
 ((DEF-FAMILY "TSG" :SYNONYMS ("TSGs" "tsg") :IDENTIFIER "XFAM:PF04668.10")
  ((DEFINE-PROTEIN "UP:Q9GZX9"
                   ("Q9GZX9" "TSG" "TSGs" "TWSG1" "anti-oncogenes"
                    "antioncogenes" "tsg" "tumor suppressor gene"))))
 ((DEF-FAMILY "HARP" :SYNONYMS NIL :IDENTIFIER "XFAM:PF07443.11")
  ((DEFINE-PROTEIN "UP:O60218"
                   ("1B10" "AK1BA_HUMAN" "AKR1B10" "AKR1B11" "AKR1B12" "ALDRLn"
                    "ARL-1" "ARL1" "Aldo-keto reductase family 1 member B10"
                    "arp" "HARP" "HSI" "o60218"
                    "aldo-keto reductase family 1 member B10"
                    "aldose reductase-like 1" "aldose reductase-like peptide"
                    "aldose reductase-related protein"
                    "member B10 (aldose reductase)"
                    "member B11 (aldose reductase-like)"
                    "small intestine reductase"))
   (DEFINE-PROTEIN "UP:Q9BZ23"
                   ("c20orf48" "FLJ11729" "HARP" "Hallervorden-Spatz syndrome"
                    "NBIA1" "PANK2" "PANK2(111-570)" "PANK2_HUMAN" "PKAN"
                    "PNK2_HUMAN" "Q9BZ23"
                    "neurodegeneration with brain iron accumulation 1 (Hallervorden-Spatz syndrome)"
                    "pantothenate kinase 2"))))
 ((DEF-FAMILY "PAP-2" :SYNONYMS ("PAP2") :IDENTIFIER "XFAM:PF01569.19")
  ((DEFINE-PROTEIN "UP:Q9BWT3"
                   ("Neo-PAP" "Neo-poly(A)polymerase" "PAP-2" "PAP-gamma"
                    "PAP2" "PAPOG_HUMAN" "PAPOLG" "Poly(A)polymerase gamma"
                    "polynucleotide adenylyltransferase gamma" "Q9BWT3"
                    "SRP RNA 3'-adenylating enzyme" "neo"))))
 ((DEF-FAMILY "MRI" :SYNONYMS ("MRIs") :IDENTIFIER "XFAM:PF15325.4")
  ((DEFINE-PROTEIN "UP:Q9BWK5" ("c7orf49" "MRI" "MRI_HUMAN" "MRIs" "Q9BWK5"))))
 ((DEF-FAMILY "DCC1" :SYNONYMS NIL :IDENTIFIER "FA:00878")
  ((DEFINE-PROTEIN "UP:Q9BVC3"
                   ("DCC1" "DCC1 family"
                    "DNA replication and sister chromatid cohesion 1"
                    "DSCC1"))))
 ((DEF-FAMILY "V-SNARE" :SYNONYMS ("v-SNARE" "v-SNAREs" "vSNARE") :IDENTIFIER
              "XFAM:PF05008.13")
  ((DEFINE-PROTEIN "UP:Q9BV40"
                   ("EDB" "Q9BV40" "V-SNARE" "VAMP-8" "VAMP8" "VAMP8_HUMAN"
                    "endobrevin" "v-SNARE"
                    "vesicle associated membrane protein 8"))))
 ((DEF-FAMILY "CSN4" :SYNONYMS NIL :IDENTIFIER "FA:00769")
  ((DEFINE-PROTEIN "UP:Q9BT78"
                   ("COP9 constitutive photomorphogenic homolog subunit 4 (Arabidopsis)"
                    "COP9 signalosome" "COP9 signalosome complex subunit 4"
                    "COP9 signalosome subunit 4" "COPS4" "CSN4" "CSN4 family"
                    "CSN4_HUMAN" "cops4" "Q9BT78" "homolog)subunit 4"))))
 ((DEF-FAMILY "RHINO" :SYNONYMS ("rhino") :IDENTIFIER "XFAM:PF15319.4")
  ((DEFINE-PROTEIN "UP:Q9BSD3"
                   ("c12orf32" "HKMT1188" "hus1 interacting nuclear orphan"
                    "MGC13204" "Q9BSD3"
                    "RAD9, HUS1, RAD1-interacting nuclear orphan protein 1"
                    "RAD9, RAD1, HUS1-interacting nuclear orphan protein"
                    "RAD9-HUS1-RAD1 interacting nuclear orphan 1" "RHINO"
                    "RHNO1" "RHNO1_HUMAN" "rad1" "Rad9-Rad1-Hus1"
                    "chromosome 12 open reading frame 32"))))
 ((DEF-FAMILY "PYM" :SYNONYMS ("pym") :IDENTIFIER "FA:04685")
  ((DEFINE-PROTEIN "UP:Q9BRP8"
                   ("PYM"
                    "PYM homolog 1, exon junction complex associated factor"
                    "pym family"))))
 ((DEF-FAMILY "MIC1" :SYNONYMS ("mic1") :IDENTIFIER "FA:02299")
  ((DEFINE-PROTEIN "UP:Q96DM3" ("MIC1" "mic1 family"))
   (DEFINE-PROTEIN "UP:Q99988"
                   ("GDF-15" "GDF15" "GDF15_HUMAN" "MIC-1" "MIC1" "NAG-1"
                    "NRG-1" "NSAID activated gene 1 protein"
                    "NSAID-activated gene" "NSAID-activated gene 1 protein"
                    "NSAID-regulated gene 1 protein" "nag1" "PDF" "PLAB"
                    "PTGFB" "Placental TGF-beta" "Placental TGF-bη"
                    "placental bone morphogenetic protein"
                    "prostate differentiation factor" "q99988"
                    "growth differentiation factor 15"
                    "growth/differentiation factor 15"
                    "macrophage inhibitory cytokine 1" "nsaid"
                    "placental TGF-beta"))))
 ((DEF-FAMILY "EBP-2" :SYNONYMS ("EBP2") :IDENTIFIER "FA:01056")
  ((DEFINE-PROTEIN "UP:Q99848"
                   ("EBNA1-binding protein 2" "EBNA1BP2" "EBP-2" "EBP2"
                    "EBP2 family" "EBP2_HUMAN" "nucleolar protein p40"
                    "Probable rRNA-processing protein EBP2" "q99848"))))
 ((DEF-FAMILY "SAE2" :SYNONYMS ("Sae2" "sae2") :IDENTIFIER "XFAM:PF08573.8")
  ((DEFINE-PROTEIN "UP:Q99708"
                   ("COM1" "COM1_HUMAN" "CTBP-interacting protein" "CtIP"
                    "q99708" "RB binding protein 8"
                    "RB binding protein 8, endonuclease" "RBBP8" "RBBP8/CtIP"
                    "RBBP8_HUMAN" "rim" "SCKL2" "seckel syndrome 2"
                    "retinoblastoma binding protein 8"
                    "retinoblastoma-binding protein 8" "sae2"))))
 ((DEF-FAMILY "CSN8" :SYNONYMS NIL :IDENTIFIER "FA:00772")
  ((DEFINE-PROTEIN "UP:Q99627"
                   ("COP9"
                    "COP9 constitutive photomorphogenic homolog subunit 8 (Arabidopsis)"
                    "COP9 homolog" "COP9 signalosome complex subunit 8"
                    "COP9 signalosome subunit 8" "COPS8" "CSN8" "CSN8 family"
                    "CSN8_HUMAN" "JAB1-containing signalosome subunit 8"
                    "MGC1297" "q99627" "SGN8" "signalosome subunit 8"
                    "hCOP9"))))
 ((DEF-FAMILY "BAP" :SYNONYMS NIL :IDENTIFIER "XFAM:PF06639.9")
  ((DEFINE-PROTEIN "UP:Q99623"
                   ("B-cell receptor-associated protein BAP37" "BAP" "BaP"
                    "d-prohibitin" "PHB2" "PHB2_HUMAN" "prohibitin-2" "q99623"
                    "REA" "rea" "prohibitin 2"
                    "repressor of estrogen receptor activity"))))
 ((DEF-FAMILY "ZNF238" :SYNONYMS NIL :IDENTIFIER "FA:02000")
  ((DEFINE-PROTEIN "UP:Q99592"
                   ("RP58" "ZNF238" "ZNF238 subfamily"
                    "zinc finger and BTB domain containing 18"))))
 ((DEF-FAMILY "EYA" :SYNONYMS ("eya") :IDENTIFIER "FA:01701")
  ((DEFINE-PROTEIN "UP:Q99502"
                   ("BOP" "EYA"
                    "EYA transcriptional coactivator and phosphatase 1" "EYA1"
                    "EYA1_HUMAN" "eya1" "q99502"
                    "eyes absent (Drosophila)homolog 1" "eyes absent homolog 1"
                    "eyes absent homolog 1 (Drosophila)"))))
 ((DEF-FAMILY "SET2" :SYNONYMS ("Set2") :IDENTIFIER "FA:01770")
  ((DEFINE-PROTEIN "UP:Q96T68"
                   ("c13orf4" "CLLD8" "CLLL8"
                    "Histone-lysine N-methyltransferase SETDB2" "KMT1F"
                    "Q96T68" "SET domain bifurcated 2" "SET2" "SETB2_HUMAN"
                    "SETDB2" "bifurcated 2"
                    "chromosome 13 open reading frame 4"))))
 ((DEF-FAMILY "RAP80" :SYNONYMS ("Rap80") :IDENTIFIER "FA:03233")
  ((DEFINE-PROTEIN "UP:Q96RL1"
                   ("BRCA1-A complex subunit RAP80" "Q96RL1" "RAP80"
                    "RAP80 family" "RXRIP110" "rap80"
                    "receptor-associated protein 80"
                    "Retinoid X receptor-interacting protein 110" "UIMC1"
                    "UIMC1_HUMAN"
                    "ubiquitin interaction motif-containing protein 1"
                    "receptor associated protein 80"
                    "ubiquitin interaction motif containing 1"))))
 ((DEF-FAMILY "AIP3" :SYNONYMS NIL :IDENTIFIER "XFAM:PF03915.11")
  ((DEFINE-PROTEIN "UP:Q96QZ7"
                   ("AIP-3" "AIP3" "atrophin-1-interacting protein 3"
                    "BAI1-associated protein 1" "BAP-1" "MAGI-1" "MAGI1"
                    "MAGI1_HUMAN"
                    "membrane-associated guanylate kinase inverted 1"
                    "Membrane-associated guanylate kinase, WW and PDZ domain-containing protein 1"
                    "Q96QZ7" "S-SCAM"
                    "trinucleotide repeat-containing gene 19 protein"
                    "WW domain-containing protein 3" "WWP3"
                    "membrane associated guanylate kinase, WW and PDZ domain containing 1"))))
 ((DEF-FAMILY "PUMA" :SYNONYMS NIL :IDENTIFIER "XFAM:PF15826.3")
  ((DEFINE-PROTEIN "UP:Q96PG8"
                   ("BBC3" "BBC3B_HUMAN" "BCL2 binding component 3" "bbc3"
                    "JFY1" "PUMA" "PUMA protein" "puma" "Q96PG8" "Q9BXH1"
                    "p53 up regulated modulator of apoptosis"))))
 ((DEF-FAMILY "NSE2" :SYNONYMS NIL :IDENTIFIER "FA:02522")
  ((DEFINE-PROTEIN "UP:Q96KN1"
                   ("BCMP101" "FAM84B" "NSE2" "NSE2 family" "nse2"))
   (DEFINE-PROTEIN "UP:Q96MF7"
                   ("c8orf36" "E3 SUMO-protein ligase NSE2" "FLJ32440"
                    "MIZ-type containing 7" "MMS21"
                    "MMS21 homolog (S. cerevisiae)" "NSE2" "NSE2/MMS21 homolog"
                    "NSE2/MMS21 homolog, SMC5-SMC6 complex SUMO ligase"
                    "NSE2_HUMAN" "NSMCE2" "Q96MF7"
                    "SMC5-SMC6 complex SUMO ligase" "ZMIZ7"
                    "chromosome 8 open reading frame 36" "hMMS21"
                    "non-SMC element 2" "non-SMC element 2 homolog (MMS21"))))
 ((DEF-FAMILY "Kinesins" :SYNONYMS ("kinesin" "kinesins") :IDENTIFIER
              "FA:01965")
  ((DEFINE-PROTEIN "UP:Q02224"
                   ("CENP-E" "CENPE" "CENPE_HUMAN" "Centromere protein E"
                    "Centromere-associated protein E"
                    "Kinesin-related protein CENPE" "q02224"
                    "centromere protein E" "kinesin"))
   (DEFINE-PROTEIN "UP:Q96L93"
                   ("c20orf23" "FLJ20135" "KI16B_HUMAN" "KIAA1590" "KIF16B"
                    "Kinesin-like protein KIF16B" "Q96L93" "SNX23"
                    "chromosome 20 open reading frame 23" "dJ971B4.1" "kinesin"
                    "kinesin family member 16B"))))
 ((DEF-FAMILY "NSE1" :SYNONYMS NIL :IDENTIFIER "FA:02521")
  ((DEFINE-PROTEIN "UP:Q8WV22"
                   ("HSPC333" "HSPC337" "NSE1" "NSE1 homolog" "NSE1_HUMAN"
                    "NSMCE1"
                    "non-structural maintenance of chromosomes element 1 homolog"
                    "Q8WV22" "SMC5-SMC6 complex component"
                    "non-SMC element 1 homolog (S. cerevisiae)"))
   (DEFINE-PROTEIN "UP:Q96KN4" ("NSE1" "NSE1 family"))))
 ((DEF-FAMILY "PREY" :SYNONYMS ("prey") :IDENTIFIER "FA:03013")
  ((DEFINE-PROTEIN "UP:Q96I23" ("prey"))))
 ((DEF-FAMILY "SMCR7" :SYNONYMS NIL :IDENTIFIER "FA:03692")
  ((DEFINE-PROTEIN "UP:Q96C03"
                   ("MiD49" "SMCR7" "SMCR7 family"
                    "mitochondrial elongation factor 2"))))
 ((DEF-FAMILY "IRF" :SYNONYMS ("IRFs") :IDENTIFIER "FA:01910")
  ((DEFINE-PROTEIN "UP:Q969Q1"
                   ("E3 ubiquitin-protein ligase TRIM63" "IRF" "IRF family"
                    "Iris RING finger protein" "MURF-1" "MURF1" "MuRF" "MuRF-1"
                    "MuRF1" "Muscle-specific RING finger protein 1" "Q969Q1"
                    "RING finger protein 28" "RNF28" "SMRZ"
                    "Striated muscle RING zinc finger protein" "TRI63"
                    "TRI63_HUMAN" "TRIM63"
                    "tripartite motif-containing protein 63"
                    "iris ring finger protein"
                    "muscle-specific RING finger protein 1"
                    "ring finger protein 28"
                    "striated muscle RING zinc finger protein"
                    "tripartite motif containing 63"))))
 ((DEF-FAMILY "GNAT" :SYNONYMS NIL :IDENTIFIER "FA:00070")
  ((DEFINE-PROTEIN "UP:Q969I3"
                   ("FLJ34646" "GLYATL1" "GLYL1_HUMAN" "GNAT" "GNAT subfamily"
                    "GNATs" "Glutamine N-acyltransferase"
                    "Glycine N-acyltransferase-like protein 1" "MGC15397"
                    "Q969I3" "glycine-N-acyltransferase like 1"
                    "glycine-N-acyltransferase-like 1"))))
 ((DEF-FAMILY "Clp1" :SYNONYMS ("clp1") :IDENTIFIER "FA:00635")
  ((DEFINE-PROTEIN "UP:O94992"
                   ("clp1" "EDG1" "HEXIM1"
                    "hexamethylene-bis-acetamide-inducible protein 1" "hexim-1"
                    "MAQ1" "o94992" "clp1 family"
                    "hexamethylene bisacetamide inducible 1"))
   (DEFINE-PROTEIN "UP:Q92989"
                   ("ATP/GTPbinding protein" "CF II - Clp1" "CLP1" "CLP1_HUMAN"
                    "clp1" "HEAB" "Pre-mRNA cleavage complex II protein Clp1"
                    "q92989" "cleavage and polyadenylation factor I subunit"
                    "cleavage and polyadenylation factor I subunit 1" "hClp1"
                    "polyribonucleotide 5'-hydroxyl-kinase"))))
 ((DEF-FAMILY "CDS" :SYNONYMS NIL :IDENTIFIER "FA:00546")
  ((DEFINE-PROTEIN "UP:Q92903"
                   ("CDP-diacylglycerol synthase 1" "CDS" "CDS family"
                    "cds1"))))
 ((DEF-FAMILY "UFD1" :SYNONYMS NIL :IDENTIFIER "FA:04295")
  ((DEFINE-PROTEIN "UP:Q92890"
                   ("q92890" "UFD1" "UFD1L" "UFD1_HUMAN"
                    "ubiquitin fusion degradation protein 1 homolog"
                    "ubiquitin fusion degradation 1 like (yeast)"
                    "ubiquitin fusion degradation 1-like"))))
 ((DEF-FAMILY "GCN5" :SYNONYMS ("Gcn5") :IDENTIFIER "FA:00068")
  ((DEFINE-PROTEIN "UP:Q92830"
                   ("GCN5" "GCN5 subfamily" "GCN5L2" "gcn5" "KAT2A" "hGCN5"
                    "histone acetyltransferase"
                    "histone acetyltransferase Gcn5" "hsGCN5"
                    "lysine acetyltransferase 2A"))))
 ((DEF-FAMILY "DENN" :SYNONYMS NIL :IDENTIFIER "XFAM:PF02141.19")
  ((DEFINE-PROTEIN "UP:Q8WXG6"
                   ("DENN"
                    "differentially expressed in normal and neoplastic cells"
                    "IG20" "insulinoma glucagonoma clone 20" "MADD"
                    "MADD_HUMAN" "MAP kinase activating death domain"
                    "MAP kinase-activating death domain protein" "Q8WXG6"
                    "Rab3 GDP/GTP exchange factor"))))
 ((DEF-FAMILY "PSP1" :SYNONYMS ("pSp1") :IDENTIFIER "XFAM:PF04468.10")
  ((DEFINE-PROTEIN "UP:Q8WXF1"
                   ("PSP1" "pSp1" "pSpc1" "paraspeckle protein 1"))))
 ((DEF-FAMILY "COBRA1" :SYNONYMS NIL :IDENTIFIER "XFAM:PF06209.11")
  ((DEFINE-PROTEIN "UP:Q8WX92"
                   ("COBRA1" "Cofactor of BRCA1" "KIAA1182" "NELF-B"
                    "NELF-B protein" "NELFB" "NELFB_HUMAN"
                    "Negative elongation factor B" "Q8WX92" "cofactor of BRCA1"
                    "negative elongation factor complex member B"))))
 ((DEF-FAMILY "PRP31" :SYNONYMS ("Prp31") :IDENTIFIER "FA:03162")
  ((DEFINE-PROTEIN "UP:Q8WWY3"
                   ("NY-BR-99" "PRP31"
                    "PRP31 pre-mRNA processing factor 31 homolog (S. cerevisiae)"
                    "PRP31 pre-mRNA processing factor 31 homolog (yeast)"
                    "PRP31_HUMAN" "PRPF31" "Pre-mRNA-processing factor 31"
                    "Protein 61K" "prp31" "Q8WWY3" "RP11" "SNRNP61"
                    "Serologically defined breast cancer antigen NY-BR-99"
                    "U4/U6 small nuclear ribonucleoprotein Prp31"
                    "U4/U6 snRNP 61 kDa protein" "hPrp31"
                    "pre-mRNA processing factor 31"))))
 ((DEF-FAMILY "CTF18" :SYNONYMS ("Ctf18") :IDENTIFIER "FA:00091")
  ((DEFINE-PROTEIN "UP:Q8WVB6"
                   ("CTF18" "CTF18 subfamily" "chl12"
                    "chromosome transmission fidelity protein 18 homolog"
                    "ctf18" "chromosome transmission fidelity factor 18"
                    "hCtf18"))))
 ((DEF-FAMILY "SET7" :SYNONYMS ("Set7") :IDENTIFIER "FA:01771")
  ((DEFINE-PROTEIN "UP:Q8WTS6"
                   ("H3-K4-HMTase SETD7"
                    "Histone H3-K4 methyltransferase SETD7"
                    "Histone-lysine N-methyltransferase SETD7" "KIAA1717"
                    "KMT7" "Lysine N-methyltransferase 7" "Q8WTS6"
                    "SET domain containing lysine methyltransferase 7"
                    "SET domain-containing protein 7" "SET7" "SET7 subfamily"
                    "SET7/9" "SET9" "SETD7" "SETD7_HUMAN" "set7" "set7/9"
                    "set9" "setd7"))))
 ((DEF-FAMILY "TRM10" :SYNONYMS ("trm10") :IDENTIFIER "FA:03408")
  ((DEFINE-PROTEIN "UP:Q8TBZ6"
                   ("MGC27034" "Q8TBZ6" "RG9MTD2"
                    "RNA (guanine-9-)methyltransferase domain containing 2"
                    "TM10A_HUMAN" "TRM10" "TRMT10A"
                    "tRNA methyltransferase 10 homolog A"
                    "tRNA methyltransferase 10 homolog A (S. cerevisiae)"
                    "tRNA methyltransferase 10A"))))
 ((DEF-FAMILY "NPL4" :SYNONYMS ("Npl4") :IDENTIFIER "FA:02512")
  ((DEFINE-PROTEIN "UP:Q8TAT6"
                   ("FLJ20657" "KIAA1499" "NPL4" "NPL4 family" "NPL4 homolog"
                    "NPL4_HUMAN" "NPLOC4" "NPLOC4 ubiquitin recognition factor"
                    "npl4" "nuclear protein localization protein 4 homolog"
                    "Q8TAT6"
                    "nuclear protein localization 4 homolog (S. cerevisiae)"
                    "ubiquitin recognition factor"))))
 ((DEF-FAMILY "BET" :SYNONYMS NIL :IDENTIFIER "XFAM:PF17035.3")
  ((DEFINE-PROTEIN "UP:Q8NFT8"
                   ("BET" "DNER" "DNER_HUMAN"
                    "Delta and Notch-like epidermal growth factor-related receptor"
                    "Q8NFT8" "UNQ26" "UNQ262/PRO299"
                    "delta/notch like EGF repeat containing"
                    "delta/notch-like EGF repeat containing"))))
 ((DEF-FAMILY "FA-D1" :SYNONYMS ("FAD1") :IDENTIFIER "FA:02652")
  ((DEFINE-PROTEIN "UP:Q8NFF5"
                   ("FAD1"
                    "FAD1 flavin adenine dinucleotide synthetase homolog"
                    "FAD1 flavin adenine dinucleotide synthetase homolog (S. cerevisiae)"
                    "FAD1_HUMAN" "FLAD1" "fad1" "PP591" "Q8NFF5" "Q8NFF5_HUMAN"
                    "flavin adenine dinucleotide synthetase"
                    "flavin adenine dinucleotide synthetase 1"
                    "homolog (yeast)"))))
 ((DEF-FAMILY "GW182" :SYNONYMS NIL :IDENTIFIER "FA:01696")
  ((DEFINE-PROTEIN "UP:Q8NDV7"
                   ("CAGH26" "GW182" "KIAA1460" "Q8NDV7" "TNR6A_HUMAN" "TNRC6"
                    "TNRC6A" "Trinucleotide repeat-containing gene 6A protein"
                    "trinucleotide repeat containing 6"
                    "trinucleotide repeat containing 6A"))))
 ((DEF-FAMILY "ZIP" :SYNONYMS ("Zip" "zip") :IDENTIFIER "XFAM:PF02535.20")
  ((DEFINE-PROTEIN "UP:Q8N5A5" ("ZGPAT" "ZIP" "zip"))))
 ((DEF-FAMILY "TRIC" :SYNONYMS ("TRiC") :IDENTIFIER "XFAM:PF05197.11")
  ((DEFINE-PROTEIN "UP:Q8N4S9"
                   ("MARVEL domain containing 2"
                    "MARVEL domain-containing protein 2" "MARVELD2" "TRIC"
                    "TRiC" "tricellulin"))))
 ((DEF-FAMILY "TOM-5" :SYNONYMS ("TOM5" "tom5") :IDENTIFIER "FA:04127")
  ((DEFINE-PROTEIN "UP:Q8N4H5"
                   ("c9orf105"
                    "Mitochondrial import receptor subunit TOM5 homolog"
                    "Q8N4H5" "TOM5" "TOM5_HUMAN" "TOMM5" "tom5" "bA613M10.3"
                    "chromosome 9 open reading frame 105"
                    "translocase of outer mitochondrial membrane 5"
                    "translocase of outer mitochondrial membrane 5 homolog (yeast)"))))
 ((DEF-FAMILY "Themis" :SYNONYMS ("themis") :IDENTIFIER "FA:03994")
  ((DEFINE-PROTEIN "UP:Q8N1K5"
                   ("c6orf190" "themis" "protein THEMIS" "themis family"
                    "Themis1" "THEMIS1"))))
 ((DEF-FAMILY "AFT" :SYNONYMS NIL :IDENTIFIER "XFAM:PF08731.9")
  ((DEFINE-PROTEIN "UP:Q8IYT2" ("AFT"))))
 ((DEF-FAMILY "DOR" :SYNONYMS NIL :IDENTIFIER "XFAM:PF14839.4")
  ((DEFINE-PROTEIN "UP:Q8IXH6"
                   ("DOR" "TP53INP2"
                    "tumor protein p53 inducible nuclear protein 2"))))
 ((DEF-FAMILY "KIBRA" :SYNONYMS ("Kibra") :IDENTIFIER "FA:04691")
  ((DEFINE-PROTEIN "UP:Q8IX03"
                   ("c2 and coiled-coil domain containing 1" "KIAA0869" "KIBRA"
                    "KIBRA subfamily" "KIBRA_HUMAN" "kibra" "PPP1R168" "Q8IX03"
                    "WW and C2 domain containing 1" "WWC1"
                    "regulatory subunit 168"))))
 ((DEF-FAMILY "LAX" :SYNONYMS ("lax") :IDENTIFIER "XFAM:PF15681.3")
  ((DEFINE-PROTEIN "UP:Q8IWV1" ("LAX" "LAX1" "lax"))))
 ((DEF-FAMILY "LRRC8" :SYNONYMS NIL :IDENTIFIER "FA:05277")
  ((DEFINE-PROTEIN "UP:Q8IWT6"
                   ("LRRC8" "LRRC8 family" "LRRC8A"
                    "leucine rich repeat containing 8 family member A"))))
 ((DEF-FAMILY "NUT" :SYNONYMS NIL :IDENTIFIER "FA:05191")
  ((DEFINE-PROTEIN "UP:Q86Y26" ("c15orf55" "NUT" "NUT family" "nut"))))
 ((DEF-FAMILY "TIP120" :SYNONYMS NIL :IDENTIFIER "XFAM:PF08623.8")
  ((DEFINE-PROTEIN "UP:Q86VP6"
                   ("CAND1" "CAND1_HUMAN" "KIAA0829" "Q86VP6" "TIP120"
                    "TIP120A"
                    "cullin associated and neddylation dissociated 1"))))
 ((DEF-FAMILY "GST superfamily" :SYNONYMS ("Gst" "GST") :IDENTIFIER "FA:01669")
  ((DEFINE-PROTEIN "UP:Q86UG4"
                   ("CT48" "cancer/testis antigen 48" "GST" "GSTs"
                    "gonad-specific transporter" "OATP-I"
                    "Organic anion-transporting polypeptide 6A1"
                    "Organic anion-transporting polypeptide I" "Q86UG4"
                    "SO6A1_HUMAN" "solute carrier family 21 member 19"
                    "Solute carrier organic anion transporter family member 6A1"))))
 ((DEF-FAMILY "BRAP2" :SYNONYMS ("Brap2") :IDENTIFIER "XFAM:PF07576.10")
  ((DEFINE-PROTEIN "UP:Q7Z569"
                   ("BRAP" "BRAP2" "BRAP_HUMAN" "BRCA1 associated protein"
                    "BRCA1-associated protein" "brap2" "IMP" "IMPs" "Q7Z569"
                    "RNF52" "impedes mitogenic signal propagation"
                    "Impedes Mitogenic Propagation" "E3 ligase BRAP"))))
 ((DEF-FAMILY "Piwi" :SYNONYMS ("piwi") :IDENTIFIER "FA:00252")
  ((DEFINE-PROTEIN "UP:Q7Z3Z4"
                   ("MeR-PIWIL4" "PIWIL4" "PIWL4_HUMAN" "piwi"
                    "piwi-like protein 4" "Q7Z3Z4" "miwi2"
                    "piwi like RNA-mediated gene silencing 4"
                    "piwi subfamily"))))
 ((DEF-FAMILY "CSN6" :SYNONYMS NIL :IDENTIFIER "FA:02752")
  ((DEFINE-PROTEIN "UP:Q7L5N1"
                   ("34 kD)"
                    "COP9 constitutive photomorphogenic homolog subunit 6 (Arabidopsis)"
                    "COP9 signalosome complex subunit 6"
                    "COP9 signalosome subunit 6"
                    "COP9 subunit 6 (MOV34 homolog" "COPS6" "CSN6"
                    "CSN6 subfamily" "CSN6_HUMAN" "HVIP" "MOV34-34KD" "Q7L5N1"
                    "hVIP"))))
 ((DEF-FAMILY "Xin" :SYNONYMS ("xin") :IDENTIFIER "FA:04696")
  ((DEFINE-PROTEIN "UP:Q702N8"
                   ("XIRP1" "xin" "xin actin binding repeat containing 1"
                    "xin family"))))
 ((DEF-FAMILY "ADC" :SYNONYMS NIL :IDENTIFIER "XFAM:PF06314.9")
  ((DEFINE-PROTEIN "UP:Q6ZQY3"
                   ("ADC" "Acidic amino acid decarboxylase GADL1" "GADL1"
                    "GADL1_HUMAN" "Q6ZQY3" "glutamate decarboxylase like 1"
                    "glutamate decarboxylase-like 1"))))
 ((DEF-FAMILY "RAMP" :SYNONYMS ("RAMPS" "ramp") :IDENTIFIER "FA:03229")
  ((DEFINE-PROTEIN "UP:Q6UXH9" ("PAMR1" "RAMP family" "ramp"))))
 ((DEF-FAMILY "PSK" :SYNONYMS NIL :IDENTIFIER "XFAM:PF06404.10")
  ((DEFINE-PROTEIN "UP:Q6UXD5"
                   ("PSK" "sez6l2" "psk" "seizure related 6 homolog like 2"))))
 ((DEF-FAMILY "PAO" :SYNONYMS ("PaO") :IDENTIFIER "XFAM:PF08417.10")
  ((DEFINE-PROTEIN "UP:Q6QHF9"
                   ("PAO" "PAOX" "PaO" "pao" "polyamine oxidase"))))
 ((DEF-FAMILY "TRIM")
  ((DEFINE-PROTEIN "UP:Q6PIZ9"
                   ("HSPC062" "Q6PIZ9"
                    "t cell receptor associated transmembrane adaptor 1"
                    "t cell receptor interacting molecule"
                    "t-cell receptor-associated transmembrane adapter 1"
                    "TCRIM" "TRAT1" "TRAT1_HUMAN" "TRIM" "pp29/30"))))
 ((DEF-FAMILY "GLD2" :SYNONYMS ("Gld2") :IDENTIFIER "FA:00979")
  ((DEFINE-PROTEIN "UP:Q6PIY7" ("GLD2" "GLD2 subfamily" "gld2" "PAPD4"))))
 ((DEF-FAMILY "Notum" :SYNONYMS ("notum") :IDENTIFIER "FA:05336")
  ((DEFINE-PROTEIN "UP:Q6P988"
                   ("NOTUM" "NOTUM_HUMAN" "notum" "OK/SW-CL.30" "Q6P988"
                    "[Wnt protein] O-palmitoleoyl-L-serine hydrolase"
                    "notum pectinacetylesterase homolog (Drosophila)"
                    "notum subfamily"
                    "palmitoleoyl-protein carboxylesterase"))))
 ((DEF-FAMILY "DEF" :SYNONYMS ("def") :IDENTIFIER "FA:00922")
  ((DEFINE-PROTEIN "UP:Q68CQ4"
                   ("c1orf107" "DEF" "DIEXF" "DIEXF_HUMAN"
                    "digestive organ expansion factor homolog" "MGC29875"
                    "Q68CQ4" "UTP25" "chromosome 1 open reading frame 107"
                    "def family"
                    "digestive organ expansion factor homolog (zebrafish)"))))
 ((DEF-FAMILY "DOG-1" :SYNONYMS ("DOG1") :IDENTIFIER "XFAM:PF14144.4")
  ((DEFINE-PROTEIN "UP:Q5XXA6"
                   ("ANO1" "ANO1_HUMAN" "ano1" "anoctamin-1" "DOG-1" "DOG1"
                    "FLJ10261" "ORAOV2" "Q5XXA6" "TAOS2" "TMEM16A"
                    "anoctamin 1" "calcium activated chloride channel"
                    "oral cancer overexpressed 2"
                    "transmembrane protein 16A"))))
 ((DEF-FAMILY "INCA" :SYNONYMS ("INCa") :IDENTIFIER "FA:01853")
  ((DEFINE-PROTEIN "UP:Q5XLA6" ("CARD17" "INCA family" "INCa"))))
 ((DEF-FAMILY "HEN1" :SYNONYMS NIL :IDENTIFIER "FA:04848")
  ((DEFINE-PROTEIN "UP:Q02575"
                   ("HEN1" "HEN1 family" "NHLH1" "NSCL" "NSCL1"
                    "nescient helix-loop-helix 1"))
   (DEFINE-PROTEIN "UP:Q5T8I9"
                   ("c1orf59" "FLJ30525" "HEN1"
                    "HEN1 methyltransferase homolog 1"
                    "HEN1 methyltransferase homolog 1 (Arabidopsis)" "HENMT1"
                    "HENMT_HUMAN" "Q5T8I9" "Small RNA 2'-O-methyltransferase"
                    "chromosome 1 open reading frame 59"
                    "hua enhancer 1 homolog 1 (Arabidopsis)"))))
 ((DEF-FAMILY "TPT" :SYNONYMS NIL :IDENTIFIER "XFAM:PF03151.14")
  ((DEFINE-PROTEIN "UP:Q5T2R2"
                   ("COQ1" "DPS1" "DPS1_HUMAN"
                    "decaprenyl-diphosphate synthase subunit 1" "PDSS1"
                    "Q5T2R2" "TPRT" "TPT" "coenzyme Q1 homolog (yeast)"
                    "decaprenyl diphosphate synthase subunit 1"
                    "prenyl (decaprenyl)diphosphate synthase"
                    "trans-prenyltransferase"))))
 ((DEF-FAMILY "Spy1" :SYNONYMS ("spy1") :IDENTIFIER "XFAM:PF11357.6")
  ((DEFINE-PROTEIN "UP:Q5MJ70"
                   ("Q5MJ70" "RINGO A"
                    "Rapid inducer of G2/M progression in oocytes A" "ringo"
                    "SPDYA" "SPDYA_HUMAN" "spdy1" "speedy" "Speedy protein A"
                    "speedy-1" "Speedy/Ringo" "Speedy/Ringo A2" "hSpy/Ringo A"
                    "spy1"))))
 ((DEF-FAMILY "PilT" :SYNONYMS ("pilt") :IDENTIFIER "XFAM:PF15453.4")
  ((DEFINE-PROTEIN "UP:Q5JTD0"
                   ("PilT" "TJAP1" "TJP4" "pilt"
                    "tight junction associated protein 1"))))
 ((DEF-FAMILY "COP1" :SYNONYMS ("COPI") :IDENTIFIER "FA:00728")
  ((DEFINE-PROTEIN "UP:Q5EG05" ("CARD16" "COP" "COP1" "COP1 family"))))
 ((DEF-FAMILY "mitofilin" :SYNONYMS NIL :IDENTIFIER "XFAM:PF09731.7")
  ((DEFINE-PROTEIN "UP:Q16891"
                   ("HMP" "MINOS2" "inner membrane mitochondrial protein"
                    "mitofilin" "p89"))))
 ((DEF-FAMILY "CART" :SYNONYMS ("cART") :IDENTIFIER "FA:00467")
  ((DEFINE-PROTEIN "UP:Q16568" ("CART" "CART family" "cART" "cart"))))
    ((DEF-FAMILY "CaMK" :SYNONYMS ("CaM kinase" "CAMK" "CaM-kinase"))
     ;; fixed
  ((DEFINE-PROTEIN "UP:Q13555"
                   ("CAMK" "CAMK II" "CAMK-II" "CAMK2G" "CAMKG"
                    "CaM kinase II subunit gamma" "CaM kinase II subunit γ"
                    "CaM-K" "CaMK" "CaMK subfamily" "CaMK-II"
                    "CaMK-II subunit gamma" "CaMK-II subunit γ" "CaMKII" "CanK"
                    "KCC2G_HUMAN" "q13555"
                    "calmodulin- dependent protein kinase"))
   (DEFINE-PROTEIN "UP:Q16566"
                   ("CAMK" "CAMK-GR" "CAMK4" "CAMKIV" "CaM kinase-GR" "CaMK IV"
                    "CaMK4" "Calcium/calmodulin dependent protein kinase IV"
                    "Calcium/calmodulin dependent protein kinase type IV"
                    "Calcium/calmodulin-dependent protein kinase type IV"
                    "CamKIV" "KCC4_HUMAN" "q16566"
                    "calcium/calmodulin dependent protein kinase IV"))))
 ((DEF-FAMILY "LKB-1" :SYNONYMS ("LKB1") :IDENTIFIER "FA:03075")
  ((DEFINE-PROTEIN "UP:Q15831"
                   ("LKB1" "LKB1 subfamily" "Liver kinase B1" "PJS" "q15831"
                    "Renal carcinoma antigen NY-REN-19" "STK11" "STK11_HUMAN"
                    "Serine/threonine-protein kinase STK11" "hLKB1"
                    "liver kinase B1" "serine/threonine kinase 11"))))
 ((DEF-FAMILY "TSC-22" :SYNONYMS ("TSC22" "Tsc-22") :IDENTIFIER
              "XFAM:PF01166.16")
  ((DEFINE-PROTEIN "UP:Q15714"
                   ("TSC-22" "TSC22" "TSC22 domain family member 1" "TSC22D1"
                    "tgfb1i4" "tsc-22"))))
 ((DEF-FAMILY "TRAM" :SYNONYMS NIL :IDENTIFIER "FA:04146")
  ((DEFINE-PROTEIN "UP:Q15629"
                   ("q15629" "TRAM" "TRAM family" "TRAM-1" "TRAM1"
                    "TRAM1_HUMAN"
                    "translocation associated membrane protein 1"))))
 ((DEF-FAMILY "LCD1" :SYNONYMS ("Lcd1") :IDENTIFIER "XFAM:PF09798.7")
  ((DEFINE-PROTEIN "UP:Q15582"
                   ("68kD" "BGH3_HUMAN" "BIGH3" "BigH3" "CDB1" "CDGG1" "CSD1"
                    "CSD2" "CSD3" "kerato-epithelin" "keratoepithelin" "LCD1"
                    "q15582" "TGFBI"
                    "Transforming growth factor-beta induced protein IG-H3 precursor"
                    "beta-induced" "betaig-h3" "eBMD" "ig-h3"
                    "transforming growth factor beta induced"
                    "transforming growth factor-beta induced protein-IGH3"
                    "β-Ig-H3"))))
 ((DEF-FAMILY "SKI2" :SYNONYMS NIL :IDENTIFIER "FA:01735")
  ((DEFINE-PROTEIN "UP:Q15477"
                   ("170A" "DDX13" "q15477" "SKI2" "SKI2 homolog"
                    "SKI2 subfamily" "SKI2W" "SKIV2" "SKIV2L" "SKIV2L1"
                    "SKIV2_HUMAN" "Ski2 like RNA helicase" "skiv2l"
                    "helicase like protein"
                    "superkiller viralicidic activity 2 (S. cerevisiae homolog)-like"
                    "superkiller viralicidic activity 2-like"
                    "superkiller viralicidic activity 2-like (S. cerevisiae)"))))
 ((DEF-FAMILY "SHP" :SYNONYMS ("SHPs") :IDENTIFIER "XFAM:PF03579.11")
  ((DEFINE-PROTEIN "UP:Q15466"
                   ("NR0B2" "NR0B2_HUMAN" "nr0b2"
                    "Nuclear receptor subfamily 0 group B member 2" "q15466"
                    "SHP" "SHPs"
                    "nuclear receptor subfamily 0 group B member 2"
                    "small heterodimer partner"))))
 ((DEF-FAMILY "SDS22" :SYNONYMS ("sds22") :IDENTIFIER "FA:03526")
  ((DEFINE-PROTEIN "UP:Q15435"
                   ("PP1R7" "PP1R7_HUMAN" "PPP1R7" "q15435" "SDS22" "sds22"
                    "protein phosphatase 1 regulatory subunit 7"))))
 ((DEF-FAMILY "HET" :SYNONYMS ("Hets") :IDENTIFIER "XFAM:PF06985.9")
  ((DEFINE-PROTEIN "UP:Q15424"
                   ("HET" "hets" "q15424" "SAF-B" "SAFB" "SAFB1"
                    "Scaffold attachment factor B1"
                    "scaffold attachment factor B1"))))
 ((DEF-FAMILY "TOM20" :SYNONYMS ("Tom20" "tom20") :IDENTIFIER "FA:04123")
  ((DEFINE-PROTEIN "UP:Q15388"
                   ("KIAA0016" "MAS20" "MOM19"
                    "Mitochondrial import receptor subunit TOM20 homolog"
                    "PolyUb-TOMM20" "q15388" "TOM20" "TOM20_HUMAN" "TOMM20"
                    "translocase of outer mitochondrial membrane 20"
                    "translocase of outer mitochondrial membrane 20 homolog (yeast)"
                    "translocase of outer mitochondrial membrane 20 homolog type II"))))
 ((DEF-FAMILY "Rheb" :SYNONYMS ("rheb") :IDENTIFIER "FA:03667")
  ((DEFINE-PROTEIN "UP:Q15382"
                   ("GTP binding protein Rheb" "q15382" "RHEB" "RHEB2"
                    "RHEB_HUMAN" "rheb" "ras homolog enriched in brain"
                    "rheb family" "rheb2"))))
 ((DEF-FAMILY "PKD" :SYNONYMS ("PKDs") :IDENTIFIER "FA:03079")
  ((DEFINE-PROTEIN "UP:Q15139"
                   ("KPCD1_HUMAN" "PKCmu" "PKCμ" "PKD" "PKD1" "PRKCM" "PRKD1"
                    "prkcm" "prkd1" "Protein kinase C mu type"
                    "Protein kinase D" "q15139" "nPKC-D1" "nPKC-mu"
                    "protein kinase D" "protein kinase D1"))))
 ((DEF-FAMILY "DP-1" :SYNONYMS ("DP1") :IDENTIFIER "FA:01000")
  ((DEFINE-PROTEIN "UP:Q00765"
                   ("D5S346" "DP-1" "DP1" "DP1 family" "REEP5"
                    "polyposis locus protein 1"
                    "receptor accessory protein 5"))
   (DEFINE-PROTEIN "UP:Q13258"
                   ("DP1" "DP1 receptor" "PD2R_HUMAN" "PTGDR" "PTGDR1" "q13258"
                    "prostaglandin D2 receptor"))
   (DEFINE-PROTEIN "UP:Q14186"
                   ("DILC" "DP-1" "DRTF1" "DRTF1- polypeptide-1"
                    "DRTF1-polypeptide 1" "dp-1" "E2F dimerization partner 1"
                    "q14186" "TFDP1" "TFDP1_HUMAN"
                    "Transcription factor DP-1 (E2F dimerization partner 1)(DRTF1-polypeptide-1)(DRTF1)"
                    "Transcription factor Dp-1"
                    "down-regulated in liver cancer stem cells"
                    "transcription factor Dp-1"))))
 ((DEF-FAMILY "GARP" :SYNONYMS NIL :IDENTIFIER "XFAM:PF16731.3")
  ((DEFINE-PROTEIN "UP:Q14028"
                   ("CNCG2" "CNCG3L" "CNCG4" "CNGB1" "CNGB1B" "CNGB1_HUMAN"
                    "cngb1" "GAR1" "GARP" "q14028" "RCNC2" "RCNCb" "RP45"
                    "cGMP-gated cation channel beta subunit"
                    "cyclic nucleotide gated channel beta 1"
                    "glutamic acid-rich protein"))))
 ((DEF-FAMILY "ARA70" :SYNONYMS NIL :IDENTIFIER "XFAM:PF12489.6")
  ((DEFINE-PROTEIN "UP:Q13772"
                   ("70 kDa AR-activator"
                    "70 kDa androgen receptor coactivator" "ARA70"
                    "Androgen receptor coactivator 70 kDa protein"
                    "Androgen receptor-associated protein of 70 kDa" "ELE1"
                    "NCOA4" "NCOA4_HUMAN" "NCoA-4" "PTC3" "q13772" "RFG" "RFGs"
                    "Ret-activating protein ELE1"
                    "nuclear receptor coactivator 4"
                    "nuclear receptor coactivator-4"))))
 ((DEF-FAMILY "patched" :SYNONYMS NIL :IDENTIFIER "FA:02662")
  ((DEFINE-PROTEIN "UP:Q13635"
                   ("BCNS" "NBCCS" "PTC1" "PTC1_HUMAN" "PTCH" "PTCH1" "PTCs"
                    "patch" "patched" "Patched Homolog 1"
                    "protein patched homolog 1" "ptc" "ptch" "q13635"
                    "homolog 1" "patched (Drosophila)homolog" "patched 1"
                    "patched homolog (Drosophila)"
                    "patched homolog 1 (Drosophila)"))))
 ((DEF-FAMILY "polycystin" :SYNONYMS ("polycystins") :IDENTIFIER "FA:02910")
  ((DEFINE-PROTEIN "UP:Q13563"
                   ("Autosomal dominant polycystic kidney disease type II protein"
                    "PKD2" "PKD2_HUMAN" "polycystic kidney disease 2 protein"
                    "polycystin-2" "polycystwin" "q13563" "r48321" "TRPP2"
                    "Transient receptor potential cation channel subfamily P member 2"
                    "polycystin" "polycystin 2"
                    "polycystin 2, transient receptor potential cation channel"))))
 ((DEF-FAMILY "CaM-K" :SYNONYMS ("CaMK") :IDENTIFIER "FA:03072")
  ((DEFINE-PROTEIN "UP:Q13555"
                   ("CAMK" "CAMK II" "CAMK-II" "CAMK2G" "CAMKG"
                    "CaM kinase II subunit gamma" "CaM kinase II subunit γ"
                    "CaM-K" "CaMK" "CaMK subfamily" "CaMK-II"
                    "CaMK-II subunit gamma" "CaMK-II subunit γ" "CaMKII" "CanK"
                    "KCC2G_HUMAN" "q13555"
                    "calmodulin- dependent protein kinase"))))
 ((DEF-FAMILY "SLAM" :SYNONYMS NIL :IDENTIFIER "XFAM:PF06214.9")
  ((DEFINE-PROTEIN "UP:Q13291"
                   ("CD150" "CDw150" "IPO-3" "q13291" "SLAF1_HUMAN" "SLAM"
                    "SLAMF1" "slamf1"
                    "signaling lymphocytic activation molecule"
                    "signaling lymphocytic activation molecule family member 1"))))
 ((DEF-FAMILY "LIP1" :SYNONYMS NIL :IDENTIFIER "XFAM:PF15904.3")
  ((DEFINE-PROTEIN "UP:Q13136"
                   ("LAR-interacting protein 1" "LIP-1" "LIP.1" "LIP1"
                    "LIPA1_HUMAN" "LIPRIN" "lip1" "liprin-alpha-1"
                    "liprin-alpha1" "PPFIA1"
                    "PTPRF interacting protein alpha 1"
                    "PTPRF-interacting protein alpha-1"
                    "protein tyrosine phosphatase receptor type f polypeptide-interacting protein alpha-1"
                    "q13136" "f polypeptide (PTPRF)"
                    "interacting protein (liprin)"
                    "protein tyrosine phosphatase" "ptprf" "receptor type"))))
    ((DEF-FAMILY "AMPK" :SYNONYMS ("AMP activated protein kinase"))
     ;; fixed
  ((DEFINE-PROTEIN "UP:Q13131"
                   ("5'-AMP-activated protein kinase catalytic subunit alpha-1"
                    "AAPK1_HUMAN" "ACACA kinase" "AMPK" "AMPK alpha 1"
                    "AMPK alpha-1" "AMPK subfamily" "AMPK subunit alpha-1"
                    "AMPK1" "Acetyl-CoA carboxylase kinase" "ampk1"
                    "HMGCR kinase" "PRKAA1" "q13131"
                    "activated protein kinase"))))
 ((DEF-FAMILY "CAF1A" :SYNONYMS ("Caf1a") :IDENTIFIER "XFAM:PF12253.6")
  ((DEFINE-PROTEIN "UP:Q13112"
                   ("CAF1A" "CHAF1B" "caf1a" "chaf1b" "MPP7"
                    "chromatin assembly factor 1 subunit B"))))
 ((DEF-FAMILY "CSN1" :SYNONYMS NIL :IDENTIFIER "FA:00765")
  ((DEFINE-PROTEIN "UP:Q13098"
                   ("COP9 signalosome complex subunit 1"
                    "COP9 signalosome subunit 1" "COPS1" "CSN1" "CSN1_HUMAN"
                    "g protein pathway suppressor 1" "GPS-1" "GPS1"
                    "JAB1-containing signalosome subunit 1" "Protein MFH"
                    "q13098" "SGN1" "signalosome subunit 1" "signalosome"))))
 ((DEF-FAMILY "BENE" :SYNONYMS ("BenE") :IDENTIFIER "XFAM:PF03594.11")
  ((DEFINE-PROTEIN "UP:Q13021"
                   ("BENE" "BenE" "m-all"
                    "mal, T-cell differentiation protein like"))))
 ((DEF-FAMILY "Strumpellin" :SYNONYMS ("strumpellin") :IDENTIFIER "FA:03857")
  ((DEFINE-PROTEIN "UP:Q12768"
                   ("KIAA0196" "q12768" "STRUM_HUMAN" "strumpellin"))))
 ((DEF-FAMILY "SEC2" :SYNONYMS ("sec2") :IDENTIFIER "FA:03531")
  ((DEFINE-PROTEIN "UP:Q10981"
                   ("FUT2" "SE" "SE2" "SEC2" "SEC2 family" "ses"
                    "fucosyltransferase 2" "sec2"))))
 ((DEF-FAMILY "SE" :SYNONYMS ("Ses") :IDENTIFIER "XFAM:PF08491.8")
  ((DEFINE-PROTEIN "UP:Q10981"
                   ("FUT2" "SE" "SE2" "SEC2" "SEC2 family" "ses"
                    "fucosyltransferase 2" "sec2"))))
 ((DEF-FAMILY "Tetherin" :SYNONYMS ("tetherin") :IDENTIFIER "FA:04784")
  ((DEFINE-PROTEIN "UP:Q10589"
                   ("BST-2" "BST2" "BST2_HUMAN" "bone marrow stromal antigen 2"
                    "CD317" "HM1.24 antigen" "q10589" "tetherin"
                    "bone marrow stromal cell antigen 2" "cytometry"
                    "tetherin family"))))
 ((DEF-FAMILY "TRM4" :SYNONYMS ("trm4") :IDENTIFIER "FA:02281")
  ((DEFINE-PROTEIN "UP:Q08J23"
                   ("FLJ20303" "MRT5" "misu"
                    "Myc-induced SUN domain-containing protein"
                    "Myc-induced SUN-domain-containing protein"
                    "NOL1/NOP2/Sun domain family"
                    "NOL1/NOP2/Sun domain family member 2"
                    "NOP2/Sun RNA methyltransferase family member 2" "NSUN2"
                    "NSUN2_HUMAN" "Q08J23" "SAKI"
                    "Substrate of AIM1/Aurora kinase B" "TRM4" "TRM4 subfamily"
                    "hTrm4" "tRNA (cytosine(34)-C(5))-methyltransferase"
                    "tRNA (cytosine-5-)-methyltransferase"
                    "tRNA methyltransferase 4 homolog"
                    "tRNA methyltransferase 4 homolog (S. cerevisiae)"
                    "trm4"))))
 ((DEF-FAMILY "protein phosphatase 2A" :SYNONYMS
              ("phosphatase 2" "protein phosphatase 2" "protein phosphatase 2A"
               "PP-2A" "PP2A" "Phosphatase 2A")
   :MEMBERS ("UP:P67775" "UP:P62714"))
  ;dealt with
  ((DEFINE-PROTEIN "UP:Q06124"
                   ("PTN11_HUMAN" "PTP-1D" "PTP-2C" "PTP-2c" "PTP1D" "PTP2C"
                    "PTPN11" "Protein-tyrosine phosphatase 1D"
                    "Protein-tyrosine phosphatase 2C" "q06124" "SH-PTP2"
                    "SH-PTP3" "SHP- 2" "SHP-2" "SHP2" "SHPTP2" "shp2"
                    "tyrosine-protein phosphatase non-receptor type 11"
                    "non-receptor type 11 protein tyrosine phosphatase"
                    "nonreceptor-type 11" "phosphatase 2" "shp-2"))))
 ((DEF-FAMILY "FAK" :SYNONYMS ("FAK−" "Fak") :IDENTIFIER "FA:03125")
  ((DEFINE-PROTEIN "UP:Q05397"
                   ("FADK 1" "FAK" "FAK subfamily" "FAK1" "FAK1_HUMAN" "FRNK"
                    "fak" "focal adhesion kinase-related nonkinase" "PPP1R71"
                    "PTK2" "protein phosphatase 1 regulatory subunit 71"
                    "protein-tyrosine kinase 2" "q05397" "ROCK-FAK"
                    "focal adhesion kinase 1" "focal adhesion kinase-1"
                    "p125FAK" "p125Fak" "pp125FAK" "pp125FAKs" "pp125fak"))))
 ((DEF-FAMILY "CBF" :SYNONYMS NIL :IDENTIFIER "XFAM:PF03914.15")
  ((DEFINE-PROTEIN "UP:Q03701"
                   ("CBF" "CCAAT binding factor" "CCAAT-binding factor"
                    "CCAAT-box-binding transcription factor"
                    "CCAAT/enhancer binding protein zeta"
                    "CCAAT/enhancer-binding protein zeta" "CEBPZ" "CEBPZ_HUMAN"
                    "CTF2" "cbf2" "q03701" "ccaat"))))
 ((DEF-FAMILY "SPR1" :SYNONYMS ("spr-1") :IDENTIFIER "XFAM:PF15356.4")
  ((DEFINE-PROTEIN "UP:Q02446"
                   ("SP4" "SPR1" "sp4" "sp4 transcription factor" "spr-1"))))
 ((DEF-FAMILY "neuregulin" :SYNONYMS ("neuregulins" "NCIT:C20433" "NDFs")
              :IDENTIFIER "FA:02444")
  ((DEFINE-PROTEIN "UP:Q02297"
                   ("ARIA" "acetylcholine receptor-inducing activity"
                    "breast cancer cell differentiation factor p45" "GGF" "HGL"
                    "HRG" "HRG1" "HRGA" "heregulin" "hgl" "NDF" "NRG1"
                    "NRG1_HUMAN" "neu differentiation factor" "nrg1" "Pro-NRG1"
                    "q02297" "SMDF" "sensory and motor neuron derived factor"
                    "sensory and motor neuron-derived factor"
                    "glial growth factor" "neuregulin" "neuregulin 1"
                    "neuregulin-1" "neuregulin-1 protein" "neuregulin1"
                    "neuregulins-1" "neuroregulin"))))
 ((DEF-FAMILY "MEF2" :SYNONYMS NIL :IDENTIFIER "FA:02224")
  ((DEFINE-PROTEIN "UP:Q02078"
                   ("MEF-2A" "MEF2" "MEF2 family" "MEF2A" "MEF2A_HUMAN"
                    "MEFA_HUMAN" "Myocyte-specific enhancer factor 2A"
                    "Phospho-Myocyte-specific enhancer factor 2A" "q02078"
                    "RSRFC4" "RSRFC9" "mef2a" "myocyte enhancer factor 2A"
                    "myocyte specific enhancer factor" "p-S408-MEF2A"))))
 ((DEF-FAMILY "GalNAcT" :SYNONYMS ("galNAc-T") :IDENTIFIER "FA:01603")
  ((DEFINE-PROTEIN "UP:Q00973"
                   ("B4GALNT1" "B4GN1_HUMAN"
                    "Beta-1,4 N-acetylgalactosaminyltransferase 1" "GALGT"
                    "GD2 synthase" "GM2 synthase" "GM2/GD2 synthase" "GalNAcT"
                    "q00973" "SPG26"
                    "beta-1,4-N-acetyl-galactosaminyltransferase 1"
                    "beta1-4GalNAc-T" "galNAc-T subfamily"
                    "spastic paraplegia 26"))))
 ((DEF-FAMILY "Tom40" :SYNONYMS ("tom40") :IDENTIFIER "FA:04126")
  ((DEFINE-PROTEIN "UP:O96008"
                   ("c19orf1" "D19S1177E"
                    "Mitochondrial import receptor subunit TOM40 homolog"
                    "o96008" "PER-EC1" "PEREC1" "TOM40" "TOM40_HUMAN" "TOMM40"
                    "tom40" "protein haymaker" "tom40 family"
                    "translocase of outer mitochondrial membrane 40"
                    "translocase of outer mitochondrial membrane 40 homolog (yeast)"))))
 ((DEF-FAMILY "TCL1" :SYNONYMS NIL :IDENTIFIER "FA:03946")
  ((DEFINE-PROTEIN "UP:O95988"
                   ("syn1" "T-cell leukemia/lymphoma 1B" "TCL1" "TCL1 family"
                    "TCL1b" "tcl1"))))
 ((DEF-FAMILY "TTRAP" :SYNONYMS NIL :IDENTIFIER "XFAM:PF14203.4")
  ((DEFINE-PROTEIN "UP:O95551"
                   ("5'-Tyr-DNA phosphodiesterase"
                    "5'-tyrosyl-DNA phosphodiesterase" "EAPII"
                    "ETS1-associated protein 2" "ETS1-associated protein II"
                    "o95551" "TDP2" "TRAF and TNF receptor associated protein"
                    "TRAF and TNF receptor-associated protein" "TTRAP"
                    "TYDP2_HUMAN" "Tyr-DNA phosphodiesterase 2"
                    "Tyrosyl-DNA phosphodiesterase 2"
                    "Tyrosyl-RNA phosphodiesterase" "VPg unlinkase" "hTDP2"
                    "ttrap" "tyrosyl-DNA phosphodiesterase 2"))))
 ((DEF-FAMILY "RASGRP" :SYNONYMS ("RasGRP" "RasGRPs") :IDENTIFIER "FA:03235")
  ((DEFINE-PROTEIN "UP:O95267"
                   ("CalDAG-GEFI" "CalDAG-GEFII"
                    "Calcium and DAG-regulated guanine nucleotide exchange factor II"
                    "GRP1_HUMAN" "o95267" "RAS guanyl releasing protein"
                    "RASGRP" "RASGRP family" "RASGRP1"
                    "ras guanyl-releasing protein" "RasGRP" "hRasGRP1"))))
 ((DEF-FAMILY "Tom70" :SYNONYMS ("tom70") :IDENTIFIER "FA:04130")
  ((DEFINE-PROTEIN "UP:O94826"
                   ("KIAA0719" "Mitochondrial import receptor subunit TOM70"
                    "o94826" "PolyUb-TOMM70A" "TOM70" "TOM70_HUMAN" "TOMM70"
                    "TOMM70A" "tom70" "tom70 family"
                    "translocase of outer mitochondrial membrane 70"
                    "translocase of outer mitochondrial membrane 70 (yeast)homolog A"
                    "translocase of outer mitochondrial membrane 70 homolog A (S. cerevisiae)"
                    "translocase of outer mitochondrial membrane 70 homolog A (yeast)"))))
 ((DEF-FAMILY "RMP" :SYNONYMS ("rMP") :IDENTIFIER "XFAM:PF14996.4")
  ((DEFINE-PROTEIN "UP:O94763" ("RMP" "rMP"))))
 ((DEF-FAMILY "CRF" :SYNONYMS NIL :IDENTIFIER "XFAM:PF00473.15")
  ((DEFINE-PROTEIN "UP:O75973" ("CRF"))))
 ((DEF-FAMILY "CREG" :SYNONYMS NIL :IDENTIFIER "FA:00754")
  ((DEFINE-PROTEIN "UP:O75629" ("CREG" "CREG family"))))
 ((DEF-FAMILY "SAPK" :SYNONYMS
              ("SAP kinase activity" "stress activated protein kinase"
               "stress=activated protein kinase")
              :IDENTIFIER "GO:0016909")
  ((DEFINE-PROTEIN "UP:O75582"
                   ("KS6A5_HUMAN" "MSK-1" "MSK1" "o75582" "RPS6KA5" "RSK-like"
                    "RSKL" "S6K-alpha-5" "stress activated protein kinase"
                    "stress-activated protein kinase-1"))))
 ((DEF-FAMILY "SAPS" :SYNONYMS NIL :IDENTIFIER "FA:03496")
  ((DEFINE-PROTEIN "UP:O75563"
                   ("o75563" "PRAP" "RA70" "SAPS" "SAPS family" "SCAP2"
                    "SKAP-HOM" "SKAP2" "SKAP2_HUMAN" "SKAP55R"
                    "SRC family associated phosphoprotein-2"
                    "Src kinase-associated phosphoprotein 2 (SCAP2)" "skap2"
                    "src family associated phosphoprotein 2"
                    "src kinase associated phosphoprotein 2"))))
 ((DEF-FAMILY "BAF" :SYNONYMS ("BaF" "Baf") :IDENTIFIER "FA:00326")
  ((DEFINE-PROTEIN "UP:O75531"
                   ("BAF" "BAF family" "BAF protein" "BAF_HUMAN" "BAFs" "BANF1"
                    "BaF" "baf" "barrier" "barrier-to-autointegration factor"
                    "breakpoint cluster region protein 1" "o75531"
                    "barrier to autointegration factor 1"))))
 ((DEF-FAMILY "LEDGF" :SYNONYMS NIL :IDENTIFIER "XFAM:PF11467.6")
  ((DEFINE-PROTEIN "UP:O75475"
                   ("DFS 70" "LEDGF" "PC4 and SFRS1 interacting protein"
                    "PC4 and SFRS1 interacting protein 1" "PSIP1" "psip1"
                    "lens-epithelium-derived growth factor"))))
 ((DEF-FAMILY "Maf" :SYNONYMS ("maf") :IDENTIFIER "FA:00410")
  ((DEFINE-PROTEIN "UP:O75444"
                   ("MAF" "MAF bZIP transcription factor" "MAF_HUMAN" "maf"
                    "o75444" "Proto-oncogene c-Maf" "Transcription factor Maf"
                    "v-maf musculoaponeurotic fibrosarcoma oncogene homolog"
                    "c-maf" "maf subfamily" "musculoaponeurotic fibrosarcoma"
                    "musculoaponeurotic fibrosarcoma oncogene" "tbhq"
                    "transcription factor Maf"
                    "v-maf musculoaponeurotic fibrosarcoma oncogene"))))
 ((DEF-FAMILY "JAK" :SYNONYMS ("JAKs" "Jak" "Jaks" "jaks") :IDENTIFIER
              "FA:03129")
  ((DEFINE-PROTEIN "UP:O60674"
                   ("JAK" "JAK-2" "JAK2" "Jak2" "JAK2_HUMAN" "jak-2" "jak2"
                    "o60674" "janus kinase 2"))))
 ((DEF-FAMILY "ISWI" :SYNONYMS NIL :IDENTIFIER "FA:03705")
  ((DEFINE-PROTEIN "UP:O60264"
                   ("ISWI" "o60264" "SMARCA5" "SMCA5_HUMAN" "SNF2H" "SNF2h"
                    "SWI/SNF-related matrix-associated actin dependent regulator of chromatin subfamily A member 5"
                    "SWI/SNF-related matrix-associated actin-dependent regulator of chromatin subfamily A member 5"
                    "snf2h" "WCRF135" "hISWI" "hSNF2H" "hSnf2H"))))
 ((DEF-FAMILY "HAT" :SYNONYMS NIL :IDENTIFIER "XFAM:PF02184.14")
  ((DEFINE-PROTEIN "UP:O60235"
                   ("airway trypsin-like protease" "HAT" "HATs" "o60235"
                    "TM11D_HUMAN" "TMPRSS11D"
                    "Transmembrane protease serine 11D"))))
 ((DEF-FAMILY "AKAP95" :SYNONYMS NIL :IDENTIFIER "FA:00137")
  ((DEFINE-PROTEIN "UP:O43823" ("AKAP95" "AKAP95 family"))))
 ((DEF-FAMILY "SGT" :SYNONYMS NIL :IDENTIFIER "FA:03594")
  ((DEFINE-PROTEIN "UP:O43765"
                   ("SGT" "SGT family" "SGTA" "sgt1"
                    "small glutamine-rich tetratricopeptide repeat-containing protein alpha"
                    "UBP" "UBPs"
                    "small glutamine rich tetratricopeptide repeat containing alpha"))))
 ((DEF-FAMILY "HPIP" :SYNONYMS NIL :IDENTIFIER "XFAM:PF15226.4")
  ((DEFINE-PROTEIN "UP:O43586"
                   ("CD2 antigen-binding protein 1"
                    "CD2 cytoplasmic tail-binding protein" "CD2BP1" "CD2BP1L"
                    "CD2BP1S" "H-PIP" "HPIP" "o43586" "PAPAS"
                    "PEST phosphatase-interacting protein 1" "PPIP1_HUMAN"
                    "PSTPIP" "PSTPIP1"
                    "proline-serine-threonine phosphatase-interacting protein 1"
                    "proline-serine-threonine phosphatase interacting protein 1"))))
 ((DEF-FAMILY "MRG" :SYNONYMS ("mRG") :IDENTIFIER "XFAM:PF05712.11")
  ((DEFINE-PROTEIN "UP:O15540"
                   ("B-FABP" "BLBP" "blbp" "FABP7" "FABP7_HUMAN"
                    "fatty acid-binding protein, brain" "MRG" "o15540"
                    "brain lipid binding protein"
                    "fatty acid binding protein 7" "mRG"))))
 ((DEF-FAMILY "JAB" :SYNONYMS ("Jab") :IDENTIFIER "XFAM:PF01398.19")
  ((DEFINE-PROTEIN "UP:O15524"
                   ("CIS1" "JAB" "JAK binding protein" "JAK-binding protein"
                    "jab" "o15524" "SOCS-1" "SOCS1" "SOCS1_HUMAN" "SSI-1"
                    "SSI1" "STAT-induced STAT inhibitor 1" "TIP-3" "TIP3"
                    "tec-interacting protein 3"
                    "suppressor of cytokine signaling 1"
                    "suppressor of cytokine signaling-1"))))
 ((DEF-FAMILY "SIVA" :SYNONYMS ("Siva" "siva") :IDENTIFIER "XFAM:PF05458.10")
  ((DEFINE-PROTEIN "UP:O15304"
                   ("Abl2/Arg" "Apoptosis regulatory protein Siva"
                    "CD27-binding protein" "CD27BP" "o15304" "SIVA" "SIVA1"
                    "SIVA1 apoptosis inducing factor" "SIVA_HUMAN" "siva-1"
                    "siva2" "siva"))))
 ((DEF-FAMILY "exportin")
  ((DEFINE-PROTEIN "UP:O14980"
                   ("CRM-1" "CRM1" "exp1" "o14980" "XPO1" "XPO1_HUMAN"
                    "exportin" "exportin 1" "exportin1"))))
 ((DEF-FAMILY "GIPC" :SYNONYMS NIL :IDENTIFIER "FA:01512")
  ((DEFINE-PROTEIN "UP:O14908"
                   ("GIPC" "GIPC PDZ domain containing family member 1"
                    "GIPC family" "GIPC1" "PDZ domain-containing protein GIPC1"
                    "RGS-GAIP interacting protein" "TIP2" "synectin"))))
 ((DEF-FAMILY "SIP-1" :SYNONYMS ("SIP1" "sip-1") :IDENTIFIER "XFAM:PF04938.10")
  ((DEFINE-PROTEIN "UP:O14893"
                   ("component of gems 2" "GEMI2_HUMAN" "GEMIN2"
                    "gem-associated protein 2" "gemin 2" "gemin-2" "gemin2"
                    "o14893" "SIP1" "SMN-interacting protein 1"
                    "survival of motor neuron protein-interacting protein 1"
                    "gem (nuclear organelle)associated protein 2"
                    "gem nuclear organelle associated protein 2" "sip-1"
                    "survival of motor neuron protein interacting protein 1"))))
 ((DEF-FAMILY "HSP90" :IDENTIFIER "XFAM:PF02518" :SYNONYMS ("HSPC") :MEMBERS
              ("UP:P07900" "UP:P08238" "UP:P14625" "UP:P55737" "UP:Q14568"
                           "UP:Q58FF7" "UP:Q58FF8" "UP:Q58FG1"))
  ; diff prot type and only the gene is hspc, the protein isn't -- dealt with
  ((DEFINE-PROTEIN "UP:O14818"
                   ("c6" "HSPC" "HSPCs" "o14818" "PSA7_HUMAN" "PSMA7"
                    "Proteasome subunit RC6-1" "Proteasome subunit XAPC7"
                    "proteasome subunit alpha type 7" "RC6-1" "XAPC7"
                    "proteasome subunit RC6-1" "proteasome subunit XAPC7"
                    "proteasome subunit alpha 7"))))
 ((DEF-FAMILY "Unc-13" :SYNONYMS ("unc-13") :IDENTIFIER "FA:04299")
  ((DEFINE-PROTEIN "UP:O14795"
                   ("munc 13" "munc13-2" "o14795" "Protein unc-13 homolog B"
                    "UN13B_HUMAN" "UNC-13 homolog-B protein" "UNC13" "UNC13B"
                    "unc-13" "unc13h2" "hmunc13" "munc-13" "munc13"
                    "unc-13 family" "unc-13 homolog B"
                    "unc-13 homolog B (C. elegans)"
                    "unc-13-like (C. elegans)"))))
 ((DEF-FAMILY "GKAP" :SYNONYMS NIL :IDENTIFIER "XFAM:PF03359.11")
  ((DEFINE-PROTEIN "UP:O14490"
                   ("DAP-1" "DAP1" "DLG associated protein 1" "DLGAP1"
                    "DLGP1_HUMAN" "dlgap1" "GKAP"
                    "guanylate kinase associated protein" "o14490" "SAPAP1"
                    "discs large homolog associated protein 1"
                    "large (Drosophila)homolog-associated protein 1"))))
 ((DEF-FAMILY "reverse transcriptase" :SYNONYMS ("reverse-transcriptase")
              :IDENTIFIER "FA:03270")
  ((DEFINE-PROTEIN "UP:O00370"
                   ("LINE-1 retrotransposable element ORF2 protein"
                    "LORF2_HUMAN" "o00370" "ORF2p" "endonuclease"
                    "reverse transcriptase" "reverse transcriptase family"
                    "reverse-transcriptase"))))
 ((DEF-FAMILY "SPT5" :SYNONYMS ("Spt5") :IDENTIFIER "FA:03818")
  ((DEFINE-PROTEIN "UP:O00267"
                   ("DSIF" "FLJ34157" "o00267" "SPT5" "SPT5 family"
                    "SPT5 homolog" "SPT5H" "SPT5H_HUMAN" "SUPT5H" "spt5"
                    "Transcription elongation factor SPT5" "hSpt5" "p-SUPT5H"
                    "suppressor of Ty (S.cerevisiae)5 homolog"
                    "suppressor of Ty 5 homolog (S. cerevisiae)"
                    "transcription elongation factor Spt5"))))
 ((DEF-FAMILY "ART" :SYNONYMS NIL :IDENTIFIER "XFAM:PF01129.16")
  ((DEFINE-PROTEIN "UP:O00253"
                   ("ART" "AgRP" "agrp" "agouti related neuropeptide"
                    "agouti related protein"))))))
