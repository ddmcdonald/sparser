  1 ;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
  2 ;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
  3 ;;;
  4 ;;;    File: "UCD-proteins2"
  5 ;;;  Module: "grammar/model/sl/biology/
  6 ;;; version: August 2015
  7 
  8 ;; Definitions of proteins from the MITRE June test set, initially determined by the UCD tagging pipeline
  9 ;; Refined by merging with UniProt-based definitions August 2015
 10 

(define-protein "4EBP1_HUMAN"
 ("PR:Q13541"
  "Eukaryotic translation initiation factor 4E-binding protein 1"
  "4E-BP1" "eIF4E-binding protein 1"
  "Phosphorylated heat- and acid-stable protein regulated by insulin 1"
  "PHAS-I"))


(define-protein "4F2_HUMAN" ("4F2hc"))

(define-protein "AATF_HUMAN"
 ("PR:Q9NY61" "Protein AATF"
  "Apoptosis-antagonizing transcription factor"
  "Rb-binding protein Che-1" "DEDs"))

(define-protein "ABCBB_HUMAN"
 ("PR:O95342" "Bile salt export pump"
  "ATP-binding cassette sub-family B member 11"))

(define-protein "ACES_HUMAN"
 ("PR:P22303" "Acetylcholinesterase" "AChE" "AChEs"))

(define-protein "ACE_HUMAN"
 ("PR:P12821" "Angiotensin-converting enzyme"
  "Dipeptidyl carboxypeptidase I" "Kininase II" "ACE" "PR:000022052"))

(define-protein "ADA11_HUMAN"
 ("PR:O75078"
  "Disintegrin and metalloproteinase domain-containing protein 11"
  "ADAM 11"
  "Metalloproteinase-like, disintegrin-like, and cysteine-rich protein"
  "MDC"))

(define-protein "ADAM9_HUMAN"
 ("PR:Q13443"
  "Disintegrin and metalloproteinase domain-containing protein 9"
  "ADAM 9" "Cellular disintegrin-related protein" "Meltrin-gamma"
  "Metalloprotease/disintegrin/cysteine-rich protein 9"
  "Myeloma cell metalloproteinase" "ADAMs"))

(define-protein "ADML_HUMAN" ("PR:P35318" "ADM"))

(define-protein "AGO2_HUMAN"
 ("PR:Q9UKV8" "Protein argonaute-2" "Argonaute2" "hAgo2"
  "Argonaute RISC catalytic component 2"
  "Eukaryotic translation initiation factor 2C 2" "eIF-2C 2"
  "eIF2C 2" "PAZ Piwi domain protein" "PPD" "Protein slicer" "Ago2"
  "PR:000006968"))

(define-protein "AGRIN_HUMAN" ("PR:O00468" "agrin"))

(define-protein "AHRR_HUMAN"
 ("PR:A9YTQ3" "Aryl hydrocarbon receptor repressor" "AhR repressor"
  "Class E basic helix-loop-helix protein 77" "bHLHe77" "AhRR"))

(define-protein "AHR_HUMAN"
 ("PR:P35869" "Aryl hydrocarbon receptor" "Ah receptor"
  "Class E basic helix-loop-helix protein 76" "bHLHe76" "AhR"))

(define-protein "AK17A_HUMAN"
 ("PR:Q02040" "A-kinase anchor protein 17A" "AKAP-17A" "721P"
  "B-lymphocyte antigen" "Protein XE7"
  "Protein kinase A-anchoring protein 17A" "PRKA17A"
  "Splicing factor, arginine/serine-rich 17A"))

(define-protein "AL3A1_HUMAN"
 ("PR:P30838" "Aldehyde dehydrogenase, dimeric NADP-preferring"
  "ALDHIII" "Aldehyde dehydrogenase 3"
  "Aldehyde dehydrogenase family 3 member A1" "PR:E1C078"))

(define-protein "ALDR_HUMAN"
 ("PR:P15121" "AR" "Aldehyde reductase"
  "Aldo-keto reductase family 1 member B1" "aldose reductase"))

(define-protein "ALK_HUMAN"
 ("PR:Q9UM73" "ALK tyrosine kinase receptor"
  "Anaplastic lymphoma kinase"))

(define-protein "ALPK3_HUMAN"
 ("PR:Q96L96" "Alpha-protein kinase 3" "Muscle alpha-protein kinase"
  "Mak" "PR:000023146"))

(define-protein "AMPH_HUMAN" ("PR:P49418" "amphiphysin"))

(define-protein "ANF_HUMAN"
 ("PR:P01160" "Natriuretic peptides A" "CDD-ANF" "Cardiodilatin"
  "CDD" "Cardiodilatin-related peptide" "CDP" "Prepronatriodilatin"
  "PNDs"))

(define-protein "ANGT_HUMAN"
 ("PR:P01019" "Angiotensinogen" "Serpin A8" "Ang"))

(define-protein "ANK1_HUMAN"
 ("PR:P16157" "Ankyrin-1" "ANK-1" "Ankyrin-R" "Erythrocyte ankyrin"
  "ankyrin"))

(define-protein "ANKR1_HUMAN"
 ("PR:Q15327" "Ankyrin repeat domain-containing protein 1"
  "Cardiac ankyrin repeat protein"
  "Cytokine-inducible gene C-193 protein"
  "Cytokine-inducible nuclear protein"))

(define-protein "ANKR2_HUMAN"
 ("PR:Q9GZV1" "Ankyrin repeat domain-containing protein 2"
  "Skeletal muscle ankyrin repeat protein" "hArpp" "Arpp"
  "PR:000004044"))

(define-protein "APEL_HUMAN"
 ("PR:Q9ULZ1" "APJ endogenous ligand" "Apelin"))

(define-protein "APOA1_HUMAN"
 ("PR:P02647" "Apolipoprotein A-I" "Apo-AI" "ApoA-I"
  "Apolipoprotein A1" "ApoA"))

(define-protein "APOE_HUMAN"
 ("PR:P02649" "Apolipoprotein E" "Apo-E" "Apo"))

(define-protein "APR_HUMAN"
 ("PR:Q13794" "Phorbol-12-myristate-13-acetate-induced protein 1"
  "PMA-induced protein 1" "Immediate-early-response protein APR"
  "Protein Noxa" "Noxa" "PR:Q0GKC8"))

(define-protein "ARC_HUMAN"
 ("PR:Q7LC44" "Activity-regulated cytoskeleton-associated protein"
  "ARC/ARG3.1" "Activity-regulated gene 3.1 protein homolog" "Arg3.1"
  "Arg3"))

(define-protein "ARF_HUMAN"
 ("Tumor suppressor ARF" "Alternative reading frame" "ARF"
  "Cyclin-dependent kinase inhibitor 2A" "p14ARF"))

(define-protein "ARI3A_HUMAN"
 ("PR:Q99856" "AT-rich interactive domain-containing protein 3A"
  "ARID domain-containing protein 3A"
  "B-cell regulator of IgH transcription"
  "Dead ringer-like protein 1" "E2F-binding protein 1" "Bright"))

(define-protein "ARNT_HUMAN"
 ("PR:P27540" "Aryl hydrocarbon receptor nuclear translocator"
  "ARNT protein" "Class E basic helix-loop-helix protein 2" "bHLHe2"
  "Dioxin receptor, nuclear translocator"
  "Hypoxia-inducible factor 1-beta" "HIF-1-beta" "HIF1-beta" "aryl"))

(define-protein "ARPIN_HUMAN"
 ("PR:Q7Z6K5" "Arp2/3 inhibition protein" "Arpin"))

(define-protein "ASC_HUMAN"
 ("PR:Q9ULZ3"
  "Apoptosis-associated speck-like protein containing a CARD" "hASC"
  "Caspase recruitment domain-containing protein 5"
  "PYD and CARD domain-containing protein"
  "Target of methylation-induced silencing 1" "ASCs"))

(define-protein "AT12A_HUMAN"
 ("PR:P54707" "Potassium-transporting ATPase alpha chain 2"
  "Non-gastric H(+)/K(+) ATPase subunit alpha" "Proton pump"))

(define-protein "AT1A1_HUMAN"
 ("PR:P05023" "Sodium/potassium-transporting ATPase subunit alpha-1"
  "Na(+)/K(+) ATPase alpha-1 subunit" "Sodium pump subunit alpha-1"
  "Na"))

(define-protein "ATM_HUMAN"
 ("PR:Q13315" "Serine-protein kinase ATM"
  "Ataxia telangiectasia mutated" "A-T mutated" "ataxia"))

(define-protein "ATN1_HUMAN"
 ("PR:P54259" "Atrophin-1"
  "Dentatorubral-pallidoluysian atrophy protein" "atrophin"))

(define-protein "ATP5L_HUMAN"
 ("PR:O75964" "ATP synthase subunit g, mitochondrial"
  "ATPase subunit g" "ATPase" "PR:Q8FXM4"))

(define-protein "AURKA_HUMAN"
 ("PR:O14965" "Aurora kinase A" "Aurora 2"
  "Aurora/IPL1-related kinase 1" "ARK-1" "Aurora-related kinase 1"
  "hARK1" "Breast tumor-amplified kinase"
  "Serine/threonine-protein kinase 15"
  "Serine/threonine-protein kinase 6"
  "Serine/threonine-protein kinase aurora-A"))

(define-protein "AURKB_HUMAN"
 ("PR:Q96GD4" "Aurora kinase B" "Aurora 1"
  "Aurora- and IPL1-like midbody-associated protein 1" "AIM-1"
  "Aurora/IPL1-related kinase 2" "ARK-2" "Aurora-related kinase 2"
  "STK-1" "Serine/threonine-protein kinase 12"
  "Serine/threonine-protein kinase 5"
  "Serine/threonine-protein kinase aurora-B"))

(define-protein "B3AT_HUMAN"
 ("PR:P02730" "Band 3 anion transport protein"
  "Anion exchange protein 1" "AE 1" "Anion exchanger 1"
  "Solute carrier family 4 member 1"))

(define-protein "BAF_HUMAN"
 ("PR:O75531" "Barrier-to-autointegration factor"
  "Breakpoint cluster region protein 1" "BAFs" "Barrier"))

(define-protein "BAIP2_HUMAN"
 ("PR:Q9UQB8"
  "Brain-specific angiogenesis inhibitor 1-associated protein 2"
  "BAI-associated protein 2" "BAI1-associated protein 2"
  "Protein BAP2" "Fas ligand-associated factor 3" "FLAF3"
  "Insulin receptor substrate p53/p58" "IRS-58" "IRSp53/58"
  "Insulin receptor substrate protein of 53 kDa"
  "Insulin receptor substrate p53" "IRSp53"))

(define-protein "BAKOR_HUMAN"
 ("PR:Q6ZNE5" "Beclin 1-associated autophagy-related key regulator"
  "Autophagy-related protein 14-like protein" "Atg14L" "Barkor"))

(define-protein "BECN1_HUMAN"
 ("PR:Q14457" "Beclin-1"
  "Coiled-coil myosin-like BCL2-interacting protein" "Protein GT197"
  "beclin"))

(define-protein "BEX2_HUMAN"
 ("PR:Q9BXY8" "Protein BEX2" "Brain-expressed X-linked protein 2"
  "hBex2"))

(define-protein "BL1S2_HUMAN"
 ("PR:Q6QNY1"
  "Biogenesis of lysosome-related organelles complex 1 subunit 2"
  "BLOC-1 subunit 2" "Centrosome-associated protein"))

(define-protein "BOREA_HUMAN"
 ("PR:Q53HL2" "Cell division cycle-associated protein 8" "Dasra-B"
  "hDasra-B" "Pluripotent embryonic stem cell-related gene 3 protein"
  "Borealin" "PR:P86347" "Borealins"))

(define-protein "BPNT1_HUMAN"
 ("PR:O95861" "3'(2'),5'-bisphosphate nucleotidase 1"
  "Bisphosphate 3'-nucleotidase 1" "PAP-inositol 1,4-phosphatase"
  "PIP" "PIPs"))

(define-protein "BTG3_HUMAN"
 ("PR:Q14201" "Protein BTG3"
  "Abundant in neuroepithelium area protein" "BTG family member 3"
  "Protein Tob5" "ANAs"))

(define-protein "C1GLC_HUMAN"
 ("PR:Q96EU7" "C1GALT1-specific chaperone 1" "C38H2-like protein 1"
  "C38H2-L1" "Core 1 beta1,3-galactosyltransferase 2" "C1Gal-T2"
  "C1GalT2" "Core 1 beta3-Gal-T2"
  "Core 1 beta3-galactosyltransferase-specific molecular chaperone"
  "C1Gal"))

(define-protein "C1QBP_HUMAN"
 ("PR:Q07021"
  "Complement component 1 Q subcomponent-binding protein, mitochondrial"
  "ASF/SF2-associated protein p32" "Glycoprotein gC1qBP"
  "Hyaluronan-binding protein 1" "Mitochondrial matrix protein p32"
  "gC1q-R protein" "p33" "C1qBP"))

(define-protein "C2D1A_HUMAN"
 ("PR:Q6P1N0" "Coiled-coil and C2 domain-containing protein 1A"
  "Akt kinase-interacting protein 1"
  "Five prime repressor element under dual repression-binding protein 1"
  "FRE under dual repression-binding protein 1" "Freud-1"
  "Putative NF-kappa-B-activating protein 023N"))

(define-protein "C4BPA_HUMAN"
 ("PR:P04003" "C4b-binding protein alpha chain"
  "Proline-rich protein" "PRP" "C4bp"))

(define-protein "CALC_HUMAN" ("Calcitonin" "CCPs"))

(define-protein "CALD1_HUMAN"
 ("CDM" "caldesmon" "PR:000004974" "PR:P12957" "PR:Q05682"))

(define-protein "CALX_HUMAN"
 ("PR:P27824" "IP90"
  "Major histocompatibility complex class I antigen-binding protein p88"
  "p90" "calnexin"))

(define-protein "CAMP_HUMAN"
 ("PR:P49913" "Cathelicidin antimicrobial peptide"
  "18 kDa cationic antimicrobial protein" "CAP-18" "hCAP-18" "hCAP"))

(define-protein "CAN3_HUMAN"
 ("PR:P20807" "Calpain-3" "Calcium-activated neutral proteinase 3"
  "CANP 3" "Calpain L3" "Calpain p94"
  "Muscle-specific calcium-activated neutral protease 3"
  "New calpain 1" "nCL-1"))

(define-protein "CAP7_HUMAN"
 ("PR:P20160" "Azurocidin" "Cationic antimicrobial protein CAP37"
  "Heparin-binding protein" "HBP" "heparin"))

(define-protein "CARM1_HUMAN"
 ("PR:Q86X55" "Histone-arginine methyltransferase CARM1"
  "Coactivator-associated arginine methyltransferase 1"
  "Protein arginine N-methyltransferase 4"))

(define-protein "CASL_HUMAN"
 ("PR:Q14511" "Enhancer of filamentation 1" "hEF1"
  "CRK-associated substrate-related protein" "CAS-L"
  "Cas scaffolding protein family member 2"
  "Neural precursor cell expressed developmentally down-regulated protein 9"
  "NEDD-9" "Renal carcinoma antigen NY-REN-12" "p105" "CasL"
  "PR:000012799"))

(define-protein "CASP2_HUMAN"
 ("PR:P42575" "Caspase-2" "CASP-2"
  "Neural precursor cell expressed developmentally down-regulated protein 2"
  "NEDD-2" "Protease ICH-1" "PR:F1NL59"))

(define-protein "CASP3_HUMAN"
 ("PR:P42574" "Caspase-3" "CASP-3" "Cysteine protease CPP32" "CPP-32"
  "Protein Yama" "SREBP cleavage activity 1" "SCA-1" "apopain"
  "PR:000002312"))

(define-protein "CASP6_HUMAN"
 ("PR:P55212" "Caspase-6" "CASP-6" "Apoptotic protease Mch-2"))

(define-protein "CASP8_HUMAN"
 ("PR:Q14790" "Caspase-8" "CASP-8" "Apoptotic cysteine protease"
  "Apoptotic protease Mch-5" "CAP4"
  "FADD-homologous ICE/ced-3-like protease" "FADD-like ICE" "FLICE"
  "ICE-like apoptotic protease 5" "MORT1-associated ced-3 homolog"
  "MACH"))

(define-protein "CASP9_HUMAN"
 ("PR:P55211" "Caspase-9" "CASP-9" "Apoptotic protease Mch-6"
  "Apoptotic protease-activating factor 3" "APAF-3"
  "ICE-like apoptotic protease 6" "ICE-LAP6"))

(define-protein "CASQ1_HUMAN"
 ("PR:P31415" "Calsequestrin-1" "Calmitine"
  "Calsequestrin, skeletal muscle isoform" "calsequestrin"))

(define-protein "CATA_HUMAN"
 ("catalase" "PR:P00432" "PR:000005061" "GO:0004096" "PR:P04762"
  "PR:P17336" "PR:P24270" "PR:F1NGJ7" "PR:P04040" "PR:Q9PT92"
  "PR:P55306"))

(define-protein "CATB_HUMAN"
 ("PR:P07858" "Cathepsin B" "APP secretase" "APPS" "Cathepsin B1"))

(define-protein "CATD_HUMAN" ("PR:P07339" "Cathepsin D"))

(define-protein "CATG_HUMAN"
 ("PR:P08311" "Cathepsin G" "CG" "cathepsin"))

(define-protein "CATL1_HUMAN"
 ("PR:P07711" "Cathepsin L1" "Cathepsin L" "Major excreted protein"
  "MEP"))

(define-protein "CAV1_HUMAN" ("PR:Q03135" "Caveolin-1"))

(define-protein "CAV3_HUMAN"
 ("PR:P56539" "Caveolin-3" "M-caveolin" "caveolin" "PR:A0M8V6"))

(define-protein "CBPD_HUMAN"
 ("PR:O75976" "Carboxypeptidase D" "Metallocarboxypeptidase D"
  "gp180" "CPDs"))

(define-protein "CBP_HUMAN" ("PR:Q92793" "CREB-binding protein"))

(define-protein "CCL17_HUMAN"
 ("PR:Q92583" "C-C motif chemokine 17" "CC chemokine TARC"
  "Small-inducible cytokine A17"
  "Thymus and activation-regulated chemokine"))

(define-protein "CCL22_HUMAN"
 ("PR:O00626" "C-C motif chemokine 22" "CC chemokine STCP-1"
  "MDC(1-69)" "Macrophage-derived chemokine"
  "Small-inducible cytokine A22"
  "Stimulated T-cell chemotactic protein 1" "MDCs"))

(define-protein "CCL28_HUMAN"
 ("PR:Q9NRJ3" "C-C motif chemokine 28"
  "Mucosae-associated epithelial chemokine" "MEC" "Protein CCK1"
  "Small-inducible cytokine A28" "MECs"))

(define-protein "CCL2_HUMAN"
 ("PR:P13500" "C-C motif chemokine 2" "HC11"
  "Monocyte chemoattractant protein 1"
  "Monocyte chemotactic and activating factor" "MCAF"
  "Monocyte chemotactic protein 1" "MCP-1"
  "Monocyte secretory protein JE" "Small-inducible cytokine A2"))

(define-protein "CCNA1_HUMAN" ("PR:P78396" "Cyclin-A1"))

(define-protein "CCNA2_HUMAN" ("PR:P20248" "Cyclin-A2" "Cyclin-A"))

(define-protein "CD1A_HUMAN"
 ("PR:P06126" "T-cell surface glycoprotein CD1a"
  "T-cell surface antigen T6/Leu-6" "hTa1 thymocyte antigen" "CD1a"))

(define-protein "CD1B_HUMAN"
 ("PR:P29016" "T-cell surface glycoprotein CD1b" "CD1b"))

(define-protein "CD1C_HUMAN"
 ("PR:P29017" "T-cell surface glycoprotein CD1c" "CD1c"))

(define-protein "CD1D_HUMAN"
 ("PR:P15813" "Antigen-presenting glycoprotein CD1d" "R3G1" "CD1d"))

(define-protein "CD276_HUMAN"
 ("PR:Q5ZPR3" "CD276 antigen" "4Ig-B7-H3" "B7 homolog 3" "B7-H3"
  "Costimulatory molecule"))

(define-protein "CD2A2_HUMAN" ("p14ARF"))


(define-protein "CD47_HUMAN"
 ("PR:Q08722" "Leukocyte surface antigen CD47"
  "Antigenic surface determinant protein OA3"
  "Integrin-associated protein" "IAP" "Protein MER6" "IAPs"))

(define-protein "CDD_HUMAN"
 ("PR:P32320" "Cytidine deaminase" "Cytidine aminohydrolase"))

(define-protein "CDK7_HUMAN"
 ("PR:P50613" "Cyclin-dependent kinase 7" "39 kDa protein kinase"
  "p39 Mo15" "CDK-activating kinase 1"
  "Cell division protein kinase 7"
  "Serine/threonine-protein kinase 1"
  "TFIIH basal transcription factor complex kinase subunit" "CAKs"))

(define-protein "CDN1C_HUMAN"
 ("PR:P49918" "Cyclin-dependent kinase inhibitor 1C"
  "Cyclin-dependent kinase inhibitor p57" "p57Kip2"))

(define-protein "CDN2B_HUMAN"
 ("PR:P42772" "Cyclin-dependent kinase 4 inhibitor B"
  "Multiple tumor suppressor 2" "MTS-2" "p14-INK4b" "p15-INK4b"
  "p15INK4B"))

(define-protein "CE290_HUMAN"
 ("PR:O15078" "Centrosomal protein of 290 kDa"
  "Bardet-Biedl syndrome 14 protein" "Cancer/testis antigen 87"
  "CT87" "Nephrocystin-6" "Tumor antigen se2-2" "Cep290"))

