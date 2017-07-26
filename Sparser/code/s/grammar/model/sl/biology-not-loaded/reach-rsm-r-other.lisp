(defparameter *rsm-r-other*
  '(((:TEXT
   "XREF_BIBR, XREF_BIBR The chromatin immunoprecipitation (ChIP) analysis, however, demonstrates that ERalpha binds to human IGF-1 promoter region, 8 and human IGF-1 mRNA expression is activated by estrogen in human ovarian and breast cancer cell lines.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "ERalpha binds to human IGF-1 promoter region")
     (:REACH ((("controller" "IGF-1 mRNA")))))
    (("controlled" "IGF-1 mRNA expression")
     (:REACH ((("controller" "estrogen"))))))))

 ((:TEXT
   "The specificity of increased IGF-1Rbeta phosphorylation was further confirmed by either a neutralizing antibody or a small-molecule inhibitor.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "IGF-1Rbeta") (:REACH)))))
 ((:TEXT
   "All these results support that the loss of BRCA1 function can autocrinely activate the IGF-1R pathway in an E2 dependent manner.")
  (MIS-MATCHES
   ("activate" (("controlled" "IGF-1R") (:REACH ((("controller" "BRCA1"))))))))
 ((:TEXT
   "2 In addition, ERalpha can activate IGF-1R signaling not only by transcriptional activation but also by non genomic function.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "IGF-1R") (:REACH ((("controller" "ERalpha"))))))))
 ((:TEXT
   "37 In our data, carboxy-terminal domain of BRCA1 is required to repress E2 dependent activation of IGF-1 promoter.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "IGF-1 promoter") (:REACH ((("controller" "E2"))))))))
 ((:TEXT
   "In addition, neither the levels of phosphorylated nor acetylated SHP were altered by p53 (XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "SHP") (:REACH)))))

 ((:TEXT
   "One group reported a requirement for Themis1 in T cell antigen receptor (TCR) induced ERK phosphorylation and calcium mobilization in total thymocytes (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "calcium") (:REACH)))))
 ((:TEXT
   "Themis1 is tyrosine phosphorylated following TCR engagement (XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "Themis1") (:REACH ((("site" "tyrosine"))))))))
 
 ((:TEXT
   "In addition, Themis2 was tyrosine phosphorylated in B cells following B cell receptor stimulation with F (ab ') 2 anti-IgM antibodies (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "Themis2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "Previous reports indicate that the phosphorylation of Themis1 and Themis2 is controlled by Src family kinases.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Themis1") (:REACH)))))

 ((:TEXT
   "Co-transfection experiments in 293T cells demonstrated that Src kinases (Lck or Fyn) but not the ZAP-70 kinase can phosphorylate both Themis1 and Themis2 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylate"
    (("substrate" "Themis2") (:REACH ((("enzyme" "ZAP-70 kinase")))))
    (("substrate" "Themis1")
     (:REACH ((("enzyme" "Src")) (("enzyme" "ZAP-70 kinase"))))))))
 ((:TEXT
   "Proteus syndrome, a progressively deforming regional overgrowth syndrome that affects bones, adipose, and other mesenchymal tissues, is caused by a somatic p.Glu17Lys AKT1 mutation 3 which constitutively activates PI3K and AKT signaling XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activates" (("controlled" "AKT") (:REACH ((("controller" "AKT1")))))
    (("controlled" "PI3K") (:REACH ((("controller" "AKT1"))))))))
 ((:TEXT
   "Basal hyperphosphorylation of downstream AKT and p70 S6 kinase signaling was detected in mutant PIK3CA cells.")
  (MIS-MATCHES
   ("hyperphosphorylation" (("substrate" "AKT") (:REACH))
    (("substrate" "p70") (:REACH)) (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "The phosphorylation of Cdk1 by CAK is opposed by PP2C (XREF_BIBR), the Cdk1 activator Cdc25 is opposed by Wee1 (XREF_BIBR, XREF_BIBR), and nuclear import of the Cdk1-cyclin B1 complexes is opposed by nuclear export (XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("activator" (("controlled" "Cdc25") (:REACH ((("controller" "Cdk1")))))
    (("controlled" "Cdk1") (:REACH ((("controller" "Cdc25"))))))))
 ((:TEXT
   "Because we are using units of quantity rather than concentration, a simple conservation equation holds : xtot = xcyt+ xnuc+ xpnuc The main unknown in the model is the response function Phi that describes how the multisite phosphorylation of nuclear Cdk1-cyclin B1 depends upon the amount of Cdk1-cyclin B1 present in the nucleus.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "B1") (:REACH)))))
 ((:TEXT
   "In this light, it is noteworthy that the Cdk1 activators CAK and Cdc25A are predominantly nuclear (XREF_BIBR; XREF_BIBR) (as is the Cdk1 inactivator Wee1), and the Cdk1 inhibitor Myt1 is cytoplasmic (XREF_BIBR).")
  (MIS-MATCHES
   ("activators" (("controlled" "Cdk1") (:REACH ((("controller" "CAK")))))
    (("controlled" "CAK") (:REACH ((("controller" "Cdk1"))))))
   ("inactivator" (("controlled" "Cdk1") (:REACH ((("controller" "Wee1"))))))))
 ((:TEXT
   "Thus, IgE-receptor activated human mast cells upregulate Bfl-1 upon allergic provocation in vivo.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Bfl-1") (:REACH ((("controller" "IgE-receptor"))))))))
 ((:TEXT
   "In contrast, neither phosphorylation of Chk2 nor of ATM was affected by VE-821 supporting the previous findings that this compound does not inhibit ATM mediated signalling.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ATM") (:REACH)))))
 ((:TEXT
   "For the latter, the analysis confirmed a defective binding to the N-SH2 domain specific PTPNS1 phosphorylated motif as well as to the majority of phosphopeptides inferred to represent efficient binders of the wild-type N-SH2 domain.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "PTPNS1") (:REACH)))))
 ((:TEXT
   "We have shown previously that the MAPK pathway is activated by FGFR1 in telomerase immortalised normal human urothelial cells (TERT-NHUC), though in these cells an EMT is not induced XREF_BIBR.")
  (MIS-MATCHES
   ("activated" (("controlled" "MAPK") (:REACH ((("controller" "FGFR1"))))))))
 ((:TEXT
   "PLCgamma signalling activates the MAPK pathway but is also involved in regulating intracellular free calcium levels XREF_BIBR and PLCgamma mediated mechanisms are known to strongly influence migration via regulation of the cytoskeleton XREF_BIBR.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "MAPK") (:REACH ((("controller" "PLCgamma"))))))))
 ((:TEXT
   "For instance, removal of POT1a from mouse telomeres exposes the single stranded DNA and permanently activates the ATR kinase pathway whereas critically shortened telomeres may be expected to lose several (or all) shelterin proteins rather than POT1 alone and are known to activate both ATM and ATR signaling (XREF_BIBR).")
  (MIS-MATCHES
   ("activates" (("controlled" "ATR") (:REACH ((("controller" "POT1a"))))))))
 ((:TEXT
   "As shown in XREF_FIG, untreated cells contained one major peak in the electropherogram, corresponding to c-Src phosphorylated at Y418 in an adhesion dependent manner (peak 1, P1).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "c-Src") (:REACH ((("site" "Y418"))))))))

 
 ((:TEXT
   "Thus, VEGF induced c-Src activation has been implicated in the disruption of molecular complexes involving VEGFR2 and VE-cadherin and beta-catenin that lead to destabilization of junctions (XREF_BIBR, XREF_BIBR) directly through c-Src-mediated tyrosine phosphorylation of VE-cadherin at Y658 (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "VE-cadherin") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "Moreover, c-Src-dependent activation of Vav and p21 activated kinase (PAK) leads to serine phosphorylation of VE-cadherin at S665 (XREF_BIBR) and internalization of VE-cadherin.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "PAK) leads to serine phosphorylation of VE-cadherin")
     (:REACH ((("controller" "Vav")) (("controller" "p21")))))
    (("controlled"
      "PAK) leads to serine phosphorylation of VE-cadherin at S665")
     (:REACH ((("controller" "Vav")) (("controller" "p21"))))))))
 ((:TEXT
   "Activation of eNOS in response to VEGF and histamine has been shown to involve PLCgamma and subsequent activation of protein kinase C, as well as AKT and protein kinase B (PKB; XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("activation" (("controlled" "AKT") (:REACH ((("controller" "PLCgamma")))))
    (("controlled" "protein kinase B")
     (:REACH ((("controller" "PLCgamma"))))))))
 ((:TEXT
   "Specifically, in the nucleolus, c-Myc has been shown to be recruited to ribosomal DNA and activate RNA polymerase (pol) I mediated transcription of rRNA genes.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "RNA polymerase") (:REACH ((("controller" "c-Myc"))))))))
 ((:TEXT
   "The enhanced proteolysis of c-Myc in the nucleolus suggests that once c-Myc activates rDNA transcription it is rapidly degraded.")
  (MIS-MATCHES
   ("c-Myc activates rDNA transcription"
    (("controlled" "c-Myc activates rDNA transcription")
     (:REACH ((("controller" "rDNA"))))))
   ("activates"
    (("controlled" "rDNA transcription")
     (:REACH ((("controller" "c-Myc"))))))))
 ((:TEXT
   "The observed enhanced CDK and pRb activity of PGRN deficient lymphoblasts contrasts with the fact that increased CDK activity and pRb phosphorylation have been linked to neuronal death in a number of cell and animal models of neurodegeneration XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CDK") (:REACH)))))
 ((:TEXT
   "In Tg (krt4 : Hsa.myrAkt1) cy18, the expression of exogenous human constitutively active Akt1 (myrAkt1) can activate endogenous downstream targets of mTOR, GSK-3alpha and beta, and 70S6K.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "70S6K")
     (:REACH ((("controller" "myrAkt1")) (("controller" "Akt1")))))
    (("controlled" "GSK-3alpha/beta")
     (:REACH ((("controller" "Akt1")) (("controller" "myrAkt1")))))
    (("controlled" "mTOR")
     (:REACH ((("controller" "myrAkt1")) (("controller" "Akt1"))))))))
 ((:TEXT
   "Exogenous Human myrAkt1 Can Activate Endogenous Akt Downstream Genes in Tg (krt4 : Hsa.myrAkt1) cy18.")
  (MIS-MATCHES
   ("Activate" (("controlled" "Tg") (:REACH ((("controller" "myrAkt1")))))
    (("controlled" "Akt") (:REACH ((("controller" "myrAkt1"))))))))
 ((:TEXT
   "Following this rationale, it should be able to detect the over-phosphorylation of endogenous Akt downstream targets and restore the skin phenotype when Akt downstream signaling is blocked.")
  (MIS-MATCHES ("over-phosphorylation" (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "The over expression of the constitutively active form of human myrAkt1 can phosphorylate endogenous downstream targets like mTOR and 70S6K.")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "70S6K") (:REACH))
    (("substrate" "mTOR") (:REACH)))))
 ((:TEXT
   "Methamphetamine activates nuclear factor kappa-light-chain-enhancer of activated B cells (NF-kappaB) and induces human immunodeficiency virus (HIV) transcription in human microglial cells.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "nuclear factor kappa-light-chain-enhancer")
     (:REACH ((("controller" "Methamphetamine"))))))))
 ((:TEXT
   "The presence of a dominant negative regulator of NF-kappaB blocked METH related activation of the HIV LTR.")
  (MIS-MATCHES
   ("activation" (("controlled" "LTR") (:REACH ((("controller" "METH"))))))))
 ((:TEXT
   "Our findings suggest that the HIV LTR in human microglia cells in vitro can be activated by methamphetamine.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "LTR") (:REACH ((("controller" "methamphetamine"))))))))
 ((:TEXT
   "METH also activated NF-kappaB, a cellular transcription factor and well established regulator of the HIV LTR.")
  (MIS-MATCHES
   ("activated" (("controlled" "LTR") (:REACH ((("controller" "METH")))))
    (("controlled" "transcription") (:REACH ((("controller" "METH"))))))))
 ((:TEXT
   "In KRAS mutant cells, the RAS effector RalB activated TBK1 21, which maintained survival through activation of the NF-kappaB pathway.")
  (MIS-MATCHES
   ("activated" (("controlled" "TBK1") (:REACH ((("controller" "RAS"))))))))
 ((:TEXT
   "Together, our findings suggest that Chk2 mediated phosphorylation of survivin-DeltaEx3 contributes to a DNA damage sensing checkpoint that may affect cancer cell sensitivity to genotoxic therapies.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "survivin-DeltaEx3") (:REACH ((("enzyme" "Chk2"))))))))
 ((:TEXT
   "In addition, Ala mutagenesis of all three predicted Chk2 phosphorylation sites at Thr127, Thr79 and Ser98 (DeltaEx3-Mut3) abolished Chk2 phosphorylation of survivin-DeltaEx3 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "survivin-DeltaEx3") (:REACH)))))
 ((:TEXT
   "In contrast, survivin-DeltaEx3-Mut3 immunoprecipitates (XREF_FIG, top) did not exhibit changes in phosphorylated Ser reactivity, with or without etoposide (XREF_FIG, bottom).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "etoposide") (:REACH)))))
 ((:TEXT
   "These results indicated that SOD2 dependent H 2 O 2 production may activate Snail signaling and increase the invasive and metastatic capacity of TSCC.")
  (MIS-MATCHES
   ("activate" (("controlled" "Snail") (:REACH ((("controller" "SOD2"))))))))
 ((:TEXT
   "In addition, our data indicated that RVFV MP-12 infection induces phosphorylation of all p53 serine sites examined.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p53") (:REACH ((("site" "serine"))))))))
 ((:TEXT
   "p53 Ser392, a residue known to contribute to both transcription activation and DNA binding XREF_BIBR, was also phosphorylated in a manner similar to that seen with N-terminal residues (XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "p53") (:REACH)))))
 ((:TEXT
   "As controls, the phosphorylation of p53 was assessed following infection with UV inactivated MP-12 and following doxorubicin treatment (XREF_FIG).")
  (MIS-MATCHES
   ("inactivated"
    (("controlled" "MP-12") (:REACH ((("controller" "doxorubicin"))))))))
 ((:TEXT
   "In contrast, we did not observed phosphorylation or stabilization of p53 following infection with UV inactivated MP-12.")
  (MIS-MATCHES
   ("inactivated" (("controlled" "MP-12") (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "In contrast, cells infected with the rMP-12 DeltaNSs strain, show a dramatic lack of Ser 15 and Ser 392 phosphorylation and p53 accumulation at 24 hour.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p53") (:REACH ((("site" "Ser 392"))))))))
 ((:TEXT
   "These findings would be consistent with decreased intracellular phosphatase activity causing receptor hyperphosphorylation.")
  (MIS-MATCHES
   ("hyperphosphorylation" (("substrate" "phosphatase") (:REACH)))))
 ((:TEXT
   "Leveraging the rapid kinetics of this system, we then asked whether Plk1 T210D is able to trigger cytokinesis, which depends on anaphase specific phosphorylation of the centralspindlin component HsCYK-4 (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "HsCYK-4") (:REACH)))))
 ((:TEXT
   "While the identity of the 3F3/2 phosphoantigen (s) remains to elucidated, it is clear that Plk1 phosphorylates a growing list of kinetochore specific substrates, including CENP-U and PBIP, CLIP-170, NudC, Bub1, and BubR1 (XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "kinetochore") (:REACH ((("enzyme" "Plk1")))))
    (("substrate" "CLIP-170") (:REACH)) (("substrate" "BubR1") (:REACH))
    (("substrate" "NudC") (:REACH)) (("substrate" "Bub1") (:REACH))
    (("substrate" "CENP-U") (:REACH)) (("substrate" "PBIP") (:REACH)))))
 ((:TEXT
   "Furthermore, Plk1 's own recruitment to kinetochores depends on its phosphorylation- and PBD dependent interaction with several of these factors (XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation-" (("substrate" "PBD") (:REACH)))))
 ((:TEXT
   "Activation of AMP activated Protein Kinase alpha2 by Nicotine Instigates Formation of Abdominal Aortic Aneurysms in Mice in vivo.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Protein Kinase alpha2")
     (:REACH ((("controller" "AMP"))))))))
 ((:TEXT
   "Here we report that, like angiotensin II (AngII), acute infusion of nicotine, a major component of cigarette smoke, resulted in significantly increased elastin degradation, enlargement of the aorta, aberrant expression of matrix metalloproteinase 2 (MMP2), and an increased incidence of AAA in ApoE knockout (ApoE -/-) and deficient in both ApoE and AMP activated kinase (AMPK) alpha1 subunit (ApoE -/- / AMPKalpha1 -/-) mice.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "alpha1 subunit")
     (:REACH ((("controller" "AMP")) (("controller" "ApoE")))))
    (("controlled" "AMPKalpha1 -/-")
     (:REACH ((("controller" "AMP")) (("controller" "ApoE")))))
    (("controlled" "ApoE") (:REACH ((("controller" "AMP"))))))))
 ((:TEXT
   "Recently, Birnbaum MJ 's group XREF_BIBR, XREF_BIBR and ours XREF_BIBR, XREF_BIBR have found that AMPK can be activated by oxidants or hypoxia including hydrogen peroxide and peroxynitrite, which activate AMPK via LKB1 dependent or -independent pathways XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "AMPK") (:REACH ((("controller" "hydrogen peroxide"))))))))
 ((:TEXT
   "Since VSMCs are the major cell type in AngII- and nicotine triggered AAA in mice and AMPK expression in VSMCs appears to be essential in MMP2 expression, it seemed highly likely that nicotine and AngII would activate AMPK and that this activation would modulate MMP2 expression and activity in VSMCs.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "AMPK") (:REACH ((("controller" "nicotine"))))))))
 ((:TEXT
   "In HEK293 cells transfected with WT AP-2alpha, treatment with AICAR, which phosphorylates AMPK at Thr172, dramatically increased AP-2alpha serine phosphorylation (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "AMPK") (:REACH ((("site" "Thr172"))))))))
 ((:TEXT
   "To establish human relevance, we further examined AMPKalpha2 activity, AMPK Thr172 phosphorylation, and Ser79 phosphorylation of acetyl CoA carboxynase (ACC), a well characterized downstream enzyme of AMPK.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CoA") (:REACH ((("site" "Ser79")))))
    (("substrate" "ACC") (:REACH ((("site" "Ser79"))))))))
 ((:TEXT
   "As shown in XREF_SUPPLEMENTARY, human AAA samples exhibited higher AMPKalpha2 activity, AMPK Thr172 phosphorylation, and ACC Ser79 phosphoylation in aortic tissues from AAA than those from non AAA control patients.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "ACC") (:REACH ((("site" "Thr172")) (("site" "Ser79"))))))))
 ((:TEXT
   "Taken together, our data suggest that smoke activated AMPK is important in the initiation and progression of AAA.")
  (MIS-MATCHES
   ("activated" (("controlled" "AAA") (:REACH ((("controller" "smoke")))))
    (("controlled" "AMPK") (:REACH ((("controller" "smoke"))))))))
 ((:TEXT
   "Mechanistically, we found that nicotine- or AngII derived ROS trigger nuclear translocation of AMPKalpha2, which binds and phosphorylates AP-2alpha at serine 219 resulting in aberrant expression of MMP2 and consequent ECM degradation.")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "AP-2alpha") (:REACH ((("site" "serine 219"))))))))
 ((:TEXT
   "AP-2alpha is also phosphorylated at Ser233 by protein kinase A (PKA) 31 and at both Ser252 and Ser320 by protein kinase D (PKD) 41, based on the phosphorylation motifs (RRXS/T and LXRXXS/T) in its basic transactivation domain.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "AP-2alpha")
     (:REACH
      ((("enzyme" "protein kinase A") ("site" "Ser320"))
       (("enzyme" "protein kinase A") ("site" "Ser252"))
       (("enzyme" "protein kinase D") ("site" "Ser252"))
       (("enzyme" "protein kinase D") ("site" "Ser233"))
       (("enzyme" "protein kinase D") ("site" "Ser320"))))))))
 ((:TEXT
   "Phosphorylation of S219 by AMPKalpha2 was demonstrated by the following evidence : (1) AP-2alpha is phosphorylated only in the presence of AMPKalpha2 in a cell-free system; (2) AMPKalpha2 specifically phosphorylated an AP-2alpha peptide containing S219; (3) Mutation of serine 219 to alanine abolished AMPK induced AP-2alpha serine phosphorylation, increased DNA binding affinity, and MMP2 levels.")
  (MIS-MATCHES
   ("Phosphorylation"
    (("substrate" "AMPKalpha2") (:REACH ((("site" "S219"))))))))
 ((:TEXT
   "In addition, it is reported that AngII has other pathways to induce AAA, such as TGF-beta and other growth factors, which can be transcriptionally activated by MMP2 XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activated" (("controlled" "AAA") (:REACH ((("controller" "MMP2"))))))))
 ((:TEXT
   "When exposed to oxidative damage by H 2 O 2, WS cells fail to activate PARP-1 and bypass cell proliferation arrest [XREF_BIBR].")
  (MIS-MATCHES
   ("activate"
    (("controlled" "cell proliferation") (:REACH ((("controller" "WS"))))))))
 ((:TEXT
   "However, T599A B-RAF did not destabilize the inactive conformation of the B-RAF kinase, and did not induce increased ERK phosphorylation or C-RAF transactivation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "C-RAF") (:REACH)))))
 ((:TEXT
   "B-RAF is a protein kinase activated by ras coupled receptor tyrosine kinases (RTK) that is central to signaling via the Mitogen Activated Kinase (MAPK) and phosphorylates its downstream target MEK and ERK kinases XREF_BIBR.")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "MEK") (:REACH))
    (("substrate" "ERK") (:REACH)))))
 ((:TEXT
   "Thr599 is a major phosphorylation site in the B-RAF activation domain XREF_BIBR, and substitution of Thr599 with alanine was shown in vitro to suppress B-RAF activity.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "B-RAF activation domain") (:REACH)))))
 ((:TEXT
   "While substitution of Val600 with Glu (V600E B-RAF) strongly activates B-RAF, substitution of Thr599 with Ala (T599A B-RAF) impairs B-RAF kinase activity XREF_BIBR, XREF_BIBR given that Thr599 is the major phosphorylation site in the B-RAF activation domain XREF_BIBR.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "B-RAF activation domain") (:REACH)))))
 ((:TEXT
   "HDAC1 inactivation resulted in regression of tumor cell growth and activation of caspase independent autophagic cell death, via LC3B-II activation pathway in Hep3B cells.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "autophagic cell death")
     (:REACH ((("controller" "HDAC1"))))))))
 ((:TEXT
   "Consequently, HDAC1 inactivation led to the hypophosphorylation of pRb in G1/S transition, and thereby inactivated E2F and DP1 transcription activity.")
  (MIS-MATCHES
   ("inactivated" (("controlled" "DP1") (:REACH ((("controller" "pRb")))))
    (("controlled" "transcription") (:REACH ((("controller" "pRb"))))))))
 ((:TEXT
   "Several studies have shown that HDAC inhibitors strongly activate the expression of p21 WAF1 and Cip1 through enhanced histone acetylation of the p21 WAF1 and Cip1 promoter including Sp1- binding site by releasing the repressor HDAC from its binding XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "expression of p21 WAF1/Cip1")
     (:REACH ((("controller" "HDAC inhibitors")))))
    (("controlled" "expression of p21 WAF1")
     (:REACH ((("controller" "HDAC inhibitors"))))))))
 ((:TEXT
   "These results suggest that the HDAC1 knockdown activates autophagic cell death in HCC cells.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "autophagic cell death")
     (:REACH ((("controller" "HDAC1"))))))))
 ((:TEXT
   "In this study, we have suggested that the abrogation of aberrant expression of HDAC1 activated the caspase independent autophagic cell death and arrested the G1/S cell cycle transition in human Hep3B cells, and consequently suppressed the tumor cell growth in the xenograft animal model.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "autophagic cell death")
     (:REACH ((("controller" "HDAC1"))))))))
 ((:TEXT
   "During cell division, the commitment to divide occurs in the passage from G 1 to S phase, which coincides with the hyperphosphorylation of retinoblastoma protein (RB1) 2 (XREF_BIBR).")
  (MIS-MATCHES ("hyperphosphorylation" (("substrate" "RB1") (:REACH)))))
 ((:TEXT
   "In a global screen for phosphoproteins, XREF_BIBR) detected phosphorylation of Rad18 at serine 409, although they did not explore the mechanism or significance of this phosphorylation event.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Rad18") (:REACH ((("site" "serine 409"))))))))
 ((:TEXT
   "To identify the Rad18 region (s) phosphorylated by JNK, we expressed a series of partially overlapping GST fusion fragments of Rad18 spanning the entire length of the Rad18 protein (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "Rad18") (:REACH ((("enzyme" "JNK"))))))))
 ((:TEXT
   "Of the Rad18 fragments, only GST-Rad18 398-495 (comprising the C-terminal 103 amino acids of Rad18) was phosphorylated by JNK (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "GST-Rad18 398-495") (:REACH ((("enzyme" "JNK"))))))))
 ((:TEXT
   "In similar experiments, p38 (another SAPK family member) did not phosphorylate Rad18 in vitro (unpublished data).")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "Rad18") (:REACH ((("enzyme" "SAPK"))))))))
 ((:TEXT
   "We conclude that Rad18 phosphorylation by JNK is relatively specific (although we have not yet performed an exhaustive analysis of Rad18 phosphorylation by other SAPKs, and it is possible that additional JNK related protein kinases contribute to Rad18 phosphorylation at S409).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Rad18") (:REACH ((("enzyme" "JNK") ("site" "S409"))))))))
 ((:TEXT
   "Therefore we performed kinase assays in which we measured phosphorylation of recombinant Rad18 and Rad6 complex by JNK and DDK individually or in combination.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Rad18") (:REACH ((("enzyme" "DDK")))))
    (("substrate" "Rad6") (:REACH ((("enzyme" "DDK"))))))))
 ((:TEXT
   "We conclude that there is no phosphopriming or hierarchical sequence of Rad18 phosphorylation by JNK and DDK and that S409 and S-box phosphorylations are independent events.")
  (MIS-MATCHES
   ("phosphorylations" (("substrate" "S-box") (:REACH ((("site" "S409"))))))))
 ((:TEXT
   "The kinetics of JNK phosphorylation and PCNA ubiquitination in UV treated cells were similar, indicating a temporal correlation between JNK signaling and TLS (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PCNA") (:REACH)))))
 ((:TEXT
   "We noticed that a DDK phosphorylation resistant Rad18 mutant (designated Rad18 S-box-A) was phosphorylated at S409 more efficiently than Rad18 wild type (WT).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "DDK") (:REACH)))
   ("phosphorylated" (("substrate" "Rad18") (:REACH ((("site" "S409"))))))))
 ((:TEXT
   "These data may indicate that failure to phosphorylate the Rad18 S-box is associated with compensatory phosphorylation at S409.")
  (MIS-MATCHES ("phosphorylate" (("substrate" "Rad18") (:REACH)))))
 ((:TEXT
   "The UV sensitivity of the Rad18 S409A complemented cells resembles the phenotype we previously reported for the Rad18 S-box-A mutant (which harbors DDK phosphorylation site mutations at S421-423 and S434; XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "DDK") (:REACH)))))
 ((:TEXT
   "In preliminary experiments, Chk1 inhibition did not influence phosphorylation of other JNK or DDK substrates.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "JNK") (:REACH)))))
 ((:TEXT
   "Taken together, our results in this report and a previous study (XREF_BIBR), together with studies from other labs (XREF_BIBR; XREF_BIBR), indicate that multiple phosphorylation based mechanisms facilitate the efficient recruitment of Poleta to sites of replication fork stalling.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Poleta") (:REACH)))))
 ((:TEXT
   "FGF19 activates both FGFR1-KLB and FGFR4-KLB efficiently and FGFR4 alone weakly but not FGFR1 alone as revealed by FGFR autophosphorylation and pERK1/2 (XREF_FIG); while in marked contrast, although FGF21 bound to FGFR4-KLB very weakly, it could only activate the FGFR1-KLB expressing cells (XREF_FIG), not the FGFR4-KLB, FGFR4 or FGFR1 expressing cells over the response level of the cells expressing KLB alone.")
  (MIS-MATCHES
   ("activates" (("controlled" "FGFR4") (:REACH ((("controller" "FGF19"))))))))
 ((:TEXT
   "In differentiated 3T3-L1 adipocytes that co-express predominantly the FGFR1-KLB, FGF19, FGF21 and FGF1 activate the ERK1/2 to an equal extent, while in hepatoma cells co-expressing preferentially the FGFR4-KLB but not FGFR1-KLB, FGF21 is unable to activate the ERK1/2 response as compared to FGF19 and FGF1 (XREF_FIG).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "ERK1/2") (:REACH ((("controller" "FGFR1-KLB"))))))))
 ((:TEXT "pCBP2 binds to and activates BRCA1 and p220 promoter [XREF_BIBR].")
  (MIS-MATCHES
   ("activates" (("controlled" "p220") (:REACH ((("controller" "pCBP2")))))
    (("controlled" "BRCA1") (:REACH ((("controller" "pCBP2"))))))))
 ((:TEXT
   "The serine/threonine kinase LKB1 is a tumour suppressor that regulates multiple biological pathways, including cell cycle control, cell polarity and energy metabolism by direct phosphorylation of 14 different AMP activated protein kinase (AMPK) family members.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "AMP") (:REACH)))))
 ((:TEXT
   "Conversely, small interfering RNAs directed against NF-Y alpha and the two FOXO proteins greatly reduced endogenous LKB1 expression and phosphorylation of LKB1 's main substrate AMPK in three different cell lines.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "LKB1") (:REACH)))))
 ((:TEXT
   "Known mechanisms that explain how LKB1 operates as a tumour suppressor, mainly depend on direct phosphorylation of different AMP activated protein kinase (AMPK) family members XREF_BIBR, XREF_BIBR, XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "AMP") (:REACH)))))
 ((:TEXT
   "FOXO3 and FOXO4 activated LKB1 gene transcription through interaction with their cognate recognition site 5 '-GTAAACAA-3 ' XREF_BIBR.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "LKB1 gene transcription")
     (:REACH ((("controller" "FOXO4")) (("controller" "FOXO3"))))))
   ("FOXO4 activated LKB1 gene transcription"
    (("controlled" "FOXO4 activated LKB1 gene transcription")
     (:REACH ((("controller" "LKB1"))))))
   ("FOXO3 and FOXO4 activated LKB1 gene transcription"
    (("controlled" "FOXO3 and FOXO4 activated LKB1 gene transcription")
     (:REACH ((("controller" "LKB1"))))))))
 ((:TEXT
   "Ectopic expression of Sp1, NF-Y and the FOXO transcription factors FOXO3 and FOXO4 activates the LKB1 promoter.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "LKB1")
     (:REACH
      ((("controller" "NF-Y")) (("controller" "FOXO"))
       (("controller" "Sp1"))))))))
 ((:TEXT
   "Ectopic expression of all three NF-Y subunits also activated the LKB1 wild-type promoter, while the deletion construct that lacks all three CCAAT boxes (LKB1 Pro IV/1) could not be induced (XREF_FIG).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "LKB1") (:REACH ((("controller" "NF-Y subunits"))))))))
 ((:TEXT
   "As described above, transcriptional activity of all FOXO proteins is negatively regulated by the protein kinase B (PKB) through direct phosphorylation of three amino acid side chains XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "acid") (:REACH)))))
 ((:TEXT
   "SGK-1, like PKB, belongs to the same family of protein kinases XREF_BIBR, is a downstream effector of the phosphatidylinositol 3-kinase pathway and is also able to phosphorylate FOXO transcription factors at the same residues like PKB XREF_BIBR.")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "FOXO") (:REACH ((("enzyme" "SGK-1"))))))))
 ((:TEXT
   "The interaction of this bivalent ligand (Grb2-SOS1-Grb2) with a trivalent scaffolding protein (fully phosphorylated LAT) offers the possibility of large aggregate formation since cross linking of a trivalent species by a bivalent ligand can yield highly branched aggregates.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "LAT") (:REACH)))))
 ((:TEXT
   "Two Grb2 molecules can bind to SOS1 to form a Grb2, SOS1, and Grb2 dimer, which can bridge two tyrosine phosphorylated LAT molecules.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "LAT") (:REACH)))))
 ((:TEXT
   "On T cells, shortly after receptor phosphorylation and LAT aggregation, LAT is internalized through a mechanism involving the ubiquitin ligase c-Cbl XREF_BIBR.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "LAT") (:REACH)))))
 ((:TEXT
   "Signal transducer and activator of transcription 3 (STAT3) is over-activated or phosphorylated in breast cancers.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "STAT3") (:REACH)))))
 ((:TEXT
   "PTPMeg2 (PTPN9, protein tyrosine phosphatase, non receptor type 9), a cytoplasmic phosphatase cloned with sequence homology to retinaldehyde binding protein and yeast SEC14p, is reported to dephosphorylate EGFR, ErB2 and Fox-1 [XREF_BIBR - XREF_BIBR].")
  (MIS-MATCHES ("dephosphorylate" (("substrate" "ErB2") (:REACH)))))
 ((:TEXT
   "Based on the observation that PTPMeg2 interacts with STAT3 in the absence of IL-6, we concluded that PTPMeg2 interacts with both the phosphorylated and unphosphorylated STAT3.")
  (MIS-MATCHES ("unphosphorylated" (("substrate" "STAT3") (:REACH)))))
 ((:TEXT
   "This result implies that PTPMeg2 directly targets STAT3 activated by v-Src.")
  (MIS-MATCHES
   ("activated" (("controlled" "STAT3") (:REACH ((("controller" "v-Src"))))))))
 ((:TEXT
   "RANKL activates c-Fos transcription (XREF_BIBR), possibly by transactivating EGFR (XREF_BIBR).")
  (MIS-MATCHES
   ("activates"
    (("controlled" "c-Fos transcription") (:REACH ((("controller" "RANKL"))))))
   ("RANKL activates c-Fos transcription"
    (("controlled" "RANKL activates c-Fos transcription")
     (:REACH ((("controller" "c-Fos"))))))))
 ((:TEXT
   "There are two possibilities that may lead to the ineffectiveness of PD98059 and SP600125 in the inhibition of LPS stimulated IL-6 secretion by gingival fibroblasts : (1) LPS simply does not activate ERK and JNK pathways; (2) LPS activates ERK and JNK pathways, but the activation of these pathways does not lead to an increase in IL-6 transcriptional activation.")
  (MIS-MATCHES
   ("activate" (("controlled" "JNK") (:REACH ((("controller" "LPS")))))
    (("controlled" "ERK") (:REACH ((("controller" "LPS"))))))
   ("activates" (("controlled" "ERK") (:REACH ((("controller" "LPS")))))
    (("controlled" "JNK") (:REACH ((("controller" "LPS"))))))))
 ((:TEXT
   "Results showed that LPS was capable of inducing the phosphorylation of ERK, JNK and p38 MAPK in both U937 cells and gingival fibroblasts (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p38 MAPK") (:REACH)))))
 ((:TEXT
   "While the cause of these conflicting observations is unknown, our present study, using both well controlled luciferase reporter system and transcription factor activity assay, demonstrated that LPS was unable to activate AP-1 activity in gingival fibroblasts.")
  (MIS-MATCHES
   ("activate" (("controlled" "AP-1") (:REACH ((("controller" "LPS"))))))))
 ((:TEXT
   "We have demonstrated previously that while LPS activates ERK, JNK, p38 MAPK and NFkappaB signaling pathways, simvastatin specifically targets LPS stimulated ERK activation by inhibiting protein isoprenylation mediated ERK activation in U937 mononuclear cells [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("activates" (("controlled" "ERK") (:REACH ((("controller" "LPS")))))
    (("controlled" "p38 MAPK") (:REACH ((("controller" "LPS")))))
    (("controlled" "JNK") (:REACH ((("controller" "LPS")))))
    (("controlled" "NFkappaB") (:REACH ((("controller" "LPS"))))))))
 ((:TEXT
   "In vertebrates, both casein kinase 1 delta and epsilon (CK1delta and CK1epsilon) regulate these circadian changes by phosphorylating other core clock proteins.")
  (MIS-MATCHES ("phosphorylating" (("substrate" "clock") (:REACH)))))
 ((:TEXT
   "In contrast to the change in phosphorylation of CXORF39, we detected weaker changes in the phospho-state of SERINE/THREONINE PROTEIN PHOSPHATASE 6 REGULATORY SUBUNIT 3 (SAPS3 (NP_997201)).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CXORF39") (:REACH)))))
 ((:TEXT
   "BMAL1 and CLOCK bind to E-boxes in the promoters of clock controlled genes thus activating their transcription XREF_BIBR.")
  (MIS-MATCHES
   ("activating"
    (("controlled" "transcription")
     (:REACH ((("controller" "CLOCK")) (("controller" "BMAL1"))))))))
 ((:TEXT
   "Next, to determine whether GSK3beta phosphorylates LCRMP-1 at Thr 628 in vivo, a nonphosphorylated LCRMP-1 mutant was generated by replacing Thr 628 to Ala (T628A).")
  (MIS-MATCHES
   ("nonphosphorylated"
    (("substrate" "LCRMP-1 mutant") (:REACH ((("site" "Thr-628"))))))))
 ((:TEXT
   "To further explore the effect of Thr 628 phosphorylation of LCRMP-1 expression on CL1-0 cell motility, we performed video time-lapse microscopy assay to monitor moving tracks of at least 10 individual cells over a 20-hour period.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "LCRMP-1") (:REACH ((("site" "Thr-628"))))))))
 ((:TEXT
   "On the basis of GSK3beta phosphorylated consensus motifs, Thr 628 amino acid residue of LCRMP-1 is the master phosphorylation site for GSK3beta (XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "GSK3beta") (:REACH)))))
 ((:TEXT
   "The luciferase reporter assay showed that the SIRT1 promoter activity was markedly activated by ATF4 in a dose dependent manner (XREF_FIG).")
  (MIS-MATCHES
   ("activated" (("controlled" "SIRT1") (:REACH ((("controller" "ATF4"))))))))
 ((:TEXT
   "In our study two putative ATF-CRE binding sites were found in the 1.2 kb SIRT1 promoter region, and ATF4 directly activated SIRT1 transcription via binding to both binding elements.")
  (MIS-MATCHES
   ("directly activated"
    (("controlled" "SIRT1 transcription") (:REACH ((("controller" "ATF4"))))))
   ("ATF4 directly activated SIRT1 transcription"
    (("controlled" "ATF4 directly activated SIRT1 transcription")
     (:REACH ((("controller" "SIRT1"))))))))
 ((:TEXT
   "A catalytically inactive PDK1 K110R point mutant XREF_BIBR was found to be comparably mono-ubiquitinated as wild type PDK1 and analysis with a phospho specific antibody showed that both PDK1 species were phosphorylated, indicating that kinase activity is not required for PDK1 mono-ubiquitination (XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "PDK1") (:REACH)))))
 ((:TEXT
   "Nutrient withdrawal, v-ATPase inhibition, and lysosomal stress inactivate the Rag GTPases, causing loss of mTORC1 from the lysosome and resulting in failure to re-phosphorylate TFEB.")
  (MIS-MATCHES
   ("inactivate"
    (("controlled" "Rag GTPases") (:REACH ((("controller" "v-ATPase"))))))))
 ((:TEXT
   "Growth factors such as insulin and insulin like growth factor-1 (IGF-1) can activate mTORC1 through their cognate receptor tyrosine kinase (RTK)-mediated phosphorylation and activation of PI3K and Akt [XREF_BIBR].")
  (MIS-MATCHES
   ("activation" (("controlled" "PI3K") (:REACH ((("controller" "Akt"))))))))
 ((:TEXT
   "RTK mediated activation of the Ras GTPase leads to the activation of these kinases through phosphorylation loops : Raf activates MEK, MEK activates ERK and ERK activates p90 ribosomal S6 kinase (RSK) [XREF_BIBR].")
  (MIS-MATCHES
   ("activates" (("controlled" "p90") (:REACH ((("controller" "ERK"))))))))
 ((:TEXT
   "Everolimus treatment activates Ras-ERK pathway in K-Ras mt PDAC cells.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "Ras-ERK") (:REACH ((("controller" "Everolimus"))))))))
 ((:TEXT
   "Next, we determined whether everolimus treatment activates Ras-Raf-ERK pathway in K-Ras mt PDAC cell lines.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "Ras-Raf-ERK") (:REACH ((("controller" "everolimus"))))))))
 ((:TEXT
   "Taken together, these results suggest that everolimus treatment inhibits mTORC1 but activates Ras-Raf-ERK pathway in K-Ras mt PDAC cells.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "Ras-Raf-ERK") (:REACH ((("controller" "everolimus"))))))))
 ((:TEXT
   "Everolimus treatment activated ERK pathway in the empty vector expressing PNAC-1 cells in the presence of IGF-1 (XREF_FIG left) and stimulated the cells growth (XREF_FIG, left).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "ERK") (:REACH ((("controller" "Everolimus"))))))))
 ((:TEXT
   "AKT isoforms are phosphorylated at high levels in a broad array of human tumor types, including ovarian cancers (XREF_BIBR - XREF_BIBR).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "AKT") (:REACH)))))
 ((:TEXT
   "To assess whether alterations in components of the PI3K and AKT pathway resulted in activation of AKT signaling, we evaluated the phosphorylation and abundance of AKT family members and downstream targets (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "AKT") (:REACH)))))
 ((:TEXT
   "Mutations in components of the PI3K pathway or in RAS can activate PI3K signaling.")
  (MIS-MATCHES
   ("activate" (("controlled" "PI3K") (:REACH ((("controller" "RAS"))))))))
 ((:TEXT
   "14 TNFalpha activated NF-kappaB represses p53 transcriptional activity and vice versa.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "NF-kappaB") (:REACH ((("controller" "TNFalpha")))))
    (("controlled" "p53") (:REACH ((("controller" "TNFalpha"))))))))
 ((:TEXT
   "Given that TNFalpha activated NF-kappaB represses p53 transcriptional activity and vice versa, 15 we investigated whether elevated p53 levels could have resulted in decreased NF-kappaB activation in cells treated with a combination of TNFalpha and CK2-Is.")
  (MIS-MATCHES
   ("activated" (("controlled" "p53") (:REACH ((("controller" "TNFalpha")))))
    (("controlled" "NF-kappaB") (:REACH ((("controller" "TNFalpha"))))))))
 ((:TEXT
   "Thus, p53 activation and NF-kappaB downregulation in CK2-I- and TNFalpha treated cells are two independent events.")
  (MIS-MATCHES
   ("activation" (("controlled" "TNFalpha") (:REACH ((("controller" "p53")))))
    (("controlled" "CK2-I-") (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "CK2 inhibition in glioma cells triggered activity of wild-type p53 as evidenced by increased p53 levels, its phosphorylation and acetylation, DNA binding ability and transcriptional activation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p53") (:REACH)))))
 ((:TEXT
   "Our studies indicate that CK2 inhibitor (i) sensitizes glioma cells to TNFalpha induced apoptosis in an caspase-8-independent manner (ii) decreases TNFalpha induced NF-kappaB activation (iii) reactivates wild-type p53 function (iv) inhibits SIRT1 activity (v) inhibits telomerase activity and (vi) induces senescence (XREF_FIG).")
  (MIS-MATCHES
   ("reactivates"
    (("controlled" "senescence") (:REACH ((("controller" "NF-kappaB"))))))))
 ((:TEXT
   "PD-1 engagement triggers Src homology 2 domain containing protein tyrosine phosphatase-2 (SHP2)-mediated dephosphorylation of proximal T-cell receptor (TCR) signaling molecules and attenuates the TCR signal (XREF_BIBR).")
  (MIS-MATCHES
   ("dephosphorylation"
    (("substrate" "receptor") (:REACH ((("enzyme" "SHP2"))))))))
 ((:TEXT
   "After confirming that the PD-L1 enhancer was bound by cJUN and JUN-B in the NOR-LCL (XREF_SUPPLEMENTARY) and that LMP1 increased the phosphorylation of AP-1 heterodimer component, c-Jun (XREF_FIG), we asked whether LMP1 also modulated PD-L1 promoter activity.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "AP-1") (:REACH ((("enzyme" "LMP1")))))
    (("substrate" "c-Jun") (:REACH ((("enzyme" "LMP1"))))))))
 ((:TEXT
   "Although FAK WT and E1015A were not phosphorylated under suspended cell conditions, both were rapidly phosphorylated at Y397 within 15 min on FN and remained activated at 60 min (XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "FAK") (:REACH)))))
 ((:TEXT
   "Akt was found to lose the ability to play a negative role on the cell cycle by directly phosphorylating Thr145 and Ser146 of P21 waf1 and Cip1, and then the phosphorylated P21 waf1 and Cip1 is unable to enter the nucleus from the cytoplasm (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylating"
    (("substrate" "Cip1") (:REACH ((("site" "Thr145")) (("site" "Ser146")))))
    (("substrate" "P21 waf1")
     (:REACH ((("site" "Ser146")) (("site" "Thr145"))))))))
 ((:TEXT
   "For example, Sp1 serine or threonine residues are phosphorylated by different kinases, including DNA dependent protein kinase, protein kinase A, and protein kinase C-zeta, and these phosphorylations cause an increase in the transcriptional activity of Sp1 by the enhancement of Sp1 binding to DNA (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "Sp1") (:REACH ((("site" "serine"))))))))
 ((:TEXT
   "In G2 stage, cyclin B1 is accumulated in cytoplasm, forms complex with CDK1, and then phosphorylated at Thr14 and Thr15, which causes the inactivation of cyclin B1 (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "B1") (:REACH ((("site" "Thr14")) (("site" "Thr15")))))
    (("substrate" "cyclin")
     (:REACH ((("site" "Thr15")) (("site" "Thr14"))))))))
 ((:TEXT
   "The results showed that no significant difference between GFP-Sp1 and GFP-Sp1 (T278D) was found, implying Sp1 phosphorylated at Thr739 affected its DNA binding activity specifically.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "Sp1") (:REACH ((("site" "Thr739"))))))))
 ((:TEXT
   "These results thus indicated that Sp1 is phosphorylated by CDK1 during early mitosis and dephosphorylated by PP2A after mitosis, and Sp1 DNA binding activity is regulated by CDK1 and PP2A in cell-cycle progression.")
  (MIS-MATCHES
   ("dephosphorylated" (("substrate" "Sp1") (:REACH ((("enzyme" "PP2A"))))))))
 ((:TEXT
   "Underphosphorylation of Sp1 interferes with cell-cycle progression into mitosis and is lethal to cancer cells during mitosis.")
  (MIS-MATCHES ("Underphosphorylation" (("substrate" "Sp1") (:REACH)))))
 ((:TEXT
   "However, when the cells were expressed with the unphosphorylated Sp1 (T739A) mutant, 21.1% of cells remained at the G1 fraction under nocodazole treatment, and more sub-G1 (17.4%) populations were observed (XREF_FIG).")
  (MIS-MATCHES ("unphosphorylated" (("substrate" "Sp1") (:REACH)))))
 ((:TEXT
   "The phosphorylation represses the DNA binding activity of Sp1 to disrupt the basal transcription complex (XREF_FIG and XREF_SUPPLEMENTARY), which leads to the formation of chromatin condensation during mitosis.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Sp1") (:REACH)))))
 ((:TEXT
   "We found that CDK1 is more important than JNK1 in phosphorylating Sp1 (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES ("phosphorylating" (("substrate" "Sp1") (:REACH)))))
 ((:TEXT
   "Although our results indicate that Thr739 phosphorylation is important for the regulation of Sp1 DNA binding activity, previous studies have shown that phosphorylation of Sp1 zinc fingers is also important for the regulation of Sp1 DNA binding activity (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Sp1") (:REACH)))))
 ((:TEXT
   "The PPIase-substrate interaction is regulated by phosphorylated modification of the substrate, with the PPIase catalyzing a conformational change to regulate the function of the substrate, including the regulation of protein stability, transcriptional activity, protein protein interactions and phosphorylation status (XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "PPIase") (:REACH)))))
 ((:TEXT
   "RNF8 rapidly accumulates at DSBs via the interaction of its forkhead associated (FHA) domain with the ATM phosphorylated TQXF motifs on MDC1.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "ATM") (:REACH)))))
 ((:TEXT
   "Another piece of evidence supporting the involvement of p38 MAPK in gp120 associated microglia neurotoxicity came from western blot studies demonstrating gp120 upregulation of p38 MAPK phosphorylation and the blockade of gp120 mediaed upregulation of p38 MAPK phosphorylation by 4-AP, TEA and MgTx (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "p38 MAPK") (:REACH ((("enzyme" "gp120"))))))))
 ((:TEXT
   "Studies have shown that phosphorylation (activation) of p38 MAPK is involved in the processes of microglia and macrophage activation, leading to pro inflammatory cytokine production and neuronal death.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p38 MAPK") (:REACH)))))
 ((:TEXT
   "31 Indeed, inhibition of p38 MAPK phosphorylation by a specific blocker SB203580 prevents gp120 associated neuronal death in mixed neuronal-glial cultures.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "p38 MAPK") (:REACH ((("enzyme" "SB203580"))))))))
 ((:TEXT
   "31 In an attempt to explore whether p38 MAPK is involved in gp120 associated elevation of microglia K v 1.3 expression and resultant neurotoxic activity, we examined effects of SB203580, a specific p38 MAPK inhibitor, on gp120 enhancement of microglia K v 1.3 expression and effects of MgTx on p38 MAPK phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p38 MAPK") (:REACH)))))
 ((:TEXT
   "Our data indicate that HIV-1 gp120 and Slit2 exert opposing effects on c-Src kinase signaling, namely, HIV-1 gp120 activates c-Src signaling, while pretreatment with Slit2N significantly reduces these effects (XREF_FIG).")
  (MIS-MATCHES
   ("activates" (("controlled" "c-Src") (:REACH ((("controller" "gp120"))))))))
 ((:TEXT
   "FN then activates alpha 5 beta 1 integrin, which results in enhanced intracellular signaling through alpha 5 beta 1 integrin, a significantly stronger interaction between FN and Robo4, and enhanced intracellular signaling through Robo4.")
  (MIS-MATCHES
   ("activates" (("controlled" "alpha") (:REACH ((("controller" "FN"))))))))
 ((:TEXT
   "Lapatinib (Tykerb (R), GSK) is a dual tyrosine kinase inhibitor (TKI) which inhibits phosphorylation of both HER2 and EGFR, thereby interrupting the downstream signaling pathways such as MAPK and AKT.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "EGFR") (:REACH ((("enzyme" "TKI")))))
    (("substrate" "HER2") (:REACH ((("enzyme" "TKI"))))))))
 ((:TEXT
   "HER2, EGFR and MET receptors, as well as MAPK and AKT, were de-phosphorylated in lapatinib treated GC cells (XREF_FIG).")
  (MIS-MATCHES
   ("de-phosphorylated" (("substrate" "EGFR") (:REACH ((("site" "MET"))))))))
 ((:TEXT
   "The population of apoptotic cells in NCI-N87 also decreased when AKT was re-phosphorylated by MET RTK (XREF_FIG).")
  (MIS-MATCHES
   ("re-phosphorylated" (("substrate" "AKT") (:REACH ((("site" "MET"))))))))
 ((:TEXT
   "Induction of p53 expression and Ser 15 phosphorylation was not affected by the knockdown of DNA-PKcs (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p53") (:REACH ((("site" "Ser-15"))))))))
 ((:TEXT
   "Mdm2 is a Novel Activator of ApoCIII Promoter Which is Antagonized by p53 and SHP Inhibition.")
  (MIS-MATCHES
   ("is a Novel Activator"
    (("controlled" "ApoCIII Promoter") (:REACH ((("controller" "Mdm2"))))))))
 ((:TEXT
   "Ectopic expression of p53 decreased HNF4alpha activation of the ApoCIII promoter and antagonized the effect of Mdm2.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "ApoCIII promoter")
     (:REACH ((("controller" "HNF4alpha"))))))))
 ((:TEXT
   "Co-expression of SHP further strengthened p53 inhibition and abolished Mdm2 activation of the ApoCIII promoter.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "ApoCIII promoter") (:REACH ((("controller" "Mdm2"))))))))
 ((:TEXT
   "Expression of Mdm2 alone did not activate the ApoCIII promoter (not shown).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "ApoCIII promoter") (:REACH ((("controller" "Mdm2"))))))))
 ((:TEXT "p53 antagonizes Mdm2 activation of the ApoCIII promoter.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "ApoCIII promoter") (:REACH ((("controller" "Mdm2"))))))))
 ((:TEXT
   "SHP strengthens p53 inhibition and abolishes Mdm2 activation of the ApoCIII promoter.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "ApoCIII promoter") (:REACH ((("controller" "Mdm2"))))))))
 ((:TEXT
   "Consistent with our previous results [XREF_BIBR], expression of SHP alone significantly inhibited ApoCIII promoter activity by HNF4alpha (XREF_FIG).")
  (MIS-MATCHES
   ("promoter activity"
    (("controlled" "ApoCIII promoter")
     (:REACH ((("controller" "HNF4alpha"))))))))
 ((:TEXT
   "p300 is a ubiquitous coactivator of transcription that has been reported to interact with many different transcription factors XREF_BIBR, including p53 XREF_BIBR.")
  (MIS-MATCHES
   ("is a ubiquitous coactivator"
    (("controlled" "transcription") (:REACH ((("controller" "p300"))))))))
 ((:TEXT
   "This suggests that p53 may have sequestered limiting amounts of p300 that otherwise could have activated Rad51 promoter activity.")
  (MIS-MATCHES
   ("activated" (("controlled" "Rad51") (:REACH ((("controller" "p300"))))))))
 ((:TEXT
   "The genes up-regulated in the tumors of PTEN promoter variant carriers represented several biological families related to ATP binding, protein phosphorylation and protein kinases.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ATP") (:REACH)))))
 ((:TEXT
   "The up-regulated genes annotated in large proportion to entities related to ATP or nucleoside binding and phosphorylation while DNA binding and transcriptional functions were common among down-regulated genes.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ATP") (:REACH)))))
 ((:TEXT
   "Most of the changes in neuronal, vascular, muscular and renal Na,K-ATPase functions in the diabetic state have been linked to hyperglycemia via activation of PKC and a subsequent decrease in Na,K-ATPase activity due to phosphorylation of the alpha-subunit XREF_BIBR.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "alpha-subunit") (:REACH)))))
 ((:TEXT
   "However, only a physiological concentration of C-peptide promotes ERK nuclear accumulation and phosphorylation independently from glycemic status.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "ERK") (:REACH ((("enzyme" "C-peptide"))))))))
 ((:TEXT
   "For example, HCV NS5A protein was shown to activate beta-catenin signaling cascades through increasing the stability of beta-catenin XREF_BIBR.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "beta-catenin")
     (:REACH ((("controller" "NS5A protein"))))))))
 ((:TEXT
   "HBV X protein along with Wnt-1 activated Wnt and beta-catenin signaling in Huh7 cells XREF_BIBR.")
  (MIS-MATCHES
   ("activated" (("controlled" "Wnt") (:REACH ((("controller" "Wnt-1"))))))))
 ((:TEXT
   "Recently, the nonstructural 5A (NS5A) protein of HCV has been shown to inactivate GSK3beta activity and subsequently increase accumulation of beta-catenin in hepatoma cells XREF_BIBR.")
  (MIS-MATCHES
   ("inactivate"
    (("controlled" "GSK3beta") (:REACH ((("controller" "NS5A"))))))))
 ((:TEXT
   "We aimed to investigate the prognostic impact of Akt (Akt1) phosphorylated at threonine 308 and serine 473, Akt2, Akt3, PI3K and PTEN, alone and in coexpression with ER and PgR in non gastrointestinal stromal tumor soft tissue sarcomas (non GIST STSs).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "ER")
     (:REACH ((("site" "serine 473")) (("site" "threonine 308")))))
    (("substrate" "PgR")
     (:REACH ((("site" "threonine 308")) (("site" "serine 473"))))))))
 ((:TEXT
   "Akt can be activated by phosphorylation at threonine 308 or at serine 473 for Akt1 or homologous sites for Akt2 and Akt3 by phosphatases which along with Akt isoforms, belong to the phosphoinositide 3-kinase (PI3K)/Akt pathway.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Akt1") (:REACH ((("site" "serine  473"))))))))
 ((:TEXT
   "In this study, we investigate the prognostic impact of all isoforms of Akt (phosphorylated at threonine 308 and Akt phosphorylated at serine 473, non phosphorylated Akt2, and total Akt3), PI3K, PTEN, ER and PgR in 249 non GIST STS patients.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "Akt2") (:REACH ((("site" "serine  473")))))
    (("substrate" "Akt")
     (:REACH ((("site" "threonine  308")) (("site" "serine  473")))))
    (("substrate" "Akt3") (:REACH ((("site" "serine  473"))))))))
 ((:TEXT
   "Al-Saad et al. [XREF_BIBR] has recently compared the prognostic impact of Akt phosphorylated on both sites and demonstrated that expression of p-Akt Thr 308, unlike p-Akt Ser 473, negatively influenced prognosis in patients with non small cell lung cancer.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "ERbeta was shown to activate PI3K and Akt signalling pathway [XREF_BIBR].")
  (MIS-MATCHES
   ("activate"
    (("controlled" "signalling pathway") (:REACH ((("controller" "ERbeta")))))
    (("controlled" "Akt") (:REACH ((("controller" "ERbeta")))))
    (("controlled" "PI3K") (:REACH ((("controller" "ERbeta"))))))))
 ((:TEXT
   "At the transcriptional level, NF-kappaB can activate HuR transcription downstream of the PI3K-AKT signaling pathway (XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "transcription downstream of the PI3K-AKT")
     (:REACH ((("controller" "NF-kappaB")))))
    (("controlled" "HuR transcription")
     (:REACH ((("controller" "NF-kappaB"))))))
   ("NF-kappaB can activate HuR transcription"
    (("controlled" "NF-kappaB can activate HuR transcription")
     (:REACH ((("controller" "HuR"))))))))
 ((:TEXT
   "The best characterized chromatin alteration in DNA repair is the phosphorylation of the histone variant H2AX (gamma-H2AX) by DNA damage response protein kinases (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "histone") (:REACH)))))
 ((:TEXT
   "Thrombospondin-1 (TSP-1) is an endogenous inhibitor of angiogenesis encoded by the THBS1 gene, whose promoter is activated by p53.")
  (MIS-MATCHES
   ("activated" (("controlled" "THBS1") (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "Here, we determined that in HCT116 CRC cells, p53 activates the THBS1 primary transcript, but fails to boost THBS1 mRNA or protein levels, implying post-transcriptional regulation by microRNAs.")
  (MIS-MATCHES
   ("activates" (("controlled" "THBS1") (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "Given that miR-194 expression is known to be GI tract specific (XREF_BIBR - XREF_BIBR) and also activated by p53 (XREF_BIBR, XREF_BIBR) we asked how it impacts the p53 - TSP-1 axis in colon tumors.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "miR-194 expression") (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "In contrast, in MyD88 gene silenced macrophages, p70s6K phosphorylation increased 3-fold in response to TLR4 stimulation, and mTOR inhibition reduced p70s6K phosphorylation to baseline levels (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "p70s6K") (:REACH ((("enzyme" "mTOR"))))))))
 ((:TEXT
   "Critical involvement of mTOR is supported by the findings that mTOR is constitutively upregulated in HIV+ macrophages (as measured by p70S6k phosphorylation and mTOR phosphorylation).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p70S6k") (:REACH))
    (("substrate" "mTOR") (:REACH)))))
 ((:TEXT
   "In response to amino acid availability, the class III PI-3-kinase hVps34 activates the phospholipase PLD and mTORC1 signaling to regulate mammalian cell size.")
  (MIS-MATCHES
   ("activates" (("controlled" "PLD") (:REACH ((("controller" "hVps34")))))
    (("controlled" "mTORC1") (:REACH ((("controller" "hVps34"))))))))
 ((:TEXT
   "hVps34 is necessary for amino acid activation of PLD1 upstream of mTORC1.")
  (MIS-MATCHES
   ("activation" (("controlled" "PLD1") (:REACH ((("controller" "acid"))))))))
 ((:TEXT
   "As neither 3-MA nor any other known inhibitor is absolutely specific for hVps34, we sought definitive evidence for hVps34 involvement by knockdown, which indeed inhibited amino acid activation of cellular PLD (XREF_FIG).")
  (MIS-MATCHES
   ("activation" (("controlled" "PLD") (:REACH ((("controller" "acid"))))))))
 ((:TEXT
   "It is noteworthy that exogenous PA could activate mTORC1 signaling in the absence of mitogens (XREF_FIG; XREF_BIBR) but not in the absence of amino acids (XREF_FIG, first through fourth lanes).")
  (MIS-MATCHES
   ("activate" (("controlled" "mTORC1") (:REACH ((("controller" "PA"))))))))
 ((:TEXT
   "Therefore, the hVps34-PLD1 pathway is activated by amino acid signals independently of the Rag pathway.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "hVps34-PLD1")
     (:REACH ((("controller" "acid")) (("controller" "Rag"))))))))
 ((:TEXT
   "The fact that PA alone is not sufficient to activate mTORC1 signaling in the absence of amino acids (XREF_BIBR) can be readily explained by the parallel requirement of mTORC1 translocation via Rag.")
  (MIS-MATCHES
   ("activate" (("controlled" "mTORC1") (:REACH ((("controller" "PA"))))))))
 ((:TEXT
   "In conclusion, the collective evidence we have presented identifies a critical role of the hVps34-PLD1 pathway in amino acid activation of mTORC1 signaling and unveils a clearer view of this nutrient sensing network of central importance.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "mTORC1") (:REACH ((("controller" "acid"))))))))
 ((:TEXT
   "Bioinformatic analyses of the 141 confirmed hits required for SIN capsid and GFP-LC 3 colocalization revealed enrichment for gene sets associated with biological processes and molecular functions including RNA splicing and processing, protein phosphorylation, transport, calcium binding and the cytoskeleton (XREF_SUPPLEMENTARY, XREF_SUPPLEMENTARY).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "calcium-binding") (:REACH)))))
 ((:TEXT
   "While mTORC1 is mainly involved in regulation of protein translation, cell size, and cell proliferation by phosphorylating S6K1 and eIF-4E-BP1, two key regulators of protein synthesis, mTORC2 regulates cell survival via directly phosphorylating and activating AKT and SGK1 (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylating" (("substrate" "eIF-4E-BP1") (:REACH))
    (("substrate" "SGK1") (:REACH)) (("substrate" "AKT") (:REACH)))))
 ((:TEXT
   "We then determined whether betaTrCP-DEPTOR binding was dependent on the DEPTOR degron motif 286 SSGYFS 291 as well as its phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "DEPTOR") (:REACH)))))
 ((:TEXT
   "To further determine the nature of DEPTOR degradation in a phosphorylation dependent manner, we raised a phospho-antibody against a DEPTOR peptide with all three serine residues (Ser 286,287,291) phosphorylated on the DEPTOR degron (285 GpSpSGYFpSSSPTLSKKC).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "DEPTOR") (:REACH)))))
 ((:TEXT
   "Indeed, glucose deprivation caused a time dependent DEPTOR accumulation and mTOR inactivation (as reflected by reduced S6K1 phosphorylation), as well as autophagy induction, as evidenced by accumulation of LC3-II (lipid conjugated form of LC3, localized to the membranes of autophagosomes), a hallmark of autophagy (XREF_FIG, and XREF_SUPPLEMENTARY).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6K1") (:REACH)))))
 ((:TEXT
   "69 As Nrf2 is a potent activator of Phase II detoxifying enzymes and other cytoprotective proteins through binding to AREs, Nrf2 translocation likely serves as a catalyst for relatively low concentrations of flavanols to exert potent actions on pro oxidative and inflammatory mediators (see XREF_FIG).")
  (MIS-MATCHES
   ("is a potent activator"
    (("controlled" "Phase II") (:REACH ((("controller" "Nrf2"))))))))
 ((:TEXT
   "For example, it is well known that ROS are potent activators of MMPs.")
  (MIS-MATCHES
   ("are potent activators"
    (("controlled" "MMPs") (:REACH ((("controller" "ROS"))))))))
 ((:TEXT
   "Our results therefore demonstrate that downregulation of CNOT6L and VAPA activated the PI3K and AKT pathway in a microRNA dependent manner, consistent with their role as PTEN ceRNAs.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "AKT")
     (:REACH ((("controller" "CNOT6L")) (("controller" "VAPA")))))
    (("controlled" "PI3K")
     (:REACH ((("controller" "CNOT6L")) (("controller" "VAPA"))))))))
 ((:TEXT
   "In subsequent steps of HIV-1 entry, cofilin is dephosphorylated and thus activated, leading to the fragmentation of existing actin filaments and thus presumably loosening of the actin cortex [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("activated"
    (("controlled" "actin") (:REACH ((("controller" "cofilin"))))))))
 ((:TEXT
   "BANK1 protein has 13 tyrosines susceptible of phosphorylation, two ankyrin repeats, a conserved Dof, BCAP, and BANK (DBB) domain, and a coiled-coil motif.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "BCAP") (:REACH ((("site" "(DBB) domain"))))))))
 ((:TEXT
   "However, in breast cancer patients, the cellular functions of HSP27 that is phosphorylated at various sites (Ser78, Ser82 and Ser15) have been analysed, and it was shown that the phosphorylation of HSP27 at Ser78 but not at Ser15 or Ser82 was significantly correlated with positive HER2 and lymph node status XREF_BIBR.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "HSP27") (:REACH ((("site" "Ser15"))))))))
 ((:TEXT
   "Previous studies XREF_BIBR, XREF_BIBR and results herein support the notion that Lck mediates this interaction through two distinct domains, with its SH2 and SH3 domains binding the CD28 phosphorylated P 206 Y * AP 209 motif or the PKC-theta P 331 xxP 334 motif in V3, respectively.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CD28") (:REACH)))))
 ((:TEXT
   "RNA polymerase III, DAI and IFI16 signal to cause type I IFN production, while AIM2 activates the inflammasome leading to processing of pro interleukin (IL)-1beta and release of IL-1beta XREF_BIBR, XREF_BIBR, XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activates" (("controlled" "IL") (:REACH ((("controller" "AIM2")))))
    (("controlled" "interleukin") (:REACH ((("controller" "AIM2"))))))))
 ((:TEXT
   "During viral infection, IRF3 and NF-kappaB co-operate to activate the IFN-beta and the CCL5 promoters.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "CCL5")
     (:REACH ((("controller" "IRF3")) (("controller" "NF-kappaB"))))))))
 ((:TEXT
   "Over-expression of IRF3-5D induced the expression of a luciferase reporter driven by an ISRE element derived from the ISG15 promoter (XREF_FIG), which was shown previously to be transcriptionally activated by IRFs XREF_BIBR.")
  (MIS-MATCHES
   ("activated" (("controlled" "ISG15") (:REACH ((("controller" "IRFs"))))))))
 ((:TEXT
   "Furthermore, knockdown of SIRT1 in ER negative breast cancer cells is not able reactivate ERalpha expression.")
  (MIS-MATCHES
   ("reactivate"
    (("controlled" "ERalpha expression")
     (:REACH ((("controller" "SIRT1")) (("controller" "ER"))))))))
 ((:TEXT
   "However, HDAC1 and HDAC3 deacetylate ERalpha and knockdown of these HDACs reactivates ERalpha expression (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("reactivates"
    (("controlled" "ERalpha expression")
     (:REACH ((("controller" "ERalpha"))))))))
 ((:TEXT
   "In this study, we demonstrate that MD-2 is also tyrosine phosphorylated following LPS stimulation.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "MD-2") (:REACH ((("enzyme" "LPS") ("site" "tyrosine"))))))))
 ((:TEXT
   "LPS induced tyrosine phosphorylation of MD-2 is specific, it is blocked by the tyrosine kinase inhibitor, Herbimycin A, and by an inhibitor of endocytosis, Cytochalsin-D, suggesting that MD-2 phosphorylation occurs during trafficking of MD2 and not on cell surface.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "Our study demonstrates that tyrosine phosphorylation of MD-2 is important for signaling following exposure to LPS and underscores the importance of this event in mediating an efficient and prompt immune response.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "In this study, we have identified that MD-2 is also tyrosine phosphorylated upon LPS binding.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "This phosphorylation event is inhibited by the tyrosine kinase inhibitor herbimycin A. Furthermore, an endocytosis inhibitor, cytochalasin D, could block the tyrosine phosphorylation of MD-2 in cells stimulated with LPS.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2")
     (:REACH ((("enzyme" "cytochalasin D") ("site" "tyrosine"))))))))
 ((:TEXT
   "In addition, we determined that Lyn interacts with MD2 and that a Lyn binding peptide inhibitor specifically abolishes MD-2 tyrosine phosphorylation, indicating that Lyn is the likely kinase required for MD-2 tyrosine phophorylation.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT "MD-2 is tyrosine phosphorylated upon stimulation with LPS.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "Tyrosine phosphorylation of numerous proteins is induced upon stimulation with LPS and indeed the LPS receptor, TLR4, is itself tyrosine phosphorylated.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "TLR4") (:REACH ((("site" "tyrosine")))))
    (("substrate" "LPS receptor") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "Proteins were immunoprecipitated from cell extracts with an anti-Flag Ab and analyzed by immunoblotting with an Ab that detects proteins phosphorylated on phosphotyrosine residues.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "phosphotyrosine") (:REACH)))))
 ((:TEXT
   "Upon stimulation with LPS, MD-2 is tyrosine phosphorylated (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "The presence of 5 mM phosphotyrosine, a competitive inhibitor, completely abrogated the immunoreactivity detected by the anti-phosphotyrosine Ab, in contrast, phosphoserine or phosphothreonine had no effect on MD-2 tyrosine phosphorylation (data not shown), which confirms the specificity of this result.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "In addition, MD-2 tyrosine phosphorylation was not observed after stimulation with IL-1beta or TNFalpha or RsDPLA, a biologically inactive analogue of lipid A (data not shown).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "We next hypothesized that MD-2 phosphorylation must occur during trafficking and not on the cell surface, therefore we investigated the role of receptor or ligand internalization and endocytosis on the phosphorylation status of MD-2.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "This suggests that MD-2 tyrosine phosphorylation most likely occurs intracellularly during trafficking and not on the cell surface.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "We therefore investigated if Lyn was also involved in the phosphorylation of MD-2, given that MD-2 tyrosine phosphorylation was abolished following pretreatment with herbimycin A (XREF_FIG), a potent Src kinase inhibitor, which has been shown to inhibit Lyn activity (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "We saw that even without the presence of TLR4, MD-2 immunoprecipitated with Lyn, confirming that Lyn and MD-2 could directly interact (XREF_FIG), suggesting that Lyn is most likely the kinase that phosphorylates MD-2.")
  (MIS-MATCHES ("phosphorylates" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "Lyn specific peptide inhibitor blocks MD-2 tyrosine phosphorylation.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("enzyme" "Lyn") ("site" "tyrosine"))))))))
 ((:TEXT
   "Given that MD-2 tyrosine phosphorylation was abolished following pretreatment with herbimycin A, and that MD-2 and Lyn were found to be in a complex together, we next wanted to further confirm that Lyn was required for MD-2 tyrosine phosphorylation.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "We therefore used a Lyn specific peptide inhibitor (XREF_BIBR) to examine the effect of inhibiting Lyn activation on MD-2 phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "IL-8 production was significantly diminished in cells transfected with wild-type MD-2, and the non affected mutants Y75F and Y79F in the presence of Lyn peptide inhibitor, whereas there was no significant difference with and without Lyn peptide inhibitor in the phosphorylation mutants Y22F, Y131F, and Y22F, Y131F double mutant transfected cells, thus confirming the importantance of MD-2 tyrosine phosphorylation by Lyn kinase in mediating the signaling of the LPS-MD-2-TLR4-complex.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "Furthermore, our results suggest that phosphorylation of MD-2 on specific tyrosines are required for NF-kappa B activation and may be a regulatory step employed to curtail an over exuberant host immune response.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "Furthermore, we confirmed that this MD-2 tyrosine phosphorylation was specific to LPS stimulation, as it did not occur following stimulation with IL-1beta or TNFalpha.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT "A candidate kinase for MD-2 phosphorylation is also Lyn kinase.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "Furthermore we determined that LPS induced MD-2 tyrosine phosphorylation is strongly abolished following pre-treatment with a Lyn binding peptide inhibitor.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("enzyme" "LPS") ("site" "tyrosine"))))))))
 ((:TEXT
   "Since MD-2 and Lyn appear to directly interact with one another, and MD-2 tyrosine phosphorylation is diminished following Lyn kinase inactivation, we hypothesize that similar to TLR4, Lyn kinase is involved in the tyrosine phosphorylation of MD-2.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MD-2") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "This observation raises the possibility that MD-2 may deliver Lyn to the TLR4 complex in order to facilitate TLR4 phosphorylation by Lyn as well as phosphorylating MD-2.")
  (MIS-MATCHES ("phosphorylating" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "Even though Lyn and MD-2 appear to be pre-associated, MD-2 phosphorylation does not occur until LPS and TLR4 signaling is initiated, perhaps triggering some conformational shift, which now allows Lyn to phosphorylate MD-2.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MD-2") (:REACH)))
   ("phosphorylate" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "The mechanism by which Lyn kinase might interact and phosphorylate MD-2 is still unclear.")
  (MIS-MATCHES ("phosphorylate" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "MD-2 can also likely become tyrosine phosphorylated upon LPS stimulation during trafficking after LPS internalization.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "LPS") (:REACH)))))
 ((:TEXT
   "Furthermore this study showing that MD-2 can recognize and signal in response to LPS intracellularly makes our observation of MD-2 phosphorylation even more intriguing.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "Further research into the mechanism of MD-2 phosphorylation and its role in TLR4 activation is required.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MD-2") (:REACH)))))
 ((:TEXT
   "Although AKT mediated phosphorylation downstream of the BCR-ABL1 kinase results in global inactivation of FoxO factors (XREF_BIBR; Fig.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "BCR-ABL1 kinase") (:REACH ((("enzyme" "AKT"))))))))
 ((:TEXT
   "Detailed mechanistic analysis defined a role for mind bomb (MIB) E3 ligases in K63 linked ubiquitination of TBK1, a kinase that phosphorylates IRF transcription factors controlling interferon production.")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "IRF") (:REACH ((("enzyme" "TBK1"))))))))
 ((:TEXT
   "Signaling through TLR3 and TLR4 activate TBK1 kinase activity and induce production of potent antimicrobial cytokines including type I interferons (IFN).")
  (MIS-MATCHES
   ("activate" (("controlled" "TBK1") (:REACH ((("controller" "TLR4"))))))))
 ((:TEXT
   "MIB1 activated NF-kappaB and ISRE reporter activity, inhibited viral replication, and was required for IFN production (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "ISRE reporter") (:REACH ((("controller" "MIB1")))))
    (("controlled" "NF-kappaB") (:REACH ((("controller" "MIB1"))))))))
 ((:TEXT
   "Overexpression of MIB2, a MIB1 homolog, also activated NF-kappaB and ISRE reporter activity (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "ISRE reporter") (:REACH ((("controller" "MIB2")))))
    (("controlled" "NF-kappaB") (:REACH ((("controller" "MIB2"))))))))
 ((:TEXT
   "Mice lacking MIB1 die during early embryogenesis with defects in neurogenesis and vasculogenesis resulting from the failure to activate Notch signaling (XREF_BIBR).")
  (MIS-MATCHES
   ("activate" (("controlled" "Notch") (:REACH ((("controller" "MIB1"))))))))
 ((:TEXT
   "Although we demonstrate that overexpression of MIB1 and MIB2 activates both NF-kappaB and IRF3 signaling, with RNAi we noted that MIBs were not required for NF-kappaB activation or IL-6 production in response to RNA virus.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "NF-kappaB")
     (:REACH ((("controller" "MIB1")) (("controller" "MIB2")))))
    (("controlled" "IRF3")
     (:REACH ((("controller" "MIB1")) (("controller" "MIB2"))))))))
 ((:TEXT
   "Similarly, it has been shown that TBK1 is not essential for NF-kappaB activation induced by virus although overexpression of TBK1 strongly activates NF-kappaB signaling (XREF_BIBR).")
  (MIS-MATCHES
   ("activates"
    (("controlled" "NF-kappaB") (:REACH ((("controller" "TBK1"))))))))
 ((:TEXT
   "Among them, SURF4 overexpression activated NF-kappaB reporter activity and inhibited VSV replication whereas RNAi of NPC1 inhibited HSV mediated IFN production.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "NF-kappaB") (:REACH ((("controller" "SURF4")))))
    (("controlled" "IFN") (:REACH ((("controller" "SURF4"))))))))
 ((:TEXT
   "Therefore, PKC, CAMKII and Akt phosphorylation, after V-293 and PED-293 cells adhesion to LM, was evaluated by Western blot analysis.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAMKII") (:REACH)))))
 ((:TEXT
   "Akt was not activated whereas CAMKII was phosphorylated after 1 hr and still at 24 hrs; PKC was transiently phosphorylated at 1 hr (XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CAMKII") (:REACH)))))
 ((:TEXT
   "Moreover, in PED and PEA -15 overexpressing cells, increased 67LR mediated cell adhesion to LM activates a signal transduction pathway that restores cell proliferation and promotes resistance to apoptosis, thus also contributing to cancer cell survival in a poor microenvironment, as it occurs during metastatic spread and colonization.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "signal transduction")
     (:REACH ((("controller" "cell adhesion"))))))))
 ((:TEXT
   "Recognition of muropeptides induces oligomerization of the NACHT (named after NAIP, CIITA, HET-E and TP1) domains of NODs and initiates the recruitment of interacting proteins binding to serine/threonine protein kinase Rip2 (RICK/CARDIAK/Ripk2) via CARD-CARD interactions activating I-kappaB kinase (IKK) leading to phosphorylation and degradation of I-kappaBs (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "I-kappaBs") (:REACH)))))
 ((:TEXT
   "We further identified Src as a non receptor tyrosine kinase able to tyrosine phosphorylate Rip2 in the presence of GEF-H1.")
  (MIS-MATCHES ("phosphorylate" (("substrate" "GEF-H1") (:REACH)))))
 ((:TEXT
   "GEF-H1 was able to activate NF-kappaB independently of NOD2; however, the recognition of MDP required NOD2 in macrophages, as expected (XREF_FIG).")
  (MIS-MATCHES
   ("activate" (("controlled" "NOD2") (:REACH ((("controller" "GEF-H1"))))))))
 ((:TEXT
   "Surprisingly, the interaction with GEF-H1 resulted in the tyrosine phosphorylation of Rip2, but not Rip1 or Rip3 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Rip1") (:REACH ((("site" "tyrosine")))))
    (("substrate" "Rip3") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "Thus far, only potential serine/threonine phosphorylation of Rip kinases had been implicated in the regulation of their function.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Rip") (:REACH)))))
 ((:TEXT
   "Tyrosine phosphorylation at Y381 represents a new activation dependent post-translational modification of Rip2 that is required for innate immune signaling.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Rip2") (:REACH)))))
 ((:TEXT
   "While phosphorylation of this tyrosine residue was required for Rip2 activation by GEF-H1, our data do not exclude additional subsequent tyrosine phosphorylation events in Rip2, which may occur during the interaction with NOD2 as it has been proposed that Rip2 functions as a tyrosine kinase autophosphorylating itself during NOD2 signaling (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Rip2") (:REACH)))))
 ((:TEXT
   "The 3020insC mutation in NOD2 prevented Rip2 tyrosine phosphorylation in agreement with the inability of this NOD2 variant to activate NF-kappaB signaling and innate immune responses.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "NF-kappaB") (:REACH ((("controller" "Rip2"))))))))
 ((:TEXT
   "Inducible TLR tyrosine phosphorylation and RhoA activity have been linked to activation of Src family kinases, which can be an integral part of TLR signaling complexes (XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "RhoA") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "On the other hand, the molecular mechanisms that allow the activation of monocytes and macrophages and the synthesis and release of inflammatory cytokines are less well characterized, even if we and others reported that in macrophages Nef is able to activate NF-kappaB signalling pathways and that this activation is responsible for the production of cytokines and for the increased infection of resting T lymphocytes XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "NF-kappaB") (:REACH ((("controller" "Nef"))))))))
 ((:TEXT
   "As shown in XREF_FIG, recNef induced only a very light STAT1 and STAT2 tyrosine phosphorylation signal in TRAF2 silenced cultures.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "TRAF2") (:REACH ((("enzyme" "STAT2"))))))))
 ((:TEXT
   "XREF_FIG shows that Glu to Ala substitutions within the AC in the myr + 4EA mutant completely abrogate the ability of Nef to induce IKKs phosphorylation and IkappaB degradation, thereby preventing the activation of NF-kappaB signalling events.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "IkappaB") (:REACH)))))
 ((:TEXT
   "The bacterial gpt gene in the recombination substrate pDT219 was inactivated by insertion of an I-SceI recognition site into the KpnI site (XREF_FIG).")
  (MIS-MATCHES
   ("inactivated"
    (("controlled" "bacterial gpt gene")
     (:REACH ((("controller" "I-SceI recognition site"))))))))
 ((:TEXT
   "Interestingly, while efficient DNA replication was observed, there were virtually no mitotic nuclei in liver tissue exposed to DEN treatment (XREF_FIG), despite detectable levels of phosphorylated serine 10 on Histone H3 in interphase nuclei, indicating G2-phase arrest (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "Histone H3")
     (:REACH ((("site" "10")) (("site" "serine"))))))))
 ((:TEXT
   "Furthermore, the phosphorylation of palmitoyl acyltransferase ZDHHC8 is regulated by PKMzeta.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "acyltransferase") (:REACH)))))
 ((:TEXT
   "After normalizing to full length TrkB in the same lane, both WT mice and TrkB F616A Control mice (Bph-PP1-Elvax on VC) showed similar increases in TrkB phosphorylation (XREF_FIG) and in PSD-95 levels (XREF_FIG) over the EO interval (P12-P14).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PSD-95") (:REACH)))))
 ((:TEXT
   "Our previous work suggested that in young cortical neurons NMDA receptor currents activate BDNF-TrkB signaling and drive movement of PSD-95 from ER to Golgi in cell bodies prior to dendritic transport (XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "PSD-95") (:REACH ((("controller" "NMDA receptor")))))
    (("controlled" "BDNF-TrkB") (:REACH ((("controller" "NMDA receptor"))))))))
 ((:TEXT
   "PKMzeta also regulates experience induced LTP in primary visual cortex (XREF_BIBR) and BDNF activates PKMzeta (XREF_BIBR).")
  (MIS-MATCHES
   ("activates"
    (("controlled" "PKMzeta") (:REACH ((("controller" "BDNF"))))))))
 ((:TEXT
   "We reasoned that the putative PAT (s) should be phosphorylated by PKMzeta.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "PAT") (:REACH ((("enzyme" "PKMzeta"))))))))
 ((:TEXT
   "We also show, for the first time, that PKMzeta regulates phosphorylation of only ZDHHC8 out of the 6 palmitoyl acyltransferases known to act on PSD-95 (XREF_FIG) and overexpression of ZDHHC8 rescues significant amounts of PSD-95 transport to synapses in the presence of the PKMzeta pseudosubstrate which reduces, but probably does not completely block, PKMzeta activity when electroporated in vivo (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ZDHHC8") (:REACH)))))
 ((:TEXT
   "However phosphorylation may also regulate intracellular localization or stability of ZDHHC8.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ZDHHC8") (:REACH)))))
 ((:TEXT
   "Therefore, in addition to FOXO3a, E2F1 may also activate p27 transcription by interacting with the E2F1 sites on the p27 promoter.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "p27 transcription") (:REACH ((("controller" "E2F1"))))))
   ("E2F1 may also activate p27 transcription"
    (("controlled" "E2F1 may also activate p27 transcription")
     (:REACH ((("controller" "p27"))))))))
 ((:TEXT
   "E2F1 has been shown to activate p27 expression by binding to its promoter, and p27, in turn, negatively regulates the activity of E2F1 (XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "p27 expression") (:REACH ((("controller" "E2F1"))))))))
 ((:TEXT
   "There is evidence to suggest that clustering of integrins leads to clustering of EGFR and its cross phosphorylation (XREF_BIBR) and that the process involves FAK dependent signaling (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "EGFR") (:REACH)))))
 ((:TEXT
   "Decreased expression of cyclin D and cyclin E and decreased phosphorylation of pocket proteins might contribute to p27 expression, and thus, to G0/G1 arrest (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "pocket proteins") (:REACH)))))
 ((:TEXT
   "Sorted iTreg cells rested for additional period of time (6-7 hours on ice) revealed the activation of TCR dependent downstream events (as depicted in XREF_FIG by the phosphorylation of LAT), even though the actual level of activated Lck was essentially identical for TCR cross linked and mock activated cells.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "LAT") (:REACH)))))
 ((:TEXT
   "It is found that tight junction protein AMOTL2 is a novel activator of LATS2, raising the possibility that tight junction assembly promotes LATS2 dependent inhibition of cell proliferation.")
  (MIS-MATCHES
   ("is a novel activator"
    (("controlled" "LATS2") (:REACH ((("controller" "AMOTL2"))))))))
 ((:TEXT
   "We also mutated the YAP binding site in AMOTL2 and found that this mutant (AMOTL2 Y213A) promoted phosphorylation just as well as wild-type AMOTL2 (Supplemental Figure S2D), showing that LATS2 and AMOTL2 do not need to bind directly to YAP2 to promote its phosphorylation.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "AMOTL2") (:REACH ((("enzyme" "AMOTL2"))))))))
 ((:TEXT
   "MST2 phosphorylates T1041 of LATS2 directly (XREF_BIBR) and also phosphorylates MOB1A/B (XREF_BIBR; XREF_BIBR; XREF_BIBR), which enhances its binding to LATS2 and stimulates LATS2 to autophosphorylate on S872 (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "MOB1A/B") (:REACH ((("enzyme" "MST2"))))))))
 ((:TEXT
   "The wt-MDM2 as well as MDM2 mutations at 166 (MDM2/166A that can not be phosphorylated, and MDM2/166E that mimics phosphorylated MDM2) (XREF_BIBR) were used for transfection.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "MDM2/166E") (:REACH)))))
 ((:TEXT
   "Also, the expression of p73 in LA1-55N was not activated by inhibition of MDM2 (XREF_FIG).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "expression of p73") (:REACH ((("controller" "MDM2"))))))))
 ((:TEXT
   "However, in our cell model, the p53 function was not activated by knockdown of MDM2 in neuroblastoma that has overexpression of both MDM2 and MYCN.")
  (MIS-MATCHES
   ("activated" (("controlled" "p53") (:REACH ((("controller" "MDM2"))))))))
 ((:TEXT
   "However, it is known that regulation of receptor tyrosine kinases is complex and includes phosphorylation of the juxtamembrane region XREF_BIBR - XREF_BIBR.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "juxtamembrane region") (:REACH)))))
 ((:TEXT
   "However, the pharmacogenetic finding remains that an over-representation of patients on additional AKT1 activating drugs, lithium or valproate, had differing cognitive and prefrontal-MTL brain outcomes determined by AKT1 genetic variation.")
  (MIS-MATCHES
   ("activating"
    (("controlled" "valproate") (:REACH ((("controller" "AKT1")))))
    (("controlled" "lithium") (:REACH ((("controller" "AKT1"))))))))
 ((:TEXT
   "Since biochemical pathways involving RNA often require RNA helicases to modulate RNA structure and activity, we used luciferase reporter gene constructs and metabolic labeling to demonstrate that HELZ overexpression activates global protein translation whereas RNA-interference mediated HELZ suppression had the opposite effect.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "translation") (:REACH ((("controller" "HELZ"))))))))
 ((:TEXT
   "Importantly, downregulation of HELZ reduced translational initiation, resulting in the disassembly of polysomes, in a reduction of cell proliferation and hypophosphorylation of ribosomal protein S6.")
  (MIS-MATCHES
   ("hypophosphorylation" (("substrate" "ribosomal protein S6") (:REACH)))))
 ((:TEXT
   "Mechanistically, HELZ downregulation resulted in S6 hypophosphorylation and dissociation of polysomes, suppressing cell proliferation.")
  (MIS-MATCHES ("hypophosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Importantly, stable HELZ downregulation in the HEK293 clone 4-10 (previously described in XREF_FIG) resulted also in attenuation of S6 phosphorylation (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Clone 4-6 showed a somewhat intermediate HELZ and p-S6 suppression and clone 4-14 served as control, demonstrating dose dependent attenuation of S6 phosphorylation in an independent tissue culture model.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Phosphorylation of S6 is regulated by mTOR complex 1 (mTORC1) that activates S6 kinase (S6K) as well as compensatory pathways involving AKT or MAPK.")
  (MIS-MATCHES
   ("activates" (("controlled" "S6") (:REACH ((("controller" "mTORC1"))))))
   ("Phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Although hypophosphorylation of S6 by HELZ downregulation was independent of total S6K levels, we can not exclude that HELZ modulated S6K activity directly or alternatively by reducing the activity or expression of a S6K specific phosphatase.")
  (MIS-MATCHES
   ("hypophosphorylation"
    (("substrate" "S6") (:REACH ((("enzyme" "HELZ"))))))))
 ((:TEXT
   "Clearly, further experiments are needed to reveal the mechanism by which HELZ promotes S6 phosphorylation.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "S6") (:REACH ((("enzyme" "HELZ"))))))))
 ((:TEXT
   "The viral oncoproteins E6 and E7 are expressed in HPV positive cervical carcinomas XREF_BIBR, while the viral E2 protein represses transcription of the E6/E7 oncogenes and activates viral DNA replication together with the viral E1 helicase XREF_BIBR, XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "DNA replication")
     (:REACH ((("controller" "E6/E7 oncogenes"))))))))
 ((:TEXT
   "Interestingly, GSK-3beta can also enter the nucleus where it binds beta-catenin and inhibits beta-catenin activity (does not result in beta-catenin phosphorylation or degradation) (XREF_BIBR, XREF_BIBR, XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "beta-catenin") (:REACH)))))
 ((:TEXT
   "Akt phosphorylated substrates are involved in a variety of cellular functions spanning from cell growth and survival (modulating proapoptotic and antiapoptotic transcription factors) to cell migration and invasion, from cellular metabolism to angiogenesis (reviewed in XREF_BIBR).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "To identify the putative site (s) of Ankrd2 phosphorylated by Akt, Ankrd2 complete amino acidic sequences cloned so far were scanned by the Scansite databases for Akt consensus phosphorylation motifs.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "Ankrd2")
     (:REACH ((("enzyme" "Ankrd2")) (("enzyme" "Akt"))))))))
 ((:TEXT
   "XREF_FIG and XREF_FIG, shows that insulin leads to phosphorylation of Ankrd2 by Akt.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Ankrd2") (:REACH ((("enzyme" "insulin"))))))))
 ((:TEXT
   "Possibly, upon the arrival of the stimulus, following Ankrd2 binding to Akt and its subsequent phosphorylation, Ankrd2 dissociates from this complex to migrate to the nucleus and interact with its effectors.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "We show that Cav1 regulates Rho GTPase activity by modulating membrane partitioning of p190 and thereby its phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p190") (:REACH)))))
 ((:TEXT
   "In contrast, phosphorylation of myosin light chain-2 (pMLC) was decreased (not shown), suggesting that Cav1 influences cell induced matrix contractility.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "myosin light chain-2") (:REACH))
    (("substrate" "pMLC") (:REACH)))))
 ((:TEXT
   "We reported mildly increased p190 expression and phosphorylation in the absence of Cav1 (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p190") (:REACH)))))
 ((:TEXT
   "Cav1 thus appears to remodel the 3D microenvironment by stimulating Rho dependent cell contractility, and to regulate Rho activity by controlling the phosphorylation and partitioning of p190 into membrane ordered domains.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p190") (:REACH)))))
 ((:TEXT
   "Cav1 mediates these effects by regulating Rho activity via changes in p190 localization and phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p190") (:REACH)))))
 ((:TEXT
   "Caspase-2 is activated by the p53 target gene product PIDD (also known as LRDD) in a complex called the Caspase-2-PIDDosome.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Caspase-2") (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "Given that p53 induces PIDD, which activates Caspase-2 and promotes Mdm2 cleavage, we reasoned that p53 activation should promote Mdm2 cleavage in response to DNA damage.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "Caspase-2") (:REACH ((("controller" "PIDD"))))))))
 ((:TEXT
   "Many p53 autoregulatory loops impinge on Mdm2 (XREF_BIBR; XREF_BIBR) and regulate Mdm2 by a variety of mechanisms, including interaction with MdmX, auto-ubiquitination, phosphorylation, and here, cleavage (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MdmX") (:REACH)))))
 ((:TEXT
   "TGFbeta1 binding to heterodimeric complexes of TGFbetaR1 and 2 can mediate phosphorylation of SMAD 2 and 3 which in conjunction with SMAD 4 translocates to promoters such as SP1 that regulates SNAIL1 XREF_BIBR, XREF_BIBR and interacts with other transcription factors, co-activators and co-repressors to suppress epithelial genes and promote expression of mesenchymal proteins XREF_BIBR.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "SMAD 2") (:REACH)))))
 ((:TEXT
   "The activation of mTOR leads to enhanced activity of S6 kinase-1 and phosphorylation of eukaryotic translation initiation factor 4E Binding Proteins 1 (4EBP1), both of which lead to increased protein translation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Increased expression of c-myc, cyclin D1 and subsequently phosphorylated Rb drives cell cycle from G0/G1 to S phase (XREF_BIBR), which well explained the increased cell growth kinetics in TGFBI deficient cells shown in XREF_FIG, and was also consistent with a separate study in our group that TGFBI expression cells had an elevated G1 percentage and transiently increased p21 and p53 expression (unpublished data).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "Rb") (:REACH)))))
 ((:TEXT
   "In mice and humans, colon inflammation induces apoptosis of IECs via p53 dependent and -independent mechanisms; PUMA also activates an intrinsic apoptosis pathway associated with colitis.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "apoptosis") (:REACH ((("controller" "PUMA"))))))))
 ((:TEXT
   "Caspase-8 activates effector caspases 2, 3, 6, and 7 that ultimately cause apoptosis by cleaving various cellular substrates.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "apoptosis") (:REACH ((("controller" "Caspase-8"))))))))
 ((:TEXT
   "Under some conditions, caspase 8 can activate the intrinsic mitochondrial apoptosis pathway by cleaving BH3 interacting domain death agonist (Bid), a BH3-only member of the B-cell lymphoma 2 (Bcl-2) family.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "apoptosis") (:REACH ((("controller" "caspase 8"))))))))
 ((:TEXT
   "In ER positive cells it is known that the estrogen receptor activates a number of cellular signal transduction pathways, including the ERK and MAPK pathway [XREF_BIBR] and activation of this pathway leads to the translocation of activated MAP kinase to the nucleus where it regulates the expression of a number of transcription factors, including pertinently, c-Myc [XREF_BIBR].")
  (MIS-MATCHES
   ("activates"
    (("controlled" "signal transduction pathways")
     (:REACH ((("controller" "estrogen receptor"))))))))
 ((:TEXT
   "Figure XREF_FIG shows that p52Shc protein was transiently phosphorylated on tyrosine residues 239/240 but not 317.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "p52Shc protein")
     (:REACH ((("site" "tyrosine residues 239/240"))))))))
 ((:TEXT
   "Furthermore, SU6656 totally abolished the induced STAT3 phosphorylation indicating the involvement of SFKs activity in STAT3 activation of LPS stimulated DCs.")
  (MIS-MATCHES
   ("activation" (("controlled" "DCs") (:REACH ((("controller" "STAT3"))))))))
 ((:TEXT
   "This result indicates that more STAT3 phosphorylated on Tyr 705 is generated into the nucleus in LPS induced DCs with Shc blockade.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "STAT3") (:REACH ((("site" "Tyr-705"))))))))
 ((:TEXT
   "Furthermore, PKD1 activates JNK in a Rac1 dependent manner XREF_BIBR.")
  (MIS-MATCHES
   ("activates" (("controlled" "Rac1") (:REACH ((("controller" "PKD1"))))))))
 ((:TEXT
   "There are three Pvr ligands in Drosophila, Pvf1, -2, and -3, and in larvae it has been shown that overexpression of Pvf2 is also sufficient to activate the cellular immune response XREF_BIBR.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "immune response") (:REACH ((("controller" "Pvf2"))))))))
 ((:TEXT
   "To confirm that the effects of PD-0332991 are through activation of the pRB tumor suppressor pathway we determined the effect of the drug on the known pRB target, Cyclin A (in the RB axis where CDK4/6 inhibition activates RB and stabilizes the RB and E2F1 complex leading to inhibition of the transcriptional activation of Cyclin A by E2F1).")
  (MIS-MATCHES
   ("activates" (("controlled" "RB") (:REACH ((("controller" "CDK4/6"))))))))
 ((:TEXT
   "CDK6 is a serine and therionine kinase whose activity is dependent on binding to D-type cyclins (Cycin D1, D2 and D3) and, like CDK4, it phosphorylates and inhibits the pRB tumor suppressor allowing cell cycle progression during the mitogen dependent early G1-phase (reviewed in (XREF_BIBR)).")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "CDK4") (:REACH))
    (("substrate" "pRB") (:REACH)))))
 ((:TEXT
   "Both CDK4 and CDK6 bind to and are activated by cyclin D1 in early G1 phase and, in this respect, their functions may be redundant.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "CDK4 and CDK6 bind")
     (:REACH ((("controller" "cyclin"))))))))
 ((:TEXT
   "This hypothesis is based on the following observations : First, and as shown in XREF_FIG, the combined knockdown of both CDK6 and CDK4 strongly suppresses proliferation in OE33, second, the reduction of phosphorylation of pRB at Ser780 and 795 when CDK6 is knocked down is less in OE33 compared to OE19 and Flo1A (XREF_FIG), and third, PD-0332991 (which specifically inhibits both CDK4 and 6 kinase activity (XREF_BIBR, XREF_BIBR)) significantly inhibits proliferation of OE33 cells (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "pRB") (:REACH ((("site" "795"))))))))
 ((:TEXT
   "When used as a single agent, PD-0332991 is cytostatic causing inhibition of proliferation without remarkable apoptosis in responsive cell lines and its function can be monitored through reduced pRB phosphorylation at serine 780 and 795 (XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "pRB") (:REACH ((("site" "795"))))))))
 ((:TEXT
   "We find that AR transcriptional output is decreased in human and murine tumors with PTEN deletion and that PI3K pathway inhibition activates AR signaling by relieving feedback inhibition of HER kinases.")
  (MIS-MATCHES
   ("activates" (("controlled" "AR") (:REACH ((("controller" "PI3K")))))
    (("controlled" "kinases") (:REACH ((("controller" "PI3K"))))))))
 ((:TEXT
   "Similarly, AR inhibition activates AKT signaling by reducing levels of the AKT phosphatase PHLPP.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "levels of the AKT phosphatase PHLPP")
     (:REACH ((("controller" "AR"))))))))
 ((:TEXT
   "Inhibition of the PI3K pathway activates the AR pathway in PTEN negative prostate cancers.")
  (MIS-MATCHES
   ("activates" (("controlled" "AR") (:REACH ((("controller" "PI3K")))))
    (("controlled" "PTEN") (:REACH ((("controller" "PI3K"))))))))
 ((:TEXT
   "Collectively, the data from these PTEN deficient murine and human models indicate that PI3K pathway inhibitors can activate AR target gene expression.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "AR target gene expression")
     (:REACH ((("controller" "PI3K"))))))))
 ((:TEXT
   "Initial cell adhesion and signaling on FN coated SAMs were characterized via the formation of focal adhesions, integrin expression and phosphorylation of FAKs.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "integrin") (:REACH))
    (("substrate" "FAKs") (:REACH)))))
 ((:TEXT
   "Cell adhesion and signaling on FN coated SAMs were characterized via the formation of focal adhesions, integrin expression and phosphorylation of FAKs.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "integrin") (:REACH))
    (("substrate" "FAKs") (:REACH)))))
 ((:TEXT
   "However, additional reasons must be considered when seeking the molecular origin of this fact, which must also be a consequence of the following sequence of events : i) the availability of cell adhesion domains after FN adsorption on the SAM surface is higher in the samples with higher OH content (XREF_FIG); ii) integrin expression and focal adhesion formation is enhanced on the more hydrophilic surfaces (XREF_FIG, XREF_SUPPLEMENTARY); iii) phosphorylation of FAK is enhanced on the SAMs with higher OH contents (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "FAK") (:REACH)))))
 ((:TEXT
   "Contractility results from dynamic interactions between actin filaments and myosin, which are regulated via phosphorylation of myosin light chain (MLC).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MLC") (:REACH)))))
 ((:TEXT
   "By contrast, MMP9 expression increases as the fraction of OH groups in the sample does (XREF_FIG, XREF_FIG), which suggests a direct relationship between FN activity at the cell-material interface and MMP9 expression, as a consequence of a sequence of events that include integrin expression (XREF_SUPPLEMENTARY), focal adhesion formation (XREF_FIG), matrix reorganization (XREF_FIG) and FAK phosphorylation (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "matrix") (:REACH)))))
 ((:TEXT
   "Growth factor signaling leads to rapid tyrosine phosphorylation, nuclear translocation of TFII-I and subsequent activation of target genes (XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "TFII-I") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "The results in XREF_FIG indicate that while TFII-I alone does not significantly activate Igh transcription in this assay, it acts cooperatively with OCA-B to induce Igh expression.")
  (MIS-MATCHES
   ("TFII-I alone does not significantly activate Igh transcription"
    (("controlled"
      "TFII-I alone does not significantly activate Igh transcription")
     (:REACH ((("controller" "Igh"))))))
   ("activate"
    (("controlled" "Igh transcription")
     (:REACH ((("controller" "TFII-I"))))))))
 ((:TEXT
   "HPV specific T-cells from RRP patients exhibited reduced STAT-5 phosphorylation and reduced IL-2 secretion, suggesting anergy.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "STAT-5") (:REACH)))))
 ((:TEXT
   "Levels of STAT-5 phosphorylation and IFN-gamma secretion could be improved through addition of IL-2 to HPV specific T-cell lines from RRP patients.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "STAT-5") (:REACH))
    (("substrate" "IFN-gamma") (:REACH)))))
 ((:TEXT
   "7 FLT3 signaling activates intracellular pathways (e.g. Ras-Raf-Mek, PI3K-AKT) that promote proliferation and inhibition of apoptosis.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "Ras-Raf-Mek") (:REACH ((("controller" "FLT3"))))))))
 ((:TEXT
   "Phosphorylated mTOR, eIF4E, and high expression of AKT may be potentional biomarkers in order to select the candidate HNSCC patients for mTOR inhibitor based adjuvant therapy [XREF_BIBR, XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("Phosphorylated" (("substrate" "eIF4E") (:REACH))
    (("substrate" "AKT") (:REACH)))))
 ((:TEXT
   "The sensitization effect by temsirolimus is evidenced by the following : the reduced phosphorylation of 4EBP1, S6 and Bad; the increased number of radiation related poly (ADP-ribose) polymerases (PARPs) cleavage; the increased rate of nuclei apoptosis; and the reduction of tumor vascularity by diminishing VEGF production.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Bad") (:REACH))
    (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "In addition, phosphorylation inactivating or phosphomimetic mutations did not alter ligand dependent nuclear localization of AR in COS-7 cells expressing exogenous AR (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "AR") (:REACH)))))
 ((:TEXT
   "These findings indicate that the phosphorylation of Ser 650 by MST1 is not involved in the mediation of AR inhibition by MST1.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "MST1") (:REACH ((("site" "Ser-650"))))))))
 ((:TEXT
   "Stable MST1 expression was capable of inhibiting AR driven PSA promoter activation in C4-2 and HA-MST1 cells (XREF_FIG, right panel).")
  (MIS-MATCHES
   ("promoter activation"
    (("controlled" "HA-MST1") (:REACH ((("controller" "PSA"))))))))
 ((:TEXT
   "However, phosphorylation of Ser 650 by MST1 had no effect on the observed inhibition of AR-transcriptional activity.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "MST1") (:REACH ((("site" "Ser-650"))))))))
 ((:TEXT
   "On ligand binding, EGFR dimerizes, autophosphorylates, and triggers downstream signaling cascades, including phosphatidylinositol-3-kinase and Akt, mitogen activated protein kinase (MAPK), Jak and Stat, protein kinase C (PKC), and PLCgamma1 activation (XREF_BIBR).")
  (MIS-MATCHES
   ("autophosphorylates"
    (("substrate" "EGFR") (:REACH ((("enzyme" "EGFR"))))))))
 ((:TEXT
   "In contrast to this report, we find that the RhoU (Y254F) mutant, which can not be phosphorylated by Src, is still capable of localizing to endosomes and associating with the internalizing EGFR.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "RhoU") (:REACH ((("enzyme" "Src"))))))))
 ((:TEXT
   "However, the STAT3-decoy ODN had no effect on the acute myeloid leukemia cell line KG1, in which STAT5, rather than STAT3, is activated [XREF_BIBR].")
  (MIS-MATCHES
   ("activated"
    (("controlled" "[")
     (:REACH ((("controller" "STAT5")) (("controller" "STAT3"))))))))
 ((:TEXT
   "Treatment with LMB (10 ng/ml) increased nuclear STAT3, as previously shown in v-src expressing cells [XREF_BIBR] (it also inhibited STAT3 phosphorylation, in agreement with previous results [XREF_BIBR], see [additional file XREF_SUPPLEMENTARY]).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "STAT3") (:REACH)))))
 ((:TEXT
   "To determine whether mitochondrial dysfunction induced by genetic or metabolic inhibition causes insulin resistance in hepatocytes, we analyzed the expression and insulin stimulated phosphorylation of insulin signaling intermediates in SK-Hep1 hepatocytes.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "insulin") (:REACH ((("enzyme" "insulin"))))))))
 ((:TEXT
   "To determine whether mitochondrial dysfunction induced by mtDNA depletion causes insulin resistance in hepatocytes, we analyzed the expression and insulin stimulated phosphorylation of insulin signaling intermediates, such as IRS-1, Akt2, and glycogen synthase kinase-3beta (GSK3beta), in the mtDNA depleted SK-Hep1 hepatocytes.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "insulin") (:REACH ((("enzyme" "insulin"))))))))
 ((:TEXT
   "Next, we analyzed expression and insulin stimulated phosphorylation of insulin signaling intermediates in the hepatocytes transfected with miR-126 expression plasmid (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "insulin") (:REACH ((("enzyme" "insulin"))))))))
 ((:TEXT
   "XREF_BIBR, XREF_BIBR Consequently, reduction of phosphorylation at Ser15, and insignificant detection of Ser37P suggest that impairment of the p53-MDM2 interaction by phosphorylation at these two Ser residues does not contribute to the increased p53 protein seen in response to PERP expression.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Ser37P") (:REACH ((("site" "Ser15"))))))))
 ((:TEXT
   "When this destruction complex is intact, GSK-3beta phosphorylates the amino terminal serine and threonine residues of beta-catenin and targets it towards degradation by proteasomal machinery [XREF_BIBR - XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "beta-catenin")
     (:REACH ((("enzyme" "GSK-3beta") ("site" "serine"))))))))
 ((:TEXT
   "Activation of beta-catenin and TCF reporter and nuclear localization of beta-catenin by t-DARPP.")
  (MIS-MATCHES
   ("Activation"
    (("controlled" "localization") (:REACH ((("controller" "t-DARPP")))))
    (("controlled" "beta-catenin") (:REACH ((("controller" "t-DARPP")))))
    (("controlled" "TCF reporter") (:REACH ((("controller" "t-DARPP"))))))))
 ((:TEXT
   "Overexpression of active K-Ras or H-Ras in BxPC-3 cells increases GSK-3beta protein expression by nearly two-fold, whereas treatment with U0126 prevents both ERK phosphorylation and Ras induced GSK-3beta expression as expected (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Ras") (:REACH)))))
 ((:TEXT
   "Moreover, overexpression of either ETS1 or ETS2 proteins robustly activates the GSK-3beta promoter (XREF_FIG).")
  (MIS-MATCHES
   ("activates"
    (("controlled" "GSK-3beta promoter")
     (:REACH ((("controller" "ETS2")) (("controller" "ETS1"))))))))
 ((:TEXT
   "Importantly, in the presence of dn-ETS, K-Ras G12D fails to activate the promoter, suggesting an essential role of ETS proteins in Ras activation of the GSK-3beta promoter (XREF_FIG).")
  (MIS-MATCHES
   ("activation"
    (("controlled" "GSK-3beta promoter") (:REACH ((("controller" "Ras"))))))))
 ((:TEXT
   "P300 cooperates with ETS2 to remodel chromatin and activate GSK-3beta promoter.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "GSK-3beta promoter") (:REACH ((("controller" "P300"))))))))
 ((:TEXT
   "As expected, co-expression of the histone acetylase p300, together with ETS2 resulted in a dramatic synergistic increase in GSK-3beta promoter activity of nearly 50-fold, compared with a 12.2-fold and 8.1-fold increase with p300 or ETS2 alone (XREF_FIG).")
  (MIS-MATCHES
   ("promoter activity"
    (("controlled" "GSK-3beta promoter")
     (:REACH ((("controller" "p300")) (("controller" "histone"))))))))
 ((:TEXT
   "To pinpoint which Akt isoform is necessary for the EZH2 induced phenotype we investigated the effect of EZH2 on the expression and phosphorylation of Akt isoforms 1, 2, and 3 on benign and breast cancer cells.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "EZH2 overexpression in MCF10A cells increased Akt-1 protein but did not influence Akt-2 or Akt-3 expression or phosphorylation, compared to controls (XREF_FIG, left).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Akt-2") (:REACH))
    (("substrate" "Akt-3") (:REACH)))))
 ((:TEXT
   "Interestingly, when we probed for the activation status of Src, Yes, and Fyn in HMLE-Twist1 cells using an antibody recognizing the active form of Src family kinases (phosphotyrosine 416), Src was significantly activated upon Twist1 expression (XREF_FIG), while Yes and Fyn phosphorylation remained constant (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Yes") (:REACH)))))
 ((:TEXT
   "As a transcription factor, Twist1 can not directly activate Src kinase, so we probed how Twist1 promotes activation of Src in HMLE-Twist1 cells.")
  (MIS-MATCHES
   ("directly activate"
    (("controlled" "Src") (:REACH ((("controller" "Twist1"))))))))
 ((:TEXT
   "Both shRNAs potently suppressed PDGFRalpha expression (XREF_FIG), Src activation, and cortactin phosphorylation (XREF_FIG), and effectively suppressed the ability of HMLE-Twist1 cells to degrade matrix (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PDGFRalpha") (:REACH))
    (("substrate" "Src") (:REACH)))))
 ((:TEXT
   "In EpH4 mouse mammary epithelial cells, TGFbeta has been shown to collaborate with Ras to promote EMT and activates an autocrine PDGF loop (XREF_BIBR).")
  (MIS-MATCHES
   ("activates"
    (("controlled" "PDGF") (:REACH ((("controller" "TGFbeta"))))))))
 ((:TEXT
   "Twist1 was able to activate the isolated human PDGFRa promoter in an E-box-dependent fashion in a luciferase reporter assay (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "PDGFRa") (:REACH ((("controller" "Twist1"))))))))
 ((:TEXT
   "Vertebrate Twist1 lacks a transcription activation domain and requires dimerization with other bHLH transcription factors to activate transcription.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "transcription") (:REACH ((("controller" "Twist1"))))))))
 ((:TEXT
   "Phosphorylation by CDKs and Cdc7-Dbf4 promote the attachment of Cdc45 that is required to load DNA polymerase-alpha as well as for chromosome unwinding XREF_BIBR - XREF_BIBR.")
  (MIS-MATCHES ("Phosphorylation" (("substrate" "Cdc45") (:REACH)))))
 ((:TEXT
   "As shown in XREF_FIG, treatment of primary cultures of Tg-Braf thyrocytes with TGFbeta resulted in increased levels of phospho (S465/467) Smad2, C-terminal sites known to be phosphorylated following activation of the TGFbeta receptor, and to be required for its transcriptional function.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "TGFbeta receptor") (:REACH)))))
 ((:TEXT
   "By contrast, phosphorylation of threonine 8 in the MH1 region of Smad2 was not regulated by TGFbeta.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MH1") (:REACH ((("site" "threonine"))))))))
 ((:TEXT
   "Whereas most of the ERK substrates in the hinge domain are also phosphorylated by multiple other kinases, T8 phosphorylation is largely controlled by ERK, and therefore serves as a useful readout of the activity of MAPK.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "T8") (:REACH)))))
 ((:TEXT
   "alpha-catenin controls Yap1 activity and phosphorylation by modulating its interaction with 14-3-3 and the PP2A phosphatase.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "alpha-catenin") (:REACH))
    (("substrate" "Yap1") (:REACH)))))
 ((:TEXT
   "As predicted, this association was dependent on Yap1 phosphorylation, as pre-treatment of phosphorylated recombinant Yap1 with lambda phosphatase resulted in loss of complex formation (XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "phosphatase") (:REACH)))))
 ((:TEXT
   "alpha-catenin depletion activated the TBS reporter in several other cell lines tested, indicating a conserved phenomenon across epithelial cell types.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "TBS") (:REACH ((("controller" "alpha-catenin"))))))))
 ((:TEXT
   "To begin understanding the potential mechanisms linking alpha-catenin levels and Yap1 phosphorylation, we performed a Yap1 co-IP followed by MS in alpha-catenin KD cells.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "alpha-catenin") (:REACH)))))
 ((:TEXT
   "These results suggested that loss of alpha-catenin could result in a more efficient association of Yap1 and PP2Ac, which could potentially dephosphorylate Yap1-S127 triggering its activation.")
  (MIS-MATCHES ("dephosphorylate" (("substrate" "Yap1-S127") (:REACH)))))
 ((:TEXT
   "Importantly, reduction of PP2Ac levels in alpha-catenin KD cells, suppresses the increase in TBS reporter activity and S127A phosphorylation observed after depletion of alpha-catenin (XREF_FIG, XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "TBS") (:REACH ((("enzyme" "PP2Ac"))))))))
 ((:TEXT "Activation by RTK Bis Phosphorylated Peptide.")
  (MIS-MATCHES ("Phosphorylated" (("substrate" "Bis") (:REACH)))))
 ((:TEXT
   "p110beta complexes can also phosphorylate a soluble lipid substrate diC8-PIP 2, although less efficiently than liposomal substrate.")
  (MIS-MATCHES
   ("phosphorylate"
    (("substrate" "diC8-PIP 2") (:REACH ((("enzyme" "p110beta"))))))))
 ((:TEXT
   "Interestingly, phosphorylation of monomeric diC8-PIP 2 is still activated by pY 2, with a change in EC 50 upon peptide addition ranging from 2- to 8-fold, depending on the regulatory construct (XREF_FIG C).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "diC8-PIP 2") (:REACH ((("enzyme" "pY"))))))))
 ((:TEXT
   "Cell cycle initiation via progression from G 1 to S phase is triggered by partial phosphorylation of the retinoblastoma protein (Rb) by Cdk4 and cyclin D and Cdk6 and cyclin D complexes followed by hyper-phosphorylation of Rb by Cdk2 and cyclin E in late G 1 phase 11.")
  (MIS-MATCHES ("hyper-phosphorylation" (("substrate" "Rb") (:REACH)))))
 ((:TEXT
   "The p53 protein binds to glucose-6-phosphate dehydrogenase (G6PD), the first and rate limiting enzyme of the PPP, and prevents the formation of the active dimer.")
  (MIS-MATCHES
   ("p53 protein binds to glucose-6-phosphate dehydrogenase"
    (NIL
     (:REACH
      ((("theme" "p53") ("theme" "glucose-6-phosphate dehydrogenase"))))))))
 ((:TEXT
   "Since DPI is a NADPH oxidase inhibitor XREF_BIBR and several studies have demonstrated that PKC has a central role in the regulation of NADPH oxidase XREF_BIBR, XREF_BIBR, modulating the phosphorylation and activation of p67phox XREF_BIBR and p47phox components XREF_BIBR, it is reasonable to assume that PKCdelta acts upstream of ROS production, DNA oxidation and apoptosis.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p67phox") (:REACH))
    (("substrate" "p47phox") (:REACH)))))
 ((:TEXT
   "Canonical TGFbeta signaling is initiated by ligand binding to the TBRII, which phosphorylates TBRI and Alk5 resulting in activation and nuclear translocation of the transcription factors Smad2/3.")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "Alk5") (:REACH ((("enzyme" "TBRII")))))
    (("substrate" "TBRI") (:REACH ((("enzyme" "TBRII"))))))))
 ((:TEXT
   "Interestingly, high levels of P-Fli1 associated with an increase in both collagen and total and phosphorylated c-abl protein (Tyr245), thus suggesting a possible link between the c-abl and PKCdelta and P-Fli 1 pathway (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "c-abl protein") (:REACH ((("site" "Tyr245"))))))))
 ((:TEXT
   "Since Fli1 phosphorylation requires nuclear localization of PKCdelta, these results suggest that Imatinib blocks Fli1 phosphorylation by inhibiting PKCdelta nuclear localization.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PKCdelta") (:REACH)))))
 ((:TEXT
   "In conclusion, the present study shows that Fli1 is constitutively phosphorylated at higher levels in SSc, and c-abl is a pivotal activator of PKCdelta that is essential for its nuclear localization and phosphorylation of Fli1.")
  (MIS-MATCHES
   ("is a pivotal activator"
    (("controlled" "PKCdelta") (:REACH ((("controller" "c-abl"))))))
   ("phosphorylation" (("substrate" "Fli1") (:REACH)))))
 ((:TEXT
   "Phosphoinositide 3-kinases (PI3Ks) are a family of enzymes that catalyze the phosphorylation of the D3 hydroxyl of the inositol ring in phosphoinositides.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "inositol") (:REACH ((("site" "D3")))))
    (("substrate" "hydroxyl") (:REACH ((("site" "D3"))))))))
 ((:TEXT
   "This distinction has been questioned by data showing that the p110beta isoform of class IA PI3Ks is activated by Gbetagamma subunits downstream of GPCRs, similar to p110gamma [XREF_BIBR - XREF_BIBR].")
  (MIS-MATCHES
   ("activated"
    (("controlled" "p110beta")
     (:REACH
      ((("controller" "GPCRs")) (("controller" "Gbetagamma subunits"))))))))
 ((:TEXT
   "These findings strongly imply that CKI mediated phosphorylation, rather than the ring-finger domain of Mdm2, is critical for Mdm2 destruction after DNA damaging treatment.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Mdm2") (:REACH ((("enzyme" "CKI"))))))))
 ((:TEXT
   "The cytoplasmic domains of these receptors bind to the adaptor protein Dab1, which is phosphorylated by Src family kinases (SFKs) upon reelin binding to its receptors (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "Dab1")
     (:REACH
      ((("enzyme" "Src")) (("enzyme" "SFKs"))
       (("enzyme" "Src-family kinases"))))))))
 ((:TEXT
   "Limk1 regulates actin cytoskeletal dynamics by phosphorylating N-cofilin, thereby inhibition its F-actin severing activity (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES ("phosphorylating" (("substrate" "N-cofilin") (:REACH)))))
 ((:TEXT
   "In addition, in vivo administration of a leucine free diet for up to four days did not result in a decrease in phosphorylation of mTOR target proteins in breast cancer xenografts.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "mTOR") (:REACH)))))
 ((:TEXT
   "Availability of amino acids (AA), particularly branched chain AA, such as leucine, has been reported to activate the mammalian target of rapamycin (mTOR)/ribosomal S6 kinase 1 (S6K1) signaling pathway (XREF_BIBR - XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "mammalian target of rapamycin")
     (:REACH ((("controller" "AA"))))))))
 ((:TEXT
   "Rapamycin dephosphorylates mTORC2 component rictor (rapamycin-insensitive companion of TOR) (XREF_BIBR).")
  (MIS-MATCHES
   ("dephosphorylates"
    (("substrate" "rictor") (:REACH ((("enzyme" "Rapamycin")))))
    (("substrate" "mTORC2") (:REACH ((("enzyme" "Rapamycin")))))
    (("substrate" "TOR") (:REACH ((("enzyme" "Rapamycin"))))))))
 ((:TEXT
   "Although rictor phosphorylation may effect Akt phosphorylation, the biologic consequence of its phosphorylation is relatively unknown (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "rictor") (:REACH)))))
 ((:TEXT
   "Leucine, acting through an mTORC1 dependent pathway stimulates the translation of specific mRNAs both by increasing availability of eIF4E and by stimulating phosphorylation of S6 (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Supplementing leucine in the absence of serum increased phosphorylation of S6.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "This experiment showed that in the absence of constitutive activation of PI3K pathway, supplementing leucine in the absence of serum increased phosphorylation of S6, but phosphorylation did not increase further in the presence of serum.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Leucine restriction did not affect phosphorylation of 4E-BP1, S6K1, and S6.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "S6") (:REACH))
    (("substrate" "S6K1") (:REACH)))))
 ((:TEXT
   "Similar to our observations in breast cancer cell lines, in ATDC5, a chondrogenic cell line, S6 and 4E-BP1 phosphorylation was also shown to be unresponsive to leucine restriction (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Similarly, others reported that HIV-1 infection as well as Tat and gp120 all activate p38 MAPK and upstream, MLK 3 in infected or stimulated, neurotoxic monocytes, and macrophages (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "p38 MAPK")
     (:REACH ((("controller" "Tat")) (("controller" "gp120")))))
    (("controlled" "MLK")
     (:REACH ((("controller" "gp120")) (("controller" "Tat"))))))))
 ((:TEXT
   "Interestingly, those studies have provided evidence that gp120 exerts its deadly effect via a pathway that involves engagement of HIV coreceptors and downstream activation in parallel of NFkB and p38 MAPK pathways and a direct phosphorylation and pro apoptotic activation of p53 by mammalian target of rapamycin and p38 MAPK (XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p53") (:REACH)))))
 ((:TEXT
   "For example, activating transcription factor-2 can in principle be phosphorylated in macrophages and CD4 + T cells by p38alpha and delta but proinflammatory signaling in general has mostly been linked to activation of the alpha isoform (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CD4") (:REACH)))))
 ((:TEXT
   "Interestingly, p38 MAPK also directly activates cytosolic phospholipase A2 and STAT-1 and thus plays a role in IFN signaling (XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("directly activates"
    (("controlled" "cytosolic phospholipase")
     (:REACH ((("controller" "p38 MAPK"))))))))
 ((:TEXT
   "As Dll4 ligands are likely to activate multiple Notch receptors, we tested activation of Notch signaling using expression of constitutively active Notch intracellular domain (NICD) receptors.")
  (MIS-MATCHES
   ("activate" (("controlled" "Notch") (:REACH ((("controller" "Dll4")))))
    (("controlled" "Notch receptors") (:REACH ((("controller" "Dll4"))))))))
 ((:TEXT
   "Notch activated EC show senescence characteristics with enlarged, flattened cell morphology, increased granularity, and vacuolization.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "senescence") (:REACH ((("controller" "Notch")))))
    (("controlled" "EC") (:REACH ((("controller" "Notch"))))))))
 ((:TEXT "We have clearly demonstrated that RhoA is activated by Notch in EC.")
  (MIS-MATCHES
   ("activated" (("controlled" "RhoA") (:REACH ((("controller" "EC"))))))))
 ((:TEXT
   "Activation of Wnt signaling pathways can lead to phosphorylation, ubiquitinylation and degradation of c-Myb [XREF_BIBR].")
  (MIS-MATCHES ("phosphorylation" (("substrate" "c-Myb [") (:REACH)))))
 ((:TEXT
   "Cortactin phosphorylation promotes release of cofilin from cortactin, leading to free actin barbed end generation (XREF_BIBR, XREF_BIBR), and also enables binding of proteins such as Nck1, leading to enhancement of N-WASp-mediated Arp2/3 dependent actin polymerization (XREF_BIBR, XREF_BIBR - XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "cofilin") (:REACH)))))
 ((:TEXT
   "Our data suggest that while Src alone is not capable of stimulating actin polymerization at invadopodia, EGF signaling through Src is required for full Arg mediated cortactin phosphorylation and actin polymerization at invadopodia.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "actin") (:REACH)))))
 ((:TEXT
   "TGF-beta1 increased alphaSMA expression and phosphorylation of SMAD-2.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "alphaSMA") (:REACH ((("enzyme" "TGF-beta1")))))
    (("substrate" "SMAD-2") (:REACH ((("enzyme" "TGF-beta1"))))))))
 ((:TEXT
   "Importantly, besides Bax also Bak needs to be activated to trigger mitochondrial cell death [XREF_BIBR] and Mcl-1 has been described to antagonize Bak at the mitochondrial membrane [XREF_BIBR].")
  (MIS-MATCHES
   ("activated"
    (("controlled" "cell death") (:REACH ((("controller" "Bak"))))))))
 ((:TEXT
   "To identify a functional link between HER2 and hMena, we show here that HER2 transfection in MCF7 cells increased hMena and hMena 11a expression and hMena 11a phosphorylation.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "hMena") (:REACH ((("enzyme" "HER2") ("site" "11a"))))))))
 ((:TEXT
   "This was associated with a phosphorylation of the tyrosine Y1248 in HER2 receptor and the activation of MAPK and PI3K as documented by the amount of phosphorylated p44/42 MAPK and AKT (XREF_FIG panel A).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "HER2 receptor")
     (:REACH ((("site" "Y1248")) (("site" "tyrosine Y1248")))))
    (("substrate" "MAPK")
     (:REACH ((("site" "tyrosine Y1248")) (("site" "Y1248")))))
    (("substrate" "PI3K")
     (:REACH ((("site" "Y1248")) (("site" "tyrosine Y1248")))))
    (("substrate" "HER2")
     (:REACH ((("site" "tyrosine Y1248")) (("site" "Y1248"))))))))
 ((:TEXT
   "hMena silencing in starved cells did not affect HER2 and EGFR expression and phosphorylation, but was associated with a reduction in phospho-HER3, phospho-AKT and phospho-p44/42 MAPK levels (XREF_FIG panel A).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "HER2") (:REACH))
    (("substrate" "EGFR") (:REACH)))))
 ((:TEXT
   "Of note, ablation of exon 8b sequences resulted in a significant decrease in the total amount of B-Raf protein in brain, without any effect on ERK phosphorylation and MBP levels.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MBP") (:REACH)))))
 ((:TEXT "Jak2 phosphorylated the tyrosine 177 Bcr sequence found in Bcr-Abl.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "Bcr")
     (:REACH ((("enzyme" "Jak2") ("site" "tyrosine 177"))))))))
 ((:TEXT
   "We note that TG is a potent inhibitor of Jak2 's ability to phosphorylate Tyr 177 in kinase assays with an ~ IC 50 of less than 0.01 mu (reported to be 6n) 35.")
  (MIS-MATCHES ("phosphorylate" (("substrate" "~IC 50") (:REACH)))))
 ((:TEXT
   "Jak2 immune complexes isolated from Bcr-Abl+ 32D cells also phosphorylated the Tyr 177 Bcr peptide and phosphorylation was inhibited by TG but not by IM (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Bcr") (:REACH)))))
 ((:TEXT
   "These results indicate that the events leading to the decrease of Bcr-Abl occurred within intact cells but not in immune complexes from these same cells and, more importantly, the inhibition of phosphorylation of Tyr177 by TG can readily occur in these subcellular fractions under conditions wherein Bcr-Abl levels were stable.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "TG") (:REACH ((("site" "Tyr177"))))))))
 ((:TEXT
   "22 The 50% point of Jak2 inhibition as measured by pTyr1007 phosphorylation was estimated to be 5mu as estimated by quantitation of the intensity values (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "pTyr1007") (:REACH)))))
 ((:TEXT
   "Similar to Bcr-Abl, phosphorylation of Tyr177 within P160 BCR was also rapidly reduced by treatment with 10mu TG.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "P160 BCR") (:REACH ((("site" "Tyr177"))))))))
 ((:TEXT
   "As Bcr is believed to form heterotetramers with Bcr-Abl, these results suggest that Jak2 would phosphorylate Tyr177 within Bcr-Abl and Bcr in these heterotetramers.")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "Bcr-Abl") (:REACH))
    (("substrate" "Bcr") (:REACH)))))
 ((:TEXT
   "Jak2 controls the Gab2/PI -3 kinase, Akt and GSK3 through its ability to induce phosphorylation of Gab2 20 and would control Ras activation and downstream MEK activation by Jak2 's ability to phosphorylate Tyr177 of Bcr-Abl and Tyr 239/240 of Shc.")
  (MIS-MATCHES
   ("phosphorylate"
    (("substrate" "Shc") (:REACH ((("site" "Tyr 239/240"))))))))
 ((:TEXT
   "Thus, our hypothesis is that Jak2 inhibition decreases phosphorylation of Tyr177 within Bcr-Abl and possibly other Tyr residues within Bcr-Abl.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Bcr-Abl")
     (:REACH
      ((("enzyme" "Jak2") ("site" "Tyr"))
       (("enzyme" "Jak2") ("site" "Tyr177"))))))))
 ((:TEXT
   "35 We note that WP1193, despite its considerably less in vitro potency for phosphorylating Tyr177 in kinase assays compared with TG (approximately 100-fold), still maintained similar or greater potency to reduce Jak2 effects in intact cells expressing Bcr-Abl.")
  (MIS-MATCHES ("phosphorylating" (("substrate" "TG") (:REACH)))))
 ((:TEXT
   "Cyclin D1 is a well known cell cycle control gene that promotes cell cycle progression through the G 1 -phase by forming active holoenzymes with CDK (cyclin dependent kinase) 4 and CDK6 and leads to phosphorylation of pRb (retinoblastoma protein) [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "retinoblastoma protein") (:REACH)))))
 ((:TEXT
   "Therefore, we considered that the overexpression of cyclin D1 in pterygia is activated not only through the activator AP-1 but also by beta-catenin.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "overexpression of cyclin")
     (:REACH ((("controller" "beta-catenin"))))))))
 ((:TEXT
   "While all TAL1 regulated direct targets (XREF_SUPPLEMENTARY) are candidate effectors of TAL1 mediated leukaemogenesis, Cdk6, which is activated by TAL1, presents a particular interest.")
  (MIS-MATCHES
   ("activated" (("controlled" "Cdk6") (:REACH ((("controller" "TAL1"))))))))
 ((:TEXT
   "Thus, it is conceivable that by altering expression of cell adhesion genes, high levels of BMI-1 might alter cytoskeletal protein engagement and thereby inactivate contact inhibition at the level of the cell surface.")
  (MIS-MATCHES
   ("inactivate"
    (("controlled" "contact inhibition")
     (:REACH ((("controller" "BMI-1"))))))))
 ((:TEXT "AC9 regulates RhoA activity and phosphorylated Myosin II levels.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "Myosin II") (:REACH ((("enzyme" "AC9"))))))))
 ((:TEXT
   "We conclude that the migration defects associated with alterations in AC9 activity is mediated by increased MyoII phosphorylation levels, which leads to problems in back retraction and efficient migration.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MyoII") (:REACH)))))
 ((:TEXT
   "We propose that MyoII phosphorylation and dephosphorylation phases are regulated by two antagonistic pathways that act downstream of chemoattractant receptor activation (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MyoII") (:REACH)))))
 ((:TEXT
   "The activating pathway has been proposed to be mediated via coupling to G12/13, which activates RhoA through PDZ-RhoAGEF (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("activates" (("controlled" "RhoA") (:REACH ((("controller" "G12/13"))))))))
 ((:TEXT
   "We envision that as cells are chemotaxing up chemoattractant gradients, they experience increase receptor activation that trigger activating and inhibitory signals leading to the cycling of MyoII phosphorylation and dephosphorylation and optimal migration.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MyoII") (:REACH)))
   ("dephosphorylation" (("substrate" "MyoII") (:REACH)))))
 ((:TEXT
   "We now suggest that the spatio-temporal cAMP changes elicited by chemoattractants tightly regulate these forces by acting on RhoA and MyoII phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MyoII") (:REACH)))))
 ((:TEXT
   "The ERK MAP kinase pathway activates PEA3 subfamily members and also plays a role in these PEA3 controlled events, establishing the ERK-PEA3-MMP-1 axis as important in OE33 cells.")
  (MIS-MATCHES
   ("activates" (("controlled" "PEA3") (:REACH ((("controller" "MAP"))))))))
 ((:TEXT
   "Indeed, the upstream ERK pathway that activates ER81 and PEA3 transactivation capacity is also important for the expression of both ER81 and PEA3.")
  (MIS-MATCHES
   ("activates" (("controlled" "ER81") (:REACH ((("controller" "ERK")))))
    (("controlled" "PEA3") (:REACH ((("controller" "ERK"))))))))
 ((:TEXT
   "EPC-CM triggered a distinct up-regulation of PDGFRbeta (2.5 +/-0.5; P < 0.05) and its phosphorylation (3.6 +/-0.6; P < 0.05) in HUVEC.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PDGFRbeta") (:REACH)))))
 ((:TEXT
   "Insulin is thought to induce tyrosine phosphorylation of either insulin receptor substrate (IRS) 1 or 2 in the brain (XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "IRS") (:REACH ((("enzyme" "Insulin") ("site" "tyrosine")))))
    (("substrate" "insulin")
     (:REACH ((("enzyme" "Insulin") ("site" "tyrosine")))))
    (("substrate" "insulin receptor")
     (:REACH ((("enzyme" "Insulin") ("site" "tyrosine"))))))))
 ((:TEXT
   "This observation suggests that in AR cells, increased BRAF abundance causes an excess of activated (phosphorylated) MEK, and substantially greater MEK inhibition (either directly by a MEK inhibitor, or indirectly by reducing the phosphorylation of MEK by a BRAF inhibitor) is required before leading to a decrease in ERK phosphorylation.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "MEK")
     (:REACH ((("enzyme" "BRAF inhibitor")) (("enzyme" "MEK inhibitor"))))))))
 ((:TEXT
   "These results show that increasing or decreasing BRAF activity (and consequently, phosphorylation and activation of MEK) can lead to a decrease or increase, respectively, in the ability of AZD6244 to inhibit MEK mediated phosphorylation of ERK.")
  (MIS-MATCHES
   ("activation" (("controlled" "MEK") (:REACH ((("controller" "BRAF"))))))))
 ((:TEXT
   "Since the free L5 and L11 were increased in PAK1IP1 knockdown cells, we determined whether knockdown of PAK1IP1 by shRNA could activate the ribosomal protein-MDM2-p53 pathway by examining the interaction of L5 and L11 with MDM2, respectively.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "ribosomal protein-MDM2-p53")
     (:REACH ((("controller" "PAK1IP1"))))))))
 ((:TEXT
   "Our results support the idea that aberrantly high levels of PAK1IP1 can activate p53 by inhibiting MDM2 function.")
  (MIS-MATCHES
   ("activate" (("controlled" "MDM2") (:REACH ((("controller" "PAK1IP1"))))))))
 ((:TEXT
   "JAK3 was more robustly activated by IL-8 than other kinases : p70S6K, mTOR, MAPK or PKC.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "JAK3")
     (:REACH
      ((("controller" "IL-8")) (("controller" "mTOR")) (("controller" "PKC"))
       (("controller" "MAPK")) (("controller" "p70S6K"))))))))
 ((:TEXT
   "Maximal phosphorylation of the JAK3 peptide substrate occurred at 5-7 min when using 20 nM IL-8 (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "JAK3") (:REACH)))))
 ((:TEXT
   "JAK3 is more robustly activated in neutrophils by IL-8 than other kinases like PKC, MAPK, mTOR or p70S6K, which further implicates a JAK3 mechanism in IL-8-stimulated chemotaxis.")
  (MIS-MATCHES
   ("activated" (("controlled" "JAK3") (:REACH ((("controller" "IL-8"))))))))
 ((:TEXT
   "Aliquots of these samples were immunoblotted to assess p38 expression and phosphorylation (XREF_FIG), and the remaining lysate used for in vitro p38 kinase assay.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p38") (:REACH)))))
 ((:TEXT
   "PKG1 is activated through oxidation to form a cysteine paired dimer XREF_BIBR.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "paired dimer") (:REACH ((("controller" "PKG1"))))))))
 ((:TEXT
   "The Dmp1 promoter was activated by HER2 and neu through the PI3K-Akt-NF-kappaB pathway, which in turn stimulated Arf transcription.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Dmp1")
     (:REACH ((("controller" "HER2")) (("controller" "neu"))))))))
 ((:TEXT
   "We show that both Dmp1 and Arf promoters are selectively activated by HER2 and neu and both Dmp1 and p53 proteins are induced in pre-cancerous mammary glands from MMTV-neu mice (XREF_BIBR).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Dmp1")
     (:REACH ((("controller" "HER2")) (("controller" "neu")))))
    (("controlled" "Arf")
     (:REACH ((("controller" "HER2")) (("controller" "neu"))))))))
 ((:TEXT
   "Both the Dmp1 and Arf promoters are specifically activated by HER2 and neu.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Dmp1")
     (:REACH ((("controller" "neu")) (("controller" "HER2")))))
    (("controlled" "Arf")
     (:REACH ((("controller" "HER2")) (("controller" "neu"))))))))
 ((:TEXT
   "We tested whether murine Dmp1 and Arf promoter can be activated by overexpression of HER2 (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("activated" (("controlled" "Dmp1") (:REACH ((("controller" "HER2")))))
    (("controlled" "Arf") (:REACH ((("controller" "HER2"))))))))
 ((:TEXT
   "Since the Dmp1 promoter is selectively activated by HER2 and neu, we studied if Dmp1 and p53 proteins were induced in response to active neu in pre-malignant lesions (i.e. hyperplastic, non transformed mammary glands mixed with islands of early stage tumors) isolated from 5.5 months old MMTV-neu females.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Dmp1")
     (:REACH ((("controller" "neu")) (("controller" "HER2"))))))))
 ((:TEXT
   "Although HER2 overexpression activates both Ras-Raf-MEK-ERK-AP1 and PI3K-Akt-NF-kappaB signaling, our study shows that HER2-Dmp1 signaling is independent of the former signaling cascade.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "PI3K-Akt-NF-kappaB") (:REACH ((("controller" "HER2")))))
    (("controlled" "Ras-Raf-MEK-ERK-AP1")
     (:REACH ((("controller" "HER2"))))))))
 ((:TEXT
   "Our study showed that the Arf promoter is activated by HER2 and neu.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Arf")
     (:REACH ((("controller" "HER2")) (("controller" "neu"))))))))
 ((:TEXT
   "Of note, downregulation of Arf and p21 Cip1 and WAF1 was also observed in Dmp1 wt HD tumors, indicating that naturally occurring hemizygous deletion of Dmp1 inactivates the Arf-p53 pathway as well.")
  (MIS-MATCHES
   ("inactivates"
    (("controlled" "Arf-p53") (:REACH ((("controller" "Dmp1"))))))))
 ((:TEXT
   "Moreover, the Pim-1 phosphorylation site in human p27 Kip1 loses an additional residue at the carboxyl terminus because of the phosphorylated Thr 198 residue located at the end of p27 Kip1 carboxyl terminus.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Pim-1") (:REACH))
    (("substrate" "p27 Kip1") (:REACH ((("enzyme" "Pim-1"))))))))
 ((:TEXT
   "Moreover, the one-dimensional sequence around the Thr 198 residue in the human p27 Kip1 (KKPGLRRRQpT 198; pT represents phosphorylated Thr) was different from that of other low affinity substrates, such as p21 Cip1 (RKRRQTpSMTD; pS represents phosphorylated Ser) and PAP1 (KKRKHKApSKSS), which were phosphorylated by Pim-1 (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "PAP1") (:REACH ((("enzyme" "Pim-1")))))
    (("substrate" "KKRKHKApSKSS") (:REACH ((("enzyme" "Pim-1"))))))))
 ((:TEXT
   "We have previously shown that not only Pim-1 but also Pim-2 and Pim-3 can directly phosphorylate p27 Kip1 at the Thr 198 residue (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylate"
    (("substrate" "p27 Kip1")
     (:REACH ((("enzyme" "Pim-1") ("site" "Thr 198"))))))))
 ((:TEXT
   "Swiercz et al. [XREF_BIBR] demonstrated that Plexin-B1 activates the the PI-3-kinase and Akt pathway in response to Sema 4D, but requires ErbB-2 to activate RhoA and consequently promote cell migration.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "PI-3-kinase") (:REACH ((("controller" "Plexin-B1")))))
    (("controlled" "Akt") (:REACH ((("controller" "Plexin-B1"))))))))
 ((:TEXT
   "Activation of NF-kappaB by growth and inflammatory factors is mediated through the IkappaB kinases (IKKs), which phosphorylate IkappaB, resulting in IkappaBalpha ubiquitination and subsequent proteosome dependent degradation.")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "IkappaB") (:REACH ((("enzyme" "IKKs"))))))))
 ((:TEXT
   "These results indicate that substantial amounts of FOXO3a were not phosphorylated and the Akt-FOXO3a axis is uncoupled in the doxorubicin resistant cells.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "FOXO3a") (:REACH)))))
 ((:TEXT
   "In both ef and svHCECs, EGF supplementation after a 24 h serum starvation caused a rapid 5-15 min spike in the phosphorylation of all three TK types.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "TK") (:REACH ((("enzyme" "EGF"))))))))
 ((:TEXT
   "In this report, using lentiviral transduction methodologies to impose changes in DUSP expression levels, we show that increased DUSP5 and DUSP6 expressions are likely to be factors in the slow cycling phenotype of SPSC through their effect on dephosphorylating Erk1/2 whereas DUSP1 may instead primarily control other functions such as innate immune responses to stress via modulation of JNK1/2 activation.")
  (MIS-MATCHES ("dephosphorylating" (("substrate" "Erk1/2") (:REACH)))))
 ((:TEXT
   "In the cells transduced with the DUSP5 shRNAmir, the DUSP5 rise was nullified and Erk1/2 continuously increased over this period, but the phosphorylation changes in the JNK and SAPK and p38 kinases were not affected.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "JNK") (:REACH))
    (("substrate" "SAPK") (:REACH)) (("substrate" "p38") (:REACH)))))
 ((:TEXT
   "Since beta-catenin levels were reduced in 1205Lu-Vc cells, we examined phosphorylation of beta-catenin at threonine residue 41 and serine residue 45, which target beta-catenin for ubiquitin mediated degradation (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "beta-catenin")
     (:REACH ((("site" "41")) (("site" "45"))))))))
 ((:TEXT
   "p62 binding was only slightly influenced by the presence of staurosporine, suggesting that a reciprocal relationship between glycosylation and staurosporine sensitive phosphorylation was occurring for p107, but not for p62.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "staurosporine") (:REACH)))))
 ((:TEXT
   "Thus both pRB and p107 are O-GlcNAc modified in vitro and there appears to be a yin-yang relationship between O-GlcNAc modification and staurosporine sensitive phosphorylation of p107.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "staurosporine") (:REACH)))))
 ((:TEXT
   "Thus, active, hypophosphorylated, hyperglycosylated pRB is bound to E2F-1 during early G1 of the cell cycle.")
  (MIS-MATCHES ("hypophosphorylated" (("substrate" "pRB") (:REACH)))))
 ((:TEXT
   "Since it is the active, hypophosphorylated form of pRB that binds and represses E2F-1 during G1 of the cell-cycle (XREF_BIBR), we investigated whether E2F-1 associated pRB is O-GlcNAc modified.")
  (MIS-MATCHES ("hypophosphorylated" (("substrate" "pRB") (:REACH)))))
 ((:TEXT
   "Also, since p107 O-GlcNAc modification and staurosporine sensitive phosphorylation appear to be reciprocal in vitro, investigation of the role of O-GlcNAc in modulating the entire family of pRB related proteins appears warranted.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "staurosporine") (:REACH))
    (("substrate" "p107") (:REACH)))))
 ((:TEXT
   "Thus, in the absence of p66 Shc, pRB defaults to its hypophosphorylated state to halt proliferation.")
  (MIS-MATCHES ("hypophosphorylated" (("substrate" "Shc") (:REACH)))))
 ((:TEXT
   "However, in the presence of Ras (N17), knockdown of p66 Shc no longer suppressed proliferation, and phosphorylation of pRB was partly restored (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "pRB") (:REACH)))))
 ((:TEXT
   "Furthermore, in both normal and malignant cells, Ras activated by the absence of p66 Shc acts primarily to disable anoikis rather than promote proliferation rates, again similar to the effects of oncogenic Ras on reversing differentiation.")
  (MIS-MATCHES
   ("activated" (("controlled" "Ras") (:REACH ((("controller" "Shc"))))))))
 ((:TEXT
   "The HTLV-1 basic leucine zipper factor (HBZ) protein suppresses Tax mediated transcription activation of the viral LTR [XREF_BIBR].")
  (MIS-MATCHES
   ("activation"
    (("controlled" "LTR") (:REACH ((("controller" "transcription"))))))))
 ((:TEXT
   "The HA protein also interacts with a C-type lectin, dendritic cell specific ICAM-3-grabbing nonintegrin (DC-SIGN) on DCs, and activates the serine/threonine protein kinase Raf-1 via the Ras signaling pathway.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "serine/threonine protein kinase")
     (:REACH ((("controller" "HA"))))))))
 ((:TEXT
   "DC-SIGN-mediated Raf-1 activation induces phosphorylation of NF-kappaBp65 on Ser 276, and its subsequent acetylation.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "NF-kappaBp65")
     (:REACH ((("enzyme" "Raf-1") ("site" "Ser-276"))))))))
 ((:TEXT
   "Measles virus P protein (phosphoprotein) interacts with the ELIE motif, and activates transcription of A20.")
  (MIS-MATCHES
   ("P protein (phosphoprotein) interacts with the ELIE motif"
    (NIL (:REACH ((("theme" "P protein") ("theme" "ELIE motif"))))))
   ("activates"
    (("controlled" "transcription") (:REACH ((("controller" NIL))))))))
 ((:TEXT
   "During the early stages, the membrane glycoproteins gB and gH interact with TLR2 and activate NF-kappaB [XREF_BIBR].")
  (MIS-MATCHES
   ("activate" (("controlled" "NF-kappaB") (:REACH ((("controller" NIL))))))))
 ((:TEXT
   "Second, knockdown of both Ets isoforms does not completely eliminate miR-126 expression, suggesting that other ETS family members or unidentified transcription factors may also activate miR-126 expression.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "miR-126 expression") (:REACH ((("controller" "ETS"))))))))
 ((:TEXT
   "Several protein kinases, such as Akt (XREF_BIBR), protein kinase C (PKC) (XREF_BIBR), and protein kinase A (PKA) (XREF_BIBR; XREF_BIBR), phosphorylate GSK3 at an N-terminal serine residue, the serine 21 of GSK3alpha and the serine 9 of GSK3beta (XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylate"
    (("substrate" "GSK3beta") (:REACH ((("site" "9")) (("site" "serine")))))
    (("substrate" "GSK3") (:REACH ((("site" "serine")))))
    (("substrate" "GSK3alpha")
     (:REACH ((("site" "serine")) (("site" "21"))))))))
 ((:TEXT
   "No evidence has been reported for inhibition of GSK3 by carbamazepine (XREF_BIBR; XREF_BIBR; XREF_BIBR); one study in cultured cells found no effect of lamotrigine on GSK3 serine phosphorylation (XREF_BIBR); whereas chronic treatment (28 days) of mice with lamotrigine increased serine phosphorylation of GSK3 in the hippocampus and the cerebral cortex (unpublished data).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "GSK3")
     (:REACH ((("enzyme" "lamotrigine") ("site" "serine"))))))))
 ((:TEXT
   "This suggests that insufficient inhibitory serine phosphorylation of GSK3 is a risk factor for developing mood related behavioral disturbances, which complements the findings that lithium and many other psychotropics increase serine phosphorylation of GSK3 (XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "GSK3")
     (:REACH ((("enzyme" "lithium") ("site" "serine"))))))))
 ((:TEXT
   "We now report that phosphorylation of the p53 tumour suppressor is positively regulated by DeltaNp63alpha in immortalised human keratinocytes.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p53 tumour suppressor") (:REACH)))))
 ((:TEXT
   "Structure-function analysis revealed that the DeltaNp63 specific TA2 transactivation domain mediates ATM transcription in coordination with the DNA binding and SAM domains.")
  (MIS-MATCHES
   ("DeltaNp63-specific TA2 transactivation domain mediates ATM transcription"
    (("controlled"
      "DeltaNp63-specific TA2 transactivation domain mediates ATM transcription")
     (:REACH ((("controller" "ATM"))))))))
 ((:TEXT
   "TAp63 isotypes can transcriptionally activate a subset of p53 target genes involved in cell cycle checkpoint control and apoptosis [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("activate"
    (("controlled" "p53") (:REACH ((("controller" "TAp63 isotypes"))))))))
 ((:TEXT
   "Other key ATM signaling pathway components, including Chk2 Threonine 68 and ATM Serine 1981, are also constitutively phosphorylated.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "ATM") (:REACH)))))
 ((:TEXT
   "As the present results show, the repair also involves FoxM1 induced activation of beta-catenin transcription, which results in the reannealing of AJs to form the characteristic restrictive endothelial barrier.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "beta-catenin transcription")
     (:REACH ((("controller" "FoxM1"))))))))
 ((:TEXT
   "Given current interest in MEK inhibitors (MEK phosphorylates ERK) as biologic therapies for cancer, understanding how ERK activity is regulated is of increasing importance [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "ERK") (:REACH ((("enzyme" "MEK"))))))))
 ((:TEXT
   "In all of these cell lines, 1 microM AKTi inhibited AKT phosphorylation and phosphorylation of AKT substrates Foxo1 and Foxo3a.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "AKT") (:REACH)))))
 ((:TEXT
   "In contrast, in HCT116, neither p70S6K, S6, or 4E-BP1 phosphorylation nor cyclin D expression was suppressed, despite effective inhibition of AKT and Foxo phosphorylation (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "cyclin D") (:REACH)))))
 ((:TEXT
   "MAP kinase interacting kinases (MNKs) are activated by ERK signaling and may regulate translation via phosphorylation of eIF4E (XREF_BIBR).")
  (MIS-MATCHES
   ("activated" (("controlled" "MAP") (:REACH ((("controller" "ERK"))))))))
 ((:TEXT
   "Phosphorylation of 70S6K and ribosomal protein S6 are also downstream of PI3K and AKT and MEK and ERK signaling and sensitive to their combined inhibition (XREF_FIG and XREF_FIG).")
  (MIS-MATCHES ("Phosphorylation" (("substrate" "70S6K") (:REACH)))))
 ((:TEXT
   "This mutant 4E-BP1 can not be phosphorylated and binds constitutively to eIF4E (XREF_BIBR and XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "eIF4E") (:REACH)))))
 ((:TEXT
   "These data support the hypothesis that inhibition of 4E-BP1 function by AKT and ERK signaling is required to activate translation and maintain the malignant phenotype in tumors with PI3K and RAS mutation.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "translation") (:REACH ((("controller" "4E-BP1"))))))))
 ((:TEXT
   "This suggests that 4E-BP1 inhibition is responsible for much of the activation of translation by RAS and PI3K and AKT in these cells and this in turn plays an important part in mediating the effects of these pathways in the tumor.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "translation") (:REACH ((("controller" "RAS"))))))))
 ((:TEXT
   "Signals that activate NF-kappaB promote phosphorylation and ubiquitin mediated destruction of the IkappaBs, which are substrates of the upstream IkappaB kinases Ikkalpha or Ikkbeta (reviewed in [XREF_BIBR - XREF_BIBR]).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "ubiquitin") (:REACH ((("enzyme" "NF-kappaB"))))))))
 ((:TEXT
   "CD40 signalling has been shown to activate the non canonical NF-kappaB pathway [XREF_BIBR].")
  (MIS-MATCHES
   ("activate"
    (("controlled" "NF-kappaB") (:REACH ((("controller" "CD40"))))))))
 ((:TEXT
   "SCF ligand binding leads to phosphorylation and activation of the c-kit receptor and its downstream signaling proteins, which have been implicated in cell proliferation, cell adhesion, and cell survival as well as chemotaxis [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES ("phosphorylation" (("substrate" "c-kit receptor") (:REACH)))))
 ((:TEXT
   "The cytokine G-CSF activates in vitro endothelial cell proliferation and shows angiogenic activity in vivo [XREF_BIBR].")
  (MIS-MATCHES
   ("activates"
    (("controlled" "proliferation") (:REACH ((("controller" "G-CSF"))))))))
 ((:TEXT
   "The resulting phosphorylation of the c-kit receptor corresponds to the mobilization of peripheral EPCs [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES ("phosphorylation" (("substrate" "c-kit receptor") (:REACH)))))
 ((:TEXT
   "A representative interaction of this type is the binding of middle T to the Src oncoprotein, leading to an activation of the Src kinase which results in the phosphorylation of several tyrosine residues on middle T and the subsequent recruitment and activation of the p85 and p110alpha dimer (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "p85") (:REACH ((("site" "tyrosine residues")))))
    (("substrate" "p110alpha") (:REACH ((("site" "tyrosine residues"))))))))
 ((:TEXT
   "These interactions recruit PDK-1 and AKT to the plasma membrane, resulting in the phosphorylation of AKT by PDK-1, catalytic activation of AKT and phosphorylation of downstream targets (XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "AKT") (:REACH)))))
 ((:TEXT
   "The TSC complex functions as GTPase activating protein for RHEB (XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR); reduction of GTPase activation by AKT activates RHEB.")
  (MIS-MATCHES
   ("activation" (("controlled" "GTPase") (:REACH ((("controller" "AKT"))))))))
 ((:TEXT
   "For instance, AMPK (AMP kinase), activated by an increase of cellular AMP, activates TSC2 and thereby inhibits TOR.")
  (MIS-MATCHES
   ("activated" (("controlled" "AMPK") (:REACH ((("controller" "AMP"))))))))
 ((:TEXT
   "A distinguishing mark of TORC2 activation is the requirement for an active TSC complex, one that is not phosphorylated by AKT and opposite to the requirement for TORC1 activation (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "TSC") (:REACH ((("enzyme" "AKT"))))))))
 ((:TEXT
   "However, it is doubtful whether the additional targets that can be addressed by the S473 phosphorylated AKT play an important role in transformation (see below).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "AKT") (:REACH)))))
 ((:TEXT
   "AKT can phosphorylate IKKalpha (IkappaB kinase) in vivo (XREF_BIBR), and the activated IKK complex then phosphorylates the p65 subunit of NFkappaB (XREF_BIBR), enhancing its transcriptional activity.")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "NFkappaB") (:REACH ((("enzyme" "IKK"))))))))
 ((:TEXT
   "A CA Protein Isoform Is Selectively Phosphorylated at Serine Residue 16 in the Ser 16 -Pro 17 Motif and Incorporated into the HIV Core.")
  (MIS-MATCHES
   ("Phosphorylated"
    (("substrate" "CA") (:REACH ((("site" "Serine Residue"))))))))
 ((:TEXT
   "To investigate whether the binding of the CA core is directly due to the phosphorylation of Ser 16 in the CA core, WT core particles were treated with ALP or the heat denatured ALP.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CA") (:REACH ((("site" "Ser 16"))))))))
 ((:TEXT
   "To investigate how the motif of CA-a is phosphorylated, Western immunoblot analysis with monoclonal anti-pS16 and P17 mAb was carried out, which demonstrated that Ser 16 was phosphorylated inside HIV-1 LAV-1 virions but not inside CEM and LAV -1 cells, although the specific kinase that phosphorylates Ser 16 is currently unknown (supplemental Fig.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CA-a") (:REACH)))))
 ((:TEXT
   "Phosphorylation of T514 by GSK-3beta, or of T555 by Rho Kinase, disrupts the interaction of CRMP2 with tubulin heterodimers preventing increases in axon length and branching [XREF_BIBR].")
  (MIS-MATCHES
   ("Phosphorylation"
    (("substrate" "GSK-3beta")
     (:REACH ((("site" "T555")) (("enzyme" "Rho") ("site" "T514"))))))))
 ((:TEXT
   "A few studies have shown Fes/Fps, Fer and Fyn tyrosine kinases to induce phosphorylation of certain CRMP isoforms, [XREF_BIBR; XREF_BIBR; XREF_BIBR] although the specific phosphorylated residues were not identified.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CRMP isoforms") (:REACH)))))
 ((:TEXT
   "Together these data indicated that in these overexpression studies, endogenous kinase activity was able to phosphorylate approximately 10-14% of the overexpressed CRMP1 molecules following H 2 O 2 treatment.")
  (MIS-MATCHES ("phosphorylate" (("substrate" "CRMP1") (:REACH)))))
 ((:TEXT
   "Upon Sema3A stimulation, GSK-3beta from the inactive pool is activated [XREF_BIBR].")
  (MIS-MATCHES
   ("activated" (("controlled" "[") (:REACH ((("controller" "GSK-3beta"))))))))
 ((:TEXT
   "This concurrent activation of CDK5 and GSK-3beta allows for sequential phosphorylation and inactivation of CRMPs.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CRMPs") (:REACH)))))
 ((:TEXT
   "Since the phosphorylation of CRMPs by GSK-3beta and Rho Kinase at residues adjacent to Y504 serves to disrupt the interaction between CRMPs and tubulin heterodimers, Y504 phosphorylation may also disrupt this interaction.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "CRMPs")
     (:REACH ((("enzyme" "GSK-3beta")) (("enzyme" "Rho"))))))))
 ((:TEXT
   "Alternatively, Y504 phosphorylation may alter the interaction of CRMP1 with other CRMP isoforms or may serve as a docking site for proteins with phosphotyrosine binding domains.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CRMP1") (:REACH)))))
 ((:TEXT
   "Thrombin is a plasma serine proteinase that activates platelets and cleaves fibrinogen to stop bleeding at vascular injury sites (XREF_BIBR).")
  (MIS-MATCHES
   ("activates"
    (("controlled" "fibrinogen") (:REACH ((("controller" "proteinase"))))))))
 ((:TEXT
   "Cultured vascular endothelial cells express all four PARs and the traditional view is that the activation of PAR-1 by thrombin up-regulates proinflammatory responses in endothelial cells.")
  (MIS-MATCHES
   ("is that the activation"
    (("controlled" "PAR-1") (:REACH ((("controller" "PARs"))))))))
 ((:TEXT
   "These results are consistent with the observation that, unlike EA.hy926 cells which effectively supported the thrombin activation of protein C, thrombin did not activate protein C on HK-2 cells (XREF_FIG, part D).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "protein C") (:REACH ((("controller" "thrombin"))))))
   ("activation"
    (("controlled" "protein C") (:REACH ((("controller" "thrombin"))))))))
 ((:TEXT
   "As presented in XREF_FIG (parts B and D), the inhibitor effectively suppressed the ECM modulatory effect of thrombin in the PC-S195A-pretreated HK-2 cells, suggesting that this effect is mediated through the protease activating the PI3-kinase pathway by an EPCR and PAR-1 dependent mechanism, as has been observed with APC (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("activating"
    (("controlled" "PI3-kinase")
     (:REACH
      ((("controller" "protease")) (("controller" "PAR-1"))
       (("controller" "EPCR"))))))))
 ((:TEXT
   "A larger pool of bioavailable IGF-1 can activate the IGF-1 receptor (IGF-1R), thus may stimulate colonocyte proliferation [XREF_BIBR, XREF_BIBR - XREF_BIBR].")
  (MIS-MATCHES
   ("activate"
    (("controlled" "IGF-1 receptor") (:REACH ((("controller" "IGF-1"))))))))
 ((:TEXT
   "Upon IGF-1 binding, IGF-1R activates the PI3K and Akt cascade, which promotes G 1 to S cell cycle progression [XREF_BIBR] and elevates cell proliferation [XREF_BIBR].")
  (MIS-MATCHES
   ("activates" (("controlled" "Akt") (:REACH ((("controller" "IGF-1R")))))
    (("controlled" "PI3K") (:REACH ((("controller" "IGF-1R"))))))))
 ((:TEXT
   "Transcriptional activation of FKHRL1 proteins is regulated by the serine/threonine kinase Akt, which phosphorylates FKHRL1 and inactivates it [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "FKHRL1") (:REACH ((("enzyme" "Akt"))))))
   ("inactivates" (("controlled" "[") (:REACH ((("controller" "FKHRL1"))))))))
 ((:TEXT
   "In contrast, transient transfection of EZH2 alone had no effect on Nkx3.1 promoter activity in reporter assay or Nkx3.1 protein level (XREF_FIG), indicating that EZH2 required ERG and stable expression to silence Nkx3.1.")
  (MIS-MATCHES
   ("promoter activity"
    (("controlled" "Nkx3.1 protein level")
     (:REACH ((("controller" "Nkx3.1"))))))))
 ((:TEXT "ESE-3 Represses EZH2 and Activates Nkx3.1 Transcription.")
  (MIS-MATCHES
   ("Activates"
    (("controlled" "Nkx3.1 Transcription")
     (:REACH ((("controller" "ESE-3"))))))
   ("ESE-3 Represses EZH2 and Activates Nkx3.1 Transcription"
    (("controlled" "ESE-3 Represses EZH2 and Activates Nkx3.1 Transcription")
     (:REACH ((("controller" "Nkx3.1"))))))))
 ((:TEXT
   "On the other hand, we show that Nkx3.1 expression was activated by ESE3 and that stable knock-down of ESE3 significantly reduced the expression of Nkx3.1.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Nkx3.1 expression") (:REACH ((("controller" "ESE3"))))))))
 ((:TEXT
   "Cells were stimulated with human recombinant EGF and EGFR and erbB2 activation was determined by detecting tyrosine phosphorylation at Tyr 1068 for EGFR and Tyr 1248 for erbB2.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "erbB2") (:REACH ((("site" "Tyr 1248"))))))))
 ((:TEXT
   "Knock down of Smad4 in HPNE and Ras cells further enhanced the levels of expression and phosphorylation of EGFR and erbB2 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "erbB2") (:REACH))
    (("substrate" "EGFR") (:REACH)))))
 ((:TEXT
   "TGF-beta treatment reduced EGFR promoter activity of HPNE and HPNE and Ras cells (XREF_FIG).")
  (MIS-MATCHES
   ("promoter activity"
    (("controlled" "HPNE") (:REACH ((("controller" "EGFR")))))
    (("controlled" "Ras") (:REACH ((("controller" "EGFR"))))))))
 ((:TEXT
   "We also identified three compounds that bind to the RKIP binding pocket with no effect on Raf-1 association or RKIP phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Raf-1") (:REACH)))))
 ((:TEXT
   "Since MR-GEF encodes a Rap1 GEF able to activate G protein signalling, we suggest that changes in MR-GEF expression could potentially influence neurotransmission.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "G-protein") (:REACH ((("controller" "Rap1 GEF"))))))))
 ((:TEXT
   "Moreover, since MR-GEF encodes a Rap1 GEF able to activate G protein signalling, we suggest that changes in MR-GEF expression could potentially influence neurotransmission.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "G-protein") (:REACH ((("controller" "Rap1 GEF"))))))))
 ((:TEXT
   "E346K point mutant not only undergoes autoactivation in serum starved cells, that is, in the absence of RTK signaling, but is also able to phosphorylate Ack1 effectors, for example, AKT and AR (XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "AKT") (:REACH))
    (("substrate" "Ack1") (:REACH)) (("substrate" "AR") (:REACH)))))
 ((:TEXT
   "However, upon activation of RTKs by growth factors, Ack1 is activated which in turn directly phosphorylates AKT at evolutionary conserved Tyrosine 176.")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "AKT")
     (:REACH ((("enzyme" "Ack1") ("site" "Tyrosine 176"))))))))
 ((:TEXT
   "FoxO subgroup of transcription factors are phosphorylated by AKT resulting in relocalization of FoxO proteins from the nucleus to cytoplasm, preventing transactivation of FoxO-target genes (XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "FoxO") (:REACH ((("enzyme" "AKT"))))))))
 ((:TEXT
   "Recently, this inhibitor, renamed as AIM-100, was shown to suppress both Ack1 Tyr284- and AR Tyr267-phosphorylations (XREF_BIBR).")
  (MIS-MATCHES
   ("Tyr267-phosphorylations" (("substrate" "Ack1") (:REACH))
    (("substrate" "AR") (:REACH)))))
 ((:TEXT
   "Ability of AIM-100 to inhibit autoactivated Ack1 (E346K mutant) further indicates that it is effective in repressing both oncogene induced or ligand modulated Ack1 Tyr284- and AR Tyr267-phosphorylations (XREF_BIBR).")
  (MIS-MATCHES
   ("Tyr267-phosphorylations" (("substrate" "Ack1") (:REACH))
    (("substrate" "AR") (:REACH)))))
 ((:TEXT
   "Given that oncogenic Ras proteins activate the transcription factor NF-kappaB, and the importance of NF-kappaB in oncogenesis, we hypothesized that NF-kappaB would be an important K-Ras target in lung cancer.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "transcription") (:REACH ((("controller" "Ras"))))))))
 ((:TEXT
   "Meylan et al (XREF_BIBR) analyzed nuclear accumulation of p65 and RelA as a marker of NF-kappaB activation, while our studies utilized NF-kappaB-dependent EGFP reporter and IkappaBalpha phosphorylation from in situ tumors (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "EGFP reporter") (:REACH)))))
 ((:TEXT
   "This is most often mediated by class I A PI3K, a member of the family of intracellular lipid kinases that are activated by growth factor RTKs (receptor tyrosine kinases) such as insulin receptor, insulin like growth factor receptor (IGF-1R), platelet derived growth factor receptor (PDGFR), and members of the epidermal growth factor (EGF)/ErbB family in addition to G protein coupled receptors and oncogenes such as Ras.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "PI3K") (:REACH ((("controller" "growth factor RTKs"))))))))
 ((:TEXT
   "At the plasma membrane, PI3K phosphorylates the 3 '-hydroxyl group of phosphatidylinositol 4,5 diphosphate (PIP 2) to generate phosphatidylinositol-3,4,5-trisphosphate (PIP 3), a lipid second messenger that binds to the pleckstrinhomology (PH) domains of down stream target molecules such as 3-phosphoinositide-dependent kinase 1 (PDK1) and Akt.")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "phosphatidylinositol") (:REACH ((("enzyme" "PI3K")))))
    (("substrate" "diphosphate") (:REACH ((("enzyme" "PI3K"))))))))
 ((:TEXT
   "PTEN, as its name suggests, is a phosphatase that reverses the action of PI3K by dephosphorylating PIP 3, thereby regulating Akt activity and downstream responses [XREF_BIBR].")
  (MIS-MATCHES ("dephosphorylating" (("substrate" "PIP") (:REACH)))))
 ((:TEXT
   "Additional pathways activate NF-kappaB via Akt association with inhibitor of kappa-B kinase (IKK), resulting in IKK activation and phosphorylation of IkappaB [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "IKK") (:REACH))
    (("substrate" "IkappaB [") (:REACH)))))
 ((:TEXT
   "Akt regulates protein synthesis by phosphorylating the tuberous sclerosis complex 2 (TSC2) protein tuberin, thus inhibiting the GAP (GTPase activating protein) activity of the TSC1 and TSC2 complex toward Rheb (small G protein Ras homologue enriched in brain).")
  (MIS-MATCHES ("phosphorylating" (("substrate" "TSC2") (:REACH)))))
 ((:TEXT
   "GTP bound Rheb accumulates and activates the mTOR-Raptor kinase complex, which in turn mediates phosphorylation of 4E-BP1 (eukaryotic translation initiation factor 4E binding protein 1) and p70 S6Kinase, ultimately leading to increased protein synthesis [XREF_BIBR].")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p70") (:REACH)))))
 ((:TEXT
   "It is worth noting that the tumors that arose in myrp110alpha transgenic mice had increased phosphorylation of estrogen receptor alpha, a feature of breast cancer [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "estrogen receptor") (:REACH)))))
 ((:TEXT
   "A defect in Smad3 phosphorylation and Foxp3 expression occurs in Cbl-b-/- T cells (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Foxp3") (:REACH)))))
 ((:TEXT
   "mTOR Activator Rheb Is Frequently Overexpressed In Human Carcinomas And Is Critical And Sufficient For Skin Epithelial Carcinogenesis.")
  (MIS-MATCHES
   ("Activator"
    (("controlled" "Rheb Is Frequently Overexpressed")
     (:REACH ((("controller" "mTOR"))))))))
 ((:TEXT
   "In contrast, addition of the STAT3 activator IL6 to the culture at a papilloma associated concentration, 10ng/ml, markedly activated pSTAT3 Y705 and pSTAT3 S727 in both transgenic and wild type keratinocytes.")
  (MIS-MATCHES
   ("activator" (("controlled" "IL6") (:REACH ((("controller" "STAT3")))))
    (("controlled" "STAT3") (:REACH ((("controller" "IL6"))))))
   ("activated"
    (("controlled" "pSTAT3")
     (:REACH ((("controller" "STAT3")) (("controller" "IL6"))))))))
 ((:TEXT
   "Since we observed that serine sites S 394, S 422 and S 424 were required for CSE induced HDAC2 phosphorylation and are conserved protein kinase CK2 phospho-acceptor sites on HDAC2, we speculated that CK2 would be involved in HDAC2 phosphorylation in response to CSE.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "HDAC2") (:REACH ((("enzyme" "CSE"))))))))
 ((:TEXT
   "The presence of conserved protein kinase CK2 sites that were highly phosphorylated on HDAC2 in response to CSE and acrolein, led us to hypothesize a potential direct interaction between HDAC2 and protein kinase CK2 catalytic subunits or the holoenzyme.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CK2") (:REACH)))))
 ((:TEXT
   "To determine if this interaction was specific only to CSE, H292 cells were also treated with acrolein (25 and 50 muM) for 1 h. Acrolein induced HDAC2 phosphorylation was associated with increased HDAC2 CK2alpha ' binding (XREF_FIG) which, compared with CSE treatment, suggested that the extent of HDAC2 phosphorylation correlates with the level of CK2alpha binding.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "HDAC2") (:REACH ((("enzyme" "Acrolein"))))))))
 ((:TEXT
   "To determine if protein kinase CK2 was uniquely required for CSE induced HDAC2 phosphorylation [XREF_BIBR, XREF_BIBR], bronchial epithelial H292 cells were pre-treated with a specific CK2 inhibitor, 4, 5, 6, 7-tetrabromobenzotriazole (TBB) [XREF_BIBR] for 2 h prior to exposure to CSE (2.5%) for 0.5 h. 50 muM TBB was sufficient at completely inhibiting CSE induced HDAC2 phosphorylation (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "HDAC2") (:REACH ((("enzyme" "CSE"))))))))
 ((:TEXT
   "The abrogation of HDAC2 acetylation, however, had no effect on HDAC2 phosphorylation in the presence of over-expressed dominant negative CBP (XREF_FIG) suggesting that acetylation was more likely a consequence of CSE induced HDAC2 phosphorylation.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "HDAC2") (:REACH ((("enzyme" "CSE"))))))))
 ((:TEXT
   "Endogenous HDAC2 in lungs of mice exposed to cigarette smoke was also phosphorylated both on serine and threonine residues and correlated with HDAC2 degradation [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "HDAC2")
     (:REACH ((("site" "serine")) (("site" "threonine residues"))))))))
 ((:TEXT
   "Since hypoxia had been implicated in phosphorylating HDAC2 [XREF_BIBR], we had to overcome the potential problem that the observed CSE effect was due primarily to the induction of a hypoxic environment.")
  (MIS-MATCHES ("phosphorylating" (("substrate" "HDAC2") (:REACH)))))
 ((:TEXT
   "We chose PP2A for several reasons : okadaic acid, which had been shown to phosphorylate HDAC2 [XREF_BIBR, XREF_BIBR] is a potent inhibitor of PP2A; PP2A, unlike PP2B and C, does not possess a metal ion requirement and PP1 mostly dephosphorylates proteins phosphorylated by PKA.")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "HDAC2") (:REACH ((("enzyme" "acid"))))))))
 ((:TEXT
   "Since PKA does not phosphorylate HDAC2 at least in-vitro [XREF_BIBR], we did not expect PP1 to be wholly important if at all phosphatase activity is instrumental to HDAC2 phosphorylation at early time points.")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "HDAC2") (:REACH ((("enzyme" "PKA"))))))))
 ((:TEXT
   "Kinase prediction software such as NetPhos 2.0, which accurately predicts serine protein kinase CK2 mediated phosphorylation of HDAC2 serine sites Ser394, Ser422 and Ser424, suggests threonine 278 may be potentially phosphorylated by PKC.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "HDAC2")
     (:REACH
      ((("enzyme" "CK2") ("site" "Ser422"))
       (("enzyme" "CK2") ("site" "Ser394"))
       (("enzyme" "CK2") ("site" "Ser424"))
       (("enzyme" "CK2") ("site" "serine"))))))))
 ((:TEXT
   "The functional relevance of HDAC2 threonine phosphorylation in-vivo, if any, remains unknown and will however require future studies.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "HDAC2") (:REACH ((("site" "threonine"))))))))
 ((:TEXT
   "Consistent with our hypothesis that CSE induced HDAC2 phosphorylation in-vivo was largely mediated by CK2, we observed a strong correlation between HDAC2 phosphorylation and binding to both catalytic subunits of the protein kinase CK enzyme (CK2alpha and CK2alpha ') either with CSE or acrolein treatment with no significant nuclear translocation contrary to earlier reports [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "HDAC2") (:REACH ((("enzyme" "CSE"))))))))
 ((:TEXT
   "The nuclear pool of CK2alpha was more highly phosphorylated as evidenced by the presence of the gel retardation band, which was consistent with HDAC2 being a nuclear protein.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CK2alpha") (:REACH)))))
 ((:TEXT
   "Increased RelA and p65 transcriptional activity in response to TNFalpha has also been shown to involve CK2 mediated interaction and phosphorylation of RelA and p65 [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "RelA") (:REACH))
    (("substrate" "p65") (:REACH)))))
 ((:TEXT
   "Interestingly, cells overexpressing an ERK1-WT allele demonstrated similar levels of phosphorylation of Flag-HA-RSK at Thr573 and Elk-1 transactivation as ERK2-WT expressing cells (data not shown).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Flag-HA-RSK") (:REACH ((("site" "Elk-1"))))))))
 ((:TEXT
   "To provide biochemical evidence that ERK2 is capable of directly phosphorylating Fra1 in a DEF motif dependent fashion, we examined in vitro phosphorylation of Fra1-WT and Fra1-F235A by ERK in vitro.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Fra1-F235A") (:REACH ((("enzyme" "ERK")))))
    (("substrate" "Fra1-WT") (:REACH ((("enzyme" "ERK"))))))))
 ((:TEXT
   "As shown, the phosphorylation of Fra1 by ERK in vitro was dependent on an intact DEF motif (XREF_SUPPLEMENTARY) and ERK2 with a mutated DEF binding pocket was inefficient at phosphorylating Fra1-WT in vitro (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES ("phosphorylating" (("substrate" "Fra1-WT") (:REACH)))))
 ((:TEXT
   "Thus, Fra1 is a critical regulator of EMT downstream of ERK2 and our results suggest that ERK2 predominantly regulates Fra1 protein levels and its phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Fra1") (:REACH)))))
 ((:TEXT
   "Ras proteins are activated by guanine nucleotide exchange factors (GEFs), allowing release of bound GDP and binding of cytosolic GTP.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "GDP")
     (:REACH
      ((("controller" "GEFs")) (("controller" "Ras"))
       (("controller" "guanine"))))))))
 ((:TEXT
   "Interestingly, although an alteration in IRE1alpha activation was readily observed, there were no differences in PERK levels or activation between control and Pik3r1 -/- cells as assessed by alterations in PERK mobility or phosphorylation (XREF_FIG, data not shown).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PERK") (:REACH)))))
 ((:TEXT
   "We next sought to establish the extent to which the defects in IRE1alpha protein and phosphorylation, and decreased transcription and splicing of XBP-1 mRNA observed in Pik3r1 -/- cells altered induction of UPR target genes.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "IRE1alpha protein") (:REACH)))))
 ((:TEXT
   "Lastly, to evaluate the outcome of blunted UPR activation in p85alpha deficient cells, apoptosis was measured in control and Pik3r1 -/- pre-adipocytes following treatment with tunicamycin and thapsigargin (XREF_FIG and XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("activation"
    (("controlled" "p85alpha") (:REACH ((("controller" "UPR"))))))))
 ((:TEXT
   "The eIF4E binding activity of the 4E-BPs is regulated through phosphorylation by the mammalian target of rapamycin complex 1 (mTORC1) (XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("binding activity"
    (NIL (:REACH ((("theme" "eIF4E") ("theme" "4E-BPs"))))))))
 ((:TEXT
   "Insights into the mechanism by which TRAIL relies on Bax but fails to activate the Bak pathway came from recent publications, showing that apoptosis relies on selective interactions between particular subsets of Bcl-2 proteins.")
  (MIS-MATCHES
   ("activate" (("controlled" "Bak") (:REACH ((("controller" "TRAIL"))))))))
 ((:TEXT
   "When OECM1 cells were treated with EGF, which activates EGFR, the amount of nuclear beta-catenin increased over time.")
  (MIS-MATCHES
   ("activates" (("controlled" "EGFR") (:REACH ((("controller" "EGF"))))))))
 ((:TEXT
   "Our results showed that the extent of H3K4 methylation (H3K4me3) increased significantly following activation of cyclin D1 transcription by beta-catenin in EGFR activated cells, and that it gradually declined when the gene was inactivated in EGFR inhibited cells.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "cyclin D1 transcription")
     (:REACH ((("controller" "beta-catenin"))))))))
 ((:TEXT
   "This pathway is defined by the release of cytochrome c from mitochondria into the cytosol, and subsequent binding of cytochrome c to the caspase activator Apaf-1.")
  (MIS-MATCHES
   ("activator"
    (("controlled" "binding of cytochrome c to the caspase")
     (:REACH ((("controller" "Apaf-1"))))))))
 ((:TEXT
   "Allosteric interaction with elevated intracellular AMP, which acts to inhibit dephosphorylation of AMPK (XREF_BIBR; XREF_BIBR), and phosphorylation at Thr 172 by the protein kinase LKB1 are necessary for AMPK activation under conditions of bioenergetic stress (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "AMPK") (:REACH ((("site" "Thr 172"))))))))
 ((:TEXT
   "LKB1 phosphorylates and activates a family of related downstream protein kinases in addition to AMPK (XREF_BIBR).")
  (MIS-MATCHES
   ("activates" (("controlled" "AMPK") (:REACH ((("controller" "LKB1"))))))))
 ((:TEXT
   "In contrast, treatment of cells with anti-miR-451 increased CAB39 levels and AMPK phosphorylation, supporting the hypothesis that miR-451 targets this pathway (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "CAB39") (:REACH ((("enzyme" "anti-miR-451"))))))))
 ((:TEXT
   "miR-451 did not affect Akt phosphorylation or the levels of CaMKK2, a calcium sensitive activator of AMPK (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CaMKK2") (:REACH)))
   ("activator"
    (("controlled" "AMPK") (:REACH ((("controller" "calcium"))))))))
 ((:TEXT
   "MARK protein kinases, which are involved in microtubule stability and share homology with AMPK, are also activated by LKB1 (XREF_BIBR).")
  (MIS-MATCHES
   ("activated" (("controlled" "MARK") (:REACH ((("controller" "LKB1"))))))))
 ((:TEXT
   "In the absence of exogenously added NRG1, the ectopically overexpressed ErbB3 failed to rescue the defect in cell proliferation, despite a partial restoration of both Y1289 phosphorylation of ErbB3 and T308 phosphorylation of AKT (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "ErbB3") (:REACH ((("site" "T308"))))))))
 ((:TEXT
   "The NRG1, ErbB3, and activated ErbB3 status, as well as the sensitivity to ErbB3 RNAi for a panel of ovarian cancer cell lines is shown in XREF_SUPPLEMENTARY.")
  (MIS-MATCHES
   ("activated" (("controlled" "ErbB3") (:REACH ((("controller" "NRG1"))))))))
 ((:TEXT
   "In addition, NRG1 exposure triggered a marked increase in AKT phosphorylation and activation, presumably through a PI3K activation step.")
  (MIS-MATCHES
   ("activation" (("controlled" "step") (:REACH ((("controller" "PI3K")))))
    (("controlled" "PI3K") (:REACH ((("controller" "step"))))))))
 ((:TEXT
   "ELK1 Is Required for Optimal HIF-2alpha Activation of the PTPRZ1 Promoter.")
  (MIS-MATCHES
   ("Activation"
    (("controlled" "PTPRZ1") (:REACH ((("controller" "HIF-2alpha"))))))))
 ((:TEXT
   "In another study, it was shown that HIF-2alpha cooperates with ETS1 transcription factor to activate the VE-Cadherin promoter XREF_BIBR.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "VE-Cadherin") (:REACH ((("controller" "HIF-2alpha"))))))))
 ((:TEXT
   "Also, PTPRZ1 has been shown to activate the beta-catenin pathway, which can promote tumorigenesis XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "beta-catenin") (:REACH ((("controller" "PTPRZ1"))))))))
 ((:TEXT
   "Using mass spectrometry, we found that cyclin D1 and Filamin A co-immunoprecipitate and that lower levels of cyclin D1 are associated with decreased phosphorylation of FLNa at serine 2152 and 1459.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "FLNa") (:REACH ((("site" "1459"))))))))
 ((:TEXT
   "Studies in cyclin D1 -/- mouse embryo fibroblasts revealed that cyclin D1 inhibits Rho activated kinase II and thrombospondin 1 to promote cell migration (XREF_BIBR).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "thrombospondin 1") (:REACH ((("controller" "Rho"))))))))
 ((:TEXT
   "We also found that lower levels of cyclin D1 are associated with decreased phosphorylation of FLNa at serine 2152 and 1459.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "FLNa") (:REACH ((("site" "1459"))))))))
 ((:TEXT
   "We therefore checked to see if FLNa phosphorylated at S2152 immunoprecipitates with endogenous cyclin D1 in MDA-MB-231 cells.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "cyclin") (:REACH ((("site" "S2152")) (("site" "D1"))))))))
 ((:TEXT
   "Also, HBx activates hypoxia inducible factor-1a, which promotes angiogenesis through activation of several angiogenic factors like vascular endothelial growth factor [XREF_BIBR].")
  (MIS-MATCHES
   ("activates"
    (("controlled" "hypoxia-inducible factor-1a")
     (:REACH ((("controller" "HBx"))))))))
 ((:TEXT
   "Therefore, we first investigated whether HSP90alpha expression is activated by HBx in cultured human liver cells.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "HSP90alpha expression")
     (:REACH ((("controller" "HBx"))))))))
 ((:TEXT
   "As a result, we found that HBx specifically activates the HSP90alpha promoter activity in a dose dependent manner, up to approx ~ 2.5-fold.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "HSP90alpha promoter") (:REACH ((("controller" "HBx"))))))))
 ((:TEXT
   "To investigate HBx activates c-Myc expression via the Ras/Raf/ERK1/2 pathway, we first detected the protein levels of c-Myc, ERK1/2 and phosphorylation of ERK-1/2 in HepG2-pcDNA3 and HepG2-pcDNA3-X cells by western blot analysis.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "ERK1/2") (:REACH))
    (("substrate" "c-Myc") (:REACH)))
   ("activates"
    (("controlled" "c-Myc expression") (:REACH ((("controller" "HBx"))))))))
 ((:TEXT
   "As shown in Figure XREF_FIG, the expression of c-Myc, ERK1/2 and phosphorylation of ERK-1/2 were increased in the HepG2-pcDNA3-X cells was compared with HepG2-pcDNA3 cells.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "c-Myc") (:REACH))
    (("substrate" "ERK1/2") (:REACH)))))
 ((:TEXT
   "Futhermore, the c-Myc, ERK1/2 and phosphorylation of ERK-1/2 were decreased in HepG2-pcDNA3-X cells treated with U0126, a known ERKs inhibitor.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "c-Myc") (:REACH))
    (("substrate" "ERK1/2") (:REACH)))))
 ((:TEXT
   "The findings of Teng et al [XREF_BIBR] that c-myc directly activates HSP90alpha transcription suggest that by induction of HSP90alpha c-myc may control the activity of multiple signal pathways involved in cellular transformation.")
  (MIS-MATCHES
   ("directly activates"
    (("controlled" "HSP90alpha transcription")
     (:REACH ((("controller" "c-myc"))))))
   ("c-myc directly activates HSP90alpha transcription"
    (("controlled" "c-myc directly activates HSP90alpha transcription")
     (:REACH ((("controller" "HSP90alpha"))))))))
 ((:TEXT
   "HBx is known to activate c-Myc transcriptional activity through ERK1/2.")
  (MIS-MATCHES
   ("activate" (("controlled" "c-Myc") (:REACH ((("controller" "HBx"))))))))
 ((:TEXT
   "In light of the unique ability of thiazolidinediones to mediate peroxisome proliferator activated receptor (PPAR) gamma independent activation of adenosine monophosphate activated protein kinase (AMPK) and suppression of interleukin (IL) -6 production, we conducted a screening of an in-house, thiazolidinedione based focused compound library to identify novel agents with these dual pharmacological activities.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "interleukin")
     (:REACH ((("controller" "adenosine monophosphate"))))))))
 ((:TEXT
   "Cell based assays pertinent to the activation status of AMPK and mammalian homolog of target of rapamycin (i.e., phosphorylation of AMPK and p70 ribosomal protein S6 kinase, respectively), and IL-6 and IL-6 receptor signaling (i.e., IL-6 production and signal transducer and activator of transcription 3 phosphorylation, respectively) in lipopolysaccharide (LPS)-stimulated THP-1 human macrophages were used to screen this compound library, which led to the identification of compound 53 (N-{4-[3-(1-Methylcyclohexylmethyl) -2,4-dioxo-thiazolidin-5-ylidene-methyl]-phenyl}-4-nitro-3-trifluoromethyl-benzenesulfonamide) as the lead agent.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p70") (:REACH))
    (("substrate" "AMPK") (:REACH)))))
 ((:TEXT
   "Cell based assays pertinent to the activation status of AMPK and mTOR [i.e., phosphorylation of AMPK and p70 ribosomal protein S6 kinase (p70S6K), respectively] and IL-6 and IL-6 receptor signaling [i.e., IL-6 production and signal transducer and activator of transcription 3 (Stat3) phosphorylation, respectively] in lipopolysaccharide (LPS)-stimulated THP-1 macrophages were used to screen this compound library via Western blotting and enzyme linked immunosorbent assay (ELISA) (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p70") (:REACH))
    (("substrate" "AMPK") (:REACH)))))
 ((:TEXT
   "For example, a recent study demonstrates that AICAR was effective in suppressing the growth of EGFR activated glioblastoma cells by inhibiting cholesterol and fatty acid biosynthesis.")
  (MIS-MATCHES
   ("activated" (("controlled" "acid") (:REACH ((("controller" "EGFR")))))
    (("controlled" "cholesterol") (:REACH ((("controller" "EGFR")))))
    (("controlled" "biosynthesis") (:REACH ((("controller" "EGFR"))))))))
 ((:TEXT
   "After 30 minutes, phosphorylation of S6 was dramatically decreased in a dose dependent manner in both cell lines at concentrations consistent with the IC50 determined in vitro.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "These results were observed in a variety of different mammalian cell lines and were independent of SIRT1, since treatment of either SIRT1-/- or wildtype MEFs with resveratrol resulted in a similar decrease in S6 phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "It is interesting to note that the doses required to inhibit phosphorylation of S6 were significantly higher in MEFs than those in other lines.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Expression and phosphorylation of EGFR and MET correlate in multiple malignancies (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "EGFR") (:REACH ((("site" "MET"))))))))
 ((:TEXT
   "At the nuclear level, EGFR interacts with STAT3 to activate expression of iNOS gene in carcinomas of breast and epidermoid (XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "expression of iNOS") (:REACH ((("controller" NIL))))))))
 ((:TEXT
   "Since STAT3CA is constitutively activated independent of EGF stimulation, we found EGF to modestly enhance (1.3-fold) the ability of EGFR and STAT3CA co-expression to activate the COX-2 promoter (data not shown).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "COX-2")
     (:REACH ((("controller" "EGFR")) (("controller" "STAT3CA"))))))))
 ((:TEXT
   "These findings are in line with several studies reporting that EGFRvIII preferentially activates the PI-3K and Akt signaling axis over the STAT3 and Ras and MAPK downstream signaling modules (XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES
   ("activates" (("controlled" "PI-3K") (:REACH ((("controller" "EGFRvIII")))))
    (("controlled" "Akt") (:REACH ((("controller" "EGFRvIII"))))))))
 ((:TEXT
   "Interestingly, a previous report showed that nuclear HER2 binds to and activates the human COX-2 gene promoter, leading to its transcriptional activation in breast cancer cells (XREF_BIBR).")
  (MIS-MATCHES
   ("activates" (("controlled" "COX-2") (:REACH ((("controller" "HER2"))))))))
 ((:TEXT
   "Furthermore, our results indicate that nuclear EGFR and activated STAT3 cooperate synergistically to activate the COX-2 gene activity.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "COX-2")
     (:REACH ((("controller" "EGFR")) (("controller" "STAT3"))))))))
 ((:TEXT
   "This synergy may not apply to nuclear HER2 mediated COX-2 gene activation, given the fact that the HAS motif (5 '-ATAAACTTCAAATTTCAGTA-3 ') does not appear to contain a putative STAT3 binding site (TT-N (4-6) -AA-3 ') and STAT3 is therefore unlikely to activate the COX-2 promoter through binding to HAS.")
  (MIS-MATCHES
   ("activate" (("controlled" "COX-2") (:REACH ((("controller" "STAT3"))))))))
 ((:TEXT
   "IR induces DSBs that lead to activation of the protein kinase activity of ATM and phosphorylation of multiple downstream target proteins including structural maintenance of chromosomes-1 (SMC-1) and KRAB associated protein (KAP-1), which in turn leads to cell cycle checkpoint arrest, DNA repair or cell death (XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "KRAB") (:REACH))
    (("substrate" "KAP-1") (:REACH)))))
 ((:TEXT
   "Similarly, IR induced phosphorylation of SMC-1 (Ser 957) and KAP-1 (Ser 824) was highly ATM dependent (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "KAP-1")
     (:REACH
      ((("enzyme" "IR") ("site" "Ser-957"))
       (("enzyme" "IR") ("site" "Ser-824"))))))))
 ((:TEXT
   "Phosphorylation of SMC-1 (Ser 957 and Ser 966) as well as KAP-1 (Ser 824) was dramatically reduced in both Granta-519 and UPN2 cells compared to HBL-2, JVM-2, MAVER-1, UPN1 and Z138 (XREF_FIG and XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("Phosphorylation"
    (("substrate" "KAP-1") (:REACH ((("site" "Ser-824"))))))))
 ((:TEXT
   "Initiation of the G 2 / M checkpoint was examined using phosphorylation of histone H3 at serine 10 as a marker of entry into mitosis (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "histone H3")
     (:REACH ((("site" "serine")) (("site" "10"))))))))
 ((:TEXT
   "Our results showed that the loss in expression of cyclin D1/D3 inhibited proliferation and resulted in a decrease of the hyperphosphorylated and inactivated Rb in PDAC cells, consistent with the existing concept that D-cyclins drive proliferation in cancer cells [XREF_BIBR].")
  (MIS-MATCHES ("hyperphosphorylated" (("substrate" "Rb") (:REACH)))))
 ((:TEXT
   "Importantly, mutant AKT1 was shown to activate PI3K pathway signaling when overexpressed in NIH3T3 cells and to transform rodent fibroblasts and bone marrow cells (XREF_BIBR).")
  (MIS-MATCHES
   ("activate" (("controlled" "PI3K") (:REACH ((("controller" "AKT1"))))))))
 ((:TEXT
   "Additionally, we found that despite activating Akt under EGF-free conditions, mutant PIK3CA did not activate mTOR, as indicated by lack of phosphorylation of the mTOR target p70S6 Kinase (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "mTOR") (:REACH)))))
 ((:TEXT
   "Using physiologic EGF concentrations (0.2 ng/ml), PIK3CA mutant cells demonstrate p70S6 Kinase phosphorylation, a substrate of activated mTOR.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p70S6 Kinase") (:REACH)))))
 ((:TEXT
   "However, AKT1 E17K mutant cells do not have increased p70S6 Kinase phosphorylation, similar to parental and wild type control cells (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p70S6 Kinase") (:REACH)))))
 ((:TEXT
   "A previous study of primary human breast cancers found that cancers with AKT1 mutations or PTEN mutations and loss, displayed high levels of in vivo Akt, mTOR, and p70S6 Kinase phosphorylation, as compared to tumors with PIK3CA mutations (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p70S6 Kinase") (:REACH)))))
 ((:TEXT
   "Diacylglycerol has been shown to activate the protein kinase C-MAP kinase pathway (XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "C-MAP kinase")
     (:REACH ((("controller" "Diacylglycerol"))))))))
 ((:TEXT
   "Since p300 can bind and acetylate p53 to activate p21 Waf1 and CIP1 expression during DNA damage and p300 and p53 are required for p21 Waf1 and CIP1 transcription, we studied the ability of p300 to bind p53 response elements in differentiating cells by using chromatin immunoprecipitations.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "CIP1  expression") (:REACH ((("controller" NIL))))))))

 ((:TEXT
   "Our phosphorylation data is also consistent with what others have shown following resistance exercise although we report larger increases in mTOR phosphorylation and eEF2 dephosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "eEF2") (:REACH)))))
 ((:TEXT
   "In contrast, ATP and ADP interact with four different P2Y receptors and can also activate Gi protein, an inhibitor of AC, via binding to P2Y13 (XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "P2Y13")
     (:REACH ((("controller" "ATP")) (("controller" "ADP")))))
    (("controlled" "Gi")
     (:REACH ((("controller" "ATP")) (("controller" "ADP"))))))))

 ((:TEXT
   "However, overexpression of Rheb activates mTORC1 signaling even in the absence of amino acid stimulated mTORC1 translocation (XREF_BIBR), suggesting that the localization of GFP-Rheb may not mimic that of endogenous Rheb.")
  (MIS-MATCHES
   ("activates" (("controlled" "mTORC1") (:REACH ((("controller" "Rheb"))))))))
 ((:TEXT
   "CDK inhibitory proteins such as p21 Cip1 and Waf1, p27 Kip1 and p16 INK4A inhibit CDKs activity thus lead to hypo phosphorylation of pRb and inactivation of E2F1, which in turn causes cell cycle arrest at G0/G1 phase.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "E2F1") (:REACH)))))
 ((:TEXT
   "Using estrogen responsive MCF-7 cells as a model we have demonstrated that K18 modulates both estrogen activation of ERalpha target genes and cell cycle progression.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "ERalpha") (:REACH ((("controller" "estrogen")))))
    (("controlled" "cell cycle") (:REACH ((("controller" "estrogen"))))))))
 ((:TEXT
   "Our previous studies demonstrated that LRP16 is a coactivator of ERalpha in the nucleus and that knockdown of LRP16 in MCF-7 cells can significantly attenuate estradiol (E2)-stimulated ERalpha signaling [XREF_BIBR].")
  (MIS-MATCHES
   ("is a coactivator"
    (("controlled" "ERalpha") (:REACH ((("controller" "LRP16"))))))))
 ((:TEXT
   "In contrast, imatinib blocks the ability of endogenous or exogenous SCF to activate c-kit receptors, thus resulting in a profound inhibition of CSC growth.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "c-kit receptors")
     (:REACH ((("controller" "imatinib"))))))))
 ((:TEXT
   "As illustrated in XREF_FIG, we found that the treatment of these cells with VEGF also resulted in activation and phosphorylation of ERK and Akt, and furthermore, we found that the response was reduced in the presence of SU5416 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "ERK") (:REACH))
    (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "To test whether VEGF inducible activation of the Akt and/or the ERK pathways function in the chemotaxis response, we next cultured T cells with LY294002 (to inhibit Akt signaling) or PD98059 (to inhibit ERK signaling) prior to, and during, the chemotaxis assay.")
  (MIS-MATCHES
   ("activation" (("controlled" "ERK") (:REACH ((("controller" "VEGF"))))))))

 ((:TEXT
   "A major source of ROS in cells is the NADPH oxidase complex, which can be activated by Rac1 XREF_BIBR, XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activated" (("controlled" "NADPH") (:REACH ((("controller" "Rac1"))))))))
 ((:TEXT
   "Under conditions where GTP is in excess, such as in the cell, the end result is exchange of GDP for GTP, thereby activating the GTPase.")
  (MIS-MATCHES
   ("activating" (("controlled" "GTPase") (:REACH ((("controller" "GDP"))))))))
 ((:TEXT
   "Based on our results, we would predict that ROS may activate RhoA signaling in smooth muscle and in the endothelium, contributing to the massive increases in vascular permeability associated with ischemia-reperfusion injury.")
  (MIS-MATCHES
   ("activate" (("controlled" "RhoA") (:REACH ((("controller" "ROS"))))))))
 ((:TEXT
   "Specifically, high-intensity RAS signaling has been shown to activate senescence pathways in addition to MAPK signaling.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "senescence") (:REACH ((("controller" "RAS"))))))))
 ((:TEXT
   "SiHa cells, for example, lack Jagged1 activated Notch1 signalling (Veeraraghavalu et al, 2005), yet they exhibit RhoC activity, which may be regulated by another signalling pathway.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Notch1") (:REACH ((("controller" "Jagged1"))))))))
 ((:TEXT
   "Furthermore, CH11 dependent induction of the ASK1-JNK and p38 pathways was found to activate the transcription factors AP-1 and ATF-2, and FADD-caspase-8-Bid signalling, resulting in the translocation of both Bax and Bak proteins, and subsequently mitochondrial dysregulation that is characterized by the loss of mitochondrial membrane potential (Delta & Psi; m), cytochrome c release and cleavage of caspase-9, caspase-3 and PARP.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "transcription")
     (:REACH
      ((("controller" "ASK1-JNK")) (("controller" "CH11"))
       (("controller" "p38"))))))))
 ((:TEXT
   "Loss of the upstream Hippo component fat also results in activation of Egfr signaling XREF_BIBR.")
  (MIS-MATCHES
   ("results in activation"
    (("controlled" "Egfr") (:REACH ((("controller" "fat"))))))))
 ((:TEXT
   "KRAS mutation activates the RAS-RAF pathway as well as the PI3K-AKT pathway, leading to cellular growth and proliferation (XREF_BIBR).")
  (MIS-MATCHES
   ("activates" (("controlled" "PI3K-AKT") (:REACH ((("controller" "KRAS")))))
    (("controlled" "RAS-RAF") (:REACH ((("controller" "KRAS"))))))))
 ((:TEXT
   "We show that human intestinal epithelial cells infected with T. gondii elicit rapid MAPK phosphorylation, NF-kappaB nuclear translocation, and secretion of interleukin (IL)-8.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "NF-kappaB") (:REACH))
    (("substrate" "MAPK") (:REACH)))))
 ((:TEXT
   "Unlike colon cell lines, T. gondii infection of Henle 407 cells induced phosphorylation of both ERK1/2 and p38 MAPKs by 15 minutes (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p38 MAPKs") (:REACH))
    (("substrate" "ERK1/2") (:REACH)))))
 ((:TEXT
   "The PI-3 kinase inhibitor wortmannin completely blocked T. gondii induced phosphorylation of Akt, but only slightly reduced the phosphorylation of ERK1/2 and p38 at 15 minutes and had no detectable effect on ERK1/2 at 60 minutes (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "ERK1/2") (:REACH ((("enzyme" "PI-3"))))))))
 ((:TEXT
   "Upon T. gondii infection, cells deficient in MyD88 had a significantly reduced level of ERK1/2 phosphorylation, and a slightly reduced level of p38 phosphorylation, compared to control cells (XREF_FIG and data not shown).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "ERK1/2") (:REACH))
    (("substrate" "p38") (:REACH)))))
 ((:TEXT
   "XREF_BIBR - XREF_BIBR Conceivably, alterating stem cell and cell cycle activators such as Wnt and beta-catenin, Hedgehog, Notch and TGFbeta signaling systems or targets such as beta-catenin, h-TERT, CDKs, Myb or c-MYC could expedite tumorigenesis or conversely, by specifically targeting these proteins, serve as a powerful cancer-prevention tool.")
  (MIS-MATCHES
   ("activators"
    (("controlled" "cell cycle")
     (:REACH
      ((("controller" "Notch")) (("controller" "TGFbeta"))
       (("controller" "Wnt")) (("controller" "beta-catenin"))))))))
 ((:TEXT
   "XREF_BIBR, XREF_BIBR Among the 19 members of the Wnt family, Wnt-1, -2, -3, -3 a and 10b are ligands for the canonical Wnt pathway, which activates beta-catenin and TCF-mediated transcription and induces transformation of mammary epithelial cells.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "transcription") (:REACH ((("controller" "Wnt"))))))))
 ((:TEXT
   "90 The restoration of SOCS-1 function in cells with methylation silenced SOCS-1 and constitutively activated JAK2 activity retards the anchorage independent growth of cells.")
  (MIS-MATCHES
   ("activated" (("controlled" "JAK2") (:REACH ((("controller" "SOCS-1"))))))))
 ((:TEXT
   "Parathyroid hormone (PTH) and PTH related protein (PTHrP) activate one single receptor (PTH1R) which mediates catabolic and anabolic actions in bone.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "single receptor")
     (:REACH
      ((("controller" "Parathyroid hormone")) (("controller" "PTHrP"))
       (("controller" "PTH"))))))))
 ((:TEXT
   "In contrast, MKP-1-rich lysate incubated with an unrelated antibody, anti JunB, caused dephosphorylation of the pERK1/2 rich lysate (XREF_FIG, lanes 7 and 8); the presence of MKP-1 was confirmed in the JunB immune depleted lysate (XREF_FIG, lane 3).")
  (MIS-MATCHES
   ("dephosphorylation" (("substrate" "pERK1/2-rich lysate") (:REACH)))))
 ((:TEXT
   "Activation occurs through the reversible phosphorylation of both threonine and tyrosine residues of the TXY motif in the catalytic domain by upstream kinases (MEKs) [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "TXY motif")
     (:REACH ((("site" "tyrosine residues")) (("site" "threonine"))))))))
 ((:TEXT
   "One possible mechanism could be that, as osteoblasts begin to mature the level of basal MKP-1 increases, which dephosphorylates ERK, slows cell growth and promotes osteoblastic differentiation; such a mechanism is augmented by PTH1R.")
  (MIS-MATCHES
   ("dephosphorylates" (("substrate" "ERK") (:REACH ((("enzyme" "MKP-1"))))))))
 ((:TEXT
   "Phosphorylation has been described for the other two members of the sorbin homology family, vinexin and ArgBP2, but no data exist about the putative phosphorylation of CAP.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "Phosphorylation of CAP was not necessary for its localization to focal adhesions and stress fibers, but Tyr326Phe substitution alters the function of CAP during cell spreading.")
  (MIS-MATCHES ("Phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "This is the first demonstration of phosphorylation of CAP by any kinase.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "Our findings suggest that coordinated action of Src and Abl might regulate the function of CAP and reveal a functional role especially for the Src mediated Tyr phosphorylation of CAP in cell spreading.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "CAP") (:REACH ((("enzyme" "Src") ("site" "Tyr"))))))))
 ((:TEXT
   "Tyrosine phosphorylation of vinexin-alpha and ArgBP2 by c-Abl tyrosine kinase has previously been reported [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "ArgBP2")
     (:REACH ((("site" "tyrosine")) (("site" "Tyrosine")))))
    (("substrate" "vinexin-alpha")
     (:REACH ((("site" "Tyrosine")) (("site" "tyrosine"))))))))
 ((:TEXT
   "However, no data are available if CAP is also phosphorylated by c-Abl and how the putative phosphorylation regulates the function of CAP.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "CAP") (:REACH ((("enzyme" "c-Abl"))))))
   ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "In addition, the possibility that CAP might be phosphorylated by other Tyr kinases known to be important for the regulation of the actin cytoskeleton and cell adhesions, such as the Src family kinases, remains to be investigated.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "CAP") (:REACH ((("site" "Tyr"))))))))
 ((:TEXT
   "In addition, Tyr632 appears to contribute to the phosphorylation of CAP by Abl, whereas Src phosphorylates both Tyr326 and Tyr360.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CAP") (:REACH ((("enzyme" "Abl"))))))))
 ((:TEXT "CAP is Tyr phosphorylated in vanadate treated Hep3B cells.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "vanadate") (:REACH)))))
 ((:TEXT
   "To study if CAP is also phosphorylated in these cells, we immunoprecipitated endogenous CAP from cells stimulated with insulin or treated with vanadate.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CAP") (:REACH)))))
 ((:TEXT "CAP is phosphorylated by and interacts with c-Abl.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "Upon coexpression of Abl WT and PP, a high degree of Tyr phosphorylation of CAP was detected, whereas no phosphorylation was deteted in cells cotransfected with Abl KD.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CAP") (:REACH ((("site" "Tyr"))))))))
 ((:TEXT
   "The phosphorylation of CAP upon coexpression of Abl PP was higher than with Abl WT, despite the fact that the expression level of Abl PP was much lower than that of Abl WT.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "Having established that CAP is a substrate of Abl kinase, we studied the phosphorylation of CAP mutants containing substitutions in the SH3 domain region.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "Consistent with its inability to bind to Abl, CAP DeltaSH3 was phosphorylated very little upon Abl coexpression.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "These results would suggest that although functional SH3 domains are not necessary for the tyrosine phosphorylation of CAP by c-Abl, the C-terminal part of CAP is required for a productive interaction.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CAP") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "We then sought to identify the Tyr residues in CAP that would be phosphorylated by Abl.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "CAP") (:REACH ((("enzyme" "Abl"))))))))
 ((:TEXT "Phosphorylation of CAP upon coexpression of Abl was again analyzed.")
  (MIS-MATCHES ("Phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "The mutant Y326F was found to be phosphorylated at about equal level as the WT CAP, and Y632F showed a moderate reduction of phosphorylation (55% +/- 17% of WT level).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "These data suggest that Y360 is the main phosphorylation site, but Y632 also seems to contribute to the phosphorylation of CAP by Abl.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CAP") (:REACH ((("enzyme" "Abl"))))))))
 ((:TEXT "CAP is phosphorylated by c-Src.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "CAP") (:REACH ((("enzyme" "c-Src"))))))))
 ((:TEXT
   "Recombinant Src kinase was indeed capable of phosphorylating the purified CAP-GST protein in an in vitro phosphorylation assay, whereas inhibition of Src activity by means of PP2 completely abrogated CAP phosphorylation in the in vitro assay (Fig XREF_FIG) and severely impaired it in transfected cells.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CAP") (:REACH ((("enzyme" "Src"))))))))
 ((:TEXT
   "When cells were transfected with CAP-EGFP and Src kinase constructs (c-Src : WT Src, Y527F : constitutively active Src, Dead-Src : kinase-inactive Src), an increased phosphorylation of CAP variants was detected, correlating with the activity level of Src.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "As with c-Abl, phosphorylation of CAP by c-Src appears not to depend on functional SH3 domains since the SH3 domain mutants of CAP were found to be Tyr phosphorylated to a comparable level as the WT CAP.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CAP") (:REACH ((("enzyme" "c-Src"))))))))
 ((:TEXT "In these cells, no phosphorylation of CAP-EGFP could be detected.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP-EGFP") (:REACH)))))
 ((:TEXT
   "However, phosphorylation of CAP could be rescued upon coexpression of WT and constitutively active Src, but not of the kinase dead Src.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "Substitution Y632F showed no effect on the phosphorylation of CAP by Src (data not shown).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "Inhibition of Src activity in c-Abl transfected cells resulted in a reduction of CAP phosphorylation, whereas in Src transfected cells, no phosphorylation of CAP could be detected upon use of PP2.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "These results would imply that there is some cooperativity of CAP phosphorylation between c-Src and c-Abl.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "Although other members of the SoHo protein family have been shown to be phosphorylated by c-Abl [XREF_BIBR, XREF_BIBR], our report is the first demonstration of Tyr phosphorylation of CAP by any kinase.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CAP") (:REACH ((("site" "Tyr"))))))))
 ((:TEXT
   "We were not able to detect phosphorylated CAP in insulin treated Hep3B cells, whereas vanadate stimulation resulted in robust Tyr phosphorylation of CAP.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "CAP") (:REACH ((("enzyme" "vanadate") ("site" "Tyr"))))))))
 ((:TEXT
   "This might indicate that the phosphorylation of CAP during signaling is regulated by rapid dephosphorylation by phosphatases, and thus phosphorylation can only be detected upon inhibition of phosphatase activity by vanadate.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "It will be of interest to determine if CAP is phosphorylated in other cell types during signaling processes, and if so, which kinases and phosphatases mediate the phosphorylation and dephosphorylation.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "On the other hand, since phosphorylation of CAP was readily observed in cells coexpressing WT Abl and CAP, this might imply that binding of CAP to c-Abl could even increase the activity of the kinase which is under tight regulation in normal cells (see [XREF_BIBR] for review).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "We have here identified Tyr360 in CAP as a major phosphorylation site by c-Abl, although Tyr 632 also might contribute since its substitution in combination with the Y360F mutation reduced the phosphorylation of CAP to a very low level.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "If phosphorylation of Y326 by c-Src indeed plays a role in the regulation of cell spreading by CAP still needs to be clarified in more detail in future studies.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "c-Src") (:REACH ((("site" "Y326"))))))))
 ((:TEXT
   "As with Abl, the binding and phosphorylation of CAP by Src was severely compromized by deletion of the C-terminal SH3 region but not by mutations in the critical Trp residued in the SH3 domains of CAP.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "The main phosphorylation sites Y326 and Y360 do not reside in the SH3 region but more N-terminally to it, and thus the reduced phosphorylation of DeltaSH3 CAP by Src and Abl is unlikely to be simply due to deletion of phosphorylatable Tyr residues.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "CAP") (:REACH ((("enzyme" "Src")) (("enzyme" "Abl"))))))))
 ((:TEXT
   "In addition, mutation of six tyrosines within the SH3 domain region of CAP (Y527, Y587, Y592, Y632, Y678 and Y638) which all fit well to the consensus phosphorylation sequence of Src did not affect the phosphorylation of CAP by c-Src (our unpublished data).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "CAP") (:REACH ((("enzyme" "c-Src"))))))))
 ((:TEXT
   "However, the double mutant Y326F and Y360F showed a severely impaired phosphorylation by both Src and Abl, implicating that both kinases might actually cooperate to achieve the full degree of phosphorylation of CAP.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "It could be speculated that Src plays only an indirect role in the phosphorylation of CAP by facilitating Abl activation and thus increasing Abl mediated CAP phosphorylation.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "CAP") (:REACH ((("enzyme" "Abl")) (("enzyme" "Src"))))))))
 ((:TEXT
   "The details of the interplay between Src and Abl in the phosphorylation of CAP should be clarified in future studies in order to understand the role of phosphorylation in the regulation of the function of CAP.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CAP") (:REACH)))))
 ((:TEXT
   "Taken together, our results show that CAP is a direct substrate of both c-Abl and Src kinase which each phosphorylate CAP at least in one Tyr residue.")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "CAP") (:REACH ((("site" "Tyr"))))))))
 ((:TEXT
   "The SoHo proteins show a very similar localization pattern, share many binding partners and are all phosphorylated by c-Abl.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "proteins") (:REACH ((("enzyme" "c-Abl"))))))))
 ((:TEXT
   "Further work will also show how phosphorylation of CAP by Abl and Src contributes to its function.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "CAP") (:REACH ((("enzyme" "Src")) (("enzyme" "Abl"))))))))
 ((:TEXT
   "Immunoblots confirmed that Ras cells expressed elevated levels of the Ha-Ras protein and displayed activation of Ras proteins as determined by binding to a GST-Raf protein and phosphorylation of Erk, a downstream effector of Ras (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "GST-Raf protein") (:REACH)))))
 ((:TEXT
   "Oncogenic RAS also activates a DNA damage response in primary fibroblasts XREF_BIBR, XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "DNA damage response") (:REACH ((("controller" "RAS"))))))))
 ((:TEXT
   "Within this process is also embedded a positive feedback loop, wherein the Lats2 gene itself is directly transcriptionally activated by p53, leading to a gradual and continuous increase in Lats2 protein levels.")
  (MIS-MATCHES
   ("activated" (("controlled" "Lats2") (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "Overexpression of wild-type beta-catenin- and beta-catenin-S33Y constructs also activated the p65 subunit of NF-kappaB.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "NF-kappaB")
     (:REACH
      ((("controller" "beta-catenin-S33Y constructs"))
       (("controller" "wild-type beta-catenin-"))))))))
 ((:TEXT
   "Furthermore, in SYF mouse cells lacking Src, Yes and Fyn, EGF, PDGF-BB or FGF2 failed to stimulate Tyr phosphorylation of Tom1L1, in contrast to their ability to stimulate Tyr phosphorylation of Tom1L1 in NIH-3T3 mouse cells (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Tom1L1")
     (:REACH
      ((("enzyme" "FGF2") ("site" "Tyr"))
       (("enzyme" "PDGF-BB") ("site" "Tyr"))))))))
 ((:TEXT
   "As EGFR is about 180-200 kDa and is Tyr phosphorylated on EGF stimulation (XREF_SUPPLEMENTARY) (XREF_BIBR; XREF_BIBR), we probed the same blot with antibodies against EGFR and a similar pattern was observed (XREF_FIG, second panel).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "EGF") (:REACH)))))
 ((:TEXT
   "These results suggest that EGF stimulated the recruitment of cytosolic Tom1L1 onto the plasma membrane whereupon Tom1L1 was Tyr phosphorylated and complexed with EGFR.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "EGFR") (:REACH)))))
 ((:TEXT
   "We found that down-regulation of Chk1 in U2OS cells led to loss of viability, accumulation of tetraploid cells after mitotic failure and inability to activate the spindle checkpoint and arrest in mitosis after treatment with the microtubule destabilizing drug Noc.")
  (MIS-MATCHES
   ("activate" (("controlled" "mitosis") (:REACH ((("controller" "Chk1"))))))))
 ((:TEXT
   "It did so by phosphorylation of glycogen synthase kinase (GSK)-3betaS 9, which was completely blocked by AKT inhibition.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "glycogen synthase") (:REACH ((("enzyme" "AKT")))))
    (("substrate" "GSK)-3betaS 9") (:REACH ((("enzyme" "AKT"))))))))
 ((:TEXT
   "We have shown that AKT inhibition decreases monocyte migration (XREF_FIG and C) and phosphorylation of GSK-3betaS 9 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "GSK-3betaS 9") (:REACH ((("enzyme" "AKT"))))))))
 ((:TEXT
   "Whereas PAF activation increased GSK-3alpha and beta Ser9/21 phosphorylation moderately in ND (2.4 fold; data not shown), it dramatically increased (8.6 fold) GSK-3alpha and beta Ser9/21 phosphorylation in DM individuals.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "GSK-3alpha/beta Ser9/21") (:REACH ((("enzyme" "PAF"))))))))
 ((:TEXT
   "Based on this result, we decided to focus our attention on better defining the role of GSK on PAF activated monocyte signalling and functions in DM individuals.")
  (MIS-MATCHES
   ("activated" (("controlled" "DM") (:REACH ((("controller" "PAF"))))))))
 ((:TEXT
   "Activation of the PI3K Pathway in Cancer through Inhibition of PTEN by Exchange Factor P-REX2a.")
  (MIS-MATCHES
   ("Activation"
    (("controlled" "PI3K") (:REACH ((("controller" "Factor P-REX2a"))))))))
 ((:TEXT
   "The PTEN protein dephosphorylates phosphatidylinositol-3,4,5-trisphosphate (PIP3), the critical lipid second messenger generated by phosphoinositide 3-kinase (PI3K) upon stimulation of cells by external mitogens (XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES
   ("dephosphorylates"
    (("substrate" "phosphatidylinositol-3,4,5-trisphosphate")
     (:REACH ((("enzyme" "PTEN"))))))))
 ((:TEXT
   "8-CPT-INDUCED INCREASE IN PHOSPHORYLATION OF S6K, 4EBP-1, AND eIF4E, 4EBP1, RSK, AND MNK1 IN 1-LN CELLS STIMULATED WITH 8-CPT.")
  (MIS-MATCHES
   ("PHOSPHORYLATION"
    (("substrate" "4EBP-1")
     (:REACH ((("enzyme" "eIF4E")) (("enzyme" "MNK1")) (("enzyme" "RSK"))))))))
 ((:TEXT
   "mTOR C1 controls protein synthesis via phosphorylation of S6 kinase and eIF4E binding protein (4EBP-1), the two key regulators of translation initiation.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "4EBP-1") (:REACH))
    (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Under normal conditions, BRCA1 interacts with STAT1 to activate the transcription of IFN-gamma target genes (Ouchi et al, 2000).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "transcription of IFN-gamma")
     (:REACH ((("controller" NIL))))))))
 ((:TEXT
   "Furthermore, we determine that depletion of endogenous UNG2, following RNA interference, promotes Tat mediated activation of HIV-1 LTR promoter.")
  (MIS-MATCHES
   ("activation" (("controlled" "LTR") (:REACH ((("controller" "Tat"))))))))
 ((:TEXT
   "Thus, PKCalpha is able to phosphorylate all three amino acids (S1221, T1226 and S1236) within the PBR of p190A.")
  (MIS-MATCHES ("phosphorylate" (("substrate" "PBR") (:REACH)))))
 ((:TEXT
   "Next, we wanted to determine whether phosphorylation of all three PKC sites is required for regulation of lipid binding and substrate preference of p190A or whether there is any difference in the contribution of the individual sites.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PKC sites") (:REACH)))))
 ((:TEXT
   "In contrast, the S1236A mutant protein behaved like the wild-type protein : phosphorylation by PKCalpha prevented its lipid binding (XREF_FIG) and reversed the effect of PS on its GAP activity (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PS") (:REACH)))))
 ((:TEXT
   "The levels of bioluminescent signals were well correlated with those of endogenous p16 Ink4a expression as well as other senescence markers such as senescence associated (SA) beta-galactosidase (beta-gal) activity (XREF_BIBR) and dephosphorylation of pRb (XREF_FIG; XREF_BIBR), indicating that oncogenic Ras signaling derived from the endogenous H-ras gene indeed provokes p16 Ink4a expression accompanied by senescence cell cycle arrest in vivo.")
  (MIS-MATCHES ("dephosphorylation" (("substrate" "pRb") (:REACH)))))
 ((:TEXT
   "It is also interesting to note that oncogenic Ras signaling is shown to activate the DNMT1 gene promoter (XREF_BIBR).")
  (MIS-MATCHES
   ("activate" (("controlled" "DNMT1") (:REACH ((("controller" "Ras"))))))))
 ((:TEXT
   "Because the p53 tumor suppressor is known to be activated immediately after detection of DNA damage, preventing proliferation of damaged cells (XREF_BIBR; XREF_BIBR), we wondered whether p53 might have some influence over the DDR pathway activating p16 Ink4a gene expression in vivo.")
  (MIS-MATCHES
   ("activating"
    (("controlled" "p16 Ink4a  gene expression")
     (:REACH ((("controller" "DDR"))))))))
 ((:TEXT
   "Because Ras signaling is known to activate the DNMT1 gene promoter (XREF_BIBR), it is most likely that the induction of DNMT1 in early papillomas is a direct effect of oncogenic Ras signaling (XREF_FIG).")
  (MIS-MATCHES
   ("activate" (("controlled" "DNMT1") (:REACH ((("controller" "Ras"))))))))
 ((:TEXT
   "Indeed, the DDR pathway activating p16 Ink4a gene expression was provoked in the thymus of nearly all of the mice lacking p53 around 10-20 wk after birth (XREF_FIG).")
  (MIS-MATCHES
   ("activating"
    (("controlled" "p16 Ink4a  gene expression")
     (:REACH ((("controller" "DDR"))))))))
 ((:TEXT
   "XREF_BIBR Recently, HBxAg has been shown to up-regulate and stabilize beta-catenin, XREF_BIBR which in some tumors is activated by elevated levels of ErbB2.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "beta-catenin") (:REACH ((("controller" "ErbB2"))))))))
 ((:TEXT
   "Preliminary work herein showed that the accumulation of wild type beta-catenin in the presence of elevated ErbB-2 correlated with the activation of PI3K and Akt signaling (XREF_FIG), which has previously been documented to be activated by HBxAg and ErbB-2.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Akt")
     (:REACH ((("controller" "ErbB-2")) (("controller" "HBxAg")))))
    (("controlled" "PI3K")
     (:REACH ((("controller" "ErbB-2")) (("controller" "HBxAg"))))))))
 ((:TEXT
   "XREF_BIBR, XREF_BIBR, XREF_BIBR PI3K and Akt activity may also be stimulated by src, the latter of which is activated by HBxAg, early in tumor development.")
  (MIS-MATCHES
   ("activated" (("controlled" "src") (:REACH ((("controller" "HBxAg"))))))))
 ((:TEXT
   "In response to ligand, the TbetaRII receptors phosphorylate and activate the TbetaRI receptors, which then activate Smad2 and Smad3 through C-terminally phosphorylation.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "TbetaRI receptors")
     (:REACH ((("controller" "TbetaRII receptors"))))))))
 ((:TEXT
   "The best studied pathway to regulate Smad signaling is the Erk MAP kinase pathway, which is potently activated by growth factor receptors and Ras, and is upregulated in about a third of all cancers (XREF_BIBR).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Erk")
     (:REACH
      ((("controller" "Ras")) (("controller" "growth factor receptors")))))
    (("controlled" "MAP")
     (:REACH
      ((("controller" "growth factor receptors")) (("controller" "Ras"))))))))
 ((:TEXT
   "The Smad activities are also regulated by kinases other than the TGF-beta receptor kinases, most notably by Erk MAP kinases, which are activated in response to growth factors and phosphorylate the Smad linker segments (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylate"
    (("substrate" "Smad") (:REACH ((("enzyme" "MAP")) (("enzyme" "Erk"))))))))
 ((:TEXT
   "We now present evidence for a novel mode of regulation of TGF-beta signaling : the cell surface presentation of TbetaRI, but not TbetaRII, is downregulated by TACE mediated ectodomain shedding, which is activated by Erk MAP kinase signaling.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "TACE")
     (:REACH ((("controller" "Erk")) (("controller" "MAP"))))))))
 ((:TEXT
   "The ET A receptor activates G proteins of Gq/11 and G12/13, which results in the contractile and proliferation effects in VSMCs through activation of diverse signaling molecules such as phospholipase C (PLC), intracellular Ca 2+, protein kinase C (PKC), and extracellular signal regulated kinase 1 and 2 (ERK1/2).")
  (MIS-MATCHES
   ("activates" (("controlled" "Gq/11") (:REACH ((("controller" "ET")))))
    (("controlled" "G12/13") (:REACH ((("controller" "ET")))))
    (("controlled" "G proteins") (:REACH ((("controller" "ET"))))))))
 ((:TEXT
   "Cyclic AMP independent activation of PKA by ET-1 has been observed in rat aortic smooth muscle cells [XREF_BIBR].")
  (MIS-MATCHES
   ("activation"
    (("controlled" "Cyclic AMP") (:REACH ((("controller" "ET-1")))))
    (("controlled" "PKA") (:REACH ((("controller" "Cyclic AMP"))))))))
 ((:TEXT
   "In addition, increased phosphorylation of NF-H in the tail region was observed in SH-SY5Y cells following 5 day RA treatment [XREF_BIBR].")
  (MIS-MATCHES ("phosphorylation" (("substrate" "NF-H") (:REACH)))))
 ((:TEXT
   "Differentiation inducing agents are able to regulate the dynamics of microtubules through increased expression and phosphorylation of MAPs [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES ("phosphorylation" (("substrate" "MAPs") (:REACH)))))
 ((:TEXT
   "For example, the integrin signaling pathway has been shown to be up-regulated during RA induced differentiation processes, resulting in activation of cyclin dependent kinase 5 that is required for enhanced expression and phosphorylation of NF-H as well as neurite outgrowth [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES ("phosphorylation" (("substrate" "NF-H") (:REACH)))))
 ((:TEXT
   "This hypothesis is supported by the observation that, in human NSCLC tumor specimens, high 5p13 copy number was associated with increased mTOR expression and elevated phosphorylation of the mTOR substrate, S6 Kinase (S6K) by AQUA (R) quantitative immunofluorescence XREF_BIBR (XREF_FIG and XREF_SUPPLEMENTARY).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT "GOLPH3 activates mTOR signaling.")
  (MIS-MATCHES
   ("activates" (("controlled" "mTOR") (:REACH ((("controller" "GOLPH3"))))))))
 ((:TEXT
   "To test the hypothesis that GOLPH3 activates mTOR signaling, we first examined the biological consequences of GOLPH3 modulation.")
  (MIS-MATCHES
   ("activates" (("controlled" "mTOR") (:REACH ((("controller" "GOLPH3"))))))))
 ((:TEXT
   "Collectively, these data provided strong biochemical evidence that GOLPH3 activates mTOR signaling through phosphorylation of both mTORC1- and mTORC2 specific substrates.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "mTORC2") (:REACH))
    (("substrate" "mTORC1-") (:REACH)))
   ("activates" (("controlled" "mTOR") (:REACH ((("controller" "GOLPH3"))))))))
 ((:TEXT
   "OA inhibits serine/threonine specific protein phosphatases, including protein phosphatases 1, 2A, and PP3 XREF_BIBR and activates cellular Erk1/2, JNK and p38 MAPK signaling pathways and AP-1 transcription factors XREF_BIBR - XREF_BIBR in addition to activating Akt-1, a pro survival serine threonine kinase XREF_BIBR.")
  (MIS-MATCHES
   ("activates" (("controlled" "p38 MAPK") (:REACH ((("controller" "OA")))))
    (("controlled" "JNK") (:REACH ((("controller" "OA")))))
    (("controlled" "transcription") (:REACH ((("controller" "OA")))))
    (("controlled" "Erk1/2") (:REACH ((("controller" "OA"))))))))
 ((:TEXT
   "Plk1 depletion or inhibition prevents accumulation of GCP-WD at mitotic centrosomes, but GCP-WD mutants that are defective in Plk1 binding and -phosphorylation still accumulate at mitotic centrosomes and recruit gamma-tubulin.")
  (MIS-MATCHES ("-phosphorylation" (("substrate" "Plk1") (:REACH)))))
 ((:TEXT
   "The efficient recognition and phosphorylation of Plk1 substrates requires binding of the polo box domain of the kinase to phosphopeptide motifs (consensus S-pS and pT-P) on the surface of the substrates XREF_BIBR, XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "polo") (:REACH)))))
 ((:TEXT
   "Serine 418 and adjacent residues do not match the consensus of a polo box docking site, however phosphorylation of serine 418 might trigger subsequent phosphorylation of a polo box binding site elsewhere in the molecule, which would prime it for Plk1 binding.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "polo") (:REACH)))))
 ((:TEXT
   "However, our results for the T557A mutant, which is defective in Plk1 binding and phosphorylation but does not show any localization defects, suggest that regulation of GCP-WD by Plk1 is not essential for spindle localization of gammaTuRCs.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Plk1") (:REACH)))))
 ((:TEXT
   "Plk1 and the Cep215 homolog Cnn were identified as the genes with the strongest impact on centrosome maturation and Cnn was shown to be phosphorylated in a Plk1 dependent manner XREF_BIBR.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "Plk1") (:REACH)))))
 ((:TEXT
   "To determine how KiSS1 affects TNFalpha activated tumor cell migration and invasion, we performed wound healing assays.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "invasion") (:REACH ((("controller" "TNFalpha")))))
    (("controlled" "cell migration") (:REACH ((("controller" "TNFalpha"))))))))
 ((:TEXT
   "In the TNFalpha induced NF-kappaB pathway, TNFalpha receptor signaling complex mediates phosphorylation of IKKs [XREF_BIBR; XREF_BIBR; XREF_BIBR].")
  (MIS-MATCHES ("phosphorylation" (("substrate" "IKKs") (:REACH)))))
 ((:TEXT
   "We determined that EGFR and HER2 existed within the nucleus, and that nuclear EGFR and HER2 bind to and activate the TS gene promoter.")
  (MIS-MATCHES
   ("activate" (("controlled" "TS") (:REACH ((("controller" NIL))))))))
 ((:TEXT
   "Lapatinib effectively inactivated phosphorylated-EGFR and -HER2 at the same doses as used in XREF_FIG (XREF_FIG).")
  (MIS-MATCHES
   ("inactivated"
    (("controlled" "-HER2") (:REACH ((("controller" "Lapatinib")))))
    (("controlled" "phosphorylated-EGFR")
     (:REACH ((("controller" "Lapatinib"))))))))
 ((:TEXT
   "Collectively, these results reveal that nuclear EGFR and HER2 activate TS gene transcription via binding to the TS promoter, and that the TS promoter bound EGFR and HER2 are inhibited by lapatinib, ultimately resulting in the downregulation of TS.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "TS gene transcription")
     (:REACH ((("controller" "EGFR")) (("controller" "HER2"))))))
   ("EGFR and HER2 activate TS gene transcription"
    (("controlled" "EGFR and HER2 activate TS gene transcription")
     (:REACH ((("controller" "TS"))))))
   ("HER2 activate TS gene transcription"
    (("controlled" "HER2 activate TS gene transcription")
     (:REACH ((("controller" "TS"))))))))
 ((:TEXT
   "As a mechanism, we have determined, for the first time, that nuclear EGFR and HER2 activate TS gene transcription, and that EGFR and HER2 bound TS promoter activities are inhibited by lapatinib treatment.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "TS gene transcription")
     (:REACH ((("controller" "HER2")) (("controller" "EGFR"))))))
   ("EGFR and HER2 activate TS gene transcription"
    (("controlled" "EGFR and HER2 activate TS gene transcription")
     (:REACH ((("controller" "TS"))))))
   ("HER2 activate TS gene transcription"
    (("controlled" "HER2 activate TS gene transcription")
     (:REACH ((("controller" "TS"))))))))
 ((:TEXT
   "The formation of the FGF and FGFR complex activates the intracellular tyrosine kinase, which mediates signal transduction through the direct phosphorylation of adaptor proteins [XREF_BIBR].")
  (MIS-MATCHES
   ("FGF-FGFR complex activates the intracellular tyrosine"
    (NIL (:REACH ((("site" "tyrosine") ("theme" "FGF") ("theme" "FGFR"))))))))
 ((:TEXT
   "Studies in mice demonstrate that renal tumorigenesis is dependent on activation of the HIF-2alpha isoform rather than HIF-1alpha (XREF_BIBR - XREF_BIBR), suggesting that HIF-2alpha may be a renal oncogene and that these isoforms may not promote tumorigenesis in the same manner.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "HIF-2alpha isoform")
     (:REACH ((("controller" "HIF-1alpha ("))))))))
 ((:TEXT
   "Our laboratory previously demonstrated that exogenous A 1 adenosine receptor (AR) activation protects against renal IRI via upregulation and phosphorylation of heat shock protein 27 (HSP27).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "heat") (:REACH)))))
 ((:TEXT
   "PTEN phosphorylation at serine 380 (ser380) and threonines 382/383 (thr382/383) within its C-terminal tail strongly influences PTEN protein stability and its localization to the cell membrane.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PTEN") (:REACH ((("site" "ser380"))))))))
 ((:TEXT
   "Our findings demonstrate that Otub1 is expressed and GRAIL is degraded when naive CD4 T cells are productively activated to undergo proliferation.")
  (MIS-MATCHES
   ("productively activated"
    (("controlled" "proliferation") (:REACH ((("controller" "CD4"))))))))
 ((:TEXT
   "Although FGF receptors can activate different signal transduction pathways, the Ras/Raf/MAPK pathway appears to be of critical importance in mediating the effects of activated FGF receptors.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "signal transduction pathways")
     (:REACH ((("controller" "FGF")) (("controller" "FGF receptors"))))))))
 ((:TEXT
   "Thymidine kinase (TK) (EC.2.7.1.21) is an enzyme in the pyrimidine salvage pathway and catalyses the phosphorylation of thymidine to thymidine monophosphate (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "thymidine")
     (:REACH
      ((("enzyme" "Thymidine kinase")) (("enzyme" "TK"))
       (("enzyme" "EC"))))))))
 ((:TEXT
   "By unpaired t tests, we found an association between sensitivity to LY294002 and high levels of phosphorylation of S6 at both the Ser 235 and Ser 240 phosphorylation sites.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "S6")
     (:REACH ((("site" "Ser 235")) (("site" "Ser 240"))))))))
 ((:TEXT
   "Conversely, S6 can be activated in an Akt independent fashion through activation of S6K by PDK-1, as shown schematically in XREF_FIG.")
  (MIS-MATCHES
   ("activated" (("controlled" "S6") (:REACH ((("controller" "PDK-1"))))))))
 ((:TEXT
   "However, our data suggest that at the very least, expression and phosphorylation of PI3K pathway members should be assessed in specimens from melanoma patients treated with PI3K inhibitors.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PI3K") (:REACH)))))
 ((:TEXT
   "Future clinical trials using PI3K inhibitors for melanoma should stratify patients based on expression and phosphorylation of PI3K pathway members, particularly S6, with the goal of future patient selection based on these predictive biomarkers.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PI3K") (:REACH)))))
 ((:TEXT
   "The vitamin D 3 receptor (VDR) is a member of the nuclear receptor superfamily of ligand activated transcription factors and was first identified as a key player maintaining calcium and phosphate homeostasis [XREF_BIBR].")
  (MIS-MATCHES
   ("activated"
    (("controlled" "transcription") (:REACH ((("controller" "vitamin D"))))))))
 ((:TEXT
   "It has been reported that PEA-15 is phosphorylated by protein kinase Balpha and AKT1, which leads to stabilization of the protein [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "PEA-15") (:REACH ((("enzyme" "protein kinase Balpha"))))))))
 ((:TEXT
   "We investigated this up-regulation further and conclude from our experiments with different cell lines that vitamin D 3 leads to an increase in promoter activity of PEA-15 already after 3-6 hrs (XREF_FIG), and with a little delay to an increase in protein phosphorylation after 6 hrs (XREF_FIG), most likely via activation of AKT1, which is known to phosphorylate PEA-15 [XREF_BIBR].")
  (MIS-MATCHES ("phosphorylate" (("substrate" "PEA-15 [") (:REACH)))))
 ((:TEXT
   "Second, Sirt1 inhibition may inhibit FoxO binding and deacetylation either directly or via inhibition of p300 and CBP binding and deacetylation thereby activating FoxO mediated responses (such activation of caspases) leading to apoptosis of cancer cells.")
  (MIS-MATCHES
   ("activating"
    (("controlled" "caspases") (:REACH ((("controller" "FoxO"))))))
   ("activation"
    (("controlled" "caspases") (:REACH ((("controller" "FoxO"))))))))
 ((:TEXT
   "Quantitation of phosphopeptides and protein abundances revealed differential phosphorylation and activation of RSK isoforms, RSK1 and RSK2, which are each comprised of two tandem kinase domains separated by a linker region (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "RSK") (:REACH))
    (("substrate" "RSK1") (:REACH)) (("substrate" "RSK2") (:REACH)))))
 ((:TEXT
   "Phosphorylation of Tyr279/216 was significantly elevated in drug treated cells, suggesting that one or both forms of GSK3 was derepressed by inhibitor treatment (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES ("Phosphorylation" (("substrate" "Tyr279/216") (:REACH)))))
 ((:TEXT
   "Here, phosphorylation of RSK isoforms could be distinguished by combining protein spectral counts with phosphopeptide peak intensity measurements, from which preferential activation of RSK2 could be demonstrated.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "RSK") (:REACH)))))
 ((:TEXT "Rak Phosphorylates PTEN on Tyrosine Residue 336.")
  (MIS-MATCHES
   ("Phosphorylates"
    (("substrate" "PTEN") (:REACH ((("enzyme" "Rak") ("site" "336"))))))))
 ((:TEXT
   "Phosphorylation of Tyr 336 Residue by Rak is Required for Maintenance of PTEN Protein Stability.")
  (MIS-MATCHES
   ("Phosphorylation" (("substrate" "Rak") (:REACH ((("site" "Tyr 336"))))))))
 ((:TEXT
   "Consistent with the lack of phosphorylation by Rak, the association between Y336F-mutant PTEN and its E3 ligase, NEDD4-1 was significantly increased (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "E3") (:REACH ((("enzyme" "Rak"))))))))
 ((:TEXT
   "For example, Fyn was shown to phosphorylate the E3 ubiquitin ligase Itch and reduce its binding to and degradation of its substrate JunB (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "E3 ubiquitin ligase") (:REACH)))))
 ((:TEXT
   "Thus the regulatory mechanisms are similar except that Rak phosphorylates the substrate whereas Fyn phosphorylates the E3 ligase.")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "E3") (:REACH ((("enzyme" "Fyn"))))))))
 ((:TEXT
   "IkappaB kinases (IKKs) are activated upon stimulation of Toll like receptors and intracellular sensors such as RIG-I, MDA-5 and NOD1 & 2 by various pathogen associated molecular patterns (PAMPs) or proinflammatory cytokines such as TNF, leading to serine phosphorylation of IkappaBalpha and its subsequent proteasome mediated degradation, which is critical for NF-kappaB nuclear translocation (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "IkappaBalpha") (:REACH ((("site" "serine"))))))))
 ((:TEXT
   "However, with the exception of lymphoid tumors, where activating mutations of upstream IKK activators such as CARD11 have been identified (XREF_BIBR; XREF_BIBR), IKK is not often continuously activated in cultured cancer cells, but rather is inducible by proinflammatory stimuli.")
  (MIS-MATCHES
   ("activators" (("controlled" "IKK") (:REACH ((("controller" "CARD11"))))))))
 ((:TEXT
   "However, while TNFalpha induced phosphorylation of RelA was associated with an increase in P-IkappaBalpha, tumor factor induced RelA phosphorylation was associated with Stat3 activation but not with an increase in P-IkappaBalpha (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "RelA") (:REACH ((("enzyme" "TNFalpha"))))))))
 ((:TEXT
   "To determine whether Stat3 mediated RelA acetylation and nuclear retention observed in cancer cells was also operative in immune cells exposed to the tumor milieu, we tested whether Stat3 activity promoted RelA acetylation in DCs stimulated by the Stat3 activator IL-10, which is frequently elevated in cancer.")
  (MIS-MATCHES
   ("activator" (("controlled" "Stat3") (:REACH ((("controller" "IL-10")))))
    (("controlled" "IL-10") (:REACH ((("controller" "Stat3"))))))))
 ((:TEXT
   "While CD11b+ myeloid cells isolated from B16 tumors contained both phosphorylated and acetylated RelA, in vivo targeted functional deletion of Stat3 in the myeloid compartment diminished the level of both phospho- and acetylated RelA (XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "RelA") (:REACH)))))
 ((:TEXT
   "Crosstalk between Stat3 and NF-kappaB has been demonstrated at multiple levels, including activation of Stat3 by NF-kappaB regulated factors such as IL-6 (XREF_BIBR; XREF_BIBR) and Cox-2 (XREF_BIBR), possible inhibition of IKK activity in normal immune cells by Stat3 (XREF_BIBR), and nuclear translocation of unphosphorylated NF-kappaB by unphosphorylated Stat3 (XREF_BIBR).")
  (MIS-MATCHES ("unphosphorylated" (("substrate" "NF-kappaB") (:REACH)))))
 ((:TEXT
   "Because unphosphorylated Stat3 (Y705F) preferentially interacts with unphosphorylated RelA (XREF_BIBR), it is plausible that only phosphorylated Stat3 is able to interact with p300 and phosphorylated RelA efficiently, leading to RelA acetylation.")
  (MIS-MATCHES ("unphosphorylated" (("substrate" "Stat3") (:REACH)))))
 ((:TEXT
   "Although IKK activity is not constitutive, it is likely that periodic activation of IKK is required for NF-kappaB activity by facilitating its nuclear entry, while IL-6 production, which activates Stat3, is necessary to maintain oncogenic progression in such models, and in certain human cancers.")
  (MIS-MATCHES
   ("activates" (("controlled" "Stat3") (:REACH ((("controller" "IL-6"))))))))
 ((:TEXT
   "Levels of HSP27 protein and its phosphorylation in Hep3B, MHCC97L to MHCC97H cells with different metastatic potentials were determined by western blot analysis.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "HSP27") (:REACH)))))
 ((:TEXT
   "HSP27 protein and its phosphorylation increased in parallel with enhanced metastatic potentials of HCC cells.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "HSP27") (:REACH)))))
 ((:TEXT
   "To investigate the expression of HSP27 in Hep3B, MHCC97L and MHCC97H cells respectively with non-, high and higher metastatic potentials, we observed levels of HSP27 expression and its phosphorylation in total proteins of these HCC cells above through western blot analysis.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "HSP27") (:REACH)))))
 ((:TEXT
   "Moreover, it was shown that protein level of total IkappaBalpha increased 1.3-fold, but its phosphorylated level tended to slightly reduced (0.8-fold) after HSP27 knockdown in MHCC97H cells, compared with MOCK group cells.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "HSP27") (:REACH)))))
 ((:TEXT
   "Moreover, we confirmed that TNFalpha activated NF-kappaB in H4 astroglioma cells through the canonical IkappaB degradation pathway to trigger p65 nuclear translocation and DNA binding.")
  (MIS-MATCHES
   ("activated" (("controlled" "H4") (:REACH ((("controller" "TNFalpha"))))))))
 ((:TEXT
   "It is currently unclear how DYRK2 mediated phosphorylation of Katanin promotes its ubiquitination but it is possible that phosphorylation of Katanin leads to a conformational change which might expose some of the substrate residues for efficient ubiquitination by EDD.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Katanin") (:REACH ((("enzyme" "DYRK2"))))))))
 ((:TEXT
   "Abolishing lipid raft formation with methyl-beta-cyclodextrin (MbetaCD) (a cholesterol-depletion agent) inhibited several OxPAPC mediated effects including EC barrier function (XREF_FIG), Rac1 activation (XREF_FIG), phosphorylation of caveolin-1 and the downstream Rac1 effector, PAK1 (XREF_FIG), and actin cytoskeletal rearrangements (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Rac1") (:REACH)))))
 ((:TEXT
   "OxPAPC and S1P 1 Receptor Regulate Akt Phosphorylation and EC Barrier Enhancement.")
  (MIS-MATCHES ("Phosphorylation" (("substrate" "EC") (:REACH)))))
 ((:TEXT
   "Activation of Akt1 can occur through threonine phosphorylation (T 308) in the catalytic domain by PI3-kinase-dependent PDK-1 and by serine phosphorylation (S 473) in the hydrophobic motif by various kinases including mTOR.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PDK-1") (:REACH ((("site" "serine"))))))))
 ((:TEXT
   "XREF_BIBR, XREF_BIBR Indeed, OxPAPC attenuated Rho pathway of barrier disruption in pulmonary ECs subjected to thrombin and high-magnitude cyclic stretch in vitro, promoted Rac dependent barrier recovery, and markedly reduced lung barrier dysfunction in mice exposed to high tidal volume mechanical ventilation and Rho activator TRAP (thrombin receptor activating peptide) in vivo.")
  (MIS-MATCHES
   ("activator" (("controlled" "Rho") (:REACH ((("controller" "TRAP")))))
    (("controlled" "TRAP") (:REACH ((("controller" "Rho"))))))))
 ((:TEXT
   "In proliferating cells, activation by strong transcription activators such as c-Myc, Sp1, and E2Fs might permit transcription from the hTERT promoter despite repression by this chromatin domain.")
  (MIS-MATCHES
   ("activators"
    (("controlled" "transcription")
     (:REACH ((("controller" "c-Myc")) (("controller" "Sp1"))))))))
 ((:TEXT
   "Activation of the insulin or IGF-1 receptors induces tyrosine phosphorylation of insulin receptor substrates (IRSs), which recruit several signal intermediates, including phosphoinositide-3 kinase.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "insulin receptor")
     (:REACH
      ((("enzyme" "insulin") ("site" "tyrosine"))
       (("enzyme" "IGF-1 receptors") ("site" "tyrosine")))))
    (("substrate" "insulin")
     (:REACH
      ((("enzyme" "insulin") ("site" "tyrosine"))
       (("enzyme" "IGF-1 receptors") ("site" "tyrosine")))))
    (("substrate" "IRSs")
     (:REACH
      ((("enzyme" "IGF-1 receptors") ("site" "tyrosine"))
       (("enzyme" "insulin") ("site" "tyrosine"))))))))
 ((:TEXT
   "Phosphoinositide-3 kinase phosphorylates inositol phospholipids, which then activates 3 '-phosphoinositide-dependent kinase 1, which directly phosphorylates and activates p70 S6 kinase and protein kinase B (PKB) synergistically with mammalian target of rapamycin (mTOR) (XREF_BIBR XREF_BIBR - XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "inositol")
     (:REACH ((("enzyme" "Phosphoinositide-3 kinase")))))
    (("substrate" "mammalian target of rapamycin") (:REACH)))))
 ((:TEXT
   "For immunostaining of FLAG, phosphorylated S6, or Ki-67, after antigen retrieval by autoclave at 121degreesC for 15 min in 10 mmol/l sodium citrate (pH 6.0) and quenching of endogenous peroxidase with 3% H 2 O 2 for 10 min, the sections were incubated with the anti-FLAG antibody (DYKDDDDK Tag antibody; Cell Signaling), anti-phospho-S6 ribosomal protein (Ser235/236), or anti-Ki-67 antibody (Dako Japan).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "Ki-67") (:REACH))
    (("substrate" "antigen") (:REACH)) (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Because the mTORC1 pathway is regulated in a nutrient dependent manner, the ability of Rheb to activate the mTORC1 pathway is most easily visualized in nutrient depleted conditions in vitro.")
  (MIS-MATCHES
   ("activate" (("controlled" "mTORC1") (:REACH ((("controller" "Rheb"))))))))
 ((:TEXT
   "Phosphorylation of S6 (Ser235/236) was clearly higher in islets prepared from transgenic mice than in those prepared from wild-type littermates (XREF_FIG A).")
  (MIS-MATCHES ("Phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Serum stimulation also induced phosphorylation of S6 and 4EBP1, but the stimulation was still greater in transgenic mice than in wild-type mice (XREF_FIG D).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "S6") (:REACH))
    (("substrate" "4EBP1") (:REACH)))))
 ((:TEXT
   "Moreover, immunostaining of the pancreas sections with the anti-phospho-S6 antibody revealed an increase in S6 phosphorylation in the transgenic beta-cells.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Bax is expressed in nearly all cell types, and it is an important mediator of the intrinsic cell death pathway activated by DNA damage as well as other cellular stresses XREF_BIBR - XREF_BIBR; however, its mechanism of activation remains enigmatic.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "cell death") (:REACH ((("controller" "DNA damage"))))))))
 ((:TEXT
   "Additional gene expression analysis in an independent cDNA microarray dataset (N = 24) showed a negative correlation (R = -0.73, P < 0.0001) between the RPS6 and the VEGFR2 gene, which is consistent as the gene expression and phosphorylation of S6 is inversely regulated.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Here, the negative correlation of VEGFR2 and RPS6, is compatible with the finding that the phosphorylation of S6 is inversely regulated with its gene expression.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S6") (:REACH)))))
 ((:TEXT
   "Jak2 inhibition deactivates Lyn kinase through the SET-PP2A-SHP1 pathway, causing apoptosis in drug resistant cells from chronic myelogenous leukemia patients.")
  (MIS-MATCHES
   ("deactivates" (("controlled" "Lyn") (:REACH ((("controller" "Jak2"))))))))
 ((:TEXT
   "In this report, we have shown that Bcr-Abl does not directly activate expression of SET protein; rather Bcr-Abl activates Jak2, which in turn induces expression of SET, which then inhibits the PP2A-Shp1 phosphatase.")
  (MIS-MATCHES
   ("directly activate"
    (("controlled" "expression of SET")
     (:REACH ((("controller" "Bcr-Abl"))))))))
 ((:TEXT
   "Downstream targets of Jak2 were dephosphorylated in cells transfected with si-RNA specific for Lyn.")
  (MIS-MATCHES ("dephosphorylated" (("substrate" "Jak2") (:REACH)))))
 ((:TEXT
   "Thus, either Jak2 or an unknown tyrosine kinase downstream of Jak2 phosphorylates the YxxM sequence of Gab2.")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "Gab2")
     (:REACH ((("enzyme" "Jak2") ("site" "tyrosine"))))))))
 ((:TEXT
   "Increased phosphorylation of tyrosine 307 of PP2A was seen in Bcr-Abl+ cells over-expressing SET (XREF_BIBR), suggesting that PP2A is regulated by both SET expression and tyrosine phosphorylation caused by Jak2, which makes PP2A functionally inactive.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "SET") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "We also note that Akt is dephosphorylated and thus inactivated by serine phosphatase PP2A (XREF_BIBR), but PP2A remains in an inactive form in Bcr-Abl+ cells because of Jak2 induced expression of the PP2A inhibitor SET (XREF_FIG, panels a-e) (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("inactivated"
    (("controlled" "Akt is dephosphorylated")
     (:REACH ((("controller" "phosphatase")) (("controller" "PP2A"))))))))
 ((:TEXT
   "Regulation of IGF-IR promoter activity by BRCA1 in prostate cancer cells.")
  (MIS-MATCHES
   ("promoter activity"
    (("controlled" "IGF-IR promoter") (:REACH ((("controller" "BRCA1"))))))))
 ((:TEXT
   "Phosphorylation of the p53 TAD at Thr18 or Ser20 increases the KIX binding affinity.")
  (MIS-MATCHES
   ("Phosphorylation"
    (("substrate" "TAD") (:REACH ((("site" "Ser20")) (("site" "Thr18"))))))))
 ((:TEXT
   "Phosphorylation of the p53 TAD at Thr18 and/or Ser20 significantly enhances the affinity and specificity of the interaction with KIX.")
  (MIS-MATCHES
   ("Phosphorylation" (("substrate" "TAD") (:REACH ((("site" "Thr18"))))))))
 ((:TEXT
   "Phosphorylation of the p53 TAD at Thr18 results in a 5-fold increase in the binding affinity for the KIX domain relative to unphosphorylated p53 (13-61) (XREF_TABLE).")
  (MIS-MATCHES
   ("Phosphorylation" (("substrate" "TAD") (:REACH ((("site" "Thr18"))))))))
 ((:TEXT
   "Since simultaneous phosphorylation of Ser15 and Ser20, or Thr18 and Ser20 appears to have a synergistic role in activating p53 mediated apoptosis (XREF_BIBR - XREF_BIBR), we investigated binding of a doubly phosphorylated peptide (p53 (13-57) pT18pS20) to the KIX domain; this peptide binds with ~ 15-fold higher affinity than the unphosphorylated p53 TAD (XREF_TABLE).")
  (MIS-MATCHES ("unphosphorylated" (("substrate" "p53") (:REACH)))))
 ((:TEXT
   "The spin label experiments with the unphosphorylated p53 TAD showed that AD1 and AD2 motifs bind with comparable affinity in both the MLL and pKID and c-Myb sites of KIX, with just a slight preference of the AD1 subdomain for the MLL site.")
  (MIS-MATCHES ("unphosphorylated" (("substrate" "p53") (:REACH)))))
 ((:TEXT
   "Conversely, the N-terminal spin label causes extensive broadening of resonances corresponding to the MLL site (especially in the G2 helix), and much less broadening of cross peaks from the pKID and c-Myb site than does the N-terminal spin labeled unphosphorylated p53 TAD (Compare XREF_FIG in the region of the G2 and alpha3 helices, and XREF_FIG).")
  (MIS-MATCHES ("unphosphorylated" (("substrate" "p53") (:REACH)))))
 ((:TEXT
   "Based on the observed changes in K d and the increased specificity of the broadening effects of the spin labels, it is evident that phosphorylation of the p53 TAD in the AD1 region enhances the specificity of binding to the KIX domain as well as enhancing the affinity (XREF_TABLE).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "TAD") (:REACH)))))
 ((:TEXT
   "Phosphorylation of the TAD stabilizes p53 by inhibiting MDM2 mediated degradation, and enhances its transcriptional activity and ability to recruit CBP and p300 (XREF_BIBR - XREF_BIBR).")
  (MIS-MATCHES ("Phosphorylation" (("substrate" "TAD") (:REACH)))))
 ((:TEXT
   "Consistent with growing evidence that two-site phosphorylation at Thr18 and Ser20 plays a synergistic role in p53 activation (XREF_BIBR, XREF_BIBR), binding of a doubly phosphorylated peptide p53 (13-57) pT18pS20 to the KIX domain is enhanced 15-fold relative to the unphosphorylated TAD and the spin label data illustrated in XREF_FIG show that the interactions with KIX become significantly more specific.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "p53") (:REACH)))
   ("unphosphorylated" (("substrate" "TAD") (:REACH)))))
 ((:TEXT
   "The enhancement of binding affinity upon phosphorylation of the p53 TAD is more modest (5 - 15-fold, XREF_TABLE), depending on whether the TAD is phosphorylated at 1 or 2 sites).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "TAD") (:REACH)))
   ("phosphorylation" (("substrate" "TAD") (:REACH)))))
 ((:TEXT
   "Moreover, also Ku70 serin phosphorylation pattern was affected by IL-6 treatment, as shown by western blot analysis of cytoplasmic extracts co-immunoprecipitated with anti-Ku70 antibody and probed with anti-phosphoserin antibody (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "serin") (:REACH)))))
 ((:TEXT
   "The increased Ku70 fraction bound to Bax correlated to the Ku70 serin phosphorylated pattern raise (XREF_FIG).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "serin") (:REACH)))))
 ((:TEXT
   "Both PKD1 and PKD2 have been shown to activate the inducible transcription factor NF-kappaB [XREF_BIBR; XREF_BIBR], which is a sensor for actin re-organization [XREF_BIBR; XREF_BIBR; XREF_BIBR; XREF_BIBR].")
  (MIS-MATCHES
   ("activate"
    (("controlled" "transcription")
     (:REACH ((("controller" "PKD2")) (("controller" "PKD1"))))))))
 ((:TEXT
   "Further, tyrosine phosphorylation of PKD1 at a tyrosine residue (Y95) critical for its activation by other stimuli [XREF_BIBR] occurred after a Ca 2+ switch in HeLa and MCF-7 cells (XREF_FIG), indicating that PKD1 is active at the sites of actin re-organization, but not the nucleus.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "PKD1") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "We analyzed both PKD1 auto- and substrate phosphorylation in response to a calcium switch (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "PKD1") (:REACH)))))
 ((:TEXT
   "We found that after Ca 2+ depletion, PKD1 is phosphorylated at tyrosine residue Y95 and at the activation-loop serines S738 and S742 in HeLa and MCF-7 cells (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "PKD1")
     (:REACH
      ((("site" "tyrosine residue")) (("site" "S738")) (("site" "S742"))))))))
 ((:TEXT "RhoA ACTIVATES PKD1 VIA ROCK, SFK, AND nPKC.")
  (MIS-MATCHES
   ("ACTIVATES" (("controlled" "SFK") (:REACH ((("controller" "RhoA")))))
    (("controlled" "nPKC") (:REACH ((("controller" "RhoA"))))))))
 ((:TEXT
   "Pak kinases were first identified in screens for Rac and Cdc42 effectors and independently as a proteinase activated kinase [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("activated"
    (("controlled" "[") (:REACH ((("controller" "proteinase"))))))))
 ((:TEXT
   "Phosphorylation at this site alters the association of Pak1 with binding partners and/or substrates, affecting morphological changes such as postmitotic cell spreading in fibroblasts and microtubule dynamics in neurite outgrowth [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES ("Phosphorylation" (("substrate" "Pak1") (:REACH)))))
 ((:TEXT
   "PDK1 is able to activate Pak1 by direct phosphorylation of Thr423 [XREF_BIBR], and the adaptor proteins Nck and Grb2 bind proline rich regions near the N-terminus of Pak and can activate Pak by directing it to receptor tyrosine kinases at the cell membrane [XREF_BIBR - XREF_BIBR].")
  (MIS-MATCHES
   ("Grb2 bind proline-rich regions near the N-terminus of Pak and can activate Pak"
    (NIL (:REACH ((("theme" "Grb2") ("theme" "Pak"))))))
   ("Nck and Grb2 bind proline-rich regions near the N-terminus of Pak and can activate Pak"
    (NIL (:REACH ((("site" "proline") ("theme" "Nck") ("theme" "Pak"))))))))
 ((:TEXT
   "Pak1 phosphorylates TCoB on Ser65 and Ser128 and co-localizes with TCoB on newly polymerized microtubules and centrosomes.")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "TCoB")
     (:REACH
      ((("enzyme" "Pak1") ("site" "Ser128")) (("site" "Ser65"))
       (("site" "Ser128")) (("enzyme" "Pak1") ("site" "Ser65"))))))))
 ((:TEXT
   "Pak1 co-localizes with Histone H3 on condensing chromosomes and phosphorylates Histone H3 on Ser10, an event that is required for the initiation of chromosome condensation [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "Histone H3")
     (:REACH ((("enzyme" "Pak1") ("site" "Ser10"))))))))
 ((:TEXT
   "Activated Pak subsequently activates Aurora-A via phosphorylation on Thr288 and Ser342 [XREF_BIBR].")
  (MIS-MATCHES
   ("Activated"
    (("controlled" "Pak") (:REACH ((("controller" "Aurora-A"))))))))
 ((:TEXT
   "Pak phosphorylates two mediators of the MAP kinase pathway, MEK1 and Raf1, at Ser298 and at Ser338, respectively [XREF_BIBR - XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "MEK1")
     (:REACH
      ((("enzyme" "Pak") ("site" "Ser298"))
       (("enzyme" "Pak") ("site" "Ser338")))))
    (("substrate" "Raf1")
     (:REACH
      ((("enzyme" "Pak") ("site" "Ser338"))
       (("enzyme" "Pak") ("site" "Ser298")))))
    (("substrate" "MAP")
     (:REACH
      ((("enzyme" "Pak") ("site" "Ser338"))
       (("enzyme" "Pak") ("site" "Ser298"))))))))
 ((:TEXT
   "Active LIMK then phosphorylates the actin binding protein cofilin and inhibits its activity.")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "actin") (:REACH ((("enzyme" "LIMK"))))))))
 ((:TEXT
   "Pak1 also phosphorylates the p41-ARC subunit of the ARP2/3, a protein complex controlling actin nucleation and branching.")
  (MIS-MATCHES
   ("phosphorylates" (("substrate" "ARP2/3") (:REACH ((("enzyme" "Pak1"))))))))
 ((:TEXT
   "Pak1 is one of many kinases that phosphorylate estrogen receptor alpha (ERalpha).")
  (MIS-MATCHES
   ("phosphorylate" (("substrate" "estrogen receptor") (:REACH))
    (("substrate" "alpha") (:REACH)))))
 ((:TEXT "Downstream signals of PI3 kinase activate Pak via Rac and Cdc42.")
  (MIS-MATCHES
   ("activate" (("controlled" "Pak") (:REACH ((("controller" "PI3"))))))))
 ((:TEXT
   "While NF1 activates Pak through effector pathways, NF2 interacts directly with Pak1.")
  (MIS-MATCHES
   ("activates" (("controlled" "Pak") (:REACH ((("controller" "NF1"))))))))
 ((:TEXT
   "This is because in the phosphorylated activated kinase domain of FGFR2 (PDB ID : 2PVF; ref.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "ID") (:REACH))
    (("substrate" "FGFR2") (:REACH)))))
 ((:TEXT
   "To determine whether the JAK2 and STAT signaling pathway can be altered with normal JAK2, we analyzed by Western blot the level of expression and phosphorylation of Jak2, Stat1, Stat3, and Stat5 in the BM of the AME positive and control mice.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Jak2") (:REACH)))))
 ((:TEXT
   "This alteration involved the expression of Stat3, which was overall increased compared to the controls, and its phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Stat3") (:REACH)))))
 ((:TEXT "AME activates the murine Stat3 promoter.")
  (MIS-MATCHES
   ("activates" (("controlled" "Stat3") (:REACH ((("controller" "AME"))))))))
 ((:TEXT
   "There are also reports suggesting that, in contrast to other Stats, Stat3 does not require Y705 phosphorylation and dimerization for nuclear import and retention (XREF_BIBR) or that unphosphorylated Stat3 activates transcription of a large subset of genes partially overlapping with the targets of P-Stat3 (XREF_BIBR).")
  (MIS-MATCHES
   ("activates"
    (("controlled" "transcription") (:REACH ((("controller" "Stat3"))))))))
 ((:TEXT
   "We also provide here initial results indicating that AME directly activates the Stat3 promoter.")
  (MIS-MATCHES
   ("directly activates"
    (("controlled" "Stat3") (:REACH ((("controller" "AME"))))))))
 ((:TEXT
   "In contrast, inhibition of ERbeta by ICI 182,780 activated this faithful component of DNA repair (XREF_FIG).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "DNA repair") (:REACH ((("controller" "ERbeta"))))))))
 ((:TEXT
   "These include enhanced radioresistance, which was found proportional to the IGF-IR protein level in mouse embryo fibroblasts and breast tumor cells (XREF_BIBR); enhanced DNA repair via the IGF-I activated p38 signaling pathway in response to UV mediated DNA damage (XREF_BIBR); and delayed UVB induced apoptosis via IGF-I-mediated activation of Akt, resulting in enhanced repair of DNA cyclobutane thymidine dimers (XREF_BIBR).")
  (MIS-MATCHES
   ("activated" (("controlled" "p38") (:REACH ((("controller" "IGF-I")))))
    (("controlled" "DNA damage") (:REACH ((("controller" "DNA repair"))))))))
 ((:TEXT
   "We also explored the hypothesis that phosphorylation might regulate the deacetylase activity of SIRT1, as it is known to do with other classes of protein deacetylases, such as HDAC1 and HDAC2 XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "SIRT1") (:REACH)))))
 ((:TEXT
   "Although we expected that phosphorylation by Cdk1, an M-phase kinase, would alter the percentage of Sirt1-/- ES cells in M-phase, there was no difference compared to Sirt1 +/+ ES cells (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ES") (:REACH)))))
 ((:TEXT
   "According to functional motif predictions obtained through ScanSite (http://scansite.mit.edu) XREF_BIBR, KinasePhos (http://kinasephos.mbc.nctu.edu.tw) XREF_BIBR, and Eukaryotic Linear Motifs (http://elm.eu.org) XREF_BIBR servers, the 13 phosphorylated residues of SIRT1 identified in this study match target motifs for ATM, CDK5, CK1, CK2, DNA-PK, ERK1, GSK3, IKK and MAPK, in addition to CDK1.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "SIRT1") (:REACH)))))
 ((:TEXT
   "EGF activates MAPK pathways and stimulates 1,25 (OH) 2 D 3 -induced CYP24 mRNA expression.")
  (MIS-MATCHES
   ("activates" (("controlled" "MAPK") (:REACH ((("controller" "EGF"))))))))
 ((:TEXT
   "Ets-1 mRNA, protein and phosphorylation state are lower in differentiated Caco-2 cells.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Ets-1 mRNA") (:REACH)))))
 ((:TEXT
   "Our data also suggest that ERK1/2 signaling on 1,25 (OH) 2 D 3 -mediated CYP24 gene regulation is through MED1 phosphorylation and the subsequent recruitment of RNA polymerase II to the CYP24 promoter.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "RNA polymerase II") (:REACH)))))
 ((:TEXT
   "This may recapitulate the view that FBPs are activators of c-myc in renal cancer.")
  (MIS-MATCHES
   ("are activators"
    (("controlled" "c-myc") (:REACH ((("controller" "FBPs"))))))))
 ((:TEXT
   "To determine whether PTP1B dephosphorylates IR autophosphorylation in vitro, we autophosphorylated the cytoplasmic domain of purified human IR (GST-IR) as follows : GST-IR was incubated for 90 minutes at 30degreesC at 0.05 microg and microL in 25 mM Tris, pH 7.5, 10 mM MgCl2, 0.5 mM EGTA, 0.5 mM dithiothreitol, and 0.1 mM ATP.")
  (MIS-MATCHES
   ("dephosphorylates" (("substrate" "IR") (:REACH ((("enzyme" "PTP1B"))))))))
 ((:TEXT
   "We previously showed that activation of the A1 adenosine receptor protected the kidney against ischemia-reperfusion injury by induction and phosphorylation of heat shock protein 27 (HSP27).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "heat") (:REACH)))))
 ((:TEXT
   "Remarkably, 1,25 (OH) 2 D 3 did not increase [Ca 2+] cyt (XREF_FIG) and did not activate RhoA (XREF_FIG), p38MAPK (XREF_FIG), or MSK1 (XREF_FIG) in VDR shRNA cells.")
  (MIS-MATCHES
   ("activate" (("controlled" "p38MAPK") (:REACH ((("controller" "OH")))))
    (("controlled" "MSK1") (:REACH ((("controller" "OH"))))))))
 ((:TEXT
   "Knocking down 53BP1 greatly reduced phosphorylation of ATM S1981 (XREF_FIG, lane 6).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "ATM") (:REACH ((("site" "S1981"))))))))
 ((:TEXT
   "ATM dependent activation of Chk2 is the major PIKK-Chk pathway activated by IR.")
  (MIS-MATCHES
   ("activated" (("controlled" "PIKK-Chk") (:REACH ((("controller" "IR"))))))))
 ((:TEXT
   "Therefore, 53BP1 is the most influential mediator in processes leading to recruitment of Chk2 to IRIF and/or Chk2 phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "IRIF") (:REACH)))))
 ((:TEXT
   "One interpretation, consistent with the finding that NFBD1 interacts with Chk2 phosphorylated T68, XREF_BIBR is that NFBD1 and 53BP1 tether phospho-Chk2 to IRIF.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "Chk2") (:REACH)))))
 ((:TEXT
   "Since our results indicate that knocking down 53BP1 strongly compromises ATM activation but not Chk2 phosphorylation, other PIKKs, such as ATR and DNA-PK may be responsible for phosphorylating Chk2 in the absence of functional ATM.")
  (MIS-MATCHES ("phosphorylating" (("substrate" "ATM") (:REACH)))))
 ((:TEXT
   "The JAK kinase Tyk2, which is constitutively bound to IFNAR1, phosphorylates the receptor at tyrosine residues and creates a docking site for STAT2.")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "STAT2") (:REACH ((("site" "tyrosine residues"))))))))
 ((:TEXT
   "Cells were subsequently stimulated with IFNbeta at given time-points p.i. and STAT phosphorylation was assessed in Western blots.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "STAT") (:REACH)))))
 ((:TEXT
   "However, at later time points (6-10 h p.i.), in A549 cells both virus- and IFN induced STAT1 and STAT2 phosphorylation was markedly reduced (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "STAT2") (:REACH)))))
 ((:TEXT
   "Several protein tyrosine phosphatases (PTPs) are known to mediate dephosphorylation of both, JAKs and STATs XREF_BIBR.")
  (MIS-MATCHES
   ("dephosphorylation" (("substrate" "STATs") (:REACH ((("enzyme" "PTPs")))))
    (("substrate" "JAKs") (:REACH ((("enzyme" "PTPs"))))))))
 ((:TEXT
   "This dose dependent induction of SOCS-3 by stimulation with increasing amounts of RNA from infected cells corresponds with a gradual decrease in the ability of this RNA to induce or potentiate STAT1/2 phosphorylation (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "STAT1/2") (:REACH)))))
 ((:TEXT
   "The MKK and p38 mitogen activated protein kinase (MAPK) pathway XREF_BIBR - XREF_BIBR as well as the IkappaB kinase (IKK)/nuclear factor of kappaB (NF-kappaB) cascade XREF_BIBR - XREF_BIBR are both known to be activated by RNA or influenza virus infection and to be involved in the control of SOCS-3 expression.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "IkappaB kinase") (:REACH ((("controller" "MKK"))))))))
 ((:TEXT
   "In the presence of survival factors, Akt, the survival kinase, is phosphorylated and activated, which in turn phosphorylates FOXO3a, leading to association with 14-3-3 proteins, nuclear exclusion, and retention and degradation of FOXO3a in the cytoplasm.")
  (MIS-MATCHES ("phosphorylates" (("substrate" "FOXO3a") (:REACH)))
   ("phosphorylated" (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "FOXO transcription factors are phosphorylated by Akt which leads to cytoplasmic retention and impairment of FOXO nuclear transcriptional activity 6.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "FOXO") (:REACH ((("enzyme" "Akt"))))))))
 ((:TEXT
   "Since treatment with SSc sera induced the dephosphorylation of Akt and activation of FOXO3a, resulting in the upregulation of Bim expression and apoptosis in UCB derived EPCs, we reasoned that circulating EPCs derived from SSc patients should have increased Bim expression and baseline apoptosis, due to constant exposure to SSc sera.")
  (MIS-MATCHES ("dephosphorylation" (("substrate" "FOXO3a") (:REACH)))))
 ((:TEXT
   "Tumor lysates from fish oil fed animals showed significant reduction in phosphorylation of p65 (XREF_FIG, compare lanes 4-6 with lanes 1-3; XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p65") (:REACH)))))
 ((:TEXT
   "We have shown reduced activating phosphorylation of p65 subunit of NFkappaB in the breast tumors of fish oil fed mice (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "NFkappaB") (:REACH)))))
 ((:TEXT
   "However, mutation or malfunctioning of the tumor suppressor protein PTEN activates Akt by constitutively maintaining the PI 3 kinase product PIP 3 leading to sustained growth of tumor cells [XREF_BIBR - XREF_BIBR].")
  (MIS-MATCHES
   ("activates"
    (("controlled" "PIP")
     (:REACH
      ((("controller" "tumor suppressor protein")) (("controller" "PTEN")))))
    (("controlled" "PI 3")
     (:REACH
      ((("controller" "PTEN"))
       (("controller" "tumor suppressor protein"))))))))
 ((:TEXT
   "We demonstrate that DHA and EPA, two active components of fish oil, prevent NFkappaB dependent Bcl-2 and Bcl-XL transcription by increasing PTEN mRNA and protein in breast cancer cells.")
  (MIS-MATCHES
   ("DHA and EPA, two active components of fish oil, prevent NFkappaB-dependent Bcl-2 and Bcl-XL transcription"
    (("controlled"
      "DHA and EPA, two active components of fish oil, prevent NFkappaB-dependent Bcl-2 and Bcl-XL transcription")
     (:REACH ((("controller" "Bcl-XL"))))))
   ("EPA, two active components of fish oil, prevent NFkappaB-dependent Bcl-2 and Bcl-XL transcription"
    (("controlled"
      "EPA, two active components of fish oil, prevent NFkappaB-dependent Bcl-2 and Bcl-XL transcription")
     (:REACH ((("controller" "Bcl-XL"))))))))
 ((:TEXT
   "Phosphorylated IkappaB undergoes degradation enabling nuclear translocation of NFkappaB to activate expression of target genes [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES ("Phosphorylated" (("substrate" "IkappaB") (:REACH)))))
 ((:TEXT
   "Breast tumors from fish oil fed mice possessed significantly low serine phosphorylation of p65 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p65") (:REACH ((("site" "serine"))))))))
 ((:TEXT
   "PTEN is a lipid phosphatase that dephosphorylates the D3 position of PIP 3, the product of PI 3 kinase [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("dephosphorylates" (("substrate" "PIP") (:REACH ((("site" "D3"))))))))
 ((:TEXT
   "Several lines of evidence suggest that S/T phosphorylation may regulate p120 activity, but the upstream kinases involved have not been established, nor has a discreet measurable function been assigned to an individual site.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S/T") (:REACH)))))
 ((:TEXT
   "One obstacle is that PKC activation induces a combination of p120 S/T phosphorylation and dephosphorylation events affecting at least eight sites [XREF_BIBR, XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p120") (:REACH ((("enzyme" "PKC"))))))))
 ((:TEXT
   "Several lines of evidence suggest that S/T phosphorylation regulates p120 activity, but the upstream kinases involved have not been established nor has a discreet measurable function been assigned to an individual site.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S/T") (:REACH)))))
 ((:TEXT
   "Although S879 phosphorylation in Va2 cells is dependent on PKCalpha, several attempts to directly phosphorylate p120 in vitro with purified PKCalpha were unsuccessful.")
  (MIS-MATCHES ("phosphorylate" (("substrate" "PKCalpha") (:REACH)))))
 ((:TEXT
   "Both p120 S879 phosphorylation and ERK phosphorylation are dependent on PKC activity.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "p120") (:REACH))
    (("substrate" "ERK") (:REACH ((("site" "S879"))))))))
 ((:TEXT
   "Studies in NIH3T3 fibroblasts have shown that Raf-1, a kinase upstream of ERK, is directly phosphorylated by PKCalpha in response to TPA treatment [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "Raf-1") (:REACH ((("enzyme" "PKCalpha")))))
    (("substrate" "ERK") (:REACH ((("enzyme" "PKCalpha"))))))))
 ((:TEXT
   "ROCK kinases elicit these effects through the phosphorylation of myosin light chain (MLC) and the MLC phosphatase subunit MYPT1, thereby enhancing acto-myosin contractility (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "MLC phosphatase") (:REACH))
    (("substrate" "MLC") (:REACH)))))
 ((:TEXT
   "However, RhoE also binds ROCK-I directly, and is phosphorylated by the kinase on multiple sites within its N and C termini, increasing RhoE stability and altering its cellular localisation (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "RhoE") (:REACH)))))
 ((:TEXT
   "As observed in our ROCK-I : RhoE complex, eIF2alpha bound to PKR is disposed such that its phosphoacceptor site is accessible to the kinase catalytic site, although the site of eIF2alpha phosphorylated by PKR is not resolved within the kinase catalytic site (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "eIF2alpha") (:REACH ((("enzyme" "PKR"))))))))
 ((:TEXT
   "In CDK2, the alphaG helix, together with the C-terminal segment of alphaEF, mediates the major site of interaction with its protein phosphatase KAP, positioning the phosphatase catalytic site optimally to contact and dephosphorylate pThr160 of the CDK2 activation segment (XREF_BIBR) (XREF_SUPPLEMENTARY).")
  (MIS-MATCHES ("dephosphorylate" (("substrate" "pThr160") (:REACH)))))
 ((:TEXT
   "Under conditions of RhoE overexpression, such as in the p53 mediated DNA damage response, or in transfection and microinjection experiments, RhoE levels and stability are presumably sufficient to activate a RhoE effector and induce loss of stress fibres without phosphorylation by ROCK-I (XREF_FIG).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "RhoE")
     (:REACH
      ((("controller" "DNA damage response")) (("controller" "RhoE"))))))))
 ((:TEXT
   "It is thought that the growth of uterine leiomyomas may be mediated by the interaction of estrogen receptor alpha (ERalpha) and growth factor pathways and that phosphorylation of ERalpha at serine 118 (ERalpha-phospho-Ser118) is important in this interaction.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "ERalpha") (:REACH ((("site" "ERalpha-phospho-Ser118"))))))))
 ((:TEXT
   "ERalpha from calf uterus is phosphorylated at serine residues in response to estradiol [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "ERalpha") (:REACH ((("site" "serine residues"))))))))
 ((:TEXT
   "We have found that despite comparable levels of phosphorylation of internalized and cell surface EGFR, only the intracellular EGFR can induce caspase-3-mediated apoptosis.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "EGFR") (:REACH)))))
 ((:TEXT
   "Wnt signaling was activated using Wnt-3a ligand or lithium chloride (an inhibitor of GSK-3beta that mimics Wnt activation) and inhibited using Wnt-3a plus DKK1, a competitive antagonist of Wnt-3a (XREF_FIG and XREF_SUPPLEMENTARY).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "lithium chloride") (:REACH ((("controller" "Wnt"))))))))
 ((:TEXT
   "These data indicate that beta-catenin N-terminal serine residue 33, or its phosphorylation, is important for optimal binding to Jade-1.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "beta-catenin") (:REACH ((("site" "33"))))))))
 ((:TEXT
   "Using a stable and activated-mutant form of arm (arm *; S44Y mutation in sgg and GSK3 phosphorylation site XREF_BIBR), we tested whether dE2f1 expression could modify an arm dependent phenotype.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "GSK3") (:REACH)))))
 ((:TEXT
   "E2F1 activated transcription from a canonical E2F-luciferase reporter (pE2F4B) in these cells (XREF_FIG), indicating that it has context dependent effects.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "transcription") (:REACH ((("controller" "E2F1"))))))))
 ((:TEXT
   "p53, like E2F1, inhibited pTopFLASH transcription, whereas p73, a p53 related gene that is a transcriptional target of E2F1, activated pTopFLASH (XREF_FIG).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "pTopFLASH")
     (:REACH ((("controller" "p73")) (("controller" "p53"))))))))
 ((:TEXT
   "Thus, E2F1 is a potent inhibitor of beta- catenin and TCF activated transcription that acts independently of p53 and is dominant over p73.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "transcription") (:REACH ((("controller" "TCF"))))))))
 ((:TEXT
   "Interestingly, the expression of AXIN1 and AXIN2, as well as SIAH1, a p53 inducible, GSK3 independent promoter of beta-catenin degradation XREF_BIBR, XREF_BIBR, were all significantly activated by E2F1 (XREF_FIG), consistent with previous studies suggesting that AXIN2 and SIAH1 are E2F-target genes XREF_BIBR, XREF_BIBR.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "expression of AXIN1 and AXIN2")
     (:REACH ((("controller" "E2F1")))))
    (("controlled" "expression of AXIN1") (:REACH ((("controller" "E2F1")))))
    (("controlled" "E2F-target genes")
     (:REACH ((("controller" "AXIN2")) (("controller" "AXIN1"))))))))
 ((:TEXT
   "Immunoblot, immunofluorescence and kinase assays show that H. pylori infection of gastric epithelial cells induced phosphorylation of Akt at Ser 473 and Thr 308.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Akt")
     (:REACH ((("site" "Ser 473")) (("site" "Thr 308"))))))))
 ((:TEXT
   "GSK3 is constitutively active under resting conditions, but becomes inactivated by phosphorylation of inhibitory serine residues, GSK3beta (Ser 9) and GSK3alpha (Ser 21).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "GSK3beta")
     (:REACH ((("site" "serine residues")) (("site" "Ser 9")))))
    (("substrate" "GSK3alpha")
     (:REACH ((("site" "serine residues")) (("site" "Ser 21"))))))))
 ((:TEXT
   "Effects of H. pylori infection on phosphorylation of Akt in gastric cancer cell lines.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "H. pylori infection of AGS cells caused a marked increase in Akt phosphorylation at both Thr 308 and Ser 473 (XREF_FIG) compared with uninfected cells incubated in infection media (mock infected).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Akt") (:REACH ((("site" "Thr 308"))))))))
 ((:TEXT
   "In contrast, phosphorylation of Ser 473 reached maximal levels after 30 min of H. pylori infection, suggesting the use of different upstream regulators for the activation of the two Akt phosphorylation sites.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "H. pylori infection markedly enhanced phosphorylation of GSK3beta (Ser 9) in an MOI dependent manner without affecting total GSK3 protein levels (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "GSK3beta") (:REACH ((("site" "Ser 9"))))))))
 ((:TEXT
   "Pre-treatment of cells with PKA inhibitor slightly reduced H. pylori induced phosphorylation of GSK3beta (XREF_FIG), suggesting that complete phosphorylation of GSK3beta is regulated not only by PKA, but also by other factors, probably PKB and PKC.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "GSK3beta") (:REACH)))))
 ((:TEXT "Effects of H. pylori infection on phosphorylation of PI3K and PDK1.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PDK1") (:REACH))
    (("substrate" "PI3K") (:REACH)))))
 ((:TEXT
   "We found that H. pylori infection of AGS cells enhanced the phosphorylation of the p85 subunit of PI3K, with maximal levels detected 30 min after infection at an MOI of 100 (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p85") (:REACH)))))
 ((:TEXT
   "In addition, H. pylori infection dramatically induced the phosphorylation of PDK1 Ser 241; the levels increased at 15 min and then persisted for 60 min after infection.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PDK1") (:REACH ((("site" "Ser 241"))))))))
 ((:TEXT
   "Interestingly, infection with cag PAI mutants caused reduced H. pylori induced phosphorylation of both the PI3K p85 subunit and PDK1 Ser 241 compared with infection with wild-type H. pylori (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PDK1") (:REACH ((("site" "Ser 241")))))
    (("substrate" "p85") (:REACH ((("site" "Ser 241")))))
    (("substrate" "PI3K") (:REACH ((("site" "Ser 241"))))))))
 ((:TEXT
   "The oipA mutations reduced the H. pylori induced phosphorylation of PI3K and PDK1 to a lesser extent than the cag PAI mutations; however, infection with the double cag PAI and oipA mutations resulted in complete inhibition of the phosphorylation of PI3K and PDK1 (XREF_FIG), suggesting that the combined activities of cag PAI and OipA are sufficient for full phosphorylation of PI3K p85 subunit and PDK1 Ser 241 in response to H. pylori infection.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "PI3K") (:REACH ((("site" "Ser 241")) NIL)))
    (("substrate" "p85") (:REACH ((("site" "Ser 241")))))
    (("substrate" "PDK1") (:REACH (NIL (("site" "Ser 241"))))))))
 ((:TEXT
   "As expected, pre-incubation with the pharmacological PI3K inhibitor, LY294002, abrogated H. pylori induced phosphorylation of Akt at both sites (data not shown).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "PI3K inhibitor also inhibited H. pylori induced phosphorylation of PDK1 (XREF_FIG), confirming that PDK1 is downstream of PI3K in the signalling pathway.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "PDK1") (:REACH ((("enzyme" "PI3K inhibitor"))))))))
 ((:TEXT
   "Effect of Akt knock-down by siRNA on H. pylori induced phosphorylation of GSK3, PDK1 and mitogen activated protein kinase.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "mitogen-activated protein kinase")
     (:REACH ((("enzyme" "Akt")))))
    (("substrate" "GSK3") (:REACH ((("enzyme" "Akt")))))
    (("substrate" "PDK1") (:REACH ((("enzyme" "Akt"))))))))
 ((:TEXT
   "We have previously reported that H. pylori induced the phosphorylation of Erk and p38 MAPK (XREF_BIBR; XREF_BIBR) and hypothesized that Akt signalling might be responsible for H. pylori mediated regulation of Erk and p38.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Erk") (:REACH))
    (("substrate" "p38 MAPK") (:REACH)))))
 ((:TEXT
   "Transfection of the control siRNA plasmid did not affect H. pylori induced phosphorylation of Akt, PDK1, GSK3beta, Erk or p38 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "GSK3beta") (:REACH))
    (("substrate" "Erk") (:REACH)) (("substrate" "Akt") (:REACH))
    (("substrate" "p38") (:REACH)) (("substrate" "PDK1") (:REACH)))))
 ((:TEXT
   "In contrast, Akt knock-down had no effect on the H. pylori induced phosphorylation of p38 Thr180 and Tyr182, indicating that this protein is either upstream of Akt or is activated by Akt independent mechanisms.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "p38") (:REACH ((("site" "Thr180")) (("site" "Tyr182"))))))))
 ((:TEXT
   "Involvement of EGFR in H. pylori mediated phosphorylation of PDK1 and AKT signalling.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PDK1") (:REACH ((("enzyme" "EGFR")))))
    (("substrate" "AKT") (:REACH ((("enzyme" "EGFR"))))))))
 ((:TEXT
   "We hypothesized that site specific phosphorylation of EGFR and possible subsequent activation of PI3K signalling pathways are necessary for the H. pylori mediated activation of Akt.")
  (MIS-MATCHES
   ("activation" (("controlled" "PI3K") (:REACH ((("controller" "EGFR"))))))))
 ((:TEXT
   "As expected, H. pylori infection induced the phosphorylation of EGFR Tyr 992 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "EGFR") (:REACH ((("site" "Tyr 992"))))))))
 ((:TEXT
   "Infection with cag PAI mutants markedly reduced the levels of H. pylori induced phosphorylation of EGFR Tyr 992 as compared with infection with wild-type H. pylori.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "EGFR") (:REACH ((("site" "Tyr 992"))))))))
 ((:TEXT
   "Infection with a double cag PAI and oipA mutant completely blocked H. pylori induced EGFR Tyr 992 phosphorylation, suggesting that the combined activities of cag PAI and OipA are sufficient for full phosphorylation of EGFR Tyr 992 triggered by H. pylori infection.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "EGFR") (:REACH ((("site" "Tyr 992"))))))))
 ((:TEXT
   "Transfection of the control siRNA plasmid did not affect H. pylori induced phosphorylation of Akt, PDK1, GSK3beta, Erk or p38 (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PDK1") (:REACH))
    (("substrate" "Erk") (:REACH)) (("substrate" "p38") (:REACH))
    (("substrate" "Akt") (:REACH)) (("substrate" "GSK3beta") (:REACH)))))
 ((:TEXT
   "After EGFR knock-down by EGFR specific siRNA, detectable levels of phosphorylation of PDK1 Ser 241, Akt Ser 473, Erk Thr202 and Tyr204 and GSK3beta (Ser 9) were no longer induced by H. pylori infection, suggesting that EGFR signalling is essential for H. pylori mediated regulation of the PDK1 --> Akt --> Erk --> GSK3beta pathways.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "PDK1") (:REACH ((("enzyme" "EGFR") ("site" "Ser 473"))))))))
 ((:TEXT
   "Immunofluorescence microscopy using a pharmacologic inhibitor of EGFR confirmed that inhibition of EGFR dramatically blocked H. pylori induced phosphorylation of Akt Ser 473 and Thr 308 (data not shown).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Akt")
     (:REACH
      ((("enzyme" "EGFR") ("site" "Thr 308"))
       (("enzyme" "EGFR") ("site" "Ser 473"))))))))
 ((:TEXT
   "The EGFR knock-down also reduced the levels of H. pylori mediated phosphorylation of p38; however, H. pylori infection still triggered some phosphorylation of p38 in the absence of EGFR expression (XREF_FIG), suggesting the existence of EGFR independent mechanisms for activation of p38.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "p38") (:REACH)))))
 ((:TEXT
   "Results from the current study have led to the conclusion that infection with live H. pylori induces EGFR- and PI3K dependent phosphorylation of PDK1 and Akt, and the subsequent activation of Erk, inactivation of GSK3 and IL-8 production.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Akt") (:REACH ((("enzyme" "EGFR-")) (("enzyme" "PI3K")))))
    (("substrate" "PDK1")
     (:REACH ((("enzyme" "PI3K")) (("enzyme" "EGFR-"))))))))
 ((:TEXT
   "Importantly, we found that the H. pylori virulence factors, cag PAI and OipA, differentially regulate phosphorylation of Akt on sites Thr 308 and Ser 473.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Akt") (:REACH ((("site" "Thr 308"))))))))
 ((:TEXT
   "The specific functions of cag PAI or OipA in signalling the activation of Akt Ser 473 or Thr 308 might cause an imbalance in downstream proliferation and apoptotic signalling.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "Akt")
     (:REACH ((("controller" "OipA")) (("controller" "PAI"))))))))
 ((:TEXT
   "To establish the upstream signalling events that direct H. pylori mediated Akt phosphorylation, we confirmed that H. pylori infection increases the phosphorylation of the PI3K p85 subunit and PDK1.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PI3K") (:REACH))
    (("substrate" "p85") (:REACH)) (("substrate" "Akt") (:REACH))
    (("substrate" "PDK1") (:REACH)))))
 ((:TEXT
   "In the present study, we found that cag PAI was most important in the phosphorylation of P13K p85 subunit and PDK1 Ser 241 after H. pylori infection.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "PDK1") (:REACH ((("enzyme" "PAI") ("site" "Ser 241")))))
    (("substrate" "p85") (:REACH ((("enzyme" "PAI") ("site" "Ser 241"))))))))
 ((:TEXT
   "In the present study, EGFR was found to undergo rapid tyrosine phosphorylation at Tyr 992 following H. pylori infection; the kinetics of H. pylori mediated EGFR activation coincide with phosphorylation of PI3K and Akt and are consistent with recent reports describing H. pylori induced tyrosine phosphorylation of EGFR in gastric epithelial cells (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "PI3K") (:REACH))
    (("substrate" "EGFR") (:REACH ((("site" "tyrosine")))))
    (("substrate" "Akt") (:REACH)))))
 ((:TEXT
   "Treatment of cells with GH or EGF caused phosphorylation of WT, but not T669A EGFR, in an ERK activity dependent fashion that was detected with an antibody that recognizes phosphorylation of ERK consensus sites, indicating that 669 T is required for this phosphorylation.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ERK") (:REACH)))))
 ((:TEXT
   "In these cells, EGFR was constitutively detected with the ERK consensus site phosphorylation specific antibody and EGF induced EGFR downregulation was modest, but was substantially enhanced by pretreatment with MEK1 and ERK inhibitor.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ERK") (:REACH)))))
 ((:TEXT
   "As a test of specificity, we also evaluated the consequences of mutation of threonine 654, another known phosphorylation site in the EGFR juxtamembrane intracellular domain; 654 T phosphorylation is believed to be catalyzed by protein kinase C (PKC) [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "EGFR") (:REACH ((("site" "654 T"))))))))
 ((:TEXT
   "Importantly, these findings extend the correlation between ERK activity and PTP101-reactive EGFR phosphorylation found in mouse preadipocytes [XREF_BIBR, XREF_BIBR], human T47D breast cancer cells [XREF_BIBR], and CHO cells reconstituted with human EGFR (XREF_FIG of this manuscript) to include another cell line, in this instance a human fibrosarcoma cell.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ERK") (:REACH)))))
 ((:TEXT
   "Receptor phosphorylation on several cytoplasmic domain tyrosine residues (including 845 Y, 891 Y, 920 Y, 992 Y, 1045 Y, 1068 Y, 1086 Y, 1114 Y, 1148 Y, and 1173 Y) occurs in response to EGF binding and is catalyzed by the intrinsic enzyme activity embedded in the cytoplasmic tyrosine kinase domain (residues 688-957) [XREF_BIBR - XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Receptor") (:REACH ((("site" "tyrosine residues"))))))))
 ((:TEXT
   "A very recent study [XREF_BIBR] may provide mechanistic insights into the role of the juxtamembrane domain and, in particular, phosphorylation of 654 T in such EGFR kinase regulation.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "EGFR") (:REACH ((("site" "654 T"))))))))
 ((:TEXT
   "Alternatively, phosphorylation of the steroid receptor co-activator (SRC1) has been proposed to promote a more stable interaction between SRC1 and p300 and CBP, facilitating their functional synergism (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "SRC1") (:REACH))
    (("substrate" "steroid receptor co-activator") (:REACH)))))
 ((:TEXT
   "To elucidate how thiolutin regulates Hsp27 phosphorylation and ultimately angiogenesis, Hsp27 was immunoprecipitated using nonphosphorylated and phospho-Ser78 specific antibodies from lysates of thiolutin treated and untreated human umbilical vein endothelial cells and analyzed by LC-MS.")
  (MIS-MATCHES
   ("nonphosphorylated"
    (("substrate" "phospho-Ser78 specific antibodies") (:REACH)))))
 ((:TEXT
   "Nonphosphorylated Hsp27 exists primarily in an oligomeric state via N-terminal interactions, which reversibly dissociates into smaller oligomers and monomer following phosphorylation of the protein.")
  (MIS-MATCHES ("Nonphosphorylated" (("substrate" "Hsp27") (:REACH)))))
 ((:TEXT
   "Several phospho-peptide antibodies have been developed to analyze Hsp phosphorylation, but these approaches provide only a qualitative assessment.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Hsp") (:REACH)))))
 ((:TEXT
   "The microbially derived dithiole thiolutin (N-(4-methyl-3-oxo-7,8-dithia-4-azabicyclo [3.3.0] octa-1,5-dien-2-yl) acetamide) XREF_BIBR is known to inhibit tumor angiogenesis, XREF_BIBR and increased phosphorylation of Hsp27 was found to be a conserved response of endothelial cells to at least seven other angiogenesis inhibitors.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Hsp27") (:REACH)))))
 ((:TEXT
   "Based on Western blotting using three Hsp27 phosphorylation sitespecific antibodies, treatment with 1 microM thiolutin stimulated time dependent Hsp27 phosphorylation, particularly at S78.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Hsp27") (:REACH ((("site" "S78"))))))))
 ((:TEXT
   "p38 is Required for Hsp27 Phosphorylation but Is Not Activated by Thiolutin.")
  (MIS-MATCHES
   ("Activated"
    (("controlled" "p38") (:REACH ((("controller" "Thiolutin"))))))))
 ((:TEXT
   "MK2, when activated by p38 MAP kinase, is the principal kinase that phosphorylates Hsp27, and activation of the p38 pathway has been reported by other redox stress responses.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "MK2")
     (:REACH ((("controller" "p38")) (("controller" "MAP"))))))))
 ((:TEXT
   "To assess further the site specificity of Hsp27 phosphorylation induced by thiolutin, we developed a quantitative analysis of Hsp27 phosphorylation using mass spectrometry.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Hsp27") (:REACH ((("enzyme" "thiolutin"))))))))
 ((:TEXT
   "As shown, the XIC of pS78 mono-phosphorylated peptide eluted at a retention time of 42.96 min, and the XIC of pS82 monophosphorylated peptide at 43.43 min (XREF_FIG).")
  (MIS-MATCHES ("monophosphorylated" (("substrate" "pS82") (:REACH)))))
 ((:TEXT
   "In this study, in addition to singly phosphorylated forms, the diphosphorylation (pS78 + pS82) of Hsp27 was clearly observed by mass spectrometry.")
  (MIS-MATCHES ("diphosphorylation" (("substrate" "Hsp27") (:REACH)))))
 ((:TEXT
   "However, the antibody against pS78 was not able to distinguish the pS78 form from that with both pS78 and pS82 phosphorylation.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "pS78") (:REACH))
    (("substrate" "pS82") (:REACH)))))
 ((:TEXT
   "Evaluating stress responses of human endothelial cells to the angiogenesis inhibitor thiolutin, we now demonstrate that multiple phosphorylation does occur, and the major diphosphorylated isoform of Hsp27 is modified at S78 and S82.")
  (MIS-MATCHES
   ("diphosphorylated" (("substrate" "Hsp27") (:REACH ((("site" "S78"))))))))
 ((:TEXT
   "Furthermore, JNK activation is not sufficient to activate the Hsp27 kinase MK2.")
  (MIS-MATCHES
   ("activate" (("controlled" "Hsp27") (:REACH ((("controller" "JNK"))))))))
 ((:TEXT
   "The combination of Western blotting, IP, and the LC-MS method described here enabled a sensitive quantitative characterization of PTMs and the stoichiometry of Hsp27 phosphorylation at multiple sites in the protein.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Hsp27") (:REACH ((("enzyme" "IP"))))))))
 ((:TEXT
   "This hypothesis is supported by recent studies showing that nutlin, a small molecule inhibitor of MDM2, can reactivate p53 function and induce cell death of retinoblastoma cells [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("reactivate"
    (("controlled" "p53")
     (:REACH ((("controller" "MDM2")) (("controller" "nutlin"))))))))
 ((:TEXT
   "Whereas transfection studies showed that exogenous p53 inhibits MMP-9 promoter activity in CTB, endogenous p53 does not seem to inhibit endogenous MMP-9 expression.")
  (MIS-MATCHES
   ("promoter activity"
    (("controlled" "CTB") (:REACH ((("controller" "MMP-9"))))))))
 ((:TEXT
   "In conclusion, whereas exogenous p53 is able to down-regulate MMP-9 promoter activity in CTB, endogenous p53 is not able to regulate MMP-9 expression in first trimester CTB cells.")
  (MIS-MATCHES
   ("promoter activity"
    (("controlled" "CTB") (:REACH ((("controller" "MMP-9"))))))))
 ((:TEXT
   "Pre-assembled tau filaments phosphorylated by GSK-3beta form large tangle like structures.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "Pre-assembled tau filaments")
     (:REACH ((("enzyme" "GSK-3beta"))))))))
 ((:TEXT
   "GSK-3beta phosphorylated tau monomer that is induced to polymerize in the presence of arachidonic acid (ARA) also shows the characteristic band shift (XREF_FIG, lane 2), although approximately 90% of the material is lost during the process of pelleting the filaments, denaturing them with guanidine hydrochloride, exchanging buffer and resuspending in SDS-sample buffer.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "GSK-3beta phosphorylated tau monomer")
     (:REACH ((("enzyme" "ARA"))))))))
 ((:TEXT
   "Non phosphorylated tau monomer that is induced to polymerize in the presence of ARA before being phosphorylated with GSK-3beta did not show an upward shift (XREF_FIG, lane 3) and was more similar to non phosphorylated monomer (XREF_FIG, lane 4); the polymerized sample also had a significant loss of material during sample preparation.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "GSK-3beta") (:REACH)))))
 ((:TEXT
   "The same eleven sites were detected in denatured samples of monomer phosphorylated prior to filament formation (XREF_FIG, Column 2 - pre-poly.)")
  (MIS-MATCHES ("phosphorylated" (("substrate" "filament") (:REACH)))))
 ((:TEXT
   "The second was at low protein concentrations, equivalent to conditions used to phosphorylate \" pre-assembled tau \" but without ARA.")
  (MIS-MATCHES ("phosphorylate" (("substrate" "ARA") (:REACH)))))
 ((:TEXT
   "We conclude that tau filaments are a good substrate for GSK-3beta and phosphorylation can be detected at a minimum of five sites.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "GSK-3beta") (:REACH)))))
 ((:TEXT
   "Phosphorylation of Tyr 174 within the Ac region results in an increase in GEF activity (XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("Phosphorylation" (("substrate" "Ac") (:REACH ((("site" "Tyr 174"))))))))
 ((:TEXT
   "XREF_FIG shows that baseline phosphorylation of Spry2 is increased in response to FGF2 in cells expressing WT FGFR3, while the increased amount of Spry2 detected in cells expressing TDII FGFR3 is maximally phosphorylated independent of FGF2 treatment.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "Spry2") (:REACH)))))
 ((:TEXT
   "A recent report from Lao et al. indicates that the regulatory unit of protein phosphatase 2 (PP2A) competes with c-Cbl for binding to Spry2 phosphorylated Y55 in the context of FGFR1 [XREF_BIBR].")
  (MIS-MATCHES ("phosphorylated" (("substrate" "Spry2") (:REACH)))))
 ((:TEXT
   "HIF-1alpha activates the transcription of vascular endothelial growth factor (VEGF), a key factor in tumor angiogenesis, and the expression of glucose transporters, glycolytic enzymes, and growth factors, which may promote tumor cell survival under hypoxic conditions [XREF_BIBR].")
  (MIS-MATCHES
   ("activates"
    (("controlled" "transcription of vascular endothelial growth factor")
     (:REACH ((("controller" "HIF-1alpha")))))
    (("controlled" "expression of glucose")
     (:REACH ((("controller" "HIF-1alpha"))))))))
 ((:TEXT
   "Various explanations may be offered for the appearance of these bands in western blots, including longer splice variants (XREF_BIBR), formation of homo- or heterodimers (XREF_BIBR), phosphorylation or ubiquitination (XREF_BIBR) and complexes of ERalpha with any of its possible binding partners (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "ERalpha") (:REACH)))))
 ((:TEXT
   "As shown in XREF_FIG, the H3 serine 10 residue (H3S10) was phosphorylated in HASMCs; TNFalpha treatment did not change the phosphorylation status.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "H3")
     (:REACH ((("site" "10")) (("site" "serine")) (("site" "H3S10"))))))))
 ((:TEXT
   "In addition, we have suggested that the ASK1-JNK pathway may be activated by TNFalpha.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "ASK1-JNK") (:REACH ((("controller" "TNFalpha"))))))))
 ((:TEXT
   "First, TNFalpha activates the ASK1-MKK4-JNK1 pathway, which oxidizes DJ-1, possibly phosphorylates NonO, and induces H4L12 acetylation.")
  (MIS-MATCHES
   ("activates"
    (("controlled"
      "ASK1-MKK4-JNK1 pathway, which oxidizes DJ-1, possibly phosphorylates NonO, and induces H4L12 acetylation")
     (:REACH ((("controller" "TNFalpha")))))
    (("controlled"
      "ASK1-MKK4-JNK1 pathway, which oxidizes DJ-1, possibly phosphorylates NonO")
     (:REACH ((("controller" "TNFalpha"))))))))
 ((:TEXT
   "The ERK and GSK-3beta kinases phosphorylate two sites, Ser 62 and Thr 58, respectively, which are near the amino terminus of c-Myc and are highly conserved in all mammalian c-Myc isofoms (XREF_BIBR - XREF_BIBR).")
  (MIS-MATCHES ("phosphorylate" (("substrate" "c-Myc isofoms") (:REACH)))))
 ((:TEXT
   "This finding suggests that c-Myc phosphorylation on Ser 62 is important for increased cyclin B1 promoter activity by cyclin G1 (XREF_FIG).")
  (MIS-MATCHES
   ("promoter activity"
    (("controlled" "B1") (:REACH ((("controller" "cyclin"))))))))
 ((:TEXT
   "Further, we suggest that these effects result in increased cyclin B1 promoter activation in cyclin G1 overexpressing cells, which are frequently observed in cancer cells (XREF_FIG).")
  (MIS-MATCHES
   ("promoter
 activation"
    (("controlled" "cyclin") (:REACH ((("controller" "B1"))))))))
 ((:TEXT
   "Phospho-PKCzeta can activate the MAPK pathway and nuclear factor NF-kappaB (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "MAPK") (:REACH ((("controller" "Phospho-PKCzeta")))))
    (("controlled" "NF-kappaB")
     (:REACH ((("controller" "Phospho-PKCzeta"))))))))
 ((:TEXT
   "Phosphorylation of estrogen receptor-alpha (ERalpha) at specific residues in transcription activation function 1 (AF-1) can stimulate ERalpha activity in a ligand independent manner.")
  (MIS-MATCHES
   ("Phosphorylation" (("substrate" "ERalpha") (:REACH))
    (("substrate" "estrogen receptor-alpha") (:REACH)))))
 ((:TEXT
   "Competition with phosphorylated peptides further confirmed that alpha-PS104 and alpha-PS106 are specific for ERalpha phosphorylated at S104 and S106 respectively.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "ERalpha") (:REACH ((("site" "S104"))))))))
 ((:TEXT
   "Detection of phopho-S104 ERalpha and phospho-S106 ERalpha were blocked by pre-incubation of the respective antiserum with a 100-fold excess of peptides containing a phosphorylated S104 (PS104 and PS104/6), and phosphorylated S106 (PS106 and PS104/6) respectively.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "PS106") (:REACH ((("site" "S106")) (("site" "PS104/6")))))
    (("substrate" "PS104/6") (:REACH ((("site" "S106"))))))))
 ((:TEXT
   "Of the other kinases tested, Cdk2 was able to phosphorylate S104 and S118, and GSK3 able to phosphorylate S104, but to levels considerably lower than that achieved by Erk2.")
  (MIS-MATCHES
   ("phosphorylate"
    (("substrate" "GSK3")
     (:REACH
      ((("enzyme" "Cdk2") ("site" "S104")) (("enzyme" "Cdk2") ("site" "S118"))
       (("enzyme" "Cdk2") ("site" "GSK3"))))))))
 ((:TEXT
   "Bacterial internalization can occur through activation of PDGFRbeta or through independent activation of Abl kinase, culminating in phosphorylation of the Rac guanine nucleotide exchange factor (GEF), Vav2, and two actin nucleators, WAVE2 and Cortactin.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Cortactin") (:REACH))
    (("substrate" "GEF") (:REACH)) (("substrate" "Vav2") (:REACH))
    (("substrate" "guanine") (:REACH)) (("substrate" "actin") (:REACH))
    (("substrate" "Rac") (:REACH)) (("substrate" "WAVE2") (:REACH)))))
 ((:TEXT
   "L2 did not induce phosphorylation of Epidermal Growth Factor Receptor (EGFR; XREF_FIG), suggesting there is specificity for PDGFRbeta.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "EGFR") (:REACH)))))
 ((:TEXT
   "We confirmed the role of Abl kinases in phosphorylating EB associated proteins by examining tyrosine phosphorylation of C. trachomatis infected Abl and Arg -/- cells or Abl siRNA depleted HeLa cells.")
  (MIS-MATCHES
   ("phosphorylating" (("substrate" "EB") (:REACH ((("site" "tyrosine"))))))
   ("phosphorylation"
    (("substrate" "Abl") (:REACH ((("site" "Arg")) (("site" "tyrosine"))))))))
 ((:TEXT
   "A qualitative reduction in the amount of tyrosine phosphorylation of EGFP-TARP in the Abl and Arg -/- cells compared to the parental cells was noted (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "EGFP-TARP") (:REACH ((("site" "Arg"))))))))
 ((:TEXT
   "Our screen confirmed some previously known host targets and has, most importantly, identified for the first time the activation of PDGFR and Abl kinase signaling pathways as key events in the pathogenesis of C. trachomatis infections.")
  (MIS-MATCHES
   ("activation" (("controlled" "PDGFR") (:REACH ((("controller" "Abl"))))))))
 ((:TEXT
   "Activation of these kinases culminates in phosphorylation of the Rac guanine nucleotide exchange factor, Vav2, and several actin nucleators, including WAVE2 and Cortactin, that ultimately promote efficient uptake of this obligate intracellular parasite.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "guanine") (:REACH))
    (("substrate" "Rac") (:REACH)) (("substrate" "actin") (:REACH))
    (("substrate" "Vav2") (:REACH)))))
 ((:TEXT
   "Most epithelial tumor cells (including BxPC3) express another collagen receptor, DDR1, which is a not an integrin receptor but rather is a receptor tyrosine kinase that binds to and is activated by collagen (XREF_BIBR).")
  (MIS-MATCHES
   ("activated" (("controlled" "DDR1") (:REACH ((("controller" "collagen")))))
    (("controlled" "collagen receptor")
     (:REACH ((("controller" "collagen"))))))))
 ((:TEXT
   "p130CAS function is dependent on tyrosine phosphorylation of its substrate domain (SD).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "SD") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "The JNK1 portion of the fusion protein is phosphorylated on both Thr 183 and Tyr 185 residues by the MKK7 portion of the fusion protein.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "JNK1")
     (:REACH
      ((("enzyme" "MKK7") ("site" "Thr 183"))
       (("enzyme" "MKK7") ("site" "Tyr 185"))))))))
 ((:TEXT
   "Second, the FAK homologue Pyk2 is activated by DDR1 and this activation is essential for the full response of BxPC3 cells to collagen I.")
  (MIS-MATCHES
   ("activated" (("controlled" "FAK") (:REACH ((("controller" "DDR1"))))))))
 ((:TEXT
   "The PIK3CA gene encodes the catalytic subunit p110-alpha, one of the three catalytic subunit proteins of the class IA PI-3 kinases that are usually activated by growth factor receptor tyrosine kinases.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "IA")
     (:REACH ((("controller" "growth factor receptor"))))))))
 ((:TEXT
   "Thus, the PIK3CA promoter contains a functional NF-kappaB binding site and can be activated by NF-kappaB.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "PIK3CA") (:REACH ((("controller" "NF-kappaB"))))))))
 ((:TEXT
   "The signal transduction pathways activated by ErbB receptors include well-known signaling cascades such as the Ras-Erk1/2 pathway, the phospholipase Cgamma protein kinase C pathway, the phosphatidyl inositol 3 (PI 3)-kinase-Akt pathway, and STAT signaling.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "signal transduction pathways")
     (:REACH ((("controller" "ErbB")) (("controller" "ErbB receptors"))))))))
 ((:TEXT
   "Cbl can bind EGFR either directly by binding to phosphorylated Y1045, or indirectly via the adaptor protein Grb2, which binds to phosphorylated Y1068 and Y1086 (Levkowitz et al..")
  (MIS-MATCHES ("phosphorylated" (("substrate" "Grb2") (:REACH)))))
 ((:TEXT
   "The EGF activated EGFR is also associated with Cbl in early endosomes, resulting in continued ubiquitination of EGFR (Duan et al..")
  (MIS-MATCHES
   ("activated"
    (("controlled" "EGFR is also associated with Cbl")
     (:REACH ((("controller" "EGF"))))))))
 ((:TEXT
   "The process resulted in the formation of EGFR positive tubular structures, and it was dependent on actin reorganization, receptor phosphorylation, PI 3-kinase activity, and dynamin 2.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "actin") (:REACH))
    (("substrate" "PI") (:REACH)) (("substrate" "dynamin 2") (:REACH)))))
 ((:TEXT
   "Although the AP-2 family is known to activate the ERBB2 promoter in reporter vectors, the effect of these transcription factors on the expression of the endogenous ERBB2 gene has not been clearly established.")
  (MIS-MATCHES
   ("activate" (("controlled" "ERBB2") (:REACH ((("controller" "AP-2"))))))))
 ((:TEXT
   "In general, DNA bound MYC and MAX heterodimers activate gene transcription by recruiting a number of different cofactors, including different histone acetyl transferases, that regulate chromatin and polymerase function (XREF_BIBR, XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "transcription") (:REACH ((("controller" NIL))))))))
 ((:TEXT
   "Furthermore, co-expression of a dominant negative mutant of STAT3 (STAT3 (Y705F)) that can not be phosphorylated on this tyrosine was sufficient to reduce the G-CSF and G-CSFR-dependent activation of the -184/+248-luc or of the -184/-58-mintk-luc reporter gene constructs (XREF_FIG F and data not shown).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "STAT3") (:REACH)))))
 ((:TEXT
   "The C/EBP response elements are important to activate the MAD1 promoter in response to G-CSF and G-CSFR.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "MAD1")
     (:REACH ((("controller" "C/EBP response elements"))))))))
 ((:TEXT
   "Of the three tested C/EBP proteins, C/EBPalpha and C/EBPbeta activated the -184 to +248 MAD1 promoter fragment strongly, while C/EBPepsilon was a poor stimulator (XREF_FIG A).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "MAD1")
     (:REACH ((("controller" "C/EBPbeta")) (("controller" "C/EBPalpha"))))))))
 ((:TEXT
   "The fourth C/EBP family member analyzed, C/EBPbeta, was capable to activate the MAD1 reporter genes in a CCAAT-box-dependent manner and bound to the promoter in cells (XREF_FIG).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "MAD1")
     (:REACH
      ((("controller" "C/EBPbeta")) (("controller" "C/EBP family"))
       (("controller" "C/EBP"))))))))
 ((:TEXT
   "Previous studies have demonstrated that SV40 large T antigen can activate the PI3K pathway in different cell types [XREF_BIBR, XREF_BIBR], and, in line with these observations, we have shown that SV40+ MM cells have higher AKT activity [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("activate"
    (("controlled" "PI3K") (:REACH ((("controller" "T antigen"))))))))
 ((:TEXT
   "Immunolocalisation of phosphorylated STAT3, interleukin 11 and leukaemia inhibitory factor in endometrium of women with unexplained infertility during the implantation window.")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "inhibitory factor") (:REACH))
    (("substrate" "interleukin 11") (:REACH)))))
 ((:TEXT
   "Reduced IL-11 production and STAT3 phosphorylation may contribute to unexplained infertility in some women.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "IL-11") (:REACH)))))
 ((:TEXT
   "WNT3 ligand and the internally truncated LRP5 receptor strongly activated transcription, and the internally truncated LRP5 receptor was insensitive to inhibition by DKK1.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "transcription") (:REACH ((("controller" "WNT3"))))))))
 ((:TEXT
   "Wnt ligands bind to cell-surface Frizzled receptors and LRP5/6 coreceptors and result in changes in phosphorylation of several intracellular signaling components with the subsequent accumulation of nonphosphorylated beta-catenin [XREF_BIBR - XREF_BIBR].")
  (MIS-MATCHES ("nonphosphorylated" (("substrate" "beta-catenin") (:REACH)))))
 ((:TEXT
   "The mechanism (s) by which the internally truncated LRP5 receptor activates beta-catenin signaling in tumor cells remains to be elucidated, but may involve impaired inhibition by DKK1.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "beta-catenin")
     (:REACH ((("controller" "LRP5 receptor"))))))))
 ((:TEXT
   "The WNT3 ligand activated transient transcription more strongly in the presence of LRP5Delta666-809 than LRP5wt, possibly suggesting favored interaction of WNT3 with the internally truncated receptor.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "transcription") (:REACH ((("controller" "WNT3"))))))))
 ((:TEXT
   "This common arrangement appears to provide a more stable and rigid packing solution than the alternative SOCS2 structure, potentially reflecting the greater selection for rapid induction and degradation responses in the CIS and SOCS1-SOCS 3 subfamily (for example, phosphorylation of the SOCS3 interface Y221 induces its degradation).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "SOCS3") (:REACH ((("site" "Y221"))))))))
 ((:TEXT
   "Dysfunction of this regulatory pathway may result in the accumulation of a hypophosphorylated stable form of beta-catenin in the cytoplasm (XREF_BIBR), from whence it translocates to the nucleus, binding to the high mobility group domain factors Tcf/LEF (XREF_BIBR) and stimulating transcription of target genes such as c-myc and cyclin D1 (XREF_BIBR).")
  (MIS-MATCHES ("hypophosphorylated" (("substrate" "beta-catenin") (:REACH)))))
 ((:TEXT
   "In normal unstressed cells, the p53 protein is present at very low levels because of continuous degradation mediated by Mdm2, a protein that is also transcriptionally activated by p53 (XREF_BIBR).")
  (MIS-MATCHES
   ("activated" (("controlled" "Mdm2") (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "Yet as shown in our studies, IGF-1R inhibition not only impairs p53 dependent apoptosis but also inactivates the PI-3K-Akt and ERK pathways, which have been shown to be important for the antiapoptotic activity of IGF-1R signaling (XREF_BIBR; XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("inactivates"
    (("controlled" "ERK") (:REACH ((("controller" "IGF-1R"))))))))
 ((:TEXT
   "ERK5 activates NFkappaB by causing IkappaB degradation, a process that is regulated by ribosomal S6 kinase 2 (RSK2).")
  (MIS-MATCHES
   ("activates"
    (("controlled" "IkappaB") (:REACH ((("controller" "ERK5"))))))))
 ((:TEXT
   "To determine whether RSK1 or RSK2 is activated by ERK5 in our system, HEK293 cells were transfected with caMEK1, which is sufficient to activate endogenous ERK1/2, or with caMEK5 + wtERK5 to activate ERK5 signaling.")
  (MIS-MATCHES
   ("activate" (("controlled" "ERK5") (:REACH ((("controller" "wtERK5"))))))))
 ((:TEXT
   "For example, some reports showed that dnMEK5 inhibition of ERK5 in NIH 3T3 cells blocks EGF stimulation of thymidine incorporation (XREF_BIBR) and ERK5 may activate cyclin D1 expression (XREF_BIBR).")
  (MIS-MATCHES
   ("activate"
    (("controlled" "cyclin D1 expression")
     (:REACH ((("controller" "ERK5"))))))))
 ((:TEXT
   "However, RSK2 phosphorylates IkappaB on S32, but not S36, which is necessary but not sufficient for IkappaB degradation (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "IkappaB") (:REACH ((("enzyme" "RSK2") ("site" "S36"))))))))
 ((:TEXT
   "An important implication of these observations is that murine GzmB may be unable to activate the BID pathway to kill target cells and may rely predominantly on direct activation of caspases.")
  (MIS-MATCHES
   ("activate" (("controlled" "BID") (:REACH ((("controller" "GzmB"))))))))
 ((:TEXT
   "Although some have suggested that BID may be the most relevant GzmB substrate during CTL attack, others have suggested that BID proteolysis is indirect and is mediated by caspase-3, which is also activated by GzmB (XREF_BIBR).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "caspase-3") (:REACH ((("controller" "GzmB"))))))))
 ((:TEXT
   "The observation that BID is a poor substrate for mGzmB suggests that this protease does not efficiently activate the BID pathway to cell death in the mouse.")
  (MIS-MATCHES
   ("activate" (("controlled" "BID") (:REACH ((("controller" "protease")))))
    (("controlled" "cell death") (:REACH ((("controller" "protease"))))))))
 ((:TEXT
   "Here we show that type Igamma phosphatidylinositol phosphate kinase (PIPKIgamma) directly binds to E-cadherin and modulates E-cadherin trafficking.")
  (MIS-MATCHES
   ("phosphate kinase (PIPKIgamma) directly binds to E-cadherin"
    (NIL (:REACH ((("theme" "phosphate") ("theme" "E-cadherin"))))))
   ("phosphatidylinositol phosphate kinase (PIPKIgamma) directly binds to E-cadherin"
    (NIL
     (:REACH ((("theme" "phosphatidylinositol") ("theme" "E-cadherin"))))))))
 ((:TEXT
   "Recent evidence suggests that Rab11 (XREF_BIBR), p120-catenin, ARF6, tyrosine phosphorylation, and ubiquitination (XREF_BIBR) all control the trafficking and assembly of E-cadherin in mammalian cells.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "p120-catenin") (:REACH ((("site" "tyrosine")))))
    (("substrate" "ARF6") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "For example, p73 can bind to and activate various p53 target genes, and can induce growth arrest or apoptosis when over-expressed [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("activate" (("controlled" "p53") (:REACH ((("controller" "p73"))))))))
 ((:TEXT
   "According to this model, p53 activates MDM2 gene expression, and increased levels of MDM2 protein then promotes GR and p53 degradation.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "MDM2 gene expression")
     (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "To test whether GR can also inhibit the transcriptional activity of p73, we monitored the effect of GR co-expression on p53 and p73 dependent activation of different luciferase reporter genes.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "luciferase reporter genes")
     (:REACH ((("controller" "p73")) (("controller" "p53"))))))))
 ((:TEXT
   "According to this model, p53 activates MDM2 gene expression, and increased levels of MDM2 protein then promote the degradation of both p53 and GR.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "MDM2 gene expression")
     (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "The guanine nucleotide exchange factor, Tiam1, specifically activates the Rho like GTPase Rac (Michiels et al, 1995) and Tiam1-Rac signaling affects cell migration (Hordijk et al, 1997; Sander et al, 1998), invasion (Michiels et al, 1995; Keely et al, 1997; Engers et al, 2001), and metastasis (Habets et al, 1994) of tumour cells.")
  (MIS-MATCHES
   ("activates" (("controlled" "Rho") (:REACH ((("controller" "guanine"))))))))
 ((:TEXT
   "The expression of tCdc6 perturbs the loading of Mcm2 but not Orc2 onto chromatin and activates ataxia telangiectasia mutated (ATM) and ATM and Rad-3 related (ATR) kinase activities with kinetics similar to that of the phosphorylation of Chk1/2.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Chk1/2") (:REACH)))))
 ((:TEXT
   "Also, Cdc6-wt, p49-tCdc6, and p32-tCdc6 but not Cdc6-AAA were all similarly phosphorylated when they were prepared from cells that coexpressed cyclin A. Phosphorylation was prevented in cells expressing Cdk2-DN (XREF_FIG).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "p49-tCdc6") (:REACH))
    (("substrate" "p32-tCdc6") (:REACH)) (("substrate" "Cdc6-wt") (:REACH)))
   ("Phosphorylation" (("substrate" "cyclin") (:REACH)))))
 ((:TEXT
   "We asked whether an uncleavable mutant of Cdc6 (Cdc6-UM) has the effects described for tCdc6 that disturb Mcm2 loading to the chromatin and activate DNA damage sensing kinase activity and proapoptotic effect.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "DNA damage")
     (:REACH ((("controller" "Cdc6")) (("controller" "Cdc6-UM"))))))))
 ((:TEXT
   "In particular, we show that Cdc6 truncation impairs Mcm2 loading onto chromatin and subsequently activates DNA damage sensing kinase activities that may be linked to p53-Bax-mediated programmed cell death.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "DNA damage") (:REACH ((("controller" "Cdc6"))))))))
 ((:TEXT
   "Moreover, the p32-tCdc6- or TNF-alpha-induced activation of caspase-3 activity is significantly down-regulated as a result of the specific down-expression of ATM or ATR kinase in the cells (XREF_FIG).")
  (MIS-MATCHES
   ("activation"
    (("controlled" "caspase-3") (:REACH ((("controller" "p32-tCdc6-"))))))))
 ((:TEXT
   "When released, Cdc14 inactivates cyclin B-Cdk while activating the anaphase promoting complex (APC) that targets the destruction of mitosis specific cyclins [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("inactivates"
    (("controlled" "cyclin") (:REACH ((("controller" "Cdc14"))))))))
 ((:TEXT
   "In further support of similarities in function is the finding that hCdc14A can, like Cdc14 in S. cerevisiae, activate the anaphase promoting complex (APC) in late anaphase by dephosphorylating the APC co-factor Cdh1 [XREF_BIBR] and dephosphorylate substrates of cyclin dependent kinases [XREF_BIBR, XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES ("dephosphorylate" (("substrate" "cyclin") (:REACH)))))
 ((:TEXT
   "It is possible that high hCdc14A expression may activate p53 leading to cell cycle arrest or apoptosis.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "apoptosis") (:REACH ((("controller" "hCdc14A"))))))))
 ((:TEXT
   "This function is facilitated through binding and activation of cyclin dependent kinases (CDK) 4 and 6, with phosphorylation of the retinoblastoma protein (Rb), and release of sequestered transcription factors such as E2F [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES ("phosphorylation" (("substrate" "Rb") (:REACH)))))
 ((:TEXT
   "alpha-Smooth Muscle Actin alpha-SMA 5-bromo-2 '-deoxyuridine BrdU cyclin D1 gene CCND1 Connective Tissue Growth Factor CTGF Extracellular Matrix ECM Fetal Calf Serum FCS Fluorescence Activated Cell Sorting FACS Farnesylpyrophosphate FPP Geranylgeranylpyrophosphate GGPP Glyceraldehyde-3-phosphate dehydrogenase GAPDH Guanine nucleotide binding regulatory protein G protein Guanosine triphosphatase GTPase 3 hydroxy3methylglutaryl Coenzyme A HMG CoA Idiopathic Pulmonary Fibrosis IPF Phosphate buffered saline PBS Reverse Transcription Polymerase Chain Reaction RT-PCR Serum-free DMEM media SF-DMEM Suppressor of cytokine Signalling SOCS Transforming Growth Factor-beta1 TGF-beta1 Competing interests.")
  (MIS-MATCHES
   ("Activated"
    (("controlled" "Phosphate") (:REACH ((("controller" "Actin")))))
    (("controlled" "CoA") (:REACH ((("controller" "Actin"))))))))
 ((:TEXT
   "Treatment with CIAP resulted in both membrane and cytosolic tuberin migrating faster, indicating that tuberin within the cytosolic fraction is hyperphosphorylated.")
  (MIS-MATCHES ("hyperphosphorylated" (("substrate" "tuberin") (:REACH)))))
 ((:TEXT
   "In serum stimulated cells, phosphorylation of membrane localized tuberin was also increased after 1 h (comparable to cytosolic tuberin in starved cells but less than cytosolic tuberin from serum- stimulated cells; XREF_FIG), suggesting that phosphorylation at specific residues, rather than total levels of phosphorylation, was determining localization.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "tuberin") (:REACH)))))
 ((:TEXT "Tuberin contains multiple S/T phosphorylation sites (XREF_FIG).")
  (MIS-MATCHES ("phosphorylation" (("substrate" "S/T") (:REACH)))))
 ((:TEXT
   "However, the T1462A single mutant partitioned in the cell similarly to wild-type tuberin (XREF_FIG), indicating that T1462 phosphorylation was not directing translocation of tuberin from the membrane to the cytosol.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "tuberin") (:REACH)))))
 ((:TEXT
   "Previously, AKT was shown to directly phosphorylate and inhibit tuberin function upon stimulation with growth factors (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylate" (("substrate" "tuberin") (:REACH)))))
 ((:TEXT
   "We have shown that although tuberin is found in both the membrane and cytosolic fractions of cells, cytosolic tuberin accumulates upon growth factor stimulation and is hyperphosphorylated.")
  (MIS-MATCHES ("hyperphosphorylated" (("substrate" "tuberin") (:REACH)))))
 ((:TEXT
   "53BP1 is involved in the phosphorylation of various ataxia telangiectasia mutated protein (ATM) substrates such as cell cycle checkpoint kinase 2 (CHEK2) [XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "ataxia telangiectasia mutated") (:REACH)))))
 ((:TEXT
   "The MAPK kinase kinase kinases of the first level are phosphorylated in response to various extracellular stimuli through interaction with small GTP binding proteins like Ras, Raf, etc..")
  (MIS-MATCHES ("phosphorylated" (("substrate" "MAPK") (:REACH)))))
 ((:TEXT
   "The activated enzymes then phosphorylate one of 14 kinases of the second level (the MAPKKKs, that is, Raf proteins, MEKK1-4, etc.), which themselves activate one of the MAPK kinases (MEK1 and 2, MKK3-7) of the third level.")
  (MIS-MATCHES ("phosphorylate" (("substrate" "Raf") (:REACH)))))
 ((:TEXT
   "Three different, partly interacting signalling pathways have been identified in mammalian cells, leading to the activation of three types of MAP kinases : the MAP kinase JNK (Jun kinase) phosphorylates c-Jun, JunB, ATF2 and ELK1, etc., P38 activates ATF2, ELK-1 and MAX, whereas ERK1 and ERK2 phosphorylate c-Myc, SAP-1, Fra-1 and Fra-2, etc..")
  (MIS-MATCHES
   ("phosphorylates"
    (("substrate" "ATF2") (:REACH ((("enzyme" "MAP")) (("enzyme" "Jun")))))
    (("substrate" "JunB") (:REACH ((("enzyme" "MAP")) (("enzyme" "Jun")))))
    (("substrate" "ELK1") (:REACH ((("enzyme" "MAP")) (("enzyme" "Jun")))))
    (("substrate" "c-Jun") (:REACH ((("enzyme" "Jun")) (("enzyme" "MAP"))))))))
 ((:TEXT
   "c-Jun and JunB are phosphorylated by the Jun N-terminal kinase JNK (Mechta-Grigoriou et al, 2001).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "JunB") (:REACH ((("enzyme" "Jun")))))
    (("substrate" "c-Jun") (:REACH ((("enzyme" "Jun"))))))))
 ((:TEXT
   "In mouse keratinocytes, ocadaic acid treatment leads to phosphorylation of JunD and FosB by ERK and subsequent activation of an AP-1-responsive promoter (Rosenberger et al, 1999).")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "FosB") (:REACH ((("enzyme" "acid")))))
    (("substrate" "JunD") (:REACH ((("enzyme" "acid"))))))
   ("activation"
    (("controlled" "AP-1-responsive promoter")
     (:REACH ((("controller" "FosB")) (("controller" "JunD"))))))))
 ((:TEXT
   "The Fos related antigens Fra-1 and Fra-2 are phosphorylated by MAPK in vitro, which leads to stabilisation, strong conformational change and an increase in DNA binding affinity (Gruda et al, 1994).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "Fos") (:REACH ((("enzyme" "MAPK"))))))))
 ((:TEXT
   "Both studies differ in the antibodies used : in the first (Adeyinka et al, 2002), a polyclonal phospho-p44 and p42 (Thr 202/Tyr 204) antibody (New England Biolabs, Frankfurt a.m., Germany) was employed, whereas in the second (Gee et al, 2001), a polyclonal anti-ACTIVE (TM) MAPK antibody (Promega, Mannheim, Germany) for dually phosphorylated ERK1/2 forms was used.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "ERK1/2") (:REACH)))))
 ((:TEXT
   "The correlations found for the nonphosphorylated ERK proteins with c-Fos and Fra-2 expression (XREF_TABLE) might not reflect an effect of MAP kinases on AP-1 proteins, since these associations were not found with the activated enzymes, but rather point to a regulation of ERK expression by AP-1 or common regulatory mechanisms.")
  (MIS-MATCHES ("nonphosphorylated" (("substrate" "ERK") (:REACH)))))
 ((:TEXT
   "Interestingly, although both PKCeta and PKCepsilon are Golgi localized, beta1gamma2 activated PKCeta but not PKCepsilon (XREF_FIG, first two lanes).")
  (MIS-MATCHES
   ("activated"
    (("controlled" "PKCepsilon") (:REACH ((("controller" "beta1gamma2"))))))))
 ((:TEXT
   "Sec14p in S. cerevisiae regulates DAG levels, DAG reportedly activates an ARF-GAP Gcs1p, and these components are required for Golgi-to-cell surface transport in yeast (XREF_BIBR).")
  (MIS-MATCHES
   ("activates"
    (("controlled" "ARF-GAP Gcs1p") (:REACH ((("controller" "DAG"))))))))
 ((:TEXT
   "Tat independent activation of the HIV LTR by TSA has been documented both in vitro using chromatinized templates, and in vivo using cell lines containing integrated HIV genomes defective for Tat mediated transactivation [XREF_BIBR, XREF_BIBR, XREF_BIBR].")
  (MIS-MATCHES
   ("activation" (("controlled" "LTR") (:REACH ((("controller" "Tat"))))))))
 ((:TEXT
   "PEDF dependent JNK activation restored NFATc2 phosphorylation and localization to the cytoplasm in ECs activated by VEGF and bFGF.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "ECs")
     (:REACH ((("controller" "VEGF")) (("controller" "bFGF"))))))
   ("phosphorylation"
    (("substrate" "NFATc2") (:REACH ((("enzyme" "PEDF"))))))))
 ((:TEXT
   "Western blotting with the antibodies against active, dually phosphorylated JNK showed activation of the two JNK isoforms likely corresponding to the JNK-1 and JNK-2 (XREF_FIG b).")
  (MIS-MATCHES ("phosphorylated" (("substrate" "JNK") (:REACH)))))
 ((:TEXT
   "Both JNK activation by VEGF and its PEDF dependent increase persisted for 1 h (unpublished data).")
  (MIS-MATCHES
   ("activation" (("controlled" "JNK") (:REACH ((("controller" "PEDF"))))))))
 
 ((:TEXT "Thus, oncogenic Ras activates Rac1 in a PKCiota dependent fashion.")
  (MIS-MATCHES
   ("activates" (("controlled" "PKCiota") (:REACH ((("controller" "Ras"))))))))
 ((:TEXT
   "Since HIV-1 Env protein may activate DOCK2 controlled signaling pathways through binding to chemokine receptors such as CXCR4, env defective, VSV-G-pseudotyped viruses were used in these experiments.")
  (MIS-MATCHES
   ("activate"
    (("controlled" "DOCK2") (:REACH ((("controller" "Env protein"))))))))
 
 ((:TEXT
   "Our data strongly suggest that DOCK2-ELMO1 is the major activator of Rac targeted by Nef in T lymphocytes.")
  (MIS-MATCHES
   ("is the major activator"
    (("controlled" "Rac") (:REACH ((("controller" "DOCK2-ELMO1"))))))))
 ((:TEXT
   "Moreover, Rac activation by DOCK2 facilitates T cell responsiveness to antigen, as disrupted Rac activation in DOCK2 (-/-) and Rac2 (-/-) mice is associated with defective immunological synapse formation and depressed antigen specific responses (XREF_BIBR; XREF_BIBR).")
  (MIS-MATCHES
   ("activation" (("controlled" "DOCK2") (:REACH ((("controller" "Rac"))))))))
 ((:TEXT
   "The kinase activity coimmunoprecipitated with CK8 and 18 and phosphorylated immunoprecipitates of the CK.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "CK") (:REACH)))))
 ((:TEXT
   "A peptide pseudosubstrate specific for PKC epsilon inhibited phosphorylation of CK8/18 in intact cells or in a kinase assay with CK8/18 immunoprecipitates.")
  (MIS-MATCHES ("phosphorylation" (("substrate" "CK8/18") (:REACH)))))
 
 ((:TEXT
   "In parallel, pRb protein and Ser795 phosphorylation diminished almost completely after irradiation on polystyrene, whereas on FN the strong Ser795 phosphorylation remained unchanged.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "pRb") (:REACH ((("site" "Ser795"))))))))
 ((:TEXT
   "The observed ILK overexpression was accompanied by a constitutive phosphorylation of the ILK downstream targets PKBalpha and Akt and GSK-3beta.")
  (MIS-MATCHES
   ("phosphorylation" (("substrate" "Akt") (:REACH))
    (("substrate" "ILK") (:REACH)) (("substrate" "GSK-3beta") (:REACH)))))
 ((:TEXT
   "The MITF promoter is potently activated by beta-catenin in a manner dependent upon the TCF/LEF binding site based on deletion mutagenesis, consistent with point mutagenesis studies of XREF_BIBR.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "MITF") (:REACH ((("controller" "beta-catenin"))))))))
 ((:TEXT
   "Phosphorylation involves the reversible covalent attachment of a phosphate group to serine, threonine, or tyrosine residues on proteins, whereas nitrosylation involves the reversible covalent attachment of an NO group to cysteine residues.")
  (MIS-MATCHES
   ("Phosphorylation"
    (("substrate" "phosphate") (:REACH ((("site" "threonine"))))))))
 ((:TEXT
   "We show here that HIPK2 activates transcription mediated by tumor suppressor p53 responsive promoter elements.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "transcription") (:REACH ((("controller" "HIPK2"))))))))
 ((:TEXT "HIPK2 activates p53 mediated transcription.")
  (MIS-MATCHES
   ("HIPK2 activates p53-mediated transcription"
    (("controlled" "HIPK2 activates p53-mediated transcription")
     (:REACH ((("controller" "p53"))))))))
 ((:TEXT
   "To test whether HIPK2 activates transcription mediated by p53 responsive elements via p53, we transiently transfected human Saos2 cells, which lack p53 expression [XREF_BIBR], with different HIPK2 expression constructs.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "transcription") (:REACH ((("controller" "HIPK2"))))))))
 ((:TEXT
   "Since HIPK2 activated p53 mediated transcription, we looked whether HIPK2 leads to an increase in the level of p53 protein after transient transfection of HeLa cells.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "p53-mediated transcription")
     (:REACH ((("controller" "HIPK2"))))))))
 ((:TEXT
   "Since HIPK2 contains a serine/threonine kinase domain and since multiple serine/threonine phosphorylation sites are present in p53 protein, we used antibodies that specifically detect single phosphorylated serine residues of p53 to look for a putative HIPK2 mediated phosphorylation of p53.")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "p53") (:REACH ((("site" "serine residues"))))))))
 ((:TEXT
   "Similar to the decrease in the amount of p53 protein in the presence of the K221A mutant there was a decrease in phosphorylated p53 after treatment with doxorubicin.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "doxorubicin") (:REACH)))))
 ((:TEXT
   "Taken together, HIPK2 is not sufficient for phosphorylation of p53 at serine residues 15 and 20, where doxorubicin seems to be required, and for phosphorylation of serine 392.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "p53") (:REACH ((("site" "15")) (("site" "20"))))))))
 ((:TEXT
   "The transcription activator Elk1 becomes phosphorylated and activated by the MAP (mitogen activated protein) kinase.")
  (MIS-MATCHES
   ("activator"
    (("controlled" "transcription") (:REACH ((("controller" "Elk1"))))))))
 ((:TEXT
   "The conclusion is, that HIPK2 seems to activate components of the MAP kinase pathway.")
  (MIS-MATCHES
   ("activate" (("controlled" "MAP") (:REACH ((("controller" "HIPK2"))))))))
 ((:TEXT
   "Only wildtype HIPK2 activated NFkappaB mediated transcription slightly but not significantly.")
  (MIS-MATCHES
   ("HIPK2 activated NFkappaB-mediated transcription"
    (("controlled" "HIPK2 activated NFkappaB-mediated transcription")
     (:REACH ((("controller" "NFkappaB"))))))))
 ((:TEXT
   "The p53 responsive enhancer element becomes activated by HIPK2 in cell lines with p53 but not in a cell line devoid of p53.")
  (MIS-MATCHES
   ("activated" (("controlled" "p53") (:REACH ((("controller" "HIPK2"))))))))
 ((:TEXT
   "HIPK2 is not sufficient for phosphorylation of crucial serine residues of p53.")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "p53") (:REACH ((("site" "serine residues"))))))))
 ((:TEXT
   "The relative amounts of the increase of the p53 protein levels and the increase in doxorubicin induced phosphorylation of serine residue 15 are comparable and give rise to the assumption that the total amount of p53 protein present becomes phosphorylated under doxorubicin treatment.")
  (MIS-MATCHES ("phosphorylated" (("substrate" "doxorubicin") (:REACH)))))
 ((:TEXT
   "The nuclear distribution of murine Mx1 is similar to HIPK2 and PKM, but a direct interaction of the Mx protein with HIPK2 and PKM and phosphorylation of Mx by HIPK2 and PKM could not be demonstrated so far [XREF_BIBR].")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "Mx") (:REACH ((("enzyme" "PKM")) (("enzyme" "HIPK2"))))))))
 ((:TEXT
   "HIPK2, homeodomain interacting protein kinase 2; MAP, mitogen activated protein; Mdm2, murine double minute clone 2.")
  (MIS-MATCHES
   ("activated"
    (("controlled" "Mdm2")
     (:REACH
      ((("controller" "HIPK2"))
       (("controller" "homeodomain-interacting protein kinase 2"))))))))
 ((:TEXT
   "Since the ligand for Ros is unknown, we used a chimerical receptor composed of the extracellular part of human TrkA and the intracellular domain of murine Ros (TrkA-Ros), which is activated in response to NGFbeta (Riethmacher et al. 1994).")
  (MIS-MATCHES
   ("activated" (("controlled" "NGFbeta") (:REACH ((("controller" "Ros"))))))))
 ((:TEXT
   "All of the endogenous Bid was cleaved within 2 h, consistent with the characteristically rapid activation of apoptosis by granzyme B 40.")
  (MIS-MATCHES
   ("activation"
    (("controlled" "apoptosis") (:REACH ((("controller" "granzyme B"))))))))
 ((:TEXT
   "These results demonstrate that nitric oxide selectively activates the stress activated p38 MAP kinase in human SH-SY5Y neuroblastoma cells.")
  (MIS-MATCHES
   ("activates"
    (("controlled" "p38") (:REACH ((("controller" "nitric oxide")))))
    (("controlled" "MAP") (:REACH ((("controller" "nitric oxide"))))))))
 ((:TEXT
   "The p120 Ras-GTPase activating protein (Ras-GAP) and p190 Rho-GAP (p190) have both been implicated in remodeling the actin cytoskeleton.")
  (MIS-MATCHES
   ("activating" (("controlled" "p190") (:REACH ((("controller" "p120"))))))))
 ((:TEXT
   "In addition, the phosphoamino acid analysis of immunoprecipitated beta-catenin showed that P-Ser was the major phosphorylated amino acid, and, as expected, the relative P-Ser content of beta-catenin in Ras transduced cells was much lower than that of parental cells (XREF_FIG b).")
  (MIS-MATCHES
   ("phosphorylated" (("substrate" "beta-catenin") (:REACH))
    (("substrate" "acid") (:REACH)) (("substrate" "Ras") (:REACH)))))
 ((:TEXT
   "These kinases phosphorylate the paxillin fusion protein on residues that are also phosphorylated on paxillin in vivo in response to integrin mediated cell adhesion (XREF_BIBR, XREF_BIBR; XREF_BIBR), as well as a coprecipitating 95-kD protein that was heavily phosphorylated on both tyrosine and serine residues (XREF_BIBR).")
  (MIS-MATCHES ("phosphorylate" (("substrate" "paxillin") (:REACH)))))
 
 ((:TEXT
   "In contrast, unlike paxillin, Hic-5 is not tyrosine phosphorylated during cell adhesion and consequently is unable to bind the SH2 domain containing adaptor, Crk (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylated"
    (("substrate" "Hic-5") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "This phenomenon appears to be due in part to a constitutive increase in tyrosine phosphorylation of p130 CAS, a known PTP-PEST substrate, paxillin, which associates with PTP-PEST in vitro, and focal adhesion kinase (FAK).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "paxillin") (:REACH ((("site" "tyrosine"))))))))
 
 ((:TEXT
   "Paxillin was shown to be hyperphosphorylated in FAK null cell lines, a mutation that was also associated with a decrease in cell mobility and increase in numbers of focal adhesions (XREF_BIBR).")
  (MIS-MATCHES ("hyperphosphorylated" (("substrate" "FAK") (:REACH)))))
 ((:TEXT
   "XREF_FIG a shows that cortactin is not constitutively tyrosine hyperphosphorylated in the PTP-PEST (-/-) cells, suggesting that it is not a direct or indirect substrate for this phosphatase.")
  (MIS-MATCHES ("hyperphosphorylated" (("substrate" "PTP-PEST") (:REACH)))))
 ((:TEXT
   "To understand where the tyrosine residues hyperphosphorylated on p130 CAS, paxillin, and FAK in the PTP-PEST (-/-) cells are, and to verify if these sites could be specific SH2 binding motifs, we examined the physical association of each of these proteins with a panel of SH2 domains in vitro.")
  (MIS-MATCHES ("hyperphosphorylated" (("substrate" "PTP-PEST") (:REACH)))))
 ((:TEXT
   "This increase in migration occurs via the tyrosine phosphorylation of an adapter protein, p130 CAS (XREF_BIBR).")
  (MIS-MATCHES
   ("phosphorylation"
    (("substrate" "protein") (:REACH ((("site" "tyrosine"))))))))
 ((:TEXT
   "In PTP-PEST (-/-) cells, this can cause Src to constitutively bind p130 CAS and hyperphosphorylate the Crk binding motifs on p130 CAS.")
  (MIS-MATCHES ("hyperphosphorylate" (("substrate" "Crk") (:REACH)))))
 ((:TEXT
   "This would explain why p130 CAS is so hyperphosphorylated in the PTP-PEST (-/-) cells, and why the difference in affinity is greater with the Src SH2 domain compared with the Crk SH2 domain, even though there are 15 putative binding domains for Crk compared with only one for Src on p130 CAS.")
  (MIS-MATCHES ("hyperphosphorylated" (("substrate" "p130 CAS") (:REACH)))))) )
