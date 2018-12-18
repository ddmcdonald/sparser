(in-package :sparser)

(defparameter *all-bio-capability-failures*
  '(*BIO-ENTITY-FAILURES* *WHAT-FAILURES*  *PARTICLE-FAILURES*
    *LET-FAILURES* *PP-FAILURES* *STRANDED-PREP-FAILURES*
    *RELATIVIZER-FAILURES* *EVIDENCE-FAILURES*
    *MISC-FAILURES*))


(defparameter *BIO-ENTITY-FAILURES* 
'("What genes does mir-128 regulate?" "What genes are regulated by SMDA2?"
  "Which of these are regulated by SMDA2?"
  "What STAT3 regulated genes are involved in aptosis"
  "What are the regulators of mapk14 in bladeeer"
  "What genes are regulated by FAKEPRTN" "What genes are regulated by smda2"
  "Which of these are regulated by fakeprotein"
  "Show me the evidence that KRAS decreasse the amount of FZD8."))

(defparameter *WHAT-FAILURES* 
'("What is another name for BRAF?" "What is another name for MAP2K1?"
  "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
  "What are the genes regulated by STAT3?"))

(defparameter *PARTICLE-FAILURES* 
'("Look up which genes targeted by stat3 are involved in apoptosis"
  "Can you look up which genes targeted by stat3 are involved in apoptosis?"
  "How does knocking out p53 cause cancer via its effect on miRNAs?"))

(defparameter *LET-FAILURES* 
'("Let's highlight the downstream of AKT1."
  "Let's move phosphorylated MAPK1 to the bottom."
  "Let's put AKT1, MAPK1 into mitochondrion." "Let's build a model"
  "Let's move AKT1 on top." "Let's build a model of the KRAS neighborhood."))

(defparameter *PP-FAILURES* 
'("Let's move phosphorylated MAPK1 to the bottom."
  "Let's put AKT1, MAPK1 into mitochondrion." "Let's show AKT1 on the top."
  "Does ELK1 decrease FOS in the model?"
  "Does ELK1 decrease the amount of FOS in the model?"
  "Does FOS decrease ELK1 in the model?"
  "Is phosphorylated MAPK1 high at the end?"
  "What genes in the liver does stat3 regulate?" "Let's move AKT1 on top."
  "Let's show the phosphorylated AKT1 on top."
  "Show phosphorylated akt1 on top."
  "Let's build a model of the KRAS neighborhood."))

(defparameter *STRANDED-PREP-FAILURES* 
'("Are there any genes stat3 is upstream of?"
  "Can you find any apoptotic pathways stat3 is involved in?"
  "Can you find any apoptotic pathways that stat3 is involved in?"
  "What pathways are they in?"))

(defparameter *RELATIVIZER-FAILURES* 
'("List the genes STAT3 regulates" "List the genes which STAT3 regulates"))

(defparameter *EVIDENCE-FAILURES* 
'("What regulates GLUL from the literature?"
  "What regulates GLUL from the GEO RNAi database?"))

(defparameter *MISC-FAILURES* 
'("What are the genes that have strong evidence of being regulated by mir-122-5p?"
  "What processes involve srf"
  "Which stat3-regulated genes are involved in apoptosis?" "revert that"
  "undo that" "Is the amount of MAPK1 phosphorylated eventually high?"
  "Create a model where LCK phosphorylates CD3E" "Is the first one a kinase"
  "Let me know which genes stat3 regulates"
  "What drug could I use to target pancreatic cancer?"
  "What pathways utilize srf and is srf a kinase" "Which also regulate srf"
  "What is the path from RAF to MEK?" "What tissues can I ask about?"
  "How does knocking out p53 cause cancer via its effect on miRNAs?"
  "What questions can you answer about microRNAs?"
  "What transcription factors are in the calcium regulated pathways?"))