(define-protein "CEAM1_HUMAN"
 ("PR:P13688"
  "Carcinoembryonic antigen-related cell adhesion molecule 1"
  "Biliary glycoprotein 1" "BGP-1" "CD66a"))

(define-protein "CEAM8_HUMAN"
 ("PR:P31997"
  "Carcinoembryonic antigen-related cell adhesion molecule 8"
  "CD67 antigen" "Carcinoembryonic antigen CGM6"
  "Non-specific cross-reacting antigen NCA-95" "CD66b"))

(define-protein "CEL_HUMAN"
 ("PR:P19835" "Bile salt-activated lipase" "BAL"
  "Bile salt-stimulated lipase" "BSSL" "Bucelipase"
  "Carboxyl ester lipase" "Cholesterol esterase"
  "Pancreatic lysophospholipase" "Sterol esterase" "PR:Q9W145"))

(define-protein "CENPE_HUMAN"
 ("PR:Q02224" "Centromere-associated protein E"
  "Centromere protein E" "CENP-E" "Kinesin-related protein CENPE"))

(define-protein "CERU_HUMAN"
 ("Ferroxidase" "ceruloplasmin" "PR:000005794" "PR:P00450"
  "PR:Q6P3G1" "PR:P13635" "PR:Q61147"))

(define-protein "CETP_HUMAN"
 ("PR:P11597" "Cholesteryl ester transfer protein"
  "Lipid transfer protein I" "Cholesteryl"))

(define-protein "CFAD_HUMAN"
 ("PR:P00746" "Complement factor D" "Adipsin"
  "C3 convertase activator" "Properdin factor D" "PFDs"))

(define-protein "CFTR_HUMAN"
 ("PR:P13569" "Cystic fibrosis transmembrane conductance regulator"
  "CFTR" "ATP-binding cassette sub-family C member 7"
  "Channel conductance-controlling ATPase"
  "cAMP-dependent chloride channel"))

(define-protein "CHIP_HUMAN"
 ("PR:Q9UNE7" "E3 ubiquitin-protein ligase CHIP" "Antigen NY-CO-7"
  "CLL-associated antigen KW-8"
  "Carboxy terminus of Hsp70-interacting protein"
  "STIP1 homology and U box-containing protein 1"))

(define-protein "CHK2_HUMAN"
 ("PR:O96017" "Serine/threonine-protein kinase Chk2"
  "CHK2 checkpoint homolog" "Cds1 homolog" "Hucds1" "hCds1"
  "Checkpoint kinase 2" "Chk2"))

(define-protein "CHKA_HUMAN"
 ("PR:P35790" "Choline kinase alpha" "CK" "CHETK-alpha"
  "Ethanolamine kinase" "EK" "CKIs"))

(define-protein "CHLE_HUMAN"
 ("Acylcholine acylhydrolase" "Butyrylcholine esterase"
  "Choline esterase II" "Pseudocholinesterase" "cholinesterase"
  "PR:000004685" "GO:0004104" "PR:Q03311" "PR:P06276"))

(define-protein "CHM4B_HUMAN"
 ("PR:Q9H444" "Charged multivesicular body protein 4b"
  "Chromatin-modifying protein 4b"
  "SNF7 homolog associated with Alix 1" "SNF7-2" "hSnf7-2"
  "Vacuolar protein sorting-associated protein 32-2" "Vps32-2"
  "hVps32-2" "CHMP4b"))

(define-protein "CING_HUMAN" ("PR:Q9P2M7" "Cingulin" "CGNs"))

(define-protein "CL17A_HUMAN"
 ("PR:Q6ZS10" "C-type lectin domain family 17, member A" "prolectin"))

(define-protein "CLC4A_HUMAN"
 ("PR:Q9UMR7" "C-type lectin domain family 4 member A"
  "C-type lectin DDB27" "C-type lectin superfamily member 6"
  "Dendritic cell immunoreceptor" "Lectin-like immunoreceptor"))

(define-protein "CLC4C_HUMAN"
 ("PR:Q8WTT0" "C-type lectin domain family 4 member C"
  "Blood dendritic cell antigen 2" "BDCA-2"
  "C-type lectin superfamily member 7" "Dendritic lectin"))

(define-protein "CLC4D_HUMAN"
 ("PR:Q8WXI8" "C-type lectin domain family 4 member D"
  "C-type lectin superfamily member 8"
  "C-type lectin-like receptor 6" "CLEC-6"))

(define-protein "CLH1_HUMAN"
 ("PR:Q00610" "Clathrin heavy chain 1"
  "Clathrin heavy chain on chromosome 17" "CLH-17" "clathrin"
  "PR:F1R966"))

(define-protein "CMC2_HUMAN"
 ("PR:Q9UJS0" "Calcium-binding mitochondrial carrier protein Aralar2"
  "Citrin" "Mitochondrial aspartate glutamate carrier 2"
  "Solute carrier family 25 member 13" "citrine"))

(define-protein "CN37_HUMAN"
 ("PR:P09543" "2',3'-cyclic-nucleotide 3'-phosphodiesterase" "CNP"
  "CNPase"))

(define-protein "CNN3_HUMAN"
 ("PR:Q15417" "Calponin-3" "Calponin, acidic isoform" "calponin"))

(define-protein "CNOT7_HUMAN"
 ("PR:Q9UIV1" "CCR4-NOT transcription complex subunit 7"
  "BTG1-binding factor 1" "CCR4-associated factor 1" "CAF-1" "Caf1a"))

(define-protein "CNOT8_HUMAN"
 ("PR:Q9UFF9" "CCR4-NOT transcription complex subunit 8"
  "CAF1-like protein" "CALIFp" "CAF2" "CCR4-associated factor 8"
  "Caf1b"))

(define-protein "CO4A3_HUMAN"
 ("PR:Q01955" "Collagen alpha-3(IV) chain" "Goodpasture antigen"
  "Tumstatin"))

(define-protein "CO5_HUMAN"
 ("PR:P01031" "Complement C5"
  "C3 and PZP-like alpha-2-macroglobulin domain-containing protein 4"))

(define-protein "COE1_HUMAN"
 ("PR:Q9UH73" "Transcription factor COE1" "O/E-1" "OE-1"
  "Early B-cell factor" "EBFs"))

(define-protein "COMT_HUMAN"
 ("PR:P21964" "Catechol O-methyltransferase" "catechol"))

(define-protein "CP4F2_HUMAN"
 ("PR:P78329" "Phylloquinone omega-hydroxylase CYP4F2"
  "20-hydroxyeicosatetraenoic acid synthase" "20-HETE synthase"
  "Arachidonic acid omega-hydroxylase" "CYPIVF2"
  "Cytochrome P450 4F2" "Cytochrome P450-LTB-omega"
  "Leukotriene-B(4) 20-monooxygenase 1"
  "Leukotriene-B(4) omega-hydroxylase 1"))

(define-protein "CPNS1_HUMAN"
 ("PR:P04632" "Calpain small subunit 1" "CSS1"
  "Calcium-activated neutral proteinase small subunit"
  "CANP small subunit" "Calcium-dependent protease small subunit"
  "CDPS" "Calcium-dependent protease small subunit 1"
  "Calpain regulatory subunit" "calpain"))

(define-protein "CREB1_HUMAN"
 ("PR:P16220" "Cyclic AMP-responsive element-binding protein 1"
  "CREB-1" "cAMP-responsive element-binding protein 1" "Creb"
  "PR:000000090"))

(define-protein "CREM_HUMAN"
 ("PR:Q03060" "cAMP-responsive element modulator"
  "Inducible cAMP early repressor" "ICER"))

(define-protein "CSF1R_HUMAN"
 ("PR:P07333" "Macrophage colony-stimulating factor 1 receptor"
  "CSF-1 receptor" "CSF-1-R" "M-CSF-R" "Proto-oncogene c-Fms"
  "CSF-1R"))

(define-protein "CSH1_HUMAN"
 ("PR:P0DML2" "Chorionic somatomammotropin hormone 1"
  "Choriomammotropin" "Lactogen" "Placental lactogen" "PL"))

(define-protein "CSKP_HUMAN"
 ("PR:O14936" "Peripheral plasma membrane protein CASK"
  "Calcium/calmodulin-dependent serine protein kinase"
  "Protein lin-2 homolog" "hCASK"))

(define-protein "CSK_HUMAN"
 ("PR:P41240" "Tyrosine-protein kinase CSK" "C-Src kinase"
  "Protein-tyrosine kinase CYL"))

(define-protein "CTGF_HUMAN"
 ("PR:P29279" "Connective tissue growth factor" "CCN family member 2"
  "Hypertrophic chondrocyte-specific protein 24"
  "Insulin-like growth factor-binding protein 8" "IBP-8"
  "IGF-binding protein 8" "IGFBP-8"))

(define-protein "CTLA4_HUMAN"
 ("PR:P16410" "Cytotoxic T-lymphocyte protein 4"
  "Cytotoxic T-lymphocyte-associated antigen 4" "CTLA-4" "Cytotoxic"))

(define-protein "CUL1_HUMAN"
 ("PR:Q13616" "CUL-1" "Cullin-1" "PR:000000013"))

(define-protein "CXA1_HUMAN"
 ("PR:P17302" "Gap junction alpha-1 protein" "Connexin-43"
  "Gap junction 43 kDa heart protein" "Cx43"))

(define-protein "CXA3_HUMAN"
 ("PR:Q9Y6H8" "Gap junction alpha-3 protein" "Connexin-46" "Cx46"))

(define-protein "CXA4_HUMAN"
 ("PR:P35212" "Gap junction alpha-4 protein" "Connexin-37" "Cx37"))

(define-protein "CXA8_HUMAN"
 ("PR:P48165" "Gap junction alpha-8 protein" "Connexin-50"
  "Lens fiber protein MP70" "Cx50"))

(define-protein "CXB1_HUMAN"
 ("PR:P08034" "Gap junction beta-1 protein" "Connexin-32"
  "GAP junction 28 kDa liver protein" "Cx32"))

(define-protein "CXB2_HUMAN"
 ("PR:P29033" "Gap junction beta-2 protein" "Connexin-26" "Cx26"))

(define-protein "CXCL2_HUMAN"
 ("PR:P19875" "C-X-C motif chemokine 2"
  "Growth-regulated protein beta" "Gro-beta"
  "Macrophage inflammatory protein 2-alpha" "MIP2-alpha" "HSFs"))

(define-protein "CXD2_HUMAN"
 ("PR:Q9UKL4" "Gap junction delta-2 protein" "Connexin-36"
  "Gap junction alpha-9 protein" "Cx36"))

(define-protein "CXG1_HUMAN"
 ("PR:P36383" "Gap junction gamma-1 protein" "Connexin-45"
  "Gap junction alpha-7 protein" "Cx45"))

(define-protein "CXXC1_HUMAN"
 ("PR:Q9P0U4" "CXXC-type zinc finger protein 1" "CpG-binding protein"
  "PHD finger and CXXC domain-containing protein 1" "CpG"))

(define-protein "CYLD_HUMAN"
 ("PR:Q9NQC7" "Ubiquitin carboxyl-terminal hydrolase CYLD"
  "Deubiquitinating enzyme CYLD" "Ubiquitin thioesterase CYLD"
  "Ubiquitin-specific-processing protease CYLD" "PR:000022507"))

(define-protein "CYTB_HUMAN"
 ("PR:P04080" "Cystatin-B" "CPI-B" "Liver thiol proteinase inhibitor"
  "Stefin-B" "Cystatin"))

(define-protein "DAXX_HUMAN"
 ("PR:Q9UER7" "Death domain-associated protein 6" "hDaxx"
  "ETS1-associated protein 1" "EAP1"
  "Fas death domain-associated protein" "Daxx"))

(define-protein "DBLOH_HUMAN"
 ("PR:Q9NR28" "Diablo homolog, mitochondrial"
  "Direct IAP-binding protein with low pI"
  "Second mitochondria-derived activator of caspase" "SMACs" "Smac"))

(define-protein "DCK_HUMAN"
 ("PR:P27707" "Deoxycytidine kinase" "dCK" "deoxycytidine"))

(define-protein "DDB1_HUMAN"
 ("PR:Q16531" "DNA damage-binding protein 1" "DDB p127 subunit"
  "DNA damage-binding protein a" "DDBa"
  "Damage-specific DNA-binding protein 1"
  "HBV X-associated protein 1" "XAP-1"
  "UV-damaged DNA-binding factor" "UV-damaged DNA-binding protein 1"
  "UV-DDB 1" "XPE-binding factor" "XPE-BF"
  "Xeroderma pigmentosum group E-complementing protein" "XPCe"))

(define-protein "DDR1_HUMAN"
 ("PR:Q08345" "Epithelial discoidin domain-containing receptor 1"
  "Epithelial discoidin domain receptor 1"
  "CD167 antigen-like family member A" "Cell adhesion kinase"
  "Discoidin receptor tyrosine kinase" "HGK2"
  "Mammary carcinoma kinase 10" "MCK-10" "Protein-tyrosine kinase 3A"
  "Protein-tyrosine kinase RTK-6" "TRK E" "Tyrosine kinase DDR"
  "Tyrosine-protein kinase CAK"))

(define-protein "DDX41_HUMAN"
 ("PR:Q9UJV9" "Probable ATP-dependent RNA helicase DDX41"
  "DEAD box protein 41" "DEAD box protein abstrakt homolog"))

(define-protein "DERL1_HUMAN"
 ("PR:Q9BUN8" "Derlin-1"
  "Degradation in endoplasmic reticulum protein 1" "DERtrin-1"
  "Der1-like protein 1" "Derlin"))

(define-protein "DESM_HUMAN" ("PR:P17661" "desmin"))

(define-protein "DESP_HUMAN"
 ("DP" "250/210 kDa paraneoplastic pemphigus antigen" "desmoplakin"
  "PR:000006711" "PR:E9Q557" "PR:P15924"))

(define-protein "DGUOK_HUMAN"
 ("PR:Q16854" "Deoxyguanosine kinase, mitochondrial" "dGK" "DGKs"))

(define-protein "DHSO_HUMAN"
 ("PR:Q00796" "Sorbitol dehydrogenase" "L-iditol 2-dehydrogenase"
  "sorbitol"))

(define-protein "DHX58_HUMAN"
 ("PR:Q96C10" "Probable ATP-dependent RNA helicase DHX58"
  "Probable ATP-dependent helicase LGP2" "Protein D11Lgp2 homolog"
  "RIG-I-like receptor 3" "RLR-3" "RIG-I-like receptor LGP2" "RLR"
  "RLRs"))

(define-protein "DIC_HUMAN"
 ("PR:Q9UBX3" "Mitochondrial dicarboxylate carrier"
  "Solute carrier family 25 member 10" "DICs"))

(define-protein "DIDO1_HUMAN"
 ("PR:Q9BTC0" "Death-inducer obliterator 1" "DIO-1" "hDido1"
  "Death-associated transcription factor 1" "DATF-1"))

(define-protein "DKK1_HUMAN"
 ("PR:O94907" "Dickkopf-related protein 1" "Dickkopf-1" "Dkk-1"
  "hDkk-1" "SK" "Dkk"))

(define-protein "DKK3_HUMAN"
 ("PR:Q9UBP4" "Dickkopf-related protein 3" "Dickkopf-3" "Dkk-3"
  "hDkk-3" "Dickkopf"))

(define-protein "DLDH_HUMAN"
 ("PR:P09622" "Dihydrolipoyl dehydrogenase, mitochondrial"
  "Dihydrolipoamide dehydrogenase"
  "Glycine cleavage system L protein" "dihydrolipoyl"))

(define-protein "DLG1_HUMAN"
 ("PR:Q12959" "Disks large homolog 1" "Synapse-associated protein 97"
  "SAP-97" "SAP97" "hDlg"))

(define-protein "DNAS1_HUMAN"
 ("PR:P24855" "Deoxyribonuclease-1" "Deoxyribonuclease I" "DNase I"
  "DNase" "deoxyribonuclease" "PR:D3ZF29"))

(define-protein "DNJA3_HUMAN"
 ("PR:Q96EY1" "DnaJ homolog subfamily A member 3, mitochondrial"
  "DnaJ protein Tid-1" "hTid-1"
  "Hepatocellular carcinoma-associated antigen 57"
  "Tumorous imaginal discs protein Tid56 homolog" "hTid"))

(define-protein "DNM3A_HUMAN"
 ("PR:Q9Y6K1" "DNA (cytosine-5)-methyltransferase 3A"
  "DNA methyltransferase HsaIIIA" "DNA MTase HsaIIIA" "M.HsaIIIA"
  "Dnmt3a"))

(define-protein "DNMT1_HUMAN"
 ("PR:P26358" "DNA (cytosine-5)-methyltransferase 1" "Dnmt1"
  "CXXC-type zinc finger protein 9" "DNA methyltransferase HsaI"
  "DNA MTase HsaI" "M.HsaI" "MCMT" "DNMTs"))

(define-protein "DOPD_HUMAN"
 ("PR:P30046" "D-dopachrome decarboxylase" "D-dopachrome tautomerase"
  "Phenylpyruvate tautomerase II" "DDTs"))

(define-protein "DTX1_HUMAN"
 ("PR:Q86Y01" "E3 ubiquitin-protein ligase DTX1" "Protein deltex-1"
  "hDTX1" "Deltex1"))

(define-protein "DUOX1_HUMAN"
 ("PR:Q9NRD9" "Dual oxidase 1" "Large NOX 1" "Long NOX 1"
  "NADPH thyroid oxidase 1" "Thyroid oxidase 1"))

(define-protein "DUS1_HUMAN"
 ("PR:P28562" "Dual specificity protein phosphatase 1"
  "Dual specificity protein phosphatase hVH1"
  "Mitogen-activated protein kinase phosphatase 1"
  "MAP kinase phosphatase 1" "MKP-1"
  "Protein-tyrosine phosphatase CL100"))

(define-protein "DYL1_HUMAN"
 ("PR:P63167" "Dynein light chain 1, cytoplasmic"
  "8 kDa dynein light chain" "DLC8" "Dynein light chain LC8-type 1"
  "Protein inhibitor of neuronal nitric oxide synthase" "PIN" "PINs"))

(define-protein "DYR1A_HUMAN"
 ("PR:Q13627"
  "Dual specificity tyrosine-phosphorylation-regulated kinase 1A"
  "Dual specificity YAK1-related kinase" "HP86"
  "Protein kinase minibrain homolog" "MNBH" "hMNB" "DYRKs"))

(define-protein "DYR_HUMAN"
 ("PR:P00374" "Dihydrofolate reductase" "dihydrofolate"))

(define-protein "DYST_HUMAN"
 ("PR:Q03001" "Dystonin" "230 kDa bullous pemphigoid antigen"
  "230/240 kDa bullous pemphigoid antigen"
  "Bullous pemphigoid antigen 1" "BPA" "Bullous pemphigoid antigen"
  "Dystonia musculorum protein" "Hemidesmosomal plaque protein"
  "BPAs"))

(define-protein "E2AK1_HUMAN"
 ("PR:Q9BQI3"
  "Eukaryotic translation initiation factor 2-alpha kinase 1"
  "Heme-controlled repressor" "HCR"
  "Heme-regulated eukaryotic initiation factor eIF-2-alpha kinase"
  "Heme-regulated inhibitor"
  "Hemin-sensitive initiation factor 2-alpha kinase"))

(define-protein "E41LB_HUMAN"
 ("PR:Q9H329" "Band 4.1-like protein 4B"
  "FERM-containing protein CG1" "Protein EHM2"))

(define-protein "EBP_HUMAN"
 ("PR:Q15125" "3-beta-hydroxysteroid-Delta(8),Delta(7)-isomerase"
  "Cholestenol Delta-isomerase" "Delta(8)-Delta(7) sterol isomerase"
  "D8-D7 sterol isomerase" "Emopamil-binding protein" "EBPs"))

(define-protein "EED_HUMAN"
 ("PR:O75530" "Polycomb protein EED" "hEED"
  "WD protein associating with integrin cytoplasmic tails 1" "WAIT-1"
  "Polycomb"))

(define-protein "EF2_HUMAN"
 ("PR:P13639" "Elongation factor 2" "EF-2" "elongation" "PR:Q9ZVH8"))

(define-protein "EIF3A_HUMAN"
 ("PR:Q14152" "Eukaryotic translation initiation factor 3 subunit A"
  "Eukaryotic translation initiation factor 3 subunit 10"
  "eIF-3-theta" "eIF3 p167" "eIF3 p180" "eIF3 p185" "eIF3a"))

(define-protein "EIF3B_HUMAN"
 ("PR:P55884" "Eukaryotic translation initiation factor 3 subunit B"
  "Eukaryotic translation initiation factor 3 subunit 9"
  "Prt1 homolog" "hPrt1" "eIF-3-eta" "eIF3 p110" "eIF3 p116" "eIF3b"))

(define-protein "EIF3E_HUMAN"
 ("PR:P60228" "Eukaryotic translation initiation factor 3 subunit E"
  "eIF3e" "Eukaryotic translation initiation factor 3 subunit 6"
  "Viral integration site protein INT-6 homolog" "eIF-3 p48" "eIF3"))

(define-protein "EIF3F_HUMAN"
 ("PR:O00303" "Eukaryotic translation initiation factor 3 subunit F"
  "Deubiquitinating enzyme eIF3f"
  "Eukaryotic translation initiation factor 3 subunit 5"
  "eIF-3-epsilon" "eIF3 p47" "eIF3f"))

(define-protein "EIF3H_HUMAN"
 ("PR:O15372" "Eukaryotic translation initiation factor 3 subunit H"
  "Eukaryotic translation initiation factor 3 subunit 3"
  "eIF-3-gamma" "eIF3 p40 subunit" "eIF3h"))

