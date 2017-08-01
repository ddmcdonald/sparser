(in-package :sparser)
(defparameter *rsm-r-other-bad*
  '(
    

    ((:TEXT
      "Moreover, also Ku70 serin phosphorylation pattern was affected by IL-6 treatment, as shown by western blot analysis of cytoplasmic extracts co-immunoprecipitated with anti-Ku70 antibody and probed with anti-phosphoserin antibody (XREF_FIG).")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "serin") (:REACH)))))
    ((:TEXT
      "The increased Ku70 fraction bound to Bax correlated to the Ku70 serin phosphorylated pattern raise (XREF_FIG).")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "serin") (:REACH)))))
    ((:TEXT
      "Pak phosphorylates two mediators of the MAP kinase pathway, MEK1 and Raf1, at Ser298 and at Ser338, respectively [XREF_BIBR - XREF_BIBR].")
     (:MIS-MATCHES
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
      "We also explored the hypothesis that phosphorylation might regulate the deacetylase activity of SIRT1, as it is known to do with other classes of protein deacetylases, such as HDAC1 and HDAC2 XREF_BIBR, XREF_BIBR.")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "SIRT1") (:REACH)))))
    ((:TEXT
      "Although we expected that phosphorylation by Cdk1, an M-phase kinase, would alter the percentage of Sirt1-/- ES cells in M-phase, there was no difference compared to Sirt1 +/+ ES cells (XREF_FIG).")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "ES") (:REACH)))))
    ((:TEXT
      "FOXO transcription factors are phosphorylated by Akt which leads to cytoplasmic retention and impairment of FOXO nuclear transcriptional activity 6.")
     (:MIS-MATCHES
      ("phosphorylated" (("substrate" "FOXO") (:REACH ((("enzyme" "Akt"))))))))
    ((:TEXT
      "Several lines of evidence suggest that S/T phosphorylation may regulate p120 activity, but the upstream kinases involved have not been established, nor has a discreet measurable function been assigned to an individual site.")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "S/T") (:REACH)))))
    
    ((:TEXT
      "Several lines of evidence suggest that S/T phosphorylation regulates p120 activity, but the upstream kinases involved have not been established nor has a discreet measurable function been assigned to an individual site.")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "S/T") (:REACH)))))
    ((:TEXT
      "Studies in NIH3T3 fibroblasts have shown that Raf-1, a kinase upstream of ERK, is directly phosphorylated by PKCalpha in response to TPA treatment [XREF_BIBR].")
     (:MIS-MATCHES
      ("phosphorylated" (("substrate" "Raf-1") (:REACH ((("enzyme" "PKCalpha")))))
                        (("substrate" "ERK") (:REACH ((("enzyme" "PKCalpha"))))))))
    
    ((:TEXT
      "Involvement of EGFR in H. pylori mediated phosphorylation of PDK1 and AKT signalling.")
     (:MIS-MATCHES
      ("phosphorylation" (("substrate" "PDK1") (:REACH ((("enzyme" "EGFR")))))
                         (("substrate" "AKT") (:REACH ((("enzyme" "EGFR"))))))))
    ((:TEXT
      "In these cells, EGFR was constitutively detected with the ERK consensus site phosphorylation specific antibody and EGF induced EGFR downregulation was modest, but was substantially enhanced by pretreatment with MEK1 and ERK inhibitor.")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "ERK") (:REACH)))))
    ((:TEXT
      "This hypothesis is supported by recent studies showing that nutlin, a small molecule inhibitor of MDM2, can reactivate p53 function and induce cell death of retinoblastoma cells [XREF_BIBR, XREF_BIBR].")
     (:MIS-MATCHES
      ("reactivate"
       (("controlled" "p53")
        (:REACH ((("controller" "MDM2")) (("controller" "nutlin"))))))))
    ((:TEXT
      "The same eleven sites were detected in denatured samples of monomer phosphorylated prior to filament formation (XREF_FIG, Column 2 - pre-poly.)")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "filament") (:REACH)))))
    ((:TEXT
      "The second was at low protein concentrations, equivalent to conditions used to phosphorylate \" pre-assembled tau \" but without ARA.")
     (:MIS-MATCHES ("phosphorylate" (("substrate" "ARA") (:REACH)))))
    ((:TEXT
      "We conclude that tau filaments are a good substrate for GSK-3beta and phosphorylation can be detected at a minimum of five sites.")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "GSK-3beta") (:REACH)))))
    ((:TEXT
      "mTOR inhibitors were observed to similarly stabilize the expression of CD80, MHC-I, and MHC-II on LPS activated DCs (data not shown).")
     (:MIS-MATCHES
      ("activated" (("controlled" "DCs") (:REACH ((("controller" "LPS"))))))))
    ((:TEXT
      "XREF_FIG shows that baseline phosphorylation of Spry2 is increased in response to FGF2 in cells expressing WT FGFR3, while the increased amount of Spry2 detected in cells expressing TDII FGFR3 is maximally phosphorylated independent of FGF2 treatment.")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "Spry2") (:REACH)))))
    ((:TEXT
      "HIF-1alpha activates the transcription of vascular endothelial growth factor (VEGF), a key factor in tumor angiogenesis, and the expression of glucose transporters, glycolytic enzymes, and growth factors, which may promote tumor cell survival under hypoxic conditions [XREF_BIBR].")
     (:MIS-MATCHES
      ("activates"
       (("controlled" "expression of glucose")
        (:REACH ((("controller" "HIF-1alpha"))))))))
    ((:TEXT
      "Various explanations may be offered for the appearance of these bands in western blots, including longer splice variants (XREF_BIBR), formation of homo- or heterodimers (XREF_BIBR), phosphorylation or ubiquitination (XREF_BIBR) and complexes of ERalpha with any of its possible binding partners (XREF_BIBR).")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "ERalpha") (:REACH)))))
    ((:TEXT
      "This finding suggests that c-Myc phosphorylation on Ser 62 is important for increased cyclin B1 promoter activity by cyclin G1 (XREF_FIG).")
     (:MIS-MATCHES
      ("promoter activity"
       (("controlled" "B1") (:REACH ((("controller" "cyclin"))))))))
    ((:TEXT
      "Further, we suggest that these effects result in increased cyclin B1 promoter activation in cyclin G1 overexpressing cells, which are frequently observed in cancer cells (XREF_FIG).")
     (:MIS-MATCHES
      ("promoter
 activation"
       (("controlled" "cyclin") (:REACH ((("controller" "B1"))))))))
    ((:TEXT
      "Bacterial internalization can occur through activation of PDGFRbeta or through independent activation of Abl kinase, culminating in phosphorylation of the Rac guanine nucleotide exchange factor (GEF), Vav2, and two actin nucleators, WAVE2 and Cortactin.")
     (:MIS-MATCHES
      ("phosphorylation" (("substrate" "Cortactin") (:REACH))
                         (("substrate" "GEF") (:REACH)) (("substrate" "Vav2") (:REACH))
                         (("substrate" "guanine") (:REACH)) (("substrate" "actin") (:REACH))
                         (("substrate" "Rac") (:REACH)) (("substrate" "WAVE2") (:REACH)))))
    ((:TEXT
      "We confirmed the role of Abl kinases in phosphorylating EB associated proteins by examining tyrosine phosphorylation of C. trachomatis infected Abl and Arg -/- cells or Abl siRNA depleted HeLa cells.")
     (:MIS-MATCHES
      ("phosphorylating" (("substrate" "EB") (:REACH ((("site" "tyrosine"))))))
      ("phosphorylation"
       (("substrate" "Abl") (:REACH ((("site" "Arg")) (("site" "tyrosine"))))))))
    ((:TEXT
      "A qualitative reduction in the amount of tyrosine phosphorylation of EGFP-TARP in the Abl and Arg -/- cells compared to the parental cells was noted (XREF_FIG).")
     (:MIS-MATCHES
      ("phosphorylation"
       (("substrate" "EGFP-TARP") (:REACH ((("site" "Arg"))))))))
    ((:TEXT
      "Our screen confirmed some previously known host targets and has, most importantly, identified for the first time the activation of PDGFR and Abl kinase signaling pathways as key events in the pathogenesis of C. trachomatis infections.")
     (:MIS-MATCHES
      ("activation" (("controlled" "PDGFR") (:REACH ((("controller" "Abl"))))))))
    ((:TEXT
      "Activation of these kinases culminates in phosphorylation of the Rac guanine nucleotide exchange factor, Vav2, and several actin nucleators, including WAVE2 and Cortactin, that ultimately promote efficient uptake of this obligate intracellular parasite.")
     (:MIS-MATCHES
      ("phosphorylation" (("substrate" "guanine") (:REACH))
                         (("substrate" "Rac") (:REACH)) (("substrate" "actin") (:REACH))
                         (("substrate" "Vav2") (:REACH)))))
    
    ((:TEXT
      "p130CAS function is dependent on tyrosine phosphorylation of its substrate domain (SD).")
     (:MIS-MATCHES
      ("phosphorylation" (("substrate" "SD") (:REACH ((("site" "tyrosine"))))))))
    
    ((:TEXT
      "ERK5 activates NFkappaB by causing IkappaB degradation, a process that is regulated by ribosomal S6 kinase 2 (RSK2).")
     (:MIS-MATCHES
      ("activates"
       (("controlled" "IkappaB") (:REACH ((("controller" "ERK5"))))))))
    ((:TEXT
      "However, RSK2 phosphorylates IkappaB on S32, but not S36, which is necessary but not sufficient for IkappaB degradation (XREF_BIBR; XREF_BIBR).")
     (:MIS-MATCHES
      ("phosphorylates"
       (("substrate" "IkappaB") (:REACH ((("enzyme" "RSK2") ("site" "S36"))))))))
    ((:TEXT
      "This function is facilitated through binding and activation of cyclin dependent kinases (CDK) 4 and 6, with phosphorylation of the retinoblastoma protein (Rb), and release of sequestered transcription factors such as E2F [XREF_BIBR, XREF_BIBR].")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "Rb") (:REACH)))))
    ((:TEXT
      "Three different, partly interacting signalling pathways have been identified in mammalian cells, leading to the activation of three types of MAP kinases : the MAP kinase JNK (Jun kinase) phosphorylates c-Jun, JunB, ATF2 and ELK1, etc., P38 activates ATF2, ELK-1 and MAX, whereas ERK1 and ERK2 phosphorylate c-Myc, SAP-1, Fra-1 and Fra-2, etc..")
     (:MIS-MATCHES
      ("phosphorylates"
       (("substrate" "ATF2") (:REACH ((("enzyme" "MAP")) (("enzyme" "Jun")))))
       (("substrate" "JunB") (:REACH ((("enzyme" "MAP")) (("enzyme" "Jun")))))
       (("substrate" "ELK1") (:REACH ((("enzyme" "MAP")) (("enzyme" "Jun")))))
       (("substrate" "c-Jun") (:REACH ((("enzyme" "Jun")) (("enzyme" "MAP"))))))))
    
    ((:TEXT
      "c-Jun and JunB are phosphorylated by the Jun N-terminal kinase JNK (Mechta-Grigoriou et al, 2001).")
     (:MIS-MATCHES
      ("phosphorylated" (("substrate" "JunB") (:REACH ((("enzyme" "Jun")))))
                        (("substrate" "c-Jun") (:REACH ((("enzyme" "Jun"))))))))
    ((:TEXT
      "This increase in migration occurs via the tyrosine phosphorylation of an adapter protein, p130 CAS (XREF_BIBR).")
     (:MIS-MATCHES
      ("phosphorylation"
       (("substrate" "protein") (:REACH ((("site" "tyrosine"))))))))
    
    ((:TEXT
      "Second, the FAK homologue Pyk2 is activated by DDR1 and this activation is essential for the full response of BxPC3 cells to collagen I.")
     (:MIS-MATCHES
      ("activated" (("controlled" "FAK") (:REACH ((("controller" "DDR1"))))))))
    ((:TEXT
      "The signal transduction pathways activated by ErbB receptors include well-known signaling cascades such as the Ras-Erk1/2 pathway, the phospholipase Cgamma protein kinase C pathway, the phosphatidyl inositol 3 (PI 3)-kinase-Akt pathway, and STAT signaling.")
     (:MIS-MATCHES
      ("activated"
       (("controlled" "signal transduction pathways")
        (:REACH ((("controller" "ErbB"))))))))
    ((:TEXT
      "Cbl can bind EGFR either directly by binding to phosphorylated Y1045, or indirectly via the adaptor protein Grb2, which binds to phosphorylated Y1068 and Y1086 (Levkowitz et al..")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "Grb2") (:REACH)))))
    ((:TEXT
      "The EGF activated EGFR is also associated with Cbl in early endosomes, resulting in continued ubiquitination of EGFR (Duan et al..")
     (:MIS-MATCHES
      ("activated"
       (("controlled" "EGFR is also associated with Cbl")
        (:REACH ((("controller" "EGF"))))))))
    ((:TEXT
      "The process resulted in the formation of EGFR positive tubular structures, and it was dependent on actin reorganization, receptor phosphorylation, PI 3-kinase activity, and dynamin 2.")
     (:MIS-MATCHES
      ("phosphorylation" (("substrate" "actin") (:REACH))
                         (("substrate" "PI") (:REACH)) (("substrate" "dynamin 2") (:REACH)))))
    ((:TEXT
      "Furthermore, co-expression of a dominant negative mutant of STAT3 (STAT3 (Y705F)) that can not be phosphorylated on this tyrosine was sufficient to reduce the G-CSF and G-CSFR-dependent activation of the -184/+248-luc or of the -184/-58-mintk-luc reporter gene constructs (XREF_FIG F and data not shown).")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "STAT3") (:REACH)))))
    ((:TEXT
      "Of the three tested C/EBP proteins, C/EBPalpha and C/EBPbeta activated the -184 to +248 MAD1 promoter fragment strongly, while C/EBPepsilon was a poor stimulator (XREF_FIG A).")
     (:MIS-MATCHES
      ("activated"
       (("controlled" "MAD1")
        (:REACH ((("controller" "C/EBPbeta")) (("controller" "C/EBPalpha"))))))))
    ((:TEXT
      "The fourth C/EBP family member analyzed, C/EBPbeta, was capable to activate the MAD1 reporter genes in a CCAAT-box-dependent manner and bound to the promoter in cells (XREF_FIG).")
     (:MIS-MATCHES
      ("activate"
       (("controlled" "MAD1")
        (:REACH ((("controller" "C/EBPbeta")) (("controller" "C/EBP"))))))))
    ((:TEXT
      "Immunolocalisation of phosphorylated STAT3, interleukin 11 and leukaemia inhibitory factor in endometrium of women with unexplained infertility during the implantation window.")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "interleukin 11") (:REACH)))))
    ((:TEXT
      "Reduced IL-11 production and STAT3 phosphorylation may contribute to unexplained infertility in some women.")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "IL-11") (:REACH)))))
    ((:TEXT
      "The observation that BID is a poor substrate for mGzmB suggests that this protease does not efficiently activate the BID pathway to cell death in the mouse.")
     (:MIS-MATCHES
      ("activate"
       (("controlled" "cell death") (:REACH ((("controller" "protease"))))))))
    ((:TEXT
      "Here we show that type Igamma phosphatidylinositol phosphate kinase (PIPKIgamma) directly binds to E-cadherin and modulates E-cadherin trafficking.")
     (:MIS-MATCHES
      ("phosphate kinase (PIPKIgamma) directly binds to E-cadherin"
       (NIL (:REACH ((("theme" "phosphate") ("theme" "E-cadherin"))))))
      ("phosphatidylinositol phosphate kinase (PIPKIgamma) directly binds to E-cadherin"
       (NIL
        (:REACH ((("theme" "phosphatidylinositol") ("theme" "E-cadherin"))))))))
    ((:TEXT
      "Recent evidence suggests that Rab11 (XREF_BIBR), p120-catenin, ARF6, tyrosine phosphorylation, and ubiquitination (XREF_BIBR) all control the trafficking and assembly of E-cadherin in mammalian cells.")
     (:MIS-MATCHES
      ("phosphorylation"
       (("substrate" "p120-catenin") (:REACH ((("site" "tyrosine")))))
       (("substrate" "ARF6") (:REACH ((("site" "tyrosine"))))))))
    ((:TEXT
      "For example, p73 can bind to and activate various p53 target genes, and can induce growth arrest or apoptosis when over-expressed [XREF_BIBR, XREF_BIBR].")
     (:MIS-MATCHES
      ("activate" (("controlled" "p53") (:REACH ((("controller" "p73"))))))))
    ((:TEXT
      "The guanine nucleotide exchange factor, Tiam1, specifically activates the Rho like GTPase Rac (Michiels et al, 1995) and Tiam1-Rac signaling affects cell migration (Hordijk et al, 1997; Sander et al, 1998), invasion (Michiels et al, 1995; Keely et al, 1997; Engers et al, 2001), and metastasis (Habets et al, 1994) of tumour cells.")
     (:MIS-MATCHES
      ("activates" (("controlled" "Rho") (:REACH ((("controller" "guanine"))))))))
    ((:TEXT
      "Also, Cdc6-wt, p49-tCdc6, and p32-tCdc6 but not Cdc6-AAA were all similarly phosphorylated when they were prepared from cells that coexpressed cyclin A. Phosphorylation was prevented in cells expressing Cdk2-DN (XREF_FIG).")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "Cdc6-wt") (:REACH)))
      ("Phosphorylation" (("substrate" "cyclin") (:REACH)))))
    
    ((:TEXT
      "We asked whether an uncleavable mutant of Cdc6 (Cdc6-UM) has the effects described for tCdc6 that disturb Mcm2 loading to the chromatin and activate DNA damage sensing kinase activity and proapoptotic effect.")
     (:MIS-MATCHES
      ("activate"
       (("controlled" "DNA damage") (:REACH ((("controller" "Cdc6"))))))))
    ((:TEXT
      "In particular, we show that Cdc6 truncation impairs Mcm2 loading onto chromatin and subsequently activates DNA damage sensing kinase activities that may be linked to p53-Bax-mediated programmed cell death.")
     (:MIS-MATCHES
      ("activates"
       (("controlled" "DNA damage") (:REACH ((("controller" "Cdc6"))))))))
    ((:TEXT
      "When released, Cdc14 inactivates cyclin B-Cdk while activating the anaphase promoting complex (APC) that targets the destruction of mitosis specific cyclins [XREF_BIBR, XREF_BIBR].")
     (:MIS-MATCHES
      ("inactivates"
       (("controlled" "cyclin") (:REACH ((("controller" "Cdc14"))))))))
    ((:TEXT
      "In further support of similarities in function is the finding that hCdc14A can, like Cdc14 in S. cerevisiae, activate the anaphase promoting complex (APC) in late anaphase by dephosphorylating the APC co-factor Cdh1 [XREF_BIBR] and dephosphorylate substrates of cyclin dependent kinases [XREF_BIBR, XREF_BIBR, XREF_BIBR].")
     (:MIS-MATCHES ("dephosphorylate" (("substrate" "cyclin") (:REACH)))))
    ((:TEXT
      "alpha-Smooth Muscle Actin alpha-SMA 5-bromo-2 '-deoxyuridine BrdU cyclin D1 gene CCND1 Connective Tissue Growth Factor CTGF Extracellular Matrix ECM Fetal Calf Serum FCS Fluorescence Activated Cell Sorting FACS Farnesylpyrophosphate FPP Geranylgeranylpyrophosphate GGPP Glyceraldehyde-3-phosphate dehydrogenase GAPDH Guanine nucleotide binding regulatory protein G protein Guanosine triphosphatase GTPase 3 hydroxy3methylglutaryl Coenzyme A HMG CoA Idiopathic Pulmonary Fibrosis IPF Phosphate buffered saline PBS Reverse Transcription Polymerase Chain Reaction RT-PCR Serum-free DMEM media SF-DMEM Suppressor of cytokine Signalling SOCS Transforming Growth Factor-beta1 TGF-beta1 Competing interests.")
     (:MIS-MATCHES
      ("Activated"
       (("controlled" "Phosphate") (:REACH ((("controller" "Actin")))))
       (("controlled" "CoA") (:REACH ((("controller" "Actin"))))))))
    ((:TEXT
      "Specifically, Nef was reported to associate with Vav (XREF_BIBR) and activate p21 activated serine threonine kinases (PAKs), possibly though the activation of Rac or CDC42 (XREF_BIBR).")
     (:MIS-MATCHES
      ("activated" (("controlled" "Rac") (:REACH ((("controller" "p21")))))
                   (("controlled" "CDC42") (:REACH ((("controller" "p21"))))))))
    
    ((:TEXT "Tuberin contains multiple S/T phosphorylation sites (XREF_FIG).")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "S/T") (:REACH)))))
    ((:TEXT
      "However, the T1462A single mutant partitioned in the cell similarly to wild-type tuberin (XREF_FIG), indicating that T1462 phosphorylation was not directing translocation of tuberin from the membrane to the cytosol.")
     (:MIS-MATCHES ("phosphorylation" (("substrate" "tuberin") (:REACH)))))
    ((:TEXT
      "Previously, AKT was shown to directly phosphorylate and inhibit tuberin function upon stimulation with growth factors (XREF_BIBR).")
     (:MIS-MATCHES ("phosphorylate" (("substrate" "tuberin") (:REACH)))))
    
    ((:TEXT
      "53BP1 is involved in the phosphorylation of various ataxia telangiectasia mutated protein (ATM) substrates such as cell cycle checkpoint kinase 2 (CHEK2) [XREF_BIBR, XREF_BIBR].")
     (:MIS-MATCHES
      ("phosphorylation"
       (("substrate" "ataxia telangiectasia mutated") (:REACH)))))
    ((:TEXT
      "The MAPK kinase kinase kinases of the first level are phosphorylated in response to various extracellular stimuli through interaction with small GTP binding proteins like Ras, Raf, etc..")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "MAPK") (:REACH)))))
    
    ((:TEXT
      "The activated enzymes then phosphorylate one of 14 kinases of the second level (the MAPKKKs, that is, Raf proteins, MEKK1-4, etc.), which themselves activate one of the MAPK kinases (MEK1 and 2, MKK3-7) of the third level.")
     (:MIS-MATCHES ("phosphorylate" (("substrate" "Raf") (:REACH)))))
    ((:TEXT
      "In mouse keratinocytes, ocadaic acid treatment leads to phosphorylation of JunD and FosB by ERK and subsequent activation of an AP-1-responsive promoter (Rosenberger et al, 1999).")
     (:MIS-MATCHES
      ("phosphorylation" (("substrate" "FosB") (:REACH ((("enzyme" "acid")))))
                         (("substrate" "JunD") (:REACH ((("enzyme" "acid"))))))))
    
    ((:TEXT
      "The Fos related antigens Fra-1 and Fra-2 are phosphorylated by MAPK in vitro, which leads to stabilisation, strong conformational change and an increase in DNA binding affinity (Gruda et al, 1994).")
     (:MIS-MATCHES
      ("phosphorylated" (("substrate" "Fos") (:REACH ((("enzyme" "MAPK"))))))))
    ((:TEXT
      "The correlations found for the nonphosphorylated ERK proteins with c-Fos and Fra-2 expression (XREF_TABLE) might not reflect an effect of MAP kinases on AP-1 proteins, since these associations were not found with the activated enzymes, but rather point to a regulation of ERK expression by AP-1 or common regulatory mechanisms.")
     (:MIS-MATCHES ("nonphosphorylated" (("substrate" "ERK") (:REACH)))))
    
    ((:TEXT
      "Tat independent activation of the HIV LTR by TSA has been documented both in vitro using chromatinized templates, and in vivo using cell lines containing integrated HIV genomes defective for Tat mediated transactivation [XREF_BIBR, XREF_BIBR, XREF_BIBR].")
     (:MIS-MATCHES
      ("activation" (("controlled" "LTR") (:REACH ((("controller" "Tat"))))))))
    ((:TEXT
      "Since HIV-1 Env protein may activate DOCK2 controlled signaling pathways through binding to chemokine receptors such as CXCR4, env defective, VSV-G-pseudotyped viruses were used in these experiments.")
     (:MIS-MATCHES
      ("activate"
       (("controlled" "DOCK2") (:REACH ((("controller" "Env protein"))))))))
    ((:TEXT
      "Both JNK activation by VEGF and its PEDF dependent increase persisted for 1 h (unpublished data).")
     (:MIS-MATCHES
      ("activation" (("controlled" "JNK") (:REACH ((("controller" "PEDF"))))))))
    
    ((:TEXT
      "Moreover, Rac activation by DOCK2 facilitates T cell responsiveness to antigen, as disrupted Rac activation in DOCK2 (-/-) and Rac2 (-/-) mice is associated with defective immunological synapse formation and depressed antigen specific responses (XREF_BIBR; XREF_BIBR).")
     (:MIS-MATCHES
      ("activation" (("controlled" "DOCK2") (:REACH ((("controller" "Rac"))))))))
    ((:TEXT
      "In parallel, pRb protein and Ser795 phosphorylation diminished almost completely after irradiation on polystyrene, whereas on FN the strong Ser795 phosphorylation remained unchanged.")
     (:MIS-MATCHES
      ("phosphorylation" (("substrate" "pRb") (:REACH ((("site" "Ser795"))))))))
    ((:TEXT
      "The kinase activity coimmunoprecipitated with CK8 and 18 and phosphorylated immunoprecipitates of the CK.")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "CK") (:REACH)))))
    
    ((:TEXT
      "The observed ILK overexpression was accompanied by a constitutive phosphorylation of the ILK downstream targets PKBalpha and Akt and GSK-3beta.")
     (:MIS-MATCHES
      ("phosphorylation" (("substrate" "Akt") (:REACH))
                         (("substrate" "ILK") (:REACH)) (("substrate" "GSK-3beta") (:REACH)))))

    ((:TEXT
      "Phosphorylation involves the reversible covalent attachment of a phosphate group to serine, threonine, or tyrosine residues on proteins, whereas nitrosylation involves the reversible covalent attachment of an NO group to cysteine residues.")
     (:MIS-MATCHES
      ("Phosphorylation"
       (("substrate" "phosphate") (:REACH ((("site" "threonine"))))))))
    ((:TEXT "HIPK2 activates p53 mediated transcription.")
     (:MIS-MATCHES
      ("HIPK2 activates p53-mediated transcription"
       (("controlled" "HIPK2 activates p53-mediated transcription")
        (:REACH ((("controller" "p53"))))))))
    ((:TEXT
      "Since HIPK2 contains a serine/threonine kinase domain and since multiple serine/threonine phosphorylation sites are present in p53 protein, we used antibodies that specifically detect single phosphorylated serine residues of p53 to look for a putative HIPK2 mediated phosphorylation of p53.")
     (:MIS-MATCHES
      ("phosphorylated"
       (("substrate" "p53") (:REACH ((("site" "serine residues"))))))))
    ((:TEXT
      "Similar to the decrease in the amount of p53 protein in the presence of the K221A mutant there was a decrease in phosphorylated p53 after treatment with doxorubicin.")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "doxorubicin") (:REACH)))))
    ((:TEXT
      "Taken together, HIPK2 is not sufficient for phosphorylation of p53 at serine residues 15 and 20, where doxorubicin seems to be required, and for phosphorylation of serine 392.")
     (:MIS-MATCHES
      ("phosphorylation"
       (("substrate" "p53") (:REACH ((("site" "serine residues"))))))))
    ((:TEXT
      "Only wildtype HIPK2 activated NFkappaB mediated transcription slightly but not significantly.")
     (:MIS-MATCHES
      ("HIPK2 activated NFkappaB-mediated transcription"
       (("controlled" "HIPK2 activated NFkappaB-mediated transcription")
        (:REACH ((("controller" "NFkappaB"))))))))
    
    ((:TEXT
      "The p53 responsive enhancer element becomes activated by HIPK2 in cell lines with p53 but not in a cell line devoid of p53.")
     (:MIS-MATCHES
      ("activated" (("controlled" "p53") (:REACH ((("controller" "HIPK2"))))))))
    ((:TEXT
      "The transcription activator Elk1 becomes phosphorylated and activated by the MAP (mitogen activated protein) kinase.")
     (:MIS-MATCHES
      ("activator"
       (("controlled" "transcription") (:REACH ((("controller" "Elk1"))))))))
    ((:TEXT
      "The conclusion is, that HIPK2 seems to activate components of the MAP kinase pathway.")
     (:MIS-MATCHES
      ("activate" (("controlled" "MAP") (:REACH ((("controller" "HIPK2"))))))))

    ((:TEXT
      "XREF_FIG a shows that cortactin is not constitutively tyrosine hyperphosphorylated in the PTP-PEST (-/-) cells, suggesting that it is not a direct or indirect substrate for this phosphatase.")
     (:MIS-MATCHES ("hyperphosphorylated" (("substrate" "PTP-PEST") (:REACH)))))
    ((:TEXT
      "Paxillin was shown to be hyperphosphorylated in FAK null cell lines, a mutation that was also associated with a decrease in cell mobility and increase in numbers of focal adhesions (XREF_BIBR).")
     (:MIS-MATCHES ("hyperphosphorylated" (("substrate" "FAK") (:REACH)))))
    ((:TEXT
      "Deletion of LD4 completely eliminated the 95- and 68-kD phosphorylated bands, consistent with the loss of binding of the p95PKL, PIX, and PAK complex.")
     (:MIS-MATCHES
      ("phosphorylated" (("substrate" "PAK") (:REACH)))))
    ((:TEXT
      "The p53 responsive enhancer element becomes activated by HIPK2 in cell lines with p53 but not in a cell line devoid of p53.")
     (:MIS-MATCHES
      ("activated" (("controlled" "p53") (:REACH ((("controller" "HIPK2"))))))))

    ((:TEXT
      "XREF_FIG a shows that cortactin is not constitutively tyrosine hyperphosphorylated in the PTP-PEST (-/-) cells, suggesting that it is not a direct or indirect substrate for this phosphatase.")
     (:MIS-MATCHES ("hyperphosphorylated" (("substrate" "PTP-PEST") (:REACH)))))
    ((:TEXT
      "Paxillin was shown to be hyperphosphorylated in FAK null cell lines, a mutation that was also associated with a decrease in cell mobility and increase in numbers of focal adhesions (XREF_BIBR).")
     (:MIS-MATCHES ("hyperphosphorylated" (("substrate" "FAK") (:REACH)))))
    ((:TEXT
      "Deletion of LD4 completely eliminated the 95- and 68-kD phosphorylated bands, consistent with the loss of binding of the p95PKL, PIX, and PAK complex.")
     (:MIS-MATCHES
      ("phosphorylated" (("substrate" "PAK") (:REACH))
                        (("substrate" "PIX") (:REACH)))))
    ((:TEXT
      "In addition, the phosphoamino acid analysis of immunoprecipitated beta-catenin showed that P-Ser was the major phosphorylated amino acid, and, as expected, the relative P-Ser content of beta-catenin in Ras transduced cells was much lower than that of parental cells (XREF_FIG b).")
     (:MIS-MATCHES
      ("phosphorylated" (("substrate" "beta-catenin") (:REACH))
                        (("substrate" "acid") (:REACH)) (("substrate" "Ras") (:REACH)))))
    ((:TEXT
      "The p120 Ras-GTPase activating protein (Ras-GAP) and p190 Rho-GAP (p190) have both been implicated in remodeling the actin cytoskeleton.")
     (:MIS-MATCHES
      ("activating" (("controlled" "p190") (:REACH ((("controller" "p120"))))))))
    ((:TEXT
      "In PTP-PEST (-/-) cells, this can cause Src to constitutively bind p130 CAS and hyperphosphorylate the Crk binding motifs on p130 CAS.")
     (:MIS-MATCHES ("hyperphosphorylate" (("substrate" "Crk") (:REACH)))))
    ((:TEXT
      "HIPK2, homeodomain interacting protein kinase 2; MAP, mitogen activated protein; Mdm2, murine double minute clone 2.")
     (:MIS-MATCHES
      ("activated"
       (("controlled" "Mdm2")
        (:REACH
         ((("controller" "HIPK2"))
          (("controller" "homeodomain-interacting protein kinase 2"))))))))
    ((:TEXT
      "Since the ligand for Ros is unknown, we used a chimerical receptor composed of the extracellular part of human TrkA and the intracellular domain of murine Ros (TrkA-Ros), which is activated in response to NGFbeta (Riethmacher et al. 1994).")
     (:MIS-MATCHES
      ("activated" (("controlled" "NGFbeta") (:REACH ((("controller" "Ros"))))))))
    ((:TEXT
      "The relative amounts of the increase of the p53 protein levels and the increase in doxorubicin induced phosphorylation of serine residue 15 are comparable and give rise to the assumption that the total amount of p53 protein present becomes phosphorylated under doxorubicin treatment.")
     (:MIS-MATCHES ("phosphorylated" (("substrate" "doxorubicin") (:REACH)))))
    ((:TEXT
      "These results demonstrate that nitric oxide selectively activates the stress activated p38 MAP kinase in human SH-SY5Y neuroblastoma cells.")
     (:MIS-MATCHES
      ("activates"
       (("controlled" "p38") (:REACH ((("controller" "nitric oxide")))))
       (("controlled" "MAP") (:REACH ((("controller" "nitric oxide"))))))))
    ((:TEXT
      "To understand where the tyrosine residues hyperphosphorylated on p130 CAS, paxillin, and FAK in the PTP-PEST (-/-) cells are, and to verify if these sites could be specific SH2 binding motifs, we examined the physical association of each of these proteins with a panel of SH2 domains in vitro.")
     (:MIS-MATCHES ("hyperphosphorylated" (("substrate" "PTP-PEST") (:REACH)))))
    ((:TEXT
      "In summary, we demonstrated that beta-NAD is protective against thrombin, LPS-and PLY- induced EC barrier dysfunction via cAMP activated PKA and EPAC1 and Rac1 dependent actin cytoskeleton rearrangement.")
     (MIS-MATCHES
      ("activated" (("controlled" "EPAC1") (:REACH ((("controller" "EC")))))
                   (("controlled" "PKA")
                    (:REACH ((("controller" "cAMP")) (("controller" "EC")))))
                   (("controlled" "Rac1") (:REACH ((("controller" "EC"))))))))
    ((:TEXT
      "Guanine nucleotide exchange factors (GEFs) activate GTPases by promoting the dissociation of GDP to allow the binding of GTP, which is available in great excess over GDP levels in the cytoplasm.")
     (MIS-MATCHES
      ("activate"
       (("controlled" "GTPases")
        (:REACH ((("controller" "Guanine")) (("controller" "GEFs")))))
       (("controlled" "GDP")
        (:REACH ((("controller" "Guanine")) (("controller" "GEFs"))))))))
    ((:TEXT
      "Our finding of decreased stability of SHP upon p53 overexpression is somewhat different from a recent report that stability of the SHP protein was increased in HepG2 cells treated with the p53 activator doxorubicin (DXR) XREF_BIBR.")
     (MIS-MATCHES
      ("activator"
       (("controlled" "p53") (:REACH ((("controller" "doxorubicin")))))
       (("controlled" "doxorubicin") (:REACH ((("controller" "p53"))))))))
    ((:TEXT
      "However, caveolin-1-deficient mice show increased VEGFR2 tyrosine phosphorylation and enhanced vascular permeability (XREF_BIBR).")
     (MIS-MATCHES
      ("phosphorylation"
       (("substrate" "vascular permeability") (:REACH ((("site" "tyrosine"))))))))
    ((:TEXT
      "In contrast, EGFR phosphorylated YY-TLR3 and FY-TLR3, but not YF-TLR3 or FF-TLR3 (XREF_FIG).")
     (MIS-MATCHES
      ("phosphorylated" (("substrate" "YY-TLR3") (:REACH ((("enzyme" "EGFR")))))
                        (("substrate" "YF-TLR3") (:REACH ((("enzyme" "EGFR")))))
                        (("substrate" "FF-TLR3") (:REACH ((("enzyme" "EGFR")))))
                        (("substrate" "FY-TLR3") (:REACH ((("enzyme" "EGFR"))))))))
    ((:TEXT
      "However, serine to alanine mutations on sites S 394, S 411, S 422 and S 424 significantly attenuated CSE induced HDAC2 phosphorylation while the C-terminal 88-amino acid deletion mutant (1-400) construct was only modestly phosphorylated suggesting serine sites S 422 and S 424 as crucial for CSE induced HDAC2 phosphorylation (XREF_FIG).")
     (MIS-MATCHES ("phosphorylated" (("substrate" "acid") (:REACH)))))
    ((:TEXT
      "Phosphorylation of RB on Ser612 but not Ser780 was more obvious at a later stage of the lytic cycle, suggesting it as a downstream effect of EBV elicited DDR in the cells (XREF_FIG A).")
     (MIS-MATCHES
      ("Phosphorylation" (("substrate" "RB") (:REACH ((("site" "Ser780"))))))))
    ((:TEXT
      "BGLF4 phosphorylates lamin A at amino acids 22, 390, 392, 652 and 657, leading to the disassembly and reorganization of the nuclear lamina XREF_BIBR.")
     (MIS-MATCHES
      ("phosphorylates" (("substrate" "lamin") (:REACH ((("enzyme" "BGLF4"))))))))
    ((:TEXT
      "Dephosphorylation of Ser273 by TZD is required to induce adiponectin (XREF_BIBR).")
     (MIS-MATCHES
      ("Dephosphorylation" (("substrate" "TZD") (:REACH ((("site" "Ser273"))))))))
    ((:TEXT
      "Rapamycin pre-treatment did not blunt phosphorylation of either STAT3 site induced by exogenous IL-6 (XREF_FIG).")
     (MIS-MATCHES
      ("phosphorylation" (("substrate" "STAT3") (:REACH ((("enzyme" "IL-6"))))))))
    ((:TEXT
      "Both A549 and CCD32 cells grown on polystyrene or FN demonstrated pronounced decreases in basal ILK and PKBalpha and Akt activity as well as GSK-3beta phosphorylation after incubation with these inhibitors indicating a PI3-K-dependent mechanism (XREF_FIG).")
     (MIS-MATCHES
      ("phosphorylation" (("substrate" "Akt") (:REACH))
                         (("substrate" "ILK") (:REACH)) (("substrate" "PKBalpha") (:REACH)))))
    ((:TEXT
      "Therefore, we concluded that Nef primarily activates Rac and not CDC42 in CD4 + T lymphocytes in the absence of antigenic stimuli.")
     (MIS-MATCHES
      ("activates" (("controlled" "CD4") (:REACH ((("controller" "Nef")))))
                   (("controlled" "CDC42") (:REACH ((("controller" "Nef"))))))))
    ((:TEXT
      "PEDF Decreased NFAT DNA Binding Activity and Blocked c-FLIP Gene Transcription by NFAT in the Activated Endothelium.")
     (MIS-MATCHES
      ("PEDF Decreased NFAT DNA Binding Activity and Blocked c-FLIP Gene Transcription"
       (("controlled"
         "PEDF Decreased NFAT DNA Binding Activity and Blocked c-FLIP Gene Transcription")
        (:REACH ((("controller" "c-FLIP"))))))))
    ((:TEXT
      "Lck silencing in Jurkat T cells was shown to impair Themis1 phosphorylation (XREF_BIBR) and Lyn was reported to bind constitutively to Themis2 in the Raw264.7 macrophages cell line (XREF_BIBR).")
     (MIS-MATCHES
      ("phosphorylation" (("substrate" "Lyn") (:REACH ((("enzyme" "Lck")))))
                         (("substrate" "Themis1") (:REACH ((("enzyme" "Lck"))))))))
    ((:TEXT
      "As expected, immunoprecipitated flag tagged HDAC2 was significantly phosphorylated on serine residues which was de-phosphorylated by pre-treating immunoprecipitated beads with lambda-phosphatase for 1 h at 30 degreesC prior to resolving samples on an SDS-polyacrylamide gel (XREF_FIG).")
     (MIS-MATCHES
      ("phosphorylated"
       (("substrate" "HDAC2") (:REACH ((("site" "serine residues"))))))))
    ((:TEXT
      "We noticed that substitution of these serine residues with alanines (c-Jun-S63A and S73A) greatly impaired the phosphorylation (XREF_FIG) and PES1 promoter activity (XREF_FIG), suggesting that phosphorylation of c-Jun is critical for activating PES1 expression.")
     (MIS-MATCHES ("phosphorylation" (("substrate" "PES1") (:REACH)))))
    ((:TEXT
      "Deletion of LD4 completely eliminated the 95- and 68-kD phosphorylated bands, consistent with the loss of binding of the p95PKL, PIX, and PAK complex.")
     (MIS-MATCHES
      ("phosphorylated" (("substrate" "PAK") (:REACH))
                        (("substrate" "PIX") (:REACH)))))
    ((:TEXT
      "Many phosphotyrosine dependent protein protein interactions are mediated through modular binding domains that directly recognize phosphorylated tyrosine residues within specific sequence contexts, such as SH2 and PTB domains XREF_BIBR, XREF_BIBR These domains are found on a large number of signaling proteins, including several key protein kinases and phosphatases that are themselves recruited to activated RTKs.")
     (MIS-MATCHES
      ("phosphorylated"
       (("substrate" "SH2") (:REACH ((("site" "PTB domains"))))))))
    ((:TEXT
      "Robust co-clustering indicates EGFR phosphorylation site specific protein interactions.")
     (MIS-MATCHES ("phosphorylation" (("substrate" "EGFR") (:REACH)))))
    ((:TEXT
      "For the EGFR phosphorylation sites, which likely represent the most well studied nodes in this dataset, the generated graphs from the co-occurrence matrix were compared with current knowledge.")
     (MIS-MATCHES ("phosphorylation" (("substrate" "EGFR") (:REACH)))))
    ((:TEXT
      "The edges are colored if there is direct evidence that the indicated protein interacts specifically with the EGFR phosphorylation site the edge is connecting.")
     (MIS-MATCHES ("phosphorylation" (("substrate" "EGFR") (:REACH)))))
    ((:TEXT
      "EGFR Y1069 is robustly co-regulated with PLCG1 Y771 phosphorylation, which is not the PLCG1 phosphorylation site that is robustly co-regulated with EGFR Y998.")
     (MIS-MATCHES ("phosphorylation" (("substrate" "PLCG1") (:REACH)))))
    ((:TEXT
      "Furthermore, it has been reported that Fbw7, another F-box protein, facilitates degradation of c-Myc through phosphorylation of serine at amino acid number 62, which is present in the myc box I, followed by phosphorylation of threonine at amino acid number 58 (T58) XREF_BIBR.")
     (MIS-MATCHES
      ("phosphorylation" (("substrate" "acid") (:REACH ((("site" "serine"))))))))
    ((:TEXT
      "Consequently, due to the importance of RAS activated RAF --> MEK --> ERK signaling in PDA, we examined in more depth the effects of mitogen activated protein and extracellular signal regulated kinase 1/2 (MEK1/2) inhibition on patterns of mRNA expression in vitro and in vivo using a panel of PDA cell lines (XREF_BIBR, XREF_BIBR).")
     (MIS-MATCHES
      ("activated" (("controlled" "ERK") (:REACH ((("controller" "RAS")))))
                   (("controlled" "PDA") (:REACH ((("controller" "RAS")))))
                   (("controlled" "MEK") (:REACH ((("controller" "RAS"))))))))
    ((:TEXT
      "GSK3B, in addition to its many functions in cell signaling, also modulates presynaptic vesicle release by phosphorylating the voltage dependent calcium channels and reducing intracellular Ca 2+ levels.")
     (MIS-MATCHES
      ("phosphorylating"
       (("substrate" "calcium") (:REACH ((("enzyme" "GSK3B"))))))))
    ((:TEXT
      "This contrasted with the activity of either DUSP8 (M3/6), which does not inactivate ERK, but is specific for p38 and JNK [XREF_BIBR], or the inducible nuclear phosphatase DUSP1/MKP-1, which can bind and dephosphorylate all three major classes of MAPK (ERK, p38 and JNK) both in vitro and in vivo [XREF_BIBR, XREF_BIBR].")
     (MIS-MATCHES
      ("inactivate"
       (("controlled" "ERK")
        (:REACH ((("controller" "phosphatase")) (("controller" "M3/6"))))))))
    ((:TEXT
      "TRIF acts as a platform to recruit signaling molecules such as TRAF3 (TNF Receptor Associated Factor 3), TBK1 (TANK Binding Kinase 1), IKKepsilon (Inhibitor of KappaB Kinase epsilon), TRAF2 (TNF receptor associated factor 2), TRAF6 (TNF receptor associated factor 6), to activate downstream transcription factors, IRF-3 (Interferon Regulatory Factor-3) and NF-kappaB (Nuclear Factor Kappa-light-chain-enhancer of activated B cells) (XREF_BIBR, XREF_BIBR).")
     (MIS-MATCHES
      ("activate"
       (("controlled" "transcription") (:REACH ((("controller" "TRAF6"))))))))
    ((:TEXT
      "Here, we report that the recruitment of another tyrosine kinase, the epidermal growth factor receptor (EGFR), by dsRNA bound TLR3 is an early event of the signaling process which is followed by Src recruitment, TLR3 Tyr phosphorylation, TRIF recruitment and the rest of the signaling process.")
     (MIS-MATCHES
      ("phosphorylation" (("substrate" "TRIF") (:REACH ((("site" "Tyr")))))
                         (("substrate" "Src") (:REACH ((("site" "Tyr")))))
                         (("substrate" "rest") (:REACH ((("site" "Tyr"))))))))
    ((:TEXT
      "Titanium dioxide nanoparticles activate the ATM-Chk2 DNA damage response in human dermal fibroblasts.")
     (MIS-MATCHES
      ("activate"
       (("controlled" "DNA damage response")
        (:REACH ((("controller" "Titanium dioxide"))))))))
    ((:TEXT
      "The expression of S-phase cyclins, cyclin E and cyclin A, is up-regulated and leads to an increase in the associated S-phase Cdk activity and RB hyperphosphorylation in cells replicating EBV.")
     (MIS-MATCHES ("hyperphosphorylation" (("substrate" "Cdk") (:REACH)))))
    ((:TEXT
      "We noticed that in a previous study, only RB phosphorylation, but not the downstream E2F1 transactivation activity, was monitored in the presence of BGLF4 XREF_BIBR.")
     (MIS-MATCHES ("phosphorylation" (("substrate" "E2F1") (:REACH)))))
    ((:TEXT
      "In addition, RB was shown to be hyperphosphorylated in response to the ectopic expression of BGLF4 and other CHPKs, including HCMV UL97 XREF_BIBR.")
     (MIS-MATCHES ("hyperphosphorylated" (("substrate" "UL97") (:REACH))))))


  )
