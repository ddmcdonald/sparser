(in-package :sp)
(defparameter *list-of-utt-lists*
  '(

    ;; sentences which cause a hang in the canary
    ("What genes does miR-562 target?")     ;; KB::FIND-TARGET-MIRNA
    ("What genes does mir-128 regulate?")                  ;; NIL
    ("what transcription factors does miR-200c regulate?") ;; KB::FIND-TF-MIRNA
    ("Does miR-2000-5p target stat3")    ;; KB::IS-MIRNA-TARGET
    ("Does miR-20b-5p target STAT3?")    ;; KB::IS-MIRNA-TARGET
    ("Does miR-222-3p target STAT3?")    ;; KB::IS-MIRNA-TARGET
    ("Tell me about stat3's involvement in apoptosis") ;; NIL
    ("What are the genes that have strong evidence of being regulated by mir-122-5p?") ;; NO-CAPS-FOR
    ("What does miR-20b-5p target") ;; KB::FIND-TARGET-MIRNA
    ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?") ;; KB::FIND-GENE-COUNT-MIRNA
    ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?") ;; KB::FIND-GENE-COUNT-MIRNA
    ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?") ;; KB::FIND-GENE-COUNT-MIRNA
    ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?") ;; KB::FIND-TARGET-MIRNA
    ("What genes does miR-20b-5p target?")  ;; KB::FIND-TARGET-MIRNA
    ("What is stat3's involvement in apoptosis?") ;; NO-CAPS-FOR
    ("What is stat3's role in apoptosis?")          ;; NO-CAPS-FOR
    ("What is stat3's role in apoptotic regulation?") ;; NO-CAPS-FOR
    ("What is the evidence that miR-148a-3p targets DNMT1?") ;; KB::CHOOSE-SENSE
    ("what transcription factors does miR-124-3p regulate?") ;; KB::FIND-TF-MIRNA
    ("what transcription factors does miR-200c-3p regulate?") ;; KB::FIND-TF-MIRNA

    ;;; =====================

    ;; Sentences in the IHMC test set that were not in the SIFT test set
    ("Does phosphorylation at S221 activate MAP2K2?")
    ("Does phosphorylation at S222 activate MAP2K1?")
    ("Simulate the MAP2K1-MAPK1 complex")
    ("What are the members of ERK?")
    ("What are the members of MEK?")
    ("What are the members of RAF?")
    ("What are the members of the RAF family?")
    ("What are the members of the RAS family?")
    ("What is another name for BRAF?")
    ("What is another name for MAP2K1?")
    ;; others are distributed into model groups
    ;;"Does ELK1 decrease FOS in the model?" 
    ;;"Does ELK1 decrease the amount of FOS in the model?" 
    ;;"Does FOS decrease ELK1 in the model?" 
    ;;"Undo" 
    ;;"revert that" 
    ;;"undo" 
    ;;("yes" ) this causes a hang


    ;;; Sentences from recent Tonia interactions
    ("How does STAT3 affect c-fos")
    ("List some genes regulated by elk1")
    ("List some of the genes regulated by elk1")
    ("List the genes regulated by elk1")
    ("Phosphorylated MAPK1 is active.")
    ("What are the common upstream regulators of AKT1 and BRAF?")
    ("What are the common upstreams of AKT and BRAF?")
    ("What are the common upstreams of AKT1 and BRAF?")
    ("What are the genes that smad2 regulates?")
    ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?")
    ("What are the miRNAs that regulate EGFR, SRF, and STAT3")
    ("What are the regulators of SRF?")
    ("What does STAT3 regulate in the liver?" 
    "What does it regulate in the liver?" )
    ("What genes are regulated by SMAD2?")
    ("What genes are regulated by SMDA2?")
    ("What genes are regulated by SRF?")
    ("What genes does STAT3 regulate?"
     "Which of these are regulated by SMAD2?"
     "Which of these are regulated by SMDA2?"
     "Which pathways use these?")
    ("Where does STAT3 regulate the expression of c-fos?")
    ("can you tell me all the transcription factors that are shared by elk1 and srf")
    ("can you tell me which transcription factors are shared by elk1 and srf")
    ("what are the regulators of SRF?")
    ("what does stat regulate")
    ("what is erbb?")

    ;; ---------------

    ("Is STAT3 involved in apoptosis?")           ;; NO-CAPS-FOR
    ("Is STAT3 involved in apoptotic regulation?") ;; NO-CAPS-FOR
    ("Is STAT3 involved in regulating apoptosis?") ;; NO-CAPS-FOR
    ("What apoptotic genes are regulated by STAT3") ;; KB::FIND-TARGET
    ("List the apoptotic genes")                    ;; NIL
    ("What genes regulated by STAT3 are involved in apoptosis?") ;; NO-CAPS-FOR
    ("List genes regulated by STAT3")       ;; KB::FIND-TARGET
    ("What genes are involved in apoptosis?") ;; NO-CAPS-FOR
    ("What genes that STAT3 regulates are involved in apoptosis?") ;; NO-CAPS-FOR
    ("List the genes regulated by STAT3")     ;; KB::FIND-TARGET
    ("List the STAT3 regulated genes")        ;; KB::FIND-TARGET
    ("What kinases are regulated by STAT3?")  ;; KB::FIND-TARGET
    ("What kinases are involved in apoptosis?") ;; NO-CAPS-FOR
    ("What STAT3 regulated genes are involved in aptosis") ;; NO-CAPS-FOR
    ("Let me know if any of the genes stat3 regulates are involved in apoptosis") ;; NO-CAPS-FOR
    ("Let me know whether any of the genes stat3 regulates are involved in apoptosis") ;; NO-CAPS-FOR
    ("Look up which genes targeted by stat3 are involved in apoptosis") ;; NO-CAPS-FOR
    ;; ("Tell me about stat3's involvement in apoptosis") ;; NIL
    ("Tell me how stat3 is involved in apoptosis")     ;; NO-CAPS-FOR
    ("Tell me if stat3 is involved in apoptosis")      ;; NO-CAPS-FOR
    ("Tell me whether stat3 is involved in apoptosis") ;; NO-CAPS-FOR
    ("What are STAT3 regulated genes that are involved in apoptosis. ") ;; NO-CAPS-FOR
    ("What are STAT3 regulated genes that are involved in apoptosis?") ;; NO-CAPS-FOR
    ("What genes downstream of stat3 are involved in apoptosis?") ;; NO-CAPS-FOR
    ;; ("What is stat3's involvement in apoptosis?") ;; NO-CAPS-FOR
    ("What is the involvement of stat3 in apoptotic regulation?") ;; NO-CAPS-FOR
    ("What pathways involve calcium?") ;; KB::FIND-PATHWAY-KEYWORD
    ("What processes involve srf")     ;; NO-CAPS-FOR
    ("Which stat3 regulated genes are involved in apoptosis?") ;; NO-CAPS-FOR
    ("Which stat3 regulated genes in the liver are involved in apoptosis?") ;; NO-CAPS-FOR
    ("Which stat3-regulated genes are involved in apoptosis?") ;; NO-CAPS-FOR
    ("Let's build a model." ;; KB::CREATE-MODEL
     "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk." ;; KB::ADD-TO-MODEL
     "Mek activates MAPK3."                ;; KB::ADD-TO-MODEL
     "HRAS activates RAF."                 ;; KB::ADD-TO-MODEL
     "NRAS activates RAF."                 ;; KB::ADD-TO-MODEL
     "Undo"
     "revert that"
     "EGFR binds the growth factor ligand EGF." ;; KB::ADD-TO-MODEL
     "The EGFR-EGF complex binds another EGFR-EGF complex." ;; KB::ADD-TO-MODEL
     "The EGFR-EGFR complex binds GRB2." ;; KB::ADD-TO-MODEL
     "EGFR-bound GRB2 binds SOS1."       ;; KB::ADD-TO-MODEL
     "undo that"
     "EGFR-bound GRB2 binds SOS1."       ;; KB::ADD-TO-MODEL
     "GRB2-bound SOS1 binds NRAS that is not bound to BRAF." ;; KB::ADD-TO-MODEL
     "SOS1-bound NRAS binds GTP." ;; KB::ADD-TO-MODEL
     "GTP-bound NRAS that is not bound to SOS1 binds BRAF." ;; KB::ADD-TO-MODEL
     "Vemurafenib binds BRAF."        ;; KB::ADD-TO-MODEL
     "Undo"
     "Vemurafenib binds BRAF."        ;; KB::ADD-TO-MODEL
     "Phosphorylated MAP2K1 is activated." ;; KB::ADD-TO-MODEL
     "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2." ;; KB::ADD-TO-MODEL
     "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2." ;; KB::ADD-TO-MODEL
     "Phosphorylated ERK2 is activated." ;; KB::ADD-TO-MODEL
     "DUSP6 dephosphorylates ERK2 that is not bound to SOS1." ;; KB::ADD-TO-MODEL
     "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1." ;; KB::ADD-TO-MODEL

     ;; from Tonia
     "Let's highlight the downstream of AKT1." 
     "Let's move phosphorylated MAPK1 to the bottom." 
     "Let's put AKT1, MAPK1 into mitochondrion." 
     "Let's show AKT1 on the top."
     
     "Does ELK1 decrease FOS in the model?"
     "Does ELK1 decrease the amount of FOS in the model?"
     "Does FOS decrease ELK1 in the model?"
     "Does FOS vanish if we increase the amount of ELK1 10 fold?" ;; KB::SATISFIES-PATTERN
     "Does FOS vanish if we increase the amount of ELK1 by 10 fold?" ;; KB::SATISFIES-PATTERN
     "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?" ;; KB::SATISFIES-PATTERN
     "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?" ;; KB::SATISFIES-PATTERN
     "Does the DUSP6-MAPK1 complex vanish?" ;; KB::SATISFIES-PATTERN
     "Does the MAP2K1-MAPK1 complex vanish?" ;; KB::SATISFIES-PATTERN
     "Does the amount of phosphorylated MAPK1 ever increase?" ;; KB::SATISFIES-PATTERN
     "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?" ;; KB::SATISFIES-PATTERN
     "Is MAP2K1 bound to MAPK1 eventually high?" ;; KB::SATISFIES-PATTERN
     "Is MAPK1 bound to MAP2K1 transient?" ;; KB::SATISFIES-PATTERN
     "Is MAPK1-bound MAP2K1 sustained?"    ;; KB::SATISFIES-PATTERN
     "Is phosphorylated MAPK1 always high?" ;; KB::SATISFIES-PATTERN
     "Is phosphorylated MAPK1 eventually high?" ;; KB::SATISFIES-PATTERN
     "Is phosphorylated MAPK1 ever high?"  ;; KB::SATISFIES-PATTERN
     "Is phosphorylated MAPK1 high at the end?" ;; KB::SATISFIES-PATTERN
     "Is phosphorylated MAPK1 high?" ;; KB::SATISFIES-PATTERN
     "Is phosphorylated MAPK1 sustained at a high level?" ;; KB::SATISFIES-PATTERN
     "Is phosphorylated MAPK1 sustained?" ;; KB::SATISFIES-PATTERN
     "Is phosphorylated MAPK1 transient?" ;; KB::SATISFIES-PATTERN
     "Is the MAP2K1-MAPK1 complex ever high?" ;; KB::SATISFIES-PATTERN
     "Is the MAP2K1-MAPK1 complex formed?"    ;; NO-CAPS-FOR
     "Is the amount of FOS always low if we increase ELK1 10 fold?" ;; KB::SATISFIES-PATTERN
     "Is the amount of FOS always low if we increase ELK1 by 100 fold?" ;; KB::SATISFIES-PATTERN
     "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?" ;; KB::SATISFIES-PATTERN
     "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?" ;; KB::SATISFIES-PATTERN
     "Is the amount of MAPK1 phosphorylated eventually high?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 always high?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 always low?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 eventually high?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 ever high?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 ever high?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 ever increasing?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 high?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 sometimes high?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 sustained at a high level?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 sustained?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 transient?" ;; KB::SATISFIES-PATTERN
     "Will the amount of phosphorylated MAPK1 be high?" ;; KB::SATISFIES-PATTERN
     "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?" ;; KB::SATISFIES-PATTERN
     "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?" ;; KB::SATISFIES-PATTERN
     "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?" ;; KB::SATISFIES-PATTERN
     "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" ;; KB::SATISFIES-PATTERN
     )

    ("Create a model where LCK phosphorylates CD3E" ;; KB::CREATE-MODEL
     "What is upstream of CD3E?"                    ;; NO-CAPS-FOR
     )

    ("I want to find a treatment for pancreatic cancer." ;; KB::FIND-TREATMENT
     "What drug could I use?" ;; NO-CAPS-FOR
     )

    ("Are there any drugs for BRAF?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What proteins does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Are they kinases?"                     ;; KB::FIND-GENE-ONTO
     )

    ("Can you find a drug for BRAF?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("Can you tell me all the transcription factors that are shared by elk1 and srf?") ;; NO-CAPS-FOR
    ("Can you tell me what transcription factors are shared by elk1 and srf?") ;; KB::FIND-TF
    ("Do you know any drugs for BRAF?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("Does STAT3 regulate the JUN gene in the lung?") ;; KB::IS-REGULATION
    ("Does STAT3 regulate the c-fos gene in liver?") ;; KB::IS-REGULATION
    ("Does STAT3 regulate the c-fos gene?") ;; KB::IS-REGULATION
    ("Does STAT3 regulate the cfos gene in the lung?") ;; KB::IS-REGULATION
    ("Does TP53 target MDM2?")           ;; KB::IS-REGULATION
    ;; ("Does miR-2000-5p target stat3")    ;; KB::IS-MIRNA-TARGET
    ;; ("Does miR-20b-5p target STAT3?")    ;; KB::IS-MIRNA-TARGET
    ;; ("Does miR-222-3p target STAT3?")    ;; KB::IS-MIRNA-TARGET
    ("Does stat3 regulate cfors in liver") ;; KB::IS-REGULATION
    ("Does stat3 regulate cfos in liver"   ;; KB::IS-REGULATION
     "Does it regulate cfos in brain"      ;; NO-CAPS-FOR
     )

    ("Does stat3 regulate cfos?") ;; KB::IS-REGULATION
    ("Does stat3 regulate the cfos gene in blood cells") ;; KB::IS-REGULATION
    ("Does the il-12 pathway utilize SGK1?") ;; KB::IS-PATHWAY-GENE
    ("Does the mTor pathway utilize SGK1?")  ;; KB::IS-PATHWAY-GENE
    ("Give me the evidence that kras decreases frizzled8.") ;; NIL
    ("Give me the evidence that kras regulates frizzled8.") ;; NIL
    ("Is MEK a kinase?")                ;; KB::IS-GENE-ONTO
    ("Is MEK2 inhibited by Selumetinib?") ;; KB::IS-DRUG-TARGET
    ("Is STAT3 a transcription factor for c-fos gene?") ;; KB::IS-REGULATION
    ("Is STAT3 a transcription-factor for c-fos gene?") ;; KB::IS-REGULATION
    ("Is STAT3 one of the regulators of the c-fos gene?") ;; KB::IS-REGULATION
    ("Is Selumetinib an inhibitor of MEK1?") ;; KB::IS-DRUG-TARGET
    ("Is Vemurafenib an inhibitor for BRAF?") ;; KB::IS-DRUG-TARGET
    ("Is fakeprotein a kinase")               ;; KB::IS-GENE-ONTO
    ("Is hmga2 a kinase")                     ;; KB::IS-GENE-ONTO
    ("Is stat3 an apoptotic regulator?")      ;; NO-CAPS-FOR
    ("Is stat3 involved in any apoptotic pathways?") ;; KB::FIND-PATHWAY
    ("Is stat3 involved in apoptotic regulation?")   ;; NO-CAPS-FOR
    ("Is stat3 involved in regulating apoptosis?")   ;; NO-CAPS-FOR
    ("What proteins does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Is the first one a kinase"             ;; NO-CAPS-FOR
     )

    ("Is there a drug that targets BRAF?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("Is there an apoptotic pathway regulated by stat3?") ;; NO-CAPS-FOR
    ("Is there an apoptotic pathway that is regulated by stat3?") ;; NO-CAPS-FOR
    ("Let me know if there are any apoptotic genes stat3 regulates") ;; KB::FIND-TARGET
    ("Let me know which genes stat3 regulates") ;; NIL
    ("List all the genes regulated by elk1 and srf?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("List genes regulated by elk1 and srf") ;; KB::FIND-TARGET
    ("List some genes that are regulated by elk1 and srf") ;; KB::FIND-TARGET
    ("List the evidence that kras decreases frizzled8.")   ;; NIL
    ("Name genes regulated by elk1 and srf") ;; KB::FIND-TARGET
    ("Of the apoptotic genes regulated by stat3, which are active in the liver?") ;; NO-CAPS-FOR
    ("Of the apoptotic genes stat3 regulates, which are active in the liver?") ;; NO-CAPS-FOR
    ("Of the genes stat3 regulates in the liver, which are apoptotic?") ;; NO-CAPS-FOR
    ("Of the hepatic genes stat3 regulates, which are apoptotic?") ;; NO-CAPS-FOR
    ("Of the liver genes stat3 regulates, which are apoptotic?") ;; NO-CAPS-FOR
    ("Please find pathways involving SRF")       ;; KB::FIND-PATHWAY
    ("Please show me KEGG pathways involving SRF") ;; KB::FIND-PATHWAY
    ("Please show me pathways involving SRF")      ;; KB::FIND-PATHWAY
    ("Let's build a model"                         ;; KB::CREATE-MODEL
     "MEK activates ERK"                           ;; KB::ADD-TO-MODEL
     "Remove the fact that MEK activates ERK"      ;; NO-CAPS-FOR
     )

    ("Let's build a model"                        ;; KB::CREATE-MODEL
     "Inactive MEK activates ERK"                 ;; KB::ADD-TO-MODEL
     "Remove the fact that inactive MEK activates ERK" ;; NO-CAPS-FOR
     )

    ("Show immune system pathways")     ;; NO-CAPS-FOR
    ("Show me pathways involving SRF")  ;; KB::FIND-PATHWAY
    ("Show me pathways with SRF in them") ;; KB::FIND-PATHWAY
    ("Show me pathways with SRF")         ;; KB::FIND-PATHWAY
    ("Show me the evidence that IL6 increases the amount of SOCS1.") ;; NO-CAPS-FOR
    ("Show me the evidence that kras decreases frizzled8.") ;; NO-CAPS-FOR
    ("Show me the evidence that kras decreases the amount of frizzled8?") ;; NO-CAPS-FOR
    ("Show me the evidence that kras regulates frizzled8?") ;; NO-CAPS-FOR
    ("Show transcription factors shared by elk1 and srf") ;; KB::FIND-TF
    ("Tell me how stat3 regulates apoptosis") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("Tell me what apoptotic pathways are regulated by stat3 in the liver") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("Tell me what genes elk1 and srf regulate") ;; KB::FIND-TARGET
    ("Tell me what pathways are regulated by stat3 in the liver") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What KEGG pathways involve immune signaling?") ;; KB::FIND-PATHWAY-DB-KEYWORD
    ("What MAP kinase phosphatases are regulated by ELK1?") ;; KB::FIND-TARGET
    ("What apoptotic genes are downstream of stat3?") ;; NO-CAPS-FOR
    ("What apoptotic genes does stat3 regulate in the liver?") ;; KB::FIND-TARGET
    ("What apoptotic genes does stat3 regulate?") ;; KB::FIND-TARGET
    ("What apoptotic genes is stat3 upstream of?") ;; NO-CAPS-FOR
    ("What apoptotic pathways involve stat3?")     ;; KB::FIND-PATHWAY
    ("What are Selumetinib's targets?") ;; KB::FIND-DRUG-TARGETS
    ("What are some JAK1 inhibitors?")  ;; KB::FIND-REGULATION
    ("What are some drugs that inhibit BRAF?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What are some genes in the MAPK signaling pathway?") ;; KB::FIND-GENE-PATHWAY
    ("What are some proteins in the MAPK signaling pathway?") ;; KB::FIND-GENE-PATHWAY
    ("What are the members of RAS?") ;; KB::CHOOSE-SENSE-WHAT-MEMBER
    ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?") ;; KB::FIND-MIRNA-TARGET
    ("What are the regulators of MAPPK14 in bladder") ;; KB::FIND-TF
    ("What are the regulators of SMURF2 in liver?")   ;; KB::FIND-TF
    ("What are the regulators of SMURF2?")      ;; KB::FIND-REGULATION
    ("What are the regulators of c-fos in lung?")   ;; KB::FIND-TF
    ("What are the regulators of mapk14 in bladeeer") ;; KB::FIND-TF
    ("What are the regulators of mapk14")             ;; KB::FIND-TF
    ("What are the targets of PLX-4720?") ;; KB::FIND-DRUG-TARGETS
    ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?") ;; KB::CHOOSE-SENSE
    ("What are the transcription factors that regulate EELK1 and SRF?") ;; KB::FIND-TF
    ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?") ;; KB::FIND-COMMON-TF-GENES
    ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?") ;; KB::FIND-COMMON-TF-GENES
    ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?") ;; KB::FIND-COMMON-TF-GENES
    ("What cell cycle genes are regulated by FOS?") ;; KB::FIND-TARGET
    ("What does ERBB regulate?"  ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "What does it regulate in liver" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     )

    ;; ("What does miR-20b-5p target") ;; KB::FIND-TARGET-MIRNA
    ("What does p53 regulate?")     ;; KB::FIND-TARGET
    ("What does rb1 regulate")      ;; KB::FIND-TARGET
    ("What does smad2 regulate")    ;; KB::FIND-TARGET
    ("What does stat regulate") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What downregulates fzd8?") ;; KB::FIND-REGULATION
    ("What drug could I use to target pancreatic cancer?") ;; NO-CAPS-FOR
    ("What drug should I use for pancreatic cancer?") ;; NO-CAPS-FOR
    ("What drugs are inhibitors of GRB2?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What drugs inhibit MAP2K1?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What drugs regulate BRAF?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What drugs target BRAF?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What genes are downstream of stat3?")         ;; NO-CAPS-FOR
    ("What genes are in the MAPK signaling pathway?") ;; KB::FIND-GENE-PATHWAY
    ("What genes are in the MAPK signaling pathways?") ;; KB::FIND-GENE-PATHWAY
    ("What genes are in the immune system pathway?") ;; KB::FIND-GENE-PATHWAY
    ("What genes are in the prolactin signaling pathway?") ;; KB::FIND-GENE-PATHWAY
    ("What genes are involved in the IL-12 pathway?") ;; KB::FIND-GENE-PATHWAY
    ("What genes are involved in the Prolactin pathway?") ;; KB::FIND-GENE-PATHWAY
    ("What genes are involved in the il-12 pathway?") ;; KB::FIND-GENE-PATHWAY
    ("What genes are involved in the immune system pathway?") ;; KB::FIND-GENE-PATHWAY
    ;; ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?") ;; KB::FIND-GENE-COUNT-MIRNA
    ;; ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?") ;; KB::FIND-GENE-COUNT-MIRNA
    ;; ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?") ;; KB::FIND-GENE-COUNT-MIRNA
    ("What genes are regulated by FAKEPRTN") ;; KB::FIND-DRUG-TARGETS
    ("What genes are regulated by elk1 and srf?") ;; KB::FIND-TARGET
    ;; ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?") ;; KB::FIND-TARGET-MIRNA
    ("What genes are regulated by smda2") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What genes are regulated by srf")   ;; KB::FIND-TARGET
    ("What genes are regulated by stat3 and srf") ;; KB::FIND-TARGET
    ("What genes are targeted by lung cancer?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What genes are there in the MAPK signaling pathway?") ;; NO-CAPS-FOR
    ("What genes are used in the MAPK signaling pathway?") ;; KB::FIND-GENE-PATHWAY
    ("What genes does lung cancer target?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ;; ("What genes does miR-20b-5p target?")  ;; KB::FIND-TARGET-MIRNA
    ;; ("What genes does miR-562 target?")     ;; KB::FIND-TARGET-MIRNA
    ("What genes does smad2 upregulate?")   ;; NO-CAPS-FOR
    ("What genes does stat3 regulate in liver cells?") ;; KB::FIND-TARGET
    ("What genes does stat3 regulate in liver?")   ;; KB::FIND-TARGET
    ("What genes does stat3 regulate in lung?")    ;; KB::FIND-TARGET
    ("What genes does stat3 regulate")             ;; KB::FIND-TARGET
    ("What genes does stat3 regulate?")            ;; KB::FIND-TARGET
    ("What genes in the liver does stat3 regulate?") ;; KB::FIND-TARGET
    ("What genes is stat3 upstream from?")           ;; NO-CAPS-FOR
    ("What genes is stat3 upstream of?")             ;; NO-CAPS-FOR
    ("What genes regulated by FOS are kinases?")     ;; NO-CAPS-FOR
    ("What genes regulated by stat3 are kinases?")   ;; NO-CAPS-FOR
    ("What immune pathways involve KRAS and ELK1?") ;; KB::FIND-PATHWAY
    ("What immune pathways involve SRF?")         ;; KB::FIND-PATHWAY
    ("What immune pathways involve kras and elk1?") ;; KB::FIND-PATHWAY
    ("What immune pathways involve tap1 and jak1?") ;; KB::FIND-PATHWAY
    ("What inhibits BRAF?")              ;; KB::FIND-REGULATION
    ("What is STAT3?")                   ;; KB::CHOOSE-SENSE
    ("What is STAT?")                    ;; KB::CHOOSE-SENSE
    ("What is downstream of stat3?")     ;; NO-CAPS-FOR
    ("What is erbb?")                    ;; KB::CHOOSE-SENSE
    ("What is errb?")                    ;; KB::CHOOSE-SENSE
    ("What is regulated by elk1")        ;; KB::FIND-TARGET
    ;; ("What is stat3's role in apoptosis?")          ;; NO-CAPS-FOR
    ;; ("What is stat3's role in apoptotic regulation?") ;; NO-CAPS-FOR
    ("What is the evidence that kras decreases frizzled8?") ;; KB::CHOOSE-SENSE
    ("What is the evidence that kras decreases the amount of frizzled8?") ;; KB::CHOOSE-SENSE
    ("What is the evidence that kras regulates frizzled8?") ;; KB::CHOOSE-SENSE
    ;; ("What is the evidence that miR-148a-3p targets DNMT1?") ;; KB::CHOOSE-SENSE
    ("What is the target of Selumetinib?") ;; KB::FIND-DRUG-TARGETS
    ("What kinases does smad2 regulate")   ;; KB::FIND-TARGET
    ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?") ;; KB::FIND-MIRNA-TARGET
    ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?") ;; KB::FIND-MIRNA-TARGET
    ("What microRNAs target STAT3?") ;; KB::FIND-MIRNA-TARGET
    ("What micrornas are regulated by p53?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What micrornas regulate genes in the mapk signaling pathways") ;; KB::FIND-MIRNA-TARGET
    ("What pahtways involve SRF?")               ;; KB::FIND-PATHWAY
    ("What pathways are common to STAT3 and SRF?") ;; NO-CAPS-FOR
    ("What pathways involve SRF?")                 ;; KB::FIND-PATHWAY
    ("What pathways involve cfos?")                ;; KB::FIND-PATHWAY
    ("What pathways involve kras and elk1?")       ;; KB::FIND-PATHWAY
    ("What pathways involve the SRF transcription factor?") ;; KB::FIND-PATHWAY
    ("What pathways utilize srf and is srf a kinase") ;; NO-CAPS-FOR
    ("What proteins are in the MAPK family?")         ;; NO-CAPS-FOR
    ("What proteins are targeted by lung cancer?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What proteins does PLX-4720 target?") ;; KB::FIND-DRUG-TARGETS
    ("What proteins does lung cancer target?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What proteins does vemurafenib target?") ;; KB::FIND-DRUG-TARGETS
    ("What proteins might lead to the development of lung cancer?") ;; KB::FIND-DISEASE-TARGETS
    ("What proteins might lead to the development of pancreatic cancer.") ;; KB::FIND-DISEASE-TARGETS
    ("What reactome pathways involve immune signaling?") ;; KB::FIND-PATHWAY-DB-KEYWORD
    ("What regulates HGF?")  ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What regulates SMURF2?")       ;; KB::FIND-REGULATION
    ("What regulates smurf2 in liver") ;; KB::FIND-TF
    ("What signaling pathways are shared by RELA and ELK1?") ;; KB::FIND-PATHWAY
    ("What signaling pathways are shared by STAT3 and SRF?") ;; KB::FIND-PATHWAY
    ("What signaling pathways are shared by STAT3, SOCS3 and SRF?") ;; KB::FIND-COMMON-PATHWAY-GENES
    ("What tissues is STAT3 expressed in?") ;; KB::FIND-TISSUE
    ("What transcribes ZEB1?")              ;; KB::FIND-REGULATION
    ("What transcription factor produces SMURF2?")  ;; KB::FIND-TF
    ("What transcription factor transcribes SMURF2?") ;; KB::FIND-TF
    ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?") ;; KB::FIND-COMMON-TF-GENES
    ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?") ;; KB::FIND-COMMON-TF-GENES
    ("What genes does stat3 regulate?" ;; KB::FIND-TARGET
     "What transcription factors are common to these genes?" ;; KB::FIND-COMMON-TF-GENES
     )

    ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?") ;; NO-CAPS-FOR
    ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?") ;; NO-CAPS-FOR
    ("What transcription factors are regulators of SMURF2 in liver?") ;; KB::FIND-TF
    ("What transcription factors are regulators of SMURF2?") ;; KB::FIND-TF
    ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?") ;; KB::FIND-COMMON-TF-GENES
    ("What transcription factors regulate SMURF2 in liver?") ;; KB::FIND-TF
    ("What transcription factors regulate ZEB1?")    ;; KB::FIND-TF
    ("What transcription factors regulate erk")      ;; KB::FIND-TF
    ("What transcription factors regulate frizzled8?") ;; KB::FIND-TF
    ("What transcription factors regulate genes in the mapk signaling pathwya") ;; KB::FIND-TF
    ("What transcription factors regulated frizzled8?") ;; KB::FIND-TF
    ("What transcription factors transcribe SMURF2?")   ;; KB::FIND-TF
    ("What upregulates fzd8?")             ;; KB::FIND-REGULATION
    ("Where is STAT3 expressed?")          ;; KB::FIND-TISSUE
    ("Which KEGG pathways involve SRF?")   ;; KB::FIND-PATHWAY
    ("Which KEGG pathways use SRF?")       ;; KB::FIND-PATHWAY
    ("Which Reactome pathways utilize SRF?") ;; KB::FIND-PATHWAY
    ("What transcription factors regulate frizzled8?" ;; KB::FIND-TF
     "Which also regulate srf"                        ;; KB::FIND-TF
     )

    ("Which apoptotic genes are regulated by stat3?") ;; KB::FIND-TARGET
    ("Which apoptotic genes is stat3 upstream of?")   ;; NO-CAPS-FOR
    ("Which genes are targeted by STAT3?")        ;; KB::FIND-TARGET
    ("Which genes regulated by stat3 are kinases?") ;; NO-CAPS-FOR
    ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?") ;; KB::FIND-COMMON-PATHWAY-GENES
    ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?") ;; KB::FIND-COMMON-PATHWAY-GENES
    ("Which kegg pathways utilize genes regulated by smad2") ;; KB::FIND-PATHWAY
    ("Which Reactome pathways utilize SRF?" ;; KB::FIND-PATHWAY
     "Which kegg pathways utilize it"       ;; NO-CAPS-FOR
     )

    ("what genes are regulated by srf?" ;; KB::FIND-TARGET
     "Which of them are regulated by elk1" ;; KB::FIND-TARGET
     )

    ("what genes are regulated by srf?" ;; KB::FIND-TARGET
     "Which of these are expressed in liver" ;; KB::FIND-GENE-TISSUE
     )

    ("what genes are regulated by srf?" ;; KB::FIND-TARGET
     "Which of these are in immune pathways" ;; NO-CAPS-FOR
     )

    ("what proteins does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are kinases"            ;; KB::FIND-GENE-ONTO
     "Which of those are regulated by elk1"  ;; KB::FIND-TARGET
     )

    ("what genes are regulated by srf?" ;; KB::FIND-TARGET
     "Which of these are regulated by elk1" ;; KB::FIND-TARGET
     )

    ("what genes are regulated by srf?"       ;; KB::FIND-TARGET
     "Which of these are regulated by fakeprotein" ;; NO-CAPS-FOR
     )

    ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?") ;; KB::FIND-COMMON-PATHWAY-GENES
    ("Which pathways are shared by stat3, socs3, and creb5") ;; KB::FIND-COMMON-PATHWAY-GENES
    ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?") ;; KB::FIND-COMMON-PATHWAY-GENES
    ("Which pathways involve TAP1 and JAK1?") ;; KB::FIND-PATHWAY
    ("Which pathways involve calcium?") ;; KB::FIND-PATHWAY-KEYWORD
    ("Which pathways use SRF?")         ;; KB::FIND-PATHWAY
    ("what genes are regulated by srf?" ;; KB::FIND-TARGET
     "Which pathways use these"         ;; NO-CAPS-FOR
     )

    ("Which pathways utilize SRF?")   ;; KB::FIND-PATHWAY
    ("what genes are regulated by srf?" ;; KB::FIND-TARGET
     "Which pathways utilize these genes" ;; KB::FIND-COMMON-PATHWAY-GENES
     )

    ("Which proteins are targeted by STAT3?") ;; KB::FIND-TARGET
    ("Which reactome pathways utilize srf")   ;; KB::FIND-PATHWAY
    ("Which transcription factors are in the MAPK signaling pathway?") ;; KB::FIND-TF-PATHWAY
    ("Which transcription factors regulate frizzled8 in the liver?") ;; KB::FIND-TF
    ("Which transcription factors regulate frizzled8?") ;; KB::FIND-TF
    ("Let's build a model." ;; KB::CREATE-MODEL
     "PDK1 phosphorylates AKT1." ;; KB::ADD-TO-MODEL
     "Let's move AKT1 on top."   ;; NO-CAPS-FOR
     )

    ("Let's build a model."                  ;; KB::CREATE-MODEL
     "PDK1 phosphorylates AKT1."             ;; KB::ADD-TO-MODEL
     "Let's show the phosphorylated AKT1 on top." ;; NO-CAPS-FOR
     )

    ("What are the common upstreams of AKT1 and  BRAF?") ;; KB::FIND-COMMON-UPSTREAMS
    ;; ("What are the genes that have strong evidence of being regulated by mir-122-5p?") ;; NO-CAPS-FOR
    ("Is stat3 expressed exclusively in liver?") ;; KB::IS-GENE-TISSUE
    ("Is stat3 expressed in spleen?")            ;; KB::IS-GENE-TISSUE
    ("Let's build a model."                      ;; KB::CREATE-MODEL
     "PDK1 phosphorylates AKT1."                 ;; KB::ADD-TO-MODEL
     "Show phosphorylated akt1 on top."          ;; NO-CAPS-FOR
     )

    ("What are the common upstreams of AKT1 and  BRA?") ;; NO-CAPS-FOR
    ("Let's build a model."                ;; KB::CREATE-MODEL
     "RAF activates MEK and MEK activates ERK." ;; KB::ADD-TO-MODEL
     "What is the path from RAF to MEK?"        ;; NO-CAPS-FOR
     )

    ("What tissues can I ask about?")        ;; KB::WHAT-TISSUES
    ("let's show phosphorylated akt1 on top.")       ;; NIL
    ("remove the fact that mek activates erk")       ;; NIL
    ("what are positive regulators of the cfos gene?") ;; NO-CAPS-FOR
    ("what transcription factors regulate FOS in soft tissue?") ;; KB::FIND-TF
    ("Are there any drugs inhibiting MEK?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("Are there any drugs targeting KRAS?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("Are there any genes in the liver that are regulated by stat3?") ;; KB::FIND-TARGET
    ("Are there any genes involved in apoptosis that are regulated by stat3?") ;; NO-CAPS-FOR
    ("Are there any genes stat3 is upstream of?") ;; NO-CAPS-FOR
    ("Are there any inhibitors for JAK1?")        ;; NO-CAPS-FOR
    ("Are there genes regulated by elk1 and srf") ;; KB::FIND-TARGET
    ("Can you find any apoptotic pathways stat3 is involved in?") ;; NO-CAPS-FOR
    ("Can you find any apoptotic pathways that stat3 is involved in?") ;; NO-CAPS-FOR
    ("Can you look up which genes targeted by stat3 are involved in apoptosis?") ;; NO-CAPS-FOR
    ("Can you show me genes regulated by ELK1") ;; KB::FIND-TARGET
    ("Can you show me genes that are regulated by ELK1") ;; KB::FIND-TARGET
    ("Can you show me the pahtways that involve SRF") ;; KB::FIND-PATHWAY
    ("Can you tell me the genes regulated by STAT3") ;; KB::FIND-TARGET
    ("Can you tell me the genes that STAT3 regulates") ;; KB::FIND-TARGET
    ("Can you tell me the genes that are regulated by STAT3") ;; KB::FIND-TARGET
    ("Can you tell me the genes which are regulated by STAT3") ;; KB::FIND-TARGET
    ("Can you tell me what transcription factors are shared by elk1 and srf") ;; KB::FIND-TF
    ("Can you tell me which genes are regulated by STAT3") ;; KB::FIND-TARGET
    ("Can you tell me which genes in the liver are regulated by stat3?") ;; KB::FIND-TARGET
    ("Can you tell me which genes stat3 regulates?") ;; KB::FIND-TARGET
    ("Does STAT3 affect the expression of c-fos?") ;; KB::IS-REGULATION
    ("Does STAT3 affect the expression of the c-fos gene?") ;; KB::IS-REGULATION
    ("Does STAT3 increase the expression of the c-fos gene?") ;; KB::IS-REGULATION
    ("Does STAT3 increase transcription of the c-fos gene?") ;; NO-CAPS-FOR
    ("Does stat3 affect the expression of cfos?") ;; KB::IS-REGULATION
    ("Does the mTor pathway contain SGK1?")   ;; KB::IS-PATHWAY-GENE
    ("Find a treatment for pancreatic cancer.")  ;; NO-CAPS-FOR
    ("Find genes in the liver regulated by stat3") ;; NO-CAPS-FOR
    ("Find genes that stat3 regulates")            ;; KB::FIND-TARGET
    ("Find transcription factors shared by elk1 and srf") ;; KB::FIND-TF
    ("How does KRAS activate MAPK3?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("How does STAT3 regulate the c-fos gene?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("How does knocking out p53 cause cancer via its effect on miRNAs?") ;; NO-CAPS-FOR
    ("How does stat3 regulate apoptosis in the liver?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("How does stat3 regulate apoptosis?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("How does stat3 regulate apoptotic genes?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("How is stat3 involved in apoptotic regulation?") ;; NO-CAPS-FOR
    ("How is stat3 involved in apoptotis regulation in the liver?") ;; NO-CAPS-FOR
    ("How is stat3 involved in regulating apoptosis?")  ;; NO-CAPS-FOR
    ("How is stat3 used to regulate apoptosis?")        ;; NO-CAPS-FOR
    ("How many genes are in the MAPK signaling pathway?") ;; NO-CAPS-FOR
    ("How might a STAT3 mutation affect breast cancer?") ;; NO-CAPS-FOR
    ("Is STAT3 a regulator for c-fos?")       ;; KB::IS-REGULATION
    ("Is STAT3 a regulator of c-fos")         ;; KB::IS-REGULATION
    ("Is STAT3 a regulator of the c-fos gene") ;; KB::IS-REGULATION
    ("Is STAT3 a regulator of the c-fos gene?") ;; KB::IS-REGULATION
    ("Is STAT3 a transcription factor for c-fos gene") ;; KB::IS-REGULATION
    ("Is STAT3 a transcription factor for c-fos") ;; KB::IS-REGULATION
    ("Is STAT3 a transcription factor for c-fos?") ;; KB::IS-REGULATION
    ("Is STAT3 a transcription factor for the c-fos gene?") ;; KB::IS-REGULATION
    ("Is STAT3 regulated by c-fos?") ;; NO-CAPS-FOR
    ("Is Stat3 a transcription factor for the c-fos gene") ;; KB::IS-REGULATION
    ("List genes regulated by ELK1")             ;; KB::FIND-TARGET
    ("List genes that are regulated by ELK1")    ;; KB::FIND-TARGET
    ("List some genes that stat3 regulates")     ;; KB::FIND-TARGET
    ("List the genes STAT3 regulates")           ;; KB::FIND-TARGET
    ("List the genes that are regulated by STAT3") ;; KB::FIND-TARGET
    ("List the genes which STAT3 regulates")       ;; KB::FIND-TARGET
    ("List the pahtways that involve SRF")         ;; KB::FIND-PATHWAY
    ("Show me genes regulated by ELK1")            ;; KB::FIND-TARGET
    ("Show me genes that are regulated by ELK1")   ;; KB::FIND-TARGET
    ("Show me genes that stat3 regulates")         ;; KB::FIND-TARGET
    ("Show me the pahtways that involve SRF")      ;; KB::FIND-PATHWAY
    ("Show me what transcription factors are shared by elk1 and srf") ;; KB::FIND-TF
    ("Show me which genes are regulated by STAT3") ;; KB::FIND-TARGET
    ("Show the genes which STAT3 regulates")       ;; KB::FIND-TARGET
    ("Show the pahtways that involve SRF")         ;; KB::FIND-PATHWAY
    ("Show transcription factors that are shared by elk1 and srf") ;; KB::FIND-TF
    ("Tell me the genes which are regulated by STAT3") ;; KB::FIND-TARGET
    ("Tell me what genes are regulated by elk1 and srf") ;; KB::FIND-TARGET
    ("Tell me which genes are regulated by STAT3") ;; KB::FIND-TARGET
    ("What are positive regulators of cfos?")      ;; NO-CAPS-FOR
    ("What are some regulators of SMURF2?") ;; KB::FIND-REGULATION
    ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?") ;; NO-CAPS-FOR
    ("What are the common regulators of elk1 and srf") ;; NO-CAPS-FOR
    ("What are the common regulators of elk1 and srg") ;; NO-CAPS-FOR
    ("What are the genes STAT3 regulates?"      ;; KB::FIND-TARGET
     "What are the common regulators of those genes" ;; NO-CAPS-FOR
     )

    ("What are the genes regulated by STAT3?")  ;; KB::FIND-TARGET
    ("What are the genes which STAT3 regulates?") ;; KB::FIND-TARGET
    ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?") ;; NO-CAPS-FOR
    ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?") ;; KB::FIND-COMMON-TF-GENES
    ("What pathways involve frizzled8?"      ;; KB::FIND-PATHWAY
     "What other genes are in the first pathway?" ;; KB::FIND-GENE-PATHWAY
     )

    ("What pathways involve frizzled8?"         ;; KB::FIND-PATHWAY
     "What other proteins are in the first pathway?" ;; KB::FIND-GENE-PATHWAY
     )

    ("What are the genes STAT3 regulates?" ;; KB::FIND-TARGET
     "What pathways are they in?"          ;; NO-CAPS-FOR
     )

    ("What pathways involve SOARING?")   ;; NO-CAPS-FOR
    ("What pathways involve frizzled8?") ;; KB::FIND-PATHWAY
    ("What pathways involve frizzled8?"  ;; KB::FIND-PATHWAY
     "What proteins are in the first pathway" ;; KB::FIND-GENE-PATHWAY
     )

    ("What pathways involve frizzled8?" ;; KB::FIND-PATHWAY
     "What genes are in the first pathway" ;; KB::FIND-GENE-PATHWAY
     )

    ("What questions can you answer about microRNAs?") ;; NO-CAPS-FOR
    ("What transcription factors regulate mothers against decapentaplegic?") ;; NIL
    ("Where does stat3 regulate cfos")               ;; NIL
    ("Which KEGG pathways involve ATP?")             ;; NO-CAPS-FOR
    ("Which genes are in the MAPK signaling pathway?") ;; KB::FIND-GENE-PATHWAY
    ("Which genes are involved in the oncogenic MAPK signaling pathway?") ;; KB::FIND-GENE-PATHWAY
        ("Which kinases regulate x?") ;; NO-CAPS-FOR

    ("Which kinases negatively regulate x?") ;; NO-CAPS-FOR
    ("Which kinases positively regulate x?") ;; NO-CAPS-FOR
    ("What are the genes STAT3 regulates?"      ;; KB::FIND-PATHWAY
     "Which of these are in immune pathways?" ;; NO-CAPS-FOR
     )

    ("What are the genes STAT3 regulates?"         ;; KB::FIND-PATHWAY
     "Which of these are in immune system pathways?" ;; NO-CAPS-FOR
     )

    ("What are the genes STAT3 regulates?"     ;; KB::FIND-PATHWAY
     "Which of those are in the immune pathway?" ;; NO-CAPS-FOR
     )

    ("Which pathways involve p53?") ;; KB::FIND-PATHWAY
    ("can you show me the pahtways that involve SRF") ;; KB::FIND-PATHWAY
    ("Does Selumetinib inhibit MAP2K1?") ;; KB::IS-DRUG-TARGET
    ("Let's build a model of the KRAS neighborhood." ;; NO-CAPS-FOR
     "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk." ;; KB::ADD-TO-MODEL
     )

    ("Let's build a model."     ;; KB::CREATE-MODEL
     "MAP2K1 phosphorylates MAPK1." ;; KB::ADD-TO-MODEL
     "DUSP6 dephosphorylates MAPK1." ;; KB::ADD-TO-MODEL
     "Is the amount of phosphorylated MAPK1 always high?" ;; KB::SATISFIES-PATTERN
     "Is the amount of phosphorylated MAPK1 always low?" ;; KB::SATISFIES-PATTERN
     "Does the MAP2K1-MAPK1 complex vanish?" ;; KB::SATISFIES-PATTERN
     "Does the DUSP6-MAPK1 complex vanish?"  ;; KB::SATISFIES-PATTERN
     "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?" ;; KB::SATISFIES-PATTERN
     )

    ("Show me the evidence that kras regulates fzd8.") ;; NO-CAPS-FOR
    ("What increases the amount of fzd8?") ;; KB::FIND-REGULATION
    ("Which kinases are in the MAPK signaling pathway?") ;; KB::FIND-KINASE-PATHWAY
    ("Does STAT3 regulate the c-fos gene in the liver?") ;; KB::IS-REGULATION
    ("what genes are regulated by smad2?")         ;; KB::FIND-TARGET
    ("what transcription factors transcribe SMURF2?" ;; KB::FIND-TF
     "Which of these are regulated by smad2?" ;; KB::FIND-TARGET
     )

    ("what transcription factors transcribe SMURF2?" ;; KB::FIND-TF
     "Which of these also regulate cfos?"            ;; KB::FIND-TF
     )

    ("what transcription factors transcribe SMURF2?") ;; KB::FIND-TF
    ("what transcription factor transcribes SMURF2?") ;; KB::FIND-TF
    ("Which KEGG pathways utilize SRF?") ;; KB::FIND-PATHWAY
    ("What transcription factors are in the calcium regulated pathways?") ;; KB::FIND-TF-PATHWAY
    ("What pathways involve the immune system?") ;; KB::FIND-PATHWAY-KEYWORD
    ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?") ;; KB::FIND-COMMON-PATHWAY-GENES
    ("What KEGG pathways involve ERBB2, JUN, and MAPK8?") ;; KB::FIND-COMMON-PATHWAY-GENES
    ("what genes are regulated by srf?" ;; KB::FIND-TARGET
     "What pathways are shared by these genes?" ;; KB::FIND-COMMON-PATHWAY-GENES
     )

    ("what genes are regulated by srf?"     ;; KB::FIND-TARGET
     "What are common pathways for these genes?" ;; NO-CAPS-FOR
     )

    ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?") ;; KB::FIND-COMMON-PATHWAY-GENES
    ("What MAP kinase phosphatase are regulated by ELK1?") ;; NIL
    ;; ("What genes does mir-128 regulate?")                  ;; NIL
    ("What reactome pathways involve immune system?") ;; KB::FIND-PATHWAY-DB-KEYWORD
    ("Is stat3 a kinase?")             ;; KB::IS-GENE-ONTO
    ("Is STAT3 a transcription factor?") ;; KB::IS-GENE-ONTO
    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are protein kinases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are tyrosine kinases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are serine/threonine kinases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are phosphatases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are proteases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are receptors?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are tyrosine kinase receptors?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are histone demethylases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are histone methylases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are histone methyltransferases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are demethylases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are methylases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are methyltransferases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are steroid receptors?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are receptor tyrosine kinases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are transcription factors?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are DNA binding proteins?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are serine/threonine phosphatases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "Which of these are tyrosine phosphatases?" ;; KB::FIND-GENE-ONTO
     )

    ("What does MEK phosphorylate?" ;; KB::FIND-RELATIONS-FROM-LITERATURE
     "which of these are exclusively expressed in liver?" ;; NO-CAPS-FOR
     )

    ("What regulates frizzled8?")              ;; KB::FIND-REGULATION
    ("What increases the amount of myc?")      ;; KB::FIND-REGULATION
    ("What upregulates myc?")                  ;; KB::FIND-REGULATION
    ("What downregulates myc?")                ;; KB::FIND-REGULATION
    ("What decreases the amount of GFAP?")     ;; KB::FIND-REGULATION
    ("What regulates GLUL?")                   ;; KB::FIND-REGULATION
    ("What regulates GLUL from the literature?") ;; KB::FIND-REGULATION
    ("What regulates GLUL from the GEO RNAi database?") ;; KB::FIND-REGULATION
    ("Which kinases regulate the cfos gene?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("Which kinases negatively regulate the cfos gene?") ;; KB::FIND-RELATIONS-FROM-LITERATURE
    ("What are positive regulators of the cfos gene?") ;; NO-CAPS-FOR
    ("What transcribes ZEB1?") ;; KB::FIND-REGULATION
    ;; ("what transcription factors does miR-124-3p regulate?") ;; KB::FIND-TF-MIRNA
    ;; ("what transcription factors does miR-200c regulate?") ;; KB::FIND-TF-MIRNA
    ;; ("what transcription factors does miR-200c-3p regulate?") ;; KB::FIND-TF-MIRNA
    ("Show me the evidence that IL6 increases the amount of SOCS1.") ;; NO-CAPS-FOR
    ("Show me the evidence that KRAS decreasse the amount of FZD8.") ;; NO-CAPS-FOR
    ("What is the evidence that kras regulates frizzled8?") ;; KB::CHOOSE-SENSE
    ("What is the evidence that SRF binds the cfos gene?") ;; KB::FIND-EVIDENCE
    ("what genes are exclusively expressed in liver?") ;; KB::FIND-GENE-TISSUE
    ("Is stat3 expressed in liver?")           ;; KB::IS-GENE-TISSUE
    ("Is stat3 exclusively expressed in liver?") ;; KB::IS-GENE-TISSUE



    ))