(define-protein "ELAV1_HUMAN"
 ("PR:Q15717" "ELAV-like protein 1" "Hu-antigen R" "HuR"))

(define-protein "ELOB_HUMAN"
 ("PR:Q15370" "Transcription elongation factor B polypeptide 2"
  "Elongin 18 kDa subunit" "Elongin-B" "EloB"
  "RNA polymerase II transcription factor SIII subunit B" "SIII p18"))

(define-protein "ELOC_HUMAN"
 ("PR:Q15369" "Transcription elongation factor B polypeptide 1"
  "Elongin 15 kDa subunit" "Elongin-C" "EloC"
  "RNA polymerase II transcription factor SIII subunit C" "SIII p15"
  "Elongin"))

(define-protein "EP15R_HUMAN"
 ("PR:Q9UBC2" "Epidermal growth factor receptor substrate 15-like 1"
  "Eps15-related protein" "Eps15R"))

(define-protein "ETV5_HUMAN"
 ("PR:P41161" "ETS translocation variant 5" "Ets-related protein ERM"
  "ERMs"))

(define-protein "ETV6_HUMAN"
 ("PR:P41212" "Transcription factor ETV6"
  "ETS translocation variant 6" "ETS-related protein Tel1" "Tel"))

(define-protein "EXO1_HUMAN"
 ("PR:Q9UQ84" "Exonuclease 1" "hExo1" "Exonuclease I" "hExoI" "Exo1"
  "PR:000007245"))

(define-protein "EZH2_HUMAN"
 ("PR:Q15910" "Histone-lysine N-methyltransferase EZH2" "ENX-1"
  "Enhancer of zeste homolog 2" "Lysine N-methyltransferase 6"))

(define-protein "EZRI_HUMAN"
 ("Cytovillin" "Villin-2" "p81" "ezrin" "PR:000001031" "PR:P26040"
  "PR:P15311" "PR:P31977"))

(define-protein "FABP4_HUMAN"
 ("PR:P15090" "Fatty acid-binding protein, adipocyte"
  "Adipocyte lipid-binding protein" "ALBP"
  "Adipocyte-type fatty acid-binding protein" "A-FABP" "AFABP"
  "Fatty acid-binding protein 4"))

(define-protein "FANCC_HUMAN"
 ("PR:Q00597" "Fanconi anemia group C protein" "Protein FACC" "FACs"))

(define-protein "FAS_HUMAN" ("PR:P49327" "Fatty acid synthase"))

(define-protein "FBX32_HUMAN"
 ("PR:Q969P5" "F-box only protein 32" "Atrogin-1"
  "Muscle atrophy F-box protein" "MAFbx"))

(define-protein "FIBA_HUMAN"
 ("PR:P02671" "Fibrinogen alpha chain" "fibrinogen"))

(define-protein "FIBB_HUMAN"
 ("PR:P02675" "Fibrinogen beta chain" "Fibrinopeptide"))

(define-protein "FIG4_HUMAN"
 ("PR:Q92562" "Polyphosphoinositide phosphatase"
  "Phosphatidylinositol 3,5-bisphosphate 5-phosphatase"
  "SAC domain-containing protein 3" "polyphosphoinositide"))

(define-protein "FLOT1_HUMAN" ("PR:O75955" "Flotillin-1" "flotillin"))

(define-protein "FLT3L_HUMAN"
 ("PR:P49771" "Fms-related tyrosine kinase 3 ligand" "Flt3 ligand"
  "SL cytokine" "Flt3" "Flt3L"))

(define-protein "FLT3_HUMAN"
 ("PR:P36888" "Receptor-type tyrosine-protein kinase FLT3"
  "FL cytokine receptor" "Fetal liver kinase-2" "FLK-2"
  "Fms-like tyrosine kinase 3" "FLT-3" "Stem cell tyrosine kinase 1"
  "STK-1"))

(define-protein "FOXD3_HUMAN"
 ("PR:Q9UJU5" "Forkhead box protein D3"
  "HNF3/FH transcription factor genesis" "Forkhead"))

(define-protein "FPR1_HUMAN"
 ("PR:P21462" "fMet-Leu-Phe receptor" "fMLP receptor"
  "N-formyl peptide receptor" "FPR"
  "N-formylpeptide chemoattractant receptor" "FPRs"))

(define-protein "FUT1_HUMAN"
 ("PR:P19526" "Galactoside 2-alpha-L-fucosyltransferase 1"
  "Alpha(1,2)FT 1" "Blood group H alpha 2-fucosyltransferase"
  "Fucosyltransferase 1"
  "GDP-L-fucose:beta-D-galactoside 2-alpha-L-fucosyltransferase 1"
  "HSCs"))

(define-protein "FYB_HUMAN"
 ("PR:O15117" "FYN-binding protein"
  "Adhesion and degranulation promoting adaptor protein" "ADAP"
  "FYB-120/130" "p120/p130" "FYN-T-binding protein" "SLAP-130"
  "SLP-76-associated phosphoprotein"))

(define-protein "G3P_HUMAN"
 ("PR:P04406" "Glyceraldehyde-3-phosphate dehydrogenase" "GAPDH"
  "Peptidyl-cysteine S-nitrosylase GAPDH" "glyceraldehyde"))

(define-protein "G3ST1_HUMAN"
 ("PR:Q99999" "Galactosylceramide sulfotransferase"
  "GalCer sulfotransferase"
  "3'-phosphoadenosine-5'-phosphosulfate:GalCer sulfotransferase"
  "3'-phosphoadenylylsulfate:galactosylceramide 3'-sulfotransferase"
  "Cerebroside sulfotransferase" "CSTs"))

(define-protein "G6PC_HUMAN"
 ("PR:P35575" "Glucose-6-phosphatase" "G-6-Pase"
  "Glucose-6-phosphatase alpha" "G6Pase-alpha" "G6Pase" "glucose"))

(define-protein "GALA_HUMAN" ("PR:P22466" "Galanin peptides"))

(define-protein "GAN_HUMAN"
 ("PR:Q9H2C0" "Kelch-like protein 16" "Gigaxonin"))

(define-protein "GAST_HUMAN" ("PR:P01350" "gastrin"))

(define-protein "GCR_HUMAN"
 ("PR:P04150" "Glucocorticoid receptor" "GR"
  "Nuclear receptor subfamily 3 group C member 1"))

(define-protein "GCSAM_HUMAN"
 ("PR:Q8N6F7"
  "Germinal center-associated signaling and motility protein"
  "Germinal center B-cell-expressed transcript 2 protein"
  "Germinal center-associated lymphoma protein" "hGAL" "Gal"))

(define-protein "GDAP1_HUMAN"
 ("PR:Q8TB36"
  "Ganglioside-induced differentiation-associated protein 1" "GDAP1"
  "ganglioside"))

(define-protein "GEMI2_HUMAN"
 ("PR:O14893" "Gem-associated protein 2" "Gemin-2"
  "Component of gems 2"
  "Survival of motor neuron protein-interacting protein 1"
  "SMN-interacting protein 1"))

(define-protein "GEMI_HUMAN"
 ("geminin" "PR:000008074" "PR:O88513" "PR:O75496" "PR:Q7JX41"))

(define-protein "GEM_HUMAN"
 ("PR:P55040" "GTP-binding protein GEM"
  "GTP-binding mitogen-induced T-cell protein" "RAS-like protein KIR"
  "GEMs" "KIRs"))

(define-protein "GLPA_HUMAN"
 ("PR:P02724" "Glycophorin-A" "MN sialoglycoprotein" "PAS-2"
  "Sialoglycoprotein alpha" "CD235a"))

(define-protein "GLPC_HUMAN"
 ("PR:P04921" "Glycophorin-C" "Glycoconnectin" "Glycophorin-D" "GPD"
  "Glycoprotein beta" "PAS-2'" "Sialoglycoprotein D" "GPCs"))

(define-protein "GLUC_HUMAN" ("PR:P01275" "glucagon"))

(define-protein "GLYL1_HUMAN"
 ("PR:Q969I3" "Glycine N-acyltransferase-like protein 1"
  "Acyl-CoA:glycine N-acyltransferase-like protein 1"
  "Glutamine N-acyltransferase" "GNATs"))

(define-protein "GNL3_HUMAN"
 ("PR:Q9BVP2" "Guanine nucleotide-binding protein-like 3"
  "E2-induced gene 3 protein" "Novel nucleolar protein 47" "NNP47"
  "Nucleolar GTP-binding protein 3" "Nucleostemin" "Guanine"))

(define-protein "GNRHR_HUMAN"
 ("PR:P30968" "Gonadotropin-releasing hormone receptor"
  "GnRH receptor" "GnRH-R" "GnRH"))

(define-protein "GOPC_HUMAN"
 ("PR:Q9HD26"
  "Golgi-associated PDZ and coiled-coil motif-containing protein"
  "CFTR-associated ligand" "Fused in glioblastoma"
  "PDZ protein interacting specifically with TC10" "PIST" "Fused"))

(define-protein "GPKOW_HUMAN"
 ("PR:Q92917" "G patch domain and KOW motifs-containing protein"
  "G patch domain-containing protein 5" "Protein MOS2 homolog"
  "Protein T54" "GPKOWs"))

(define-protein "GREM1_HUMAN"
 ("PR:O60565" "Gremlin-1"
  "Cell proliferation-inducing gene 2 protein"
  "Cysteine knot superfamily 1, BMP antagonist 1"
  "DAN domain family member 2"
  "Down-regulated in Mos-transformed cells protein"
  "Increased in high glucose protein 2" "IHG-2" "DRMs"))

(define-protein "GRIK2_HUMAN"
 ("PR:Q13002" "Glutamate receptor ionotropic, kainate 2" "GluK2"
  "Excitatory amino acid receptor 4" "EAA4" "Glutamate receptor 6"
  "GluR-6" "GluR6"))

(define-protein "GRP_HUMAN"
 ("PR:P07492" "Gastrin-releasing peptide" "GRP"))

(define-protein "GSC_HUMAN" ("GSCs"))

(define-protein "GSK3B_HUMAN"
 ("PR:P49841" "Glycogen synthase kinase-3 beta" "GSK-3 beta"
  "Serine/threonine-protein kinase GSK3B" "glycogen" "PR:000022776"
  "PR:P51136"))

(define-protein "GUC2C_HUMAN"
 ("PR:P25092" "Heat-stable enterotoxin receptor" "STA receptor"
  "hSTAR" "Guanylyl cyclase C" "GC-C" "Intestinal guanylate cyclase"
  "StAR"))

(define-protein "HASP_HUMAN"
 ("PR:Q8TF76" "Serine/threonine-protein kinase haspin"
  "Germ cell-specific gene 2 protein" "H-haspin"
  "Haploid germ cell-specific nuclear protein kinase" "Haploid"))

(define-protein "HAVR1_HUMAN"
 ("PR:Q96D42" "Hepatitis A virus cellular receptor 1" "HAVcr-1"
  "Kidney injury molecule 1" "KIM-1"
  "T-cell immunoglobulin and mucin domain-containing protein 1"
  "TIMD-1" "T-cell immunoglobulin mucin receptor 1" "TIM" "TIM-1"
  "T-cell membrane protein 1" "TIMs"))

(define-protein "HCFC1_HUMAN"
 ("PR:P51610" "Host cell factor 1" "HCF" "HCF-1" "C1 factor" "CFF"
  "VCAF" "VP16 accessory protein"))

(define-protein "HD_HUMAN"
 ("Huntington disease protein" "HD protein" "huntingtin"
  "PR:000008840" "PR:P42858" "PR:P42859" "PR:P51111"))

(define-protein "HEM3_HUMAN"
 ("PR:P08397" "Porphobilinogen deaminase" "PBG-D"
  "Hydroxymethylbilane synthase" "HMBS"
  "Pre-uroporphyrinogen synthase" "Hydroxymethylbilane"))

(define-protein "HEM6_HUMAN"
 ("PR:P36551"
  "Oxygen-dependent coproporphyrinogen-III oxidase, mitochondrial"
  "COX" "Coprogen oxidase" "Coproporphyrinogenase" "COXs"))

(define-protein "HGFL_HUMAN"
 ("PR:P26927" "Hepatocyte growth factor-like protein"
  "Macrophage stimulatory protein" "Macrophage-stimulating protein"
  "MSP" "MSPs"))

(define-protein "HGS_HUMAN"
 ("PR:O14964"
  "Hepatocyte growth factor-regulated tyrosine kinase substrate"
  "Protein pp110" "Hrs"))

(define-protein "HIF1N_HUMAN"
 ("PR:Q9NWT6" "Hypoxia-inducible factor 1-alpha inhibitor"
  "Factor inhibiting HIF-1" "FIH-1"
  "Hypoxia-inducible factor asparagine hydroxylase"))

(define-protein "HMOX1_HUMAN" ("PR:P09601" "Heme oxygenase 1" "HO-1"))

(define-protein "HNMT_HUMAN"
 ("PR:P50135" "Histamine N-methyltransferase" "HMT" "HMTs"))

(define-protein "HNRPK_HUMAN"
 ("PR:P61978" "Heterogeneous nuclear ribonucleoprotein K" "hnRNP K"
  "Transformation up-regulated nuclear protein" "TUNP"))

(define-protein "HNRPL_HUMAN"
 ("PR:P14866" "Heterogeneous nuclear ribonucleoprotein L" "hnRNP L"))

(define-protein "HNRPM_HUMAN"
 ("PR:P52272" "Heterogeneous nuclear ribonucleoprotein M" "hnRNP M"))

(define-protein "HOP_HUMAN"
 ("PR:Q9BPY8" "Homeodomain-only protein"
  "Lung cancer-associated Y protein"
  "Not expressed in choriocarcinoma protein 1"
  "Odd homeobox protein 1"))

(define-protein "HRH1_HUMAN"
 ("PR:P35367" "Histamine H1 receptor" "H1R" "HH1R" "histamine"))

(define-protein "HSPB1_HUMAN"
 ("PR:P04792" "Heat shock protein beta-1" "28 kDa heat shock protein"
  "Estrogen-regulated 24 kDa protein" "Heat shock 27 kDa protein"
  "HSP 27" "Stress-responsive protein 27" "SRP27" "HspB1"))

(define-protein "HTRA2_HUMAN"
 ("PR:O43464" "Serine protease HTRA2, mitochondrial"
  "High temperature requirement protein A2"
  "Omi stress-regulated endoprotease" "Serine protease 25"
  "Serine proteinase OMI" "HtrA2"))

(define-protein "HUWE1_HUMAN"
 ("PR:Q7Z6Z7" "E3 ubiquitin-protein ligase HUWE1"
  "ARF-binding protein 1" "ARF-BP1"
  "HECT, UBA and WWE domain-containing protein 1"
  "Homologous to E6AP carboxyl terminus homologous protein 9"
  "Large structure of UREB1" "LASU1" "Mcl-1 ubiquitin ligase E3"
  "Upstream regulatory element-binding protein 1" "URE-B1"
  "URE-binding protein 1" "HectH9" "Mcl" "Mule"))

(define-protein "HXK2_HUMAN"
 ("PR:P52789" "Hexokinase-2" "Hexokinase type II" "HK II"
  "Muscle form hexokinase" "hK2"))

(define-protein "HYAL1_HUMAN"
 ("PR:Q12794" "Hyaluronidase-1" "Hyal-1" "Hyaluronoglucosaminidase-1"
  "Lung carcinoma protein 1" "LuCa-1" "hyaluronidase" "PR:G3V6V8"
  "PR:A9C3S9" "PR:H9KZ20" "PR:E7FD65"))

(define-protein "IBP7_HUMAN"
 ("PR:Q16270" "Insulin-like growth factor-binding protein 7" "IBP-7"
  "IGF-binding protein 7" "IGFBP-7" "IGFBP-rP1" "MAC25 protein"
  "PGI2-stimulating factor" "Prostacyclin-stimulating factor"
  "Tumor-derived adhesion factor" "TAF" "TAFs"))

(define-protein "ICAL_HUMAN"
 ("PR:P20810" "Calpain inhibitor" "Sperm BS-17 component"
  "calpastatin"))

(define-protein "ICAM1_HUMAN"
 ("PR:P05362" "Intercellular adhesion molecule 1" "ICAM-1"
  "Major group rhinovirus receptor"))

(define-protein "ID2_HUMAN"
 ("PR:Q02363" "DNA-binding protein inhibitor ID-2"
  "Class B basic helix-loop-helix protein 26" "bHLHb26"
  "Inhibitor of DNA binding 2" "Inhibitor of differentiation 2" "Id2"
  "PR:O73933"))

(define-protein "IF4E_HUMAN"
 ("PR:P06730" "Eukaryotic translation initiation factor 4E" "eIF-4E"
  "eIF-4F 25 kDa subunit" "mRNA cap-binding protein" "eIF" "eIF4E"))

(define-protein "IFNG_HUMAN"
 ("PR:P01579" "Interferon gamma" "IFN-gamma" "Immune interferon"))

(define-protein "IF_HUMAN"
 ("PR:P27352" "Gastric intrinsic factor" "Intrinsic factor" "IF"
  "INF" "INFs"))

(define-protein "IKKA_HUMAN"
 ("PR:O15111"
  "Inhibitor of nuclear factor kappa-B kinase subunit alpha"
  "I-kappa-B kinase alpha" "IKK-A" "IKK-alpha" "IkBKA"
  "IkappaB kinase" "Conserved helix-loop-helix ubiquitous kinase"
  "I-kappa-B kinase 1" "IKK1"
  "Nuclear factor NF-kappa-B inhibitor kinase alpha" "NFKBIKA"
  "Transcription factor 16" "TCF-16" "IkappaB" "PR:000026457"))

(define-protein "IL1RA_HUMAN"
 ("PR:P18510" "Interleukin-1 receptor antagonist protein" "IL-1RN"
  "IL-1ra" "IRAP" "ICIL-1RA" "IL1 inhibitor" "Anakinra"))

(define-protein "ILF3_HUMAN"
 ("PR:Q12906" "Interleukin enhancer-binding factor 3"
  "Double-stranded RNA-binding protein 76" "DRBP76"
  "M-phase phosphoprotein 4" "MPP4"
  "Nuclear factor associated with dsRNA" "NFAR"
  "Nuclear factor of activated T-cells 90 kDa" "NF-AT-90"
  "Translational control protein 80" "TCP80" "double"))

(define-protein "INVO_HUMAN"
 ("involucrin" "PR:000009167" "PR:P07476" "PR:P48997" "PR:P48998"))

(define-protein "IPKA_HUMAN"
 ("PR:P61925" "cAMP-dependent protein kinase inhibitor alpha"
  "PKI-alpha"
  "cAMP-dependent protein kinase inhibitor, muscle/brain isoform"
  "cAMP"))

(define-protein "IPYR_HUMAN"
 ("PR:Q15181" "Inorganic pyrophosphatase"
  "Pyrophosphate phospho-hydrolase" "PPase"))

(define-protein "IRAK1_HUMAN"
 ("PR:P51617" "Interleukin-1 receptor-associated kinase 1" "IRAK-1"
  "IRAKs"))

(define-protein "IRF1_HUMAN"
 ("PR:P10914" "Interferon regulatory factor 1" "IRF-1" "interferon"))

(define-protein "ITA2_HUMAN"
 ("PR:P17301" "Integrin alpha-2" "CD49 antigen-like family member B"
  "Collagen receptor" "Platelet membrane glycoprotein Ia" "GPIa"
  "VLA-2 subunit alpha" "collagen"))

(define-protein "ITAL_HUMAN"
 ("PR:P20701" "Integrin alpha-L" "CD11 antigen-like family member A"
  "Leukocyte adhesion glycoprotein LFA-1 alpha chain" "LFA-1A"
  "Leukocyte function-associated molecule 1 alpha chain" "CD11a"))

(define-protein "ITAM_HUMAN"
 ("PR:P11215" "Integrin alpha-M" "CD11 antigen-like family member B"
  "CR-3 alpha chain" "Cell surface glycoprotein MAC-1 subunit alpha"
  "Leukocyte adhesion receptor MO1" "Neutrophil adherence receptor"
  "CD11b"))

(define-protein "ITAX_HUMAN"
 ("PR:P20702" "Integrin alpha-X" "CD11 antigen-like family member C"
  "Leu M5" "Leukocyte adhesion glycoprotein p150,95 alpha chain"
  "Leukocyte adhesion receptor p150,95" "CD11c"))

(define-protein "ITCH_HUMAN"
 ("PR:Q96J02" "E3 ubiquitin-protein ligase Itchy homolog"
  "Atrophin-1-interacting protein 4" "AIP4"
  "NFE2-associated polypeptide 1" "NAPP1" "Itch"))

(define-protein "JMJD6_HUMAN"
 ("PR:Q6NYC1"
  "Bifunctional arginine demethylase and lysyl-hydroxylase JMJD6"
  "Histone arginine demethylase JMJD6"
  "JmjC domain-containing protein 6"
  "Jumonji domain-containing protein 6" "Lysyl-hydroxylase JMJD6"
  "Peptide-lysine 5-dioxygenase JMJD6" "Phosphatidylserine receptor"
  "Protein PTDSR" "phosphatidylserine"))

(define-protein "K2C5_HUMAN"
 ("PR:P13647" "Keratin, type II cytoskeletal 5" "58 kDa cytokeratin"
  "Cytokeratin-5" "CK-5" "Keratin-5" "K5" "Type-II keratin Kb5"
  "keratins"))

(define-protein "KAT5_HUMAN"
 ("PR:Q92993" "Histone acetyltransferase KAT5"
  "60 kDa Tat-interactive protein" "Histone acetyltransferase HTATIP"
  "HIV-1 Tat interactive protein" "Lysine acetyltransferase 5"
  "cPLA(2)-interacting protein" "Tip60"))

