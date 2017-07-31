(in-package :sparser)

(defparameter *rsm-r-other-good*
  '(
    ((:TEXT
   "Most epithelial tumor cells (including BxPC3) express another collagen receptor, DDR1, which is a not an integrin receptor but rather is a receptor tyrosine kinase that binds to and is activated by collagen (XREF_BIBR).")
  (:MIS-MATCHES
   ("activated" (("controlled" "DDR1") (:REACH ((("controller" "collagen")))))
    (("controlled" "collagen receptor")
     (:REACH ((("controller" "collagen"))))))))
    ((:TEXT
      "The JNK1 portion of the fusion protein is phosphorylated on both Thr 183 and Tyr 185 residues by the MKK7 portion of the fusion protein.")
     (:MIS-MATCHES
      ("phosphorylated"
       (("substrate" "JNK1")
        (:REACH
         ((("enzyme" "MKK7") ("site" "Thr 183"))
          (("enzyme" "MKK7") ("site" "Tyr 185"))))))))
    ((:TEXT
      "The PIK3CA gene encodes the catalytic subunit p110-alpha, one of the three catalytic subunit proteins of the class IA PI-3 kinases that are usually activated by growth factor receptor tyrosine kinases.")
     (:MIS-MATCHES
      ("activated"
       (("controlled" "IA")
        (:REACH ((("controller" "growth factor receptor"))))))))
    ((:TEXT
      "Thus, the PIK3CA promoter contains a functional NF-kappaB binding site and can be activated by NF-kappaB.")
     (:MIS-MATCHES
      ("activated"
       (("controlled" "PIK3CA") (:REACH ((("controller" "NF-kappaB"))))))))
    ((:TEXT
      "Wnt ligands bind to cell-surface Frizzled receptors and LRP5/6 coreceptors and result in changes in phosphorylation of several intracellular signaling components with the subsequent accumulation of nonphosphorylated beta-catenin [XREF_BIBR - XREF_BIBR].")
     (:MIS-MATCHES ("nonphosphorylated" (("substrate" "beta-catenin") (:REACH)))))
    ((:TEXT
      "This common arrangement appears to provide a more stable and rigid packing solution than the alternative SOCS2 structure, potentially reflecting the greater selection for rapid induction and degradation responses in the CIS and SOCS1-SOCS 3 subfamily (for example, phosphorylation of the SOCS3 interface Y221 induces its degradation).")
     (:MIS-MATCHES
      ("phosphorylation" (("substrate" "SOCS3") (:REACH ((("site" "Y221"))))))))
    ((:TEXT
      "Dysfunction of this regulatory pathway may result in the accumulation of a hypophosphorylated stable form of beta-catenin in the cytoplasm (XREF_BIBR), from whence it translocates to the nucleus, binding to the high mobility group domain factors Tcf/LEF (XREF_BIBR) and stimulating transcription of target genes such as c-myc and cyclin D1 (XREF_BIBR).")
     (:MIS-MATCHES
      ("hypophosphorylated" (("substrate" "beta-catenin") (:REACH)))))
    
    ((:TEXT
      "In normal unstressed cells, the p53 protein is present at very low levels because of continuous degradation mediated by Mdm2, a protein that is also transcriptionally activated by p53 (XREF_BIBR).")
     (:MIS-MATCHES
      ("activated" (("controlled" "Mdm2") (:REACH ((("controller" "p53"))))))))
    ((:TEXT
      "Although some have suggested that BID may be the most relevant GzmB substrate during CTL attack, others have suggested that BID proteolysis is indirect and is mediated by caspase-3, which is also activated by GzmB (XREF_BIBR).")
     (:MIS-MATCHES
      ("activated"
       (("controlled" "caspase-3") (:REACH ((("controller" "GzmB"))))))))    

    ((:TEXT
      "Treatment with CIAP resulted in both membrane and cytosolic tuberin migrating faster, indicating that tuberin within the cytosolic fraction is hyperphosphorylated.")
     (:MIS-MATCHES ("hyperphosphorylated" (("substrate" "tuberin") (:REACH)))))
    ((:TEXT
      "Both studies differ in the antibodies used : in the first (Adeyinka et al, 2002), a polyclonal phospho-p44 and p42 (Thr 202/Tyr 204) antibody (New England Biolabs, Frankfurt a.m., Germany) was employed, whereas in the second (Gee et al, 2001), a polyclonal anti-ACTIVE (TM) MAPK antibody (Promega, Mannheim, Germany) for dually phosphorylated ERK1/2 forms was used.")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "ERK1/2") (:REACH)))))
    ((:TEXT
      "PEDF dependent JNK activation restored NFATc2 phosphorylation and localization to the cytoplasm in ECs activated by VEGF and bFGF.")
     (:MIS-MATCHES
      ("activated"
       (("controlled" "ECs")
        (:REACH ((("controller" "VEGF")) (("controller" "bFGF"))))))
      ("phosphorylation"
       (("substrate" "NFATc2") (:REACH ((("enzyme" "PEDF"))))))))
    
    ((:TEXT
      "Western blotting with the antibodies against active, dually phosphorylated JNK showed activation of the two JNK isoforms likely corresponding to the JNK-1 and JNK-2 (XREF_FIG b).")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "JNK") (:REACH)))))
    ((:TEXT
      "The MITF promoter is potently activated by beta-catenin in a manner dependent upon the TCF/LEF binding site based on deletion mutagenesis, consistent with point mutagenesis studies of XREF_BIBR.")
     (:MIS-MATCHES
      ("activated"
       (("controlled" "MITF") (:REACH ((("controller" "beta-catenin"))))))))
    ((:TEXT
      "4E-BP1 phosphorylation at Thr 37/46 was not different between men and women at baseline or during post-exercise recovery with exercise having no effect on post-exercise recovery 4E-BP1 phosphorylation (P> 0.05; data not shown).")
     (MIS-MATCHES
      ("phosphorylation"
       (("substrate" "4E-BP1") (:REACH ((("site" "Thr 37/46"))))))))
    ((:TEXT
      "The more acidic isoelectric point (pI) of the P2 pool indicates that apart from being phosphorylated at Y418, this fraction of c-Src is phosphorylated at additional residues.")
     (MIS-MATCHES ("phosphorylated" (("substrate" "c-Src") (:REACH)))))
    ((:TEXT
      "Because Chk2 was not significantly activated in Saos-2 cells in our experiments, it is very likely that Ser612Pro613 of RB can be phosphorylated directly by BGLF4.")
     (MIS-MATCHES
      ("phosphorylated"
       (("substrate" "Ser612Pro613") (:REACH ((("enzyme" "BGLF4")))))
       (("substrate" "RB") (:REACH ((("enzyme" "BGLF4"))))))))
    ((:TEXT
      "These data indicate that Ppargamma acetylation and Ser273 phosphorylation are coordinately promote adipokine production, while deacetylation is the main signal affecting brown gene expression.")
     (MIS-MATCHES
      ("phosphorylation"
       (("substrate" "Ppargamma") (:REACH ((("site" "Ser273"))))))))
    ((:TEXT
      "We found that transgenic Themis2 is also rapidly tyrosine phosphorylated in thymocytes following stimulation with anti-CD3+ anti-CD4 (XREF_FIG).")
     (MIS-MATCHES
      ("phosphorylated"
       (("substrate" "Themis2") (:REACH ((("site" "tyrosine"))))))))
    ((:TEXT
      "Mdc1 is recruited via its binding to phosphorylated C-terminal end of gamma-H2AX XREF_BIBR, XREF_BIBR.")
     (MIS-MATCHES ("phosphorylated" (("substrate" "gamma-H2AX") (:REACH)))))
    ((:TEXT
      "15 ERalpha, a member of the steroid hormone receptor superfamily, is activated by estrogen and has important roles in normal development and tumorigenesis of the breast.")
     (MIS-MATCHES
      ("activated"
       (("controlled" "ERalpha") (:REACH ((("controller" "estrogen"))))))))
    ((:TEXT
      "After their activation by phosphorylation, TBK1 and IKK-epsilon (also known as IKKi [XREF_BIBR; XREF_BIBR]) normally phosphorylate their target transcription factor, IRF3 (XREF_BIBR; XREF_BIBR).")
     (MIS-MATCHES
      ("phosphorylation" (("substrate" "TBK1") (:REACH))
                         (("substrate" "IKK-epsilon") (:REACH)))))
    ((:TEXT
      "In addition to p130 CAS, a known substrate of PTP-PEST, other focal adhesion proteins were found to be hyperphosphorylated, FAK and paxillin.")
     (MIS-MATCHES
      ("hyperphosphorylated" (("substrate" "FAK") (:REACH))
                             (("substrate" "paxillin") (:REACH)))))
    ((:TEXT
      "Consistent with previous reports, mTOR inhibitors did not negatively affect the production of the pro inflammatory cytokines IL-12p70 and TNFalpha by LPS activated DCs, but did inhibit IL-10 production (XREF_FIG) (XREF_BIBR, XREF_BIBR).")
     (MIS-MATCHES
      ("activated" (("controlled" "DCs") (:REACH ((("controller" "LPS"))))))))
    ((:TEXT
      "We demonstrate that pharmacological inhibition of mTOR prolongs the lifespan of TLR activated mouse DCs and extends the time period over which they exhibit an activated phenotype.")
     (MIS-MATCHES
      ("activated" (("controlled" "DCs") (:REACH ((("controller" "TLR"))))))))
    ((:TEXT
      "Specifically, it was found that the dephosphorylation of histone H3 (phospho-serine 10) correlated exactly with the kinetics of DUSP1 and MKP -1 protein induction in response to thrombin and vascular endothelial growth factor.")
     (MIS-MATCHES ("dephosphorylation" (("substrate" "histone H3") (:REACH)))))
    ((:TEXT
      "Loss-of-function experiments using siRNA knockdown of MKPs showed that DUSP2 (PAC1), DUSP4 and MKP -2 and DUSP5 are indeed employed in a sustained MEK stimulus specific manner and regulate nuclear dephosphorylation and nuclear accumulation of ERK [XREF_BIBR, XREF_BIBR].")
     (MIS-MATCHES ("dephosphorylation" (("substrate" "ERK") (:REACH)))))
    ((:TEXT
      "First, competition for MAPK CD motif association, which would disrupt the MAPK-MKP interaction and allow MKK mediated reactivation (this may explain how overexpression of the nuclear ERK partner, Mxi2, prolongs ERK phosphorylation responses [XREF_BIBR]).")
     (MIS-MATCHES ("phosphorylation" (("substrate" "ERK") (:REACH)))))
    ((:TEXT
      "In an analogous mechanism to KIM acetylation, the cytoplasmic ERK and p38 phosphatase, DUSP9/MKP-4, is phosphorylated by protein kinase A on Ser58 [XREF_BIBR].")
     (MIS-MATCHES
      ("phosphorylated"
       (("substrate" "DUSP9/MKP-4,")
        (:REACH ((("enzyme" "protein kinase A") ("site" "Ser58"))))))))
    ((:TEXT
      "YY-TLR3 and YF-TLR3 (which has a Phe substitution at Tyr 858), but not FY-TLR3 (which has a Phe substitution at Tyr 759) or FF-TLR3 (which has Phe substitutions at Tyr 759 and Tyr 858), were phosphorylated by Src (XREF_FIG).")
     (MIS-MATCHES
      ("phosphorylated"
       (("substrate" "YF-TLR3") (:REACH ((("enzyme" "Src") ("site" "Phe"))))))))
    ((:TEXT
      "It has been shown that the phosphorylation of p53 and p53 transactivation targets such as p21 and Bax occur as a result of a high concentration (50 mug/ml) of nano-TiO 2 exposure in human peripheral blood lymphocytes (XREF_BIBR).")
     (MIS-MATCHES ("phosphorylation" (("substrate" "p53") (:REACH)))))
    ((:TEXT
      "Detection with phosphoamino acid specific antibodies revealed that, in addition to Ser780, phosphorylation of the DNA damage responsive Ser612 on RB was enhanced by BGLF4.")
     (MIS-MATCHES
      ("phosphorylation"
       (("substrate" "RB") (:REACH ((("enzyme" "BGLF4") ("site" "Ser612"))))))))
    ((:TEXT
      "BGLF4 phosphorylates and induces the degradation of Cdk inhibitor p27 KIP upon lytic EBV replication, contributing to the establishment of an S-phase cellular environment, which is favorable for viral replication XREF_BIBR.")
     (MIS-MATCHES
      ("phosphorylates"
       (("substrate" "p27 KIP") (:REACH ((("enzyme" "BGLF4"))))))))
    ((:TEXT
      "The nuclear distribution of murine Mx1 is similar to HIPK2 and PKM, but a direct interaction of the Mx protein with HIPK2 and PKM and phosphorylation of Mx by HIPK2 and PKM could not be demonstrated so far [XREF_BIBR].")
     (:MIS-MATCHES
      ("phosphorylation"
       (("substrate" "Mx") (:REACH ((("enzyme" "PKM")) (("enzyme" "HIPK2"))))))))
    ((:TEXT
      "The BGLF4 mediated activation of TIP60 is required for autophosphorylation of ATM and expression of lytic genes, suggesting BGLF4 plays an essential role in the upstream process of DNA damage signaling, to facilitate viral replication.")
     (MIS-MATCHES
      ("autophosphorylation"
       (("substrate" "ATM") (:REACH ((("enzyme" "ATM"))))))))
    ((:TEXT
      "Therefore, we decided to clarify the RB phosphorylation pattern and its downstream signaling in cells expressing BGLF4.")
     (MIS-MATCHES ("phosphorylation" (("substrate" "RB") (:REACH)))))
    ((:TEXT
      "To this end, we first examined the RB phosphorylation pattern in EBV positive Akata (XREF_FIG) and NA cells (data not shown) upon reactivation.")
     (MIS-MATCHES ("phosphorylation" (("substrate" "RB") (:REACH)))))
    ((:TEXT
      "We assumed the RB phosphorylation pattern observed here does not contribute to cell cycle progression.")
     (MIS-MATCHES ("phosphorylation" (("substrate" "RB") (:REACH)))))
    ((:TEXT
      "Here, we also demonstrate similar RB phosphorylation patterns in EBV positive Akata (XREF_FIG) and NA (data not shown) cells after lytic cycle reactivation.")
     (MIS-MATCHES
      ("phosphorylation" (("substrate" "NA") (:REACH ((("enzyme" "RB"))))))))
    ((:TEXT
      "This would explain why p130 CAS is so hyperphosphorylated in the PTP-PEST (-/-) cells, and why the difference in affinity is greater with the Src SH2 domain compared with the Crk SH2 domain, even though there are 15 putative binding domains for Crk compared with only one for Src on p130 CAS.")
     (:MIS-MATCHES ("hyperphosphorylated" (("substrate" "p130 CAS") (:REACH)))))
    ((:TEXT
      "In addition to p130 CAS, a known substrate of PTP-PEST, other focal adhesion proteins were found to be hyperphosphorylated, FAK and paxillin.")
     (:MIS-MATCHES
      ("hyperphosphorylated" (("substrate" "FAK") (:REACH))
                             (("substrate" "paxillin") (:REACH)))))
    ((:TEXT
      "In contrast, unlike paxillin, Hic-5 is not tyrosine phosphorylated during cell adhesion and consequently is unable to bind the SH2 domain containing adaptor, Crk (XREF_BIBR).")
     (:MIS-MATCHES
      ("phosphorylated"
       (("substrate" "Hic-5") (:REACH ((("site" "tyrosine"))))))))
    ((:TEXT
      "This phenomenon appears to be due in part to a constitutive increase in tyrosine phosphorylation of p130 CAS, a known PTP-PEST substrate, paxillin, which associates with PTP-PEST in vitro, and focal adhesion kinase (FAK).")
     (:MIS-MATCHES
      ("phosphorylation"
       (("substrate" "paxillin") (:REACH ((("site" "tyrosine"))))))))
    ((:TEXT
      "These kinases phosphorylate the paxillin fusion protein on residues that are also phosphorylated on paxillin in vivo in response to integrin mediated cell adhesion (XREF_BIBR, XREF_BIBR; XREF_BIBR), as well as a coprecipitating 95-kD protein that was heavily phosphorylated on both tyrosine and serine residues (XREF_BIBR).")
     (:MIS-MATCHES ("phosphorylate" (("substrate" "paxillin") (:REACH)))))))
