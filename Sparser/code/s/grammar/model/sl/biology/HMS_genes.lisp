(in-package :sparser)

(defparameter *hms-genes*
  '(ABL1 ACACA ACACB ACTB AGFG1 AIM1 AKT1 AKT1S1 AKT2 AKT3 AMH ANXA1 ANXA7 AR ARAF ARID1A ATG3 ATG7 ATM ATR ATRX AURKB AXL BABAM1 BAD BAK1 BAP1 BAX BCL2 BCL2A1 BCL2L1 BCL2L11 BECN1 BID BIRC3 BRAF BRD4 C21orf33 CASP3 CASP7 CASP8 CAV1 CCNB1 CCND1 CCND3 CCNE1 CD274 CD44 CDC25C CDH1 CDH2 CDH3 CDK1 CDKN1A CDKN1B CDKN2A CHEK1 CHEK2 CLDN7 COG3 COL6A1 COX4I1 CREB1 CTNNB1 DIABLO DPP4 DUSP4 E2F1 EEF2 EEF2K EGFR EIF4E EIF4EBP1 EIF4G1 ELK1 ENY2 EPPK1 ERBB2 ERBB3 ERCC1 ERCC4 ERCC5 ERRFI1 ESR1 ETS1 FASN FGR FN1 FOSL1 FOXM1 FOXO3 FYN G6PD GAB2 GAPDH GATA3 GCLM GJA1 GLS GLUD1 GSK3A GSK3B GYS1 GZMB H2AFX H2BFM H3F3A H3F3B H3F3C HCK HES1 HIF1A HIST1H3A HIST2H3A HIST3H3 HK2 HSBP1 HSPA1A HSPA5 HSPB1 IGF1R IGFBP2 INPP4B INSR IRF1 IRS1 ITGA2 ITGB1 JAG1 JAK2 JUN KAT2A KDR KIT L1CAM LCK LDHA LRP6 LYN MAP1LC3A MAP1LC3B MAP2K1 MAP2K2 MAPK1 MAPK14 MAPK3 MAPK8 MAPK9 MAPT MCL1 MDM2 MET MIF MKNK1 MMP2 MSH6 MSI2 MTOR MUC1 MYC MYH11 MYH9 MYT1 NAPSA NDRG1 NDUFB4 NF2 NKX2-1 NOTCH1 NOTCH3 NRAS NRG1 PAICS PAK1 PAK4 PARD3 PARD3B PARD6A PARD6B PARD6G PARK7 PARP1 PAX8 PCNA PDCD4 PDGFRB PDK1 PDPK1 PEA15 PECAM1 PGR PIK3CA PIK3CB PIK3R1 PKM PLCG2 PLK1 PMS2 POU5F1 PPIF PREX1 PRKAA1 PRKAA2 PRKAR1A PRKCA PRKCB PRKCD PRKCE PRKCH PRKCQ PTEN PTGS2 PTK2 PTPN11 PXN RAB11A RAB11B RAB25 RAD50 RAD51 RAF1 RB1 RBM15 RELA RHEB RICTOR ROCK1 RPA2 RPS6 RPS6KA1 RPS6KA2 RPS6KA3 RPS6KB1 RPTOR SCD SDHA SERPINA2 SERPINE1 SHC1 SLC16A4 SLC1A5 SMAD1 SMAD3 SMAD4 SNAI1 SOD1 SOD2 SOX2 SRC SRSF1 STAT3 STAT5A STMN1 SYK TFAM TFRC TGM2 TIGAR TP53 TP53BP1 TRIM25 TSC1 TSC2 TUBA1A TUFM TWIST2 TYRO3 UBAC1 UGT1A1 ULK1 VASP VCAM1 VDAC1 VIM VTCN1 WEE1 WIPI1 WIPI2 WWTR1 XBP1 XPA XRCC1 YAP1 YBX1 YES1 YWHAB YWHAE YWHAZ ZAP70 ))

(defparameter *hms-genes-expanded*
  '((ABL1 "HGNC:76" ("ABL proto-oncogene 1" "non-receptor tyrosine kinase")
     ("ABL")
     ("v-abl Abelson murine leukemia viral oncogene homolog 1" "c-abl oncogene 1"
      "receptor tyrosine kinase" "c-abl oncogene 1"
      "non-receptor tyrosine kinase")
     ("JTK7" "c-ABL" "p150") NIL ("1857987" "12626632") ("P00519"))
    (ACACA "HGNC:84" ("acetyl-CoA carboxylase alpha") ("ACAC" "ACC")
     ("acetyl-Coenzyme A carboxylase alpha") ("ACC1") ("acetyl-CoA carboxylase 1")
     NIL ("Q13085"))
    (ACACB "HGNC:85" ("acetyl-CoA carboxylase beta") NIL
     ("acetyl-Coenzyme A carboxylase beta") ("HACC275" "ACC2" "ACCB")
     ("acetyl-CoA carboxylase 2") ("8670171") ("O00763"))
    (ACTB "HGNC:132" ("actin beta") NIL NIL NIL NIL ("1505215") ("P60709"))
    (AGFG1 "HGNC:5175" ("ArfGAP with FG repeats 1") ("HRB")
     ("HIV-1 Rev binding protein") ("RIP" "RAB") NIL ("7637788") ("P52594"))
    (AIM1 "HGNC:356" ("absent in melanoma 1") ("ST4")
     ("suppression of tumorigenicity 4 (malignant melanoma)") ("CRYBG1")
     ("suppression of tumorigenicity 4"
      "beta-gamma crystallin domain containing 1")
     ("1680551" "12693952") ("Q9Y4K1"))
    (AKT1 "HGNC:391" ("AKT serine/threonine kinase 1") NIL
     ("v-akt murine thymoma viral oncogene homolog 1") ("RAC" "PKB" "PRKBA" "AKT")
     NIL NIL ("P31749"))
    (AKT1S1 "HGNC:28426" ("AKT1 substrate 1") NIL
     ("AKT1 substrate 1 (proline-rich)") ("PRAS40" "MGC2865" "Lobe")
     ("proline-rich Akt substrate" "40 kDa") ("12524439") ("Q96B36"))
    (AKT2 "HGNC:392" ("AKT serine/threonine kinase 2") NIL
     ("v-akt murine thymoma viral oncogene homolog 2") NIL NIL ("1409633")
     ("P31751"))
    (AKT3 "HGNC:393" ("AKT serine/threonine kinase 3") NIL
     ("v-akt murine thymoma viral oncogene homolog 3")
     ("PKBG" "RAC-gamma" "PRKBG") ("protein kinase B" "gamma")
     ("10092583" "10208883") ("Q9Y243"))
    (AMH "HGNC:464" ("anti-Mullerian hormone") NIL NIL ("MIS") NIL
     ("3754790" "18784351") ("P03971"))
    (ANXA1 "HGNC:533" ("annexin A1") ("ANX1" "LPC1") NIL NIL NIL ("2936963")
     ("P04083"))
    (ANXA7 "HGNC:545" ("annexin A7") ("ANX7") NIL NIL NIL ("7515686") ("P20073"))
    (AR "HGNC:644" ("androgen receptor") ("DHTR" "SBMA")
     ("dihydrotestosterone receptor" "spinal and bulbar muscular atrophy")
     ("AIS" "NR3C4" "SMAX1" "HUMARA")
     ("testicular feminization" "Kennedy disease") ("3353726" "3377788")
     ("P10275"))
    (ARAF "HGNC:646" ("A-Raf proto-oncogene" "serine/threonine kinase") ("ARAF1")
     ("v-raf murine sarcoma 3611 viral oncogene homolog 1") NIL NIL NIL
     ("P10398"))
    (ARID1A "HGNC:11110" ("AT-rich interaction domain 1A") ("C1orf4" "SMARCF1")
     ("SWI/SNF related" "matrix associated"
      "actin dependent regulator of chromatin" "subfamily f" "member 1"
      "AT rich interactive domain 1A (SWI- like)"
      "AT rich interactive domain 1A (SWI-like)")
     ("B120" "P270" "C10rf4" "BAF250" "BAF250a") NIL ("9630625" "9434167")
     ("O14497"))
    (ATG3 "HGNC:20962" ("autophagy related 3") ("APG3L")
     ("APG3 autophagy 3-like (S. cerevisiae)"
      "ATG3 autophagy related 3 homolog (S. cerevisiae)")
     ("PC3-96" "FLJ22125" "MGC15201" "DKFZp564M1178") NIL ("11825910") ("Q9NT62"))
    (ATG7 "HGNC:16935" ("autophagy related 7") ("APG7L")
     ("APG7 autophagy 7-like (S. cerevisiae)"
      "ATG7 autophagy related 7 homolog (S. cerevisiae)")
     ("GSA7" "DKFZp434N0735") ("ubiquitin-activating enzyme E1-like protein")
     ("10233149") ("O95352"))
    (ATM "HGNC:795" ("ATM serine/threonine kinase") ("ATA" "ATDC" "ATC" "ATD")
     ("ataxia telangiectasia mutated (includes complementation groups A"
      "C and D)" "ataxia telangiectasia mutated")
     ("TEL1" "TELO1") ("TEL1" "telomere maintenance 1" "homolog (S. cerevisiae)")
     NIL ("Q13315"))
    (ATR "HGNC:882" ("ATR serine/threonine kinase") NIL
     ("ataxia telangiectasia and Rad3 related") ("FRP1" "SCKL" "SCKL1" "MEC1")
     ("MEC1" "mitosis entry checkpoint 1" "homolog (S. cerevisiae)")
     ("8978690" "8610130") ("Q13535"))
    (ATRX "HGNC:886" ("ATRX" "chromatin remodeler") ("RAD54" "JMS" "MRX52")
     ("alpha thalassemia/mental retardation syndrome X-linked (RAD54 (S. cerevisiae) homolog)"
      "Juberg-Marsidi syndrome" "mental retardation" "X-linked 52"
      "alpha thalassemia/mental retardation syndrome X-linked")
     ("XH2" "XNP") ("RAD54 homolog (S. cerevisiae)")
     ("7874112" "1415255" "8503439" "8630485") ("P46100"))
    (AURKB "HGNC:11390" ("aurora kinase B") ("STK12")
     ("serine/threonine kinase 12")
     ("Aik2" "IPL1" "AurB" "AIM-1" "ARK2" "STK5" "PPP1R48")
     ("aurora-B" "aurora-1" "protein phosphatase 1" "regulatory subunit 48")
     ("9858806") ("Q96GD4"))
    (AXL "HGNC:905" ("AXL receptor tyrosine kinase") NIL NIL
     ("UFO" "JTK11" "Tyro7" "ARK") NIL ("1656220") ("P30530"))
    (BABAM1 "HGNC:25008" ("BRISC and BRCA1 A complex member 1") ("C19orf62")
     ("chromosome 19 open reading frame 62")
     ("FLJ20571" "HSPC142" "NBA1" "MERIT40")
     ("Mediator of Rap80 Interactions and Targeting 40 kD"
      "new component of the BRCA1 A complex")
     ("11042152") ("Q9NWV8"))
    (BAD "HGNC:936" ("BCL2 associated agonist of cell death") NIL NIL
     ("BCL2L8" "BBC2") NIL ("8929532") ("Q92934"))
    (BAK1 "HGNC:949" ("BCL2 antagonist/killer 1") ("CDN1")
     ("BCL2-antagonist/killer 1") ("BCL2L7" "BAK") NIL ("7715730" "7715731")
     ("Q16611"))
    (BAP1 "HGNC:950" ("BRCA1 associated protein 1") NIL
     ("BRCA1 associated protein-1 (ubiquitin carboxy-terminal hydrolase)")
     ("hucep-6" "KIAA0272" "UCHL2") ("ubiquitin carboxy-terminal hydrolase")
     ("9528852") ("Q92560"))
    (BAX "HGNC:959" ("BCL2 associated X" "apoptosis regulator") NIL
     ("BCL2-associated X protein" "BCL2 associated X protein") ("BCL2L4") NIL
     ("8358790") ("Q07812"))
    (BCL2 "HGNC:990" ("BCL2" "apoptosis regulator") NIL ("B-cell CLL/lymphoma 2")
     ("Bcl-2" "PPP1R50") ("protein phosphatase 1" "regulatory subunit 50") NIL
     ("P10415"))
    (BCL2A1 "HGNC:991" ("BCL2 related protein A1") ("HBPA1") NIL
     ("GRS" "BFL1" "BCL2L5" "ACC-1" "ACC-2" "ACC2" "ACC1") NIL
     ("8589678" "12771180") ("Q16548"))
    (BCL2L1 "HGNC:992" ("BCL2 like 1") NIL NIL
     ("BCLX" "BCL2L" "Bcl-X" "bcl-xL" "bcl-xS" "PPP1R52")
     ("protein phosphatase 1" "regulatory subunit 52") ("8358789") ("Q07817"))
    (BCL2L11 "HGNC:994" ("BCL2 like 11") NIL
     ("BCL2-like 11 (apoptosis facilitator)") ("BOD" "BimL" "BimEL" "BimS" "BIM")
     NIL ("9731710" "9430630") ("O43521"))
    (BECN1 "HGNC:1034" ("beclin 1") NIL
     ("beclin 1 (coiled-coil" "moesin-like BCL2 interacting protein)" "beclin 1"
      "autophagy related")
     ("ATG6" "VPS30") ("ATG6 autophagy related 6 homolog (S. cerevisiae)")
     ("9765397") ("Q14457"))
    (BID "HGNC:1050" ("BH3 interacting domain death agonist") NIL NIL NIL NIL
     ("8918887" "9721221") ("P55957"))
    (BIRC3 "HGNC:591" ("baculoviral IAP repeat containing 3") ("API2")
     ("baculoviral IAP repeat-containing 3")
     ("cIAP2" "hiap-1" "MIHC" "RNF49" "MALT2" "c-IAP2")
     ("apoptosis inhibitor 2" "TNFR2-TRAF signaling complex protein"
      "mammalian IAP homolog C" "inhibitor of apoptosis protein 1")
     ("8552191" "8548810") ("Q13489"))
    (BRAF "HGNC:1097" ("B-Raf proto-oncogene" "serine/threonine kinase") NIL
     ("v-raf murine sarcoma viral oncogene homolog B") ("BRAF1") NIL
     ("2284096" "1565476") ("P15056"))
    (BRD4 "HGNC:13575" ("bromodomain containing 4") NIL
     ("bromodomain-containing 4") ("HUNKI" "MCAP" "CAP" "HUNK1")
     ("chromosome-associated protein") ("10938129") ("O60885"))
    (C21ORF33)
    (CASP3 "HGNC:1504" ("caspase 3") NIL
     ("caspase 3" "apoptosis-related cysteine protease" "caspase 3"
      "apoptosis-related cysteine peptidase")
     ("CPP32" "CPP32B" "Yama" "apopain") NIL ("8780721") ("P42574"))
    (CASP7 "HGNC:1508" ("caspase 7") NIL
     ("caspase 7" "apoptosis-related cysteine protease" "caspase 7"
      "apoptosis-related cysteine peptidase")
     ("MCH3" "CMH-1" "ICE-LAP3") NIL ("8521391" "8576161") ("P55210"))
    (CASP8 "HGNC:1509" ("caspase 8") NIL
     ("caspase 8" "apoptosis-related cysteine protease" "caspase 8"
      "apoptosis-related cysteine peptidase")
     ("MCH5" "MACH" "FLICE" "Casp-8") NIL ("8681376" "8681377") ("Q14790"))
    (CAV1 "HGNC:1527" ("caveolin 1") ("CAV")
     ("caveolin 1" "caveolae protein" "22kD" "caveolin 1" "caveolae protein"
      "22kDa")
     NIL NIL ("10087206") ("Q03135"))
    (CCNB1 "HGNC:1579" ("cyclin B1") ("CCNB") NIL NIL
     ("G2/mitotic-specific cyclin B1") ("1386342") ("P14635"))
    (CCND1 "HGNC:1582" ("cyclin D1") ("BCL1" "D11S287E" "PRAD1")
     ("cyclin D1 (PRAD1: parathyroid adenomatosis 1)") ("U21B31")
     ("parathyroid adenomatosis 1" "B-cell CLL/lymphoma 1"
      "G1/S-specific cyclin D1")
     ("1826542" "1833066") ("P24385"))
    (CCND3 "HGNC:1585" ("cyclin D3") NIL NIL NIL NIL ("1386335") ("P30281"))
    (CCNE1 "HGNC:1589" ("cyclin E1") ("CCNE") NIL NIL ("cyclin Es" "cyclin Et")
     ("1833066") ("P24864"))
    (CD274 "HGNC:17635" ("CD274 molecule") ("PDCD1LG1")
     ("programmed cell death 1 ligand 1" "CD274 antigen")
     ("B7-H" "B7H1" "PD-L1" "PDL1" "B7-H1") ("B7 homolog 1")
     ("11015443" "10581077") ("Q9NZQ7"))
    (CD44 "HGNC:1681" ("CD44 molecule (Indian blood group)")
     ("MIC4" "MDU2" "MDU3")
     ("CD44 antigen (homing function and Indian blood group system)")
     ("IN" "MC56" "Pgp1" "CD44R" "HCELL" "CSPG8")
     ("hematopoietic cell E- and L-selectin ligand"
      "chondroitin sulfate proteoglycan 8")
     ("2454887") ("P16070"))
    (CDC25C "HGNC:1727" ("cell division cycle 25C") ("CDC25")
     ("cell division cycle 25C" "cell division cycle 25 homolog C (S. cerevisiae)"
      "cell division cycle 25 homolog C (S. pombe)")
     ("PPP1R60") ("protein phosphatase 1" "regulatory subunit 60") ("1703321")
     ("P30307"))
    (CDH1 "HGNC:1748" ("cadherin 1") ("UVO")
     ("cadherin 1" "type 1" "E-cadherin (epithelial)") ("uvomorulin" "CD324")
     ("E-Cadherin") ("9925936") ("P12830"))
    (CDH2 "HGNC:1759" ("cadherin 2") ("NCAD")
     ("cadherin 2" "type 1" "N-cadherin (neuronal)") ("CDHN" "CD325")
     ("N-cadherin") ("2384753" "7731968" "2216790") ("P19022"))
    (CDH3 "HGNC:1762" ("cadherin 3") NIL
     ("cadherin 3" "P-cadherin (placental)" "cadherin 3" "type 1"
      "P-cadherin (placental)")
     ("CDHP" "PCAD") NIL ("1427864") ("P22223"))
    (CDK1 "HGNC:1722" ("cyclin dependent kinase 1") ("CDC2")
     ("cell division cycle 2" "G1 to S and G2 to M") ("CDC28A") NIL
     ("3553962" "19884882") ("P06493"))
    (CDKN1A "HGNC:1784" ("cyclin dependent kinase inhibitor 1A") ("CDKN1")
     ("cyclin-dependent kinase inhibitor 1A (p21" "Cip1)")
     ("P21" "CIP1" "WAF1" "SDI1" "CAP20" "p21CIP1" "p21Cip1/Waf1") NIL NIL
     ("P38936"))
    (CDKN1B "HGNC:1785" ("cyclin dependent kinase inhibitor 1B") NIL
     ("cyclin-dependent kinase inhibitor 1B (p27" "Kip1)") ("KIP1" "P27KIP1") NIL
     ("8033212") ("P46527"))
    (CDKN2A "HGNC:1787" ("cyclin dependent kinase inhibitor 2A") ("CDKN2" "MLM")
     ("cyclin-dependent kinase inhibitor 2A (melanoma" "p16" "inhibits CDK4)")
     ("CDK4I" "p16" "INK4a" "MTS1" "CMM2" "ARF" "p19" "p14" "INK4" "p16INK4a"
      "p19Arf" "p14ARF")
     NIL ("8152487" "7606716") ("P42771" "Q8N726"))
    (CHEK1 "HGNC:1925" ("checkpoint kinase 1") NIL
     ("CHK1 (checkpoint" "S.pombe) homolog" "CHK1 checkpoint homolog (S. pombe)")
     ("CHK1") NIL ("9278511" "9382850") ("O14757"))
    (CHEK2 "HGNC:16627" ("checkpoint kinase 2") ("RAD53")
     ("CHK2 (checkpoint" "S.pombe) homolog" "CHK2 checkpoint homolog (S. pombe)")
     ("CDS1" "CHK2" "HuCds1" "PP1425" "bA444G7") NIL ("9836640" "10097108")
     ("O96017"))
    (CLDN7 "HGNC:2049" ("claudin 7") ("CEPTRL2" "CPETRL2") NIL ("Hs.84359") NIL
     ("9892664") ("O95471"))
    (COG3 "HGNC:18619" ("component of oligomeric golgi complex 3") NIL NIL
     ("SEC34") NIL ("11980916") ("Q96JB2"))
    (COL6A1 "HGNC:2211" ("collagen type VI alpha 1 chain") NIL
     ("collagen" "type VI" "alpha 1") NIL NIL ("23869615") ("P12109"))
    (COX4I1 "HGNC:2265" ("cytochrome c oxidase subunit 4I1") ("COX4")
     ("cytochrome c oxidase subunit IV"
      "cytochrome c oxidase subunit IV isoform 1")
     ("COX4-1") NIL ("2444497" "2157630") ("P13073"))
    (CREB1 "HGNC:2345" ("cAMP responsive element binding protein 1") NIL NIL NIL
     NIL NIL ("P16220"))
    (CTNNB1 "HGNC:2514" ("catenin beta 1") ("CTNNB")
     ("catenin (cadherin-associated protein)" "beta 1 (88kD)"
      "catenin (cadherin-associated protein)" "beta 1" "88kDa"
      "catenin (cadherin-associated protein)" "beta 1")
     ("beta-catenin" "armadillo") NIL ("7829088") ("P35222"))
    (DIABLO "HGNC:21528" ("diablo IAP-binding mitochondrial protein") NIL
     ("diablo" "IAP-binding mitochondrial protein")
     ("SMAC" "DIABLO-S" "FLJ25049" "FLJ10537" "DFNA64")
     ("second mitochondria-derived activator of caspase")
     ("12749848" "17237824" "21722859") ("Q9NR28"))
    (DPP4 "HGNC:3009" ("dipeptidyl peptidase 4") ("CD26" "ADCP2")
     ("dipeptidylpeptidase IV (CD26" "adenosine deaminase complexing protein 2)"
      "adenosine deaminase complexing protein 2" "dipeptidyl-peptidase 4")
     ("DPPIV") NIL ("8101391") ("P27487"))
    (DUSP4 "HGNC:3070" ("dual specificity phosphatase 4") NIL NIL
     ("HVH2" "MKP-2" "TYP")
     ("VH1 homologous phosphatase 2" "MAP kinase phosphatase 2")
     ("7535768" "9205128") ("Q13115"))
    (E2F1 "HGNC:3113" ("E2F transcription factor 1") ("RBBP3") NIL ("RBP3") NIL
     ("8964493") ("Q01094"))
    (EEF2 "HGNC:3214" ("eukaryotic translation elongation factor 2") ("EF2") NIL
     ("EEF-2") ("polypeptidyl-tRNA translocase") ("2610926" "6427766") ("P13639"))
    (EEF2K "HGNC:24615" ("eukaryotic elongation factor 2 kinase") NIL NIL
     ("eEF-2K") NIL ("9144159" "12051769") ("O00418"))
    (EGFR "HGNC:3236" ("epidermal growth factor receptor") ("ERBB")
     ("epidermal growth factor receptor (avian erythroblastic leukemia viral (v-erb-b) oncogene homolog)")
     ("ERBB1")
     ("erythroblastic leukemia viral (v-erb-b) oncogene homolog (avian)"
      "erb-b2 receptor tyrosine kinase 1")
     ("1505215") ("P00533"))
    (EIF4E "HGNC:3287" ("eukaryotic translation initiation factor 4E")
     ("EIF4EL1" "EIF4F") NIL ("EIF4E1") NIL ("9330633" "1916814") ("P06730"))
    (EIF4EBP1 "HGNC:3288"
     ("eukaryotic translation initiation factor 4E binding protein 1") NIL NIL
     ("PHAS-I" "4E-BP1")
     ("phosphorylated heat- and acid-stable protein regulated by insulin 1")
     ("7935836") ("Q13541"))
    (EIF4G1 "HGNC:3296" ("eukaryotic translation initiation factor 4 gamma 1")
     ("EIF4G" "EIF4F") ("eukaryotic translation initiation factor 4 gamma" "1")
     ("p220" "PARK18") NIL ("1429670" "9372926" "21907011") ("Q04637"))
    (ELK1 "HGNC:3321" ("ELK1" "ETS transcription factor") NIL
     ("ELK1" "member of ETS oncogene family") NIL NIL ("2539641") ("P19419"))
    (ENY2 "HGNC:24449" ("ENY2" "transcription and export complex 2 subunit") NIL
     ("enhancer of yellow 2 homolog (Drosophila)") ("DC6" "FLJ20480" "Sus1") NIL
     ("11438676") ("Q9NPA8"))
    (EPPK1 "HGNC:15577" ("epiplakin 1") NIL NIL ("EPIPL1")
     ("epidermal autoantigen 450K") ("11278896" "15671067") ("P58107"))
    (ERBB2 "HGNC:3430" ("erb-b2 receptor tyrosine kinase 2") ("NGL")
     ("v-erb-b2 avian erythroblastic leukemia viral oncogene homolog 2 (neuro/glioblastoma derived oncogene homolog)"
      "v-erb-b2 avian erythroblastic leukemia viral oncogene homolog 2")
     ("NEU" "HER-2" "CD340" "HER2")
     ("neuro/glioblastoma derived oncogene homolog"
      "human epidermal growth factor receptor 2")
     NIL ("P04626"))
    (ERBB3 "HGNC:3431" ("erb-b2 receptor tyrosine kinase 3") ("LCCS2")
     ("lethal congenital contracture syndrome 2"
      "v-erb-b2 avian erythroblastic leukemia viral oncogene homolog 3")
     ("HER3") ("human epidermal growth factor receptor 3") NIL ("P21860"))
    (ERCC1 "HGNC:3433"
     ("ERCC excision repair 1" "endonuclease non-catalytic subunit") NIL
     ("excision repair cross-complementing rodent repair deficiency"
      "complementation group 1 (includes overlapping antisense sequence)"
      "excision repair cross-complementation group 1")
     ("RAD10") NIL ("6462228" "26939044") ("P07992"))
    (ERCC4 "HGNC:3436" ("ERCC excision repair 4" "endonuclease catalytic subunit")
     ("XPF")
     ("excision repair cross-complementing rodent repair deficiency"
      "complementation group 4" "excision repair cross-complementation group 4")
     ("RAD1" "FANCQ") ("xeroderma pigmentosum" "complementation group F")
     ("9579555" "8887684") ("Q92889"))
    (ERCC5 "HGNC:3437" ("ERCC excision repair 5" "endonuclease") ("ERCM2" "XPGC")
     ("xeroderma pigmentosum" "complementation group G"
      "excision repair cross-complementing rodent repair deficiency"
      "complementation group 5" "excision repair cross-complementation group 5")
     NIL ("Cockayne syndrome") ("8088806") ("P28715"))
    (ERRFI1 "HGNC:18185" ("ERBB receptor feedback inhibitor 1") NIL NIL
     ("MIG-6" "GENE-33" "RALT") NIL ("10749885" "2780291" "12226756" "11003669")
     ("Q9UJM3"))
    (ESR1 "HGNC:3467" ("estrogen receptor 1") ("ESR") NIL ("NR3A1" "Era") NIL
     ("3754034") ("P03372"))
    (ETS1 "HGNC:3488" ("ETS proto-oncogene 1" "transcription factor") ("EWSR2")
     ("v-ets avian erythroblastosis virus E26 oncogene homolog 1")
     ("FLJ10768" "ETS-1")
     ("Avian erythroblastosis virus E26 (v-ets) oncogene homolog-1" "ets protein")
     ("1522903") ("P14921"))
    (FASN "HGNC:3594" ("fatty acid synthase") NIL NIL ("FAS" "SDR27X1")
     ("short chain dehydrogenase/reductase family 27X" "member 1")
     ("7835891" "7567999" "19027726") ("P49327"))
    (FGR "HGNC:3697" ("FGR proto-oncogene" "Src family tyrosine kinase") ("SRC2")
     ("Gardner-Rasheed feline sarcoma viral (v-fgr) oncogene homolog"
      "v-fgr feline Gardner-Rasheed sarcoma viral oncogene homolog"
      "feline Gardner-Rasheed sarcoma viral oncogene homolog")
     ("c-fgr" "p55c-fgr") NIL ("3922831") ("P09769"))
    (FN1 "HGNC:3778" ("fibronectin 1") NIL NIL ("MSF" "CIG" "LETS" "GFND2" "FINC")
     ("migration-stimulating factor" "cold-insoluble globulin")
     ("2992939" "3003095") ("P02751"))
    (FOSL1 "HGNC:13718" ("FOS like 1" "AP-1 transcription factor subunit") NIL
     ("FOS like antigen 1") ("fra-1") NIL ("2107490") ("P15407"))
    (FOXM1 "HGNC:3818" ("forkhead box M1") ("FKHL16") NIL
     ("HFH-11" "trident" "HNF-3" "INS-1" "MPP2" "MPHOSPH2" "TGT3")
     ("M-phase phosphoprotein 2") ("9032290" "9441747") ("Q08050"))
    (FOXO3 "HGNC:3821" ("forkhead box O3") ("FKHRL1" "FOXO3A") NIL
     ("AF6q21" "FOXO2") NIL ("9479491") ("O43524"))
    (FYN "HGNC:4037" ("FYN proto-oncogene" "Src family tyrosine kinase") NIL
     ("FYN oncogene related to SRC" "FGR" "YES") ("SYN" "SLK" "MGC45350") NIL
     ("3526330") ("P06241"))
    (G6PD "HGNC:4057" ("glucose-6-phosphate dehydrogenase") NIL NIL ("G6PD1") NIL
     ("3012556" "2428611") ("P11413"))
    (GAB2 "HGNC:14458" ("GRB2 associated binding protein 2") NIL NIL ("KIAA0571")
     ("Grb2-associated binder 2") ("10391903" "10068651") ("Q9UQC2"))
    (GAPDH "HGNC:4141" ("glyceraldehyde-3-phosphate dehydrogenase") ("GAPD") NIL
     NIL NIL ("3170585") ("P04406"))
    (GATA3 "HGNC:4172" ("GATA binding protein 3") NIL ("GATA-binding protein 3")
     ("HDR") NIL ("2050118" "15087456") ("P23771"))
    (GCLM "HGNC:4312" ("glutamate-cysteine ligase modifier subunit") ("GLCLR")
     ("glutamate-cysteine ligase" "modifier subunit") NIL
     ("gamma-glutamylcysteine synthetase") ("7826375") ("P48507"))
    (GJA1 "HGNC:4274" ("gap junction protein alpha 1") ("ODDD" "GJAL")
     ("gap junction protein" "alpha-like" "gap junction protein" "alpha 1"
      "43kDa (connexin 43)" "gap junction protein" "alpha 1" "43kDa")
     ("CX43" "ODD" "ODOD" "SDTY3")
     ("oculodentodigital dysplasia (syndactyly type III)" "connexin 43")
     ("10331943" "1646158") ("P17302"))
    (GLS "HGNC:4331" ("glutaminase") NIL NIL ("KIAA0838" "GLS1") NIL ("10048485")
     ("O94925"))
    (GLUD1 "HGNC:4335" ("glutamate dehydrogenase 1") ("GLUD") NIL ("GDH") NIL
     ("2757358") ("P00367"))
    (GSK3A "HGNC:4616" ("glycogen synthase kinase 3 alpha") NIL NIL NIL NIL
     ("9809441") ("P49840"))
    (GSK3B "HGNC:4617" ("glycogen synthase kinase 3 beta") NIL NIL NIL NIL
     ("10486203") ("P49841"))
    (GYS1 "HGNC:4706" ("glycogen synthase 1") ("GYS")
     ("glycogen synthase 1 (muscle)") ("GSY") NIL NIL ("P13807"))
    (GZMB "HGNC:4709" ("granzyme B") ("CTLA1" "CSPB")
     ("granzyme B (granzyme 2"
      "cytotoxic T-lymphocyte-associated serine esterase 1)")
     ("CCPI" "CGL-1" "CSP-B" "CGL1" "CTSGL1" "HLP" "SECT")
     ("fragmentin 2" "cytotoxic serine protease B" "cathepsin G-like 1"
      "T-cell serine protease 1-3E" "granzyme 2"
      "cytotoxic T-lymphocyte-associated serine esterase 1")
     ("2323780") ("P10144"))
    (H2AFX "HGNC:4739" ("H2A histone family member X") ("H2AX")
     ("H2A histone family" "member X") NIL NIL ("8076949") ("P16104"))
    (H2BFM "HGNC:27867" ("H2B histone family member M") NIL
     ("H2B histone family" "member M") NIL NIL NIL ("P0C1H6"))
    (H3F3A "HGNC:4764" ("H3 histone family member 3A") ("H3F3")
     ("H3 histone" "family 3A") ("H3.3A") NIL ("3031613") ("P84243"))
    (H3F3B "HGNC:4765" ("H3 histone family member 3B") NIL
     ("H3 histone" "family 3B (H3.3B)" "H3 histone" "family 3B") ("H3.3B") NIL
     ("8586426") ("P84243"))
    (H3F3C "HGNC:33164" ("H3 histone family member 3C") NIL
     ("H3 histone" "family 3C") ("H3.5") NIL ("21274551") ("Q6NXT2"))
    (HCK "HGNC:4840" ("HCK proto-oncogene" "Src family tyrosine kinase") NIL
     ("hemopoietic cell kinase") ("JTK9") NIL ("3496523") ("P08631"))
    (HES1 "HGNC:5192" ("hes family bHLH transcription factor 1") ("HRY")
     ("hairy homolog (Drosophila)" "hairy and enhancer of split 1" "(Drosophila)")
     ("FLJ20408" "HES-1" "Hes1" "bHLHb39") NIL ("8020957") ("Q14469"))
    (HIF1A "HGNC:4910" ("hypoxia inducible factor 1 alpha subunit") NIL
     ("hypoxia inducible factor 1"
      "alpha subunit (basic helix-loop-helix transcription factor)")
     ("MOP1" "HIF-1alpha" "PASD8" "HIF1" "bHLHe78") NIL ("8786149" "9079689")
     ("Q16665"))
    (HIST1H3A "HGNC:4766" ("histone cluster 1 H3 family member a") ("H3FA")
     ("H3 histone family" "member A" "histone 1" "H3a" "histone cluster 1" "H3a")
     ("H3/A") NIL ("9119399" "12408966") ("P68431"))
    (HIST2H3A "HGNC:20505" ("histone cluster 2 H3 family member a") NIL
     ("histone 2" "H3a" "histone cluster 2" "H3a") ("H3/n" "H3/o") NIL
     ("12408966" "15527963") ("Q71DI3"))
    (HIST3H3 "HGNC:4778" ("histone cluster 3 H3") ("H3FT")
     ("H3 histone family" "member T" "histone 3" "H3" "histone cluster 3" "H3")
     ("H3t" "H3/g" "H3.4") NIL ("8834248" "12408966") ("Q16695"))
    (HK2 "HGNC:4923" ("hexokinase 2") NIL NIL NIL NIL NIL ("P52789"))
    (HSBP1 "HGNC:5203" ("heat shock factor binding protein 1") NIL NIL NIL NIL
     ("9649501" "9493008") ("O75506"))
    (HSPA1A "HGNC:5232" ("heat shock protein family A (Hsp70) member 1A")
     ("HSPA1") ("heat shock 70kD protein 1A" "heat shock 70kDa protein 1A")
     ("HSP70-1") NIL NIL ("P0DMV8"))
    (HSPA5 "HGNC:5238" ("heat shock protein family A (Hsp70) member 5") ("GRP78")
     ("heat shock 70kD protein 5 (glucose-regulated protein" "78kD)"
      "heat shock 70kDa protein 5 (glucose-regulated protein" "78kDa)")
     ("BiP") ("glucose-regulated protein" "78kDa") NIL ("P11021"))
    (HSPB1 "HGNC:5246" ("heat shock protein family B (small) member 1") NIL
     ("heat shock 27kD protein 1" "heat shock 27kDa protein 1")
     ("HSP27" "HSP28" "Hs.76067" "Hsp25" "CMT2F") NIL ("2243808" "9344682")
     ("P04792"))
    (IGF1R "HGNC:5465" ("insulin like growth factor 1 receptor") NIL
     ("insulin-like growth factor 1 receptor")
     ("JTK13" "CD221" "IGFIR" "MGC18216" "IGFR") NIL ("1316909") ("P08069"))
    (IGFBP2 "HGNC:5471" ("insulin like growth factor binding protein 2") ("IBP2")
     ("insulin-like growth factor binding protein 2 (36kD)"
      "insulin-like growth factor binding protein 2" "36kDa"
      "insulin-like growth factor binding protein 2")
     NIL NIL ("1697583") ("P18065"))
    (INPP4B "HGNC:6075" ("inositol polyphosphate-4-phosphatase type II B") NIL
     ("inositol polyphosphate-4-phosphatase" "type II" "105kD"
      "inositol polyphosphate-4-phosphatase" "type II" "105kDa")
     NIL NIL ("9295334") ("O15327"))
    (INSR "HGNC:6091" ("insulin receptor") NIL NIL ("CD220") NIL ("2983222")
     ("P06213"))
    (IRF1 "HGNC:6116" ("interferon regulatory factor 1") NIL NIL ("MAR")
     ("interferon regulatory factor-1") ("2726461" "1680796") ("P10914"))
    (IRS1 "HGNC:6125" ("insulin receptor substrate 1") NIL NIL ("HIRS-1") NIL
     ("1648180") ("P35568"))
    (ITGA2 "HGNC:6137" ("integrin subunit alpha 2") ("CD49B")
     ("integrin" "alpha 2 (CD49B" "alpha 2 subunit of VLA-2 receptor)") ("CD49b")
     ("alpha 2 subunit of VLA-2 receptor") NIL ("P17301"))
    (ITGB1 "HGNC:6153" ("integrin subunit beta 1") ("FNRB" "MSK12" "MDF2")
     ("integrin" "beta 1 (fibronectin receptor" "beta polypeptide"
      "antigen CD29 includes MDF2" "MSK12)")
     ("CD29" "GPIIA") NIL ("2524991") ("P05556"))
    (JAG1 "HGNC:6188" ("jagged 1") ("AGS" "JAGL1") ("Alagille syndrome")
     ("AHD" "AWS" "HJ1" "CD339") NIL ("7697721" "9207788") ("P78504"))
    (JAK2 "HGNC:6192" ("Janus kinase 2") NIL NIL ("JTK10") NIL ("1848670")
     ("O60674"))
    (JUN "HGNC:6204" ("Jun proto-oncogene" "AP-1 transcription factor subunit")
     NIL ("v-jun avian sarcoma virus 17 oncogene homolog" "jun oncogene")
     ("c-Jun" "AP-1") NIL ("3194415") ("P05412"))
    (KAT2A "HGNC:4201" ("lysine acetyltransferase 2A") ("GCN5L2")
     ("GCN5 general control of amino-acid synthesis 5-like 2 (yeast)"
      "K(lysine) acetyltransferase 2A")
     ("GCN5" "PCAF-b") NIL ("8552087") ("Q92830"))
    (KDR "HGNC:6307" ("kinase insert domain receptor") NIL
     ("kinase insert domain receptor (a type III receptor tyrosine kinase)")
     ("FLK1" "VEGFR" "VEGFR2" "CD309")
     ("vascular endothelial growth factor receptor 2" "fetal liver kinase 1")
     ("1417831") ("P35968"))
    (KIT "HGNC:6342" ("KIT proto-oncogene receptor tyrosine kinase") ("PBT")
     ("piebald trait"
      "v-kit Hardy-Zuckerman 4 feline sarcoma viral oncogene homolog")
     ("CD117" "SCFR" "C-Kit") NIL ("9027509") ("P10721"))
    (L1CAM "HGNC:6470" ("L1 cell adhesion molecule")
     ("HSAS1" "SPG1" "HSAS" "MASA" "MIC5" "S10")
     ("antigen identified by monoclonal antibody R1") ("CD171") NIL NIL
     ("P32004"))
    (LCK "HGNC:6524" ("LCK proto-oncogene" "Src family tyrosine kinase") NIL
     ("lymphocyte-specific protein tyrosine kinase") NIL NIL ("2787474")
     ("P06239"))
    (LDHA "HGNC:6535" ("lactate dehydrogenase A") NIL NIL NIL NIL ("3000353")
     ("P00338"))
    (LRP6 "HGNC:6698" ("LDL receptor related protein 6") NIL
     ("low density lipoprotein receptor-related protein 6") ("ADCAD2") NIL
     ("9704021") ("O75581"))
    (LYN "HGNC:6735" ("LYN proto-oncogene" "Src family tyrosine kinase") NIL
     ("v-yes-1 Yamaguchi sarcoma viral related oncogene homolog") ("JTK8") NIL
     ("3561390") ("P07948"))
    (MAP1LC3A "HGNC:6838" ("microtubule associated protein 1 light chain 3 alpha")
     NIL NIL ("MAP1BLC3" "MAP1ALC3" "LC3" "LC3A" "ATG8E") NIL
     ("8833088" "17580304") ("Q9H492"))
    (MAP1LC3B "HGNC:13352" ("microtubule associated protein 1 light chain 3 beta")
     NIL NIL ("ATG8F") NIL NIL ("Q9GZQ8"))
    (MAP2K1 "HGNC:6840" ("mitogen-activated protein kinase kinase 1") ("PRKMK1")
     NIL ("MEK1" "MAPKK1") NIL ("9465908" "8388392") ("Q02750"))
    (MAP2K2 "HGNC:6842" ("mitogen-activated protein kinase kinase 2") ("PRKMK2")
     NIL ("MEK2") NIL ("8388392") ("P36507"))
    (MAPK1 "HGNC:6871" ("mitogen-activated protein kinase 1") ("PRKM2" "PRKM1")
     NIL ("ERK" "ERK2" "p41mapk" "MAPK2") NIL NIL ("P28482"))
    (MAPK14 "HGNC:6876" ("mitogen-activated protein kinase 14")
     ("CSPB1" "CSBP1" "CSBP2") NIL ("PRKM14" "p38" "Mxi2" "PRKM15")
     ("p38 MAP kinase") ("7997261") ("Q16539"))
    (MAPK3 "HGNC:6877" ("mitogen-activated protein kinase 3") ("PRKM3") NIL
     ("ERK1" "p44mapk" "p44erk1") NIL ("9628824") ("P27361"))
    (MAPK8 "HGNC:6881" ("mitogen-activated protein kinase 8") ("PRKM8") NIL
     ("JNK" "JNK1" "SAPK1") ("JUN N-terminal kinase") ("8137421" "8654373")
     ("P45983"))
    (MAPK9 "HGNC:6886" ("mitogen-activated protein kinase 9") ("PRKM9") NIL
     ("JNK2" "p54a" "SAPK") ("Jun kinase") ("8001819") ("P45984"))
    (MAPT "HGNC:6893" ("microtubule associated protein tau") ("DDPAC" "MAPTL") NIL
     ("MTBT1" "tau" "PPND" "FTDP-17" "TAU" "MSTD" "MTBT2" "FLJ31424" "MGC138549"
      "PPP1R103")
     ("G protein beta1/gamma2 subunit-interacting factor 1"
      "microtubule-associated protein tau" "isoform 4" "protein phosphatase 1"
      "regulatory subunit 103")
     ("7936241" "3131773") ("P10636"))
    (MCL1 "HGNC:6943" ("BCL2 family apoptosis regulator") NIL
     ("myeloid cell leukemia sequence 1 (BCL2-related)" "myeloid cell leukemia 1")
     ("BCL2L3" "Mcl-1") NIL ("7682708" "7835896") ("Q07820"))
    (MDM2 "HGNC:6973" ("MDM2 proto-oncogene") NIL
     ("mouse double minute 2" "human homolog of; p53-binding protein" "Mdm2"
      "transformed 3T3 cell double minute 2" "p53 binding protein (mouse)"
      "Mdm2 p53 binding protein homolog (mouse)" "MDM2 proto-oncogene"
      "E3 ubiquitin protein ligase")
     ("HDM2" "MGC5370") NIL ("1614537" "16905769") ("Q00987"))
    (MET "HGNC:7029" ("MET proto-oncogene" "receptor tyrosine kinase") NIL
     ("met proto-oncogene") ("HGFR" "RCCP2" "DFNB97")
     ("hepatocyte growth factor receptor") ("1846706" "1611909" "25941349")
     ("P08581"))
    (MIF "HGNC:7097"
     ("macrophage migration inhibitory factor (glycosylation-inhibiting factor)")
     ("GLIF") NIL ("GIF") NIL ("7558020" "2552447") ("P14174"))
    (MKNK1 "HGNC:7110" ("MAP kinase interacting serine/threonine kinase 1") NIL
     NIL ("MNK1") NIL ("9155018") ("Q9BUB5"))
    (MMP2 "HGNC:7166" ("matrix metallopeptidase 2") ("CLG4" "CLG4A")
     ("matrix metalloproteinase 2 (gelatinase A" "72kDa gelatinase"
      "72kDa type IV collagenase)")
     ("TBE-1") NIL NIL ("P08253"))
    (MSH6 "HGNC:7329" ("mutS homolog 6") ("GTBP")
     ("mutS (E. coli) homolog 6" "mutS homolog 6 (E. coli)") NIL NIL ("7604266")
     ("P52701"))
    (MSI2 "HGNC:18585" ("musashi RNA binding protein 2") NIL
     ("musashi homolog 2 (Drosophila)") NIL NIL ("11588182") ("Q96DH6"))
    (MTOR "HGNC:3942" ("mechanistic target of rapamycin") ("FRAP" "FRAP2" "FRAP1")
     ("FK506 binding protein 12-rapamycin associated protein 1"
      "mechanistic target of rapamycin (serine/threonine kinase)")
     ("RAFT1" "RAPT1" "FLJ44809")
     ("FK506 binding protein 12-rapamycin associated protein 2"
      "rapamycin target protein" "FKBP12-rapamycin complex-associated protein 1"
      "FKBP-rapamycin associated protein" "rapamycin associated protein FRAP2"
      "dJ576K7.1 (FK506 binding protein 12-rapamycin associated protein 1)"
      "rapamycin and FKBP12 target 1" "mammalian target of rapamycin")
     ("8008069" "8660990") ("P42345"))
    (MUC1 "HGNC:7508" ("mucin 1" "cell surface associated") ("PUM" "MCKD1")
     ("mucin 1" "transmembrane"
      "medullary cystic kidney disease 1 (autosomal dominant)")
     ("CD227" "PEM" "ADMCKD" "ADMCKD1" "MCKD" "MCD") NIL ("1697589" "23396133")
     ("P15941"))
    (MYC "HGNC:7553" ("v-myc avian myelocytomatosis viral oncogene homolog") NIL
     NIL ("c-Myc" "bHLHe39" "MYCC") NIL NIL ("P01106"))
    (MYH11 "HGNC:7569" ("myosin heavy chain 11") NIL
     ("myosin" "heavy polypeptide 11" "smooth muscle") ("SMMHC" "SMHC") NIL
     ("7684189") ("P35749"))
    (MYH9 "HGNC:7579" ("myosin heavy chain 9") ("DFNA17")
     ("myosin" "heavy polypeptide 9" "non-muscle")
     ("NMMHCA" "NMHC-II-A" "MHA" "FTNS" "EPSTS")
     ("nonmuscle myosin heavy chain II-A") ("1860190" "11023810") ("P35579"))
    (MYT1 "HGNC:7622" ("myelin transcription factor 1") ("PLPB1") NIL
     ("MTF1" "MYTI" "ZC2HC4A" "NZF2" "ZC2H2C1")
     ("neural zinc finger transcription factor 2") ("1280325" "9268380")
     ("Q01538"))
    (NAPSA "HGNC:13395" ("napsin A aspartic peptidase") NIL NIL
     ("NAP1" "NAPA" "Kdap" "KAP")
     ("kidney-derived aspartic protease-like protein") NIL ("O96009"))
    (NDRG1 "HGNC:7679" ("N-myc downstream regulated 1") ("CAP43") NIL
     ("DRG1" "RTP" "TDD5" "NDR1") NIL ("9251681" "8939898" "18455888") ("Q92597"))
    (NDUFB4 "HGNC:7699" ("NADH:ubiquinone oxidoreductase subunit B4") NIL
     ("NADH dehydrogenase (ubiquinone) 1 beta subcomplex" "4 (15kD" "B15)"
      "NADH dehydrogenase (ubiquinone) 1 beta subcomplex" "4" "15kDa")
     ("B15") ("complex I B15 subunit") ("9878551") ("O95168"))
    (NF2 "HGNC:7773" ("neurofibromin 2") NIL
     ("neurofibromin 2 (bilateral acoustic neuroma)" "neurofibromin 2 (merlin)")
     ("merlin" "ACN" "SCH" "BANF") ("moesin-ezrin-radixin like" "schwannomin")
     ("10591208") ("P35240"))
    (NKX2-1 "HGNC:11825" ("NK2 homeobox 1") ("NKX2A" "BCH" "TITF1")
     ("benign chorea" "thyroid transcription factor 1") ("TTF-1" "TTF1") NIL
     ("1976511") ("P43699"))
    (NOTCH1 "HGNC:7881" ("notch 1") ("TAN1")
     ("Notch (Drosophila) homolog 1 (translocation-associated)" "Notch homolog 1"
      "translocation-associated (Drosophila)")
     NIL NIL ("1831692") ("P46531"))
    (NOTCH3 "HGNC:7883" ("notch 3") ("CADASIL")
     ("Notch (Drosophila) homolog 3" "Notch homolog 3 (Drosophila)") ("CASIL") NIL
     ("7835890") ("Q9UM47"))
    (NRAS "HGNC:7989" ("neuroblastoma RAS viral oncogene homolog") NIL
     ("neuroblastoma RAS viral (v-ras) oncogene homolog") ("N-ras") NIL NIL
     ("P01111"))
    (NRG1 "HGNC:7997" ("neuregulin 1") ("HGL" "NRG1-IT2")
     ("NRG1 intronic transcript 2 (non-protein coding)") ("HRG" "NDF" "GGF") NIL
     ("1350381" "8095334") ("Q02297"))
    (PAICS "HGNC:8587"
     ("phosphoribosylaminoimidazole carboxylase and phosphoribosylaminoimidazolesuccinocarboxamide synthase")
     ("PAIS")
     ("phosphoribosylaminoimidazole carboxylase"
      "phosphoribosylaminoimidazole succinocarboxamide synthetase")
     ("ADE2H1" "AIRC") NIL ("2253271" "8106516") ("P22234"))
    (PAK1 "HGNC:8590" ("p21 (RAC1) activated kinase 1") NIL
     ("p21/Cdc42/Rac1-activated kinase 1 (yeast Ste20-related)"
      "p21/Cdc42/Rac1-activated kinase 1 (STE20 homolog" "yeast)"
      "p21 protein (Cdc42/Rac)-activated kinase 1")
     NIL ("STE20 homolog" "yeast") ("8805275" "9533029") ("Q13153"))
    (PAK4 "HGNC:16059" ("p21 (RAC1) activated kinase 4") NIL
     ("p21(CDKN1A)-activated kinase 4"
      "p21 protein (Cdc42/Rac)-activated kinase 4")
     NIL NIL ("9822598" "10461188") ("O96013"))
    (PARD3 "HGNC:16051" ("par-3 family cell polarity regulator") NIL
     ("par-3 (partitioning defective 3" "C.elegans) homolog"
      "par-3 partitioning defective 3 homolog (C. elegans)")
     ("PAR3" "PARD3A" "Bazooka" "Baz" "ASIP" "PPP1R118")
     ("atypical PKC isotype-specific interacting protein"
      "par-3 family cell polarity regulator alpha" "protein phosphatase 1"
      "regulatory subunit 118")
     ("10934474") ("Q8TEW0"))
    (PARD3B "HGNC:14446" ("par-3 family cell polarity regulator beta")
     ("ALS2CR19")
     ("amyotrophic lateral sclerosis 2 (juvenile) chromosome region"
      "candidate 19" "par-3 partitioning defective 3 homolog B (C. elegans)")
     ("Par3L" "PAR3beta") NIL ("11586298" "12459187") ("Q8TEW8"))
    (PARD6A "HGNC:15943" ("par-6 family cell polarity regulator alpha") NIL
     ("par-6 (partitioning defective 6" "C.elegans) homolog alpha"
      "par-6 partitioning defective 6 homolog alpha (C. elegans)")
     ("PAR-6" "PAR-6A" "TAX40" "PAR6alpha" "TIP-40") NIL ("9482110" "11260256")
     ("Q9NPB6"))
    (PARD6B "HGNC:16245" ("par-6 family cell polarity regulator beta") NIL
     ("par-6 (partitioning defective 6" "C.elegans) homolog beta"
      "par-6 partitioning defective 6 homolog beta (C. elegans)")
     ("PAR-6B") NIL ("11260256") ("Q9BYG5"))
    (PARD6G "HGNC:16076" ("par-6 family cell polarity regulator gamma") NIL
     ("par-6 (partitioning defective 6" "C.elegans) homolog gamma"
      "par-6 partitioning defective 6 homolog gamma (C. elegans)")
     ("PAR-6G" "PAR6gamma") NIL ("11260256") ("Q9BYG4"))
    (PARK7 "HGNC:16369" ("Parkinsonism associated deglycase") NIL
     ("Parkinson disease (autosomal recessive" "early onset) 7"
      "parkinson protein 7")
     ("DJ-1" "DJ1") NIL ("11462174" "9070310" "25416785") ("Q99497"))
    (PARP1 "HGNC:270" ("poly(ADP-ribose) polymerase 1") ("PPOL" "ADPRT")
     ("ADP-ribosyltransferase (NAD+; poly (ADP-ribose) polymerase)"
      "poly (ADP-ribose) polymerase family" "member 1")
     ("PARP") NIL ("10964595") ("P09874"))
    (PAX8 "HGNC:8622" ("paired box 8") NIL ("paired box gene 8") NIL NIL
     ("8431641" "7981748") ("Q06710"))
    (PCNA "HGNC:8729" ("proliferating cell nuclear antigen") NIL NIL NIL NIL
     ("2565339") ("P12004"))
    (PDCD4 "HGNC:8763" ("programmed cell death 4") NIL
     ("programmed cell death 4 (neoplastic transformation inhibitor)") ("H731")
     ("nuclear antigen H731") ("9759869") ("Q53EL6"))
    (PDGFRB "HGNC:8804" ("platelet derived growth factor receptor beta") ("PDGFR")
     ("platelet-derived growth factor receptor" "beta polypeptide")
     ("JTK12" "CD140b" "PDGFR1") NIL NIL ("P09619"))
    (PDK1 "HGNC:8809" ("pyruvate dehydrogenase kinase 1") NIL
     ("pyruvate dehydrogenase kinase" "isoenzyme 1"
      "pyruvate dehydrogenase kinase" "isozyme 1")
     NIL NIL ("7499431") ("Q15118"))
    (PDPK1 "HGNC:8816" ("3-phosphoinositide dependent protein kinase 1") NIL NIL
     ("PDK1") ("PkB kinase") ("9094314" "9445477") ("O15530"))
    (PEA15 "HGNC:8822" ("phosphoprotein enriched in astrocytes 15") NIL NIL
     ("HMAT1" "MAT1" "PED" "PEA-15" "MAT1H" "HUMMAT1H")
     ("Phosphoprotein enriched in astrocytes" "15kD"
      "homolog of mouse MAT-1 oncogene")
     ("9205133") ("Q15121"))
    (PECAM1 "HGNC:8823" ("platelet and endothelial cell adhesion molecule 1") NIL
     ("platelet/endothelial cell adhesion molecule 1") ("CD31") ("CD31 antigen")
     ("8661055" "1690453") ("P16284"))
    (PGR "HGNC:8910" ("progesterone receptor") NIL NIL ("PR" "NR3C3") NIL NIL
     ("P06401"))
    (PIK3CA "HGNC:8975"
     ("phosphatidylinositol-4,5-bisphosphate 3-kinase catalytic subunit alpha")
     NIL
     ("phosphoinositide-3-kinase" "catalytic" "alpha polypeptide"
      "phosphatidylinositol-4,5-bisphosphate 3-kinase" "catalytic subunit alpha")
     ("PI3K") NIL ("1322797") ("P42336"))
    (PIK3CB "HGNC:8976"
     ("phosphatidylinositol-4,5-bisphosphate 3-kinase catalytic subunit beta")
     ("PIK3C1")
     ("phosphoinositide-3-kinase" "catalytic" "beta polypeptide"
      "phosphatidylinositol-4,5-bisphosphate 3-kinase" "catalytic subunit beta")
     NIL NIL ("8246984") ("P42338"))
    (PIK3R1 "HGNC:8979" ("phosphoinositide-3-kinase regulatory subunit 1") NIL
     ("phosphoinositide-3-kinase" "regulatory subunit 1 (alpha)")
     ("GRB1" "p85-ALPHA" "p85")
     ("phosphoinositide-3-kinase regulatory subunit alpha") ("1314371" "18387942")
     ("P27986"))
    (PKM "HGNC:9021" ("pyruvate kinase" "muscle") ("PKM2") NIL
     ("THBP1" "OIP3" "PK3") NIL ("2040271") ("P14618"))
    (PLCG2 "HGNC:9066" ("phospholipase C gamma 2") NIL
     ("phospholipase C" "gamma 2 (phosphatidylinositol-specific)") NIL NIL
     ("7835906") ("P16885"))
    (PLK1 "HGNC:9077" ("polo like kinase 1") ("PLK")
     ("polo-like kinase (Drosophila)" "polo-like kinase 1") NIL NIL ("8127874")
     ("P53350"))
    (PMS2 "HGNC:9122" ("PMS1 homolog 2" "mismatch repair system component")
     ("PMSL2")
     ("postmeiotic segregation increased (S. cerevisiae) 2"
      "PMS2 postmeiotic segregation increased 2 (S. cerevisiae)" "PMS1 homolog 2"
      "mismatch repair protein")
     ("H_DJ0042M02.9" "HNPCC4" "MLH4") NIL ("8072530") ("P54278"))
    (POU5F1 "HGNC:9221" ("POU class 5 homeobox 1") ("OTF3")
     ("POU domain class 5" "transcription factor 1") ("OCT3" "Oct4" "MGC22487")
     NIL ("1408763") ("Q01860"))
    (PPIF "HGNC:9259" ("peptidylprolyl isomerase F") NIL
     ("peptidylprolyl isomerase F (cyclophilin F)") ("hCyP3" "Cyp-D")
     ("cyclophilin D") ("1744118") ("P30405"))
    (PREX1 "HGNC:32594"
     ("phosphatidylinositol-3,4,5-trisphosphate dependent Rac exchange factor 1")
     NIL
     ("phosphatidylinositol-3,4,5-trisphosphate-dependent Rac exchange factor 1")
     ("KIAA1415" "P-REX1") ("PIP3 dependent Rac exchange factor 1")
     ("11955434" "15545267" "16301320") ("Q8TCU6"))
    (PRKAA1 "HGNC:9376" ("protein kinase AMP-activated catalytic subunit alpha 1")
     NIL ("protein kinase" "AMP-activated" "alpha 1 catalytic subunit") ("AMPKa1")
     ("AMPK" "alpha" "1") ("8557660") ("Q13131"))
    (PRKAA2 "HGNC:9377" ("protein kinase AMP-activated catalytic subunit alpha 2")
     ("PRKAA") ("protein kinase" "AMP-activated" "alpha 2 catalytic subunit")
     ("AMPK" "AMPKa2") NIL ("7959015") ("P54646"))
    (PRKAR1A "HGNC:9388"
     ("protein kinase cAMP-dependent type I regulatory subunit alpha")
     ("PRKAR1" "TSE1")
     ("tissue specific extinguisher 1" "protein kinase" "cAMP-dependent"
      "regulatory" "type I" "alpha" "protein kinase" "cAMP-dependent"
      "regulatory subunit type I alpha")
     ("CNC1") ("Carney complex type 1") ("3479018" "10973256") ("P10644"))
    (PRKCA "HGNC:9393" ("protein kinase C alpha") ("PKCA")
     ("protein kinase C" "alpha") NIL NIL NIL ("P17252"))
    (PRKCB "HGNC:9395" ("protein kinase C beta") ("PRKCB2" "PKCB" "PRKCB1")
     ("protein kinase C" "beta 1" "protein kinase C" "beta") NIL NIL ("3658678")
     ("P05771"))
    (PRKCD "HGNC:9399" ("protein kinase C delta") NIL ("protein kinase C" "delta")
     NIL NIL ("8188219") ("Q05655"))
    (PRKCE "HGNC:9401" ("protein kinase C epsilon") NIL
     ("protein kinase C" "epsilon") NIL NIL ("1382605" "7877991") ("Q02156"))
    (PRKCH "HGNC:9403" ("protein kinase C eta") ("PRKCL")
     ("protein kinase C" "eta") ("PKC-L" "PKCL") NIL ("1986216" "1545821")
     ("P24723"))
    (PRKCQ "HGNC:9410" ("protein kinase C theta") NIL ("protein kinase C" "theta")
     NIL NIL ("8444877") ("Q04759"))
    (PTEN "HGNC:9588" ("phosphatase and tensin homolog") ("BZS" "MHAM") NIL
     ("MMAC1" "TEP1" "PTEN1") ("mutated in multiple advanced cancers 1")
     ("9090379") ("P60484"))
    (PTGS2 "HGNC:9605" ("prostaglandin-endoperoxide synthase 2") NIL
     ("prostaglandin-endoperoxide synthase 2 (prostaglandin G/H synthase and cyclooxygenase)")
     ("COX2") ("prostaglandin G/H synthase 2" "cyclooxygenase 2") ("1380156")
     ("P35354"))
    (PTK2 "HGNC:9611" ("protein tyrosine kinase 2") NIL
     ("PTK2 protein tyrosine kinase 2") ("FAK" "FADK" "FAK1" "PPP1R71")
     ("protein phosphatase 1" "regulatory subunit 71") ("8422239") ("Q05397"))
    (PTPN11 "HGNC:9644" ("protein tyrosine phosphatase" "non-receptor type 11")
     ("NS1") ("Noonan syndrome 1") ("BPTP3" "SH-PTP2" "SHP-2" "PTP2C" "SHP2") NIL
     ("7894486" "1280823") ("Q06124"))
    (PXN "HGNC:9718" ("paxillin") NIL NIL NIL NIL ("7534286") ("P49023"))
    (RAB11A "HGNC:9760" ("RAB11A" "member RAS oncogene family") NIL NIL ("YL8")
     NIL ("1704119" "9662449") ("P62491"))
    (RAB11B "HGNC:9761" ("RAB11B" "member RAS oncogene family") NIL NIL ("H-YPT3")
     NIL ("7811277") ("Q15907"))
    (RAB25 "HGNC:18238" ("RAB25" "member RAS oncogene family") NIL NIL ("CATX-8")
     NIL ("11697911") ("P57735"))
    (RAD50 "HGNC:9816" ("RAD50 double strand break repair protein") NIL
     ("RAD50 (S. cerevisiae) homolog" "RAD50 homolog (S. cerevisiae)"
      "RAD50 homolog" "double strand break repair protein")
     ("hRad50" "RAD50-2") NIL ("8756642" "9705271") ("Q92878"))
    (RAD51 "HGNC:9817" ("RAD51 recombinase") ("RAD51A" "RECA")
     ("RAD51 (S. cerevisiae) homolog (E coli RecA homolog)"
      "RAD51 homolog (RecA homolog" "E. coli) (S. cerevisiae)"
      "RAD51 homolog (S. cerevisiae)")
     ("HsRad51" "HsT16930" "BRCC5" "FANCR")
     ("BRCA1/BRCA2-containing complex" "subunit 5")
     ("8358431" "8479919" "26253028") ("Q06609"))
    (RAF1 "HGNC:9829" ("Raf-1 proto-oncogene" "serine/threonine kinase") NIL
     ("v-raf-1 murine leukemia viral oncogene homolog 1") ("Raf-1" "c-Raf" "CRAF")
     ("C-Raf proto-oncogene" "serine/threonine kinase") ("1611909") ("P04049"))
    (RB1 "HGNC:9884" ("RB transcriptional corepressor 1") ("OSRC")
     ("osteosarcoma" "retinoblastoma 1") ("RB" "PPP1R130")
     ("prepro-retinoblastoma-associated protein" "protein phosphatase 1"
      "regulatory subunit 130")
     ("1857421" "15057823") ("P06400"))
    (RBM15 "HGNC:14959" ("RNA binding motif protein 15") NIL NIL ("OTT" "OTT1")
     ("one twenty-two") ("11431691" "11344311") ("Q96T37"))
    (RELA "HGNC:9955" ("RELA proto-oncogene" "NF-kB subunit") ("NFKB3")
     ("nuclear factor of kappa light polypeptide gene enhancer in B-cells 3"
      "v-rel avian reticuloendotheliosis viral oncogene homolog A")
     ("p65") NIL ("2001591") ("Q04206"))
    (RHEB "HGNC:10011" ("Ras homolog enriched in brain") ("RHEB2")
     ("Ras homolog enriched in brain 2") NIL NIL ("8661031") ("Q15382"))
    (RICTOR "HGNC:28611" ("RPTOR independent companion of MTOR complex 2") NIL
     ("RPTOR independent companion of MTOR" "complex 2")
     ("MGC39830" "AVO3" "PIA" "KIAA1999")
     ("rapamycin-insensitive companion of mTOR" "pianissimo") ("12477932")
     ("Q6R327"))
    (ROCK1 "HGNC:10251" ("Rho associated coiled-coil containing protein kinase 1")
     NIL NIL ("p160ROCK") NIL ("8617235") ("Q13464"))
    (RPA2 "HGNC:10290" ("replication protein A2") NIL
     ("replication protein A2 (32kD)" "replication protein A2" "32kDa") NIL NIL
     ("8454588") ("P15927"))
    (RPS6 "HGNC:10429" ("ribosomal protein S6") NIL NIL ("S6")
     ("40S ribosomal protein S6" "phosphoprotein NP33") ("1577483") ("P62753"))
    (RPS6KA1 "HGNC:10430" ("ribosomal protein S6 kinase A1") NIL
     ("ribosomal protein S6 kinase" "90kD" "polypeptide 1")
     ("RSK" "RSK1" "HU-1" "p90Rsk") NIL ("8141249") ("Q15418"))
    (RPS6KA2 "HGNC:10431" ("ribosomal protein S6 kinase A2") NIL
     ("ribosomal protein S6 kinase" "90kD" "polypeptide 2") ("RSK" "RSK3" "HU-2")
     NIL ("8141249") ("Q15349"))
    (RPS6KA3 "HGNC:10432" ("ribosomal protein S6 kinase A3") ("MRX19" "CLS")
     ("ribosomal protein S6 kinase" "90kD" "polypeptide 3") ("RSK" "RSK2" "HU-3")
     NIL ("8141249" "11896450" "16879200") ("P51812"))
    (RPS6KB1 "HGNC:10436" ("ribosomal protein S6 kinase B1") ("STK14A")
     ("ribosomal protein S6 kinase" "70kD" "polypeptide 1")
     ("S6K1" "p70(S6K)-alpha" "PS6K") NIL ("1922062") ("P23443"))
    (RPTOR "HGNC:30287" ("regulatory associated protein of MTOR complex 1") NIL
     ("regulatory associated protein of MTOR" "complex 1")
     ("KOG1" "Mip1" "KIAA1303" "raptor") ("regulatory associated protein of mTOR")
     ("10718198" "12150926") ("Q8N122"))
    (SCD "HGNC:10571" ("stearoyl-CoA desaturase") ("SCDOS")
     ("stearoyl-CoA desaturase opposite strand"
      "stearoyl-CoA desaturase (delta-9-desaturase)")
     ("FADS5")
     ("acyl-CoA desaturase" "fatty acid desaturase" "delta-9-desaturase")
     ("7909540" "10229681") ("O00767"))
    (SDHA "HGNC:10680" ("succinate dehydrogenase complex flavoprotein subunit A")
     ("SDH2")
     ("succinate dehydrogenase complex" "subunit A" "flavoprotein (Fp)"
      "succinate dehydrogenase complex subunit A" "flavoprotein (Fp)")
     ("FP" "SDHF")
     ("succinate dehydrogenase [ubiquinone] flavoprotein subunit"
      "flavoprotein subunit of complex II")
     ("7798181") ("P31040"))
    (SERPINA2 "HGNC:8985" ("serpin family A member 2 (gene/pseudogene)")
     ("PIL" "SERPINA2P")
     ("serpin peptidase inhibitor" "clade A (alpha-1 antiproteinase"
      "antitrypsin)" "member 2" "serpin peptidase inhibitor"
      "clade A (alpha-1 antiproteinase" "antitrypsin)" "member 2" "pseudogene"
      "serpin peptidase inhibitor" "clade A (alpha-1 antiproteinase"
      "antitrypsin)" "member 2 (gene/pseudogene)")
     ("ATR" "ARGS") ("protease inhibitor 1 (alpha-1-antitrypsin)-like")
     ("15014966" "23826168" "24172014") ("P20848"))
    (SERPINE1 "HGNC:8583" ("serpin family E member 1") ("PLANH1" "PAI1")
     ("serine (or cysteine) proteinase inhibitor" "clade E (nexin"
      "plasminogen activator inhibitor type 1)" "member 1"
      "serpin peptidase inhibitor" "clade E (nexin"
      "plasminogen activator inhibitor type 1)" "member 1")
     ("PAI") ("plasminogen activator inhibitor" "type I")
     ("3097076" "2891140" "24172014") ("P05121"))
    (SHC1 "HGNC:10840" ("SHC adaptor protein 1") ("SHC")
     ("SHC (Src homology 2 domain-containing) transforming protein 1")
     ("p66" "ShcA") NIL ("1623525") ("P29353"))
    (SLC16A4 "HGNC:10925" ("solute carrier family 16 member 4") NIL
     ("solute carrier family 16 (monocarboxylic acid transporters)" "member 4"
      "solute carrier family 16" "member 4 (monocarboxylic acid transporter 5)"
      "solute carrier family 16" "member 4")
     ("MCT4" "MCT5") NIL ("9425115") ("O15374"))
    (SLC1A5 "HGNC:10943" ("solute carrier family 1 member 5") ("RDRC" "M7V1")
     ("solute carrier family 1 (neutral amino acid transporter)" "member 5")
     ("AAAT" "ASCT2") NIL ("8702519" "10051606") ("Q15758"))
    (SMAD1 "HGNC:6767" ("SMAD family member 1") ("MADH1")
     ("MAD" "mothers against decapentaplegic homolog 1 (Drosophila)" "SMAD"
      "mothers against DPP homolog 1 (Drosophila)")
     ("MADR1" "JV4-1") NIL ("8653785" "8673135") ("Q15797"))
    (SMAD3 "HGNC:6769" ("SMAD family member 3") ("MADH3")
     ("MAD" "mothers against decapentaplegic homolog 3 (Drosophila)" "SMAD"
      "mothers against DPP homolog 3 (Drosophila)")
     ("JV15-2" "HsT17436") NIL ("8774881" "8673135") ("P84022"))
    (SMAD4 "HGNC:6770" ("SMAD family member 4") ("MADH4")
     ("MAD" "mothers against decapentaplegic homolog 4 (Drosophila)" "SMAD"
      "mothers against DPP homolog 4 (Drosophila)")
     ("DPC4") NIL ("8553070" "8774881") ("Q13485"))
    (SNAI1 "HGNC:11128" ("snail family transcriptional repressor 1") NIL
     ("snail 1 (drosophila homolog)" "zinc finger protein"
      "snail homolog 1 (Drosophila)" "snail family zinc finger 1")
     ("SNA" "SLUGH2" "SNAH" "SNAIL1" "SNAIL") NIL ("10585766") ("O95863"))
    (SOD1 "HGNC:11179" ("superoxide dismutase 1") ("ALS" "ALS1")
     ("amyotrophic lateral sclerosis 1 (adult)" "superoxide dismutase 1"
      "soluble")
     ("IPOA") NIL ("8446170") ("P00441"))
    (SOD2 "HGNC:11180" ("superoxide dismutase 2") NIL
     ("superoxide dismutase 2" "mitochondrial") NIL NIL NIL ("P04179"))
    (SOX2 "HGNC:11195" ("SRY-box 2") NIL
     ("SRY (sex determining region Y)-box 2" "SRY box 2") NIL NIL ("7849401")
     ("P48431"))
    (SRC "HGNC:11283" ("SRC proto-oncogene" "non-receptor tyrosine kinase")
     ("SRC1") ("v-src avian sarcoma (Schmidt-Ruppin A-2) viral oncogene homolog")
     ("ASV" "c-src") NIL ("2582238") ("P12931"))
    (SRSF1 "HGNC:10780" ("serine and arginine rich splicing factor 1") ("SFRS1")
     ("splicing factor" "arginine/serine-rich 1"
      "serine/arginine-rich splicing factor 1")
     ("ASF" "SF2" "SRp30a" "SF2p33" "MGC5228")
     ("splicing factor 2" "pre-mRNA-splicing factor SF2" "P33 subunit"
      "alternate splicing factor" "SR splicing factor 1")
     ("8530103" "20516191") ("Q07955"))
    (STAT3 "HGNC:11364" ("signal transducer and activator of transcription 3") NIL
     ("signal transducer and activator of transcription 3 (acute-phase response factor)")
     ("APRF") NIL ("7512451") ("P40763"))
    (STAT5A "HGNC:11366" ("signal transducer and activator of transcription 5A")
     ("STAT5") NIL ("MGF") NIL ("7719937" "8631883") ("P42229"))
    (STMN1 "HGNC:6510" ("stathmin 1") ("LAP18" "C1orf215")
     ("chromosome 1 open reading frame 215" "stathmin 1/oncoprotein 18")
     ("SMN" "OP18" "PR22" "PP19" "PP17" "Lag" "FLJ32206") ("oncoprotein 18")
     ("2917975") ("P16949"))
    (SYK "HGNC:11491" ("spleen associated tyrosine kinase") NIL
     ("spleen tyrosine kinase") NIL NIL ("8082894" "1423621") ("P43405"))
    (TFAM "HGNC:11741" ("transcription factor A" "mitochondrial")
     ("TCF6" "TCF6L2") NIL NIL NIL ("7789991") ("Q00059"))
    (TFRC "HGNC:11763" ("transferrin receptor") NIL
     ("transferrin receptor (p90" "CD71)") ("CD71" "TFR1" "p90") NIL NIL
     ("P02786"))
    (TGM2 "HGNC:11778" ("transglutaminase 2") NIL
     ("transglutaminase 2 (C polypeptide"
      "protein-glutamine-gamma-glutamyltransferase)")
     ("TGC") ("C polypeptide" "protein-glutamine-gamma-glutamyltransferase")
     ("7912692" "11390390") ("P21980"))
    (TIGAR "HGNC:1185" ("TP53 induced glycolysis regulatory phosphatase")
     ("C12orf5") ("chromosome 12 open reading frame 5") NIL
     ("TP53-induced glycolysis and apoptosis regulator")
     ("18945750" "19713938" "2442317") ("Q9NQ88"))
    (TP53 "HGNC:11998" ("tumor protein p53") NIL NIL ("p53" "LFS1")
     ("Li-Fraumeni syndrome") ("6396087" "3456488" "2047879") ("P04637"))
    (TP53BP1 "HGNC:11999" ("tumor protein p53 binding protein 1") NIL
     ("tumor protein p53-binding protein" "1") ("53BP1" "p202" "TDRD30") NIL
     ("8016121" "9748285") ("Q12888"))
    (TRIM25 "HGNC:12932" ("tripartite motif containing 25") ("ZNF147")
     ("zinc finger protein 147 (estrogen-responsive finger protein)"
      "tripartite motif-containing 25")
     ("EFP" "RNF147") NIL ("7789997") ("Q14258"))
    (TSC1 "HGNC:12362" ("tuberous sclerosis 1") ("TSC") NIL
     ("KIAA0243" "LAM" "hamartin") NIL ("9242607" "10806479") ("Q92574"))
    (TSC2 "HGNC:12363" ("tuberous sclerosis 2") ("TSC4") NIL
     ("tuberin" "LAM" "PPP1R160")
     ("protein phosphatase 1" "regulatory subunit 160") ("1303246" "7558029")
     ("P49815"))
    (TUBA1A "HGNC:20766" ("tubulin alpha 1a") NIL NIL
     ("TUBA3" "B-ALPHA-1" "FLJ25113") ("tubulin" "alpha" "brain-specific")
     ("11504633" "3839072") ("Q71U36"))
    (TUFM "HGNC:12420" ("Tu translation elongation factor" "mitochondrial") NIL
     NIL ("EFTu" "EF-TuMT" "EFTU") NIL ("9332382" "9545647") ("P49411"))
    (TWIST2 "HGNC:20670" ("twist family bHLH transcription factor 2") NIL
     ("twist homolog 2 (Drosophila)"
      "twist basic helix-loop-helix transcription factor 2")
     ("DERMO1" "Dermo-1" "bHLHa39") NIL ("7589808" "9061034") ("Q8WVJ9"))
    (TYRO3 "HGNC:12446" ("TYRO3 protein tyrosine kinase") ("RSE") NIL
     ("Dtk" "Brt" "Tif" "Sky" "Etk-2" "Rek") NIL ("7851890") ("Q06418"))
    (UBAC1 "HGNC:30221" ("UBA domain containing 1") ("UBADC1")
     ("ubiquitin associated domain containing 1") ("GBDR1" "KPC2")
     ("Kip1 ubiquitination-promoting complex subunit 2")
     ("10857748" "8619474" "15531880") ("Q9BSL1"))
    (UGT1A1 "HGNC:12530" ("UDP glucuronosyltransferase family 1 member A1")
     ("UGT1" "GNT1") ("UDP glycosyltransferase 1 family" "polypeptide A1")
     ("UGT1A") NIL ("9295054" "9535849") ("P22309"))
    (ULK1 "HGNC:12558" ("unc-51 like autophagy activating kinase 1") NIL
     ("unc-51 (C. elegans)-like kinase 1" "unc-51-like kinase 1 (C. elegans)")
     ("ATG1" "ATG1A") ("ATG1 autophagy related 1 homolog (S. cerevisiae)")
     ("9693035") ("O75385"))
    (VASP "HGNC:12652" ("vasodilator-stimulated phosphoprotein") NIL NIL NIL NIL
     ("8812448") ("P50552"))
    (VCAM1 "HGNC:12663" ("vascular cell adhesion molecule 1") NIL NIL ("CD106")
     NIL NIL ("P19320"))
    (VDAC1 "HGNC:12669" ("voltage dependent anion channel 1") NIL NIL
     ("MGC111064" "PORIN") NIL ("7517385") ("P21796"))
    (VIM "HGNC:12692" ("vimentin") NIL NIL NIL NIL NIL ("P08670"))
    (VTCN1 "HGNC:28873" ("V-set domain containing T cell activation inhibitor 1")
     NIL NIL ("B7-H4" "FLJ22418" "B7S1" "B7X" "B7H4")
     ("B7 family member" "H4" "B7 superfamily member 1") ("12818165" "12818166")
     ("Q7Z7D3"))
    (WEE1 "HGNC:12761" ("WEE1 G2 checkpoint kinase") NIL
     ("wee1+ (S. pombe) homolog" "WEE1 homolog (S. pombe)") ("WEE1A") NIL
     ("1840647") ("P30291"))
    (WIPI1 "HGNC:25471" ("WD repeat domain" "phosphoinositide interacting 1") NIL
     NIL ("FLJ10055" "WIPI49" "ATG18" "ATG18A") NIL ("15020712" "15602573")
     ("Q5MNZ9"))
    (WIPI2 "HGNC:32225" ("WD repeat domain" "phosphoinositide interacting 2") NIL
     NIL
     ("ATG21" "CGI-50" "FLJ12979" "FLJ14217" "FLJ42984" "DKFZP434J154"
      "DKFZp686P02188" "ATG18B")
     NIL ("15602573") ("Q9Y4P8"))
    (WWTR1 "HGNC:24042" ("WW domain containing transcription regulator 1") NIL NIL
     ("TAZ" "DKFZp586I1419") NIL ("11118213" "15096513") ("Q9GZV5"))
    (XBP1 "HGNC:12801" ("X-box binding protein 1") ("XBP2") NIL NIL NIL
     ("1718857" "2196176") ("P17861"))
    (XPA "HGNC:12814" ("XPA" "DNA damage recognition and repair factor") NIL
     ("xeroderma pigmentosum" "complementation group A") ("XPAC" "XP1") NIL NIL
     ("P23025"))
    (XRCC1 "HGNC:12828" ("X-ray repair cross complementing 1") ("RCC")
     ("X-ray repair complementing defective repair in Chinese hamster cells 1")
     NIL NIL ("2247054") ("P18887"))
    (YAP1 "HGNC:16262" ("Yes associated protein 1") NIL
     ("Yes-associated protein 1" "65kDa") ("YAP65") NIL ("7782338") ("P46937"))
    (YBX1 "HGNC:8014" ("Y-box binding protein 1") ("NSEP1")
     ("nuclease sensitive element binding protein 1")
     ("YB-1" "YB1" "DBPB" "NSEP-1" "MDR-NF1" "BP-8" "CSDB" "CSDA2") NIL
     ("1891370" "3174636") ("P67809"))
    (YES1 "HGNC:12841" ("YES proto-oncogene 1" "Src family tyrosine kinase") NIL
     ("v-yes-1 Yamaguchi sarcoma viral oncogene homolog 1")
     ("Yes" "c-yes" "HsT441") NIL ("2983418") ("P07947"))
    (YWHAB "HGNC:12849"
     ("tyrosine 3-monooxygenase/tryptophan 5-monooxygenase activation protein beta")
     ("YWHAA")
     ("tyrosine 3-monooxygenase/tryptophan 5-monooxygenase activation protein"
      "alpha polypeptide"
      "tyrosine 3-monooxygenase/tryptophan 5-monooxygenase activation protein"
      "beta polypeptide")
     NIL ("14-3-3 beta" "14-3-3 alpha") ("8617504" "7890696") ("P31946"))
    (YWHAE "HGNC:12851"
     ("tyrosine 3-monooxygenase/tryptophan 5-monooxygenase activation protein epsilon")
     NIL
     ("tyrosine 3-monooxygenase/tryptophan 5-monooxygenase activation protein"
      "epsilon polypeptide")
     ("FLJ45465") ("14-3-3 epsilon") ("9371399") ("P62258"))
    (YWHAZ "HGNC:12855"
     ("tyrosine 3-monooxygenase/tryptophan 5-monooxygenase activation protein zeta")
     ("YWHAD")
     ("tyrosine 3-monooxygenase/tryptophan 5-monooxygenase activation protein"
      "delta polypeptide"
      "tyrosine 3-monooxygenase/tryptophan 5-monooxygenase activation protein"
      "zeta polypeptide")
     ("KCIP-1" "14-3-3-zeta") ("14-3-3 zeta" "14-3-3 delta") ("8617504" "7890696")
     ("P63104"))
    (ZAP70 "HGNC:12858"
     ("zeta chain of T cell receptor associated protein kinase 70") ("SRK")
     ("zeta-chain (TCR) associated protein kinase (70 kD)"
      "zeta-chain (TCR) associated protein kinase 70kDa"
      "zeta chain of T cell receptor associated protein kinase 70kDa")
     ("ZAP-70" "STD") ("tyrosine-protein kinase ZAP-70") ("1423621") ("P43403"))))