(define-protein "KAT8_HUMAN"
 ("PR:Q9H7Z6" "Histone acetyltransferase KAT8"
  "Lysine acetyltransferase 8"
  "MOZ, YBF2/SAS3, SAS2 and TIP60 protein 1" "MYST-1" "hMOF"))

(define-protein "KCMA1_HUMAN"
 ("PR:Q12791" "Calcium-activated potassium channel subunit alpha-1"
  "BK channel" "BKCA alpha"
  "Calcium-activated potassium channel, subfamily M subunit alpha-1"
  "K(VCA)alpha" "KCa1.1" "Maxi K channel" "Slo-alpha" "Slo1"
  "Slowpoke homolog" "Slo homolog" "hSlo" "MaxiK"))

(define-protein "KCNH2_HUMAN"
 ("PR:Q12809" "Potassium voltage-gated channel subfamily H member 2"
  "Eag homolog" "Ether-a-go-go-related gene potassium channel 1"
  "ERG-1" "Eag-related protein 1" "Ether-a-go-go-related protein 1"
  "H-ERG" "hERG-1" "hERG1"
  "Voltage-gated potassium channel subunit Kv11.1" "hERG"
  "PR:P11308"))

(define-protein "KHDR1_HUMAN"
 ("PR:Q07666"
  "KH domain-containing, RNA-binding, signal transduction-associated protein 1"
  "GAP-associated tyrosine phosphoprotein p62"
  "Src-associated in mitosis 68 kDa protein"
  "p21 Ras GTPase-activating protein-associated p62" "p68" "Sam68"))

(define-protein "KIF2A_HUMAN"
 ("PR:O00139" "Kinesin-like protein KIF2A" "Kinesin-2" "hK2"))

(define-protein "KINH_HUMAN"
 ("PR:P33176" "Kinesin-1 heavy chain"
  "Conventional kinesin heavy chain" "Ubiquitous kinesin heavy chain"
  "UKHC"))

(define-protein "KLC1_HUMAN"
 ("PR:Q07866" "Kinesin light chain 1" "KLC 1" "KLCs"))

(define-protein "KLK2_HUMAN"
 ("PR:P20151" "Kallikrein-2" "Glandular kallikrein-1" "hGK-1"
  "Tissue kallikrein-2" "kallikrein"))

(define-protein "KLK6_HUMAN"
 ("PR:Q92876" "Kallikrein-6" "Neurosin" "Protease M" "SP59"
  "Serine protease 18" "Serine protease 9" "Zyme" "zymed"
  "PR:000009416"))

(define-protein "KS6A1_HUMAN"
 ("PR:Q15418" "Ribosomal protein S6 kinase alpha-1" "S6K-alpha-1"
  "90 kDa ribosomal protein S6 kinase 1" "p90-RSK 1" "p90RSK1"
  "p90S6K" "MAP kinase-activated protein kinase 1a"
  "MAPK-activated protein kinase 1a" "MAPKAP kinase 1a" "MAPKAPK-1a"
  "Ribosomal S6 kinase 1" "RSK-1" "PR:Q1LYB7" "PR:A2BIB3" "PR:Q6TLG8"
  "PR:F1R3V1"))

(define-protein "KS6A3_HUMAN"
 ("PR:P51812" "Ribosomal protein S6 kinase alpha-3" "S6K-alpha-3"
  "90 kDa ribosomal protein S6 kinase 3" "p90-RSK 3" "p90RSK3"
  "Insulin-stimulated protein kinase 1" "ISPK-1"
  "MAP kinase-activated protein kinase 1b"
  "MAPK-activated protein kinase 1b" "MAPKAP kinase 1b" "MAPKAPK-1b"
  "Ribosomal S6 kinase 2" "RSK-2" "pp90RSK2" "RSKs"))

(define-protein "LAG3_HUMAN"
 ("PR:P18627" "Lymphocyte activation gene 3 protein" "LAG-3"
  "Protein FDC" "FDCs"))

(define-protein "LAMC1_HUMAN"
 ("PR:P11047" "Laminin subunit gamma-1" "Laminin B2 chain"
  "Laminin-1 subunit gamma" "Laminin-10 subunit gamma"
  "Laminin-11 subunit gamma" "Laminin-2 subunit gamma"
  "Laminin-3 subunit gamma" "Laminin-4 subunit gamma"
  "Laminin-6 subunit gamma" "Laminin-7 subunit gamma"
  "Laminin-8 subunit gamma" "Laminin-9 subunit gamma"
  "S-laminin subunit gamma" "S-LAM gamma" "laminin"))

(define-protein "LAMP1_HUMAN"
 ("PR:P11279" "Lysosome-associated membrane glycoprotein 1" "LAMP-1"
  "Lysosome-associated membrane protein 1"
  "CD107 antigen-like family member A" "CD107a" "lysosomal"))

(define-protein "LAP2A_HUMAN"
 ("Lamina-associated polypeptide 2, isoform alpha"
  "Thymopoietin isoform alpha" "TP alpha"
  "Thymopoietin-related peptide isoform alpha" "TPRP isoform alpha"
  "Thymopoietin"))

(define-protein "LAP2_HUMAN"
 ("PR:Q96RT1" "Protein LAP2" "Densin-180-like protein"
  "Erbb2-interacting protein" "erbin"))

(define-protein "LARP4_HUMAN"
 ("PR:Q71RC2" "La-related protein 4"
  "La ribonucleoprotein domain family member 4"))

(define-protein "LA_HUMAN"
 ("PR:P05455" "Lupus La protein" "La autoantigen"
  "La ribonucleoprotein" "Sjoegren syndrome type B antigen" "SS-B"
  "SSBs"))

(define-protein "LEF1_HUMAN"
 ("PR:Q9UJU2" "Lymphoid enhancer-binding factor 1" "LEF-1"
  "T cell-specific transcription factor 1-alpha" "TCF1-alpha"
  "lymphoid"))

(define-protein "LEG4_HUMAN"
 ("PR:P56470" "Galectin-4" "Gal-4" "Antigen NY-CO-27"
  "L-36 lactose-binding protein" "L36LBP" "Lactose-binding lectin 4"))

(define-protein "LGMN_HUMAN"
 ("PR:Q99538" "Asparaginyl endopeptidase" "Protease, cysteine 1"
  "Legumain"))

(define-protein "LIF_HUMAN"
 ("PR:P15018" "Leukemia inhibitory factor" "LIF"
  "Differentiation-stimulating factor" "D factor"
  "Melanoma-derived LPL inhibitor" "MLPLI" "leukemia"))

(define-protein "LIPL_HUMAN"
 ("PR:P06858" "Lipoprotein lipase" "LPL" "lipoprotein"))

(define-protein "LIRB1_HUMAN"
 ("PR:Q8NHL6"
  "Leukocyte immunoglobulin-like receptor subfamily B member 1"
  "LIR-1" "Leukocyte immunoglobulin-like receptor 1"
  "CD85 antigen-like family member J"
  "Immunoglobulin-like transcript 2" "ILT-2"
  "Monocyte/macrophage immunoglobulin-like receptor 7" "MIR-7"
  "CD85j"))

(define-protein "LMNA_HUMAN" ("PR:P02545" "Prelamin-A/C"))

(define-protein "LMNB1_HUMAN"
 ("PR:P20700" "Lamin-B1" "lamin" "PR:Q03427" "PR:B3DKC5"))

(define-protein "LORF2_HUMAN"
 ("LINE-1 retrotransposable element ORF2 protein" "ORF2p"
  "endonuclease" "PR:000022515" "PR:Q3V5X8"))

(define-protein "LRP2_HUMAN"
 ("PR:P98164" "Low-density lipoprotein receptor-related protein 2"
  "LRP-2" "Glycoprotein 330" "gp330" "megalin" "PR:000009921"))

(define-protein "LSM4_HUMAN"
 ("PR:Q9Y4Z0" "U6 snRNA-associated Sm-like protein LSm4"
  "Glycine-rich protein" "GRP" "GRPs"))

(define-protein "LST8_HUMAN"
 ("PR:Q9BVC4" "Target of rapamycin complex subunit LST8"
  "TORC subunit LST8" "G protein beta subunit-like" "Gable"
  "Protein GbetaL" "Mammalian lethal with SEC13 protein 8" "mLST8"))

(define-protein "LYOX_HUMAN"
 ("PR:P28300" "Protein-lysine 6-oxidase" "lysyl oxidase"))

(define-protein "M3K10_HUMAN"
 ("PR:Q02779" "Mitogen-activated protein kinase kinase kinase 10"
  "Mixed lineage kinase 2" "Protein kinase MST"))

(define-protein "M3K12_HUMAN"
 ("PR:Q12852" "Mitogen-activated protein kinase kinase kinase 12"
  "Dual leucine zipper bearing kinase" "DLK"
  "Leucine-zipper protein kinase" "ZPK" "MAPK-upstream kinase" "MUK"
  "Mixed lineage kinase"))

(define-protein "M3K13_HUMAN"
 ("PR:O43283" "Mitogen-activated protein kinase kinase kinase 13"
  "Leucine zipper-bearing kinase" "Mixed lineage kinase" "MLK"
  "MLKs"))

(define-protein "MADD_HUMAN"
 ("PR:Q8WXG6" "MAP kinase-activating death domain protein"
  "Differentially expressed in normal and neoplastic cells"
  "Insulinoma glucagonoma clone 20" "Rab3 GDP/GTP exchange factor"
  "differentially"))

(define-protein "MAGT1_HUMAN"
 ("PR:Q9H0U3" "Magnesium transporter protein 1" "MagT1"
  "Implantation-associated protein" "IAP"))

(define-protein "MAK_HUMAN"
 ("PR:P20794" "Serine/threonine-protein kinase MAK"
  "Male germ cell-associated kinase" "MAKs"))

(define-protein "MAP1B_HUMAN"
 ("PR:P46821" "Microtubule-associated protein 1B" "MAP-1B"
  "PR:000031436" "PR:E1C6D1"))

(define-protein "MAP4_HUMAN"
 ("PR:P27816" "Microtubule-associated protein 4" "MAP-4"))

(define-protein "MARCS_HUMAN"
 ("PR:P29966" "Myristoylated alanine-rich C-kinase substrate"
  "MARCKS" "Protein kinase C substrate, 80 kDa protein, light chain"
  "80K-L protein" "PKCSL" "myristoylated" "PR:000037075"))

(define-protein "MAVS_HUMAN"
 ("PR:Q7Z434" "Mitochondrial antiviral-signaling protein" "MAVS"
  "CARD adapter inducing interferon beta" "Cardif"
  "Interferon beta promoter stimulator protein 1" "IPS-1"
  "Putative NF-kappa-B-activating protein 031N"
  "Virus-induced-signaling adapter" "VISA"))

(define-protein "MBP_HUMAN"
 ("PR:P02686" "Myelin basic protein" "MBP" "Myelin A1 protein"
  "Myelin membrane encephalitogenic protein"))

(define-protein "MCSP_HUMAN"
 ("PR:P49901" "Sperm mitochondrial-associated cysteine-rich protein"
  "MCSs"))

(define-protein "MDM2_HUMAN"
 ("PR:Q00987" "E3 ubiquitin-protein ligase Mdm2"
  "Double minute 2 protein" "Oncoprotein Mdm2"
  "p53-binding protein Mdm2" "Hdm2"))

(define-protein "MDR1_HUMAN"
 ("PR:P08183" "Multidrug resistance protein 1"
  "ATP-binding cassette sub-family B member 1" "P-glycoprotein 1"))

(define-protein "MECP2_HUMAN"
 ("PR:P51608" "Methyl-CpG-binding protein 2" "MeCp-2 protein"
  "MeCp2"))

(define-protein "MEFV_HUMAN"
 ("PR:O15553" "Marenostrin" "MEFs" "Pyrin"))

(define-protein "MEPE_HUMAN"
 ("PR:Q9NQ76" "Matrix extracellular phosphoglycoprotein"
  "Osteoblast/osteocyte factor 45" "OF45" "OF45s"))

(define-protein "MERL_HUMAN"
 ("PR:P35240" "Moesin-ezrin-radixin-like protein" "Neurofibromin-2"
  "Schwannomerlin" "Schwannomin" "Merlin"))

(define-protein "MF2L2_HUMAN"
 ("PR:Q86YR7" "Probable guanine nucleotide exchange factor MCF2L2"
  "Dbs-related Rho family guanine nucleotide exchange factor"
  "MCF2-transforming sequence-like protein 2" "DRGs"))

(define-protein "MFN1_HUMAN"
 ("PR:Q8IWA4" "Mitofusin-1" "Fzo homolog" "Transmembrane GTPase MFN1"
  "mitofusin"))

(define-protein "MIC10_HUMAN"
 ("PR:Q5TGZ0" "MICOS complex subunit MIC10"
  "Mitochondrial inner membrane organizing system protein 1"
  "C1orf151"))

(define-protein "MIF_HUMAN"
 ("PR:P14174" "Macrophage migration inhibitory factor" "MIF"
  "Glycosylation-inhibiting factor" "GIF" "L-dopachrome isomerase"
  "L-dopachrome tautomerase" "Phenylpyruvate tautomerase"
  "macrophage" "PR:000006069"))

(define-protein "MITF_HUMAN"
 ("PR:O75030" "Microphthalmia-associated transcription factor"
  "Class E basic helix-loop-helix protein 32" "bHLHe32"
  "Microphthalmia"))

(define-protein "MK14_HUMAN"
 ("PR:Q16539" "Mitogen-activated protein kinase 14" "MAP kinase 14"
  "MAPK 14"
  "Cytokine suppressive anti-inflammatory drug-binding protein"
  "CSAID-binding protein" "CSBP" "MAP kinase MXI2"
  "MAX-interacting protein 2"
  "Mitogen-activated protein kinase p38 alpha" "MAP kinase p38 alpha"
  "Stress-activated protein kinase 2a" "SAPK2a"))

(define-protein "MKNK1_HUMAN"
 ("PR:Q9BUB5"
  "MAP kinase-interacting serine/threonine-protein kinase 1"
  "MAP kinase signal-integrating kinase 1"
  "MAPK signal-integrating kinase 1" "Mnk1"))

(define-protein "MLEC_HUMAN" ("PR:Q14165" "Malectin" "MLECs"))

(define-protein "MLXPL_HUMAN"
 ("PR:Q9NP71" "Carbohydrate-responsive element-binding protein"
  "Class D basic helix-loop-helix protein 14" "bHLHd14"
  "MLX interactor" "MLX-interacting protein-like"
  "WS basic-helix-loop-helix leucine zipper protein" "WS-bHLH"
  "Williams-Beuren syndrome chromosomal region 14 protein" "ChREBP"))

(define-protein "MMP12_HUMAN"
 ("PR:P39900" "Macrophage metalloelastase" "MME"
  "Macrophage elastase" "ME" "hME" "Matrix metalloproteinase-12"
  "MMP-12"))

(define-protein "MMP13_HUMAN"
 ("PR:P45452" "Collagenase 3" "Matrix metalloproteinase-13" "MMP-13"
  "collagenase"))

(define-protein "MMP14_HUMAN"
 ("PR:P50281" "Matrix metalloproteinase-14" "MMP-14" "MMP-X1"
  "Membrane-type matrix metalloproteinase 1" "MT-MMP 1" "MTMMP1"
  "Membrane-type-1 matrix metalloproteinase" "MT1-MMP" "MT1MMP" "Mt1"
  "PR:000010925"))

(define-protein "MMP1_HUMAN"
 ("PR:P03956" "Interstitial collagenase" "Fibroblast collagenase"
  "Matrix metalloproteinase-1" "MMP-1" "MMPs"))

(define-protein "MOCOS_HUMAN"
 ("PR:Q96EN8" "Molybdenum cofactor sulfurase" "MCS" "MOS"
  "MoCo sulfurase" "hMCS" "Molybdenum cofactor sulfurtransferase"))

(define-protein "MOES_HUMAN"
 ("Membrane-organizing extension spike protein" "MSNs" "moesin"
  "PR:000003008" "PR:P26038" "PR:O35763" "PR:P26041"))

(define-protein "MOG_HUMAN"
 ("PR:Q16653" "Myelin-oligodendrocyte glycoprotein" "myelin"))

(define-protein "MPCP_HUMAN"
 ("PR:Q00325" "Phosphate carrier protein, mitochondrial"
  "Phosphate transport protein" "PTP"
  "Solute carrier family 25 member 3" "PHCs"))

(define-protein "MRP1_HUMAN"
 ("PR:P33527" "Multidrug resistance-associated protein 1"
  "ATP-binding cassette sub-family C member 1"
  "Leukotriene C(4) transporter" "LTC4 transporter"))

(define-protein "MSH2_HUMAN"
 ("PR:P43246" "DNA mismatch repair protein Msh2"
  "MutS protein homolog 2" "hMSH2"))

(define-protein "MSH3_HUMAN"
 ("PR:P20585" "DNA mismatch repair protein Msh3"
  "Divergent upstream protein" "DUP" "Mismatch repair protein 1"
  "MRP1" "hMSH3"))

(define-protein "MSH6_HUMAN"
 ("PR:P52701" "DNA mismatch repair protein Msh6"
  "G/T mismatch-binding protein" "GTBP" "GTMBP"
  "MutS-alpha 160 kDa subunit" "p160" "hMSH6"))

(define-protein "MSI1H_HUMAN"
 ("PR:O43347" "RNA-binding protein Musashi homolog 1" "Musashi-1"
  "Musashi"))

(define-protein "MTA1_HUMAN"
 ("PR:Q13330" "Metastasis-associated protein MTA1" "MTA1s"))

(define-protein "MTAP2_HUMAN"
 ("PR:P11137" "Microtubule-associated protein 2" "MAP-2"))

(define-protein "MUC1_HUMAN"
 ("PR:P15941" "Mucin-1" "MUC-1"
  "Breast carcinoma-associated antigen DF3" "Cancer antigen 15-3"
  "CA 15-3" "Carcinoma-associated mucin" "Episialin" "H23AG"
  "Krebs von den Lungen-6" "KL-6" "PEMT"
  "Peanut-reactive urinary mucin" "PUM"
  "Polymorphic epithelial mucin" "PEM"
  "Tumor-associated epithelial membrane antigen" "EMA"
  "Tumor-associated mucin" "mucin"))

(define-protein "MUSC_HUMAN"
 ("PR:O60682" "Musculin" "Activated B-cell factor 1" "ABF-1"
  "Class A basic helix-loop-helix protein 22" "bHLHa22" "MSCs"))

(define-protein "MUSK_HUMAN"
 ("PR:O15146" "Muscle, skeletal receptor tyrosine-protein kinase"
  "Muscle-specific tyrosine-protein kinase receptor"
  "Muscle-specific kinase receptor" "MuSK"))

(define-protein "MYD88_HUMAN"
 ("PR:Q99836"
  "Myeloid differentiation primary response protein MyD88" "MyD88"
  "PR:000024846"))

(define-protein "MYF5_HUMAN"
 ("PR:P13349" "Myogenic factor 5" "Myf-5"
  "Class C basic helix-loop-helix protein 2" "bHLHc2" "Myogenic"))

(define-protein "MYLK_HUMAN"
 ("PR:Q15746" "Myosin light chain kinase, smooth muscle" "MLCK"
  "Kinase-related protein" "KRP" "Telokin" "smMLCK"))

(define-protein "MYOG_HUMAN"
 ("Class C basic helix-loop-helix protein 3" "bHLHc3"
  "Myogenic factor 4" "Myf-4" "myogenin" "PR:000010877" "PR:P12979"
  "PR:P20428" "PR:P15173" "PR:P17920"))

(define-protein "MYP0_HUMAN"
 ("PR:P25189" "Myelin protein P0" "Myelin peripheral protein" "MPP"
  "Myelin protein zero" "MPPs"))

(define-protein "Mps1" ("Ephrin type-B receptor 4"))

(define-protein "NALP3_HUMAN"
 ("PR:Q96P20" "NACHT, LRR and PYD domains-containing protein 3"
  "Angiotensin/vasopressin receptor AII/AVP-like"
  "Caterpiller protein 1.1" "CLR1.1"
  "Cold autoinflammatory syndrome 1 protein"
  "PYRIN-containing APAF1-like protein 1" "Cryopyrin"))

(define-protein "NAMPT_HUMAN"
 ("PR:P43490" "Nicotinamide phosphoribosyltransferase" "NAmPRTase"
  "Pre-B-cell colony-enhancing factor 1"
  "Pre-B cell-enhancing factor" "Visfatin" "Nampt" "Nicotinamide"))

(define-protein "NBN_HUMAN"
 ("PR:O60934" "Cell cycle regulatory protein p95"
  "Nijmegen breakage syndrome protein 1" "Nibrin"))

(define-protein "NCOA1_HUMAN"
 ("PR:Q15788" "Nuclear receptor coactivator 1" "NCoA-1"
  "Class E basic helix-loop-helix protein 74" "bHLHe74"
  "Protein Hin-2" "RIP160" "Renal carcinoma antigen NY-REN-52"
  "Steroid receptor coactivator 1" "SRC-1"))

(define-protein "NCOA2_HUMAN"
 ("PR:Q15596" "Nuclear receptor coactivator 2" "NCoA-2"
  "Class E basic helix-loop-helix protein 75" "bHLHe75"
  "Transcriptional intermediary factor 2" "hTIF2"))

(define-protein "NCOA3_HUMAN"
 ("PR:Q9Y6Q9" "Nuclear receptor coactivator 3" "NCoA-3" "ACTR"
  "Amplified in breast cancer 1 protein" "AIB-1"
  "CBP-interacting protein"
  "Class E basic helix-loop-helix protein 42" "bHLHe42"
  "Receptor-associated coactivator 3" "RAC-3"
  "Steroid receptor coactivator protein 3" "SRC-3"
  "Thyroid hormone receptor activator molecule 1" "TRAM-1" "NCoA"
  "pCIP"))

(define-protein "NCTR1_HUMAN"
 ("PR:O76036" "Natural cytotoxicity triggering receptor 1"
  "Lymphocyte antigen 94 homolog" "NK cell-activating receptor"
  "Natural killer cell p46-related protein" "NK-p46" "hNKp46"
  "NKp46"))

(define-protein "NCTR3_HUMAN"
 ("PR:O14931" "Natural cytotoxicity triggering receptor 3"
  "Activating natural killer receptor p30"
  "Natural killer cell p30-related protein" "NK-p30" "NKp30"))

(define-protein "NDE1_HUMAN"
 ("PR:Q9NXR1" "Nuclear distribution protein nudE homolog 1" "nudE"
  "PR:000023423"))

(define-protein "NDP_HUMAN"
 ("PR:Q00604" "Norrie disease protein"
  "X-linked exudative vitreoretinopathy 2 protein" "Norrin"))

(define-protein "NEBU_HUMAN" ("nebulin" "PR:000011107" "PR:P20929"))

(define-protein "NED4L_HUMAN"
 ("PR:Q96PU5" "E3 ubiquitin-protein ligase NEDD4-like" "NEDD4.2"
  "Nedd4-2"))

(define-protein "NEDD4_HUMAN"
 ("PR:P46934" "E3 ubiquitin-protein ligase NEDD4"
  "Cell proliferation-inducing gene 53 protein"
  "Neural precursor cell expressed developmentally down-regulated protein 4"
  "NEDD-4" "Nedd4"))

(define-protein "NELFD_HUMAN"
 ("PR:Q8IXH7" "Negative elongation factor C/D" "NELF-C/D"
  "TH1-like protein" "Th1" "PR:000008439"))

(define-protein "NEUT_HUMAN" ("PR:P30990" "Neurotensin/neuromedin N"))

(define-protein "NGLY1_HUMAN"
 ("PR:Q96IV0"
  "Peptide-N(4)-(N-acetyl-beta-glucosaminyl)asparagine amidase"
  "hPNGase" "N-glycanase 1" "Peptide:N-glycanase" "PNGase"))

(define-protein "NICA_HUMAN" ("PR:Q92542" "Nicastrin"))

(define-protein "NID1_HUMAN"
 ("PR:P14543" "Nidogen-1" "NID-1" "Entactin" "nidogen"))

(define-protein "NIN_HUMAN"
 ("hNinein" "Glycogen synthase kinase 3 beta-interacting protein"
  "GSK3B-interacting protein" "ninein" "PR:000011212" "PR:Q61043"
  "PR:Q8N4C6"))

(define-protein "NKTR_HUMAN"
 ("PR:P30414" "NK-tumor recognition protein" "NK-TR protein"
  "Natural-killer cells cyclophilin-related protein"))

(define-protein "NLK_HUMAN"
 ("PR:Q9UBE8" "Serine/threonine-protein kinase NLK"
  "Nemo-like kinase" "Protein LAK1" "nemo"))

(define-protein "NLRC4_HUMAN"
 ("PR:Q9NPP4" "NLR family CARD domain-containing protein 4"
  "CARD, LRR, and NACHT-containing protein" "Clan protein"
  "Caspase recruitment domain-containing protein 12"
  "Ice protease-activating factor" "Ipaf"))

(define-protein "NOS1_HUMAN"
 ("PR:P29475" "Nitric oxide synthase, brain" "Constitutive NOS"
  "NC-NOS" "NOS type I" "Neuronal NOS" "N-NOS"
  "Peptidyl-cysteine S-nitrosylase NOS1" "bNOS" "nNOS"))

(define-protein "NOS2_HUMAN"
 ("PR:P35228" "Nitric oxide synthase, inducible" "Hepatocyte NOS"
  "HEP-NOS" "Inducible NO synthase" "Inducible NOS" "NOS type II"
  "Peptidyl-cysteine S-nitrosylase NOS2" "iNOS" "iNOSs"))

(define-protein "NOS3_HUMAN"
 ("PR:P29474" "Nitric oxide synthase, endothelial" "Constitutive NOS"
  "EC-NOS" "Endothelial NOS" "NOS type III" "NOSIII" "cNOS" "eNOS"))

(define-protein "NOVA2_HUMAN"
 ("PR:Q9UNW9" "RNA-binding protein Nova-2"
  "Astrocytic NOVA1-like RNA-binding protein"
  "Neuro-oncological ventral antigen 2" "ANOVAs"))

(define-protein "NPHP1_HUMAN"
 ("PR:O15259" "Nephrocystin-1" "Juvenile nephronophthisis 1 protein"))

(define-protein "NPHP4_HUMAN"
 ("PR:O75161" "Nephrocystin-4" "Nephroretinin" "nephrocystin"))

(define-protein "NPS_HUMAN"
 ("PR:P0C0P6" "Neuropeptide S" "neuropeptide"))

(define-protein "NPY_HUMAN" ("PR:P01303" "Pro-neuropeptide Y"))

(define-protein "NR1H3_HUMAN"
 ("PR:Q13133" "Oxysterols receptor LXR-alpha"
  "Liver X receptor alpha"
  "Nuclear receptor subfamily 1 group H member 3" "PR:Q8JHU1"))

(define-protein "NR1H4_HUMAN"
 ("PR:Q96RI1" "Bile acid receptor" "Farnesoid X-activated receptor"
  "Farnesol receptor HRR-1"
  "Nuclear receptor subfamily 1 group H member 4"
  "Retinoid X receptor-interacting protein 14"
  "RXR-interacting protein 14"))

(define-protein "NR4A1_HUMAN"
 ("PR:P22736" "Nuclear receptor subfamily 4 group A member 1"
  "Early response protein NAK1" "Nuclear hormone receptor NUR/77"
  "Orphan nuclear receptor HMR" "Orphan nuclear receptor TR3" "ST-59"
  "Testicular receptor 3" "Nur77"))

(define-protein "NR4A3_HUMAN"
 ("PR:Q92570" "Nuclear receptor subfamily 4 group A member 3"
  "Mitogen-induced nuclear orphan receptor"
  "Neuron-derived orphan receptor 1" "Nuclear hormone receptor NOR-1"
  "Tec" "PR:000001967"))

(define-protein "NREP_HUMAN"
 ("PR:Q16612" "Neuronal regeneration-related protein"
  "Neuronal protein 3.1" "Protein p311" "C5orf13"))

(define-protein "NRTN_HUMAN"
 ("neurturin" "PR:000011439" "PR:A2PYM3" "PR:Q99748" "PR:P97463"
  "PR:Q811Q5"))

(define-protein "NSUN2_HUMAN"
 ("PR:Q08J23" "tRNA (cytosine(34)-C(5))-methyltransferase"
  "Myc-induced SUN domain-containing protein" "Misu"
  "NOL1/NOP2/Sun domain family member 2"
  "Substrate of AIM1/Aurora kinase B"
  "tRNA (cytosine-5-)-methyltransferase"
  "tRNA methyltransferase 4 homolog" "hTrm4" "tRNA"))

(define-protein "NTKL_HUMAN"
 ("PR:Q96KG9" "N-terminal kinase-like protein"
  "Coated vesicle-associated kinase of 90 kDa" "SCY1-like protein 1"
  "Telomerase regulation-associated protein"
  "Telomerase transcriptional element-interacting factor"
  "Teratoma-associated tyrosine kinase" "TRAPs"))

(define-protein "NTM1A_HUMAN"
 ("PR:Q9BV86" "N-terminal Xaa-Pro-Lys N-methyltransferase 1"
  "Alpha N-terminal protein methyltransferase 1A"
  "Methyltransferase-like protein 11A"
  "N-terminal RCC1 methyltransferase"
  "X-Pro-Lys N-terminal protein methyltransferase 1A" "NTM1A"
  "C9orf32"))

(define-protein "NUCB2_HUMAN"
 ("PR:P80303" "Nucleobindin-2" "DNA-binding protein NEFA"
  "Gastric cancer antigen Zg4" "Prepronesfatin" "NEFAs"))

(define-protein "NUCL_HUMAN"
 ("Protein C23" "nucleolin" "PR:000011038" "PR:P09405" "PR:P19338"
  "PR:P13383" "PR:P15771"))

(define-protein "NUDC_HUMAN"
 ("PR:Q9Y266" "Nuclear migration protein nudC"
  "Nuclear distribution protein C homolog" "nudC" "PR:000023421"))

(define-protein "ODFP2_HUMAN"
 ("PR:Q5BJF6" "Outer dense fiber protein 2"
  "Outer dense fiber of sperm tails protein 2" "cenexin"
  "PR:000011598"))

(define-protein "OPSD_HUMAN"
 ("Opsin-2" "rhodopsin" "PR:000001245" "PR:P08100" "PR:P02699"
  "PR:P15409" "PR:P22328" "PR:P35359" "PR:P51489"))

(define-protein "ORC1_HUMAN"
 ("PR:Q13415" "Origin recognition complex subunit 1"
  "Replication control protein 1"))

(define-protein "OSTCN_HUMAN"
 ("Bone Gla protein" "BGP"
  "Gamma-carboxyglutamic acid-containing protein" "osteocalcin"
  "PR:000030444" "PR:P02822" "PR:P02818" "PR:P04640" "PR:P83238"
  "PR:P86546"))

(define-protein "OTUD5_HUMAN"
 ("PR:Q96G74" "OTU domain-containing protein 5"
  "Deubiquitinating enzyme A" "DUBA" "PR:000022507"))

(define-protein "OXA1L_HUMAN"
 ("PR:Q15070" "Mitochondrial inner membrane protein OXA1L" "OXA1Hs"
  "Oxidase assembly 1-like protein" "OXA1-like protein" "hsa"))

(define-protein "P5CS_HUMAN"
 ("PR:P54886" "Delta-1-pyrroline-5-carboxylate synthase" "P5CS"
  "Aldehyde dehydrogenase family 18 member A1" "Gpr" "PR:000034016"))

(define-protein "PA21B_HUMAN"
 ("PR:P04054" "Phospholipase A2" "Group IB phospholipase A2"
  "Phosphatidylcholine 2-acylhydrolase 1B" "phospholipase"
  "PR:A5IUH1" "PR:Q5HEI1" "PR:G5EDU3" "PR:A6U3B0"))

(define-protein "PA24A_HUMAN"
 ("PR:P47712" "Cytosolic phospholipase A2"
  "Phospholipase A2 group IVA" "cPLA2"))

(define-protein "PACS1_HUMAN"
 ("PR:Q6VY07" "Phosphofurin acidic cluster sorting protein 1"
  "PACS-1" "phosphofurin"))

(define-protein "PAEP_HUMAN"
 ("PR:P09466" "Glycodelin" "GD" "Placental protein 14" "PP14"
  "Pregnancy-associated endometrial alpha-2 globulin" "PAEG" "PEG"
  "Progestagen-associated endometrial protein"
  "Progesterone-associated endometrial protein" "PEGs"))

(define-protein "PAHO_HUMAN"
 ("PR:P01298" "Pancreatic prohormone" "Pancreatic polypeptide" "PP"))

(define-protein "PAR2_HUMAN"
 ("PR:P55085" "Proteinase-activated receptor 2" "PAR-2"
  "Coagulation factor II receptor-like 1"
  "G-protein coupled receptor 11" "Thrombin receptor-like 1"
  "proteinase"))

(define-protein "PCNA_HUMAN"
 ("PR:P12004" "Proliferating cell nuclear antigen" "PCNA" "cyclin"
  "PR:000012421"))

(define-protein "PDC6I_HUMAN"
 ("PR:Q8WUM4" "Programmed cell death 6-interacting protein"
  "PDCD6-interacting protein" "ALG-2-interacting protein 1"
  "ALG-2-interacting protein X" "Hp95" "PR:Q1L8Y5"))

(define-protein "PDIA3_HUMAN"
 ("PR:P30101" "Protein disulfide-isomerase A3"
  "58 kDa glucose-regulated protein" "58 kDa microsomal protein"
  "p58" "Disulfide isomerase ER-60"
  "Endoplasmic reticulum resident protein 57" "ER protein 57"
  "Endoplasmic reticulum resident protein 60" "ER protein 60" "ERp60"
  "ERp57"))

(define-protein "PDK2_HUMAN"
 ("PR:Q15119"
  "[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 2, mitochondrial"
  "Pyruvate dehydrogenase kinase isoform 2" "PDH kinase 2" "PDKII"
  "PDK2s"))

(define-protein "PEPD_HUMAN"
 ("PR:P12955" "Xaa-Pro dipeptidase" "X-Pro dipeptidase"
  "Imidodipeptidase" "Peptidase D" "Proline dipeptidase" "Prolidase"
  "PRDs"))

(define-protein "PERI_HUMAN"
 ("PR:P41219" "Neurofilament 4" "peripherin"))

(define-protein "PERM_HUMAN"
 ("MPO" "myeloperoxidase" "PR:000010543" "PR:P11247" "PR:P05164"))

(define-protein "PGRC1_HUMAN"
 ("PR:O00264" "Membrane-associated progesterone receptor component 1"
  "mPR" "mPRs"))

(define-protein "PH4H_HUMAN"
 ("PR:P00439" "Phenylalanine-4-hydroxylase" "PAH"
  "Phe-4-monooxygenase" "PAHs"))

(define-protein "PHAG1_HUMAN"
 ("PR:Q9NWQ8"
  "CBP/PAG"
  "Cbp/PAG"
  "Phosphoprotein associated with glycosphingolipid-enriched microdomains 1"
  "Csk-binding protein" "Transmembrane adapter protein PAG"
  "Transmembrane phosphoprotein Cbp" "Csk"))

(define-protein "PHB2_HUMAN"
 ("PR:Q99623" "Prohibitin-2"
  "B-cell receptor-associated protein BAP37" "D-prohibitin"
  "Repressor of estrogen receptor activity"))

(define-protein "PHB_HUMAN" ("PR:P35232" "Prohibitin" "PHBs"))

(define-protein "PHF12_HUMAN"
 ("PR:Q96QT6" "PHD finger protein 12" "PHD factor 1" "Pf1"))

(define-protein "PHOS_HUMAN"
 ("PR:P20941" "Phosducin" "PHD" "33 kDa phototransducing protein"
  "Protein MEKA" "PHDs"))

(define-protein "PHX2A_HUMAN"
 ("PR:O14813" "Paired mesoderm homeobox protein 2A"
  "ARIX1 homeodomain protein" "Aristaless homeobox protein homolog"
  "Paired-like homeobox 2A"))

(define-protein "PIAS4_HUMAN"
 ("PR:Q8N2W9" "E3 SUMO-protein ligase PIAS4"
  "Protein inhibitor of activated STAT protein 4"
  "Protein inhibitor of activated STAT protein gamma" "PIAS-gamma"
  "PIASy"))

(define-protein "PIEZ1_HUMAN"
 ("PR:Q92508" "Piezo-type mechanosensitive ion channel component 1"
  "Membrane protein induced by beta-amyloid treatment"
  "Protein FAM38A" "Mib"))

(define-protein "PIK3R3" ("Ephrin type-B receptor 4"))

(define-protein "PIP_HUMAN"
 ("PR:P12273" "Prolactin-inducible protein"
  "Gross cystic disease fluid protein 15" "GCDFP-15"
  "Prolactin-induced protein" "Secretory actin-binding protein"
  "SABP" "gp17"))

(define-protein "PKD2_HUMAN"
 ("PR:Q13563" "Polycystin-2"
  "Autosomal dominant polycystic kidney disease type II protein"
  "Polycystic kidney disease 2 protein" "Polycystwin" "R48321"
  "Transient receptor potential cation channel subfamily P member 2"
  "polycystin"))

(define-protein "PKP3_HUMAN" ("PR:Q9Y446" "Plakophilin-3"))

(define-protein "PKP4_HUMAN"
 ("PR:Q99569" "Plakophilin-4" "p0071" "plakophilin"))

(define-protein "PLGF_HUMAN"
 ("PR:P49763" "PlGF" "placenta growth factor"))

(define-protein "PLK1_HUMAN"
 ("PR:P53350" "Serine/threonine-protein kinase PLK1"
  "Polo-like kinase 1" "PLK-1" "Serine/threonine-protein kinase 13"
  "STPK13" "PR:Q6DRK7"))

(define-protein "PLK3_HUMAN"
 ("PR:Q9H4B4" "Serine/threonine-protein kinase PLK3"
  "Cytokine-inducible serine/threonine-protein kinase"
  "FGF-inducible kinase" "Polo-like kinase 3" "PLK-3"
  "Proliferation-related kinase"))

(define-protein "PLMN_HUMAN"
 ("plasminogen" "PR:000012867" "PR:P06868" "PR:P00747" "PR:Q01177"
  "PR:P20918"))

(define-protein "PLXA2_HUMAN"
 ("PR:O75051" "Plexin-A2" "Semaphorin receptor OCT" "OCTs"))

(define-protein "PML_HUMAN"
 ("PR:P29590" "Protein PML" "Promyelocytic leukemia protein"
  "RING finger protein 71" "Tripartite motif-containing protein 19"
  "promyelocytic"))

(define-protein "PMYT1_HUMAN"
 ("PR:Q99640"
  "Membrane-associated tyrosine- and threonine-specific cdc2-inhibitory kinase"
  "Myt1 kinase" "Myt1"))

(define-protein "PO113_HUMAN"
 ("Endogenous retrovirus group K member 113 Pol protein"
  "HERV-K113 Pol protein"
  "HERV-K_19p13.11 provirus ancestral Pol protein"))

(define-protein "PO2F1_HUMAN"
 ("PR:P14859" "POU domain, class 2, transcription factor 1" "NF-A1"
  "Octamer-binding protein 1" "Oct-1"
  "Octamer-binding transcription factor 1" "OTF-1"))

(define-protein "PO5F1_HUMAN"
 ("PR:Q01860" "POU domain, class 5, transcription factor 1"
  "Octamer-binding protein 3" "Oct-3" "Octamer-binding protein 4"
  "Oct-4" "Octamer-binding transcription factor 3" "OTF-3" "Oct"))

(define-protein "POK10_HUMAN"
 ("Endogenous retrovirus group K member 10 Pol protein"
  "HERV-K10 Pol protein" "HERV-K107 Pol protein"
  "HERV-K_5q33.3 provirus ancestral Pol protein" "RNase"
  "PR:000023786"))

(define-protein "POK9_HUMAN"
 ("Endogenous retrovirus group K member 9 Pol protein"
  "HERV-K(C6) Gag-Pol protein" "HERV-K109 Gag-Pol protein"
  "HERV-K_6q14.1 provirus ancestral Gag-Pol polyprotein"))

(define-protein "PP2BA_HUMAN"
 ("PR:Q08209"
  "Serine/threonine-protein phosphatase 2B catalytic subunit alpha isoform"
  "CAM-PRP catalytic subunit"
  "Calmodulin-dependent calcineurin A subunit alpha isoform" "CNAs"))

(define-protein "PPBI_HUMAN"
 ("PR:P09923" "Intestinal-type alkaline phosphatase" "IAP"
  "Intestinal alkaline phosphatase"))

(define-protein "PPIL3_HUMAN"
 ("PR:Q9H2H8" "Peptidyl-prolyl cis-trans isomerase-like 3"
  "Cyclophilin J" "CyPJ" "Cyclophilin-like protein PPIL3"
  "Rotamase PPIL3" "PPIase"))

(define-protein "PR:000000019" ("MAPKs"))

(define-protein "PR:000000034" ("BMPs"))

(define-protein "PR:000000127" ("Smurf" "Smurfs"))

(define-protein "PR:000000735" nil)

(define-protein "PR:000000930" ("staphylococcal"))

(define-protein "PR:000001315" ("PR:P18537"))

(define-protein "PR:000001403" ("tetraspanins"))

(define-protein "PR:000001409" ("Lys"))

(define-protein "PR:000001488" ("muscarinic"))

(define-protein "PR:000001497" ("opioid"))

(define-protein "PR:000001849" ("Slo"))

(define-protein "PR:000002097" ("NaN"))

(define-protein "PR:000002191" ("TRAFs"))

(define-protein "PR:000002201" ("dynein"))

(define-protein "PR:000002226" nil)

(define-protein "PR:000002327" nil)

(define-protein "PR:000003030" nil)

(define-protein "PR:000003039" ("p53S15"))

(define-protein "PR:000003153" ("Ubc"))

(define-protein "PR:000003182" ("p66Shc"))

(define-protein "PR:000003225" ("Env"))

(define-protein "PR:000003507" nil)

(define-protein "PR:000004540" ("Acaa1a"))

(define-protein "PR:000004541" ("Acaa1b"))

(define-protein "PR:000004560" ("Akr1c18"))

(define-protein "PR:000004791" ("Bora" "Boras"))

(define-protein "PR:000004855" ("BubR1"))

(define-protein "PR:000006200" ("Crry"))

(define-protein "PR:000006246" ("Cyp4a10"))

(define-protein "PR:000006521" ("Pref"))

(define-protein "PR:000006572" ("Tid"))

(define-protein "PR:000006629" ("Dok"))

(define-protein "PR:000007177" ("mer"))

(define-protein "PR:000007607" ("MFs"))

(define-protein "PR:000007719" ("Fz2"))

(define-protein "PR:000007723" ("Fz7"))

(define-protein "PR:000007899" ("GCMa"))

(define-protein "PR:000007900" ("GCMb"))

(define-protein "PR:000009189" ("Ins1"))

(define-protein "PR:000010112" ("endo"))

(define-protein "PR:000010735" ("Jumpy"))

(define-protein "PR:000010849" ("myosins"))

(define-protein "PR:000010935" ("mycb"))

(define-protein "PR:000011050" ("Hec1"))

(define-protein "PR:000011141" ("NESs"))

(define-protein "PR:000012180" nil)

(define-protein "PR:000013421" ("mPGES"))

(define-protein "PR:000014828" ("Ruk"))

(define-protein "PR:000015288" nil)

(define-protein "PR:000015919" ("Saa3"))

(define-protein "PR:000015921" ("stearoyl"))

(define-protein "PR:000016749" nil)

(define-protein "PR:000017179" nil)

(define-protein "PR:000021937" nil)

(define-protein "PR:000021998" ("neurotrophin" "neurotrophins"))

(define-protein "PR:000022036" ("ICLs"))

(define-protein "PR:000022055" ("Ade" "Ads"))

(define-protein "PR:000022064" ("Ae"))

(define-protein "PR:000022127" ("argB"))

(define-protein "PR:000022172" ("aspartate"))

(define-protein "PR:000022212" ("BFRs"))

(define-protein "PR:000022249" ("Cbls"))

(define-protein "PR:000022254" ("cca"))

(define-protein "PR:000022283" ("cho"))

(define-protein "PR:000022292" ("citrate"))

(define-protein "PR:000022332" ("Crl"))

(define-protein "PR:000022398" ("dams"))

(define-protein "PR:000022408" ("Dcps"))

(define-protein "PR:000022470" ("dos"))

(define-protein "PR:000022500" ("Eco"))

(define-protein "PR:000022507" ("DUBs" )) ;; "deubiquitinase" is a descriptive term

(define-protein "PR:000022606" ("Fe"))

(define-protein "PR:000022672" ("flk"))

(define-protein "PR:000022673" ("Flu"))

(define-protein "PR:000022684" ("FNRs"))

(define-protein "PR:000022891" ("hisA"))

(define-protein "PR:000023070" ("lacI"))

(define-protein "PR:000023087" ("lexA"))

(define-protein "PR:000023108" ("Lon"))

(define-protein "PR:000023165" ("mapping"))

(define-protein "PR:000023227" ("mgtA"))

(define-protein "PR:000023324" ("mutL"))

(define-protein "PR:000023424" ("nudF"))

(define-protein "PR:000023566" ("pol"))

(define-protein "PR:000023576" ("ppc"))

(define-protein "PR:000023597" ("proB"))

(define-protein "PR:000023662" ("pyrG"))

(define-protein "PR:000023710" ("relA"))

(define-protein "PR:000023715" nil)

(define-protein "PR:000023788" ("Rnd"))

(define-protein "PR:000023953" ("Skp"))

(define-protein "PR:000023959" ("slyD"))

(define-protein "PR:000023964" ("MnSOD"))

(define-protein "PR:000024021" nil)

(define-protein "PR:000024024" ("Tam"))

(define-protein "PR:000024027" ("Ta"))

(define-protein "PR:000024070" ("Trigger"))

(define-protein "PR:000024112" ("trkA"))

(define-protein "PR:000024121" ("trpE"))

(define-protein "PR:000024129" ("trxA"))

(define-protein "PR:000024142" ("Tu"))

(define-protein "PR:000024862" ("Sak"))

(define-protein "PR:000025105" ("Rot"))

(define-protein "PR:000025129" ("Sey"))

(define-protein "PR:000025350" ("HSP90s"))

(define-protein "PR:000025824" ("axin"))

(define-protein "PR:000025844" ("ephrin" "ephrins"))

(define-protein "PR:000025876" ("ovalbumin"))

(define-protein "PR:000026433" nil)

(define-protein "PR:000026438" nil)

(define-protein "PR:000026989" ("pTau"))

(define-protein "PR:000027169" ("DDRs"))

(define-protein "PR:000027410" ("proteasomal"))

(define-protein "PR:000027997" ("Dap"))

(define-protein "PR:000028269" ("thyroid"))

(define-protein "PR:000028438" ("casein"))

(define-protein "PR:000028509" ("chaperonin"))

(define-protein "PR:000028799" ("tubulin" "GO:0045298" "tubulins"))

(define-protein "PR:000029032" ("Mus"))

(define-protein "PR:000029055" ("Saccharomyces"))

(define-protein "PR:000029060" ("Drosophila"))

(define-protein "PR:000029171" nil)

(define-protein "PR:000029177" ("Fib"))

(define-protein "PR:000029187" ("p90RSK"))

(define-protein "PR:000029189" ("AKTs"))

(define-protein "PR:000029193" nil)

(define-protein "PR:000033494" ("Ppa"))

(define-protein "PR:000033987" ("lacZ"))

(define-protein "PR:000034167" ("enoyl"))

(define-protein "PR:000034540" nil)

(define-protein "PR:000034986" ("Saa2"))

(define-protein "PR:000035019" ("bax"))

(define-protein "PR:000035524" ("H3T3ph"))

(define-protein "PR:000036819" nil)

(define-protein "PR:000037068" ("selenoprotein"))

(define-protein "PR:000037069"
 ("glycoprotein" "CHEBI:17089" "glycoproteins"))

(define-protein "PR:000037070" ("phosphoprotein" "phosphoproteins"))

(define-protein "PR:000037076" ("isoprenylated"))

(define-protein "PR:000037457" ("H3K27me3"))

(define-protein "PR:000044374" ("TAp63"))

(define-protein "PR:A0JMN8" ("oxysterol"))

(define-protein "PR:A2AVJ3" ("cGMP"))

(define-protein "PR:A2BHN0" ("Annexins" "annexin"))

(define-protein "PR:A5WWI6" ("profilins"))

(define-protein "PR:A8DU70" ("kaiso"))

(define-protein "PR:B0V349" ("claudin" "claudins"))

(define-protein "PR:B1PBZ7" ("Sprouty1"))

(define-protein "PR:B9A0M5" ("Chibby"))

(define-protein "PR:C0RM12" ("Glycerol"))

(define-protein "PR:D2D3P4" ("Rab27a"))

(define-protein "PR:D3ZHV3"
 ("metallothionein" "metallothioneine" "metallothioneins"))

(define-protein "PR:D3ZUG8" ("ferritin" "GO:0070288" "CHEBI:82594"))

(define-protein "PR:D4A9L7" ("lipase" "GO:0016298" "DRON:6406"))

(define-protein "PR:D4ADM6" ("alkaline"))

(define-protein "PR:D8HDP6"
 ("hydrolase" "GO:0008233" "GO:0010466" "GO:0010952" "GO:0016787"
  "GO:0052547"))

(define-protein "PR:E5QQU3"
 ("trypsin" "trypsinization" "trypsinized" "CHEBI:9765"))

(define-protein "PR:E9Q7N4" ("diacylglycerol"))

(define-protein "PR:F1LP42" nil)

(define-protein "PR:F1NL59" ("caspase"))

(define-protein "PR:F1P167" ("chemokine" "GO:0008009" "chemokines"))

(define-protein "PR:F4IBV4" ("glycosyltransferase" "GO:0016757"))

(define-protein "PR:F4JG68"
 ("methyltransferase" "GO:0008168" "methyltransferases"))

(define-protein "PR:G5EGD2" ("hypoxia"))

(define-protein "PR:O14682" ("hENC1"))

(define-protein "PR:O14746" ("hTERT"))

(define-protein "PR:O88587-2" nil)

(define-protein "PR:O95905" ("hECD"))

(define-protein "PR:P00533" ("hEGFR"))

(define-protein "PR:P01132" ("mEGF"))

(define-protein "PR:P01133" ("hEGF"))

(define-protein "PR:P01237" ("rPRL"))

(define-protein "PR:P02701" ("avidin"))

(define-protein "PR:P04406" ("hGAPDH"))

(define-protein "PR:P05046" ("lectin"))

(define-protein "PR:P07101" ("hTH"))

(define-protein "PR:P07141" ("mCSF1"))

(define-protein "PR:P09038" ("hFGF2"))

(define-protein "PR:P0CG63"
 ("polyubiquitinate" "polyubiquitinated" "polyubiquitination"))

(define-protein "PR:P0CG72" ("polyubiquitin"))

(define-protein "PR:P10636-8" ("hTau40"))

(define-protein "PR:P13395" ("spectrin"))

(define-protein "PR:P13466" nil)

(define-protein "PR:P15018" ("hLIF"))

(define-protein "PR:P15057" ("lysozyme" "GO:0003796"))

(define-protein "PR:P15559" ("hNQO1"))

(define-protein "PR:P15941" ("hMUC1"))

(define-protein "PR:P16070" ("hCD44"))

(define-protein "PR:P16382" ("mIL4R"))

(define-protein "PR:P16599" ("rTNF"))

(define-protein "PR:P21237" ("mBDNF"))

(define-protein "PR:P25942" ("hCD40"))

(define-protein "PR:P27512" ("mCD40"))

(define-protein "PR:P27619" ("dynamin" "NCBITaxon:127334"))

(define-protein "PR:P37370" ("verprolin"))

(define-protein "PR:P37818" ("arginase" "GO:0004053"))

(define-protein "PR:P40338" ("mVHL"))

(define-protein "PR:P40692" ("hMLH1"))

(define-protein "PR:P41241" ("mCSK"))

(define-protein "PR:P42226" ("hSTAT6"))

(define-protein "PR:P51125" ("mCAST"))

(define-protein "PR:P54278" ("hPMS2"))

(define-protein "PR:P62332" ("rARF6"))

(define-protein "PR:P78929" ("cofilin"))

(define-protein "PR:Q00987" ("hMDM2"))

(define-protein "PR:Q01279" ("mEGFR"))

(define-protein "PR:Q01603" ("peroxidase" "GO:0004601" "CHEBI:8027"))

(define-protein "PR:Q04205" ("tensin"))

(define-protein "PR:Q05858" ("formin"))

(define-protein "PR:Q06226" ("rSGK1"))

(define-protein "PR:Q0GKC8" ("noxa"))

(define-protein "PR:Q15KG7" ("interleukin" "interleukins"))

(define-protein "PR:Q23551" ("twitchin"))

(define-protein "PR:Q27371" ("troponin"))

(define-protein "PR:Q27571" ("nitric"))

(define-protein "PR:Q4A1S8" nil)

(define-protein "PR:Q54EH1" ("epsin"))

(define-protein "PR:Q5EC55" ("Anti"))

(define-protein "PR:Q5T5Y3" ("hCAMSAP1"))

(define-protein "PR:Q60803" ("mTRAF3"))

(define-protein "PR:Q63135" ("rCrry"))

(define-protein "PR:Q66HL2" ("cortactin"))

(define-protein "PR:Q6AYK2" ("rJMJD6"))

(define-protein "PR:Q6DI22" ("hydroxyacyl"))

(define-protein "PR:Q6NY87" nil)

(define-protein "PR:Q6UY90" nil)

(define-protein "PR:Q6YBR5" nil)

(define-protein "PR:Q7KY01" ("aquaporin"))

(define-protein "PR:Q7T0K5" ("PR:Q9I7L4" "mage"))

(define-protein "PR:Q86IX6" ("Bromodomain"))

(define-protein "PR:Q8CAV0" ("ribonuclease" "GO:0004540"))

(define-protein "PR:Q8FVH5" ("aminotransferase" "GO:0008483"))

(define-protein "PR:Q8FXM4" ("ATPases"))

(define-protein "PR:Q8LFL8" ("Sm"))

(define-protein "PR:Q8QFX4" nil)

(define-protein "PR:Q8RU07" ("malonyl"))

(define-protein "PR:Q8WTK2" ("hexosaminidase"))

(define-protein "PR:Q8YF67" nil)

(define-protein "PR:Q8YGD0" ("exonuclease" "GO:0004527"))

(define-protein "PR:Q90743" ("amyloid"))

(define-protein "PR:Q90ZY9" ("syndecan" "EG:6382"))

(define-protein "PR:Q95RG8" ("Git"))

(define-protein "PR:Q95TN8" ("Greatwall"))

(define-protein "PR:Q96HS1" ("hPGAM5"))

(define-protein "PR:Q9BVP2" ("hGNL3"))

(define-protein "PR:Q9BXM7" ("hPINK1"))

(define-protein "PR:Q9CA92" ("helicases"))

(define-protein "PR:Q9DGN5" ("transporting"))

(define-protein "PR:Q9GSG9" ("Wiscott"))

(define-protein "PR:Q9LVI9" ("dehydrogenase"))

(define-protein "PR:Q9SIW2" ("chromatin"))

(define-protein "PR:Q9SUP1"
 ("oxidoreductase" "GO:0016491" "oxidoreductases"))

(define-protein "PR:Q9ULR0" ("hISY1"))

(define-protein "PR:Q9UNH5" ("hCDC14A"))

(define-protein "PR:Q9V3E7" ("Ali"))

(define-protein "PR:Q9VC36" ("Polybromo"))

(define-protein "PR:Q9VRI0" ("helicase" "EG:164045" "GO:0004386"))

(define-protein "PR:Q9VW57" ("Grasp65"))

(define-protein "PR:Q9VWE0" ("cytokine"))

(define-protein "PR:Q9VXE9" nil)

(define-protein "PR:Q9W1M7" ("phosphatidylinositol"))

(define-protein "PR:Q9Z1M8" ("mIK"))

(define-protein "PRDBP_HUMAN"
 ("PR:Q969G5" "Protein kinase C delta-binding protein" "Cavin-3"
  "Serum deprivation response factor-related gene product that binds to C-kinase"
  "hSRBC"))

(define-protein "PRDX2_HUMAN"
 ("PR:P32119" "Peroxiredoxin-2"
  "Natural killer cell-enhancing factor B" "NKEF-B" "PRP"
  "Thiol-specific antioxidant protein" "TSA"
  "Thioredoxin peroxidase 1"
  "Thioredoxin-dependent peroxide reductase 1" "peroxiredoxin"
  "PR:000022070"))

(define-protein "PRDX3_HUMAN"
 ("PR:P30048"
  "Thioredoxin-dependent peroxide reductase, mitochondrial"
  "Antioxidant protein 1" "AOP-1" "HBC189" "Peroxiredoxin III"
  "Prx-III" "Peroxiredoxin-3" "Protein MER5 homolog" "Prx"))

(define-protein "PRDX5_HUMAN"
 ("PR:P30044" "Peroxiredoxin-5, mitochondrial" "Alu corepressor 1"
  "Antioxidant enzyme B166" "AOEB166" "Liver tissue 2D-page spot 71B"
  "PLP" "Peroxiredoxin V" "Prx-V" "Peroxisomal antioxidant enzyme"
  "TPx type VI" "Thioredoxin peroxidase PMP20"
  "Thioredoxin reductase" "antioxidant"))

(define-protein "PRDX6_HUMAN"
 ("PR:P30041" "Peroxiredoxin-6" "1-Cys peroxiredoxin" "1-Cys PRX"
  "24 kDa protein" "Acidic calcium-independent phospholipase A2"
  "aiPLA2" "Antioxidant protein 2" "Liver 2D page spot 40"
  "Non-selenium glutathione peroxidase" "NSGPx"
  "Red blood cells page spot 12"))

(define-protein "PRGR_HUMAN"
 ("PR:P06401" "Progesterone receptor" "PR"
  "Nuclear receptor subfamily 3 group C member 3" "progesterone"))

(define-protein "PRIMA_HUMAN"
 ("PR:Q86XR5" "Proline-rich membrane anchor 1" "PRiMA"))

(define-protein "PRIO_HUMAN"
 ("PR:P04156" "Major prion protein" "ASCR" "PrP27-30" "PrP33-35C"
  "PrP"))

(define-protein "PRKX_HUMAN"
 ("PR:P51817" "cAMP-dependent protein kinase catalytic subunit PRKX"
  "Protein kinase X" "Protein kinase X-linked"
  "Serine/threonine-protein kinase PRKX" "Protein kinase PKX1"
  "PrKX"))

(define-protein "PRL_HUMAN"
 ("PRL" "prolactin" "CHEBI:81580" "PR:000013246" "PR:P06879"
  "PR:P14676" "PR:P01236" "PR:P01237"))

(define-protein "PROF1_HUMAN"
 ("PR:P07737" "Profilin-1" "Epididymis tissue protein Li 184a"
  "Profilin I"))

(define-protein "PROF2_HUMAN"
 ("PR:P35080" "Profilin-2" "Profilin II" "profilin" "PR:A5WWI6"))

(define-protein "PRS6A_HUMAN"
 ("PR:P17980" "26S protease regulatory subunit 6A"
  "26S proteasome AAA-ATPase subunit RPT5"
  "Proteasome 26S subunit ATPase 3" "Proteasome subunit P50"
  "Tat-binding protein 1" "TBP-1"))

(define-protein "PSA3_HUMAN"
 ("PR:P25788" "Proteasome subunit alpha type-3"
  "Macropain subunit C8"
  "Multicatalytic endopeptidase complex subunit C8"
  "Proteasome component C8"))

(define-protein "PSB2_HUMAN"
 ("PR:P49721" "Proteasome subunit beta type-2"
  "Macropain subunit C7-I"
  "Multicatalytic endopeptidase complex subunit C7-I"
  "Proteasome component C7-I" 
  ;;"proteasome" THIS PROTEIN IS NOT THE PROTEASOME
  "PR:Q9M330"
  "PR:000027410"))

(define-protein "PSB4_HUMAN"
 ("PR:P28070" "Proteasome subunit beta type-4"
  "26 kDa prosomal protein" "HsBPROS26" "PROS-26"
  "Macropain beta chain"
  "Multicatalytic endopeptidase complex beta chain"
  "Proteasome beta chain" "Proteasome chain 3" "HsN3"))

(define-protein "PSD4_HUMAN"
 ("PR:Q8NDX1" "PH and SEC7 domain-containing protein 4"
  "Exchange factor for ADP-ribosylation factor guanine nucleotide factor 6 B"
  "Exchange factor for ARF6 B"
  "Pleckstrin homology and SEC7 domain-containing protein 4"
  "Telomeric of interleukin-1 cluster protein" "TICs"))

(define-protein "PSN1_HUMAN"
 ("PR:P49768" "Presenilin-1" "PS-1" "Protein S182" "presenilin"))

(define-protein "PTBP1_HUMAN"
 ("PR:P26599" "Polypyrimidine tract-binding protein 1" "PTB"
  "57 kDa RNA-binding protein PPTB-1"
  "Heterogeneous nuclear ribonucleoprotein I" "hnRNP I"))

(define-protein "PTBP3_HUMAN"
 ("PR:O95758" "Polypyrimidine tract-binding protein 3"
  "Regulator of differentiation 1" "Rod1"))

(define-protein "PTMA_HUMAN"
 ("PR:P06454" "Prothymosin alpha" "prothymosin"))

(define-protein "PTN_HUMAN"
 ("PR:P21246" "Pleiotrophin" "PTN" "Heparin-binding brain mitogen"
  "HBBM" "Heparin-binding growth factor 8" "HBGF-8"
  "Heparin-binding growth-associated molecule" "HB-GAM"
  "Heparin-binding neurite outgrowth-promoting factor 1" "HBNF-1"
  "Osteoblast-specific factor 1" "OSF-1"))

(define-protein "PTPRC_HUMAN"
 ("PR:P08575" "Receptor-type tyrosine-protein phosphatase C"
  "Leukocyte common antigen" "L-CA" "T200" "leukocyte"))

(define-protein "PVRL1_HUMAN"
 ("PR:Q15223" "Nectin-1" "Herpes virus entry mediator C"
  "Herpesvirus entry mediator C" "HveC"
  "Herpesvirus Ig-like receptor" "HIgR"
  "Poliovirus receptor-related protein 1"))

(define-protein "PVRL2_HUMAN"
 ("PR:Q92692" "Nectin-2" "Herpes virus entry mediator B"
  "Herpesvirus entry mediator B" "HveB"
  "Poliovirus receptor-related protein 2"))

(define-protein "PVRL3_HUMAN"
 ("PR:Q9NQS3" "Nectin-3" "CDw113"
  "Poliovirus receptor-related protein 3" "nectin"))

(define-protein "PYC_HUMAN"
 ("PR:P11498" "Pyruvate carboxylase, mitochondrial"
  "Pyruvic carboxylase" "PCB" "PCBs" "pyruvate" "PR:E7FAD4"
  "PR:Q6GG09" "PR:Q10208"))


(define-protein "Q693C6_9INFA" ("Matrix protein 1"))

(define-protein "QOR_HUMAN"
 ("PR:Q08257" "Quinone oxidoreductase" "NADPH:quinone reductase"
  "Zeta-crystallin" "quinone"))

(define-protein "RABE1_HUMAN"
 ("PR:Q15276" "Rab GTPase-binding effector protein 1" "Rabaptin-4"
  "Rabaptin-5" "Rabaptin-5alpha" "Renal carcinoma antigen NY-REN-17"
  "Rabaptin"))

(define-protein "RAD50_HUMAN"
 ("PR:Q92878" "DNA repair protein RAD50" "hRAD50"))

(define-protein "RADI_HUMAN"
 ("radixin" "PR:000003009" "PR:P26043" "PR:Q66I42" "PR:Q9PU45"
  "PR:P26044" "PR:P35241"))

(define-protein "RAG2_HUMAN"
 ("PR:P55895" "V(D)J recombination-activating protein 2" "RAG-2"))

(define-protein "RAGP1_HUMAN"
 ("PR:P46060" "Ran GTPase-activating protein 1" "RanGAP1"))

(define-protein "RAIN_HUMAN"
 ("PR:Q5U651" "Ras-interacting protein 1" "Rain" "Raines"))

(define-protein "RANB3_HUMAN"
 ("PR:Q9H6Z4" "Ran-binding protein 3" "RanBP3"))

(define-protein "RANG_HUMAN"
 ("PR:P43487" "Ran-specific GTPase-activating protein"
  "Ran-binding protein 1" "RanBP1"))

(define-protein "RARA_HUMAN"
 ("PR:P10276" "Retinoic acid receptor alpha" "RAR-alpha"
  "Nuclear receptor subfamily 1 group B member 1" "retinoic"))

(define-protein "RBM40_HUMAN"
 ("PR:Q96LT9" "RNA-binding protein 40" "RNA-binding motif protein 40"
  "RNA-binding region-containing protein 3"
  "U11/U12 small nuclear ribonucleoprotein 65 kDa protein"
  "U11/U12 snRNP 65 kDa protein" "U11/U12-65K" "RNPs"))

(define-protein "RBP2_HUMAN"
 ("PR:P49792" "E3 SUMO-protein ligase RanBP2" "358 kDa nucleoporin"
  "Nuclear pore complex protein Nup358" "Nucleoporin Nup358"
  "Ran-binding protein 2" "p270" "RanBP2"))

(define-protein "RBPMS_HUMAN"
 ("PR:Q93062" "RNA-binding protein with multiple splicing" "RBP-MS"
  "Heart and RRM expressed sequence" "Hermes"))

(define-protein "RBX1_HUMAN"
 ("PR:P62877" "E3 ubiquitin-protein ligase RBX1" "Protein ZYP"
  "RING finger protein 75" "RING-box protein 1"
  "Regulator of cullins 1" "Rbx1"))

(define-protein "RB_HUMAN"
 ("PR:P06400" "Retinoblastoma-associated protein" "p105-Rb" "Rb"
  "pp110" "pRb"))

(define-protein "REG1A_HUMAN"
 ("PR:P05451" "Lithostathine-1-alpha"
  "Islet cells regeneration factor" "ICRF"
  "Islet of Langerhans regenerating protein" "REG"
  "Pancreatic stone protein" "PSP" "Pancreatic thread protein" "PTP"
  "Regenerating islet-derived protein 1-alpha" "REG-1-alpha"
  "Regenerating protein I alpha" "PTPs"))

(define-protein "RELN_HUMAN"
 ("reelin" "PR:000013879" "PR:P78509" "PR:P58751" "PR:Q60841"))

(define-protein "RENI_HUMAN"
 ("Angiotensinogenase" "renin" "PR:000013883" "PR:P08424" "PR:P00797"
  "PR:Q9TSZ1" "PR:Q6XQJ0"))

(define-protein "REP15_HUMAN"
 ("PR:Q6BDI9" "Rab15 effector protein" "Rab15"))

(define-protein "RET4_HUMAN"
 ("PR:P02753" "Retinol-binding protein 4"
  "Plasma retinol-binding protein" "PRBP" "RBP" "RBPs"))

(define-protein "RFX1_HUMAN"
 ("PR:P22670" "MHC class II regulatory factor RFX1"
  "Enhancer factor C" "EF-C" "Regulatory factor X 1" "RFX"
  "Transcription factor RFX1" "RFXs"))

(define-protein "RGAP1_HUMAN"
 ("PR:Q9H0H5" "Rac GTPase-activating protein 1"
  "Male germ cell RacGap" "Protein CYK4 homolog" "CYK4" "HsCYK-4"
  "HsCYK" "MgcRacGAP"))

(define-protein "RGS3_HUMAN"
 ("PR:P49796" "Regulator of G-protein signaling 3" "RGP3" "RGS3"
  "PR:Q94547"))

(define-protein "RHBL2_HUMAN"
 ("PR:Q9NX52" "Rhomboid-related protein 2" "RRP2"
  "Rhomboid-like protein 2" "NTFs"))

(define-protein "RNAS1_HUMAN"
 ("PR:P07998" "Ribonuclease pancreatic" "HP-RNase" "RIB-1"
  "RNase UpI-1" "Ribonuclease 1" "RNase 1" "Ribonuclease A"
  "RNase A"))

(define-protein "RNC_HUMAN"
 ("PR:Q9NRR4" "Ribonuclease 3" "Protein Drosha" "Ribonuclease III"
  "RNase III" "p241"))

(define-protein "RND1_HUMAN"
 ("PR:Q92730" "Rho-related GTP-binding protein Rho6"
  "Rho family GTPase 1" "Rnd1"))

(define-protein "RND3_HUMAN"
 ("PR:P61587" "Rho-related GTP-binding protein RhoE" "Protein MemB"
  "Rho family GTPase 3" "Rho-related GTP-binding protein Rho8"
  "Rnd3"))

(define-protein "ROA1_HUMAN"
 ("PR:P09651" "Heterogeneous nuclear ribonucleoprotein A1" "hnRNP A1"
  "Helix-destabilizing protein" "Single-strand RNA-binding protein"
  "hnRNP core protein A1" "hnRNP"))

(define-protein "ROA2_HUMAN"
 ("PR:P22626" "Heterogeneous nuclear ribonucleoproteins A2/B1"
  "hnRNP A2/B1"))

(define-protein "RRAGA_HUMAN"
 ("PR:Q7L523" "Ras-related GTP-binding protein A" "Rag A"
  "Adenovirus E3 14.7 kDa-interacting protein 1" "FIP-1" "RagA"
  "Rags"))

(define-protein "RRAGB_HUMAN"
 ("PR:Q5VZM2" "Ras-related GTP-binding protein B" "Rag B" "Rag"
  "RagB"))

(define-protein "RRAGC_HUMAN"
 ("PR:Q9HB90" "Ras-related GTP-binding protein C" "Rag C"
  "GTPase-interacting protein 2" "TIB929" "RagC"))

(define-protein "RRAGD_HUMAN"
 ("PR:Q9NQL2" "Ras-related GTP-binding protein D" "Rag D" "RagD"))

(define-protein "RSF1_HUMAN"
 ("PR:Q96T23" "Remodeling and spacing factor 1" "Rsf-1"
  "HBV pX-associated protein 8"
  "Hepatitis B virus X-associated protein"
  "p325 subunit of RSF chromatin-remodeling complex"))

(define-protein "RTKN_HUMAN"
 ("rhotekin" "PR:000014342" "PR:Q8C6B2" "PR:Q6V7V2" "PR:Q9BST9"))

(define-protein "RTN3_HUMAN"
 ("PR:O95197" "Reticulon-3" "Homolog of ASY protein" "HAP"
  "Neuroendocrine-specific protein-like 2" "NSP-like protein 2"
  "Neuroendocrine-specific protein-like II" "NSP-like protein II"
  "NSPLII" "reticulon"))

(define-protein "RUBIC_HUMAN"
 ("PR:Q92622"
  "Run domain Beclin-1 interacting and cysteine-rich containing protein"
  "Beclin-1 associated RUN domain containing protein" "Baron"
  "Rubicon"))

(define-protein "RUSC1_HUMAN"
 ("PR:Q9BVN2" "RUN and SH3 domain-containing protein 1"
  "New molecule containing SH3 at the carboxy-terminus" "Nesca"))

(define-protein "RYR1_HUMAN"
 ("PR:P21817" "Ryanodine receptor 1" "RYR-1"
  "Skeletal muscle calcium release channel"
  "Skeletal muscle ryanodine receptor"
  "Skeletal muscle-type ryanodine receptor"
  "Type 1 ryanodine receptor" "RyR1"))

(define-protein "RYR2_HUMAN"
 ("PR:Q92736" "Ryanodine receptor 2" "RYR-2" "hRYR-2"
  "Cardiac muscle ryanodine receptor"
  "Cardiac muscle ryanodine receptor-calcium release channel"
  "Type 2 ryanodine receptor" "RyR2" "Ryanodine"))

(define-protein "RYR3_HUMAN"
 ("PR:Q15413" "Ryanodine receptor 3" "RYR-3"
  "Brain ryanodine receptor-calcium release channel"
  "Brain-type ryanodine receptor" "Type 3 ryanodine receptor" "RyR3"))

(define-protein "S10A6_HUMAN"
 ("PR:P06703" "Protein S100-A6" "Growth factor-inducible protein 2A9"
  "MLN 4" "Prolactin receptor-associated protein" "PRA"
  "S100 calcium-binding protein A6" "calcyclin"))

(define-protein "S22A1_HUMAN"
 ("PR:O15245" "Solute carrier family 22 member 1"
  "Organic cation transporter 1" "hOCT1"))

(define-protein "S22A2_HUMAN"
 ("PR:O15244" "Solute carrier family 22 member 2"
  "Organic cation transporter 2" "hOCT2"))

(define-protein "S2A4R_HUMAN"
 ("PR:Q9NR83" "SLC2A4 regulator" "GLUT4 enhancer factor" "GEF"
  "Huntington disease gene regulatory region-binding protein 1"
  "HDBP-1" "GEFs"))

(define-protein "S35A2_HUMAN"
 ("PR:P78381" "UDP-galactose translocator"
  "Solute carrier family 35 member A2" "UDP-galactose transporter"
  "UDP-Gal-Tr" "UGT" "UGTs"))

(define-protein "SAR1A_HUMAN"
 ("PR:Q9NR31" "GTP-binding protein SAR1a"
  "COPII-associated small GTPase" "SARA" "PR:000000125"))

(define-protein "SCRIB_HUMAN"
 ("PR:Q14160" "Protein scribble homolog" "hScrib" "Protein LAP4"
  "Scribble"))

(define-protein "SET1A_HUMAN"
 ("PR:O15047" "Histone-lysine N-methyltransferase SETD1A"
  "Lysine N-methyltransferase 2F" "SET domain-containing protein 1A"
  "Set1/Ash2 histone methyltransferase complex subunit SET1"
  "hSET1A"))

(define-protein "SET1B_HUMAN"
 ("PR:Q9UPS6" "Histone-lysine N-methyltransferase SETD1B"
  "Lysine N-methyltransferase 2G" "SET domain-containing protein 1B"
  "hSET1B"))

(define-protein "SF01_HUMAN"
 ("PR:Q15637" "Splicing factor 1"
  "Mammalian branch point-binding protein" "BBP"
  "Transcription factor ZFM1" "Zinc finger gene in MEN1 locus"
  "Zinc finger protein 162" "mBBP"))

(define-protein "SF3B1_HUMAN"
 ("PR:O75533" "Splicing factor 3B subunit 1"
  "Pre-mRNA-splicing factor SF3b 155 kDa subunit"
  "Spliceosome-associated protein 155" "SAP 155" "SF3b155"))

(define-protein "SFRP1_HUMAN"
 ("PR:Q8N474" "Secreted frizzled-related protein 1" "FRP-1" "sFRP-1"
  "Secreted apoptosis-related protein 2" "SARP-2" "sFRP"))

(define-protein "SGOL2_HUMAN"
 ("PR:Q562F6" "Shugoshin-like 2" "Shugoshin-2" "Tripin" "Sgo2"))

(define-protein "SGPP1_HUMAN"
 ("PR:Q9BX95" "Sphingosine-1-phosphate phosphatase 1" "SPPase1"
  "hSPP1" "hSPPase1" "Sphingosine-1-phosphatase 1" "Spp1"))

(define-protein "SH22A_HUMAN"
 ("PR:Q9NP31" "SH2 domain-containing protein 2A"
  "SH2 domain-containing adapter protein"
  "T cell-specific adapter protein"
  "VEGF receptor-associated protein" "TSAd"))

(define-protein "SH319_HUMAN"
 ("PR:Q5HYK7" "SH3 domain-containing protein 19"
  "ADAM-binding protein Eve-1" "EEN-binding protein" "EBP"))

(define-protein "SHAN1_HUMAN"
 ("PR:Q9Y566" "SH3 and multiple ankyrin repeat domains protein 1"
  "Somatostatin receptor-interacting protein"
  "SSTR-interacting protein" "SSTRIP" "Shank1"))

(define-protein "SHAN2_HUMAN"
 ("PR:Q9UPX8" "SH3 and multiple ankyrin repeat domains protein 2"
  "Cortactin-binding protein 1" "CortBP1"
  "Proline-rich synapse-associated protein 1" "Shank2"))

(define-protein "SHAN3_HUMAN"
 ("PR:Q9BYB0" "SH3 and multiple ankyrin repeat domains protein 3"
  "Proline-rich synapse-associated protein 2" "ProSAP2" "Shank3"))

(define-protein "SHBG_HUMAN"
 ("PR:P04278" "Sex hormone-binding globulin" "SHBG"
  "Sex steroid-binding protein" "SBP"
  "Testis-specific androgen-binding protein" "ABP"
  "Testosterone-estradiol-binding globulin" "TeBG"
  "Testosterone-estrogen-binding globulin"))

(define-protein "SHH_HUMAN"
 ("PR:Q15465" "Sonic hedgehog protein" "SHH" "HHG-1" "Sonic"))

(define-protein "SHLB1_HUMAN"
 ("PR:Q9Y371" "Endophilin-B1" "Bax-interacting factor 1" "Bif-1"
  "SH3 domain-containing GRB2-like protein B1" "Bif"))

(define-protein "SHSA5_HUMAN"
 ("PR:Q8N114" "Protein shisa-5"
  "Putative NF-kappa-B-activating protein 120" "Scotin"))

(define-protein "SIAH2_HUMAN"
 ("PR:O43255" "E3 ubiquitin-protein ligase SIAH2"
  "Seven in absentia homolog 2" "Siah-2" "hSiah2" "Seven" "Siah2"
  "PR:000014861"))

(define-protein "SIK1_HUMAN"
 ("PR:P57059" "Serine/threonine-protein kinase SIK1"
  "Salt-inducible kinase 1" "SIK-1"
  "Serine/threonine-protein kinase SNF1-like kinase 1"
  "Serine/threonine-protein kinase SNF1LK"))

(define-protein "SKIL_HUMAN"
 ("PR:P12757" "Ski-like protein" "Ski-related oncogene"
  "Ski-related protein" "SNOs"))

(define-protein "SLAF1_HUMAN"
 ("PR:Q13291" "Signaling lymphocytic activation molecule" "IPO-3"
  "CDw150"))

(define-protein "SMAD1_HUMAN"
 ("PR:Q15797" "Mothers against decapentaplegic homolog 1"
  "MAD homolog 1" "Mothers against DPP homolog 1" "JV4-1"
  "Mad-related protein 1" "SMAD family member 1" "SMAD 1" "hSMAD1"
  "Transforming growth factor-beta-signaling protein 1" "BSP-1"
  "SMADs" "Smad1"))

(define-protein "SMAD2_HUMAN"
 ("PR:Q15796" "Mothers against decapentaplegic homolog 2"
  "MAD homolog 2" "Mothers against DPP homolog 2" "JV18-1"
  "Mad-related protein 2" "hMAD-2" "SMAD family member 2" "SMAD 2"
  "Smad2" "hSMAD2"))

(define-protein "SMAD3_HUMAN"
 ("PR:P84022" "Mothers against decapentaplegic homolog 3"
  "MAD homolog 3" "Mothers against DPP homolog 3" "hMAD-3" "JV15-2"
  "SMAD family member 3" "SMAD 3" "hSMAD3" "Mad3" "Smad3"))

(define-protein "SMAD4_HUMAN"
 ("PR:Q13485" "Mothers against decapentaplegic homolog 4"
  "MAD homolog 4" "Mothers against DPP homolog 4"
  "Deletion target in pancreatic carcinoma 4" "SMAD family member 4"
  "SMAD 4" "hSMAD4" "Smad4"))

(define-protein "SMAD5_HUMAN"
 ("PR:Q99717" "Mothers against decapentaplegic homolog 5"
  "MAD homolog 5" "Mothers against DPP homolog 5" "JV5-1"
  "SMAD family member 5" "SMAD 5" "hSmad5" "Smad5"))

(define-protein "SMAD6_HUMAN"
 ("PR:O43541" "Mothers against decapentaplegic homolog 6"
  "MAD homolog 6" "Mothers against DPP homolog 6"
  "SMAD family member 6" "SMAD 6" "hSMAD6" "Smad6"))

(define-protein "SMAD7_HUMAN"
 ("PR:O15105" "Mothers against decapentaplegic homolog 7"
  "MAD homolog 7" "Mothers against DPP homolog 7"
  "Mothers against decapentaplegic homolog 8" "MAD homolog 8"
  "Mothers against DPP homolog 8" "SMAD family member 7" "SMAD 7"
  "hSMAD7" "Smad7"))

(define-protein "SMCA2_HUMAN"
 ("PR:P51531" "Probable global transcription activator SNF2L2"
  "ATP-dependent helicase SMARCA2" "BRG1-associated factor 190B"
  "BAF190B" "Protein brahma homolog" "SNF2-alpha"
  "SWI/SNF-related matrix-associated actin-dependent regulator of chromatin subfamily A member 2"
  "hBRM"))

(define-protein "SNF5_HUMAN"
 ("PR:Q12824"
  "SWI/SNF-related matrix-associated actin-dependent regulator of chromatin subfamily B member 1"
  "BRG1-associated factor 47" "BAF47"
  "Integrase interactor 1 protein" "SNF5 homolog" "hSNF5"))

(define-protein "SO6A1_HUMAN"
 ("PR:Q86UG4"
  "Solute carrier organic anion transporter family member 6A1"
  "Cancer/testis antigen 48" "CT48" "Gonad-specific transporter"
  "GST" "Organic anion-transporting polypeptide 6A1"
  "Organic anion-transporting polypeptide I" "OATP-I"
  "Solute carrier family 21 member 19" "GSTs"))

(define-protein "SOAT1_HUMAN"
 ("PR:P35610" "Sterol O-acyltransferase 1"
  "Acyl-coenzyme A:cholesterol acyltransferase 1" "ACAT-1"
  "Cholesterol acyltransferase 1" "STATs"))

(define-protein "SORT_HUMAN"
 ("PR:Q99523" "100 kDa NT receptor" "Glycoprotein 95" "Gp95"
  "Neurotensin receptor 3" "NT3" "NTR3" "sortilin"))

(define-protein "SPB3_HUMAN"
 ("PR:P29508" "Serpin B3" "Protein T4-A"
  "Squamous cell carcinoma antigen 1" "SCCA-1" "SCCAs"))

(define-protein "SPB5_HUMAN"
 ("PR:P36952" "Serpin B5" "Peptidase inhibitor 5" "PI-5" "maspin"))

(define-protein "SPDYA_HUMAN"
 ("PR:Q5MJ70" "Speedy protein A"
  "Rapid inducer of G2/M progression in oocytes A" "RINGO A"
  "hSpy/Ringo A" "Speedy-1" "Spy1" "Speedy" "Ringo" "Speedy/Ringo"
  "Speedy/Ringo A2"))

(define-protein "SPP2A_HUMAN"
 ("PR:Q8TCT8" "Signal peptide peptidase-like 2A" "SPP-like 2A"
  "Intramembrane protease 3" "IMP-3" "Presenilin-like protein 2"
  "SPPL2a"))

(define-protein "SRBP1_HUMAN"
 ("PR:P36956" "Sterol regulatory element-binding protein 1" "SREBP-1"
  "Class D basic helix-loop-helix protein 1" "bHLHd1"
  "Sterol regulatory element-binding transcription factor 1" "sterol"
  "PR:000028988"))

(define-protein "SRBS2_HUMAN"
 ("PR:O94875" "Sorbin and SH3 domain-containing protein 2"
  "Arg/Abl-interacting protein 2" "Sorbin" "ArgBP2"))

(define-protein "SRCA_HUMAN" ("PR:Q86TD4" "sarcalumenin"))

(define-protein "SRSF2_HUMAN"
 ("PR:Q01130" "Serine/arginine-rich splicing factor 2"
  "Protein PR264" "Splicing component, 35 kDa" "Splicing factor SC35"
  "SC-35" "Splicing factor, arginine/serine-rich 2"))

(define-protein "ST2A1_HUMAN"
 ("PR:Q06520" "Bile salt sulfotransferase"
  "Dehydroepiandrosterone sulfotransferase" "DHEA-ST"
  "Hydroxysteroid Sulfotransferase" "HST" "ST2" "ST2A3"
  "Sulfotransferase 2A1" "ST2A1" "Sult2a1" "PR:000032986"))

(define-protein "STAM1_HUMAN"
 ("PR:Q92783" "Signal transducing adapter molecule 1" "STAM-1"
  "STAMs"))

(define-protein "STAR_HUMAN"
 ("PR:P49675" "Steroidogenic acute regulatory protein, mitochondrial"
  "StAR" "START domain-containing protein 1" "StARD1"))

(define-protein "STAT_HUMAN" ("PR:P02808" "Statherin"))

(define-protein "STF1_HUMAN"
 ("PR:Q13285" "Steroidogenic factor 1" "SF-1" "STF-1"
  "Adrenal 4-binding protein" "Fushi tarazu factor homolog 1"
  "Nuclear receptor subfamily 5 group A member 1"
  "Steroid hormone receptor Ad4BP" "steroidogenic"))

(define-protein "STIL_HUMAN"
 ("PR:Q15468" "SCL-interrupting locus protein"
  "TAL-1-interrupting locus protein" "sIL" "PR:000001798"))

(define-protein "STIP1_HUMAN"
 ("PR:P31948" "Stress-induced-phosphoprotein 1" "STI1"
  "Hsc70/Hsp90-organizing protein"
  "Renal carcinoma antigen NY-REN-11"
  "Transformation-sensitive protein IEF SSP 3521" "Hop"
  "PR:000002206" "PR:P92208"))

(define-protein "STK25_HUMAN"
 ("PR:O00506" "Serine/threonine-protein kinase 25"
  "Ste20-like kinase" "Sterile 20/oxidant stress-response kinase 1"
  "SOK-1" "Ste20/oxidant stress response kinase 1" "Ste20"
  "PR:000029248"))

(define-protein "STMN1_HUMAN"
 ("PR:P16949" "Leukemia-associated phosphoprotein p18"
  "Oncoprotein 18" "Phosphoprotein p19" "pp19" "Prosolin"
  "Protein Pr22" "pp17" "Op18" "metablastin" "stathmin"))

(define-protein "STRAA_HUMAN"
 ("PR:Q7RTN6" "STE20-related kinase adapter protein alpha"
  "STRAD alpha" "STE20-related adapter protein"
  "Serologically defined breast cancer antigen NY-BR-96" "STRADs"))

(define-protein "STS_HUMAN"
 ("PR:P08842" "Steryl-sulfatase" "Arylsulfatase C" "ASC"
  "Steroid sulfatase" "Steryl-sulfate sulfohydrolase"))

(define-protein "SUMO1_HUMAN"
 ("PR:P63165" "Small ubiquitin-related modifier 1" "SUMO-1"
  "GAP-modifying protein 1" "GMP1" "SMT3 homolog 3"
  "Ubiquitin-homology domain protein PIC1"
  "Ubiquitin-like protein SMT3C" "Smt3C"
  "Ubiquitin-like protein UBL1" "sentrin" "PR:000015829"))

(define-protein "SYN1_HUMAN"
 ("PR:P17600" "Synapsin-1" "Brain protein 4.1" "Synapsin I"
  "synapsin" "PR:Q24546"))

(define-protein "SYNJ1_HUMAN"
 ("PR:O43426" "Synaptojanin-1"
  "Synaptic inositol 1,4,5-trisphosphate 5-phosphatase 1"))

(define-protein "SYNJ2_HUMAN"
 ("PR:O15056" "Synaptojanin-2"
  "Synaptic inositol 1,4,5-trisphosphate 5-phosphatase 2"
  "synaptojanin"))

(define-protein "SYPM_HUMAN"
 ("PR:Q7L3T8" "Probable proline--tRNA ligase, mitochondrial"
  "Prolyl-tRNA synthetase" "ProRS" "prolyl"))

(define-protein "T22D3_HUMAN"
 ("PR:Q99576" "TSC22 domain family protein 3"
  "DSIP-immunoreactive peptide" "Protein DIP" "hDIP"
  "Delta sleep-inducing peptide immunoreactor"
  "Glucocorticoid-induced leucine zipper protein" "GILZ"
  "TSC-22-like protein" "TSC-22-related protein" "TSC-22R"
  "glucocorticoid"))

(define-protein "TAU_HUMAN"
 ("PR:P10636" "Microtubule-associated protein tau"
  "Neurofibrillary tangle protein" "Paired helical filament-tau"
  "PHF-tau"))

(define-protein "TBCD4_HUMAN"
 ("PR:O60343" "TBC1 domain family member 4"
  "Akt substrate of 160 kDa" "AS160" "Akt" "PR:000029189"))

(define-protein "TBPL1_HUMAN"
 ("PR:P62380" "TATA box-binding protein-like protein 1"
  "TBP-like protein 1" "21 kDa TBP-like protein"
  "Second TBP of unique DNA protein" "STUD"
  "TATA box-binding protein-related factor 2" "TBP-related factor 2"
  "TBP-like factor" "TBP-related protein" "TRPs"))

(define-protein "TBP_HUMAN"
 ("PR:P20226" "TATA-box-binding protein"
  "TATA sequence-binding protein" "TATA-binding factor"
  "TATA-box factor"
  "Transcription initiation factor TFIID TBP subunit" "TBPs"))

(define-protein "TCOF_HUMAN"
 ("PR:Q13428" "Treacle protein" "Treacher Collins syndrome protein"
  "Treacher"))

(define-protein "TDRD7_HUMAN"
 ("PR:Q8NHU6" "Tudor domain-containing protein 7"
  "PCTAIRE2-binding protein" "Tudor repeat associator with PCTAIRE-2"
  "Trap"))

(define-protein "TE2IP_HUMAN"
 ("PR:Q9NYB0"
  "Telomeric repeat-binding factor 2-interacting protein 1"
  "TERF2-interacting telomeric protein 1"
  "TRF2-interacting telomeric protein 1"
  "Dopamine receptor-interacting protein 5"
  "Repressor/activator protein 1 homolog" "RAP1 homolog" "hRap1"))

(define-protein "TELT_HUMAN"
 ("Titin cap protein" "telethonin" "EG:8557" "PR:000016156"
  "PR:O15273" "PR:O70548"))

(define-protein "TERF2_HUMAN"
 ("PR:Q15554" "Telomeric repeat-binding factor 2"
  "TTAGGG repeat-binding factor 2" "Telomeric DNA-binding protein"
  "TRF2"))

(define-protein "TES_HUMAN" ("PR:Q9UGI8" "Testin" "TESS" "Testine"))

(define-protein "TFF3_HUMAN"
 ("PR:Q07654" "Intestinal trefoil factor" "hITF" "Polypeptide P1.B"
  "hP1.B" "trefoil factor 3"))

(define-protein "TFP11_HUMAN"
 ("PR:Q9UBB9" "Tuftelin-interacting protein 11"
  "Septin and tuftelin-interacting protein 1" "STIP-1" "Tuftelin"))

(define-protein "TFR1_HUMAN"
 ("PR:P02786" "Transferrin receptor protein 1" "TR" "Trfr" "T9" "p90"
  "TfR" "TfR1" "TfRs"))

(define-protein "TGS1_HUMAN"
 ("PR:Q96RS0" "Trimethylguanosine synthase"
  "CLL-associated antigen KW-2"
  "Cap-specific guanine-N2 methyltransferase"
  "Hepatocellular carcinoma-associated antigen 137"
  "Nuclear receptor coactivator 6-interacting protein"
  "PRIP-interacting protein with methyltransferase motif" "PIMT"
  "PIPMT" "trimethylguanosine"))

(define-protein "THOC4_HUMAN"
 ("PR:Q86V81" "THO complex subunit 4" "Tho4"
  "Ally of AML-1 and LEF-1" "Aly/REF export factor"
  "Transcriptional coactivator Aly/REF" "bZIP-enhancing factor BEF"
  "Aly" "PR:Q9V3E7"))

(define-protein "THTM_HUMAN"
 ("PR:P25325" "3-mercaptopyruvate sulfurtransferase" "MST" "MSTs"))

(define-protein "TIMP1_HUMAN"
 ("PR:P01033" "Metalloproteinase inhibitor 1"
  "Erythroid-potentiating activity" "EPA"
  "Fibroblast collagenase inhibitor" "Collagenase inhibitor"
  "Tissue inhibitor of metalloproteinases 1" "TIMP-1" "TIMPs"))

(define-protein "TIPRL_HUMAN"
 ("PR:O75663" "TIP41-like protein"
  "Putative MAPK-activating protein PM10"
  "Type 2A-interacting protein" "TIP" "TIPs"))

(define-protein "TIP_HUMAN"
 ("PR:Q8TB96" "T-cell immunomodulatory protein" "Protein TIP"
  "Integrin-alpha FG-GAP repeat-containing protein 1"))

(define-protein "TKN1_HUMAN"
 ("PR:P20366" "Protachykinin-1" "PPT" "substance"))

(define-protein "TM11D_HUMAN"
 ("PR:O60235" "Transmembrane protease serine 11D"
  "Airway trypsin-like protease" "HATs"))

(define-protein "TNFA_HUMAN"
 ("PR:P01375" "Tumor necrosis factor" "Cachectin" "TNF-alpha"
  "Tumor necrosis factor ligand superfamily member 2" "TNF-a" "TNFs"))

(define-protein "TNFL6_HUMAN"
 ("PR:P48023" "Tumor necrosis factor ligand superfamily member 6"
  "Apoptosis antigen ligand" "APTL" "CD95 ligand" "CD95-L"
  "Fas antigen ligand" "Fas ligand" "APLs" "Fas" "PR:Q9V3B4"
  "PR:Q5CAQ0" "FasL"))

(define-protein "TNNI3_HUMAN"
 ("PR:P19429" "Troponin I, cardiac muscle" "Cardiac troponin I"))

(define-protein "TNNT1_HUMAN"
 ("PR:P13805" "Troponin T, slow skeletal muscle" "TnTs"
  "Slow skeletal muscle troponin T" "sTnT" "TnT"))

(define-protein "TNNT2_HUMAN"
 ("PR:P45379" "Troponin T, cardiac muscle" "TnTc"
  "Cardiac muscle troponin T" "cTnT"))

(define-protein "TNR6_HUMAN"
 ("PR:P25445" "Tumor necrosis factor receptor superfamily member 6"
  "Apo-1 antigen" "Apoptosis-mediating surface antigen FAS"
  "FASLG receptor"))

(define-protein "TPA_HUMAN"
 ("PR:P00750" "Tissue-type plasminogen activator" "t-PA"
  "t-plasminogen activator" "tPA"))

(define-protein "TPIP1_HUMAN"
 ("PR:Q9HCN2" "p53-regulated apoptosis-inducing protein 1" "p53AIP1"))

(define-protein "TPR_HUMAN"
 ("PR:P12270" "Nucleoprotein TPR" "Megator"
  "NPC-associated intranuclear protein"
  "Translocated promoter region protein" "TPRs"))

(define-protein "TR10A_HUMAN"
 ("PR:O00220" "Tumor necrosis factor receptor superfamily member 10A"
  "Death receptor 4"
  "TNF-related apoptosis-inducing ligand receptor 1"
  "TRAIL receptor 1" "TRAIL-R1" "PR:000021999"))

(define-protein "TR10B_HUMAN"
 ("PR:O14763" "Tumor necrosis factor receptor superfamily member 10B"
  "Death receptor 5"
  "TNF-related apoptosis-inducing ligand receptor 2"
  "TRAIL receptor 2" "TRAIL-R2"))

(define-protein "TR10C_HUMAN"
 ("PR:O14798" "Tumor necrosis factor receptor superfamily member 10C"
  "Antagonist decoy receptor for TRAIL/Apo-2L"
  "Decoy TRAIL receptor without death domain" "Decoy receptor 1"
  "Lymphocyte inhibitor of TRAIL"
  "TNF-related apoptosis-inducing ligand receptor 3"
  "TRAIL receptor 3" "TRAIL-R3"
  "TRAIL receptor without an intracellular domain" "DcR1"))

(define-protein "TR10D_HUMAN"
 ("PR:Q9UBN6" "Tumor necrosis factor receptor superfamily member 10D"
  "Decoy receptor 2"
  "TNF-related apoptosis-inducing ligand receptor 4"
  "TRAIL receptor 4" "TRAIL-R4"
  "TRAIL receptor with a truncated death domain" "DcR2"))

(define-protein "TRFE_HUMAN"
 ("PR:P02787" "Serotransferrin" "Beta-1 metal-binding globulin"
  "Siderophilin" "transferrin" "PR:000016261"))

(define-protein "TRFL_HUMAN"
 ("Growth-inhibiting protein 12" "Talalactoferrin" "lactoferrin"
  "lactotransferrin" "PR:000009978" "PR:P02788" "PR:P08071"))

(define-protein "TRI63_HUMAN"
 ("PR:Q969Q1" "E3 ubiquitin-protein ligase TRIM63"
  "Iris RING finger protein" "Muscle-specific RING finger protein 1"
  "MuRF-1" "MuRF1" "RING finger protein 28"
  "Striated muscle RING zinc finger protein"
  "Tripartite motif-containing protein 63" "MuRF"))

(define-protein "TSC1_HUMAN"
 ("PR:Q92574" "Tuberous sclerosis 1 protein" "Hamartin"))

(define-protein "TTBK1_HUMAN"
 ("PR:Q5TCY1" "Tau-tubulin kinase 1" "Brain-derived tau kinase"
  "tau"))

(define-protein "TXK_HUMAN"
 ("PR:P42681" "Tyrosine-protein kinase TXK"
  "Protein-tyrosine kinase 4" "Resting lymphocyte kinase" "Rlk"
  "PR:000014814"))

(define-protein "TYOBP_HUMAN"
 ("PR:O43914" "TYRO protein tyrosine kinase-binding protein"
  "DNAX-activation protein 12"
  "Killer-activating receptor-associated protein"
  "KAR-associated protein" "KARAPs"))

(define-protein "TYPH_HUMAN"
 ("PR:P19971" "Thymidine phosphorylase" "TP" "Gliostatin"
  "Platelet-derived endothelial cell growth factor" "PD-ECGF"
  "TdRPase" "thymidine" "PR:P13159" "PR:G5EEZ5" "PR:Q9PPP5"
  "PR:F1Q5P1"))

(define-protein "UBD_HUMAN"
 ("PR:O15205" "Ubiquitin D" "Diubiquitin"
  "Ubiquitin-like protein FAT10" "UBDs"))

(define-protein "UBE2C_HUMAN"
 ("PR:O00762" "Ubiquitin-conjugating enzyme E2 C"
  "Ubiquitin carrier protein C" "Ubiquitin-protein ligase C"
  "UbcH10"))

(define-protein "UBE2N_HUMAN"
 ("PR:P61088" "Ubiquitin-conjugating enzyme E2 N"
  "Bendless-like ubiquitin-conjugating enzyme" "UbcH13"
  "Ubiquitin carrier protein N" "Ubiquitin-protein ligase N" "BLUs"
  "Ubc13"))

(define-protein "UBP5_HUMAN"
 ("PR:P45974" "Ubiquitin carboxyl-terminal hydrolase 5"
  "Deubiquitinating enzyme 5" "Isopeptidase T"
  "Ubiquitin thioesterase 5"
  "Ubiquitin-specific-processing protease 5" "isopeptidase"))

(define-protein "UBR5_HUMAN"
 ("PR:O95071" "E3 ubiquitin-protein ligase UBR5"
  "E3 ubiquitin-protein ligase, HECT domain-containing 1"
  "Hyperplastic discs protein homolog" "Progestin-induced protein"
  "hHYD"))

(define-protein "UCP1_HUMAN"
 ("PR:P25874" "Mitochondrial brown fat uncoupling protein 1" "UCP 1"
  "Solute carrier family 25 member 7" "Thermogenin" "UCPs"))

(define-protein "UPK3A_HUMAN"
 ("PR:O75631" "Uroplakin-3a" "Uroplakin III" "UPIII" "UP3a"))

(define-protein "VASP_HUMAN"
 ("PR:P50552" "Vasodilator-stimulated phosphoprotein" "VASP"
  "vasodilator"))

(define-protein "VDAC1_HUMAN"
 ("PR:P21796" "Voltage-dependent anion-selective channel protein 1"
  "VDAC-1" "hVDAC1" "Outer mitochondrial membrane protein porin 1"
  "Plasmalemmal porin" "Porin 31HL" "Porin 31HM" "Porin"))

(define-protein "VHL_HUMAN"
 ("PR:P40337" "Von Hippel-Lindau disease tumor suppressor"
  "Protein G7" "pVHL"))

(define-protein "VIME_HUMAN" ("PR:P08670" "vimentin"))

(define-protein "VNN1_HUMAN"
 ("PR:O95497" "Pantetheinase" "Pantetheine hydrolase" "Tiff66"
  "Vascular non-inflammatory molecule 1" "Vanin-1" "vanin"))

(define-protein "VP113_HUMAN"
 ("Endogenous retrovirus group K member 113 Pro protein"
  "HERV-K113 envelope protein"
  "HERV-K_19p13.11 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR"))

(define-protein "VPK04_HUMAN"
 ("Endogenous retrovirus group K member 104 Pro protein"
  "HERV-K104 Pro protein"
  "HERV-K_5q13.3 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR"))

(define-protein "VPK10_HUMAN"
 ("Endogenous retrovirus group K member 10 Pro protein"
  "HERV-K10 Pro protein" "HERV-K107 Pro protein"
  "HERV-K_5q33.3 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR"))

(define-protein "VPK18_HUMAN"
 ("Endogenous retrovirus group K member 18 Pro protein"
  "HERV-K(C1a) Pro protein" "HERV-K110 Pro protein"
  "HERV-K18 Pro protein"
  "HERV-K_1q23.3 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR"))

(define-protein "VPK19_HUMAN"
 ("Endogenous retrovirus group K member 19 Pro protein"
  "HERV-K(C19) Pro protein"
  "HERV-K_19q12 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR"))

(define-protein "VPK24_HUMAN"
 ("Endogenous retrovirus group K member 24 Pro protein"
  "HERV-K101 envelope protein"
  "HERV-K_22q11.21 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR"))

(define-protein "VPK25_HUMAN"
 ("Endogenous retrovirus group K member 25 Pro protein"
  "HERV-K_11q22.1 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR"))

(define-protein "VPK6_HUMAN"
 ("Endogenous retrovirus group K member 6 Pro protein"
  "HERV-K(C7) Pro protein" "HERV-K(HML-2.HOM) Pro protein"
  "HERV-K108 Pro protein"
  "HERV-K_7p22.1 provirus ancestral Pro protein" "Proteinase" "PR"
  "protease" "PR:000023630" "PR:A2BIP6"))

(define-protein "VPK7_HUMAN"
 ("Endogenous retrovirus group K member 7 Pro protein"
  "HERV-K(III) Pro protein" "HERV-K102 Pro protein"
  "HERV-K_1q22 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR"))

(define-protein "VPK8_HUMAN"
 ("Endogenous retrovirus group K member 8 Pro protein"
  "HERV-K115 Pro protein"
  "HERV-K_8p23.1 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR"))

(define-protein "VPK9_HUMAN"
 ("Endogenous retrovirus group K member 9 Pro protein"
  "HERV-K(C6) Pro protein" "HERV-K109 Pro protein"
  "HERV-K_6q14.1 provirus ancestral Pro protein" "Protease"
  "Proteinase" "PR" "proteases"))

(define-protein "VWF_HUMAN"
 ("PR:P04275" "vWF" "von Willebrand factor"))

(define-protein "WEE1_HUMAN"
 ("PR:P30291" "Wee1-like protein kinase" "WEE1hu" "Wee1A kinase"
  "Wee1"))

(define-protein "WNT2_HUMAN"
 ("PR:P09544" "Protein Wnt-2" "Int-1-like protein 1"
  "Int-1-related protein" "IRP" "IRPs"))

(define-protein "XBP1_HUMAN"
 ("PR:P17861" "X-box-binding protein 1" "XBP-1"
  "Tax-responsive element-binding protein 5" "TREB-5" "XBP1s"))

(define-protein "XCT_HUMAN"
 ("PR:Q9UPY5" "Cystine/glutamate transporter"
  "Amino acid transport system xc-"
  "Calcium channel blocker resistance protein CCBR1"
  "Solute carrier family 7 member 11" "xCT"))

(define-protein "XRCC5_HUMAN"
 ("PR:P13010" "X-ray repair cross-complementing protein 5"
  "86 kDa subunit of Ku antigen"
  "ATP-dependent DNA helicase 2 subunit 2"
  "ATP-dependent DNA helicase II 80 kDa subunit"
  "CTC box-binding factor 85 kDa subunit" "CTC85" "CTCBF"
  "DNA repair protein XRCC5" "Lupus Ku autoantigen protein p86"
  "Nuclear factor IV" "Thyroid-lupus autoantigen" "TLAA"
  "X-ray repair complementing defective repair in Chinese hamster cells 5 (double-strand-break rejoining)"
  "Ku80" "Ku86"))

(define-protein "XRCC6_HUMAN"
 ("PR:P12956" "X-ray repair cross-complementing protein 6"
  "5'-deoxyribose-5-phosphate lyase Ku70" "5'-dRP lyase Ku70"
  "70 kDa subunit of Ku antigen"
  "ATP-dependent DNA helicase 2 subunit 1"
  "ATP-dependent DNA helicase II 70 kDa subunit"
  "CTC box-binding factor 75 kDa subunit" "CTC75" "CTCBF"
  "DNA repair protein XRCC6" "Lupus Ku autoantigen protein p70"
  "Thyroid-lupus autoantigen" "TLAA"
  "X-ray repair complementing defective repair in Chinese hamster cells 6"
  "Ku70"))

(define-protein "YMEL1_HUMAN"
 ("PR:Q96TA2" "ATP-dependent zinc metalloprotease YME1L1"
  "ATP-dependent metalloprotease FtsH1" "Meg-4"
  "Presenilin-associated metalloprotease" "PAMP"
  "YME1-like protein 1"))

(define-protein "ZDHC2_HUMAN"
 ("PR:Q9UIJ5" "Palmitoyltransferase ZDHHC2"
  "Reduced expression associated with metastasis protein" "Ream"
  "Reduced expression in cancer protein"
  "Zinc finger DHHC domain-containing protein 2" "DHHC-2"
  "Zinc finger protein 372" "Rec"))

(define-protein "ZEB1_HUMAN"
 ("PR:P37275" "Zinc finger E-box-binding homeobox 1"
  "NIL-2-A zinc finger protein" "Negative regulator of IL2"
  "Transcription factor 8" "TCF-8"))

(define-protein "ZFYV9_HUMAN"
 ("PR:O95405" "Zinc finger FYVE domain-containing protein 9"
  "Mothers against decapentaplegic homolog-interacting protein"
  "Madh-interacting protein" "Novel serine protease" "NSP"
  "Receptor activation anchor" "Smad anchor for receptor activation"
  "Smad" "PR:000000027" "hSARA"))

(define-protein "ZO1_HUMAN"
 ("PR:Q07157" "Tight junction protein ZO-1"
  "Tight junction protein 1" "Zona occludens protein 1"
  "Zonula occludens protein 1"))
(define-protein "p19ARF" ("ARF_MOUSE"))

(in-package :sparser)
