
;; Rule execution records  6/10/20
;; 336 binary rules fired (out of ???)
;; ?? debris analysis rules fired

(in-package :sparser)


(define-rule-record  ; #<PSR-1728 "fold" → hyphen "fold">
  :form ("fold" ("-" "fold"))
  :count 2
  :function nil
  :contexts
     ((:left "-"
       :right "fold")))

(define-rule-record  ; #<PSR-1316 adjective → {adverb adjective}>
  :form (adjective (adverb adjective))
  :count 41
  :function interpret-adverb+adjective
  :contexts
     ((:left "always"
       :right "low")
      (:left "quite"
       :right "sure")
      (:left "pretty"
       :right "sure")
      (:left "very"
       :right "unlikely")
      (:left "mostly"
       :right "transient")
      (:left "only"
       :right "sometimes transient")
      (:left "sometimes"
       :right "transient")
      (:left "quite"
       :right "certain")
      (:left "very"
       :right "noisy")
      (:left "always"
       :right "high")
      (:left "only"
       :right "temporarily active")
      (:left "temporarily"
       :right "active")
      (:left "a bit more"
       :right "stable")
      (:left "constitutively"
       :right "active")
      (:left "constitutively"
       :right "present")
      (:left "very"
       :right "low")
      (:left "clearly"
       :right "able")
      (:left "entirely"
       :right "new")
      (:left "also"
       :right "highly selective")
      (:left "highly"
       :right "selective")
      (:left "barely"
       :right "detectable")
      (:left "first"
       :right "direct")
      (:left "relatively"
       :right "high")))

(define-rule-record  ; #<PSR-1114 adjg → {adjective subj+verb}>
  :form (adjective (adjective subj+verb))
  :count 1
  :function assimilate-thatcomp
  :contexts
     ((:left "quite sure"
       :right "there isn’t")))

(define-rule-record  ; #<PSR-1113 adjg → {adjective s}>
  :form (adjective (adjective s))
  :count 6
  :function assimilate-thatcomp
  :contexts
     ((:left "pretty sure"
       :right "it is transient")
      (:left "uncertain"
       :right "it is transient")
      (:left "confident"
       :right "it is transient")
      (:left "quite certain"
       :right "it is transient")
      (:left "unclear"
       :right "how RAS could affect ASPP2 to enhance p53 function")))

(define-rule-record  ; #<PSR-1111 adjg → {adjective thatcomp}>
  :form (adjective (adjective thatcomp))
  :count 6
  :function assimilate-thatcomp
  :contexts
     ((:left "95% sure"
       :right "that it is not transient")
      (:left "very unlikely"
       :right "that it is transient")
      (:left "unlikely"
       :right "that it is transient")
      (:left "likely"
       :right "that it is transient")
      (:left "likely"
       :right "that this possible feedback loop leads to an amplified pro-apoptotic signal")
      (:left "likely"
       :right "that at least two RAS proteins are needed to stimulate formation of the complex (Figure 7B)")))

(define-rule-record  ; #<PSR-1016 adjp → {adjective pp}>
  :form (adjective (adjective pp))
  :count 46
  :function adjoin-pp-to-vg
  :contexts
     ((:left "transient"
       :right "with a high probability")
      (:left "high"
       :right "at any time")
      (:left "very noisy"
       :right "over time")
      (:left "unchanged"
       :right "over time")
      (:left "unchanged"
       :right "in time")
      (:left "transient"
       :right "in time")
      (:left "Consistent"
       :right "with this finding")
      (:left "downstream"
       :right "of the RAS/RAF/MAPK pathway")
      (:left "high"
       :right "after CHX treatment")
      (:left "necessary"
       :right "for ASPP2 full pro-apoptotic activity")
      (:left "constitutively present"
       :right "at the plasma membrane")
      (:left "specific"
       :right "for the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "specific"
       :right "for the ASPP2 fragment")
      (:left "upstream"
       :right "of several signalling cascades [13]")
      (:left "upstream"
       :right "of several signalling cascades")
      (:left "specific"
       :right "to monoubiquitination at position 147")
      (:left "useful"
       :right "for the study of other monoubiquitinated proteins")
      (:left "suitable"
       :right "for detailed biophysical studies")
      (:left "identical"
       :right "to Ras ligated to Ubiquitin G76C")
      (:left "identical"
       :right "to Ras")
      (:left "insensitive"
       :right "to GAP–mediated regulation")
      (:left "similar"
       :right "to an oncogenic RasG12V mutation (9)")
      (:left "relative"
       :right "to the intrinsic rate of GTP hydrolysis")
      (:left "Similar"
       :right "to results observed with pharmacological MEK inhibitors")
      (:left "Similar"
       :right "to results")
      (:left "refractory"
       :right "to MEK inhibition (Fig. 4a)")
      (:left "sensitive"
       :right "to MAPK pathway inhibition at a target downstream of COT or RAF")
      (:left "downstream"
       :right "of COT or RAF")
      (:left "Consistent"
       :right "with this model")
      (:left "measurable and inducible"
       :right "following treatment with PLX4720 (Supplementary Fig. 9)")
      (:left "comparable"
       :right "to MEK1DD")
      (:left "consistent"
       :right "with MAP kinase pathway activation (Fig. 2a and Supplementary Fig. 6)")
      (:left "downstream"
       :right "of RAS")
      (:left "consistent"
       :right "with this")
      (:left "inactive"
       :right "in NRAS mutant cells (Figure 1E)")
      (:left "ineffective"
       :right "against a panel of 64 other protein kinases (Table S1)")
      (:left "also highly selective"
       :right "for BRAF")
      (:left "specific"
       :right "for       the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "specific"
       :right "for       the ASPP2 fragment")
      (:left "stable"
       :right "even       in the presence of high concentrations of GTP or GDP")))

(define-rule-record  ; #<PSR-1018 adjp → {adjective to-comp}>
  :form (adjective (adjective to-comp))
  :count 13
  :function adjoin-tocomp-to-vg
  :contexts
     ((:left "high enough"
       :right "to result in p53-dependent apoptosis")
      (:left "unable"
       :right "to bind to ASPP2")
      (:left "unable"
       :right "to amplify the RAS signal to p53")
      (:left "necessary"
       :right "for its ASPP2 to fully enhance p53 pro-apoptotic activity")
      (:left "necessary"
       :right "for Raf CAAX to stimulate the full transcriptional activity of p53 via ASPP2")
      (:left "able"
       :right "to stimulate wild-type ASPP2 and ASPP2 (S698A) by 2.5 fold")
      (:left "unable"
       :right "to increase the activity of mutant ASPP2 (S827A)")
      (:left "sufficient"
       :right "to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "sufficient"
       :right "to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX)")
      (:left "clearly able"
       :right "to phosphorylate the ASPP2 fragment in vitro (Figure 1B, left and middle panels)")
      (:left "clearly able"
       :right "to phosphorylate the ASPP2 fragment in vitro")
      (:left "sufficient"
       :right "to induce this phenotype (Fig. 4c, 4d, Supplementary Fig. 17)")
      (:left "sufficient"
       :right "to activate the MAPK pathway")))

(define-rule-record  ; #<PSR-1946 amount-of-time → number time-unit>
  :form (amount-of-time (number time-unit))
  :count 14
  :function nil
  :contexts
     ((:left "1"
       :right "hour")
      (:left "2"
       :right "hours")
      (:left "3"
       :right "hours")
      (:left "30"
       :right "minutes")
      (:left "50"
       :right "hours")))

(define-rule-record  ; #<PSR-222471 antibody → antibody protein>
  :form (antibody (antibody protein))
  :count 1
  :function make-antibody
  :contexts
     ((:left "anti-"
       :right "p53")))

(define-rule-record  ; #<PSR-1452 apostrophe-m → "am" / "I" ___>
  :form ("am" ("I" apostrophe-m))
  :count 1
  :function nil
  :contexts
     ((:left "I"
       :right "’m")))

(define-rule-record  ; #<PSR-214562 article-figure → article-figure number>
  :form (article-figure (article-figure number))
  :count 14
  :function nil
  :contexts
     ((:left "Figure"
       :right "5")
      (:left "Supplementary Fig."
       :right "18")
      (:left "Supplementary Fig."
       :right "17")
      (:left "Supplementary Fig."
       :right "10")
      (:left "Supplementary Fig."
       :right "9")
      (:left "Supplementary Fig."
       :right "8")
      (:left "Supplementary Fig."
       :right "7")
      (:left "Supplementary Fig."
       :right "6")
      (:left "Fig."
       :right "5")))

(define-rule-record  ; #<PSR-214561 article-figure → article-figure two-part-label>
  :form (article-figure (article-figure two-part-label))
  :count 33
  :function nil
  :contexts
     ((:left "Figure"
       :right "4B")
      (:left "Figure"
       :right "4A")
      (:left "Figure"
       :right "3C")
      (:left "Figure"
       :right "2A")
      (:left "Figure"
       :right "S1")
      (:left "Figure"
       :right "1B")
      (:left "Fig."
       :right "4c")
      (:left "Fig."
       :right "4b")
      (:left "Fig."
       :right "4a")
      (:left "Fig."
       :right "2c")
      (:left "Fig."
       :right "2b")
      (:left "Fig."
       :right "2a")
      (:left "Figure"
       :right "7B")
      (:left "Figure"
       :right "7A")
      (:left "Figure"
       :right "1E")
      (:left "Figure"
       :right "1B and 1C")
      (:left "Figure"
       :right "1A")
      (:left "Figure"
       :right "1D")
      (:left "Figure"
       :right "1C")))

(define-rule-record  ; #<PSR-1443 be → be not>
  :form (be (be not))
  :count 11
  :function nil
  :contexts
     ((:left "was"
       :right "not")
      (:left "are"
       :right "not")
      (:left "is"
       :right "not")))

(define-rule-record  ; #<PSR-1457 be → isn apostrophe-t>
  :form (be (isn apostrophe-t))
  :count 2
  :function nil
  :contexts
     ((:left "isn"
       :right "’t")))

(define-rule-record  ; #<PSR-1355 comparative-adjp → {comparative adjective}>
  :form (adjective (comparative adjective))
  :count 3
  :function interpret-comparative+adjective
  :contexts
     ((:left "more"
       :right "abundant")
      (:left "less"
       :right "sensitive")
      (:left "more"
       :right "effective")))

(define-rule-record  ; #<PSR-1360 comparative-adjp → {comparative-adjective than-np}>
  :form (comparative-adjective (comparative-adjective than-np))
  :count 4
  :function make-comparative-adjp-with-np
  :contexts
     ((:left "higher"
       :right "than the concentration of phosphorylated MAP2K1")
      (:left "faster"
       :right "than phosphorylated MAP2K1")
      (:left "slower"
       :right "than that")
      (:left "longer"
       :right "than the native linker")))

(define-rule-record  ; #<PSR-1352 comparative-adjp → {comparative-adjp pp}>
  :form (comparative-adjp (comparative-adjp pp))
  :count 4
  :function adjoin-pp-to-vg
  :contexts
     ((:left "more abundant than the BRAF-NRAS complex"
       :right "at 2 hours")
      (:left "less sensitive than the unmodified protein"
       :right "to GAP–mediated GTP hydrolysis")
      (:left "more effective than wild-type C-RAF"
       :right "in mediating PLX4720 resistance and ERK activation (Supplementary Fig. 10)")
      (:left "more effective than wild-type C-RAF"
       :right "in mediating PLX4720 resistance")))

(define-rule-record  ; #<PSR-1361 comparative-adjp → {comparative-adjp than-np}>
  :form (comparative-adjp (comparative-adjp than-np))
  :count 3
  :function make-comparative-adjp-with-np
  :contexts
     ((:left "more abundant"
       :right "than the BRAF-NRAS complex")
      (:left "less sensitive"
       :right "than the unmodified protein")
      (:left "more effective"
       :right "than wild-type C-RAF")))

(define-rule-record  ; #<PSR-1400 do → do not>
  :form (do (do
             not))
  :count 10
  :function nil
  :contexts
     ((:left "did"
       :right "not")
      (:left "does"
       :right "not")
      (:left "do"
       :right "not")))

(define-rule-record  ; #<PSR-1424 have → do have>
  :form (have (do have))
  :count 3
  :function nil
  :contexts
     ((:left "does"
       :right "phospho­MAPK1 now have a peak")
      (:left "Does"
       :right "the amount of BRAF-NRAS complex have a maximum")
      (:left "have"
       :right "have")))

(define-rule-record  ; #<PSR-1727 measurement → number "fold">
  :form (measurement (number "fold"))
  :count 7
  :function nil
  :contexts
     ((:left "10"
       :right "fold")
      (:left "2.5"
       :right "fold")
      (:left "30"
       :right "-fold")))

(define-rule-record  ; #<PSR-1863 measurement → number unit-of-measure>
  :form (measurement (number unit-of-measure))
  :count 7
  :function nil
  :contexts
     ((:left "1"
       :right "μM")
      (:left "2"
       :right "nM")
      (:left "13"
       :right "nM")
      (:left "40"
       :right "nM")))

(define-rule-record  ; #<PSR-1506 modal → modal quantifier>
  :form (modal (modal quantifier))
  :count 1
  :function setup-qfloat
  :contexts
     ((:left "must"
       :right "both")))

(define-rule-record  ; #<PSR-365 n-bar → {adjective common-noun/plural}>
  :form (common-noun/plural (adjective common-noun/plural))
  :count 40
  :function adj-noun-compound
  :contexts
     ((:left "living"
       :right "cells")
      (:left "molecular"
       :right "mechanisms")
      (:left "short"
       :right "periods of time")
      (:left "pro-apoptotic"
       :right "functions")
      (:left "radioactive"
       :right "peaks")
      (:left "very low"
       :right "levels")
      (:left "same"
       :right "conditions")
      (:left "high"
       :right "levels")
      (:left "biophysical"
       :right "studies")
      (:left "in vitro"
       :right "findings")
      (:left "similar"
       :right "results")
      (:left "novel"
       :right "therapeutic strategies")
      (:left "possible"
       :right "therapeutic strategies")
      (:left "MEK-dependent"
       :right "mechanisms")
      (:left "kinase-related"
       :right "open reading frames")
      (:left "clinical"
       :right "responses")
      (:left "Pre-clinical"
       :right "studies")
      (:left "Oncogenic"
       :right "mutations")
      (:left "certain"
       :right "contexts")
      (:left "MEK-independent and MEK-dependent"
       :right "mechanisms")
      (:left "prior"
       :right "observations")
      (:left "genetic"
       :right "alterations")
      (:left "oncogenic"
       :right "alleles")
      (:left "critical"
       :right "components")
      (:left "candidate"
       :right "ORFs")
      (:left "kinase-dead"
       :right "derivatives")
      (:left "nucleotide-free"
       :right "GTPases")
      (:left "current"
       :right "methods")
      (:left "high"
       :right "concentrations")))

(define-rule-record  ; #<PSR-416 n-bar → {adjective common-noun}>
  :form (common-noun (adjective common-noun))
  :count 149
  :function adj-noun-compound
  :contexts
     ((:left "little"
       :right "chance")
      (:left "high"
       :right "probability")
      (:left "low"
       :right "value")
      (:left "high"
       :right "value")
      (:left "low"
       :right "level")
      (:left "high"
       :right "level")
      (:left "initial"
       :right "number")
      (:left "initial"
       :right "concentration")
      (:left "initial"
       :right "amount")
      (:left "cytoplasmic"
       :right "activation")
      (:left "nuclear"
       :right "accumulation and phosphorylation")
      (:left "nuclear"
       :right "entry and retention")
      (:left "same"
       :right "level")
      (:left "nuclear"
       :right "accumulation")
      (:left "Real time"
       :right "fluorescence microscopy and fluorescence correlation spectroscopy")
      (:left "spatio-temporal"
       :right "regulation")
      (:left "nuclear"
       :right "translocation")
      (:left "Nuclear"
       :right "Translocation")
      (:left "pro-apoptotic"
       :right "signaling")
      (:left "cytoplasmic and nuclear"
       :right "translocation")
      (:left "effective"
       :right "way")
      (:left "important"
       :right "feedback loop")
      (:left "apoptotic"
       :right "stimulus")
      (:left "fail-proof"
       :right "mechanism")
      (:left "p53-dependent"
       :right "apoptosis")
      (:left "inactive"
       :right "state")
      (:left "pro-apoptotic"
       :right "signal")
      (:left "possible"
       :right "feedback loop")
      (:left "active"
       :right "RAS")
      (:left "independent"
       :right "manner")
      (:left "transcriptional"
       :right "level")
      (:left "significant"
       :right "decrease")
      (:left "identical"
       :right "activity")
      (:left "pro-apoptotic"
       :right "activity")
      (:left "similar"
       :right "extent")
      (:left "little"
       :right "effect")
      (:left "transcriptional"
       :right "activity")
      (:left "Pro-Apoptotic"
       :right "Function")
      (:left "specific"
       :right "antibody")
      (:left "same"
       :right "mass")
      (:left "apoptotic"
       :right "function")
      (:left "kinetic"
       :right "modeling")
      (:left "cognate"
       :right "GEF and GAPs")
      (:left "single"
       :right "site")
      (:left "unmodified"
       :right "protein")
      (:left "in vitro"
       :right "system")
      (:left "native"
       :right "linker")
      (:left "unmodified"
       :right "Ras")
      (:left "integrative"
       :right "approach")
      (:left "de novo"
       :right "resistance")
      (:left "de novo or acquired"
       :right "resistance")
      (:left "anticancer"
       :right "therapeutics")
      (:left "MEK-independent"
       :right "manner")
      (:left "acquired"
       :right "resistance")
      (:left "mutual"
       :right "exclusivity")
      (:left "ectopic"
       :right "expression")
      (:left "pathway-independent"
       :right "alteration")
      (:left "initial"
       :right "screen")
      (:left "constitutive"
       :right "phosphorylation")
      (:left "Supplementary"
       :right "Fig.")
      (:left "stable"
       :right "complex")
      (:left "inactive"
       :right "conformation")
      (:left "following"
       :right "mechanism")
      (:left "chemical or genetic"
       :right "means")
      (:left "intriguing"
       :right "paradox")
      (:left "oncogenic"
       :right "RAS")
      (:left "unexpected"
       :right "increase")
      (:left "close"
       :right "analog")
      (:left "least-selective"
       :right "drug")
      (:left "class II (inactive conformation binder)"
       :right "drug")
      (:left "novel"
       :right "substrate")
      (:left "low"
       :right "serum")
      (:left "phospho-specific"
       :right "antibody")
      (:left "synthetic"
       :right "peptide")
      (:left "nucleotide-free"
       :right "state")
      (:left "wild type"
       :right "Ras")
      (:left "first direct"
       :right "evidence")
      (:left "short-lived"
       :right "transition state intermediate")
      (:left "nucleotide-free"
       :right "Ras")
      (:left "active"
       :right "state")))

(define-rule-record  ; #<PSR-399 n-bar → {adjective n-bar}>
  :form (n-bar (adjective n-bar))
  :count 57
  :function adj-noun-compound
  :contexts
     ((:left "oncogenic"
       :right "RAS activation")
      (:left "novel"
       :right "RAS/Raf/MAPK/ASPP2 pathway")
      (:left "diffuse"
       :right "large B cell lymphomas")
      (:left "large"
       :right "B cell lymphomas")
      (:left "endogenous"
       :right "ASPP2 protein level")
      (:left "endogenous"
       :right "ASPP2 activity")
      (:left "full"
       :right "transcriptional activity")
      (:left "full"
       :right "pro-apoptotic activity")
      (:left "pro-apoptotic"
       :right "Bax reporter")
      (:left "phospho-"
       :right "specific antibody")
      (:left "in vitro"
       :right "phophorylation assay")
      (:left "putative"
       :right "phosphorylation site")
      (:left "putative"
       :right "phosphorylation sites")
      (:left "putative"
       :right "MAPK phosphorylation sites")
      (:left "chemical"
       :right "ligation strategy")
      (:left "enzymatic and chemical"
       :right "ubiquitination linkers")
      (:left "oncogenic"
       :right "RasG12V mutation")
      (:left "same"
       :right "GAP-to-Ras ratio")
      (:left "high-throughput"
       :right "functional screens")
      (:left "combinatorial"
       :right "MAPK pathway inhibition")
      (:left "selective"
       :right "RAF kinase inhibitor")
      (:left "effective"
       :right "long-term treatment strategies")
      (:left "long-term"
       :right "treatment strategies")
      (:left "in vitro"
       :right "kinase assay using recombinant COT and ERK1")
      (:left "pharmacological"
       :right "MEK inhibitors")
      (:left "Ectopic"
       :right "COT expression")
      (:left "sustained"
       :right "ERK phosphorylation")
      (:left "COT-expressing"
       :right "cancer cells")
      (:left "oncogenic"
       :right "RAS mutations")
      (:left "high-activity"
       :right "C-RAF truncation mutant")
      (:left "sustained"
       :right "MEK/ERK activation")
      (:left "endogenous"
       :right "C-RAF phosphorylation")
      (:left "endogenous"
       :right "C-RAF:B-RAF heterodimers")
      (:left "persistent"
       :right "ERK/MEK phosphorylation")
      (:left "potent and selective"
       :right "MEK inhibitor PD184352")
      (:left "active"
       :right "conformation binder")
      (:left "low"
       :right "nM range")
      (:left "inactive"
       :right "conformation binder")
      (:left "different"
       :right "phospho-ASPP2 antibody")
      (:left "non-radioactive"
       :right "in vitro phosphorylation assay")
      (:left "in vitro"
       :right "phosphorylation assay")
      (:left "relatively high"
       :right "GTP:GDP ratio")))

(define-rule-record  ; #<PSR-433 n-bar → {adjective proper-noun}>
  :form (proper-noun (adjective proper-noun))
  :count 23
  :function adj-noun-compound
  :contexts
     ((:left "-tagged"
       :right "ERK1")
      (:left "Wild-type"
       :right "ASPP2")
      (:left "wild-type"
       :right "p53")
      (:left "wild type"
       :right "ASPP2")
      (:left "wild-type"
       :right "ASPP2")
      (:left "recombinant"
       :right "COT and ERK1")
      (:left "sustained"
       :right "C-RAF")
      (:left "wild-type"
       :right "C-RAF")
      (:left "wild-type"
       :right "COT or C-RAF")
      (:left "endogenous"
       :right "ASPP2")
      (:left "recombinant"
       :right "MAPK1")))

(define-rule-record  ; #<PSR-348 n-bar → {adjective verb+ing}>
  :form (verb+ing (adjective verb+ing))
  :count 1
  :function adj-noun-compound
  :contexts
     ((:left "differential"
       :right "shuttling")))

(define-rule-record  ; #<PSR-379 n-bar → {common-noun common-noun/plural}>
  :form (common-noun/plural (common-noun common-noun/plural))
  :count 43
  :function noun-noun-compound
  :contexts
     ((:left "pathway"
       :right "effectors")
      (:left "cell"
       :right "lysates")
      (:left "growth"
       :right "receptors")
      (:left "B cell"
       :right "lymphomas")
      (:left "protein"
       :right "levels")
      (:left "control"
       :right "cells")
      (:left "substitution"
       :right "mutants")
      (:left "left and middle"
       :right "panels")
      (:left "phosphorylation"
       :right "sites")
      (:left "downstream"
       :right "pathways")
      (:left "switch"
       :right "domains")
      (:left "downstream"
       :right "effectors")
      (:left "ubiquitination"
       :right "linkers")
      (:left "treatment"
       :right "strategies")
      (:left "resistance"
       :right "mechanisms")
      (:left "RAF and MEK"
       :right "inhibitors")
      (:left "MEK"
       :right "inhibitors")
      (:left "cancer"
       :right "cells")
      (:left "RAS"
       :right "mutations")
      (:left "RAS"
       :right "proteins")
      (:left "mutant"
       :right "cells")
      (:left "melanoma"
       :right "cells")
      (:left "protein"
       :right "kinases")
      (:left "BiFC"
       :right "results")
      (:left "guanine"
       :right "nucleotides")))

(define-rule-record  ; #<PSR-430 n-bar → {common-noun common-noun}>
  :form (common-noun (common-noun common-noun))
  :count 155
  :function noun-noun-compound
  :contexts
     ((:left "total"
       :right "amount")
      (:left "migration"
       :right "Forster resonance energy transfer and fluorescence correlation spectroscopy measurements")
      (:left "serum"
       :right "stimulation")
      (:left "control"
       :right "IgG")
      (:left "mutant"
       :right "RAS")
      (:left "RAS"
       :right "signal")
      (:left "pathway"
       :right "activity")
      (:left "breast"
       :right "epithelium")
      (:left "DNA"
       :right "methylation")
      (:left "human"
       :right "cancer")
      (:left "tumour"
       :right "growth")
      (:left "tumor"
       :right "suppressor")
      (:left "binding"
       :right "ability")
      (:left "Figure"
       :right "S3C")
      (:left "protein"
       :right "stability")
      (:left "mRNA"
       :right "level")
      (:left "UO126"
       :right "treatment")
      (:left "protein"
       :right "level")
      (:left "Figure"
       :right "S2")
      (:left "MAPK"
       :right "inhibitor")
      (:left "transactivation"
       :right "function")
      (:left "Figure"
       :right "3A")
      (:left "transactivation"
       :right "activity")
      (:left "Raf"
       :right "pathway")
      (:left "mutant"
       :right "form")
      (:left "right"
       :right "panel")
      (:left "phophorylation"
       :right "assay")
      (:left "transcription"
       :right "function")
      (:left "RAS"
       :right "signaling")
      (:left "phosphorylation"
       :right "site")
      (:left "radioactivity"
       :right "content")
      (:left "C-terminus"
       :right "fragment")
      (:left "MAPK"
       :right "phosphorylation")
      (:left "RAS"
       :right "signalling")
      (:left "oncogene"
       :right "mutation")
      (:left "hormone"
       :right "stimulus")
      (:left "Ras"
       :right "activation")
      (:left "GAP"
       :right "defect")
      (:left "region"
       :right "dynamics")
      (:left "ligation"
       :right "strategy")
      (:left "reconstitution"
       :right "system")
      (:left "Ras"
       :right "regulation")
      (:left "GAP"
       :right "downregulation")
      (:left "linker"
       :right "length")
      (:left "order of magnitude"
       :right "increase")
      (:left "Ras"
       :right "monoubiquitination")
      (:left "MEK or RAF"
       :right "inhibition")
      (:left "RAF"
       :right "signaling")
      (:left "pathway"
       :right "agonist")
      (:left "kinase"
       :right "inhibitor")
      (:left "mitogen activated protein kinase (MAPK)"
       :right "signaling cascade")
      (:left "B-RAFV600E"
       :right "mutation")
      (:left "MEK"
       :right "inhibition")
      (:left "pathway"
       :right "inhibition")
      (:left "drug"
       :right "treatment")
      (:left "ERK"
       :right "activation")
      (:left "truncation"
       :right "mutant")
      (:left "resistance"
       :right "phenotype")
      (:left "dummy"
       :right "sentence")
      (:left "drug"
       :right "sensitivity")
      (:left "MAPK"
       :right "signaling")
      (:left "RAF"
       :right "inhibition")
      (:left "pathway"
       :right "activation")
      (:left "ERK"
       :right "phosphorylation")
      (:left "MAPK"
       :right "pathway")
      (:left "partner"
       :right "protein")
      (:left "RAF"
       :right "activation")
      (:left "MEK and ERK"
       :right "signaling")
      (:left "RNA"
       :right "interference")
      (:left "ERK"
       :right "activity")
      (:left "Table"
       :right "S2")
      (:left "et al.,"
       :right "1999")
      (:left "cancer"
       :right "cell proliferation")
      (:left "Table"
       :right "S1")
      (:left "et al.,"
       :right "2006")
      (:left "et al.,"
       :right "2008")
      (:left "GTP:GDP"
       :right "ratio")
      (:left "nM"
       :right "range")
      (:left "et al.,"
       :right "2004")
      (:left "conformation"
       :right "binder")
      (:left "RAS"
       :right "activation")
      (:left "RAS"
       :right "stimulation")
      (:left "background"
       :right "stimulation")
      (:left "phosphorylation"
       :right "assay")
      (:left "column"
       :right "purification")
      (:left "fluorescence"
       :right "complementation")))

(define-rule-record  ; #<PSR-413 n-bar → {common-noun n-bar}>
  :form (n-bar (common-noun n-bar))
  :count 53
  :function noun-noun-compound
  :contexts
     ((:left "energy"
       :right "migration Forster resonance energy transfer and fluorescence correlation spectroscopy measurements")
      (:left "mouse"
       :right "embryo fibroblast ERK1-knock-out cell line")
      (:left "embryo"
       :right "fibroblast ERK1-knock-out cell line")
      (:left "fibroblast"
       :right "ERK1-knock-out cell line")
      (:left "ERK"
       :right "nuclear translocation")
      (:left "ERK"
       :right "Nuclear Translocation")
      (:left "downstream"
       :right "pathway effectors")
      (:left "Total"
       :right "cell lysates")
      (:left "downstream"
       :right "pathway activity")
      (:left "binding"
       :right "active RAS")
      (:left "alanine"
       :right "substitution mutants")
      (:left "downstream"
       :right "Raf /MAPK pathway")
      (:left "Raf"
       :right "/MAPK pathway")
      (:left "second"
       :right "putative phosphorylation site")
      (:left "MAPK"
       :right "putative phosphorylation sites")
      (:left "switch"
       :right "region dynamics")
      (:left "linker"
       :right "one bond")
      (:left "MAPK"
       :right "pathway activation")
      (:left "MAPK"
       :right "pathway agonist")
      (:left "RAF"
       :right "kinase inhibitor")
      (:left "kinase"
       :right "assay using recombinant COT and ERK1")
      (:left "MEK"
       :right "inhibitors CI-1040 and AZD6244")
      (:left "MEK1/2"
       :right "inhibitor CI-1040")
      (:left "MAPK"
       :right "pathway inhibition")
      (:left "MAPK"
       :right "pathway-independent alteration")
      (:left "MAP kinase"
       :right "pathway activation")
      (:left "RAS"
       :right "mutant cells")
      (:left "Dumaz"
       :right "et al., 2006")
      (:left "mutant"
       :right "A375 melanoma cells")
      (:left "MEK"
       :right "inhibitor PD184352")
      (:left "mutant"
       :right "cancer cell proliferation")
      (:left "King"
       :right "et al., 2006")
      (:left "Tsai"
       :right "et al., 2008")
      (:left "Wilhelm"
       :right "et al., 2004")
      (:left "Wan"
       :right "et al., 2004")
      (:left "human"
       :right "colon cancer cell line HKe3 ER:HRASV12 cells")
      (:left "colon cancer"
       :right "cell line HKe3 ER:HRASV12 cells")
      (:left "cell line"
       :right "HKe3 ER:HRASV12 cells")
      (:left "affinity"
       :right "column purification")))

(define-rule-record  ; #<PSR-464 n-bar → {common-noun proper-name}>
  :form (proper-name (common-noun proper-name))
  :count 5
  :function noun-noun-compound
  :contexts
     ((:left "Figure"
       :right "S3C")
      (:left "Figure"
       :right "S1G")
      (:left "Figure"
       :right "S1F")
      (:left "Figure"
       :right "S1E")
      (:left "Figure"
       :right "S1C")))

(define-rule-record  ; #<PSR-447 n-bar → {common-noun proper-noun}>
  :form (proper-noun (common-noun proper-noun))
  :count 15
  :function noun-noun-compound
  :contexts
     ((:left "total"
       :right "BRAF")
      (:left "Figure"
       :right "S3B")
      (:left "Figure"
       :right "S3A")
      (:left "mutant"
       :right "ASPP2")
      (:left "kinase"
       :right "B-RAF")
      (:left "inhibitor"
       :right "CI-1040")
      (:left "mutant"
       :right "BRAF")
      (:left "inhibitor"
       :right "PD184352")
      (:left "inhibitor"
       :right "SB590885")
      (:left "polyclonal antibody"
       :right "NGH.S4")))

(define-rule-record  ; #<PSR-362 n-bar → {common-noun verb+ing}>
  :form (verb+ing (common-noun verb+ing))
  :count 1
  :function noun-noun-compound
  :contexts
     ((:left "assay"
       :right "using")))

(define-rule-record  ; #<PSR-444 n-bar → {common-noun/plural proper-noun}>
  :form (proper-noun (common-noun/plural proper-noun))
  :count 1
  :function noun-noun-compound
  :contexts
     ((:left "inhibitors"
       :right "CI-1040 and AZD6244")))

(define-rule-record  ; #<PSR-1327 n-bar → {comparative-adjective common-noun/plural}>
  :form (common-noun/plural (comparative-adjective common-noun/plural))
  :count 2
  :function comparative-adj-noun-compound
  :contexts
     ((:left "longer"
       :right "periods")))

(define-rule-record  ; #<PSR-1339 n-bar → {comparative-adjective common-noun}>
  :form (common-noun (comparative-adjective common-noun))
  :count 3
  :function comparative-adj-noun-compound
  :contexts
     ((:left "more precise"
       :right "answer")
      (:left "lower"
       :right "affinity")))

(define-rule-record  ; #<PSR-1335 n-bar → {comparative-adjective n-bar}>
  :form (n-bar (comparative-adjective n-bar))
  :count 2
  :function comparative-adj-noun-compound
  :contexts
     ((:left "greater"
       :right "fluorescence       complementation")))

(define-rule-record  ; #<PSR-378 n-bar → {n-bar common-noun/plural}>
  :form (common-noun/plural (n-bar common-noun/plural))
  :count 7
  :function noun-noun-compound
  :contexts
     ((:left "BRAF-NRAS"
       :right "complexes")
      (:left "Bax-luciferase"
       :right "levels")
      (:left "MAPK phosphorylation"
       :right "sites")
      (:left "BRAFV600E"
       :right "cell lines")
      (:left "C-RAF:B-RAF"
       :right "heterodimers")))

(define-rule-record  ; #<PSR-429 n-bar → {n-bar common-noun}>
  :form (common-noun (n-bar common-noun))
  :count 38
  :function noun-noun-compound
  :contexts
     ((:left "MAPK1­DUSP6"
       :right "complex")
      (:left "MAP2K1­MAPK1"
       :right "complex")
      (:left "BRAF-NRAS"
       :right "dimer")
      (:left "BRAF-RAF1"
       :right "complex")
      (:left "BRAF-RAF1"
       :right "heterodimer")
      (:left "BRAF-NRAS"
       :right "complex")
      (:left "differential shuttling"
       :right "behavior")
      (:left "ERK1-knock-out"
       :right "cell line")
      (:left "ASPP2 phosphorylation"
       :right "mutant")
      (:left "Ser 827"
       :right "phosphorylation")
      (:left "Ser827"
       :right "phosphorylation")
      (:left "RAS-ASPP"
       :right "interaction")
      (:left "Raf-MAPK"
       :right "pathway")
      (:left "GAP-to-Ras"
       :right "ratio")
      (:left "GAP–to–Ras"
       :right "ratio")
      (:left "phospho-ASPP2"
       :right "antibody")
      (:left "RBD-Ras"
       :right "complex")
      (:left "GEF-Ras"
       :right "complex")))

(define-rule-record  ; #<PSR-412 n-bar → {n-bar n-bar}>
  :form (n-bar (n-bar n-bar))
  :count 4
  :function noun-noun-compound
  :contexts
     ((:left "serine/threonine"
       :right "kinase B-RAF")
      (:left "assay using"
       :right "recombinant COT and ERK1")
      (:left "30-fold"
       :right "lower affinity")))

(define-rule-record  ; #<PSR-426 n-bar → {np common-noun}>
  :form (common-noun (np common-noun))
  :count 4
  :function noun-noun-compound
  :contexts
     ((:left "anti-p53"
       :right "antibody")
      (:left "20%"
       :right "fetal calf serum (FCS)")))

(define-rule-record  ; #<PSR-409 n-bar → {np n-bar}>
  :form (n-bar (np n-bar))
  :count 1
  :function noun-noun-compound
  :contexts
     ((:left "MEK1/2 knockdown only modestly suppressed COT–mediated"
       :right "ERK phosphorylation")))

(define-rule-record  ; #<PSR-460 n-bar → {np proper-name}>
  :form (proper-name (np proper-name))
  :count 2
  :function noun-noun-compound
  :contexts
     ((:left "Figures"
       :right "S1A–S1D")))

(define-rule-record  ; #<PSR-443 n-bar → {np proper-noun}>
  :form (proper-noun (np proper-noun))
  :count 2
  :function noun-noun-compound
  :contexts
     ((:left "its downstream pathway effectors"
       :right "Raf/MAPK")
      (:left "1 μM"
       :right "CI-1040")))

(define-rule-record  ; #<PSR-374 n-bar → {number common-noun/plural}>
  :form (common-noun/plural (number common-noun/plural))
  :count 9
  :function number-noun-compound
  :contexts
     ((:left "1–2"
       :right "bonds")
      (:left "five"
       :right "bonds")
      (:left "seven"
       :right "bonds")
      (:left "two"
       :right "GAPs")
      (:left "four"
       :right "lines")
      (:left "four"
       :right "drugs")))

(define-rule-record  ; #<PSR-425 n-bar → {number common-noun}>
  :form (common-noun (number common-noun))
  :count 1
  :function number-noun-compound
  :contexts
     ((:left "one"
       :right "bond")))

(define-rule-record  ; #<PSR-408 n-bar → {number n-bar}>
  :form (n-bar (number n-bar))
  :count 8
  :function number-noun-compound
  :contexts
     ((:left "two"
       :right "putative MAPK phosphorylation sites")
      (:left "two"
       :right "radioactive peaks")
      (:left "two"
       :right "conserved putative MAPK phosphorylation sites")
      (:left "nine"
       :right "candidate ORFs")
      (:left "at least two"
       :right "RAS proteins")
      (:left "64"
       :right "other protein kinases")))

(define-rule-record  ; #<PSR-432 n-bar → {proper-name common-noun}>
  :form (common-noun (proper-name common-noun))
  :count 4
  :function noun-noun-compound
  :contexts
     ((:left "~600"
       :right "kinase")
      (:left "pThr202/Tyr204"
       :right "phosphorylation")
      (:left "B-RAFV600E"
       :right "mutation")
      (:left "GTP:GDP"
       :right "ratio")))

(define-rule-record  ; #<PSR-415 n-bar → {proper-name n-bar}>
  :form (n-bar (proper-name n-bar))
  :count 2
  :function noun-noun-compound
  :contexts
     ((:left "V5-tagged"
       :right "wild-type ASPP2")
      (:left "Sebolt-Leopold"
       :right "et al., 1999")))

(define-rule-record  ; #<PSR-380 n-bar → {proper-noun common-noun/plural}>
  :form (common-noun/plural (proper-noun common-noun/plural))
  :count 24
  :function noun-noun-compound
  :contexts
     ((:left "HKe3 ER:HRAS12"
       :right "cells")
      (:left "ASPP2"
       :right "levels")
      (:left "ASPP2"
       :right "sites")
      (:left "ASPP1"
       :right "sites")
      (:left "HEK293T"
       :right "cells")
      (:left "A375 and SKMEL28"
       :right "cells")
      (:left "OUMS-23 and RPMI-7951"
       :right "cell lines")
      (:left "A375"
       :right "cells")
      (:left "BRAF"
       :right "inhibitors")
      (:left "SkMel24, SkMel28, D25, and WM266.4"
       :right "cells")
      (:left "HKe3 ER:HRASV12"
       :right "cells")
      (:left "Saos2"
       :right "cells")))

(define-rule-record  ; #<PSR-431 n-bar → {proper-noun common-noun}>
  :form (common-noun (proper-noun common-noun))
  :count 102
  :function noun-noun-compound
  :contexts
     ((:left "MAP2K1"
       :right "phosphorylation")
      (:left "BRAF"
       :right "dimer")
      (:left "BRAF"
       :right "homodimer")
      (:left "BRAF"
       :right "monomer")
      (:left "RAS/Raf/MAPK/ASPP2"
       :right "pathway")
      (:left "ASPP2"
       :right "signaling")
      (:left "ASPP2"
       :right "feedback loop")
      (:left "RAS/MAPK"
       :right "signaling")
      (:left "RAS/RAF/MAPK"
       :right "pathway")
      (:left "N-"
       :right "terminus")
      (:left "p53"
       :right "family")
      (:left "HKe3 ER:HRASV12"
       :right "system")
      (:left "ASPP2"
       :right "translocation")
      (:left "CHX"
       :right "treatment")
      (:left "cycloheximide (CHX)"
       :right "addition")
      (:left "ASPP2"
       :right "expression")
      (:left "ASPP2"
       :right "function")
      (:left "/MAPK"
       :right "pathway")
      (:left "Bax"
       :right "reporter")
      (:left "ASPP2"
       :right "activity")
      (:left "Raf/MAPK"
       :right "pathway")
      (:left "Raf/MAPK"
       :right "Pathway")
      (:left "ASPP2"
       :right "protein")
      (:left "RAS/Raf/MAPK"
       :right "pathway")
      (:left "p53"
       :right "function")
      (:left "ASPP2"
       :right "N-terminus")
      (:left "ASPP2 (693-1128)"
       :right "fragment")
      (:left "RasG12V"
       :right "mutation")
      (:left "GTP"
       :right "hydrolysis")
      (:left "COT"
       :right "kinase activity")
      (:left "C-RAF"
       :right "activity")
      (:left "PLX4720"
       :right "resistance")
      (:left "C-RAF"
       :right "activation")
      (:left "C-RAF"
       :right "phosphorylation")
      (:left "B-RAF"
       :right "inhibition")
      (:left "C-RAF"
       :right "activation and heterodimerization")
      (:left "ERK/MEK"
       :right "phosphorylation")
      (:left "COT"
       :right "expression")
      (:left "CRAF"
       :right "activation")
      (:left "CRAF"
       :right "hyperactivation")
      (:left "MEK/ERK"
       :right "activation")
      (:left "NRAS or CRAF"
       :right "depletion")
      (:left "class I (active conformation binder)"
       :right "inhibitor")
      (:left "RAS/MAPK"
       :right "pathway")
      (:left "EGF"
       :right "stimulation")
      (:left "ASPP2"
       :right "phosphorylation")
      (:left "ASPP2"
       :right "fragment")
      (:left "GST-ASPP2"
       :right "fragment")))

(define-rule-record  ; #<PSR-414 n-bar → {proper-noun n-bar}>
  :form (n-bar (proper-noun n-bar))
  :count 34
  :function noun-noun-compound
  :contexts
     ((:left "ERK1"
       :right "nuclear accumulation")
      (:left "green fluorescent protein (GFP)"
       :right "-tagged ERK1")
      (:left "p53"
       :right "pro-apoptotic signaling")
      (:left "ASPP2"
       :right "N- terminus")
      (:left "p53-"
       :right "independent manner")
      (:left "p53"
       :right "pro-apoptotic activity")
      (:left "p53"
       :right "binding ability")
      (:left "ASPP2"
       :right "protein levels")
      (:left "RAS/MAPK"
       :right "pathway activation")
      (:left "RAS/MAPK"
       :right "pathway inhibition")
      (:left "ASPP2"
       :right "protein level")
      (:left "ASPP2"
       :right "full pro-apoptotic activity")
      (:left "ASPP2 and p53"
       :right "transactivation activity")
      (:left "RAS/Raf/MAPK"
       :right "pathway activation")
      (:left "p53"
       :right "pro-apoptotic functions")
      (:left "C-RAF"
       :right "truncation mutant")
      (:left "PLX4720"
       :right "resistance phenotype")
      (:left "D04, MM415, MM485, and WM852"
       :right "NRAS mutant cells")
      (:left "NRAS"
       :right "mutant cells")
      (:left "BRAF"
       :right "mutant A375 melanoma cells")
      (:left "A375"
       :right "melanoma cells")
      (:left "BRAF"
       :right "mutant cancer cell proliferation")
      (:left "class I"
       :right "inhibitor SB590885")
      (:left "PI3KC2β"
       :right "RBD-Ras complex")))

(define-rule-record  ; #<PSR-363 n-bar → {proper-noun verb+ing}>
  :form (verb+ing (proper-noun verb+ing))
  :count 4
  :function noun-noun-compound
  :contexts
     ((:left "ASPP2"
       :right "binding")
      (:left "BRAF"
       :right "binding")
      (:left "PI3KC2β"
       :right "binding")))

(define-rule-record  ; #<PSR-373 n-bar → {quantifier common-noun/plural}>
  :form (common-noun/plural (quantifier common-noun/plural))
  :count 9
  :function quantifier-noun-compound
  :contexts
     ((:left "several"
       :right "steps")
      (:left "several"
       :right "signalling cascades")
      (:left "both"
       :right "cell lines")
      (:left "Several"
       :right "groups")
      (:left "no"
       :right "proteins")
      (:left "all"
       :right "GTPases")))

(define-rule-record  ; #<PSR-424 n-bar → {quantifier common-noun}>
  :form (common-noun (quantifier common-noun))
  :count 9
  :function quantifier-noun-compound
  :contexts
     ((:left "no"
       :right "peak")
      (:left "any"
       :right "time")
      (:left "some"
       :right "time")
      (:left "both"
       :right "senescence")
      (:left "additional"
       :right "cysteine")
      (:left "No"
       :right "increase")
      (:left "another"
       :right "paradigm")
      (:left "additional"
       :right "support")))

(define-rule-record  ; #<PSR-407 n-bar → {quantifier n-bar}>
  :form (n-bar (quantifier n-bar))
  :count 19
  :function quantifier-noun-compound
  :contexts
     ((:left "many"
       :right "cellular responses")
      (:left "both"
       :right "invasive and metastatic cells")
      (:left "another"
       :right "MAPK inhibitor")
      (:left "all"
       :right "background stimulation")
      (:left "both"
       :right "MAPK putative phosphorylation sites")
      (:left "All"
       :right "other activities")
      (:left "another"
       :right "dummy sentence")
      (:left "such"
       :right "co-occurring events")
      (:left "another"
       :right "four lines")
      (:left "all"
       :right "four drugs")
      (:left "several"
       :right "other kinases")
      (:left "another"
       :right "different phospho-ASPP2 antibody")
      (:left "all"
       :right "background       stimulation")))

(define-rule-record  ; #<PSR-470 n-bar → {quantifier number}>
  :form (number (quantifier number))
  :count 1
  :function quantifier-noun-compound
  :contexts
     ((:left "All"
       :right "three")))

(define-rule-record  ; #<PSR-441 n-bar → {quantifier proper-noun}>
  :form (proper-noun (quantifier proper-noun))
  :count 2
  :function quantifier-noun-compound
  :contexts
     ((:left "no"
       :right "NRAS")))

(define-rule-record  ; #<PSR-1517 n-bar → {specifier common-noun/plural}>
  :form (common-noun/plural (specifier common-noun/plural))
  :count 1
  :function attach-specifier
  :contexts
     ((:left "the first 2"
       :right "hours")))

(define-rule-record  ; #<PSR-371 n-bar → {verb+ing common-noun/plural}>
  :form (common-noun/plural (verb+ing common-noun/plural))
  :count 1
  :function verb+ing-noun-compound
  :contexts
     ((:left "co-occurring"
       :right "events")))

(define-rule-record  ; #<PSR-422 n-bar → {verb+ing common-noun}>
  :form (common-noun (verb+ing common-noun))
  :count 4
  :function verb+ing-noun-compound
  :contexts
     ((:left "underlying"
       :right "mechanism")))

(define-rule-record  ; #<PSR-500 np → {common-noun pp}>
  :form (common-noun (common-noun pp))
  :count 1
  :function interpret-pp-adjunct-to-np
  :contexts
     ((:left "upstream"
       :right "of RAS")))

(define-rule-record  ; #<PSR-740 np → {common-noun transitive-clause-without-object}>
  :form (common-noun (common-noun transitive-clause-without-object))
  :count 1
  :function apply-where-when-relative-clause
  :contexts
     ((:left "MEK1/2"
       :right "knockdown only modestly suppressed COT–mediated")))

(define-rule-record  ; #<PSR-318 np → {demonstrative common-noun/plural}>
  :form (common-noun/plural (demonstrative common-noun/plural))
  :count 20
  :function determiner-noun
  :contexts
     ((:left "These"
       :right "findings")
      (:left "these"
       :right "mutants")
      (:left "These"
       :right "results")
      (:left "these"
       :right "data")
      (:left "these"
       :right "results")
      (:left "these"
       :right "genes")
      (:left "these"
       :right "complexes")
      (:left "these"
       :right "cells")
      (:left "these"
       :right "lines")
      (:left "These"
       :right "data")))

(define-rule-record  ; #<PSR-330 np → {demonstrative common-noun}>
  :form (common-noun (demonstrative common-noun))
  :count 19
  :function determiner-noun
  :contexts
     ((:left "This"
       :right "process")
      (:left "This"
       :right "effect")
      (:left "this"
       :right "phosphorylation")
      (:left "this"
       :right "outcome")
      (:left "that"
       :right "mutation")
      (:left "that"
       :right "monoubiquitination")
      (:left "this"
       :right "scale")
      (:left "this"
       :right "setting")
      (:left "this"
       :right "hypothesis")
      (:left "this"
       :right "phenotype")
      (:left "this"
       :right "model")
      (:left "this"
       :right "agent")
      (:left "this"
       :right "study")
      (:left "this"
       :right "form")
      (:left "This"
       :right "state")))

(define-rule-record  ; #<PSR-326 np → {demonstrative n-bar}>
  :form (n-bar (demonstrative n-bar))
  :count 5
  :function determiner-noun
  :contexts
     ((:left "this"
       :right "possible feedback loop")
      (:left "that"
       :right "Ser 827 phosphorylation")
      (:left "these"
       :right "radioactive peaks")
      (:left "This"
       :right "chemical ligation strategy")))

(define-rule-record  ; #<PSR-334 np → {demonstrative proper-noun}>
  :form (proper-noun (demonstrative proper-noun))
  :count 2
  :function determiner-noun
  :contexts
     ((:left "that"
       :right "ASPP2")))

(define-rule-record  ; #<PSR-314 np → {demonstrative verb+ing}>
  :form (verb+ing (demonstrative verb+ing))
  :count 1
  :function determiner-noun
  :contexts
     ((:left "this"
       :right "finding")))

(define-rule-record  ; #<PSR-317 np → {det common-noun/plural}>
  :form (common-noun/plural (det common-noun/plural))
  :count 10
  :function determiner-noun
  :contexts
     ((:left "The"
       :right "fractions")
      (:left "the"
       :right "differences")
      (:left "the"
       :right "effects")
      (:left "the"
       :right "components")
      (:left "the"
       :right "drugs")
      (:left "the"
       :right "cells")))

(define-rule-record  ; #<PSR-329 np → {det common-noun}>
  :form (common-noun (det common-noun))
  :count 183
  :function determiner-noun
  :contexts
     ((:left "The"
       :right "amount")
      (:left "a"
       :right "peak")
      (:left "the"
       :right "catalysis rate")
      (:left "an"
       :right "order of magnitude")
      (:left "the"
       :right "dissociation rate")
      (:left "the"
       :right "binding rate")
      (:left "the"
       :right "system")
      (:left "a"
       :right "maximum")
      (:left "The"
       :right "catalysis rate")
      (:left "The"
       :right "dissociation rate")
      (:left "The"
       :right "binding rate")
      (:left "the"
       :right "number")
      (:left "the"
       :right "concentration")
      (:left "a"
       :right "delay")
      (:left "a"
       :right "consequence")
      (:left "the"
       :right "kinetics")
      (:left "the"
       :right "mutant")
      (:left "a"
       :right "requirement")
      (:left "the"
       :right "nucleus and cytoplasm")
      (:left "the"
       :right "protein")
      (:left "the"
       :right "mobility")
      (:left "the"
       :right "induction")
      (:left "the"
       :right "cytoplasm")
      (:left "the"
       :right "Rate")
      (:left "the"
       :right "nucleus")
      (:left "the"
       :right "inter-regulation")
      (:left "the"
       :right "binding")
      (:left "the"
       :right "feedback loop")
      (:left "the"
       :right "amplification")
      (:left "the"
       :right "cell")
      (:left "The"
       :right "ability")
      (:left "a"
       :right "threshold")
      (:left "a"
       :right "scenario")
      (:left "the"
       :right "cytosol/nucleus")
      (:left "an"
       :right "activator")
      (:left "the"
       :right "amount")
      (:left "an"
       :right "increase")
      (:left "the"
       :right "translocation")
      (:left "the"
       :right "cytosol")
      (:left "the"
       :right "cytosol and nucleus")
      (:left "the"
       :right "stabilization")
      (:left "the"
       :right "presence or absence")
      (:left "the"
       :right "regulation")
      (:left "The"
       :right "effect")
      (:left "the"
       :right "baseline")
      (:left "The"
       :right "impact")
      (:left "a"
       :right "substrate")
      (:left "an"
       :right "explanation")
      (:left "a"
       :right "fragment")
      (:left "the"
       :right "GST")
      (:left "the"
       :right "linker region")
      (:left "a"
       :right "high performance liquid chromatography (HPLC)")
      (:left "the"
       :right "activation")
      (:left "the"
       :right "activity")
      (:left "the"
       :right "absence")
      (:left "The"
       :right "analysis")
      (:left "the"
       :right "interaction")
      (:left "the"
       :right "modification")
      (:left "the"
       :right "size")
      (:left "the"
       :right "study")
      (:left "a"
       :right "form")
      (:left "the"
       :right "proportion")
      (:left "a"
       :right "defect")
      (:left "the"
       :right "population")
      (:left "the"
       :right "mechanism")
      (:left "the"
       :right "use")
      (:left "the"
       :right "sensitivity")
      (:left "the"
       :right "response")
      (:left "the"
       :right "c–terminus")
      (:left "the"
       :right "rate")
      (:left "the"
       :right "effect")
      (:left "the"
       :right "development")
      (:left "the"
       :right "success")
      (:left "—an"
       :right "observation")
      (:left "a"
       :right "dependency")
      (:left "the"
       :right "possibility")
      (:left "a"
       :right "target")
      (:left "the"
       :right "context")
      (:left "an"
       :right "event")
      (:left "a"
       :right "subset")
      (:left "a"
       :right "manner")
      (:left "the"
       :right "complex")
      (:left "the"
       :right "stoichiometry")
      (:left "the"
       :right "pathway")
      (:left "a"
       :right "scaffold")
      (:left "the"
       :right "plasma membrane")
      (:left "The"
       :right "mechanism")
      (:left "a"
       :right "panel")
      (:left "a"
       :right "lack")
      (:left "the"
       :right "addition")
      (:left "the"
       :right "efficacy")
      (:left "a"
       :right "phosphoserine")
      (:left "the"
       :right "presence")
      (:left "the"
       :right "RBD")
      (:left "a"
       :right "protein")
      (:left "the"
       :right "assumption")
      (:left "the"
       :right "ability")
      (:left "the"
       :right "action")
      (:left "The"
       :right "transition")))

(define-rule-record  ; #<PSR-325 np → {det n-bar}>
  :form (n-bar (det n-bar))
  :count 205
  :function determiner-noun
  :contexts
     ((:left "a"
       :right "more precise answer")
      (:left "a"
       :right "high probability")
      (:left "the"
       :right "BRAF-NRAS dimer")
      (:left "the"
       :right "total amount")
      (:left "the"
       :right "BRAF-RAF1 complex")
      (:left "a"
       :right "low value")
      (:left "a"
       :right "high value")
      (:left "a"
       :right "low level")
      (:left "a"
       :right "high level")
      (:left "The"
       :right "initial number")
      (:left "The"
       :right "initial concentration")
      (:left "The"
       :right "total amount")
      (:left "The"
       :right "initial amount")
      (:left "the"
       :right "BRAF-NRAS complex")
      (:left "the"
       :right "first time")
      (:left "the"
       :right "differential shuttling behavior")
      (:left "the"
       :right "same level")
      (:left "the"
       :right "spatio-temporal regulation")
      (:left "a"
       :right "mouse embryo fibroblast ERK1-knock-out cell line")
      (:left "the"
       :right "molecular mechanisms")
      (:left "an"
       :right "anti-p53 antibody")
      (:left "an"
       :right "effective way")
      (:left "an"
       :right "important feedback loop")
      (:left "The"
       :right "novel RAS/Raf/MAPK/ASPP2 pathway")
      (:left "the"
       :right "apoptotic stimulus")
      (:left "a"
       :right "fail-proof mechanism")
      (:left "the"
       :right "ASPP2 feedback loop")
      (:left "the"
       :right "RAS signal")
      (:left "the"
       :right "pro-apoptotic signal")
      (:left "the"
       :right "RAS/RAF/MAPK pathway")
      (:left "the"
       :right "ASPP2 N- terminus")
      (:left "a"
       :right "tumor suppressor")
      (:left "a"
       :right "haploinsufficient tumor suppressor")
      (:left "the"
       :right "p53 binding ability")
      (:left "the"
       :right "HKe3 ER:HRASV12 system")
      (:left "the"
       :right "cellular localization")
      (:left "The"
       :right "ASPP2 protein levels")
      (:left "the"
       :right "transcriptional level")
      (:left "The"
       :right "mRNA level")
      (:left "the"
       :right "endogenous ASPP2 protein level")
      (:left "the"
       :right "functional role")
      (:left "the"
       :right "control cells")
      (:left "a"
       :right "significant decrease")
      (:left "a"
       :right "MAPK inhibitor")
      (:left "the"
       :right "full transcriptional activity")
      (:left "the"
       :right "transactivation function")
      (:left "the"
       :right "two putative MAPK phosphorylation sites")
      (:left "the"
       :right "downstream Raf /MAPK pathway")
      (:left "a"
       :right "similar extent")
      (:left "the"
       :right "pro-apoptotic Bax reporter")
      (:left "the"
       :right "transcriptional activity")
      (:left "the"
       :right "Raf pathway")
      (:left "a"
       :right "mutant form")
      (:left "the"
       :right "Raf/MAPK pathway")
      (:left "the"
       :right "Pro-Apoptotic Function")
      (:left "the"
       :right "phospho- specific antibody")
      (:left "An"
       :right "in vitro phophorylation assay")
      (:left "the"
       :right "RAS/Raf/MAPK pathway")
      (:left "the"
       :right "transcription function")
      (:left "the"
       :right "RAS-ASPP interaction")
      (:left "the"
       :right "ASPP2 N-terminus")
      (:left "the"
       :right "second putative phosphorylation site")
      (:left "the"
       :right "same mass")
      (:left "the"
       :right "two radioactive peaks")
      (:left "an"
       :right "efficient kinase")
      (:left "the"
       :right "same conditions")
      (:left "An"
       :right "in vitro phosphorylation assay")
      (:left "the"
       :right "ASPP2 sites")
      (:left "The"
       :right "ASPP1 sites")
      (:left "the"
       :right "Raf-MAPK pathway")
      (:left "the"
       :right "apoptotic function")
      (:left "an"
       :right "entirely new mode")
      (:left "the"
       :right "GAP defect")
      (:left "the"
       :right "switch domains")
      (:left "a"
       :right "broad surface area")
      (:left "the"
       :right "intrinsic activity")
      (:left "a"
       :right "single site")
      (:left "A"
       :right "major advance")
      (:left "the"
       :right "primary site")
      (:left "the"
       :right "downstream effectors")
      (:left "the"
       :right "unmodified protein")
      (:left "a"
       :right "cellular reconstitution system")
      (:left "an"
       :right "in vitro system")
      (:left "the"
       :right "linker length")
      (:left "the"
       :right "native linker")
      (:left "a"
       :right "linker one bond")
      (:left "an"
       :right "additional cysteine")
      (:left "the"
       :right "enzymatic and chemical ubiquitination linkers")
      (:left "an"
       :right "oncogenic RasG12V mutation")
      (:left "the"
       :right "same GAP-to-Ras ratio")
      (:left "the"
       :right "intrinsic rate")
      (:left "an"
       :right "order of magnitude increase")
      (:left "a"
       :right "GAP–to–Ras ratio")
      (:left "the"
       :right "catalytic domains")
      (:left "an"
       :right "integrative approach")
      (:left "a"
       :right "MAPK pathway agonist")
      (:left "a"
       :right "selective RAF kinase inhibitor")
      (:left "the"
       :right "mitogen activated protein kinase (MAPK) signaling cascade")
      (:left "the"
       :right "B-RAFV600E mutation")
      (:left "the"
       :right "serine/threonine kinase B-RAF")
      (:left "a"
       :right "MEK-independent manner")
      (:left "an"
       :right "in vitro kinase assay using recombinant COT and ERK1")
      (:left "the"
       :right "MEK inhibitors CI-1040 and AZD6244")
      (:left "the"
       :right "MEK1/2 inhibitor CI-1040")
      (:left "a"
       :right "high-activity C-RAF truncation mutant")
      (:left "the"
       :right "cellular response")
      (:left "a"
       :right "dummy sentence")
      (:left "the"
       :right "nine candidate ORFs")
      (:left "the"
       :right "MAPK pathway")
      (:left "a"
       :right "stable complex")
      (:left "a"
       :right "partner protein")
      (:left "an"
       :right "inactive conformation")
      (:left "the"
       :right "following mechanism")
      (:left "the"
       :right "underlying mechanism")
      (:left "an"
       :right "intriguing paradox")
      (:left "the"
       :right "NRAS mutant cells")
      (:left "an"
       :right "unexpected increase")
      (:left "the"
       :right "potent and selective MEK inhibitor PD184352")
      (:left "the"
       :right "class I inhibitor SB590885")
      (:left "a"
       :right "close analog")
      (:left "a"
       :right "class I (active conformation binder) inhibitor")
      (:left "the"
       :right "least-selective drug")
      (:left "the"
       :right "low nM range")
      (:left "a"
       :right "class II (inactive conformation binder) drug")
      (:left "a"
       :right "novel substrate")
      (:left "The"
       :right "phospho-specific antibody")
      (:left "a"
       :right "human colon cancer cell line HKe3 ER:HRASV12 cells")
      (:left "the"
       :right "ASPP2 fragment")
      (:left "the"
       :right "phospho-specific antibody")
      (:left "a"
       :right "non-radioactive in vitro phosphorylation assay")
      (:left "A"
       :right "polyclonal antibody NGH.S4")
      (:left "A"
       :right "synthetic peptide")
      (:left "the"
       :right "nucleotide-free state")
      (:left "a"
       :right "30-fold       lower affinity")
      (:left "the"
       :right "PI3KC2β RBD-Ras complex")
      (:left "the"
       :right "first direct evidence")
      (:left "the"
       :right "GEF-Ras complex")
      (:left "the"
       :right "relatively high GTP:GDP ratio")
      (:left "a"
       :right "short-lived transition state intermediate")))

(define-rule-record  ; #<PSR-337 np → {det proper-name}>
  :form (proper-name (det proper-name))
  :count 1
  :function determiner-noun
  :contexts
     ((:left "the"
       :right "cytosol/nucleus")))

(define-rule-record  ; #<PSR-333 np → {det proper-noun}>
  :form (proper-noun (det proper-noun))
  :count 1
  :function determiner-noun
  :contexts
     ((:left "the"
       :right "OUMS-23 and RPMI-7951 cell lines")))

(define-rule-record  ; #<PSR-472 np → {np adjp}>
  :form (np (np adjp))
  :count 6
  :function adj-postmodifies-noun
  :contexts
     ((:left "signaling"
       :right "high enough to result in p53-dependent apoptosis")
      (:left "a form"
       :right "suitable for detailed biophysical studies")
      (:left "unmodified Ras"
       :right "relative to the intrinsic rate of GTP hydrolysis")
      (:left "a target"
       :right "downstream of COT or RAF")
      (:left "a manner"
       :right "comparable to MEK1DD")
      (:left "RAF activation"
       :right "downstream of RAS")))

(define-rule-record  ; #<PSR-467 np → {np number}>
  :form (np (np number))
  :count 5
  :function np-number
  :contexts
     ((:left "lanes"
       :right "9")
      (:left "lanes"
       :right "4 and 5")
      (:left "position"
       :right "147")
      (:left "clinical trials"
       :right "6–8")
      (:left "malignant melanomas"
       :right "1")))

(define-rule-record  ; #<PSR-1295 np → {np pp-relative-clause}>
  :form (np (np pp-relative-clause))
  :count 4
  :function apply-pp-relative-clause
  :contexts
     ((:left "a human colon cancer cell line HKe3 ER:HRASV12 cells"
       :right ", in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "an integrative approach"
       :right "through which high-throughput functional screens may inform the development")
      (:left "a human colon cancer cell line HKe3 ER:HRASV12 cells"
       :right ", in which       RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")))

(define-rule-record  ; #<PSR-476 np → {np pp}>
  :form (np (np pp))
  :count 399
  :function interpret-pp-adjunct-to-np
  :contexts
     ((:left "The amount"
       :right "of MAPK1­DUSP6 complex")
      (:left "the binding rate"
       :right "of MAPK1 and DUSP6")
      (:left "the amount"
       :right "of MAP2K1­MAPK1 complex")
      (:left "the amount"
       :right "of MAPK1­DUSP6 complex")
      (:left "the total amount"
       :right "of DUSP6")
      (:left "the amount"
       :right "of DUSP6")
      (:left "a peak"
       :right "in the phosphorylated amount of MAPK1 before 2 hours")
      (:left "the phosphorylated amount of MAPK1"
       :right "before 2 hours")
      (:left "the phosphorylated amount"
       :right "of MAPK1")
      (:left "the amount"
       :right "of BRAF")
      (:left "the catalysis rate"
       :right "of MAP2K1 phosphorylation")
      (:left "the dissociation rate"
       :right "of NRAS and BRAF")
      (:left "the binding rate"
       :right "of NRAS and BRAF")
      (:left "the total amount"
       :right "of BRAF")
      (:left "no NRAS"
       :right "in the system")
      (:left "the amount"
       :right "of total BRAF")
      (:left "the concentration of phosphorylated BRAF"
       :right "at 2 hours")
      (:left "the concentration"
       :right "of phosphorylated BRAF")
      (:left "the concentration"
       :right "of phosphorylated MAP2K1")
      (:left "the amount"
       :right "of phosphorylated MAP2K1")
      (:left "the amount"
       :right "of BRAF dimer")
      (:left "the concentration"
       :right "of the BRAF-NRAS complex")
      (:left "the amount"
       :right "of BRAF-NRAS complex")
      (:left "The catalysis rate"
       :right "of BRAF phosphorylating MAP2K1")
      (:left "The dissociation rate"
       :right "of NRAS and BRAF")
      (:left "The binding rate"
       :right "of NRAS and BRAF")
      (:left "The initial number"
       :right "of molecules of BRAF")
      (:left "The initial concentration"
       :right "of BRAF")
      (:left "The total amount"
       :right "of BRAF")
      (:left "The initial amount"
       :right "of phosphorylated BRAF")
      (:left "the number"
       :right "of BRAF-NRAS complexes")
      (:left "the number"
       :right "of molecules of BRAF")
      (:left "molecules"
       :right "of BRAF")
      (:left "the concentration"
       :right "of BRAF-NRAS complex")
      (:left "the amount"
       :right "of phosphorylated BRAF")
      (:left "a delay"
       :right "in cytoplasmic activation of ERK")
      (:left "cytoplasmic activation"
       :right "of ERK")
      (:left "a delay"
       :right "in nuclear translocation")
      (:left "the differential shuttling behavior"
       :right "of the mutant")
      (:left "a consequence"
       :right "of delayed phosphorylation of ERK by MEK")
      (:left "delayed phosphorylation of ERK"
       :right "by MEK")
      (:left "delayed phosphorylation"
       :right "of ERK")
      (:left "the kinetics"
       :right "of nuclear accumulation and phosphorylation of GFP-ERK1-4")
      (:left "nuclear accumulation and phosphorylation"
       :right "of GFP-ERK1-4")
      (:left "energy migration Forster resonance energy transfer and fluorescence correlation spectroscopy measurements"
       :right "in living cells")
      (:left "dimerization"
       :right "of ERK1")
      (:left "Dimerization"
       :right "of ERK")
      (:left "a requirement"
       :right "for nuclear translocation")
      (:left "the mobility"
       :right "of the protein in the nucleus and cytoplasm")
      (:left "the protein"
       :right "in the nucleus and cytoplasm")
      (:left "the spatio-temporal regulation"
       :right "of ERK1")
      (:left "the induction"
       :right "of many cellular responses")
      (:left "the Rate"
       :right "of Phosphorylation")
      (:left "active RAS"
       :right "at the plasma membrane")
      (:left "RAS signaling"
       :right "to its downstream pathway effectors Raf/MAPK")
      (:left "the inter-regulation"
       :right "between ASPP2 and RAS")
      (:left "Total cell lysates"
       :right "from HKe3 ER:HRASV12 cells")
      (:left "the binding of wild-type ASPP2 but not ASPP2 (S827A)"
       :right "to p53")
      (:left "the binding"
       :right "of wild-type ASPP2 but not ASPP2 (S827A)")
      (:left "wild-type ASPP2"
       :right "but not ASPP2 (S827A)")
      (:left "cytoplasmic and nuclear translocation"
       :right "of wild-type ASPP2 but not ASPP2 (S827A) in HKe3 ER:HRAS12 cells")
      (:left "wild-type ASPP2"
       :right "but not ASPP2 (S827A) in HKe3 ER:HRAS12 cells")
      (:left "an increased interaction"
       :right "with p53")
      (:left "an important feedback loop"
       :right "between RAS and p53")
      (:left "apoptosis"
       :right "in cancer cells with wild-type p53")
      (:left "cancer cells"
       :right "with wild-type p53")
      (:left "the amplification"
       :right "of ASPP2 signaling to p53 via the feedback loop")
      (:left "ASPP2 signaling to p53"
       :right "via the feedback loop")
      (:left "ASPP2 signaling"
       :right "to p53")
      (:left "The ability"
       :right "of oncogenic RAS")
      (:left "a threshold"
       :right "of signaling high enough to result in p53-dependent apoptosis")
      (:left "the RAS signal"
       :right "to p53")
      (:left "MAPK-mediated phosphorylation"
       :right "of ASPP2")
      (:left "increased binding"
       :right "to p53")
      (:left "the transcription function"
       :right "of p53 in cancer cells [2]")
      (:left "RAS signaling"
       :right "by binding directly via the ASPP2 N- terminus [2,6]")
      (:left "binding"
       :right "directly via the ASPP2 N- terminus [2,6]")
      (:left "several steps"
       :right "in promoting senescence in fibroblasts")
      (:left "senescence"
       :right "in fibroblasts")
      (:left "both senescence"
       :right "in fibroblasts and apoptosis in cancer cells [2,10]")
      (:left "both senescence"
       :right "in fibroblasts")
      (:left "apoptosis"
       :right "in cancer cells [2,10]")
      (:left "an activator"
       :right "of p53 family")
      (:left "phosphorylation of ASPP2 at Ser827"
       :right "by MAPK")
      (:left "phosphorylation of ASPP2"
       :right "at Ser827")
      (:left "phosphorylation"
       :right "of ASPP2")
      (:left "the amount"
       :right "of p53 in complex")
      (:left "an increase"
       :right "in the amount of p53 co-immunoprecipitated with transfected V5-tagged wild-type ASPP2 (Figure 4B, compare lanes 4 and 5)")
      (:left "the amount"
       :right "of p53 co-immunoprecipitated with transfected V5-tagged wild-type ASPP2 (Figure 4B, compare lanes 4 and 5)")
      (:left "activation of RAS"
       :right "by 4-OHT in HKe3 ER:HRASV12 cells")
      (:left "an increase"
       :right "in the amount of p53")
      (:left "the amount"
       :right "of p53")
      (:left "the translocation of wild-type ASPP2 from the plasma membrane"
       :right "to the cytosol and nucleus")
      (:left "the translocation of wild-type ASPP2"
       :right "from the plasma membrane")
      (:left "the translocation"
       :right "of wild-type ASPP2")
      (:left "increased binding"
       :right "to p53 [2]")
      (:left "the p53 binding ability"
       :right "of ASPP2 phosphorylation mutant")
      (:left "ASPP2 binding"
       :right "to RAS at the plasma membrane")
      (:left "RAS"
       :right "at the plasma membrane")
      (:left "MAPK phosphorylation"
       :right "of ASPP2")
      (:left "RAS-induced translocation of ASPP2"
       :right "to the cytosol")
      (:left "RAS activation"
       :right "by 4-OHT in the HKe3 ER:HRASV12 system (Figure 4A)")
      (:left "MAPK phosphorylation"
       :right "at Ser827")
      (:left "the cellular localization"
       :right "of ASPP2")
      (:left "activation"
       :right "of RAS")
      (:left "ASPP2 translocation from the plasma membrane"
       :right "to the cytosol and nucleus [2]")
      (:left "ASPP2 translocation"
       :right "from the plasma membrane")
      (:left "RAS-induced translocation"
       :right "of ASPP2")
      (:left "ASPP2 phosphorylation"
       :right "by RAS/MAPK")
      (:left "the stabilization"
       :right "of ASPP2 protein")
      (:left "the presence"
       :right "of HRAS V12")
      (:left "The ASPP2 protein levels"
       :right "in the presence or absence of oncogenic RAS")
      (:left "the presence or absence"
       :right "of oncogenic RAS")
      (:left "the increased protein stability"
       :right "of ASPP2")
      (:left "The mRNA level"
       :right "of ASPP2")
      (:left "RAS/MAPK pathway inhibition"
       :right "by UO126 treatment (Figure 3C, right panel)")
      (:left "ASPP2 function"
       :right "to a similar extent (Figure S2)")
      (:left "a significant decrease"
       :right "in the ability of ASPP2 to enhance the transcriptional activity of p53 compared to the control cells (Figure 3C)")
      (:left "the transcriptional activity"
       :right "of p53 compared to the control cells (Figure 3C)")
      (:left "a significant decrease"
       :right "in the ability of ASPP2 to enhance the transcriptional activity of p53")
      (:left "the ability"
       :right "of ASPP2")
      (:left "the functional role"
       :right "of ASPP2 phosphorylation by MAPK")
      (:left "the effect of MAPK phosphorylation"
       :right "on endogenous ASPP2 activity")
      (:left "MAPK phosphorylation"
       :right "of ASPP2 Ser827")
      (:left "the full transcriptional activity of p53"
       :right "via ASPP2")
      (:left "the full transcriptional activity"
       :right "of p53")
      (:left "the activity"
       :right "of mutant ASPP2 (S827A)")
      (:left "identical activity"
       :right "to wild-type ASPP2")
      (:left "the transactivation function"
       :right "of p53 (Figure 3A)")
      (:left "the effect of MAPK phosphorylation"
       :right "on ASPP2 activity")
      (:left "the effect"
       :right "of MAPK phosphorylation")
      (:left "alanine substitution mutants"
       :right "of the two putative MAPK phosphorylation sites")
      (:left "ASPP2 phosphorylation"
       :right "by MAPK")
      (:left "the effect of activated RAS"
       :right "on ASPP2 and p53")
      (:left "the effect"
       :right "of activated RAS")
      (:left "ASPP2 and p53 transactivation activity"
       :right "to a similar extent")
      (:left "The effect of Raf CAAX"
       :right "on ASPP2 and p53")
      (:left "The effect"
       :right "of Raf CAAX")
      (:left "little effect on p53"
       :right "in its absence (Figure 2A)")
      (:left "little effect"
       :right "on p53")
      (:left "the baseline"
       :right "of p53 and ASPP2")
      (:left "The impact"
       :right "of co-expression of Raf CAAX with p53 and ASPP2")
      (:left "co-expression of Raf CAAX"
       :right "with p53 and ASPP2")
      (:left "co-expression"
       :right "of Raf CAAX")
      (:left "the transcriptional activity"
       :right "of p53")
      (:left "a mutant form"
       :right "of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "a substrate"
       :right "of MAPK")
      (:left "activation"
       :right "of Raf/MAPK pathway")
      (:left "a mutant form"
       :right "of Raf (Raf CAAX)")
      (:left "the Pro-Apoptotic Function"
       :right "of ASPP2")
      (:left "all background stimulation"
       :right "of RAS")
      (:left "binding"
       :right "to p53")
      (:left "the transcription function"
       :right "of p53 in cancer cells")
      (:left "RAS signaling"
       :right "by binding directly via the ASPP2 N-terminus")
      (:left "binding"
       :right "directly via the ASPP2 N-terminus")
      (:left "the linker region"
       :right "between the GST and our ASPP2 fragment")
      (:left "a fragment"
       :right "of the same mass")
      (:left "high levels"
       :right "of incorporated 32P")
      (:left "very low levels"
       :right "of incorporated 32P")
      (:left "an efficient kinase"
       :right "for ASPP2 phosphorylation")
      (:left "a purified C-terminus fragment"
       :right "of ASPP2 (693-1128) containing both MAPK putative phosphorylation sites")
      (:left "two conserved putative MAPK phosphorylation sites"
       :right "in ASPP1 and ASPP2")
      (:left "One"
       :right "of the most studied downstream pathways of RAS signalling")
      (:left "the most studied downstream pathways"
       :right "of RAS signalling")
      (:left "the activity"
       :right "of ASPP2")
      (:left "the activation"
       :right "of a RAS-mediated signalling pathway")
      (:left "the apoptotic function of p53"
       :right "via ASPP1 and ASPP2")
      (:left "the apoptotic function"
       :right "of p53")
      (:left "an entirely new mode"
       :right "of Ras activation")
      (:left "the absence"
       :right "of hormone stimulus")
      (:left "monoubiquitination"
       :right "at position 147")
      (:left "the effect of monoubiquitination"
       :right "on the interaction of Ras with its cognate GEF and GAPs, which also target the switch domains")
      (:left "the interaction of Ras"
       :right "with its cognate GEF and GAPs, which also target the switch domains")
      (:left "the effect of monoubiquitination"
       :right "on the interaction of Ras with its cognate GEF and GAPs")
      (:left "the effect"
       :right "of monoubiquitination")
      (:left "the interaction of Ras"
       :right "with its cognate GEF and GAPs")
      (:left "the interaction"
       :right "of Ras")
      (:left "a broad surface area"
       :right "of Ras that alters switch region dynamics")
      (:left "the intrinsic activity"
       :right "of Ras")
      (:left "the size"
       :right "of the modification")
      (:left "the study"
       :right "of other monoubiquitinated proteins")
      (:left "the sensitivity of Ras"
       :right "to GAP–mediated hydrolysis")
      (:left "the sensitivity"
       :right "of Ras")
      (:left "the proportion"
       :right "of Ras")
      (:left "association"
       :right "with the downstream effectors")
      (:left "that mutation"
       :right "of the primary site of monoubiquitination")
      (:left "the primary site"
       :right "of monoubiquitination")
      (:left "a defect"
       :right "in sensitivity to GAP–mediated regulation")
      (:left "sensitivity"
       :right "to GAP–mediated regulation")
      (:left "Ras"
       :right "from HEK293T cells")
      (:left "the sensitivity of the monoubiquitinated and unmodified fractions of Ras"
       :right "to regulation by GAP")
      (:left "the sensitivity"
       :right "of the monoubiquitinated and unmodified fractions of Ras")
      (:left "the monoubiquitinated and unmodified fractions"
       :right "of Ras")
      (:left "regulation"
       :right "by GAP")
      (:left "the use"
       :right "of an in vitro system")
      (:left "the mechanism"
       :right "of Ras regulation")
      (:left "the sensitivity of mUbRas"
       :right "to GAP–mediated hydrolysis in a cellular reconstitution system")
      (:left "GAP–mediated hydrolysis"
       :right "in a cellular reconstitution system")
      (:left "variations in the linker length"
       :right "on this scale (1–2 bonds)")
      (:left "variations"
       :right "in the linker length")
      (:left "the sensitivity of mUbRas"
       :right "to GAP downregulation")
      (:left "the sensitivity"
       :right "of mUbRas")
      (:left "the response"
       :right "of Ras ligated to Ubiquitin C77")
      (:left "the rate"
       :right "of GAP–mediated GTP hydrolysis")
      (:left "the response"
       :right "of Ras")
      (:left "the differences"
       :right "between the enzymatic and chemical ubiquitination linkers (seven bonds and five bonds, respectively)")
      (:left "the c–terminus"
       :right "of Ubiquitin (Ubiquitin C77)")
      (:left "the effects"
       :right "of monoubiquitination on Ras")
      (:left "monoubiquitination"
       :right "on Ras")
      (:left "No increase"
       :right "in the rate of GTP hydrolysis")
      (:left "mUbRas"
       :right "in the presence of the same GAP-to-Ras ratio")
      (:left "the presence"
       :right "of the same GAP-to-Ras ratio")
      (:left "a GAP–to–Ras ratio"
       :right "of 1:500")
      (:left "an order of magnitude increase"
       :right "in the rate of GTP hydrolysis for unmodified Ras relative to the intrinsic rate of GTP hydrolysis")
      (:left "the rate of GTP hydrolysis"
       :right "for unmodified Ras relative to the intrinsic rate of GTP hydrolysis")
      (:left "the intrinsic rate"
       :right "of GTP hydrolysis")
      (:left "the rate of GTP hydrolysis for Ras and mUbRas"
       :right "in the presence of the catalytic domains of two GAPs, NF1 (NF1 333) and p120GAP(GAP–334)")
      (:left "the rate of GTP hydrolysis"
       :right "for Ras and mUbRas")
      (:left "the rate"
       :right "of GTP hydrolysis")
      (:left "the presence"
       :right "of the catalytic domains of two GAPs, NF1 (NF1 333) and p120GAP(GAP–334)")
      (:left "the catalytic domains"
       :right "of two GAPs, NF1 (NF1 333) and p120GAP(GAP–334)")
      (:left "the effect of Ras monoubiquitination"
       :right "on GAP–mediated hydrolysis")
      (:left "the effect"
       :right "of Ras monoubiquitination")
      (:left "new insights"
       :right "into resistance mechanisms involving the MAPK pathway")
      (:left "an integrative approach through which high-throughput functional screens may inform the development"
       :right "of novel therapeutic strategies")
      (:left "possible therapeutic strategies"
       :right "for reducing MAPK pathway activation in this setting")
      (:left "MAPK pathway activation"
       :right "in this setting")
      (:left "de novo resistance"
       :right "in BRAFV600E cultured cell lines")
      (:left "acquired resistance"
       :right "in melanoma cells")
      (:left "treatment"
       :right "with MEK or RAF inhibition")
      (:left "resistance"
       :right "to RAF inhibition in BRAFV600E cell lines")
      (:left "RAF inhibition"
       :right "in BRAFV600E cell lines")
      (:left "resistance"
       :right "to a selective RAF kinase inhibitor")
      (:left "Identification of resistance mechanisms"
       :right "in a manner that elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies [12]")
      (:left "Identification"
       :right "of resistance mechanisms")
      (:left "clinical responses"
       :right "to targeted anticancer therapeutics")
      (:left "a dependency"
       :right "on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5]")
      (:left "the mitogen activated protein kinase (MAPK) signaling cascade"
       :right "in melanoma [1–5]")
      (:left "the success"
       :right "of RAF and MEK inhibitors")
      (:left "Oncogenic mutations"
       :right "in the serine/threonine kinase B-RAF")
      (:left "50–70%"
       :right "of malignant melanomas 1")
      (:left "recombinant COT induced pThr202/Tyr204 phosphorylation"
       :right "of ERK1 in vitro (Supplementary Fig.  18)  suggesting")
      (:left "ERK activation"
       :right "in a MEK-independent manner")
      (:left "MEK1/2 knockdown only modestly suppressed COT–mediated ERK phosphorylation"
       :right "in A375 cells (Supplementary Fig. 18)")
      (:left "Ectopic COT expression"
       :right "in A375 and SKMEL28 cells")
      (:left "decreased sensitivity"
       :right "to the MEK inhibitors CI-1040 and AZD6244")
      (:left "sensitivity"
       :right "to the MEK1/2 inhibitor CI-1040")
      (:left "MAPK pathway inhibition"
       :right "at a target downstream of COT or RAF")
      (:left "mutual exclusivity"
       :right "with B-RAFV600E mutation")
      (:left "the context"
       :right "of acquired resistance to B-RAF inhibition")
      (:left "acquired resistance"
       :right "to B-RAF inhibition")
      (:left "oncogenic alleles"
       :right "of NRAS and KRAS")
      (:left "PLX4720 resistance"
       :right "in A375 cells (Fig. 2b)")
      (:left "ERK phosphorylation"
       :right "in the context of drug treatment (Fig. 2c)")
      (:left "the context"
       :right "of drug treatment (Fig. 2c)")
      (:left "ectopic expression"
       :right "of a high-activity C-RAF truncation mutant (C-RAF W22)")
      (:left "resistance"
       :right "to this agent")
      (:left "endogenous C-RAF phosphorylation"
       :right "at S338")
      (:left "treatment"
       :right "with PLX4720 (Supplementary Fig. 9)")
      (:left "C-RAF activation and heterodimerization"
       :right "with B-RAF")
      (:left "critical components"
       :right "of the cellular response to B-RAF inhibition")
      (:left "the cellular response"
       :right "to B-RAF inhibition")
      (:left "the nine candidate ORFs"
       :right "from our initial screen")
      (:left "persistent ERK/MEK phosphorylation"
       :right "following RAF inhibition")
      (:left "MAPK pathway-independent alteration"
       :right "of drug sensitivity (Supplementary Fig. 8)")
      (:left "resistance"
       :right "to RAF inhibition predominantly through re-activation of MAPK signaling")
      (:left "RAF inhibition"
       :right "predominantly through re-activation of MAPK signaling")
      (:left "re-activation"
       :right "of MAPK signaling")
      (:left "Overexpression"
       :right "of wild-type COT or C-RAF")
      (:left "constitutive phosphorylation of ERK and MEK"
       :right "in the presence of PLX4720")
      (:left "constitutive phosphorylation"
       :right "of ERK and MEK")
      (:left "the presence"
       :right "of PLX4720")
      (:left "ERK phosphorylation"
       :right "in a manner comparable to MEK1DD")
      (:left "overexpression"
       :right "of these genes")
      (:left "the stoichiometry"
       :right "of the components in these complexes")
      (:left "the components"
       :right "in these complexes")
      (:left "formation"
       :right "of the complex (Figure 7B)")
      (:left "a stable complex"
       :right "with CRAF")
      (:left "another paradigm"
       :right "of RAF activation downstream of RAS")
      (:left "inhibition of BRAF"
       :right "by chemical or genetic means in the presence")
      (:left "inhibition"
       :right "of BRAF")
      (:left "chemical or genetic means"
       :right "in the presence")
      (:left "BRAF binding"
       :right "to CRAF")
      (:left "MEK/ERK activation"
       :right "in RAS mutant cells")
      (:left "NRAS or CRAF depletion"
       :right "by RNA interference (RNAi)")
      (:left "MEK/ERK activation"
       :right "by PLX4720 and 885-A  in NRAS mutant cells (Figure 1B and 1C)")
      (:left "an unexpected increase"
       :right "in ERK activity in the NRAS mutant cells (Figure 1A)")
      (:left "ERK activity"
       :right "in the NRAS mutant cells (Figure 1A)")
      (:left "ERK"
       :right "in all of these lines (Figure 1A)")
      (:left "the drugs"
       :right "in D04, MM415, MM485, and WM852 NRAS mutant cells (Table S2)")
      (:left "ERK"
       :right "in SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G)")
      (:left "ERK"
       :right "in SkMel24, SkMel28, D25, and WM266.4 cells")
      (:left "ERK activity"
       :right "in BRAF mutant A375 melanoma cells (Figure 1A; see Table S2)")
      (:left "a panel"
       :right "of 64 other protein kinases (Table S1)")
      (:left "a close analog"
       :right "of the class I inhibitor SB590885 (King et al., 2006) that is also highly selective for BRAF")
      (:left "several other kinases"
       :right "in the low nM range (Wilhelm et al., 2004)")
      (:left "four drugs"
       :right "for our studies (Figures S1A–S1D)")
      (:left "a novel substrate"
       :right "of MAPK")
      (:left "Ser827"
       :right "of ASPP2")
      (:left "The phospho-specific antibody"
       :right "for ASPP2")
      (:left "knockdown"
       :right "of ASPP2")
      (:left "a lack"
       :right "of detection of phospho-ASPP2")
      (:left "detection"
       :right "of phospho-ASPP2")
      (:left "the addition"
       :right "of 4-hydroxytamoxifen (4-OHT)")
      (:left "low serum"
       :right "for 50 hours")
      (:left "all background       stimulation"
       :right "of RAS")
      (:left "the efficacy"
       :right "of the purified phospho-specific antibody")
      (:left "this form"
       :right "of Ras resulting in greater fluorescence       complementation for Ras17N (and Ras17N/69N)")
      (:left "greater fluorescence       complementation"
       :right "for Ras17N (and Ras17N/69N)")
      (:left "a 30-fold       lower affinity"
       :right "for nucleotide")
      (:left "longer periods"
       :right "in the nucleotide-free state")
      (:left "detection"
       :right "of nucleotide-free       GTPases in vivo")
      (:left "additional support"
       :right "for our model")
      (:left "PI3KC2β binding"
       :right "to nucleotide-free Ras in vivo")
      (:left "addition"
       :right "of       guanine nucleotides")
      (:left "the presence"
       :right "of high concentrations of GTP or GDP")
      (:left "high concentrations"
       :right "of GTP or GDP")
      (:left "the RBD"
       :right "of PI3KC2β")
      (:left "the first direct evidence"
       :right "for a protein that       may stabilize nucleotide-free Ras in vivo")
      (:left "the ability"
       :right "of GTP")
      (:left "formation of       nucleotide-free Ras"
       :right "through the action of exchange factors")
      (:left "formation"
       :right "of       nucleotide-free Ras")
      (:left "the action"
       :right "of exchange factors")))

(define-rule-record  ; #<PSR-667 np → {np subject-relative-clause}>
  :form (np (np subject-relative-clause))
  :count 18
  :function apply-subject-relative-clause
  :contexts
     ((:left "the molecular mechanisms"
       :right "that regulate ERK nuclear translocation")
      (:left "MAPK phosphorylation"
       :right "which will translocate and activate p53")
      (:left "Ras"
       :right "that alters switch region dynamics")
      (:left "the proportion of Ras"
       :right "that is in the activated (GTP–bound) state")
      (:left "MEK-dependent mechanisms"
       :right "that do not require RAF signaling")
      (:left "a MAPK pathway agonist"
       :right "that drives resistance to RAF inhibition in BRAFV600E cell lines")
      (:left "a manner"
       :right "that elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies [12]")
      (:left "—an observation"
       :right "that has been validated by the success of RAF and MEK inhibitors in clinical trials 6–8")
      (:left "genetic alterations"
       :right "that engender C-RAF activation (e.g., oncogenic RAS mutations)")
      (:left "another four lines"
       :right "that express mutant BRAF (Figure S1G)")
      (:left "the class I inhibitor SB590885 (King et al., 2006)"
       :right "that is also highly selective for BRAF")
      (:left "a class I (active conformation binder) inhibitor"
       :right "that is highly selective")
      (:left "a class II (inactive conformation binder) drug (Wan et al., 2004)"
       :right "that inhibits V600EBRAF at 40 nM")
      (:left "a protein"
       :right "that       may stabilize nucleotide-free Ras in vivo")
      (:left "no proteins in vivo"
       :right "that might stabilize       nucleotide-free Ras")))

(define-rule-record  ; #<PSR-477 np → {np thatcomp}>
  :form (np (np thatcomp))
  :count 5
  :function assimilate-thatcomp
  :contexts
     ((:left "little chance"
       :right "that it is transient")
      (:left "our in vitro findings"
       :right "that monoubiquitination increases the population")
      (:left "the possibility"
       :right "that COT may activate ERK through MEK-independent and MEK-dependent mechanisms")
      (:left "the assumption"
       :right "that there are no proteins in vivo that might stabilize       nucleotide-free Ras")))

(define-rule-record  ; #<PSR-481 np → {np to-comp}>
  :form (np (np to-comp))
  :count 12
  :function interpret-to-comp-adjunct-to-np
  :contexts
     ((:left "an effective way"
       :right "for mutant RAS to induce apoptosis in cancer cells with wild-type p53")
      (:left "The ability of oncogenic RAS"
       :right "to stimulate apoptosis")
      (:left "its ability"
       :right "to bind ATG5")
      (:left "the ability of ASPP2"
       :right "to enhance the transcriptional activity of p53 compared to the control cells (Figure 3C)")
      (:left "the ability of ASPP2"
       :right "to enhance the transcriptional activity of p53")
      (:left "their ability"
       :right "to enhance the transactivation function of p53 (Figure 3A)")
      (:left "the ability"
       :right "to bind regulators")
      (:left "our ability"
       :right "to easily generate mUbRas, modified at a single site")
      (:left "our ability"
       :right "to easily generate mUbRas")
      (:left "the use of an in vitro system"
       :right "to dissect the mechanism of Ras regulation")
      (:left "the ability of GTP"
       :right "to dissociate the GEF-Ras complex in vitro [31]")))

(define-rule-record  ; #<PSR-670 np → {np transitive-clause-without-object}>
  :form (np (np transitive-clause-without-object))
  :count 1
  :function apply-where-when-relative-clause
  :contexts
     ((:left "the least-selective drug"
       :right "that we used")))

(define-rule-record  ; #<PSR-669 np → {np vg+ing}>
  :form (np (np vg+ing))
  :count 1
  :function apply-subject-relative-clause
  :contexts
     ((:left "ERK1 in vitro (Supplementary Fig.  18)"
       :right "suggesting")))

(define-rule-record  ; #<PSR-668 np → {np vp+ing}>
  :form (np (np vp+ing))
  :count 14
  :function apply-subject-relative-clause
  :contexts
     ((:left "phosphorylated BRAF"
       :right "reaching a high value")
      (:left "phosphorylated MAP2K1"
       :right "reaching a high level")
      (:left "that"
       :right "containing the second putative phosphorylation site, serine 827")
      (:left "that"
       :right "containing the second putative phosphorylation site")
      (:left "The fractions"
       :right "representing these radioactive peaks")
      (:left "resistance mechanisms"
       :right "involving the MAPK pathway")
      (:left "A synthetic peptide"
       :right "encoding amino acids 824-832")
      (:left "Ras"
       :right "resulting in greater fluorescence       complementation for Ras17N (and Ras17N/69N)")))

(define-rule-record  ; #<PSR-672 np → {np where-relative-clause}>
  :form (np (np where-relative-clause))
  :count 3
  :function apply-where-relative-clause
  :contexts
     ((:left "conditions"
       :right "where RAS is constitutively active")
      (:left "a scenario"
       :right "where RAS is mutated")
      (:left "conditions"
       :right "where the cells were starved of serum")))

(define-rule-record  ; #<PSR-320 np → {possessive common-noun/plural}>
  :form (common-noun/plural (possessive common-noun/plural))
  :count 6
  :function possessive-np
  :contexts
     ((:left "Our"
       :right "data")
      (:left "our"
       :right "findings")
      (:left "our"
       :right "studies")
      (:left "our"
       :right "results")))

(define-rule-record  ; #<PSR-332 np → {possessive common-noun}>
  :form (common-noun (possessive common-noun))
  :count 8
  :function possessive-np
  :contexts
     ((:left "its"
       :right "ability")
      (:left "their"
       :right "ability")
      (:left "its"
       :right "absence")
      (:left "our"
       :right "work")
      (:left "Our"
       :right "modeling and NMR analyses")
      (:left "our"
       :right "ability")
      (:left "our"
       :right "model")))

(define-rule-record  ; #<PSR-328 np → {possessive n-bar}>
  :form (n-bar (possessive n-bar))
  :count 16
  :function possessive-np
  :contexts
     ((:left "its"
       :right "downstream pathway effectors")
      (:left "its"
       :right "inactive state")
      (:left "its"
       :right "downstream pathways")
      (:left "its"
       :right "downstream pathway activity")
      (:left "our"
       :right "ASPP2 fragment")
      (:left "its"
       :right "radioactivity content")
      (:left "our"
       :right "kinetic modeling")
      (:left "its"
       :right "cognate GEF and GAPs")
      (:left "our"
       :right "in vitro findings")
      (:left "its"
       :right "PLX4720 resistance phenotype")
      (:left "our"
       :right "initial screen")
      (:left "its"
       :right "own kinase activity")
      (:left "our"
       :right "BiFC results")))

(define-rule-record  ; #<PSR-336 np → {possessive proper-noun}>
  :form (proper-noun (possessive proper-noun))
  :count 1
  :function possessive-np
  :contexts
     ((:left "its"
       :right "ASPP2")))

(define-rule-record  ; #<PSR-506 np → {proper-noun pp}>
  :form (proper-noun (proper-noun pp))
  :count 10
  :function interpret-pp-adjunct-to-np
  :contexts
     ((:left "ASPP2 (S827A)"
       :right "in HKe3 ER:HRAS12 cells")
      (:left "p53"
       :right "in cancer cells [2]")
      (:left "p53"
       :right "in complex")
      (:left "4-OHT"
       :right "in HKe3 ER:HRASV12 cells")
      (:left "4-OHT"
       :right "in the HKe3 ER:HRASV12 system (Figure 4A)")
      (:left "p53"
       :right "in cancer cells")
      (:left "CRAF and MEK"
       :right "in these cells")
      (:left "CRAF"
       :right "but not BRAF")
      (:left "PLX4720 and 885-A"
       :right "in NRAS mutant cells (Figure 1B and 1C)")
      (:left "CRAF"
       :right "in these cells (Figure 1D)")))

(define-rule-record  ; #<PSR-747 np → {proper-noun subject-relative-clause}>
  :form (proper-noun (proper-noun subject-relative-clause))
  :count 5
  :function apply-subject-relative-clause
  :contexts
     ((:left "BRAF"
       :right "that is bound to NRAS")
      (:left "BRAF"
       :right "that is phosphorylated on Ser-602")
      (:left "BRAF"
       :right "that is phosphorylated on serine and tyrosine")
      (:left "BRAF"
       :right "that is phosphorylated")
      (:left "ASPP2"
       :right "which can then relocate to the nucleus")))

(define-rule-record  ; #<PSR-749 np → {proper-noun vg+ing}>
  :form (proper-noun (proper-noun vg+ing))
  :count 2
  :function apply-subject-relative-clause
  :contexts
     ((:left "GTP"
       :right "loading")))

(define-rule-record  ; #<PSR-748 np → {proper-noun vp+ing}>
  :form (proper-noun (proper-noun vp+ing))
  :count 3
  :function apply-subject-relative-clause
  :contexts
     ((:left "BRAF"
       :right "phosphorylating MAP2K1")
      (:left "ASPP2 (693-1128)"
       :right "containing both MAPK putative phosphorylation sites")))

(define-rule-record  ; #<PSR-468 np → {quantifier np}>
  :form (np (quantifier np))
  :count 3
  :function quantifier-noun-compound
  :contexts
     ((:left "both"
       :right "upstream of RAS")
      (:left "not"
       :right "an efficient kinase for ASPP2 phosphorylation")))

(define-rule-record  ; #<PSR-331 np → {wh-pronoun common-noun}>
  :form (common-noun (wh-pronoun common-noun))
  :count 1
  :function determiner-noun
  :contexts
     ((:left "whose"
       :right "function")))

(define-rule-record  ; #<PSR-1888 number → approximator number>
  :form (number (approximator number))
  :count 1
  :function determiner-noun
  :contexts
     ((:left "at least"
       :right "two")))

(define-rule-record  ; #<PSR-1722 percent → hyphenated-number percent-sign>
  :form (percent (hyphenated-number "%"))
  :count 1
  :function nil
  :contexts
     ((:left "50–70"
       :right "%")))

(define-rule-record  ; #<PSR-1719 percent → number percent-sign>
  :form (percent (number "%"))
  :count 4
  :function nil
  :contexts
     ((:left "95"
       :right "%")
      (:left "20"
       :right "%")))

(define-rule-record  ; #<PSR-222509 point-mutation → number single-capitalized-letter>
  :form (point-mutation (number single-capitalized-letter))
  :count 45
  :function maybe-make-point-mutation-from-number-amino-acid
  :contexts
     ((:left "4"
       :right "B")
      (:left "4"
       :right "A")
      (:left "3"
       :right "C")
      (:left "2"
       :right "A")
      (:left "600"
       :right "E")
      (:left "7"
       :right "B")
      (:left "7"
       :right "A")
      (:left "1"
       :right "B")
      (:left "1"
       :right "G")
      (:left "1"
       :right "A")
      (:left "1"
       :right "F")
      (:left "1"
       :right "E")
      (:left "1"
       :right "D")
      (:left "1"
       :right "C")
      (:left "12"
       :right "V")
      (:left "61"
       :right "L")
      (:left "69"
       :right "N")
      (:left "17"
       :right "N")))

(define-rule-record  ; #<PSR-222508 point-mutation → residue-on-protein a>
  :form (point-mutation (residue-on-protein a))
  :count 7
  :function make-point-mutation-from-residue
  :contexts
     ((:left "S827"
       :right "A")
      (:left "S698"
       :right "A")))

(define-rule-record  ; #<PSR-222507 point-mutation → residue-on-protein single-capitalized-letter>
  :form (point-mutation (residue-on-protein single-capitalized-letter))
  :count 2
  :function make-point-mutation-from-residue
  :contexts
     ((:left "V600"
       :right "E")
      (:left "G76"
       :right "C")))

(define-rule-record  ; #<PSR-1258 pp → {adverb pp}>
  :form (pp (adverb pp))
  :count 9
  :function maybe-attach-adverb-to-pp
  :contexts
     ((:left "Only"
       :right "in conditions where RAS is constitutively active")
      (:left "directly"
       :right "via the ASPP2 N- terminus [2,6]")
      (:left "directly"
       :right "via the ASPP2 N-terminus")
      (:left "even"
       :right "in the absence of hormone stimulus")
      (:left "primarily"
       :right "through MEK-dependent mechanisms that do not require RAF signaling")
      (:left "even"
       :right "at 1 μM CI-1040 (Fig. 4b)")
      (:left "predominantly"
       :right "through re-activation of MAPK signaling")
      (:left "even"
       :right "in the presence of high concentrations of GTP or GDP")))

(define-rule-record  ; #<PSR-1283 pp → {preposition common-noun}>
  :form (preposition (preposition common-noun))
  :count 1
  :function make-pp
  :contexts
     ((:left "by"
       :right "GAP")))

(define-rule-record  ; #<PSR-1280 pp → {preposition n-bar}>
  :form (preposition (preposition n-bar))
  :count 8
  :function make-pp
  :contexts
     ((:left "to"
       :right "its downstream pathway effectors Raf/MAPK")
      (:left "at"
       :right "residues 671 and 746")
      (:left "at"
       :right "residues 698 and 827")
      (:left "at"
       :right "residue 827")))

(define-rule-record  ; #<PSR-1259 pp → {preposition np}>
  :form (preposition (preposition np))
  :count 641
  :function make-pp
  :contexts
     ((:left "with"
       :right "high probability")
      (:left "of"
       :right "MAP2K1­MAPK1 complex")
      (:left "at"
       :right "1 hour")
      (:left "of"
       :right "MAPK1­DUSP6 complex")
      (:left "in"
       :right "the phosphorylated amount of MAPK1 before 2 hours")
      (:left "with"
       :right "a high probability")
      (:left "at"
       :right "any time")
      (:left "of"
       :right "MAP2K1 phosphorylation")
      (:left "by"
       :right "half")
      (:left "by"
       :right "an order of magnitude")
      (:left "by"
       :right "10 fold")
      (:left "to"
       :right "zero")
      (:left "in"
       :right "the system")
      (:left "of"
       :right "total BRAF")
      (:left "at"
       :right "some time")
      (:left "at"
       :right "2 hours")
      (:left "like"
       :right "phosphorylated MAPK1")
      (:left "of"
       :right "phosphorylated MAP2K1")
      (:left "over"
       :right "time")
      (:left "of"
       :right "BRAF dimer")
      (:left "to"
       :right "a low level")
      (:left "of"
       :right "the BRAF-NRAS complex")
      (:left "at"
       :right "a low level")
      (:left "in"
       :right "the first 2 hours")
      (:left "at"
       :right "a high level")
      (:left "in"
       :right "time")
      (:left "of"
       :right "BRAF phosphorylating MAP2K1")
      (:left "of"
       :right "BRAF-NRAS complexes")
      (:left "of"
       :right "molecules of BRAF")
      (:left "of"
       :right "BRAF-NRAS complex")
      (:left "of"
       :right "phosphorylated BRAF")
      (:left "on"
       :right "Ser-602")
      (:left "on"
       :right "serine and tyrosine")
      (:left "for"
       :right "the first time")
      (:left "in"
       :right "cytoplasmic activation of ERK")
      (:left "into"
       :right "a delay in nuclear translocation")
      (:left "in"
       :right "nuclear translocation")
      (:left "of"
       :right "the mutant")
      (:left "of"
       :right "delayed phosphorylation of ERK by MEK")
      (:left "by"
       :right "MEK")
      (:left "of"
       :right "nuclear accumulation and phosphorylation of GFP-ERK1-4")
      (:left "of"
       :right "GFP-ERK1-4")
      (:left "with"
       :right "this finding")
      (:left "in"
       :right "living cells")
      (:left "upon"
       :right "activation")
      (:left "in"
       :right "the nucleus")
      (:left "to"
       :right "the same level")
      (:left "for"
       :right "nuclear entry and retention")
      (:left "of"
       :right "ERK")
      (:left "as"
       :right "a requirement for nuclear translocation")
      (:left "for"
       :right "nuclear translocation")
      (:left "upon"
       :right "serum stimulation")
      (:left "of"
       :right "the protein in the nucleus and cytoplasm")
      (:left "in"
       :right "the nucleus and cytoplasm")
      (:left "for"
       :right "the induction of many cellular responses")
      (:left "of"
       :right "many cellular responses")
      (:left "Upon"
       :right "activation")
      (:left "from"
       :right "the cytoplasm")
      (:left "by"
       :right "the Rate of Phosphorylation")
      (:left "of"
       :right "Phosphorylation")
      (:left "to"
       :right "the nucleus")
      (:left "from"
       :right "HKe3 ER:HRASV12 cells")
      (:left "with"
       :right "an anti-p53 antibody")
      (:left "of"
       :right "wild-type ASPP2 but not ASPP2 (S827A)")
      (:left "of"
       :right "wild-type ASPP2 but not ASPP2 (S827A) in HKe3 ER:HRAS12 cells")
      (:left "but not"
       :right "ASPP2 (S827A) in HKe3 ER:HRAS12 cells")
      (:left "in"
       :right "HKe3 ER:HRAS12 cells")
      (:left "by"
       :right "immunofluorescence")
      (:left "but not"
       :right "mutant ASPP2 (S827A)")
      (:left "upon"
       :right "oncogenic RAS activation")
      (:left "in"
       :right "an increased interaction with p53")
      (:left "in"
       :right "an important feedback loop between RAS and p53")
      (:left "between"
       :right "RAS and p53")
      (:left "for"
       :right "mutant RAS")
      (:left "in"
       :right "cancer cells with wild-type p53")
      (:left "with"
       :right "wild-type p53")
      (:left "under"
       :right "normal conditions")
      (:left "for"
       :right "short periods of time")
      (:left "of"
       :right "ASPP2 signaling to p53 via the feedback loop")
      (:left "via"
       :right "the feedback loop")
      (:left "in"
       :right "conditions where RAS is constitutively active")
      (:left "of"
       :right "signaling high enough to result in p53-dependent apoptosis")
      (:left "in"
       :right "p53-dependent apoptosis")
      (:left "to"
       :right "its inactive state")
      (:left "in"
       :right "natural growth conditions")
      (:left "to"
       :right "increased binding to p53")
      (:left "from"
       :right "RAS")
      (:left "via"
       :right "MAPK phosphorylation which will translocate and activate p53")
      (:left "In"
       :right "a scenario where RAS is mutated")
      (:left "in"
       :right "increased RAS/MAPK signaling")
      (:left "to"
       :right "an amplified pro-apoptotic signal")
      (:left "by"
       :right "binding active RAS")
      (:left "of"
       :right "the RAS/RAF/MAPK pathway")
      (:left "of"
       :right "p53 in cancer cells [2]")
      (:left "in"
       :right "cancer cells [2]")
      (:left "by"
       :right "binding directly via the ASPP2 N- terminus [2,6]")
      (:left "via"
       :right "the ASPP2 N- terminus [2,6]")
      (:left "through"
       :right "its ability to bind ATG5")
      (:left "at"
       :right "several steps in promoting senescence in fibroblasts")
      (:left "in"
       :right "both senescence in fibroblasts and apoptosis in cancer cells [2,10]")
      (:left "in"
       :right "fibroblasts and apoptosis in cancer cells [2,10]")
      (:left "in"
       :right "both senescence in fibroblasts")
      (:left "in"
       :right "fibroblasts")
      (:left "in"
       :right "cancer cells [2,10]")
      (:left "as"
       :right "a tumor suppressor and an activator of p53 family")
      (:left "as"
       :right "a tumor suppressor")
      (:left "of"
       :right "p53 family")
      (:left "in"
       :right "both invasive and metastatic cells compared with normal breast epithelium [21]")
      (:left "in"
       :right "both invasive and metastatic cells")
      (:left "with"
       :right "normal breast epithelium [21]")
      (:left "in"
       :right "diffuse large B cell lymphomas")
      (:left "with"
       :right "poor prognosis [20]")
      (:left "In"
       :right "human cancer")
      (:left "by"
       :right "DNA methylation [9,17-19]")
      (:left "for"
       :right "its ASPP2")
      (:left "Under"
       :right "the same conditions")
      (:left "of"
       :right "p53 in complex")
      (:left "in"
       :right "complex")
      (:left "with"
       :right "transfected V5-ASPP2 (S827A)")
      (:left "by"
       :right "RAS activation (Figure 4B, compare lanes 9 to 10)")
      (:left "to"
       :right "10")
      (:left "in"
       :right "the amount of p53 co-immunoprecipitated with transfected V5-tagged wild-type ASPP2 (Figure 4B, compare lanes 4 and 5)")
      (:left "upon"
       :right "activation of RAS by 4-OHT in HKe3 ER:HRASV12 cells")
      (:left "by"
       :right "4-OHT in HKe3 ER:HRASV12 cells")
      (:left "in"
       :right "HKe3 ER:HRASV12 cells")
      (:left "in"
       :right "the amount of p53")
      (:left "with"
       :right "transfected V5-tagged wild-type ASPP2 (Figure 4B, compare lanes 4 and 5)")
      (:left "of"
       :right "wild-type ASPP2")
      (:left "to"
       :right "the cytosol and nucleus")
      (:left "in"
       :right "increased binding to p53 [2]")
      (:left "of"
       :right "ASPP2 phosphorylation mutant")
      (:left "by"
       :right "RAS activation")
      (:left "to"
       :right "RAS at the plasma membrane")
      (:left "for"
       :right "RAS-induced translocation of ASPP2 to the cytosol")
      (:left "to"
       :right "the cytosol")
      (:left "in contrast to"
       :right "wild type ASPP2")
      (:left "following"
       :right "RAS activation by 4-OHT in the HKe3 ER:HRASV12 system (Figure 4A)")
      (:left "by"
       :right "4-OHT in the HKe3 ER:HRASV12 system (Figure 4A)")
      (:left "in"
       :right "the HKe3 ER:HRASV12 system (Figure 4A)")
      (:left "at"
       :right "Ser827")
      (:left "in"
       :right "ASPP2 translocation from the plasma membrane to the cytosol and nucleus [2]")
      (:left "from"
       :right "the plasma membrane")
      (:left "to"
       :right "the cytosol and nucleus [2]")
      (:left "for"
       :right "RAS-induced translocation of ASPP2")
      (:left "by"
       :right "the stabilization of ASPP2 protein")
      (:left "of"
       :right "ASPP2 protein")
      (:left "in"
       :right "HKe3 ER:HRASV12 cells (Figure S3B) or co-transfected in Saos2 cells (Figure S3C)")
      (:left "in"
       :right "HKe3 ER:HRASV12 cells (Figure S3B)")
      (:left "in"
       :right "Saos2 cells (Figure S3C)")
      (:left "without"
       :right "oncogenic RAS")
      (:left "in"
       :right "the presence of HRAS V12")
      (:left "in"
       :right "the presence or absence of oncogenic RAS")
      (:left "of"
       :right "oncogenic RAS")
      (:left "in"
       :right "the increased protein stability of ASPP2")
      (:left "upon"
       :right "RAS/MAPK pathway activation (Figure S3A)")
      (:left "at"
       :right "the transcriptional level")
      (:left "following"
       :right "RAS/MAPK pathway inhibition by UO126 treatment (Figure 3C, right panel)")
      (:left "by"
       :right "UO126 treatment (Figure 3C, right panel)")
      (:left "in"
       :right "the increased ASPP2 expression (Figure 1E; Figure S3C)")
      (:left "to"
       :right "a similar extent (Figure S2)")
      (:left "in"
       :right "a significant decrease in the ability of ASPP2 to enhance the transcriptional activity of p53 compared to the control cells (Figure 3C)")
      (:left "in"
       :right "the ability of ASPP2 to enhance the transcriptional activity of p53 compared to the control cells (Figure 3C)")
      (:left "in"
       :right "a significant decrease in the ability of ASPP2 to enhance the transcriptional activity of p53")
      (:left "in"
       :right "the ability of ASPP2 to enhance the transcriptional activity of p53")
      (:left "to"
       :right "the control cells (Figure 3C)")
      (:left "of"
       :right "ASPP2 phosphorylation by MAPK")
      (:left "with"
       :right "a MAPK inhibitor, UO126")
      (:left "on"
       :right "endogenous ASPP2 activity")
      (:left "with"
       :right "a MAPK inhibitor")
      (:left "of"
       :right "ASPP2 Ser827")
      (:left "of"
       :right "mutant ASPP2 (S827A)")
      (:left "In"
       :right "conditions where the cells were starved of serum")
      (:left "of"
       :right "serum")
      (:left "to"
       :right "wild-type ASPP2")
      (:left "in"
       :right "their ability to enhance the transactivation function of p53 (Figure 3A)")
      (:left "of"
       :right "MAPK phosphorylation")
      (:left "on"
       :right "ASPP2 activity")
      (:left "of"
       :right "the two putative MAPK phosphorylation sites")
      (:left "for"
       :right "ASPP2 full pro-apoptotic activity")
      (:left "of"
       :right "activated RAS")
      (:left "via"
       :right "the downstream Raf /MAPK pathway")
      (:left "to"
       :right "a similar extent")
      (:left "of"
       :right "HRAS V12 or KRAS V12")
      (:left "to"
       :right "that")
      (:left "of"
       :right "HRAS V12")
      (:left "in"
       :right "its absence (Figure 2A)")
      (:left "by"
       :right "2.5 fold")
      (:left "over"
       :right "the baseline of p53 and ASPP2")
      (:left "of"
       :right "co-expression of Raf CAAX with p53 and ASPP2")
      (:left "on"
       :right "the pro-apoptotic Bax reporter")
      (:left "of"
       :right "Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "of"
       :right "Raf/MAPK pathway")
      (:left "of"
       :right "Raf (Raf CAAX)")
      (:left "at"
       :right "the plasma membrane")
      (:left "in"
       :right "a human colon cancer cell line HKe3 ER:HRASV12 cells, in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "by"
       :right "the phospho-specific antibody 30 minutes")
      (:left "with"
       :right "a phosphoserine at residue 827")
      (:left "for"
       :right "its radioactivity content (Figure 1B, right panel)")
      (:left "in"
       :right "Figure S1")
      (:left "of"
       :right "several signalling cascades [13]")
      (:left "to"
       :right "the cytosol/nucleus and increased binding to p53")
      (:left "by"
       :right "the RAS/Raf/MAPK pathway")
      (:left "to"
       :right "its increased translocation")
      (:left "to"
       :right "the cytosol/nucleus")
      (:left "of"
       :right "p53 in cancer cells")
      (:left "in"
       :right "cancer cells")
      (:left "by"
       :right "binding directly via the ASPP2 N-terminus")
      (:left "via"
       :right "the ASPP2 N-terminus")
      (:left "at"
       :right "serine 827")
      (:left "by"
       :right "MAPK1 in vitro")
      (:left "as"
       :right "that containing the second putative phosphorylation site, serine 827")
      (:left "Of"
       :right "the two radioactive peaks")
      (:left "between"
       :right "the GST and our ASPP2 fragment")
      (:left "to"
       :right "a fragment of the same mass")
      (:left "of"
       :right "the same mass")
      (:left "as"
       :right "that containing the second putative phosphorylation site")
      (:left "by"
       :right "mass spectrometry")
      (:left "for"
       :right "its radioactivity content")
      (:left "by"
       :right "trypsin")
      (:left "on"
       :right "a high performance liquid chromatography (HPLC)")
      (:left "under"
       :right "the same conditions")
      (:left "of"
       :right "incorporated 32P")
      (:left "for"
       :right "ASPP2 phosphorylation")
      (:left "with"
       :right "a purified C-terminus fragment of ASPP2 (693-1128) containing both MAPK putative phosphorylation sites")
      (:left "of"
       :right "ASPP2 (693-1128) containing both MAPK putative phosphorylation sites")
      (:left "of"
       :right "the most studied downstream pathways of RAS signalling")
      (:left "of"
       :right "RAS signalling")
      (:left "of"
       :right "several signalling cascades")
      (:left "by"
       :right "the activation of a RAS-mediated signalling pathway")
      (:left "of"
       :right "a RAS-mediated signalling pathway")
      (:left "of"
       :right "Ras activation")
      (:left "in"
       :right "the absence of hormone stimulus")
      (:left "of"
       :right "hormone stimulus")
      (:left "to"
       :right "monoubiquitination at position 147")
      (:left "at"
       :right "position 147")
      (:left "including"
       :right "the ability to bind regulators")
      (:left "on"
       :right "the interaction of Ras with its cognate GEF and GAPs, which also target the switch domains")
      (:left "with"
       :right "its cognate GEF and GAPs, which also target the switch domains")
      (:left "on"
       :right "the interaction of Ras with its cognate GEF and GAPs")
      (:left "with"
       :right "its cognate GEF and GAPs")
      (:left "of"
       :right "Ras that alters switch region dynamics")
      (:left "despite"
       :right "the size of the modification")
      (:left "of"
       :right "the modification")
      (:left "for"
       :right "the study of other monoubiquitinated proteins")
      (:left "of"
       :right "other monoubiquitinated proteins")
      (:left "at"
       :right "a single site")
      (:left "in"
       :right "a form suitable for detailed biophysical studies")
      (:left "for"
       :right "detailed biophysical studies")
      (:left "to"
       :right "GAP–mediated hydrolysis")
      (:left "in"
       :right "the activated (GTP–bound) state")
      (:left "with"
       :right "the downstream effectors")
      (:left "of"
       :right "the primary site of monoubiquitination")
      (:left "of"
       :right "monoubiquitination")
      (:left "through"
       :right "a defect in sensitivity to GAP–mediated regulation")
      (:left "in"
       :right "sensitivity to GAP–mediated regulation")
      (:left "to"
       :right "GAP–mediated GTP hydrolysis")
      (:left "from"
       :right "HEK293T cells")
      (:left "of"
       :right "the monoubiquitinated and unmodified fractions of Ras")
      (:left "to"
       :right "regulation by GAP")
      (:left "of"
       :right "an in vitro system")
      (:left "of"
       :right "Ras regulation")
      (:left "to"
       :right "GAP–mediated hydrolysis in a cellular reconstitution system")
      (:left "in"
       :right "a cellular reconstitution system")
      (:left "in"
       :right "the linker length")
      (:left "on"
       :right "this scale (1–2 bonds)")
      (:left "of"
       :right "mUbRas")
      (:left "to"
       :right "GAP downregulation")
      (:left "to"
       :right "Ras ligated to Ubiquitin G76C")
      (:left "of"
       :right "Ras ligated to Ubiquitin C77")
      (:left "of"
       :right "GAP–mediated GTP hydrolysis")
      (:left "of"
       :right "Ras")
      (:left "to"
       :right "Ubiquitin C77")
      (:left "to"
       :right "Ras")
      (:left "to"
       :right "Ubiquitin G76C")
      (:left "between"
       :right "the enzymatic and chemical ubiquitination linkers (seven bonds and five bonds, respectively)")
      (:left "at"
       :right "the c–terminus of Ubiquitin (Ubiquitin C77)")
      (:left "of"
       :right "Ubiquitin (Ubiquitin C77)")
      (:left "of"
       :right "monoubiquitination on Ras")
      (:left "on"
       :right "Ras")
      (:left "to"
       :right "GAP–mediated regulation")
      (:left "to"
       :right "an oncogenic RasG12V mutation (9)")
      (:left "in"
       :right "the rate of GTP hydrolysis")
      (:left "for"
       :right "mUbRas in the presence of the same GAP-to-Ras ratio")
      (:left "in"
       :right "the presence of the same GAP-to-Ras ratio")
      (:left "of"
       :right "the same GAP-to-Ras ratio")
      (:left "At"
       :right "a GAP–to–Ras ratio of 1:500")
      (:left "of"
       :right "1:500")
      (:left "in"
       :right "the rate of GTP hydrolysis for unmodified Ras relative to the intrinsic rate of GTP hydrolysis")
      (:left "for"
       :right "unmodified Ras relative to the intrinsic rate of GTP hydrolysis")
      (:left "to"
       :right "the intrinsic rate of GTP hydrolysis")
      (:left "of"
       :right "GTP hydrolysis")
      (:left "for"
       :right "Ras and mUbRas")
      (:left "in"
       :right "the presence of the catalytic domains of two GAPs, NF1 (NF1 333) and p120GAP(GAP–334)")
      (:left "of"
       :right "the catalytic domains of two GAPs, NF1 (NF1 333) and p120GAP(GAP–334)")
      (:left "of"
       :right "two GAPs, NF1 (NF1 333) and p120GAP(GAP–334)")
      (:left "of"
       :right "Ras monoubiquitination")
      (:left "on"
       :right "GAP–mediated hydrolysis")
      (:left "into"
       :right "resistance mechanisms involving the MAPK pathway")
      (:left "of"
       :right "novel therapeutic strategies")
      (:left "of"
       :right "COT kinase activity")
      (:left "as"
       :right "possible therapeutic strategies for reducing MAPK pathway activation in this setting")
      (:left "in"
       :right "this setting")
      (:left "with"
       :right "de novo resistance in BRAFV600E cultured cell lines and acquired resistance in melanoma cells")
      (:left "with"
       :right "de novo resistance in BRAFV600E cultured cell lines")
      (:left "in"
       :right "BRAFV600E cultured cell lines")
      (:left "in"
       :right "melanoma cells")
      (:left "following"
       :right "treatment with MEK or RAF inhibition")
      (:left "with"
       :right "MEK or RAF inhibition")
      (:left "through"
       :right "MEK-dependent mechanisms that do not require RAF signaling")
      (:left "as"
       :right "a MAPK pathway agonist that drives resistance to RAF inhibition in BRAFV600E cell lines")
      (:left "to"
       :right "RAF inhibition in BRAFV600E cell lines")
      (:left "in"
       :right "BRAFV600E cell lines")
      (:left "to"
       :right "a selective RAF kinase inhibitor")
      (:left "of"
       :right "resistance mechanisms")
      (:left "in"
       :right "a manner that elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies [12]")
      (:left "to"
       :right "targeted anticancer therapeutics")
      (:left "by"
       :right "de novo or acquired resistance [9–11]")
      (:left "on"
       :right "the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5]")
      (:left "in"
       :right "melanoma [1–5]")
      (:left "by"
       :right "the success of RAF and MEK inhibitors")
      (:left "of"
       :right "RAF and MEK inhibitors")
      (:left "in"
       :right "clinical trials 6–8")
      (:left "in"
       :right "the serine/threonine kinase B-RAF")
      (:left "in"
       :right "50–70% of malignant melanomas 1")
      (:left "of"
       :right "malignant melanomas 1")
      (:left "of"
       :right "ERK1 in vitro (Supplementary Fig.  18)  suggesting")
      (:left "in"
       :right "certain contexts")
      (:left "in"
       :right "a MEK-independent manner")
      (:left "In accordance with"
       :right "prior observations")
      (:left "through"
       :right "MEK-independent and MEK-dependent mechanisms")
      (:left "to"
       :right "results observed with pharmacological MEK inhibitors")
      (:left "to"
       :right "results")
      (:left "with"
       :right "pharmacological MEK inhibitors")
      (:left "in"
       :right "A375 cells (Supplementary Fig. 18)")
      (:left "in"
       :right "A375 and SKMEL28 cells")
      (:left "to"
       :right "the MEK inhibitors CI-1040 and AZD6244")
      (:left "to"
       :right "MEK inhibition (Fig. 4a)")
      (:left "at"
       :right "1 μM CI-1040 (Fig. 4b)")
      (:left "for"
       :right "sensitivity to the MEK1/2 inhibitor CI-1040")
      (:left "to"
       :right "the MEK1/2 inhibitor CI-1040")
      (:left "to"
       :right "MAPK pathway inhibition at a target downstream of COT or RAF")
      (:left "at"
       :right "a target downstream of COT or RAF")
      (:left "with"
       :right "B-RAFV600E mutation")
      (:left "in"
       :right "the context of acquired resistance to B-RAF inhibition")
      (:left "of"
       :right "acquired resistance to B-RAF inhibition")
      (:left "with"
       :right "this model")
      (:left "in"
       :right "A375 cells (Fig. 2b)")
      (:left "in"
       :right "the context of drug treatment (Fig. 2c)")
      (:left "of"
       :right "drug treatment (Fig. 2c)")
      (:left "of"
       :right "a high-activity C-RAF truncation mutant (C-RAF W22)")
      (:left "to"
       :right "this agent")
      (:left "on"
       :right "S338 (Supplementary Fig. 9)")
      (:left "with"
       :right "sustained MEK/ERK activation (Fig. 2a, Supplementary Fig. 9)")
      (:left "at"
       :right "S338")
      (:left "for"
       :right "C-RAF activation")
      (:left "In"
       :right "A375 cells")
      (:left "following"
       :right "treatment with PLX4720 (Supplementary Fig. 9)")
      (:left "of"
       :right "the cellular response to B-RAF inhibition")
      (:left "to"
       :right "B-RAF inhibition")
      (:left "of"
       :right "the nine candidate ORFs from our initial screen")
      (:left "from"
       :right "our initial screen")
      (:left "following"
       :right "RAF inhibition")
      (:left "of"
       :right "drug sensitivity (Supplementary Fig. 8)")
      (:left "on"
       :right "these results")
      (:left "to"
       :right "RAF inhibition predominantly through re-activation of MAPK signaling")
      (:left "through"
       :right "re-activation of MAPK signaling")
      (:left "of"
       :right "MAPK signaling")
      (:left "of"
       :right "wild-type COT or C-RAF")
      (:left "in"
       :right "constitutive phosphorylation of ERK and MEK in the presence of PLX4720")
      (:left "of"
       :right "ERK and MEK")
      (:left "in"
       :right "the presence of PLX4720")
      (:left "in"
       :right "a manner comparable to MEK1DD")
      (:left "with"
       :right "MAP kinase pathway activation (Fig. 2a and Supplementary Fig. 6)")
      (:left "of"
       :right "these genes")
      (:left "of"
       :right "the components in these complexes")
      (:left "in"
       :right "these complexes")
      (:left "to"
       :right "RAS")
      (:left "for"
       :right "complex formation")
      (:left "of"
       :right "the complex (Figure 7B)")
      (:left "as"
       :right "a scaffold")
      (:left "to"
       :right "the plasma membrane")
      (:left "by"
       :right "RAS")
      (:left "in"
       :right "an inactive conformation")
      (:left "through"
       :right "its own kinase activity")
      (:left "through"
       :right "auto-phosphorylation")
      (:left "of"
       :right "RAF activation downstream of RAS")
      (:left "on"
       :right "our findings")
      (:left "to"
       :right "CRAF hyperactivation and consequently elevated MEK and ERK signaling")
      (:left "In"
       :right "this study")
      (:left "by"
       :right "chemical or genetic means in the presence")
      (:left "in"
       :right "the presence")
      (:left "to"
       :right "CRAF hyperactivation")
      (:left "in"
       :right "these cells")
      (:left "for"
       :right "MEK/ERK activation in RAS mutant cells")
      (:left "in"
       :right "RAS mutant cells")
      (:left "with"
       :right "this")
      (:left "in"
       :right "NRAS mutant cells (Figure 1E)")
      (:left "by"
       :right "RNA interference (RNAi)")
      (:left "by"
       :right "PLX4720 and 885-A  in NRAS mutant cells (Figure 1B and 1C)")
      (:left "in"
       :right "NRAS mutant cells (Figure 1B and 1C)")
      (:left "in"
       :right "these cells (Figure 1D)")
      (:left "in"
       :right "ERK activity in the NRAS mutant cells (Figure 1A)")
      (:left "in"
       :right "the NRAS mutant cells (Figure 1A)")
      (:left "in"
       :right "all of these lines (Figure 1A)")
      (:left "of"
       :right "these lines (Figure 1A)")
      (:left "in"
       :right "D04, MM415, MM485, and WM852 NRAS mutant cells (Table S2)")
      (:left "in"
       :right "SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G)")
      (:left "in"
       :right "SkMel24, SkMel28, D25, and WM266.4 cells")
      (:left "in"
       :right "BRAF mutant A375 melanoma cells (Figure 1A; see Table S2)")
      (:left "at"
       :right "2 nM (Figure S1E)")
      (:left "against"
       :right "a panel of 64 other protein kinases (Table S1)")
      (:left "of"
       :right "64 other protein kinases (Table S1)")
      (:left "of"
       :right "the class I inhibitor SB590885 (King et al., 2006) that is also highly selective for BRAF")
      (:left "at"
       :right "13 nM (Tsai et al., 2008)")
      (:left "at"
       :right "13 nM,   several other kinases in the low nM range (Wilhelm et al., 2004)")
      (:left "at"
       :right "40 nM")
      (:left "at"
       :right "13 nM")
      (:left "in"
       :right "the low nM range (Wilhelm et al., 2004)")
      (:left "for"
       :right "our studies (Figures S1A–S1D)")
      (:left "of"
       :right "MAPK")
      (:left "by"
       :right "RAS/MAPK pathway")
      (:left "in"
       :right "a lack of detection of phospho-ASPP2")
      (:left "of"
       :right "detection of phospho-ASPP2")
      (:left "of"
       :right "phospho-ASPP2")
      (:left "with"
       :right "another different phospho-ASPP2 antibody, ES1,")
      (:left "with"
       :right "another different phospho-ASPP2 antibody")
      (:left "in"
       :right "a human colon cancer cell line HKe3 ER:HRASV12 cells, in which       RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "upon"
       :right "the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "as"
       :right "3 hours")
      (:left "by"
       :right "the phospho-specific antibody       30 minutes")
      (:left "in"
       :right "cells")
      (:left "in"
       :right "low serum for 50 hours")
      (:left "for"
       :right "50 hours")
      (:left "of"
       :right "RAS")
      (:left "for"
       :right "the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "for"
       :right "the ASPP2 fragment")
      (:left "by"
       :right "MAPK")
      (:left "of"
       :right "the purified phospho-specific antibody")
      (:left "on"
       :right "the purified GST-ASPP2 fragment (693-1128)")
      (:left "with"
       :right "recombinant MAPK1")
      (:left "by"
       :right "affinity column purification")
      (:left "with"
       :right "a phosphoserine       at residue 827")
      (:left "of"
       :right "Ras resulting in greater fluorescence       complementation for Ras17N (and Ras17N/69N)")
      (:left "in"
       :right "greater fluorescence       complementation for Ras17N (and Ras17N/69N)")
      (:left "for"
       :right "Ras17N (and Ras17N/69N)")
      (:left "with"
       :right "Ras17N, which has")
      (:left "with"
       :right "Ras17N")
      (:left "for"
       :right "nucleotide")
      (:left "to"
       :right "wild type Ras")
      (:left "for"
       :right "longer periods in the nucleotide-free state")
      (:left "in"
       :right "the nucleotide-free state")
      (:left "for"
       :right "detection of nucleotide-free       GTPases in vivo")
      (:left "of"
       :right "nucleotide-free       GTPases in vivo")
      (:left "for"
       :right "our model")
      (:left "to"
       :right "nucleotide-free Ras in vivo")
      (:left "of"
       :right "nucleotides")
      (:left "onto"
       :right "Ras")
      (:left "In contrast to"
       :right "the GEF-Ras complex, which is disrupted by addition of       guanine nucleotides")
      (:left "In contrast to"
       :right "the GEF-Ras complex")
      (:left "by"
       :right "addition of       guanine nucleotides")
      (:left "of"
       :right "guanine nucleotides")
      (:left "in"
       :right "the presence of high concentrations of GTP or GDP")
      (:left "of"
       :right "high concentrations of GTP or GDP")
      (:left "for"
       :right "a protein that       may stabilize nucleotide-free Ras in vivo")
      (:left "on"
       :right "the relatively high GTP:GDP ratio in vivo [37],       the ability of GTP to dissociate the GEF-Ras complex in vitro [31]")
      (:left "on"
       :right "the relatively high GTP:GDP ratio in vivo [37]")
      (:left "to"
       :right "active state")
      (:left "of"
       :right "nucleotide-free Ras")
      (:left "through"
       :right "the action of exchange factors")
      (:left "of"
       :right "exchange factors")
      (:left "between"
       :right "an inactive GDP-bound state and       an active GTP-bound state")
      (:left "like"
       :right "all GTPases")
      (:left "between"
       :right "an inactive GDP-bound state")))

(define-rule-record  ; #<PSR-1289 pp → {preposition proper-name}>
  :form (preposition (preposition proper-name))
  :count 1
  :function make-pp
  :contexts
     ((:left "to"
       :right "MEK1DD")))

(define-rule-record  ; #<PSR-1286 pp → {preposition proper-noun}>
  :form (preposition (preposition proper-noun))
  :count 111
  :function make-pp
  :contexts
     ((:left "of"
       :right "MAPK1 and DUSP6")
      (:left "of"
       :right "DUSP6")
      (:left "of"
       :right "MAPK1")
      (:left "of"
       :right "NRAS and BRAF")
      (:left "to"
       :right "NRAS")
      (:left "of"
       :right "ERK1")
      (:left "between"
       :right "ASPP2 and RAS")
      (:left "with or without"
       :right "4-OHT")
      (:left "but not"
       :right "ASPP2 (S827A)")
      (:left "to"
       :right "ASPP2")
      (:left "with"
       :right "p53")
      (:left "of"
       :right "p53 co-immunoprecipitated with transfected V5-tagged wild-type ASPP2 (Figure 4B, compare lanes 4 and 5)")
      (:left "to"
       :right "p53 [2]")
      (:left "by"
       :right "RAS/MAPK")
      (:left "of"
       :right "p53 compared to the control cells (Figure 3C)")
      (:left "for"
       :right "Raf CAAX")
      (:left "via"
       :right "ASPP2")
      (:left "of"
       :right "p53 (Figure 3A)")
      (:left "on"
       :right "ASPP2 and p53")
      (:left "by"
       :right "ASPP2")
      (:left "on"
       :right "p53")
      (:left "of"
       :right "p53 and ASPP2")
      (:left "of"
       :right "Raf CAAX")
      (:left "with"
       :right "p53 and ASPP2")
      (:left "to"
       :right "p53")
      (:left "by"
       :right "MAPK1")
      (:left "by"
       :right "p38 SAPK")
      (:left "to"
       :right "p38 SAPK")
      (:left "in"
       :right "ASPP1 and ASPP2")
      (:left "of"
       :right "p53")
      (:left "via"
       :right "ASPP1 and ASPP2")
      (:left "of"
       :right "COT or RAF")
      (:left "of"
       :right "NRAS and KRAS")
      (:left "with"
       :right "PLX4720 (Supplementary Fig. 9)")
      (:left "with"
       :right "B-RAF")
      (:left "of"
       :right "PLX4720")
      (:left "with"
       :right "CRAF")
      (:left "of"
       :right "BRAF")
      (:left "to"
       :right "CRAF")
      (:left "but not"
       :right "BRAF")
      (:left "for"
       :right "BRAF")
      (:left "for"
       :right "ASPP2")
      (:left "of"
       :right "ASPP2")
      (:left "of"
       :right "4-hydroxytamoxifen (4-OHT)")
      (:left "with"
       :right "EGF")
      (:left "of"
       :right "GTP or GDP")
      (:left "of"
       :right "PI3KC2β")
      (:left "of"
       :right "GTP")))

(define-rule-record  ; #<PSR-1248 pp → {preposition vg+ing}>
  :form (preposition (preposition vg+ing))
  :count 1
  :function apply-preposition-to-complement
  :contexts
     ((:left "from"
       :right "relapsing")))

(define-rule-record  ; #<PSR-1249 pp → {preposition vp+ing}>
  :form (preposition (preposition vp+ing))
  :count 6
  :function apply-preposition-to-complement
  :contexts
     ((:left "in"
       :right "promoting senescence in fibroblasts")
      (:left "by"
       :right "analysing the transcriptional activity of p53")
      (:left "for"
       :right "reducing MAPK pathway activation in this setting")
      (:left "in"
       :right "mediating PLX4720 resistance and ERK activation (Supplementary Fig. 10)")
      (:left "in"
       :right "mediating PLX4720 resistance")
      (:left "by"
       :right "phosphorylating a partner protein")))

(define-rule-record  ; #<PSR-1300 pp-relative-clause → {pp-wh-pronoun s}>
  :form (s (pp-wh-pronoun s))
  :count 5
  :function make-pp-relative-clause
  :contexts
     ((:left "in which"
       :right "signaling is sustained even in the absence of hormone stimulus")
      (:left "through which"
       :right "high-throughput functional screens may inform the development")
      (:left "in which"
       :right "RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")))

(define-rule-record  ; #<PSR-1246 prep-comp → {preposition vg+passive}>
  :form (preposition (preposition vg+passive))
  :count 2
  :function make-prep-comp
  :contexts
     ((:left "to"
       :right "be investigated")))

(define-rule-record  ; #<PSR-1247 prep-comp → {preposition vp+passive}>
  :form (preposition (preposition vp+passive))
  :count 1
  :function make-prep-comp
  :contexts
     ((:left "to"
       :right "be mediated by ASPP2")))

(define-rule-record  ; #<PSR-1243 prep-comp → {preposition vp}>
  :form (preposition (preposition vp))
  :count 8
  :function make-prep-comp
  :contexts
     ((:left "at"
       :right "any time reach a low value")
      (:left "at"
       :right "some time reach a low value")
      (:left "to"
       :right "result in p53-dependent apoptosis")
      (:left "to"
       :right "fully enhance p53 pro-apoptotic activity")
      (:left "to"
       :right "increase the activity of mutant ASPP2 (S827A)")
      (:left "to"
       :right "easily generate mUbRas, modified at a single site")
      (:left "to"
       :right "easily generate mUbRas")
      (:left "to"
       :right "functionally interrogate resistance to a selective RAF kinase inhibitor")))

(define-rule-record  ; #<PSR-222513 protein → protein number>
  :form (protein (protein number))
  :count 1
  :function make-protein-variant
  :contexts
     ((:left "NF1"
       :right "333")))

(define-rule-record  ; #<PSR-222511 protein → protein point-mutation>
  :form (protein (protein point-mutation))
  :count 9
  :function bind-protein-mutation
  :contexts
     ((:left "BRAF"
       :right "V600E")
      (:left "Ubiquitin"
       :right "G76C")
      (:left "BRAFV"
       :right "600E")
      (:left "Ras"
       :right "17N")))

(define-rule-record  ; #<PSR-222498 residue-on-protein → amino-acid number>
  :form (residue-on-protein (amino-acid number))
  :count 18
  :function create-residue-from-amino-acid-position
  :contexts
     ((:left "Ser"
       :right "602")
      (:left "serine"
       :right "827")
      (:left "Tyr"
       :right "204")
      (:left "pThr"
       :right "202")
      (:left "Ser"
       :right "827")
      (:left "amino acids"
       :right "824-832")))

(define-rule-record  ; #<PSR-222505 residue-on-protein → protein residue-on-protein>
  :form (residue-on-protein (protein residue-on-protein))
  :count 7
  :function bind-substrate-for-residue
  :contexts
     ((:left "ASPP2"
       :right "Ser827")
      (:left "KRAS"
       :right "V12")
      (:left "HRAS"
       :right "V12")
      (:left "Ubiquitin"
       :right "C77")
      (:left "C-RAF"
       :right "W22")))

(define-rule-record  ; #<PSR-222504 residue-on-protein → residue-on-protein number>
  :form (residue-on-protein (residue-on-protein number))
  :count 7
  :function bind-position-on-residue
  :contexts
     ((:left "residues"
       :right "698 and 827")
      (:left "residues"
       :right "671 and 746")
      (:left "residue"
       :right "827")))

(define-rule-record  ; #<PSR-222499 residue-on-protein → single-capitalized-letter number>
  :form (residue-on-protein (single-capitalized-letter number))
  :count 18
  :function create-residue-from-amino-acid-position
  :contexts
     ((:left "V"
       :right "600")
      (:left "S"
       :right "827")
      (:left "S"
       :right "698")
      (:left "V"
       :right "12")
      (:left "G"
       :right "76")
      (:left "C"
       :right "77")
      (:left "W"
       :right "22")
      (:left "S"
       :right "338")))

(define-rule-record  ; #<PSR-639 s → {adverb s}>
  :form (s (adverb s))
  :count 26
  :function interpret-adverb+verb
  :contexts
     ((:left "In fact"
       :right "the amount of MAPK1­DUSP6 complex is always low")
      (:left "In contrast,"
       :right "the kinetics of nuclear accumulation and phosphorylation of GFP-ERK1-4 were slower than that")
      (:left "yet"
       :right "the molecular mechanisms that regulate ERK nuclear translocation are not fully understood")
      (:left "Importantly,"
       :right "in diffuse large B cell lymphomas, reduced ASPP2 expression associates")
      (:left "Indeed,"
       :right "upon activation of RAS by 4-OHT in HKe3 ER:HRASV12 cells, we observed an increase in the amount of p53 co-immunoprecipitated with transfected V5-tagged wild-type ASPP2 (Figure 4B, compare lanes 4 and 5)")
      (:left "Indeed,"
       :right "upon activation of RAS by 4-OHT in HKe3 ER:HRASV12 cells, we observed an increase in the amount of p53")
      (:left "Interestingly,"
       :right "we observed")
      (:left "Interestingly,"
       :right "the endogenous ASPP2 protein level was slightly decreased following RAS/MAPK pathway inhibition by UO126 treatment (Figure 3C, right panel)")
      (:left "so"
       :right "the Raf pathway is constitutively active [14]")
      (:left "Additionally,"
       :right "RAS/Raf/MAPK pathway activation stabilizes ASPP2 protein")
      (:left "Interestingly,"
       :right "we observed two conserved putative MAPK phosphorylation sites in ASPP1 and ASPP2")
      (:left "Mechanistically"
       :right "ASPP1 and ASPP2 bind RAS-GTP")
      (:left "Surprisingly,"
       :right "monoubiquitination did not alter the intrinsic activity of Ras")
      (:left "Together,"
       :right "these results provide new insights into resistance mechanisms involving the MAPK pathway")
      (:left "Interestingly,"
       :right "both cell lines were refractory to MEK inhibition (Fig. 4a)")
      (:left "In contrast,"
       :right "ectopically expressed C-RAF was phosphorylated on S338 (Supplementary Fig. 9) and its PLX4720 resistance phenotype  was associated with sustained MEK/ERK activation (Fig. 2a, Supplementary Fig. 9)")
      (:left "At baseline,"
       :right "COT expression increased ERK phosphorylation in a manner comparable to MEK1DD")
      (:left "Next,"
       :right "we tested whether overexpression of these genes was sufficient to activate the MAPK pathway")
      (:left "Critically,"
       :right "we posit")
      (:left "so"
       :right "we studied the underlying mechanism(s)")
      (:left "Similarly,"
       :right "all four drugs inhibited ERK in SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G)")
      (:left "Similarly,"
       :right "all four drugs inhibited ERK in SkMel24, SkMel28, D25, and WM266.4 cells")
      (:left "Finally,"
       :right "we also used the potent and selective MEK inhibitor PD184352 (Sebolt-Leopold et al., 1999)")))

(define-rule-record  ; #<PSR-892 s → {common-noun vg+ed}>
  :form (vg+ed (common-noun vg+ed))
  :count 1
  :function assimilate-subject-to-vp-ed
  :contexts
     ((:left "knockdown"
       :right "only modestly suppressed")))

(define-rule-record  ; #<PSR-801 s → {common-noun/plural vp}>
  :form (vp (common-noun/plural vp))
  :count 1
  :function assimilate-subject
  :contexts
     ((:left "stars"
       :right "indicate cytosol")))

(define-rule-record  ; #<PSR-891 s → {n-bar verb+ed}>
  :form (verb+ed (n-bar verb+ed))
  :count 1
  :function assimilate-subject-to-vp-ed
  :contexts
     ((:left "BRAFV600E"
       :right "cultured")))

(define-rule-record  ; #<PSR-873 s → {np verb+ed}>
  :form (verb+ed (np verb+ed))
  :count 1
  :function assimilate-subject-to-vp-ed
  :contexts
     ((:left "kinase-dead derivatives"
       :right "had")))

(define-rule-record  ; #<PSR-769 s → {np vg+passive}>
  :form (vg+passive (np vg+passive))
  :count 10
  :function assimilate-subject
  :contexts
     ((:left "the molecular mechanisms that regulate ERK nuclear translocation"
       :right "are not fully understood")
      (:left "RAS"
       :right "is mutated")
      (:left "alanine substitution mutants of the two putative MAPK phosphorylation sites"
       :right "were constructed")
      (:left "Each eluted fraction"
       :right "was measured")
      (:left "Phosphorylated endogenous ASPP2"
       :right "was detected")
      (:left "This state"
       :right "is considered")))

(define-rule-record  ; #<PSR-767 s → {np vg}>
  :form (vg (np vg))
  :count 8
  :function assimilate-subject
  :contexts
     ((:left "the BRAF-NRAS dimer"
       :right "vanish")
      (:left "the BRAF-NRAS complex"
       :right "vanish")
      (:left "phosphorylated BRAF"
       :right "rise")
      (:left "reduced ASPP2 expression"
       :right "associates")
      (:left "ASPP2 binding to RAS at the plasma membrane"
       :right "occurs")
      (:left "the GAP defect"
       :right "will dominate")
      (:left "genetic alterations that engender C-RAF activation (e.g., oncogenic RAS mutations)"
       :right "tend")
      (:left "this"
       :right "occurs")))

(define-rule-record  ; #<PSR-771 s → {np vp+ed}>
  :form (vp+ed (np vp+ed))
  :count 22
  :function assimilate-subject
  :contexts
     ((:left "the concentration of the BRAF-NRAS complex"
       :right "sustained at a low level")
      (:left "the BRAF-NRAS complex"
       :right "sustained after 2 hours")
      (:left "the BRAF-NRAS complex"
       :right "sustained in the first 2 hours")
      (:left "the amount of BRAF-NRAS complex"
       :right "sustained at a high level")
      (:left "the BRAF-NRAS complex"
       :right "sustained in time")
      (:left "the mutant"
       :right "shown consistently to be dimerization-deficient in vitro")
      (:left "ERK1 nuclear accumulation"
       :right "increased upon serum stimulation")
      (:left "Total cell lysates from HKe3 ER:HRASV12 cells"
       :right "treated with or without 4-OHT")
      (:left "RAS/MAPK pathway activation"
       :right "resulted in the increased ASPP2 expression (Figure 1E; Figure S3C)")
      (:left "histone 2B"
       :right "phosphorylated by p38 SAPK")
      (:left "Histone 2B"
       :right "phosphorylated by p38 SAPK")
      (:left "ASPP2 (693-1128) fragment"
       :right "phosphorylated by p38 SAPK")
      (:left "tissue"
       :right "obtained from relapsing")
      (:left "knockdown only modestly suppressed"
       :right "COT–mediated")
      (:left "an event"
       :right "required for C-RAF activation")
      (:left "Overexpression of wild-type COT or C-RAF"
       :right "resulted in constitutive phosphorylation of ERK and MEK in the presence of PLX4720")
      (:left "knockdown of ASPP2"
       :right "resulted in a lack of detection of phospho-ASPP2")
      (:left "a 30-fold       lower affinity for nucleotide"
       :right "compared to wild type Ras")))

(define-rule-record  ; #<PSR-768 s → {np vp+passive}>
  :form (vp+passive (np vp+passive))
  :count 64
  :function assimilate-subject
  :contexts
     ((:left "a delay in cytoplasmic activation of ERK"
       :right "is directly translated into a delay in nuclear translocation")
      (:left "dimerization of ERK1"
       :right "is not required for nuclear entry and retention")
      (:left "Dimerization of ERK"
       :right "has been proposed as a requirement for nuclear translocation")
      (:left "This process"
       :right "is required for the induction of many cellular responses")
      (:left "ASPP2 expression"
       :right "is also down-regulated in both invasive and metastatic cells compared with normal breast epithelium [21]")
      (:left "ASPP2 expression"
       :right "is also down-regulated in both invasive and metastatic cells")
      (:left "ASPP2 expression"
       :right "is down-regulated by DNA methylation [9,17-19]")
      (:left "the p53 binding ability of ASPP2 phosphorylation mutant"
       :right "would be influenced by RAS activation")
      (:left "that Ser 827 phosphorylation"
       :right "is required for RAS-induced translocation of ASPP2 to the cytosol")
      (:left "Ser827 phosphorylation"
       :right "is required for RAS-induced translocation of ASPP2")
      (:left "this"
       :right "may be mediated by the stabilization of ASPP2 protein")
      (:left "oncogenic RAS"
       :right "is induced in HKe3 ER:HRASV12 cells (Figure S3B) or co-transfected in Saos2 cells (Figure S3C)")
      (:left "oncogenic RAS"
       :right "is induced in HKe3 ER:HRASV12 cells (Figure S3B)")
      (:left "ASPP2 levels"
       :right "were considerably decreased without oncogenic RAS")
      (:left "The ASPP2 protein levels in the presence or absence of oncogenic RAS"
       :right "were measured after cycloheximide (CHX) addition (Figure S3B and C)")
      (:left "The mRNA level of ASPP2"
       :right "was not affected upon RAS/MAPK pathway activation (Figure S3A)")
      (:left "the endogenous ASPP2 protein level"
       :right "was slightly decreased following RAS/MAPK pathway inhibition by UO126 treatment (Figure 3C, right panel)")
      (:left "cells"
       :right "were treated with a MAPK inhibitor, UO126")
      (:left "cells"
       :right "were treated with a MAPK inhibitor")
      (:left "the cells"
       :right "were starved of serum")
      (:left "the effect of activated RAS on ASPP2 and p53"
       :right "is mediated via the downstream Raf /MAPK pathway")
      (:left "The effect of Raf CAAX on ASPP2 and p53"
       :right "was compared to that of HRAS V12 or KRAS V12")
      (:left "The effect of Raf CAAX on ASPP2 and p53"
       :right "was compared to that of HRAS V12")
      (:left "The impact of co-expression of Raf CAAX with p53 and ASPP2"
       :right "was tested by analysing the transcriptional activity of p53")
      (:left "ASPP2 phosphorylation"
       :right "was also observed in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "a non-radioactive in vitro phosphorylation assay"
       :right "was performed on the purified GST-ASPP2 fragment (693-1128) with recombinant MAPK1")
      (:left "A synthetic peptide encoding amino acids 824-832, with a phosphoserine at residue 827,"
       :right "was used to raise antibodies")
      (:left "An in vitro phophorylation assay"
       :right "was performed with a purified C-terminus fragment of ASPP2 (693-1128) containing both MAPK putative phosphorylation sites")
      (:left "The fractions representing these radioactive peaks"
       :right "were analysed by mass spectrometry")
      (:left "An in vitro phosphorylation assay"
       :right "was performed with a purified C-terminus fragment of ASPP2 (693-1128) containing both MAPK putative phosphorylation sites")
      (:left "the activity of ASPP2"
       :right "is regulated by the activation of a RAS-mediated signalling pathway")
      (:left "signaling"
       :right "is sustained even in the absence of hormone stimulus")
      (:left "No increase in the rate of GTP hydrolysis"
       :right "was observed for mUbRas in the presence of the same GAP-to-Ras ratio")
      (:left "clinical responses to targeted anticancer therapeutics"
       :right "are frequently confounded by de novo or acquired resistance [9–11]")
      (:left "Oncogenic mutations in the serine/threonine kinase B-RAF"
       :right "are found in 50–70% of malignant melanomas 1")
      (:left "such co-occurring events [19, 20]"
       :right "might be favored in the context of acquired resistance to B-RAF inhibition")
      (:left "ectopically expressed C-RAF"
       :right "was phosphorylated on S338 (Supplementary Fig. 9)")
      (:left "at least two RAS proteins"
       :right "are needed to stimulate formation of the complex (Figure 7B)")
      (:left "Ser827 of ASPP2"
       :right "can be phosphorylated by RAS/MAPK pathway")
      (:left "ASPP2 phosphorylation"
       :right "was also observed in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which       RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "RAS activation"
       :right "is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "endogenous ASPP2"
       :right "could be phosphorylated in cells")
      (:left "Saos2 cells"
       :right "were grown in low serum for 50 hours")
      (:left "the cells"
       :right "were stimulated with EGF")
      (:left "a non-radioactive in vitro phosphorylation assay"
       :right "was performed on       the purified GST-ASPP2 fragment (693-1128) with recombinant MAPK1")
      (:left "A polyclonal antibody NGH.S4"
       :right "was purified by affinity column purification")
      (:left "A synthetic peptide encoding amino acids 824-832, with a phosphoserine       at residue 827,"
       :right "was used to raise antibodies")))

(define-rule-record  ; #<PSR-770 s → {np vp+past}>
  :form (vp+past (np vp+past))
  :count 20
  :function assimilate-subject
  :contexts
     ((:left "Real time fluorescence microscopy and fluorescence correlation spectroscopy"
       :right "revealed that ERK1 nuclear accumulation increased upon serum stimulation")
      (:left "These findings"
       :right "established ASPP2 as a tumor suppressor and an activator of p53 family")
      (:left "These findings"
       :right "established ASPP2 as a tumor suppressor")
      (:left "another MAPK inhibitor, PD 98059,"
       :right "also inhibited ASPP2 function to a similar extent (Figure S2)")
      (:left "these mutants"
       :right "had identical activity to wild-type ASPP2")
      (:left "one"
       :right "represented the linker region between the GST and our ASPP2 fragment")
      (:left "The analysis"
       :right "revealed that monoubiquitination abrogates GAP–mediated GTP hydrolysis")
      (:left "These results"
       :right "led us to examine the effect of monoubiquitination on the interaction of Ras with its cognate GEF and GAPs, which also target the switch domains")
      (:left "These results"
       :right "led us to examine the effect of monoubiquitination on the interaction of Ras with its cognate GEF and GAPs")
      (:left "Our modeling and NMR analyses"
       :right "indicated that Ubiquitin dynamically samples a broad surface area of Ras that alters switch region dynamics")
      (:left "A major advance"
       :right "was our ability to easily generate mUbRas, modified at a single site")
      (:left "A major advance"
       :right "was our ability to easily generate mUbRas")
      (:left "Ectopic COT expression in A375 and SKMEL28 cells"
       :right "also conferred decreased sensitivity to the MEK inhibitors CI-1040 and AZD6244")
      (:left "oncogenic alleles of NRAS and KRAS"
       :right "conferred PLX4720 resistance in A375 cells (Fig. 2b)")
      (:left "COT expression"
       :right "increased ERK phosphorylation in a manner comparable to MEK1DD")
      (:left "NRAS or CRAF depletion by RNA interference (RNAi)"
       :right "blocked MEK/ERK activation by PLX4720 and 885-A  in NRAS mutant cells (Figure 1B and 1C)")
      (:left "all four drugs"
       :right "inhibited ERK in SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G)")
      (:left "all four drugs"
       :right "inhibited ERK in SkMel24, SkMel28, D25, and WM266.4 cells")
      (:left "all four drugs"
       :right "blocked ERK activity in BRAF mutant A375 melanoma cells (Figure 1A; see Table S2)")))

(define-rule-record  ; #<PSR-766 s → {np vp}>
  :form (vp (np vp))
  :count 174
  :function assimilate-subject
  :contexts
     ((:left "phospho­MAPK1"
       :right "now have a peak")
      (:left "The amount of MAPK1­DUSP6 complex"
       :right "is not always low anymore")
      (:left "the amount of MAPK1­DUSP6 complex"
       :right "is always low")
      (:left "the BRAF-NRAS complex"
       :right "vanish at some time")
      (:left "phosphorylated MAP2K1"
       :right "behave like phosphorylated MAPK1")
      (:left "the amount of BRAF-NRAS complex"
       :right "have a maximum")
      (:left "phosphorylated BRAF"
       :right "become high")
      (:left "phosphorylated MAP2K1"
       :right "becomes high")
      (:left "phosphorylated MAP2K1"
       :right "being high")
      (:left "phosphorylated BRAF"
       :right "being high")
      (:left "the amount of phosphorylated MAP2K1"
       :right "remain low")
      (:left "phosphorylated BRAF"
       :right "reaches a high value")
      (:left "the amount of phosphorylated BRAF"
       :right "ever reach a high value")
      (:left "the amount of phosphorylated MAP2K1"
       :right "always remain low")
      (:left "the amount of phosphorylated BRAF"
       :right "reach a high level")
      (:left "Our data"
       :right "demonstrate for the first time that a delay in cytoplasmic activation of ERK is directly translated into a delay in nuclear translocation")
      (:left "These results"
       :right "indicate that the differential shuttling behavior of the mutant is a consequence of delayed phosphorylation of ERK by MEK")
      (:left "the differential shuttling behavior of the mutant"
       :right "is a consequence of delayed phosphorylation of ERK by MEK")
      (:left "the kinetics of nuclear accumulation and phosphorylation of GFP-ERK1-4"
       :right "were slower than that")
      (:left "energy migration Forster resonance energy transfer and fluorescence correlation spectroscopy measurements in living cells"
       :right "did not detect dimerization")
      (:left "the mobility of the protein in the nucleus and cytoplasm"
       :right "remained unchanged")
      (:left "ERKs"
       :right "translocate from the cytoplasm to the nucleus")
      (:left "ERK Nuclear Translocation"
       :right "Is Dimerization-independent")
      (:left "Activated MAPK"
       :right "phosphorylates ASPP2 which can then relocate to the nucleus")
      (:left "Diagram"
       :right "summarizes the inter-regulation between ASPP2 and RAS")
      (:left "RAS activation"
       :right "enhances the binding of wild-type ASPP2 but not ASPP2 (S827A) to p53")
      (:left "Arrows"
       :right "indicate cell membrane")
      (:left "RAS activation"
       :right "induces cytoplasmic and nuclear translocation of wild-type ASPP2 but not ASPP2 (S827A) in HKe3 ER:HRAS12 cells as detected by immunofluorescence")
      (:left "Wild-type ASPP2, but not mutant ASPP2 (S827A),"
       :right "translocates to the cytosol and nucleus upon oncogenic RAS activation")
      (:left "this"
       :right "results in an increased interaction with p53")
      (:left "growth factors or growth receptors"
       :right "would only activate RAS for short periods of time")
      (:left "The ability of oncogenic RAS to stimulate apoptosis"
       :right "allows the cell to have a fail-proof mechanism")
      (:left "mutated RAS"
       :right "signals to p53 via ASPP2")
      (:left "RAS"
       :right "is constitutively active")
      (:left "the ASPP2 feedback loop"
       :right "reach a threshold of signaling high enough to result in p53-dependent apoptosis")
      (:left "RAS"
       :right "reverts to its inactive state")
      (:left "RAS"
       :right "is only temporarily active")
      (:left "one"
       :right "could hypothesize that ASPP2 would bind active RAS")
      (:left "MAPK-mediated phosphorylation of ASPP2"
       :right "would lead to increased binding to p53")
      (:left "This"
       :right "in turn activates ASPP2 via MAPK phosphorylation which will translocate and activate p53")
      (:left "this possible feedback loop"
       :right "leads to an amplified pro-apoptotic signal")
      (:left "RAS"
       :right "can activate p53 pro-apoptotic functions (Figure 5)")
      (:left "the RAS-ASPP interaction"
       :right "enhances the transcription function of p53 in cancer cells [2]")
      (:left "Together these data"
       :right "illustrate that phosphorylation of ASPP2 at Ser827 by MAPK is necessary for its ASPP2 to fully enhance p53 pro-apoptotic activity")
      (:left "phosphorylation of ASPP2 at Ser827 by MAPK"
       :right "is necessary for its ASPP2 to fully enhance p53 pro-apoptotic activity")
      (:left "the translocation of wild-type ASPP2 from the plasma membrane to the cytosol and nucleus"
       :right "results in increased binding to p53 [2]")
      (:left "This"
       :right "suggests that ASPP2 binding to RAS at the plasma membrane occurs")
      (:left "MAPK phosphorylation at Ser827"
       :right "could affect the cellular localization of ASPP2")
      (:left "activation of RAS"
       :right "results in ASPP2 translocation from the plasma membrane to the cytosol and nucleus [2]")
      (:left "These data"
       :right "indicate that ASPP2 phosphorylation by RAS/MAPK is necessary for ASPP2 full pro-apoptotic activity")
      (:left "ASPP2 phosphorylation by RAS/MAPK"
       :right "is necessary for ASPP2 full pro-apoptotic activity")
      (:left "ASPP2 protein levels"
       :right "remained high after CHX treatment")
      (:left "RAS/MAPK pathway activation"
       :right "could result in the increased protein stability of ASPP2")
      (:left "the regulation"
       :right "is not at the transcriptional level")
      (:left "These results"
       :right "suggest that MAPK phosphorylation of ASPP2 Ser827 is necessary for Raf CAAX to stimulate the full transcriptional activity of p53 via ASPP2")
      (:left "MAPK phosphorylation of ASPP2 Ser827"
       :right "is necessary for Raf CAAX to stimulate the full transcriptional activity of p53 via ASPP2")
      (:left "activated Raf CAAX"
       :right "was able to stimulate wild-type ASPP2 and ASPP2 (S698A) by 2.5 fold")
      (:left "ASPP2 phosphorylation by MAPK"
       :right "is necessary for ASPP2 full pro-apoptotic activity")
      (:left "This"
       :right "suggests that the effect of activated RAS on ASPP2 and p53 is mediated via the downstream Raf /MAPK pathway")
      (:left "All three"
       :right "activate ASPP2 and p53 transactivation activity to a similar extent")
      (:left "This effect"
       :right "is likely to be mediated by ASPP2")
      (:left "activation of Raf/MAPK pathway"
       :right "is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "activation of Raf/MAPK pathway"
       :right "is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX)")
      (:left "the Raf pathway"
       :right "is constitutively active [14]")
      (:left "One of the most studied downstream pathways of RAS signalling"
       :right "is the Raf/MAPK pathway [13]")
      (:left "Raf/MAPK Pathway"
       :right "Activates the Pro-Apoptotic Function of ASPP2")
      (:left "EGF stimulation phosphorylated ASPP2"
       :right "was barely detectable")
      (:left "Figure 1C"
       :right "shows that the phospho- specific antibody is specific for the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "the phospho- specific antibody"
       :right "is specific for the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "Figure 1C"
       :right "shows that the phospho- specific antibody is specific for the ASPP2 fragment")
      (:left "the phospho- specific antibody"
       :right "is specific for the ASPP2 fragment")
      (:left "RAS"
       :right "is upstream of several signalling cascades [13]")
      (:left "RAS/Raf/MAPK pathway activation"
       :right "stabilizes ASPP2 protein")
      (:left "the underlying mechanism"
       :right "remains to be investigated")
      (:left "that this phosphorylation"
       :right "leads to its increased translocation to the cytosol/nucleus and increased binding to p53")
      (:left "that this phosphorylation"
       :right "leads to its increased translocation to the cytosol/nucleus")
      (:left "RAS"
       :right "can activate p53 pro-apoptotic functions")
      (:left "how RAS"
       :right "could affect ASPP2")
      (:left "the RAS-ASPP interaction"
       :right "enhances the transcription function of p53 in cancer cells")
      (:left "RAS activation"
       :right "may regulate ASPP2 phosphorylation")
      (:left "One of the most studied downstream pathways of RAS signalling"
       :right "is the Raf-MAPK pathway")
      (:left "RAS"
       :right "is upstream of several signalling cascades")
      (:left "oncogenic RAS"
       :right "can enhance the apoptotic function of p53 via ASPP1 and ASPP2")
      (:left "our work"
       :right "establishes an entirely new mode of Ras activation")
      (:left "this outcome"
       :right "was specific to monoubiquitination at position 147")
      (:left "our kinetic modeling"
       :right "suggests that the GAP defect will dominate")
      (:left "monoubiquitination"
       :right "abrogates GAP–mediated GTP hydrolysis")
      (:left "Ubiquitin"
       :right "dynamically samples a broad surface area of Ras that alters switch region dynamics")
      (:left "monoubiquitination"
       :right "did not alter the intrinsic activity of Ras")
      (:left "This chemical ligation strategy"
       :right "will likely be useful for the study of other monoubiquitinated proteins")
      (:left "monoubiquitination"
       :right "decreases the sensitivity of Ras to GAP–mediated hydrolysis")
      (:left "recently that monoubiquitination"
       :right "increases the proportion of Ras that is in the activated (GTP–bound) state")
      (:left "that monoubiquitination"
       :right "enhances association with the downstream effectors")
      (:left "that mutation of the primary site of monoubiquitination"
       :right "impairs oncogenic Ras–mediated tumorigenesis")
      (:left "These data"
       :right "support our in vitro findings that monoubiquitination increases the population")
      (:left "monoubiquitination"
       :right "increases the population")
      (:left "Monoubiquitinated K–Ras"
       :right "is less sensitive than the unmodified protein to GAP–mediated GTP hydrolysis")
      (:left "These results"
       :right "indicate that variations in the linker length on this scale (1–2 bonds) do not influence the sensitivity of mUbRas to GAP downregulation")
      (:left "variations in the linker length on this scale (1–2 bonds)"
       :right "do not influence the sensitivity of mUbRas to GAP downregulation")
      (:left "the response of Ras ligated to Ubiquitin C77"
       :right "was identical to Ras ligated to Ubiquitin G76C")
      (:left "the response of Ras ligated to Ubiquitin C77"
       :right "was identical to Ras")
      (:left "the effects of monoubiquitination on Ras"
       :right "are not isoform–specific")
      (:left "mUbRas"
       :right "is insensitive to GAP–mediated regulation")
      (:left "these results"
       :right "provide new insights into resistance mechanisms involving the MAPK pathway")
      (:left "high-throughput functional screens"
       :right "may inform the development")
      (:left "COT expression"
       :right "is associated with de novo resistance in BRAFV600E cultured cell lines and acquired resistance in melanoma cells")
      (:left "COT expression"
       :right "is associated with de novo resistance in BRAFV600E cultured cell lines")
      (:left "alternative ‘druggable’ targets"
       :right "may inform effective long-term treatment strategies [12]")
      (:left "Pre-clinical studies"
       :right "have demonstrated that the B-RAFV600E mutation predicts a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5]")
      (:left "the B-RAFV600E mutation"
       :right "predicts a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5]")
      (:left "COT expression"
       :right "may potentiate ERK activation in a MEK-independent manner")
      (:left "COT expression"
       :right "alone was sufficient to induce this phenotype (Fig. 4c, 4d, Supplementary Fig. 17)")
      (:left "both cell lines"
       :right "were refractory to MEK inhibition (Fig. 4a)")
      (:left "COT-expressing cancer cells"
       :right "remain sensitive to MAPK pathway inhibition at a target downstream of COT or RAF")
      (:left "ectopic expression of a high-activity C-RAF truncation mutant (C-RAF W22)"
       :right "was more effective than wild-type C-RAF  in mediating PLX4720 resistance and ERK activation (Supplementary Fig. 10)")
      (:left "ectopic expression of a high-activity C-RAF truncation mutant (C-RAF W22)"
       :right "was more effective than wild-type C-RAF  in mediating PLX4720 resistance")
      (:left "further indicating that elevated C-RAF activity"
       :right "may direct resistance to this agent")
      (:left "its PLX4720 resistance phenotype"
       :right "was associated with sustained MEK/ERK activation (Fig. 2a, Supplementary Fig. 9)")
      (:left "endogenous C-RAF:B-RAF heterodimers"
       :right "were measurable and inducible following treatment with PLX4720 (Supplementary Fig. 9)")
      (:left "Several groups"
       :right "have shown that C-RAF activation and heterodimerization with B-RAF constitute critical components of the cellular response to B-RAF inhibition")
      (:left "C-RAF activation and heterodimerization with B-RAF"
       :right "constitute critical components of the cellular response to B-RAF inhibition")
      (:left "a subset (3)"
       :right "did not show persistent ERK/MEK phosphorylation following RAF inhibition")
      (:left "overexpression of these genes"
       :right "was sufficient to activate the MAPK pathway")
      (:left "whose function"
       :right "is to enhance CRAF activation")
      (:left "growth-factor activated RAS"
       :right "induces BRAF binding to CRAF")
      (:left "BRAF inhibitors"
       :right "hyperactivate CRAF and MEK in these cells")
      (:left "oncogenic RAS"
       :right "requires CRAF but not BRAF")
      (:left "Sorafenib"
       :right "is a class II (inactive conformation binder) drug (Wan et al., 2004)  that inhibits V600EBRAF at 40 nM")
      (:left "All these"
       :right "demonstrate that ASPP2 is a novel substrate of MAPK")
      (:left "The phospho-specific antibody for ASPP2"
       :right "is specific")
      (:left "ASPP2 phosphorylation"
       :right "was rapid")
      (:left "EGF stimulation       phosphorylated ASPP2"
       :right "was barely detectable")
      (:left "Figure 1C"
       :right "shows that the phospho-specific antibody is specific for       the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "the phospho-specific antibody"
       :right "is specific for       the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "Figure 1C"
       :right "shows that the phospho-specific antibody is specific for       the ASPP2 fragment")
      (:left "the phospho-specific antibody"
       :right "is specific for       the ASPP2 fragment")
      (:left "BiFC"
       :right "traps this form of Ras resulting in greater fluorescence       complementation for Ras17N (and Ras17N/69N)")
      (:left "current methods"
       :right "do not allow for detection of nucleotide-free       GTPases in vivo")
      (:left "our BiFC results"
       :right "provide additional support for our model")
      (:left "These data"
       :right "suggest that PI3KC2β binding to nucleotide-free Ras in vivo      may prevent loading of nucleotides onto Ras")
      (:left "PI3KC2β binding to nucleotide-free Ras in vivo"
       :right "may prevent loading of nucleotides onto Ras")
      (:left "the PI3KC2β RBD-Ras complex"
       :right "is stable even       in the presence of high concentrations of GTP or GDP")
      (:left "the RBD of PI3KC2β"
       :right "binds nucleotide-free Ras       in vitro (Fig. 5)")
      (:left "our results"
       :right "provide the first direct evidence for a protein that       may stabilize nucleotide-free Ras in vivo")
      (:left "Ras, like all GTPases,"
       :right "cycles between an inactive GDP-bound state and       an active GTP-bound state")))

(define-rule-record  ; #<PSR-874 s → {pronoun vg+ed}>
  :form (vg+ed (pronoun vg+ed))
  :count 3
  :function assimilate-subject-to-vp-ed
  :contexts
     ((:left "we"
       :right "observed")
      (:left "we"
       :right "used")))

(define-rule-record  ; #<PSR-790 s → {pronoun vg+passive}>
  :form (vg+passive (pronoun vg+passive))
  :count 1
  :function assimilate-subject
  :contexts
     ((:left "it"
       :right "is inhibited")))

(define-rule-record  ; #<PSR-788 s → {pronoun vg}>
  :form (vg (pronoun vg))
  :count 8
  :function assimilate-subject
  :contexts
     ((:left "It"
       :right "can do so")
      (:left "it"
       :right "seems")
      (:left "we"
       :right "posit")
      (:left "We"
       :right "propose")
      (:left "it"
       :right "escapes")
      (:left "We"
       :right "posit")
      (:left "we"
       :right "describe")
      (:left "we"
       :right "show")))

(define-rule-record  ; #<PSR-789 s → {pronoun vp+passive}>
  :form (vp+passive (pronoun vp+passive))
  :count 5
  :function assimilate-subject
  :contexts
     ((:left "it"
       :right "is sustained over time")
      (:left "It"
       :right "has recently been shown that activation of RAS results in ASPP2 translocation from the plasma membrane to the cytosol and nucleus [2]")
      (:left "It"
       :right "has recently been shown that oncogenic RAS can enhance the apoptotic function of p53 via ASPP1 and ASPP2")
      (:left "It"
       :right "was established recently that monoubiquitination increases the proportion of Ras that is in the activated (GTP–bound) state")))

(define-rule-record  ; #<PSR-791 s → {pronoun vp+past}>
  :form (vp+past (pronoun vp+past))
  :count 28
  :function assimilate-subject
  :contexts
     ((:left "we"
       :right "observed an increase in the amount of p53 co-immunoprecipitated with transfected V5-tagged wild-type ASPP2 (Figure 4B, compare lanes 4 and 5)")
      (:left "we"
       :right "observed an increase in the amount of p53")
      (:left "we"
       :right "tested whether the p53 binding ability of ASPP2 phosphorylation mutant would be influenced by RAS activation")
      (:left "we"
       :right "investigated whether RAS/MAPK pathway activation could result in the increased protein stability of ASPP2")
      (:left "we"
       :right "observed two conserved putative MAPK phosphorylation sites in ASPP1 and ASPP2")
      (:left "we"
       :right "queried whether the activity of ASPP2 is regulated by the activation of a RAS-mediated signalling pathway")
      (:left "We"
       :right "immunoprecipitated Ras from HEK293T cells")
      (:left "we"
       :right "measured the sensitivity of mUbRas to GAP–mediated hydrolysis in a cellular reconstitution system")
      (:left "We"
       :right "measured the rate of GAP–mediated GTP hydrolysis")
      (:left "we"
       :right "placed an additional cysteine at the c–terminus of Ubiquitin (Ubiquitin C77)")
      (:left "We"
       :right "obtained similar results")
      (:left "we"
       :right "observed an order of magnitude increase in the rate of GTP hydrolysis for unmodified Ras relative to the intrinsic rate of GTP hydrolysis")
      (:left "we"
       :right "compared the rate of GTP hydrolysis for Ras and mUbRas in the presence of the catalytic domains of two GAPs, NF1 (NF1 333) and p120GAP(GAP–334)")
      (:left "We"
       :right "next considered the effect of Ras monoubiquitination on GAP–mediated hydrolysis")
      (:left "We"
       :right "identified MAP3K8 (COT/TPL2) as a MAPK pathway agonist that drives resistance to RAF inhibition in BRAFV600E cell lines")
      (:left "we"
       :right "expressed ~600 kinase")
      (:left "we"
       :right "performed an in vitro kinase assay using recombinant COT and ERK1")
      (:left "we"
       :right "queried the OUMS-23 and RPMI-7951 cell lines")
      (:left "we"
       :right "hypothesized that COT and C-RAF drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling")
      (:left "we"
       :right "tested whether overexpression of these genes was sufficient to activate the MAPK pathway")
      (:left "we"
       :right "studied the underlying mechanism(s)")
      (:left "We"
       :right "previously reported that oncogenic RAS requires CRAF but not BRAF to activate MEK (Dumaz et al., 2006)")
      (:left "We"
       :right "also tested the drugs in D04, MM415, MM485, and WM852 NRAS mutant cells (Table S2)")
      (:left "we"
       :right "also used the potent and selective MEK inhibitor PD184352 (Sebolt-Leopold et al., 1999)")
      (:left "We"
       :right "selected four drugs for our studies (Figures S1A–S1D)")))

(define-rule-record  ; #<PSR-787 s → {pronoun vp}>
  :form (vp (pronoun vp))
  :count 44
  :function assimilate-subject
  :contexts
     ((:left "It"
       :right "does with high probability")
      (:left "we"
       :right "increase the binding rate of MAPK1 and DUSP6 by 10 fold")
      (:left "it"
       :right "is unchanged")
      (:left "we"
       :right "double the amount of DUSP6")
      (:left "It"
       :right "is sometimes transient")
      (:left "I"
       :right "can give a more precise answer later")
      (:left "It"
       :right "is mostly transient")
      (:left "It"
       :right "is only sometimes transient")
      (:left "It"
       :right "is transient with a high probability")
      (:left "it"
       :right "is transient")
      (:left "it"
       :right "is not transient")
      (:left "it"
       :right "is transient in time")
      (:left "we"
       :right "increase the binding rate of NRAS and BRAF")
      (:left "we"
       :right "double the amount of BRAF")
      (:left "We"
       :right "have used a mouse embryo fibroblast ERK1-knock-out cell line expressing green fluorescent protein (GFP)-tagged ERK1")
      (:left "We"
       :right "have used a mouse embryo fibroblast ERK1-knock-out cell line")
      (:left "it"
       :right "would be unable to bind to ASPP2")
      (:left "it"
       :right "binds ASPP2")
      (:left "it"
       :right "can cooperate with p53 to suppress tumour growth in vivo")
      (:left "it"
       :right "was unable to increase the activity of mutant ASPP2 (S827A)")
      (:left "We"
       :right "show here that ASPP2")
      (:left "we"
       :right "show that monoubiquitination decreases the sensitivity of Ras to GAP–mediated hydrolysis")
      (:left "We"
       :right "further identify combinatorial MAPK pathway inhibition")
      (:left "We"
       :right "do not know the stoichiometry of the components in these complexes")
      (:left "it"
       :right "acts as a scaffold")
      (:left "it"
       :right "forms a stable complex with CRAF")
      (:left "We"
       :right "are currently using mass-spectrometry and mutagenic approaches to elucidate the underlying mechanism")
      (:left "we"
       :right "propose the following mechanism by which this occurs")
      (:left "we"
       :right "show that 885-A activated CRAF in these cells (Figure 1D)")
      (:left "It"
       :right "inhibits V600EBRAF at 2 nM (Figure S1E)")
      (:left "It"
       :right "is the least-selective drug that we used")
      (:left "We"
       :right "demonstrate that the RBD of PI3KC2β binds nucleotide-free Ras       in vitro (Fig. 5)")))

(define-rule-record  ; #<PSR-897 s → {proper-noun verb+ed}>
  :form (verb+ed (proper-noun verb+ed))
  :count 4
  :function assimilate-subject-to-vp-ed
  :contexts
     ((:left "p53"
       :right "mediated")
      (:left "COT"
       :right "induced")
      (:left "growth-factor"
       :right "activated")))

(define-rule-record  ; #<PSR-832 s → {proper-noun vg+passive}>
  :form (vg+passive (proper-noun vg+passive))
  :count 1
  :function assimilate-subject
  :contexts
     ((:left "BRAF"
       :right "is  inhibited")))

(define-rule-record  ; #<PSR-831 s → {proper-noun vp+passive}>
  :form (vp+passive (proper-noun vp+passive))
  :count 4
  :function assimilate-subject
  :contexts
     ((:left "ASPP2"
       :right "is involved in both senescence in fibroblasts and apoptosis in cancer cells [2,10]")
      (:left "ASPP2"
       :right "is involved in both senescence in fibroblasts")
      (:left "ASPP2"
       :right "can be phosphorylated at serine 827 by MAPK1 in vitro")))

(define-rule-record  ; #<PSR-833 s → {proper-noun vp+past}>
  :form (vp+past (proper-noun vp+past))
  :count 4
  :function assimilate-subject
  :contexts
     ((:left "Raf CAAX"
       :right "had little effect on p53 in its absence (Figure 2A)")
      (:left "885-A"
       :right "activated CRAF in these cells (Figure 1D)")
      (:left "PLX4720 and 885-A"
       :right "caused an unexpected increase in ERK activity in the NRAS mutant cells (Figure 1A)")
      (:left "PD184352 and sorafenib"
       :right "inhibited ERK in all of these lines (Figure 1A)")))

(define-rule-record  ; #<PSR-829 s → {proper-noun vp}>
  :form (vp (proper-noun vp))
  :count 36
  :function assimilate-subject
  :contexts
     ((:left "ASPP2"
       :right "binds active RAS at the plasma membrane")
      (:left "ASPP2"
       :right "would bind active RAS")
      (:left "ASPP2"
       :right "will also continue to bind active RAS")
      (:left "ASPP2"
       :right "is both upstream of RAS")
      (:left "ASPP2"
       :right "can potentiate RAS signaling by binding directly via the ASPP2 N- terminus [2,6]")
      (:left "ASPP2"
       :right "acts at several steps in promoting senescence in fibroblasts")
      (:left "ASPP2"
       :right "is a haploinsufficient tumor suppressor [15]")
      (:left "ASPP2 (S827A)"
       :right "remains at the plasma membrane following RAS activation by 4-OHT in the HKe3 ER:HRASV12 system (Figure 4A)")
      (:left "ASPP2"
       :right "was a bit more stable")
      (:left "Raf CAAX"
       :right "increases Bax-luciferase levels by 2.5 fold")
      (:left "MAPK1"
       :right "was clearly able to phosphorylate the ASPP2 fragment in vitro (Figure 1B, left and middle panels)")
      (:left "ASPP2"
       :right "can potentiate RAS signaling by binding directly via the ASPP2 N-terminus")
      (:left "p38 SAPK"
       :right "was active")
      (:left "p38 SAPK"
       :right "is not an efficient kinase for ASPP2 phosphorylation")
      (:left "MAPK1"
       :right "was clearly able to phosphorylate the ASPP2 fragment in vitro")
      (:left "ASPP1 and ASPP2"
       :right "bind RAS-GTP")
      (:left "COT"
       :right "activates ERK primarily through MEK-dependent mechanisms that do not require RAF signaling")
      (:left "COT"
       :right "may activate ERK through MEK-independent and MEK-dependent mechanisms")
      (:left "COT and C-RAF"
       :right "drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling")
      (:left "BRAF and CRAF"
       :right "must both bind to RAS")
      (:left "BRAF"
       :right "does not directly phosphorylate MEK")
      (:left "BRAF"
       :right "maintains itself")
      (:left "BRAF"
       :right "is not active")
      (:left "BRAF"
       :right "is inactive in NRAS mutant cells (Figure 1E)")
      (:left "885-A (Figure S1C)"
       :right "is a close analog of the class I inhibitor SB590885 (King et al., 2006) that is also highly selective for BRAF")
      (:left "PLX4720"
       :right "is a class I (active conformation binder) inhibitor that is highly selective")
      (:left "ASPP2"
       :right "is a novel substrate of MAPK")
      (:left "PI3KC2β"
       :right "preferentially interacts with Ras17N, which has")
      (:left "PI3KC2β"
       :right "preferentially interacts with Ras17N")))

(define-rule-record  ; #<PSR-518 s → {s pp}>
  :form (s (s pp))
  :count 8
  :function clause+pp
  :contexts
     ((:left "Is the amount of MAP2K1­MAPK1 complex higher"
       :right "at 1 hour")
      (:left "Phosphorylated endogenous ASPP2 was detected by the phospho-specific antibody 30 minutes"
       :right "after RAS stimulation (Figure 1D)")
      (:left "Phosphorylated endogenous ASPP2 was detected"
       :right "by the phospho-specific antibody 30 minutes")
      (:left "We further identify combinatorial MAPK pathway inhibition or targeting of COT kinase activity"
       :right "as possible therapeutic strategies for reducing MAPK pathway activation in this setting")
      (:left "Phosphorylated endogenous ASPP2 was detected by the phospho-specific antibody       30 minutes"
       :right "after RAS stimulation (Figure 1D)")
      (:left "Phosphorylated endogenous ASPP2 was detected"
       :right "by the phospho-specific antibody       30 minutes")))

(define-rule-record  ; #<PSR-519 s → {s than-np}>
  :form (s (s than-np))
  :count 1
  :function make-comparative-adjp-with-np
  :contexts
     ((:left "Is the amount of MAP2K1­MAPK1 complex higher at 1 hour"
       :right "than the amount of MAPK1­DUSP6 complex")))

(define-rule-record  ; #<PSR-1039 s → {s thatcomp}>
  :form (s (s thatcomp))
  :count 2
  :function assimilate-thatcomp
  :contexts
     ((:left "Critically, we posit"
       :right "that because it is inhibited, BRAF does not directly phosphorylate MEK")
      (:left "We posit"
       :right "that in RAS mutant cells, BRAF maintains itself")))

(define-rule-record  ; #<PSR-1036 s → {s to-comp}>
  :form (s (s to-comp))
  :count 13
  :function interpret-to-comp-adjunct-to-s
  :contexts
     ((:left "We have used a mouse embryo fibroblast ERK1-knock-out cell line expressing green fluorescent protein (GFP)-tagged ERK1"
       :right "to probe the spatio-temporal regulation of ERK1")
      (:left "mutated RAS signals to p53 via ASPP2"
       :right "to induce apoptosis instead of uncontrolled proliferation")
      (:left "mutated RAS signals to p53 via ASPP2"
       :right "to induce apoptosis")
      (:left "This in turn activates ASPP2 via MAPK phosphorylation which will translocate and activate p53"
       :right "to promote apoptosis")
      (:left "Saos2 cells were grown in low serum for 50 hours"
       :right "to remove all background stimulation of RAS")
      (:left "Mechanistically ASPP1 and ASPP2 bind RAS-GTP and potentiates RAS signalling"
       :right "to enhance p53 mediated apoptosis [2]")
      (:left "how RAS could affect ASPP2"
       :right "to enhance p53 function")
      (:left "Mechanistically ASPP1 and ASPP2 bind RAS-GTP and potentiates RAS signalling"
       :right "to enhance p53 mediated apoptosis")
      (:left "genetic alterations that engender C-RAF activation (e.g., oncogenic RAS mutations) tend"
       :right "to show  mutual exclusivity with B-RAFV600E mutation")
      (:left "oncogenic RAS requires CRAF but not BRAF"
       :right "to activate MEK (Dumaz et al., 2006)")
      (:left "Saos2 cells were grown in low serum for 50 hours"
       :right "to remove all background       stimulation of RAS")))

(define-rule-record  ; #<PSR-878 s → {vp+ing vp+ed}>
  :form (vp+ed (vp+ing vp+ed))
  :count 2
  :function assimilate-subject-to-vp-ed
  :contexts
     ((:left "Inhibiting MAPK"
       :right "resulted in a significant decrease in the ability of ASPP2 to enhance the transcriptional activity of p53 compared to the control cells (Figure 3C)")
      (:left "Inhibiting MAPK"
       :right "resulted in a significant decrease in the ability of ASPP2 to enhance the transcriptional activity of p53")))

(define-rule-record  ; #<PSR-778 s → {wh-pronoun vp+ed}>
  :form (vp+ed (wh-pronoun vp+ed))
  :count 2
  :function assimilate-subject
  :contexts
     ((:left "When"
       :right "compared to p38 SAPK")))

(define-rule-record  ; #<PSR-1528 sequence-selector → ordinal number>
  :form (sequence-selector (ordinal number))
  :count 1
  :function nil
  :contexts
     ((:left "first"
       :right "2")))

(define-rule-record  ; #<PSR-1523 specifier → {det specifier}>
  :form (specifier (det specifier))
  :count 1
  :function determiner-noun
  :contexts
     ((:left "the"
       :right "first 2")))

(define-rule-record  ; #<PSR-786 subordinate-clause → {demonstrative subordinate-clause}>
  :form (subordinate-clause (demonstrative subordinate-clause))
  :count 1
  :function assimilate-subject-to-subordinate-clause
  :contexts
     ((:left "that"
       :right "then keeps it")))

(define-rule-record  ; #<PSR-1193 subordinate-clause → {modal subordinate-clause}>
  :form (subordinate-clause (modal subordinate-clause))
  :count 2
  :function absorb-auxiliary
  :contexts
     ((:left "can"
       :right "then relocate to the nucleus")
      (:left "would"
       :right "therefore be unable to amplify the RAS signal to p53")))

(define-rule-record  ; #<PSR-772 subordinate-clause → {np subordinate-clause}>
  :form (subordinate-clause (np subordinate-clause))
  :count 2
  :function assimilate-subject-to-subordinate-clause
  :contexts
     ((:left "The novel RAS/Raf/MAPK/ASPP2 pathway"
       :right "is thus involved in an important feedback loop between RAS and p53")
      (:left "These data"
       :right "therefore present an intriguing paradox")))

(define-rule-record  ; #<PSR-793 subordinate-clause → {pronoun subordinate-clause}>
  :form (subordinate-clause (pronoun subordinate-clause))
  :count 6
  :function assimilate-subject-to-subordinate-clause
  :contexts
     ((:left "We"
       :right "therefore tested whether MAPK phosphorylation at Ser827 could affect the cellular localization of ASPP2")
      (:left "we"
       :right "thus tested whether activation of Raf/MAPK pathway is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "we"
       :right "thus tested whether activation of Raf/MAPK pathway is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX)")
      (:left "We"
       :right "thus tested whether RAS activation may regulate ASPP2 phosphorylation")
      (:left "We"
       :right "then considered whether COT-expressing cancer cells remain sensitive to MAPK pathway inhibition at a target downstream of COT or RAF")))

(define-rule-record  ; #<PSR-1197 subordinate-clause → {subordinate-conjunction subordinate-clause}>
  :form (subordinate-clause (subordinate-conjunction subordinate-clause))
  :count 2
  :function make-subordinate-clause
  :contexts
     ((:left "However,"
       :right "once RAS reverts to its inactive state")
      (:left "but"
       :right "since BRAF and CRAF must both bind to RAS")))

(define-rule-record  ; #<PSR-1200 subordinate-clause → {subordinate-conjunction subordinate-s}>
  :form (subordinate-s (subordinate-conjunction subordinate-s))
  :count 2
  :function make-subordinate-clause
  :contexts
     ((:left "However,"
       :right "whereas activated Raf CAAX was able to stimulate wild-type ASPP2 and ASPP2 (S698A) by 2.5 fold")
      (:left "Thus,"
       :right "although genetic alterations that engender C-RAF activation (e.g., oncogenic RAS mutations) tend to show  mutual exclusivity with B-RAFV600E mutation")))

(define-rule-record  ; #<PSR-1203 subordinate-clause → {subordinate-conjunction s}>
  :form (s (subordinate-conjunction s))
  :count 49
  :function make-subordinate-clause
  :contexts
     ((:left "but"
       :right "I can give a more precise answer later")
      (:left "even if"
       :right "we increase the binding rate of NRAS and BRAF")
      (:left "until"
       :right "phosphorylated BRAF reaches a high value")
      (:left "but"
       :right "the mobility of the protein in the nucleus and cytoplasm remained unchanged")
      (:left "However,"
       :right "under normal conditions, growth factors or growth receptors would only activate RAS for short periods of time")
      (:left "Thus"
       :right "ASPP2 is both upstream of RAS")
      (:left "Moreover,"
       :right "the RAS-ASPP interaction enhances the transcription function of p53 in cancer cells [2]")
      (:left "As"
       :right "the translocation of wild-type ASPP2 from the plasma membrane to the cytosol and nucleus results in increased binding to p53 [2]")
      (:left "while"
       :right "in the presence of HRAS V12, ASPP2 protein levels remained high after CHX treatment")
      (:left "Thus"
       :right "we investigated whether RAS/MAPK pathway activation could result in the increased protein stability of ASPP2")
      (:left "while"
       :right "RAS/MAPK pathway activation resulted in the increased ASPP2 expression (Figure 1E; Figure S3C)")
      (:left "Moreover,"
       :right "another MAPK inhibitor, PD 98059, also inhibited ASPP2 function to a similar extent (Figure S2)")
      (:left "whereas"
       :right "activated Raf CAAX was able to stimulate wild-type ASPP2 and ASPP2 (S698A) by 2.5 fold")
      (:left "as"
       :right "Raf CAAX had little effect on p53 in its absence (Figure 2A)")
      (:left "as"
       :right "knockdown of ASPP2 resulted in a lack of detection of phospho-ASPP2")
      (:left "Moreover,"
       :right "with another different phospho-ASPP2 antibody, ES1, ASPP2 phosphorylation was also observed in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "As"
       :right "RAS is upstream of several signalling cascades [13]")
      (:left "although"
       :right "the underlying mechanism remains to be investigated")
      (:left "Moreover,"
       :right "the RAS-ASPP interaction enhances the transcription function of p53 in cancer cells")
      (:left "Hence"
       :right "ASPP2 can be phosphorylated at serine 827 by MAPK1 in vitro")
      (:left "while"
       :right "under the same conditions, ASPP2 (693-1128) fragment phosphorylated by p38 SAPK")
      (:left "As"
       :right "RAS is upstream of several signalling cascades")
      (:left "Thus"
       :right "our work establishes an entirely new mode of Ras activation")
      (:left "Furthermore,"
       :right "this outcome was specific to monoubiquitination at position 147")
      (:left "Therefore,"
       :right "mUbRas is insensitive to GAP–mediated regulation")
      (:left "To this end"
       :right "we compared the rate of GTP hydrolysis for Ras and mUbRas in the presence of the catalytic domains of two GAPs, NF1 (NF1 333) and p120GAP(GAP–334)")
      (:left "Moreover,"
       :right "COT expression is associated with de novo resistance in BRAFV600E cultured cell lines and acquired resistance in melanoma cells")
      (:left "Moreover,"
       :right "COT expression is associated with de novo resistance in BRAFV600E cultured cell lines")
      (:left "However,"
       :right "clinical responses to targeted anticancer therapeutics are frequently confounded by de novo or acquired resistance [9–11]")
      (:left "although"
       :right "genetic alterations that engender C-RAF activation (e.g., oncogenic RAS mutations) tend to show  mutual exclusivity with B-RAFV600E mutation")
      (:left "because"
       :right "it is inhibited")
      (:left "but rather"
       :right "it acts as a scaffold")
      (:left "Nevertheless,"
       :right "BRAF inhibitors hyperactivate CRAF and MEK in these cells")
      (:left "however,"
       :right "PLX4720 and 885-A caused an unexpected increase in ERK activity in the NRAS mutant cells (Figure 1A)")
      (:left "As expected,"
       :right "PD184352 and sorafenib inhibited ERK in all of these lines (Figure 1A)")
      (:left "As expected,"
       :right "all four drugs blocked ERK activity in BRAF mutant A375 melanoma cells (Figure 1A; see Table S2)")
      (:left "as"
       :right "knockdown of ASPP2       resulted in a lack of detection of phospho-ASPP2")
      (:left "Moreover,"
       :right "with another different phospho-ASPP2 antibody, ES1, ASPP2 phosphorylation       was also observed in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which       RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "As a result,"
       :right "BiFC traps this form of Ras resulting in greater fluorescence       complementation for Ras17N (and Ras17N/69N)")
      (:left "Although"
       :right "current methods do not allow for detection of nucleotide-free       GTPases in vivo")
      (:left "However,"
       :right "our results provide the first direct evidence for a protein that       may stabilize nucleotide-free Ras in vivo")))

(define-rule-record  ; #<PSR-1206 subordinate-clause → {subordinate-conjunction transitive-clause-without-object}>
  :form (transitive-clause-without-object
         (subordinate-conjunction transitive-clause-without-object))
  :count 5
  :function make-subordinate-clause
  :contexts
     ((:left "once"
       :right "RAS reverts to its inactive state")
      (:left "Moreover,"
       :right "ectopic expression of a high-activity C-RAF truncation mutant (C-RAF W22) was more effective than wild-type C-RAF  in mediating PLX4720 resistance and ERK activation (Supplementary Fig. 10)")
      (:left "Moreover,"
       :right "ectopic expression of a high-activity C-RAF truncation mutant (C-RAF W22) was more effective than wild-type C-RAF  in mediating PLX4720 resistance")
      (:left "whereas"
       :right "kinase-dead derivatives had")
      (:left "since"
       :right "BRAF and CRAF must both bind to RAS")))

(define-rule-record  ; #<PSR-1215 subordinate-clause → {subordinate-conjunction vp+ed}>
  :form (vp+ed (subordinate-conjunction vp+ed))
  :count 2
  :function make-subordinate-clause
  :contexts
     ((:left "but"
       :right "Controlled by the Rate of Phosphorylation")
      (:left "thus"
       :right "involved in an important feedback loop between RAS and p53")))

(define-rule-record  ; #<PSR-1212 subordinate-clause → {subordinate-conjunction vp+ing}>
  :form (vp+ing (subordinate-conjunction vp+ing))
  :count 5
  :function make-subordinate-clause
  :contexts
     ((:left "thereby"
       :right "increasing RAS signaling to its downstream pathway effectors Raf/MAPK")
      (:left "thereby"
       :right "eliminating the apoptotic stimulus")
      (:left "thereby"
       :right "propagating the pro-apoptotic signal from RAS to p53")
      (:left "thereby"
       :right "creating a linker one bond")
      (:left "thereby"
       :right "allowing CRAF to hyperactivate the pathway (Figure 7B)")))

(define-rule-record  ; #<PSR-1218 subordinate-clause → {subordinate-conjunction vp+past}>
  :form (vp+past (subordinate-conjunction vp+past))
  :count 6
  :function make-subordinate-clause
  :contexts
     ((:left "therefore"
       :right "tested whether MAPK phosphorylation at Ser827 could affect the cellular localization of ASPP2")
      (:left "thus"
       :right "tested whether activation of Raf/MAPK pathway is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "thus"
       :right "tested whether activation of Raf/MAPK pathway is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX)")
      (:left "thus"
       :right "tested whether RAS activation may regulate ASPP2 phosphorylation")
      (:left "then"
       :right "considered whether COT-expressing cancer cells remain sensitive to MAPK pathway inhibition at a target downstream of COT or RAF")))

(define-rule-record  ; #<PSR-1209 subordinate-clause → {subordinate-conjunction vp}>
  :form (vp (subordinate-conjunction vp))
  :count 8
  :function make-subordinate-clause
  :contexts
     ((:left "then"
       :right "drop to a low level")
      (:left "then"
       :right "relocate to the nucleus")
      (:left "therefore"
       :right "be unable to amplify the RAS signal to p53")
      (:left "as"
       :right "happens in natural growth conditions")
      (:left "then"
       :right "keeps it")
      (:left "therefore"
       :right "present an intriguing paradox")
      (:left "therefore"
       :right "should exist for longer periods in the nucleotide-free state")))

(define-rule-record  ; #<PSR-1194 subordinate-conjunction → subordinate-conjunction comma>
  :form (subordinate-conjunction (subordinate-conjunction ","))
  :count 28
  :function nil
  :contexts
     ((:left "Until now"
       :right ",")
      (:left "Furthermore"
       :right ",")
      (:left "Therefore"
       :right ",")
      (:left "e.g."
       :right ",")
      (:left "Thus"
       :right ",")
      (:left "Nevertheless"
       :right ",")
      (:left "however"
       :right ",")
      (:left "As expected"
       :right ",")
      (:left "Moreover"
       :right ",")
      (:left "As a result"
       :right ",")
      (:left "However"
       :right ",")))

(define-rule-record  ; #<PSR-1159 subordinate-s → {adverb subordinate-s}>
  :form (subordinate-s (adverb subordinate-s))
  :count 1
  :function interpret-adverb+verb
  :contexts
     ((:left "Surprisingly,"
       :right "however, PLX4720 and 885-A caused an unexpected increase in ERK activity in the NRAS mutant cells (Figure 1A)")))

(define-rule-record  ; #<PSR-1315 subordinate-s → {relative-subordinator s}>
  :form (s (relative-subordinator s))
  :count 3
  :function compose-relative-subordinator
  :contexts
     ((:left "after which"
       :right "the cells were stimulated with EGF")))

(define-rule-record  ; #<PSR-1312 subordinator → after which>
  :form (subordinator (after which))
  :count 3
  :function make-relative-subordinator
  :contexts
     ((:left "after"
       :right "which")))

(define-rule-record  ; #<PSR-1463 there-exists → syntactic-there be>
  :form (there-exists (syntactic-there be))
  :count 8
  :function make-there-exists
  :contexts
     ((:left "there"
       :right "isn’t")
      (:left "Is"
       :right "there")
      (:left "There"
       :right "is")
      (:left "there"
       :right "is")
      (:left "there"
       :right "are")))

(define-rule-record  ; #<PSR-657 to-comp → {adverb to-comp}>
  :form (to-comp (adverb to-comp))
  :count 2
  :function interpret-adverb+verb
  :contexts
     ((:left "consistently"
       :right "to be dimerization-deficient in vitro")
      (:left "likely"
       :right "to be mediated by ASPP2")))

(define-rule-record  ; #<PSR-914 to-comp → {infinitive np}>
  :form (infinitive (infinitive np))
  :count 50
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "to probe"
       :right "the spatio-temporal regulation of ERK1")
      (:left "to induce"
       :right "apoptosis in cancer cells with wild-type p53")
      (:left "to induce"
       :right "apoptosis instead of uncontrolled proliferation")
      (:left "to stimulate"
       :right "apoptosis")
      (:left "to have"
       :right "a fail-proof mechanism")
      (:left "to induce"
       :right "apoptosis")
      (:left "to amplify"
       :right "the RAS signal to p53")
      (:left "to bind"
       :right "active RAS")
      (:left "to promote"
       :right "apoptosis")
      (:left "to inhibit"
       :right "RAS-induced autophagy [10]")
      (:left "to suppress"
       :right "tumour growth in vivo")
      (:left "to enhance"
       :right "the transcriptional activity of p53 compared to the control cells (Figure 3C)")
      (:left "to enhance"
       :right "the transcriptional activity of p53")
      (:left "To determine"
       :right "the effect of MAPK phosphorylation on endogenous ASPP2 activity")
      (:left "to stimulate"
       :right "the full transcriptional activity of p53 via ASPP2")
      (:left "to stimulate"
       :right "wild-type ASPP2 and ASPP2 (S698A)")
      (:left "to enhance"
       :right "the transactivation function of p53 (Figure 3A)")
      (:left "To assess"
       :right "the effect of MAPK phosphorylation on ASPP2 activity")
      (:left "to regulate"
       :right "ASPP2 activity")
      (:left "to remove"
       :right "all background stimulation of RAS")
      (:left "to phosphorylate"
       :right "the ASPP2 fragment in vitro (Figure 1B, left and middle panels)")
      (:left "to enhance"
       :right "p53 mediated apoptosis [2]")
      (:left "to enhance"
       :right "p53 function")
      (:left "to phosphorylate"
       :right "the ASPP2 fragment in vitro")
      (:left "to enhance"
       :right "p53 mediated apoptosis")
      (:left "to bind"
       :right "regulators")
      (:left "to examine"
       :right "the effect of monoubiquitination on the interaction of Ras with its cognate GEF and GAPs, which also target the switch domains")
      (:left "to examine"
       :right "the effect of monoubiquitination on the interaction of Ras with its cognate GEF and GAPs")
      (:left "To validate"
       :right "the use of an in vitro system to dissect the mechanism of Ras regulation")
      (:left "to dissect"
       :right "the mechanism of Ras regulation")
      (:left "To test"
       :right "this hypothesis")
      (:left "to induce"
       :right "this phenotype (Fig. 4c, 4d, Supplementary Fig. 17)")
      (:left "to show"
       :right "mutual exclusivity with B-RAFV600E mutation")
      (:left "to activate"
       :right "the MAPK pathway")
      (:left "to stimulate"
       :right "formation of the complex (Figure 7B)")
      (:left "to enhance"
       :right "CRAF activation")
      (:left "to hyperactivate"
       :right "the pathway (Figure 7B)")
      (:left "to elucidate"
       :right "the underlying mechanism")
      (:left "to activate"
       :right "MEK (Dumaz et al., 2006)")
      (:left "to remove"
       :right "all background       stimulation of RAS")
      (:left "To test"
       :right "the efficacy of the purified phospho-specific antibody")
      (:left "to raise"
       :right "antibodies")
      (:left "to dissociate"
       :right "the GEF-Ras complex in vitro [31]")))

(define-rule-record  ; #<PSR-1006 to-comp → {infinitive pp}>
  :form (infinitive (infinitive pp))
  :count 1
  :function adjoin-pp-to-vg
  :contexts
     ((:left "to bind"
       :right "to ASPP2")))

(define-rule-record  ; #<PSR-954 to-comp → {infinitive proper-noun}>
  :form (infinitive (infinitive proper-noun))
  :count 1
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "to bind"
       :right "ATG5")))

(define-rule-record  ; #<PSR-1124 to-comp → {infinitive whethercomp}>
  :form (infinitive (infinitive whethercomp))
  :count 3
  :function assimilate-whethercomp
  :contexts
     ((:left "To test"
       :right "whether endogenous ASPP2 could be phosphorylated in cells")))

(define-rule-record  ; #<PSR-662 to-comp → {to-comp adverb}>
  :form (to-comp (to-comp adverb))
  :count 1
  :function interpret-adverb+verb
  :contexts
     ((:left "To test this hypothesis"
       :right "directly")))

(define-rule-record  ; #<PSR-1011 to-comp → {to-comp pp}>
  :form (to-comp (to-comp pp))
  :count 1
  :function adjoin-pp-to-vg
  :contexts
     ((:left "to stimulate wild-type ASPP2 and ASPP2 (S698A)"
       :right "by 2.5 fold")))

(define-rule-record  ; #<PSR-905 to-comp → {to-comp vp+ing}>
  :form (to-comp (to-comp vp+ing))
  :count 2
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "to regulate ASPP2 activity"
       :right "using a mutant form of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "to regulate ASPP2 activity"
       :right "using a mutant form of Raf (Raf CAAX)")))

(define-rule-record  ; #<PSR-540 vg → {adverb verb+present}>
  :form (verb+present (adverb verb+present))
  :count 5
  :function interpret-adverb+verb
  :contexts
     ((:left "in turn"
       :right "activates")
      (:left "dynamically"
       :right "samples")
      (:left "preferentially"
       :right "blocks")
      (:left "preferentially"
       :right "interacts")))

(define-rule-record  ; #<PSR-549 vg → {adverb verb}>
  :form (verb (adverb verb))
  :count 11
  :function interpret-adverb+verb
  :contexts
     ((:left "sometimes"
       :right "isn’t")
      (:left "ever"
       :right "reach")
      (:left "always"
       :right "remain")
      (:left "also"
       :right "continue")
      (:left "fully"
       :right "enhance")
      (:left "also"
       :right "target")
      (:left "likely"
       :right "be")
      (:left "easily"
       :right "generate")
      (:left "further"
       :right "identify")
      (:left "functionally"
       :right "interrogate")
      (:left "directly"
       :right "phosphorylate")))

(define-rule-record  ; #<PSR-553 vg → {approximator verb}>
  :form (verb (approximator verb))
  :count 1
  :function interpret-adverb+verb
  :contexts
     ((:left "only"
       :right "activate")))

(define-rule-record  ; #<PSR-1508 vg → {modal verb}>
  :form (verb (modal verb))
  :count 34
  :function absorb-auxiliary
  :contexts
     ((:left "can"
       :right "give")
      (:left "would"
       :right "lead")
      (:left "would"
       :right "bind")
      (:left "could"
       :right "hypothesize")
      (:left "will"
       :right "translocate and activate")
      (:left "can"
       :right "do")
      (:left "can"
       :right "cooperate")
      (:left "could"
       :right "result")
      (:left "can"
       :right "activate")
      (:left "could"
       :right "affect")
      (:left "can"
       :right "potentiate")
      (:left "may"
       :right "regulate")
      (:left "can"
       :right "enhance")
      (:left "will"
       :right "dominate")
      (:left "may"
       :right "inform")
      (:left "may"
       :right "potentiate")
      (:left "may"
       :right "activate")
      (:left "may"
       :right "direct")
      (:left "must both"
       :right "bind")
      (:left "should"
       :right "exist")
      (:left "may"
       :right "prevent")
      (:left "may"
       :right "stabilize")
      (:left "might"
       :right "stabilize")))

(define-rule-record  ; #<PSR-1509 vg → {modal vg}>
  :form (vg (modal vg))
  :count 2
  :function absorb-auxiliary
  :contexts
     ((:left "would"
       :right "only activate")
      (:left "will"
       :right "also continue")))

(define-rule-record  ; #<PSR-563 vg → {vg adverb}>
  :form (vg (vg adverb))
  :count 1
  :function interpret-adverb+verb
  :contexts
     ((:left "can do"
       :right "so")))

(define-rule-record  ; #<PSR-522 vg+ed → {adverb verb+ed}>
  :form (verb+ed (adverb verb+ed))
  :count 27
  :function interpret-adverb+verb
  :contexts
     ((:left "directly"
       :right "translated")
      (:left "fully"
       :right "understood")
      (:left "also"
       :right "down-regulated")
      (:left "considerably"
       :right "decreased")
      (:left "slightly"
       :right "decreased")
      (:left "also"
       :right "inhibited")
      (:left "recently"
       :right "shown")
      (:left "recently"
       :right "been")
      (:left "largely"
       :right "preserved")
      (:left "next"
       :right "considered")
      (:left "frequently"
       :right "confounded")
      (:left "modestly"
       :right "suppressed")
      (:left "alone"
       :right "was")
      (:left "also"
       :right "conferred")
      (:left "ectopically"
       :right "expressed")
      (:left "consequently"
       :right "elevated")
      (:left "previously"
       :right "reported")
      (:left "also"
       :right "tested")
      (:left "also"
       :right "used")
      (:left "also"
       :right "observed")
      (:left "constitutively"
       :right "activated")))

(define-rule-record  ; #<PSR-598 vg+ed → {approximator vg+ed}>
  :form (vg+ed (approximator vg+ed))
  :count 1
  :function interpret-adverb+verb
  :contexts
     ((:left "only"
       :right "modestly suppressed")))

(define-rule-record  ; #<PSR-1364 vg+ed → {superlative verb+ed}>
  :form (verb+ed (superlative verb+ed))
  :count 3
  :function nil
  :contexts
     ((:left "most"
       :right "studied")))

(define-rule-record  ; #<PSR-531 vg+ing → {adverb verb+ing}>
  :form (verb+ing (adverb verb+ing))
  :count 3
  :function interpret-adverb+verb
  :contexts
     ((:left "further"
       :right "validating")
      (:left "further"
       :right "indicating")
      (:left "currently"
       :right "using")))

(define-rule-record  ; #<PSR-1511 vg+passive → {modal vg+passive}>
  :form (vg+passive (modal vg+passive))
  :count 11
  :function absorb-auxiliary
  :contexts
     ((:left "would"
       :right "be influenced")
      (:left "may"
       :right "be mediated")
      (:left "might"
       :right "be favored")
      (:left "can"
       :right "be phosphorylated")
      (:left "could"
       :right "be phosphorylated")))

(define-rule-record  ; #<PSR-911 vp → {vg np}>
  :form (vg (vg np))
  :count 142
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "now have"
       :right "a peak")
      (:left "increase"
       :right "the binding rate of MAPK1 and DUSP6")
      (:left "double"
       :right "the amount of DUSP6")
      (:left "can give"
       :right "a more precise answer")
      (:left "increase"
       :right "the binding rate of NRAS and BRAF")
      (:left "double"
       :right "the amount of BRAF")
      (:left "Decrease"
       :right "the catalysis rate of MAP2K1 phosphorylation")
      (:left "Increase"
       :right "the binding rate of NRAS and BRAF")
      (:left "Increase"
       :right "the dissociation rate of NRAS and BRAF")
      (:left "Decrease"
       :right "the binding rate of NRAS and BRAF")
      (:left "Set"
       :right "the total amount of BRAF")
      (:left "Double"
       :right "the amount of total BRAF")
      (:left "have"
       :right "a maximum")
      (:left "follow"
       :right "phosphorylated BRAF reaching a high value")
      (:left "precede"
       :right "phosphorylated MAP2K1 reaching a high level")
      (:left "reaches"
       :right "a high value")
      (:left "any time reach"
       :right "a low value")
      (:left "some time reach"
       :right "a low value")
      (:left "ever reach"
       :right "a high value")
      (:left "reach"
       :right "a high level")
      (:left "is"
       :right "a consequence of delayed phosphorylation of ERK by MEK")
      (:left "did not detect"
       :right "dimerization")
      (:left "have used"
       :right "a mouse embryo fibroblast ERK1-knock-out cell line expressing green fluorescent protein (GFP)-tagged ERK1")
      (:left "have used"
       :right "a mouse embryo fibroblast ERK1-knock-out cell line")
      (:left "regulate"
       :right "ERK nuclear translocation")
      (:left "phosphorylates"
       :right "ASPP2 which can then relocate to the nucleus")
      (:left "activate"
       :right "p53 pro-apoptotic signaling")
      (:left "binds"
       :right "active RAS at the plasma membrane")
      (:left "summarizes"
       :right "the inter-regulation between ASPP2 and RAS")
      (:left "enhances"
       :right "the binding of wild-type ASPP2 but not ASPP2 (S827A) to p53")
      (:left "indicate"
       :right "cell membrane")
      (:left "indicate"
       :right "cytosol")
      (:left "induces"
       :right "cytoplasmic and nuclear translocation of wild-type ASPP2 but not ASPP2 (S827A) in HKe3 ER:HRAS12 cells")
      (:left "is"
       :right "an effective way for mutant RAS to induce apoptosis in cancer cells with wild-type p53")
      (:left "would only activate"
       :right "RAS")
      (:left "allows"
       :right "the cell")
      (:left "reach"
       :right "a threshold of signaling high enough to result in p53-dependent apoptosis")
      (:left "would bind"
       :right "active RAS")
      (:left "potentiate"
       :right "its downstream pathways")
      (:left "is"
       :right "both upstream of RAS")
      (:left "can activate"
       :right "p53 pro-apoptotic functions (Figure 5)")
      (:left "enhances"
       :right "the transcription function of p53 in cancer cells [2]")
      (:left "can potentiate"
       :right "RAS signaling by binding directly via the ASPP2 N- terminus [2,6]")
      (:left "is"
       :right "a haploinsufficient tumor suppressor [15]")
      (:left "fully enhance"
       :right "p53 pro-apoptotic activity")
      (:left "could affect"
       :right "the cellular localization of ASPP2")
      (:left "increase"
       :right "the activity of mutant ASPP2 (S827A)")
      (:left "activate"
       :right "ASPP2 and p53 transactivation activity to a similar extent")
      (:left "increases"
       :right "Bax-luciferase levels")
      (:left "is"
       :right "a substrate of MAPK")
      (:left "is"
       :right "the Raf/MAPK pathway [13]")
      (:left "Activates"
       :right "the Pro-Apoptotic Function of ASPP2")
      (:left "stabilizes"
       :right "ASPP2 protein")
      (:left "show"
       :right "here that ASPP2")
      (:left "can activate"
       :right "p53 pro-apoptotic functions")
      (:left "enhances"
       :right "the transcription function of p53 in cancer cells")
      (:left "can potentiate"
       :right "RAS signaling by binding directly via the ASPP2 N-terminus")
      (:left "is"
       :right "not an efficient kinase for ASPP2 phosphorylation")
      (:left "may regulate"
       :right "ASPP2 phosphorylation")
      (:left "is"
       :right "the Raf-MAPK pathway")
      (:left "bind"
       :right "RAS-GTP")
      (:left "potentiates"
       :right "RAS signalling")
      (:left "can enhance"
       :right "the apoptotic function of p53 via ASPP1 and ASPP2")
      (:left "establishes"
       :right "an entirely new mode of Ras activation")
      (:left "abrogates"
       :right "GAP–mediated GTP hydrolysis")
      (:left "also target"
       :right "the switch domains")
      (:left "dynamically samples"
       :right "a broad surface area of Ras that alters switch region dynamics")
      (:left "alters"
       :right "switch region dynamics")
      (:left "did not alter"
       :right "the intrinsic activity of Ras")
      (:left "easily generate"
       :right "mUbRas, modified at a single site")
      (:left "easily generate"
       :right "mUbRas")
      (:left "decreases"
       :right "the sensitivity of Ras to GAP–mediated hydrolysis")
      (:left "increases"
       :right "the proportion of Ras that is in the activated (GTP–bound) state")
      (:left "enhances"
       :right "association with the downstream effectors")
      (:left "impairs"
       :right "oncogenic Ras–mediated tumorigenesis")
      (:left "support"
       :right "our in vitro findings that monoubiquitination increases the population")
      (:left "increases"
       :right "the population")
      (:left "do not influence"
       :right "the sensitivity of mUbRas to GAP downregulation")
      (:left "do not alter"
       :right "GAP–responsiveness")
      (:left "provide"
       :right "new insights into resistance mechanisms involving the MAPK pathway")
      (:left "articulate"
       :right "an integrative approach through which high-throughput functional screens may inform the development of novel therapeutic strategies")
      (:left "may inform"
       :right "the development")
      (:left "further identify"
       :right "combinatorial MAPK pathway inhibition")
      (:left "activates"
       :right "ERK")
      (:left "do not require"
       :right "RAF signaling")
      (:left "drives"
       :right "resistance to RAF inhibition in BRAFV600E cell lines")
      (:left "functionally interrogate"
       :right "resistance to a selective RAF kinase inhibitor")
      (:left "may inform"
       :right "effective long-term treatment strategies [12]")
      (:left "predicts"
       :right "a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5]")
      (:left "may potentiate"
       :right "ERK activation in a MEK-independent manner")
      (:left "may activate"
       :right "ERK")
      (:left "engender"
       :right "C-RAF activation (e.g., oncogenic RAS mutations)")
      (:left "may direct"
       :right "resistance to this agent")
      (:left "constitute"
       :right "critical components of the cellular response to B-RAF inhibition")
      (:left "did not show"
       :right "persistent ERK/MEK phosphorylation following RAF inhibition")
      (:left "drive"
       :right "resistance to RAF inhibition predominantly through re-activation of MAPK signaling")
      (:left "do not know"
       :right "the stoichiometry of the components in these complexes")
      (:left "does not directly phosphorylate"
       :right "MEK")
      (:left "forms"
       :right "a stable complex with CRAF")
      (:left "are currently using"
       :right "mass-spectrometry and mutagenic approaches")
      (:left "is"
       :right "another paradigm of RAF activation downstream of RAS")
      (:left "propose"
       :right "the following mechanism")
      (:left "induces"
       :right "BRAF binding to CRAF")
      (:left "hyperactivate"
       :right "CRAF and MEK in these cells")
      (:left "present"
       :right "an intriguing paradox")
      (:left "requires"
       :right "CRAF but not BRAF")
      (:left "express"
       :right "mutant BRAF (Figure S1G)")
      (:left "see"
       :right "Table S2")
      (:left "preferentially blocks"
       :right "BRAF mutant cancer cell proliferation (Figure S1F)")
      (:left "is"
       :right "a close analog of the class I inhibitor SB590885 (King et al., 2006) that is also highly selective for BRAF")
      (:left "is"
       :right "a class I (active conformation binder) inhibitor that is highly selective")
      (:left "is"
       :right "the least-selective drug that we used")
      (:left "is"
       :right "a class II (inactive conformation binder) drug (Wan et al., 2004)  that inhibits V600EBRAF at 40 nM")
      (:left "is"
       :right "a novel substrate of MAPK")
      (:left "traps"
       :right "this form of Ras resulting in greater fluorescence       complementation for Ras17N (and Ras17N/69N)")
      (:left "provide"
       :right "additional support for our model")
      (:left "binds"
       :right "nucleotide-free Ras       in vitro (Fig. 5)")
      (:left "provide"
       :right "the first direct evidence for a protein that       may stabilize nucleotide-free Ras in vivo")
      (:left "may stabilize"
       :right "nucleotide-free Ras in vivo")
      (:left "might stabilize"
       :right "nucleotide-free Ras")
      (:left "prevent"
       :right "GTP loading")
      (:left "requires"
       :right "formation of       nucleotide-free Ras through the action of exchange factors")))

(define-rule-record  ; #<PSR-961 vp → {vg pp}>
  :form (vg (vg pp))
  :count 38
  :function adjoin-pp-to-vg
  :contexts
     ((:left "does"
       :right "with high probability")
      (:left "vanish"
       :right "at some time")
      (:left "behave"
       :right "like phosphorylated MAPK1")
      (:left "drop"
       :right "to a low level")
      (:left "demonstrate"
       :right "for the first time")
      (:left "translocate"
       :right "from the cytoplasm")
      (:left "relocate"
       :right "to the nucleus")
      (:left "translocates"
       :right "to the cytosol and nucleus")
      (:left "results"
       :right "in an increased interaction with p53")
      (:left "signals"
       :right "to p53")
      (:left "result"
       :right "in p53-dependent apoptosis")
      (:left "reverts"
       :right "to its inactive state")
      (:left "happens"
       :right "in natural growth conditions")
      (:left "would lead"
       :right "to increased binding to p53")
      (:left "leads"
       :right "to an amplified pro-apoptotic signal")
      (:left "acts"
       :right "at several steps in promoting senescence in fibroblasts")
      (:left "can cooperate"
       :right "with p53")
      (:left "results"
       :right "in increased binding to p53 [2]")
      (:left "remains"
       :right "at the plasma membrane")
      (:left "results"
       :right "in ASPP2 translocation from the plasma membrane to the cytosol and nucleus [2]")
      (:left "could result"
       :right "in the increased protein stability of ASPP2")
      (:left "leads"
       :right "to its increased translocation")
      (:left "is associated"
       :right "with de novo resistance in BRAFV600E cultured cell lines and acquired resistance in melanoma cells")
      (:left "is associated"
       :right "with de novo resistance in BRAFV600E cultured cell lines")
      (:left "was associated"
       :right "with sustained MEK/ERK activation (Fig. 2a, Supplementary Fig. 9)")
      (:left "must both bind"
       :right "to RAS")
      (:left "acts"
       :right "as a scaffold")
      (:left "preferentially interacts"
       :right "with Ras17N, which has")
      (:left "preferentially interacts"
       :right "with Ras17N")
      (:left "do not allow"
       :right "for detection of nucleotide-free       GTPases in vivo")
      (:left "cycles"
       :right "between an inactive GDP-bound state and       an active GTP-bound state")
      (:left "cycles"
       :right "between an inactive GDP-bound state")))

(define-rule-record  ; #<PSR-916 vp → {vg pronoun}>
  :form (vg (vg pronoun))
  :count 1
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "keeps"
       :right "it")))

(define-rule-record  ; #<PSR-951 vp → {vg proper-noun}>
  :form (vg (vg proper-noun))
  :count 9
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "in turn activates"
       :right "ASPP2")
      (:left "will translocate and activate"
       :right "p53")
      (:left "binds"
       :right "ASPP2")
      (:left "could affect"
       :right "ASPP2")
      (:left "inhibits"
       :right "V600EBRAF")))

(define-rule-record  ; #<PSR-921 vp → {vg reflexive/pronoun}>
  :form (vg (vg reflexive/pronoun))
  :count 1
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "maintains"
       :right "itself")))

(define-rule-record  ; #<PSR-1074 vp → {vg subj+verb}>
  :form (vg (vg subj+verb))
  :count 1
  :function assimilate-thatcomp
  :contexts
     ((:left "Assume"
       :right "there is")))

(define-rule-record  ; #<PSR-1073 vp → {vg s}>
  :form (vg (vg s))
  :count 1
  :function assimilate-thatcomp
  :contexts
     ((:left "elucidates"
       :right "alternative ‘druggable’ targets may inform effective long-term treatment strategies [12]")))

(define-rule-record  ; #<PSR-1071 vp → {vg thatcomp}>
  :form (vg (vg thatcomp))
  :count 28
  :function assimilate-thatcomp
  :contexts
     ((:left "indicate"
       :right "that the differential shuttling behavior of the mutant is a consequence of delayed phosphorylation of ERK by MEK")
      (:left "could hypothesize"
       :right "that ASPP2 would bind active RAS")
      (:left "others have recently shown"
       :right "that ASPP2 can potentiate RAS signaling by binding directly via the ASPP2 N- terminus [2,6]")
      (:left "illustrate"
       :right "that phosphorylation of ASPP2 at Ser827 by MAPK is necessary for its ASPP2 to fully enhance p53 pro-apoptotic activity")
      (:left "suggests"
       :right "that ASPP2 binding to RAS at the plasma membrane occurs")
      (:left "indicate"
       :right "that ASPP2 phosphorylation by RAS/MAPK is necessary for ASPP2 full pro-apoptotic activity")
      (:left "suggest"
       :right "that MAPK phosphorylation of ASPP2 Ser827 is necessary for Raf CAAX to stimulate the full transcriptional activity of p53 via ASPP2")
      (:left "suggests"
       :right "that the effect of activated RAS on ASPP2 and p53 is mediated via the downstream Raf /MAPK pathway")
      (:left "shows"
       :right "that the phospho- specific antibody is specific for the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "shows"
       :right "that the phospho- specific antibody is specific for the ASPP2 fragment")
      (:left "others have recently shown"
       :right "that ASPP2 can potentiate RAS signaling by binding directly via the ASPP2 N-terminus")
      (:left "suggests"
       :right "that the GAP defect will dominate")
      (:left "show"
       :right "that monoubiquitination decreases the sensitivity of Ras to GAP–mediated hydrolysis")
      (:left "indicate"
       :right "that variations in the linker length on this scale (1–2 bonds) do not influence the sensitivity of mUbRas to GAP downregulation")
      (:left "have demonstrated"
       :right "that the B-RAFV600E mutation predicts a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5]")
      (:left "have shown"
       :right "that C-RAF activation and heterodimerization with B-RAF constitute critical components of the cellular response to B-RAF inhibition")
      (:left "show"
       :right "that 885-A activated CRAF in these cells (Figure 1D)")
      (:left "demonstrate"
       :right "that ASPP2 is a novel substrate of MAPK")
      (:left "shows"
       :right "that the phospho-specific antibody is specific for       the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "shows"
       :right "that the phospho-specific antibody is specific for       the ASPP2 fragment")
      (:left "suggest"
       :right "that PI3KC2β binding to nucleotide-free Ras in vivo      may prevent loading of nucleotides onto Ras")
      (:left "demonstrate"
       :right "that the RBD of PI3KC2β binds nucleotide-free Ras       in vitro (Fig. 5)")))

(define-rule-record  ; #<PSR-963 vp → {vg to-comp}>
  :form (vg (vg to-comp))
  :count 5
  :function adjoin-tocomp-to-vg
  :contexts
     ((:left "will also continue"
       :right "to bind active RAS")
      (:left "is"
       :right "likely to be mediated by ASPP2")
      (:left "remains"
       :right "to be investigated")
      (:left "is"
       :right "to enhance CRAF activation")))

(define-rule-record  ; #<PSR-901 vp → {vg vp+ing}>
  :form (vg (vg vp+ing))
  :count 2
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "may prevent"
       :right "loading of nucleotides onto Ras")))

(define-rule-record  ; #<PSR-572 vp → {vp adverb}>
  :form (vp (vp adverb))
  :count 2
  :function interpret-adverb+verb
  :contexts
     ((:left "is not always low"
       :right "anymore")
      (:left "can give a more precise answer"
       :right "later")))

(define-rule-record  ; #<PSR-969 vp → {vp as-comp}>
  :form (vp (vp as-comp))
  :count 1
  :function adjoin-ascomp-to-vg
  :contexts
     ((:left "induces cytoplasmic and nuclear translocation of wild-type ASPP2 but not ASPP2 (S827A) in HKe3 ER:HRAS12 cells"
       :right "as detected by immunofluorescence")))

(define-rule-record  ; #<PSR-967 vp → {vp pp-wh-pronoun}>
  :form (vp (vp pp-wh-pronoun))
  :count 1
  :function adjoin-pp-to-vg
  :contexts
     ((:left "propose the following mechanism"
       :right "by which")))

(define-rule-record  ; #<PSR-966 vp → {vp pp}>
  :form (vp (vp pp))
  :count 22
  :function adjoin-pp-to-vg
  :contexts
     ((:left "increase the binding rate of MAPK1 and DUSP6"
       :right "by 10 fold")
      (:left "Decrease the catalysis rate of MAP2K1 phosphorylation"
       :right "by half")
      (:left "Increase the binding rate of NRAS and BRAF"
       :right "by an order of magnitude")
      (:left "Increase the binding rate of NRAS and BRAF"
       :right "by 10 fold")
      (:left "Set the total amount of BRAF"
       :right "to zero")
      (:left "translocate from the cytoplasm"
       :right "to the nucleus")
      (:left "translocates to the cytosol and nucleus"
       :right "upon oncogenic RAS activation")
      (:left "would only activate RAS"
       :right "for short periods of time")
      (:left "signals to p53"
       :right "via ASPP2")
      (:left "in turn activates ASPP2"
       :right "via MAPK phosphorylation which will translocate and activate p53")
      (:left "remains at the plasma membrane"
       :right "following RAS activation by 4-OHT in the HKe3 ER:HRASV12 system (Figure 4A)")
      (:left "increases Bax-luciferase levels"
       :right "by 2.5 fold")
      (:left "leads to its increased translocation"
       :right "to the cytosol/nucleus and increased binding to p53")
      (:left "leads to its increased translocation"
       :right "to the cytosol/nucleus")
      (:left "activates ERK"
       :right "primarily through MEK-dependent mechanisms that do not require RAF signaling")
      (:left "may activate ERK"
       :right "through MEK-independent and MEK-dependent mechanisms")
      (:left "inhibits V600EBRAF"
       :right "at 2 nM (Figure S1E)")
      (:left "inhibits V600EBRAF"
       :right "at 13 nM (Tsai et al., 2008)")
      (:left "inhibits V600EBRAF"
       :right "at 40 nM")))

(define-rule-record  ; #<PSR-1049 vp → {vp s}>
  :form (vp (vp s))
  :count 1
  :function assimilate-thatcomp
  :contexts
     ((:left "propose the following mechanism by which"
       :right "this occurs")))

(define-rule-record  ; #<PSR-1047 vp → {vp thatcomp}>
  :form (vp (vp thatcomp))
  :count 1
  :function assimilate-thatcomp
  :contexts
     ((:left "demonstrate for the first time"
       :right "that a delay in cytoplasmic activation of ERK is directly translated into a delay in nuclear translocation")))

(define-rule-record  ; #<PSR-968 vp → {vp to-comp}>
  :form (vp (vp to-comp))
  :count 3
  :function adjoin-tocomp-to-vg
  :contexts
     ((:left "allows the cell"
       :right "to have a fail-proof mechanism")
      (:left "can cooperate with p53"
       :right "to suppress tumour growth in vivo")
      (:left "are currently using mass-spectrometry and mutagenic approaches"
       :right "to elucidate the underlying mechanism")))

(define-rule-record  ; #<PSR-981 vp+ed → {vg+ed pp}>
  :form (vg+ed (vg+ed pp))
  :count 45
  :function adjoin-pp-to-vg
  :contexts
     ((:left "sustained"
       :right "at a low level")
      (:left "sustained"
       :right "after 2 hours")
      (:left "sustained"
       :right "in the first 2 hours")
      (:left "sustained"
       :right "at a high level")
      (:left "sustained"
       :right "in time")
      (:left "accumulated"
       :right "in the nucleus")
      (:left "increased"
       :right "upon serum stimulation")
      (:left "Controlled"
       :right "by the Rate of Phosphorylation")
      (:left "treated"
       :right "with or without 4-OHT")
      (:left "detected"
       :right "by immunofluorescence")
      (:left "involved"
       :right "in an important feedback loop between RAS and p53")
      (:left "compared"
       :right "with normal breast epithelium [21]")
      (:left "co-immunoprecipitated"
       :right "with transfected V5-tagged wild-type ASPP2 (Figure 4B, compare lanes 4 and 5)")
      (:left "co-transfected"
       :right "in Saos2 cells (Figure S3C)")
      (:left "resulted"
       :right "in the increased ASPP2 expression (Figure 1E; Figure S3C)")
      (:left "resulted"
       :right "in a significant decrease in the ability of ASPP2 to enhance the transcriptional activity of p53 compared to the control cells (Figure 3C)")
      (:left "resulted"
       :right "in a significant decrease in the ability of ASPP2 to enhance the transcriptional activity of p53")
      (:left "compared"
       :right "to the control cells (Figure 3C)")
      (:left "shown"
       :right "in Figure S1")
      (:left "fractioned"
       :right "on a high performance liquid chromatography (HPLC)")
      (:left "phosphorylated"
       :right "by p38 SAPK")
      (:left "compared"
       :right "to p38 SAPK")
      (:left "modified"
       :right "at a single site")
      (:left "ligated"
       :right "to Ubiquitin C77")
      (:left "ligated"
       :right "to Ubiquitin G76C")
      (:left "obtained"
       :right "from relapsing")
      (:left "observed"
       :right "with pharmacological MEK inhibitors")
      (:left "required"
       :right "for C-RAF activation")
      (:left "Based"
       :right "on these results")
      (:left "resulted"
       :right "in constitutive phosphorylation of ERK and MEK in the presence of PLX4720")
      (:left "based"
       :right "on our findings")
      (:left "resulted"
       :right "in a lack of detection of phospho-ASPP2")
      (:left "compared"
       :right "to wild type Ras")
      (:left "based"
       :right "on the relatively high GTP:GDP ratio in vivo [37],       the ability of GTP to dissociate the GEF-Ras complex in vitro [31]")
      (:left "based"
       :right "on the relatively high GTP:GDP ratio in vivo [37]")))

(define-rule-record  ; #<PSR-983 vp+ed → {vg+ed to-comp}>
  :form (vg+ed (vg+ed to-comp))
  :count 1
  :function adjoin-tocomp-to-vg
  :contexts
     ((:left "shown"
       :right "consistently to be dimerization-deficient in vitro")))

(define-rule-record  ; #<PSR-986 vp+ed → {vp+ed pp}>
  :form (vp+ed (vp+ed pp))
  :count 4
  :function adjoin-pp-to-vg
  :contexts
     ((:left "accumulated in the nucleus"
       :right "to the same level")
      (:left "phosphorylated in vitro"
       :right "by MAPK")))

(define-rule-record  ; #<PSR-912 vp+ing → {vg+ing np}>
  :form (vg+ing (vg+ing np))
  :count 34
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "reaching"
       :right "a high value")
      (:left "reaching"
       :right "a high level")
      (:left "expressing"
       :right "green fluorescent protein (GFP)-tagged ERK1")
      (:left "increasing"
       :right "RAS signaling to its downstream pathway effectors Raf/MAPK")
      (:left "preventing"
       :right "the amplification of ASPP2 signaling to p53 via the feedback loop")
      (:left "eliminating"
       :right "the apoptotic stimulus")
      (:left "propagating"
       :right "the pro-apoptotic signal")
      (:left "enhancing"
       :right "its downstream pathway activity")
      (:left "promoting"
       :right "senescence in fibroblasts")
      (:left "Inhibiting"
       :right "MAPK")
      (:left "further validating"
       :right "the functional role of ASPP2 phosphorylation by MAPK")
      (:left "analysing"
       :right "the transcriptional activity of p53")
      (:left "using"
       :right "a mutant form of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "using"
       :right "a mutant form of Raf (Raf CAAX)")
      (:left "providing"
       :right "an explanation")
      (:left "containing"
       :right "the second putative phosphorylation site, serine 827")
      (:left "containing"
       :right "the second putative phosphorylation site")
      (:left "representing"
       :right "these radioactive peaks")
      (:left "containing"
       :right "both MAPK putative phosphorylation sites")
      (:left "creating"
       :right "a linker one bond")
      (:left "involving"
       :right "the MAPK pathway")
      (:left "reducing"
       :right "MAPK pathway activation in this setting")
      (:left "mediating"
       :right "PLX4720 resistance and ERK activation (Supplementary Fig. 10)")
      (:left "mediating"
       :right "PLX4720 resistance")
      (:left "suggesting"
       :right "MAPK pathway-independent alteration of drug sensitivity (Supplementary Fig. 8)")
      (:left "phosphorylating"
       :right "a partner protein")
      (:left "encoding"
       :right "amino acids 824-832")))

(define-rule-record  ; #<PSR-971 vp+ing → {vg+ing pp}>
  :form (vg+ing (vg+ing pp))
  :count 8
  :function adjoin-pp-to-vg
  :contexts
     ((:left "resulting"
       :right "in increased RAS/MAPK signaling")
      (:left "targeting"
       :right "of COT kinase activity")
      (:left "leading"
       :right "to CRAF hyperactivation and consequently elevated MEK and ERK signaling")
      (:left "leading"
       :right "to CRAF hyperactivation")
      (:left "resulting"
       :right "in greater fluorescence       complementation for Ras17N (and Ras17N/69N)")
      (:left "loading"
       :right "of nucleotides")))

(define-rule-record  ; #<PSR-952 vp+ing → {vg+ing proper-noun}>
  :form (vg+ing (vg+ing proper-noun))
  :count 4
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "phosphorylating"
       :right "MAP2K1")
      (:left "Knowing"
       :right "ASPP2")
      (:left "using"
       :right "K–Ras")
      (:left "allowing"
       :right "CRAF")))

(define-rule-record  ; #<PSR-1079 vp+ing → {vg+ing thatcomp}>
  :form (vg+ing (vg+ing thatcomp))
  :count 8
  :function assimilate-thatcomp
  :contexts
     ((:left "indicating"
       :right "that dimerization of ERK1 is not required for nuclear entry and retention")
      (:left "indicating"
       :right "that the regulation is not at the transcriptional level")
      (:left "suggesting"
       :right "that p38 SAPK was active")
      (:left "indicating"
       :right "that p38 SAPK is not an efficient kinase for ASPP2 phosphorylation")
      (:left "indicating"
       :right "that the effects of monoubiquitination on Ras are not isoform–specific")
      (:left "suggesting"
       :right "that COT expression alone was sufficient to induce this phenotype (Fig. 4c, 4d, Supplementary Fig. 17)")))

(define-rule-record  ; #<PSR-976 vp+ing → {vp+ing pp}>
  :form (vp+ing (vp+ing pp))
  :count 6
  :function adjoin-pp-to-vg
  :contexts
     ((:left "propagating the pro-apoptotic signal from RAS"
       :right "to p53")
      (:left "propagating the pro-apoptotic signal"
       :right "from RAS")
      (:left "providing an explanation"
       :right "of how RAS can activate p53 pro-apoptotic functions (Figure 5)")
      (:left "providing an explanation"
       :right "of how RAS can activate p53 pro-apoptotic functions")
      (:left "loading of nucleotides"
       :right "onto Ras")))

(define-rule-record  ; #<PSR-978 vp+ing → {vp+ing to-comp}>
  :form (vp+ing (vp+ing to-comp))
  :count 1
  :function adjoin-tocomp-to-vg
  :contexts
     ((:left "allowing CRAF"
       :right "to hyperactivate the pathway (Figure 7B)")))

(define-rule-record  ; #<PSR-996 vp+passive → {vg+passive pp}>
  :form (vg+passive (vg+passive pp))
  :count 79
  :function adjoin-pp-to-vg
  :contexts
     ((:left "is sustained"
       :right "over time")
      (:left "is bound"
       :right "to NRAS")
      (:left "is phosphorylated"
       :right "on Ser-602")
      (:left "is phosphorylated"
       :right "on serine and tyrosine")
      (:left "is directly translated"
       :right "into a delay in nuclear translocation")
      (:left "is not required"
       :right "for nuclear entry and retention")
      (:left "has been proposed"
       :right "as a requirement for nuclear translocation")
      (:left "is required"
       :right "for the induction of many cellular responses")
      (:left "were immunoprecipitated"
       :right "with an anti-p53 antibody")
      (:left "is involved"
       :right "in both senescence in fibroblasts and apoptosis in cancer cells [2,10]")
      (:left "is involved"
       :right "in both senescence in fibroblasts")
      (:left "is also down-regulated"
       :right "in both invasive and metastatic cells compared with normal breast epithelium [21]")
      (:left "is also down-regulated"
       :right "in both invasive and metastatic cells")
      (:left "is down-regulated"
       :right "by DNA methylation [9,17-19]")
      (:left "is not affected"
       :right "by RAS activation (Figure 4B, compare lanes 9 to 10)")
      (:left "would be influenced"
       :right "by RAS activation")
      (:left "is required"
       :right "for RAS-induced translocation of ASPP2 to the cytosol")
      (:left "is required"
       :right "for RAS-induced translocation of ASPP2")
      (:left "may be mediated"
       :right "by the stabilization of ASPP2 protein")
      (:left "is induced"
       :right "in HKe3 ER:HRASV12 cells (Figure S3B) or co-transfected in Saos2 cells (Figure S3C)")
      (:left "is induced"
       :right "in HKe3 ER:HRASV12 cells (Figure S3B)")
      (:left "were considerably decreased"
       :right "without oncogenic RAS")
      (:left "were measured"
       :right "after cycloheximide (CHX) addition (Figure S3B and C)")
      (:left "was not affected"
       :right "upon RAS/MAPK pathway activation (Figure S3A)")
      (:left "was slightly decreased"
       :right "following RAS/MAPK pathway inhibition by UO126 treatment (Figure 3C, right panel)")
      (:left "were treated"
       :right "with a MAPK inhibitor, UO126")
      (:left "were treated"
       :right "with a MAPK inhibitor")
      (:left "were starved"
       :right "of serum")
      (:left "is mediated"
       :right "via the downstream Raf /MAPK pathway")
      (:left "was compared"
       :right "to that")
      (:left "be mediated"
       :right "by ASPP2")
      (:left "was tested"
       :right "by analysing the transcriptional activity of p53")
      (:left "was also observed"
       :right "in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "was performed"
       :right "on the purified GST-ASPP2 fragment (693-1128)")
      (:left "is phosphorylated"
       :right "by the RAS/Raf/MAPK pathway")
      (:left "can be phosphorylated"
       :right "at serine 827")
      (:left "were analysed"
       :right "by mass spectrometry")
      (:left "was digested"
       :right "by trypsin")
      (:left "was performed"
       :right "with a purified C-terminus fragment of ASPP2 (693-1128) containing both MAPK putative phosphorylation sites")
      (:left "is regulated"
       :right "by the activation of a RAS-mediated signalling pathway")
      (:left "is sustained"
       :right "even in the absence of hormone stimulus")
      (:left "was observed"
       :right "for mUbRas in the presence of the same GAP-to-Ras ratio")
      (:left "are frequently confounded"
       :right "by de novo or acquired resistance [9–11]")
      (:left "has been validated"
       :right "by the success of RAF and MEK inhibitors")
      (:left "are found"
       :right "in 50–70% of malignant melanomas 1")
      (:left "might be favored"
       :right "in the context of acquired resistance to B-RAF inhibition")
      (:left "was phosphorylated"
       :right "on S338 (Supplementary Fig. 9)")
      (:left "is recruited"
       :right "to the plasma membrane")
      (:left "is not required"
       :right "for MEK/ERK activation in RAS mutant cells")
      (:left "can be phosphorylated"
       :right "by RAS/MAPK pathway")
      (:left "was also observed"
       :right "in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which       RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "is induced"
       :right "upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left "could be phosphorylated"
       :right "in cells")
      (:left "were grown"
       :right "in low serum for 50 hours")
      (:left "were stimulated"
       :right "with EGF")
      (:left "was performed"
       :right "on       the purified GST-ASPP2 fragment (693-1128)")
      (:left "was purified"
       :right "by affinity column purification")
      (:left "is disrupted"
       :right "by addition of       guanine nucleotides")))

(define-rule-record  ; #<PSR-1097 vp+passive → {vg+passive s}>
  :form (vg+passive (vg+passive s))
  :count 1
  :function assimilate-thatcomp
  :contexts
     ((:left "was established"
       :right "recently that monoubiquitination increases the proportion of Ras that is in the activated (GTP–bound) state")))

(define-rule-record  ; #<PSR-1095 vp+passive → {vg+passive thatcomp}>
  :form (vg+passive (vg+passive thatcomp))
  :count 3
  :function assimilate-thatcomp
  :contexts
     ((:left "has recently been shown"
       :right "that activation of RAS results in ASPP2 translocation from the plasma membrane to the cytosol and nucleus [2]")
      (:left "has recently been shown"
       :right "that oncogenic RAS can enhance the apoptotic function of p53 via ASPP1 and ASPP2")))

(define-rule-record  ; #<PSR-998 vp+passive → {vg+passive to-comp}>
  :form (vg+passive (vg+passive to-comp))
  :count 4
  :function adjoin-tocomp-to-vg
  :contexts
     ((:left "are needed"
       :right "to stimulate formation of the complex (Figure 7B)")
      (:left "was used"
       :right "to raise antibodies")))

(define-rule-record  ; #<PSR-1001 vp+passive → {vp+passive pp}>
  :form (vp+passive (vp+passive pp))
  :count 9
  :function adjoin-pp-to-vg
  :contexts
     ((:left "was compared to that"
       :right "of HRAS V12 or KRAS V12")
      (:left "was compared to that"
       :right "of HRAS V12")
      (:left "was performed on the purified GST-ASPP2 fragment (693-1128)"
       :right "with recombinant MAPK1")
      (:left "can be phosphorylated at serine 827"
       :right "by MAPK1 in vitro")
      (:left "has been validated by the success of RAF and MEK inhibitors"
       :right "in clinical trials 6–8")
      (:left "is recruited to the plasma membrane"
       :right "by RAS")
      (:left "was performed on       the purified GST-ASPP2 fragment (693-1128)"
       :right "with recombinant MAPK1")))

(define-rule-record  ; #<PSR-913 vp+past → {vg+ed np}>
  :form (vg+ed (vg+ed np))
  :count 46
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "observed"
       :right "an increase in the amount of p53 co-immunoprecipitated with transfected V5-tagged wild-type ASPP2 (Figure 4B, compare lanes 4 and 5)")
      (:left "observed"
       :right "an increase in the amount of p53")
      (:left "also inhibited"
       :right "ASPP2 function to a similar extent (Figure S2)")
      (:left "had"
       :right "identical activity to wild-type ASPP2")
      (:left "had"
       :right "little effect on p53 in its absence (Figure 2A)")
      (:left "increased"
       :right "binding to p53")
      (:left "represented"
       :right "the linker region between the GST and our ASPP2 fragment")
      (:left "had"
       :right "high levels of incorporated 32P")
      (:left "had"
       :right "very low levels of incorporated 32P")
      (:left "observed"
       :right "two conserved putative MAPK phosphorylation sites in ASPP1 and ASPP2")
      (:left "was"
       :right "our ability to easily generate mUbRas, modified at a single site")
      (:left "was"
       :right "our ability to easily generate mUbRas")
      (:left "immunoprecipitated"
       :right "Ras from HEK293T cells")
      (:left "compared"
       :right "the sensitivity of the monoubiquitinated and unmodified fractions of Ras to regulation by GAP")
      (:left "measured"
       :right "the sensitivity of mUbRas to GAP–mediated hydrolysis in a cellular reconstitution system")
      (:left "measured"
       :right "the rate of GAP–mediated GTP hydrolysis")
      (:left "placed"
       :right "an additional cysteine")
      (:left "obtained"
       :right "similar results")
      (:left "observed"
       :right "an order of magnitude increase in the rate of GTP hydrolysis for unmodified Ras relative to the intrinsic rate of GTP hydrolysis")
      (:left "compared"
       :right "the rate of GTP hydrolysis for Ras and mUbRas in the presence of the catalytic domains of two GAPs, NF1 (NF1 333) and p120GAP(GAP–334)")
      (:left "next considered"
       :right "the effect of Ras monoubiquitination on GAP–mediated hydrolysis")
      (:left "expressed"
       :right "~600 kinase")
      (:left "performed"
       :right "an in vitro kinase assay using recombinant COT and ERK1")
      (:left "also conferred"
       :right "decreased sensitivity to the MEK inhibitors CI-1040 and AZD6244")
      (:left "displayed"
       :right "sustained ERK phosphorylation")
      (:left "queried"
       :right "the OUMS-23 and RPMI-7951 cell lines")
      (:left "conferred"
       :right "PLX4720 resistance in A375 cells (Fig. 2b)")
      (:left "yielded"
       :right "sustained C-RAF(S338)")
      (:left "increased"
       :right "ERK phosphorylation in a manner comparable to MEK1DD")
      (:left "studied"
       :right "the underlying mechanism(s)")
      (:left "blocked"
       :right "MEK/ERK activation by PLX4720 and 885-A  in NRAS mutant cells (Figure 1B and 1C)")
      (:left "activated"
       :right "CRAF in these cells (Figure 1D)")
      (:left "caused"
       :right "an unexpected increase in ERK activity in the NRAS mutant cells (Figure 1A)")
      (:left "inhibited"
       :right "ERK in all of these lines (Figure 1A)")
      (:left "also tested"
       :right "the drugs in D04, MM415, MM485, and WM852 NRAS mutant cells (Table S2)")
      (:left "inhibited"
       :right "ERK in SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G)")
      (:left "inhibited"
       :right "ERK in SkMel24, SkMel28, D25, and WM266.4 cells")
      (:left "blocked"
       :right "ERK activity in BRAF mutant A375 melanoma cells (Figure 1A; see Table S2)")
      (:left "also used"
       :right "the potent and selective MEK inhibitor PD184352 (Sebolt-Leopold et al., 1999)")
      (:left "selected"
       :right "four drugs for our studies (Figures S1A–S1D)")))

(define-rule-record  ; #<PSR-918 vp+past → {vg+ed pronoun}>
  :form (vg+ed (vg+ed pronoun))
  :count 1
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "led"
       :right "us")))

(define-rule-record  ; #<PSR-953 vp+past → {vg+ed proper-noun}>
  :form (vg+ed (vg+ed proper-noun))
  :count 2
  :function assimilate-np-to-v-as-object
  :contexts
     ((:left "established"
       :right "ASPP2")
      (:left "identified"
       :right "MAP3K8 (COT/TPL2)")))

(define-rule-record  ; #<PSR-1087 vp+past → {vg+ed thatcomp}>
  :form (vg+ed (vg+ed thatcomp))
  :count 7
  :function assimilate-thatcomp
  :contexts
     ((:left "revealed"
       :right "that ERK1 nuclear accumulation increased upon serum stimulation")
      (:left "revealed"
       :right "that monoubiquitination abrogates GAP–mediated GTP hydrolysis")
      (:left "indicated"
       :right "that Ubiquitin dynamically samples a broad surface area of Ras that alters switch region dynamics")
      (:left "observed"
       :right "that the response of Ras ligated to Ubiquitin C77 was identical to Ras ligated to Ubiquitin G76C")
      (:left "observed"
       :right "that the response of Ras ligated to Ubiquitin C77 was identical to Ras")
      (:left "hypothesized"
       :right "that COT and C-RAF drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling")
      (:left "previously reported"
       :right "that oncogenic RAS requires CRAF but not BRAF to activate MEK (Dumaz et al., 2006)")))

(define-rule-record  ; #<PSR-1092 vp+past → {vg+ed whethercomp}>
  :form (vg+ed (vg+ed whethercomp))
  :count 11
  :function assimilate-whethercomp
  :contexts
     ((:left "tested"
       :right "whether the p53 binding ability of ASPP2 phosphorylation mutant would be influenced by RAS activation")
      (:left "tested"
       :right "whether MAPK phosphorylation at Ser827 could affect the cellular localization of ASPP2")
      (:left "investigated"
       :right "whether RAS/MAPK pathway activation could result in the increased protein stability of ASPP2")
      (:left "tested"
       :right "whether activation of Raf/MAPK pathway is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "tested"
       :right "whether activation of Raf/MAPK pathway is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX)")
      (:left "tested"
       :right "whether RAS activation may regulate ASPP2 phosphorylation")
      (:left "queried"
       :right "whether the activity of ASPP2 is regulated by the activation of a RAS-mediated signalling pathway")
      (:left "considered"
       :right "whether COT-expressing cancer cells remain sensitive to MAPK pathway inhibition at a target downstream of COT or RAF")
      (:left "tested"
       :right "whether overexpression of these genes was sufficient to activate the MAPK pathway")))

(define-rule-record  ; #<PSR-991 vp+past → {vp+past pp}>
  :form (vp+past (vp+past pp))
  :count 4
  :function adjoin-pp-to-vg
  :contexts
     ((:left "established ASPP2"
       :right "as a tumor suppressor and an activator of p53 family")
      (:left "established ASPP2"
       :right "as a tumor suppressor")
      (:left "placed an additional cysteine"
       :right "at the c–terminus of Ubiquitin (Ubiquitin C77)")
      (:left "identified MAP3K8 (COT/TPL2)"
       :right "as a MAPK pathway agonist that drives resistance to RAF inhibition in BRAFV600E cell lines")))

(define-rule-record  ; #<PSR-993 vp+past → {vp+past to-comp}>
  :form (vp+past (vp+past to-comp))
  :count 2
  :function adjoin-tocomp-to-vg
  :contexts
     ((:left "led us"
       :right "to examine the effect of monoubiquitination on the interaction of Ras with its cognate GEF and GAPs, which also target the switch domains")
      (:left "led us"
       :right "to examine the effect of monoubiquitination on the interaction of Ras with its cognate GEF and GAPs")))

(define-rule-record  ; #<PSR-222494 {adjective} → adjective in-vitro>
  :form (adjective (adjective in-vitro))
  :count 1
  :function interpret-in-vivo-vitro
  :contexts
     ((:left "dimerization-deficient"
       :right "in vitro")))

(define-rule-record  ; #<PSR-1464 {adjective} → be adjective>
  :form (adjective (be adjective))
  :count 39
  :function make-copular-adjective
  :contexts
     ((:left "is not"
       :right "always low")
      (:left "is"
       :right "always low")
      (:left "is"
       :right "unchanged")
      (:left "is"
       :right "sometimes transient")
      (:left "is"
       :right "mostly transient")
      (:left "is"
       :right "only sometimes transient")
      (:left "is"
       :right "transient")
      (:left "is not"
       :right "transient")
      (:left "being"
       :right "high")
      (:left "Is"
       :right "Dimerization-independent")
      (:left "is"
       :right "constitutively active")
      (:left "is"
       :right "only temporarily active")
      (:left "was"
       :right "a bit more stable")
      (:left "is"
       :right "constitutively active [14]")
      (:left "was"
       :right "active")
      (:left "are not"
       :right "isoform–specific")
      (:left "is not"
       :right "active")
      (:left "is"
       :right "highly selective")
      (:left "is"
       :right "specific")
      (:left "was"
       :right "rapid")
      (:left "was"
       :right "barely detectable")))

(define-rule-record  ; #<PSR-1480 {adjective} → become adjective>
  :form (adjective (become adjective))
  :count 2
  :function make-copular-adjective
  :contexts
     ((:left "become"
       :right "high")
      (:left "becomes"
       :right "high")))

(define-rule-record  ; #<PSR-474 {adjective} → percent adjective>
  :form (adjective (percent adjective))
  :count 1
  :function interpret-intensifier+adjective
  :contexts
     ((:left "95%"
       :right "sure")))

(define-rule-record  ; #<PSR-222173 {adjective} → remain adjective>
  :form (adjective (remain adjective))
  :count 4
  :function make-copular-adjective
  :contexts
     ((:left "remain"
       :right "low")
      (:left "always remain"
       :right "low")
      (:left "remained"
       :right "unchanged")
      (:left "remained"
       :right "low (Supplementary Fig. 9)")))

(define-rule-record  ; #<PSR-1465 {adjp} → be adjp>
  :form (adjp (be adjp))
  :count 38
  :function make-copular-adjective
  :contexts
     ((:left "is"
       :right "transient with a high probability")
      (:left "is"
       :right "transient in time")
      (:left "to be"
       :right "dimerization-deficient in vitro")
      (:left "would be"
       :right "unable to bind to ASPP2")
      (:left "be"
       :right "unable to amplify the RAS signal to p53")
      (:left "is"
       :right "necessary for its ASPP2 to fully enhance p53 pro-apoptotic activity")
      (:left "is"
       :right "necessary for Raf CAAX to stimulate the full transcriptional activity of p53 via ASPP2")
      (:left "was"
       :right "able to stimulate wild-type ASPP2 and ASPP2 (S698A) by 2.5 fold")
      (:left "was"
       :right "unable to increase the activity of mutant ASPP2 (S827A)")
      (:left "is"
       :right "necessary for ASPP2 full pro-apoptotic activity")
      (:left "is"
       :right "sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "is"
       :right "sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX)")
      (:left "is"
       :right "constitutively present at the plasma membrane")
      (:left "is"
       :right "specific for the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "is"
       :right "specific for the ASPP2 fragment")
      (:left "was"
       :right "clearly able to phosphorylate the ASPP2 fragment in vitro (Figure 1B, left and middle panels)")
      (:left "is"
       :right "upstream of several signalling cascades [13]")
      (:left "was"
       :right "clearly able to phosphorylate the ASPP2 fragment in vitro")
      (:left "is"
       :right "upstream of several signalling cascades")
      (:left "was"
       :right "specific to monoubiquitination at position 147")
      (:left "will likely be"
       :right "useful for the study of other monoubiquitinated proteins")
      (:left "was"
       :right "identical to Ras ligated to Ubiquitin G76C")
      (:left "was"
       :right "identical to Ras")
      (:left "is"
       :right "insensitive to GAP–mediated regulation")
      (:left "alone was"
       :right "sufficient to induce this phenotype (Fig. 4c, 4d, Supplementary Fig. 17)")
      (:left "were"
       :right "refractory to MEK inhibition (Fig. 4a)")
      (:left "were"
       :right "measurable and inducible following treatment with PLX4720 (Supplementary Fig. 9)")
      (:left "was"
       :right "sufficient to activate the MAPK pathway")
      (:left "is"
       :right "inactive in NRAS mutant cells (Figure 1E)")
      (:left "is"
       :right "ineffective against a panel of 64 other protein kinases (Table S1)")
      (:left "is"
       :right "also highly selective for BRAF")
      (:left "is"
       :right "specific for       the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "is"
       :right "specific for       the ASPP2 fragment")
      (:left "is"
       :right "stable even       in the presence of high concentrations of GTP or GDP")))

(define-rule-record  ; #<PSR-222174 {adjp} → remain adjp>
  :form (adjp (remain adjp))
  :count 2
  :function make-copular-adjective
  :contexts
     ((:left "remained"
       :right "high after CHX treatment")
      (:left "remain"
       :right "sensitive to MAPK pathway inhibition at a target downstream of COT or RAF")))

(define-rule-record  ; #<PSR-1385 {after} → after np>
  :form (after (after np))
  :count 6
  :function make-pp
  :contexts
     ((:left "after"
       :right "2 hours")
      (:left "after"
       :right "CHX treatment")
      (:left "after"
       :right "cycloheximide (CHX) addition (Figure S3B and C)")
      (:left "after"
       :right "RAS stimulation (Figure 1D)")))

(define-rule-record  ; #<PSR-1386 {before} → before np>
  :form (before (before np))
  :count 1
  :function make-pp
  :contexts
     ((:left "before"
       :right "2 hours")))

(define-rule-record  ; #<PSR-1504 {be} → modal be>
  :form (modal (modal be))
  :count 2
  :function absorb-auxiliary
  :contexts
     ((:left "would"
       :right "be")
      (:left "will"
       :right "likely be")))

(define-rule-record  ; #<PSR-1514 {common-noun/plural} → modifier common-noun/plural>
  :form (common-noun/plural (modifier common-noun/plural))
  :count 10
  :function modifier+noun
  :contexts
     ((:left "cellular"
       :right "responses")
      (:left "normal"
       :right "conditions")
      (:left "invasive and metastatic"
       :right "cells")
      (:left "other"
       :right "activities")
      (:left "catalytic"
       :right "domains")
      (:left "functional"
       :right "screens")
      (:left "new"
       :right "insights")
      (:left "‘druggable’"
       :right "targets")
      (:left "other"
       :right "kinases")))

(define-rule-record  ; #<PSR-1513 {common-noun} → modifier common-noun>
  :form (common-noun (modifier common-noun))
  :count 14
  :function modifier+noun
  :contexts
     ((:left "uncontrolled"
       :right "proliferation")
      (:left "poor"
       :right "prognosis")
      (:left "cellular"
       :right "localization")
      (:left "functional"
       :right "role")
      (:left "efficient"
       :right "kinase")
      (:left "entirely new"
       :right "mode")
      (:left "broad"
       :right "surface area")
      (:left "intrinsic"
       :right "activity")
      (:left "major"
       :right "advance")
      (:left "primary"
       :right "site")
      (:left "intrinsic"
       :right "rate")
      (:left "cellular"
       :right "response")
      (:left "own"
       :right "kinase activity")))

(define-rule-record  ; #<PSR-1713 {common-noun} → ordinal common-noun>
  :form (common-noun (ordinal common-noun))
  :count 1
  :function compose-ordinal
  :contexts
     ((:left "first"
       :right "time")))

(define-rule-record  ; #<PSR-1468 {comparative-adjp} → be comparative-adjp>
  :form (comparative-adjp (be comparative-adjp))
  :count 3
  :function make-copular-adjective
  :contexts
     ((:left "is"
       :right "less sensitive than the unmodified protein to GAP–mediated GTP hydrolysis")
      (:left "was"
       :right "more effective than wild-type C-RAF  in mediating PLX4720 resistance and ERK activation (Supplementary Fig. 10)")
      (:left "was"
       :right "more effective than wild-type C-RAF  in mediating PLX4720 resistance")))

(define-rule-record  ; #<PSR-1466 {comparative} → be comparative>
  :form (comparative (be comparative))
  :count 1
  :function make-copular-adjective
  :contexts
     ((:left "were"
       :right "slower than that")))

(define-rule-record  ; #<PSR-666 {copular-pp} → np copular-pp>
  :form (copular-pp (np copular-pp))
  :count 4
  :function apply-copular-pp
  :contexts
     ((:left "The ASPP1 sites"
       :right "are at residues 671 and 746")
      (:left "the ASPP2 sites"
       :right "are at residues 698 and 827")))

(define-rule-record  ; #<PSR-1515 {n-bar} → modifier n-bar>
  :form (n-bar (modifier n-bar))
  :count 8
  :function modifier+noun
  :contexts
     ((:left "normal"
       :right "breast epithelium")
      (:left "haploinsufficient"
       :right "tumor suppressor")
      (:left "conserved"
       :right "putative MAPK phosphorylation sites")
      (:left "detailed"
       :right "biophysical studies")
      (:left "cellular"
       :right "reconstitution system")
      (:left "alternative"
       :right "‘druggable’ targets")
      (:left "other"
       :right "protein kinases")))

(define-rule-record  ; #<PSR-222496 {np} → np in-vitro>
  :form (np (np in-vitro))
  :count 6
  :function interpret-in-vivo-vitro
  :contexts
     ((:left "the ASPP2 fragment"
       :right "in vitro (Figure 1B, left and middle panels)")
      (:left "the ASPP2 fragment"
       :right "in vitro")
      (:left "nucleotide-free Ras"
       :right "in vitro (Fig. 5)")
      (:left "the GEF-Ras complex"
       :right "in vitro [31]")))

(define-rule-record  ; #<PSR-222497 {np} → np in-vivo>
  :form (np (np in-vivo))
  :count 13
  :function interpret-in-vivo-vitro
  :contexts
     ((:left "tumour growth"
       :right "in vivo")
      (:left "nucleotide-free       GTPases"
       :right "in vivo")
      (:left "nucleotide-free Ras"
       :right "in vivo")
      (:left "a short-lived transition state intermediate"
       :right "in vivo [36]")
      (:left "the relatively high GTP:GDP ratio"
       :right "in vivo [37]")
      (:left "no proteins"
       :right "in vivo")))

(define-rule-record  ; #<PSR-1375 {np} → than np>
  :form (np (than np))
  :count 8
  :function nil
  :contexts
     ((:left "than"
       :right "the amount of MAPK1­DUSP6 complex")
      (:left "than"
       :right "the concentration of phosphorylated MAP2K1")
      (:left "than"
       :right "the BRAF-NRAS complex")
      (:left "than"
       :right "phosphorylated MAP2K1")
      (:left "than"
       :right "that")
      (:left "than"
       :right "the unmodified protein")
      (:left "than"
       :right "the native linker")
      (:left "than"
       :right "wild-type C-RAF")))

(define-rule-record  ; #<PSR-1293 {of} → of howcomp>
  :form (of (of howcomp))
  :count 2
  :function make-pp
  :contexts
     ((:left "of"
       :right "how RAS can activate p53 pro-apoptotic functions (Figure 5)")
      (:left "of"
       :right "how RAS can activate p53 pro-apoptotic functions")))

(define-rule-record  ; #<PSR-1302 {pp-relative-clause} → comma pp-relative-clause>
  :form (pp-relative-clause ("," pp-relative-clause))
  :count 3
  :function nil
  :contexts
     ((:left ","
       :right "in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")
      (:left ","
       :right "in which       RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT)")))

(define-rule-record  ; #<PSR-222510 {pp} → amino-acid pp>
  :form (pp (amino-acid pp))
  :count 3
  :function interpret-pp-as-head-of-np
  :contexts
     ((:left "a phosphoserine"
       :right "at residue 827")))

(define-rule-record  ; #<PSR-1472 {pp} → be pp>
  :form (pp (be pp))
  :count 6
  :function make-copular-pp
  :contexts
     ((:left "is not"
       :right "at the transcriptional level")
      (:left "are"
       :right "at residues 671 and 746")
      (:left "are"
       :right "at residues 698 and 827")
      (:left "is"
       :right "in the activated (GTP–bound) state")))

(define-rule-record  ; #<PSR-1473 {pp} → exist pp>
  :form (pp (exist pp))
  :count 2
  :function make-copular-pp
  :contexts
     ((:left "should exist"
       :right "for longer periods in the nucleotide-free state")))

(define-rule-record  ; #<PSR-1306 {preposition} → preposition which>
  :form (preposition (preposition which))
  :count 6
  :function make-relativized-pp
  :contexts
     ((:left "through"
       :right "which")
      (:left "by"
       :right "which")
      (:left "in"
       :right "which")))

(define-rule-record  ; #<PSR-222492 {proper-noun} → proper-noun in-vitro>
  :form (proper-noun (proper-noun in-vitro))
  :count 3
  :function interpret-in-vivo-vitro
  :contexts
     ((:left "MAPK1"
       :right "in vitro")
      (:left "ERK1"
       :right "in vitro (Supplementary Fig.  18)")))

(define-rule-record  ; #<PSR-341 {quantifier} → quantifier of>
  :form (quantifier (quantifier of))
  :count 1
  :function create-partitive-np
  :contexts
     ((:left "all"
       :right "of these lines (Figure 1A)")))

(define-rule-record  ; #<PSR-1440 {subordinate-clause} → be subordinate-clause>
  :form (subordinate-clause (be subordinate-clause))
  :count 1
  :function add-tense/aspect-to-subordinate-clause
  :contexts
     ((:left "is"
       :right "thus involved in an important feedback loop between RAS and p53")))

(define-rule-record  ; #<PSR-1156 {subordinate-clause} → which subordinate-clause>
  :form (subordinate-clause (which subordinate-clause))
  :count 1
  :function compose-wh-with-vp
  :contexts
     ((:left "which"
       :right "can then relocate to the nucleus")))

(define-rule-record  ; #<PSR-1202 {s} → after s>
  :form (s (after s))
  :count 3
  :function make-subordinate-clause
  :contexts
     ((:left "after"
       :right "EGF stimulation phosphorylated ASPP2 was barely detectable")
      (:left "after"
       :right "EGF stimulation       phosphorylated ASPP2 was barely detectable")))

(define-rule-record  ; #<PSR-1201 {s} → before s>
  :form (s (before s))
  :count 1
  :function make-subordinate-clause
  :contexts
     ((:left "before"
       :right "phosphorylated MAP2K1 becomes high")))

(define-rule-record  ; #<PSR-637 {s} → deictic-location s>
  :form (s (deictic-location s))
  :count 3
  :function interpret-adverb+verb
  :contexts
     ((:left "Here"
       :right "we show that monoubiquitination decreases the sensitivity of Ras to GAP–mediated hydrolysis")
      (:left "Here,"
       :right "we expressed ~600 kinase")
      (:left "Here,"
       :right "we queried the OUMS-23 and RPMI-7951 cell lines")))

(define-rule-record  ; #<PSR-1165 {s} → how s>
  :form (s (how s))
  :count 2
  :function create-howcomp
  :contexts
     ((:left "how"
       :right "RAS can activate p53 pro-apoptotic functions (Figure 5)")
      (:left "how"
       :right "RAS can activate p53 pro-apoptotic functions")))

(define-rule-record  ; #<PSR-1164 {s} → if s>
  :form (s (if s))
  :count 3
  :function create-ifcomp
  :contexts
     ((:left "if"
       :right "there is no NRAS in the system")
      (:left "if"
       :right "we double the amount of BRAF")
      (:left "If"
       :right "RAS is only temporarily active")))

(define-rule-record  ; #<PSR-124 {s} → proposal-marker s>
  :form (s (proposal-marker s))
  :count 2
  :function make-marked-proposal
  :contexts
     ((:left "What if"
       :right "we increase the binding rate of MAPK1 and DUSP6 by 10 fold")
      (:left "What if"
       :right "we double the amount of DUSP6")))

(define-rule-record  ; #<PSR-1237 {s} → that s>
  :form (s (that s))
  :count 61
  :function create-thatcomp
  :contexts
     ((:left "that"
       :right "it is not transient")
      (:left "that"
       :right "it is transient")
      (:left "that"
       :right "a delay in cytoplasmic activation of ERK is directly translated into a delay in nuclear translocation")
      (:left "that"
       :right "the differential shuttling behavior of the mutant is a consequence of delayed phosphorylation of ERK by MEK")
      (:left "that"
       :right "dimerization of ERK1 is not required for nuclear entry and retention")
      (:left "that"
       :right "ERK1 nuclear accumulation increased upon serum stimulation")
      (:left "that"
       :right "ASPP2 would bind active RAS")
      (:left "that"
       :right "this possible feedback loop leads to an amplified pro-apoptotic signal")
      (:left "that"
       :right "ASPP2 can potentiate RAS signaling by binding directly via the ASPP2 N- terminus [2,6]")
      (:left "that"
       :right "phosphorylation of ASPP2 at Ser827 by MAPK is necessary for its ASPP2 to fully enhance p53 pro-apoptotic activity")
      (:left "that"
       :right "ASPP2 binding to RAS at the plasma membrane occurs")
      (:left "that"
       :right "activation of RAS results in ASPP2 translocation from the plasma membrane to the cytosol and nucleus [2]")
      (:left "that"
       :right "ASPP2 phosphorylation by RAS/MAPK is necessary for ASPP2 full pro-apoptotic activity")
      (:left "that"
       :right "the regulation is not at the transcriptional level")
      (:left "that"
       :right "MAPK phosphorylation of ASPP2 Ser827 is necessary for Raf CAAX to stimulate the full transcriptional activity of p53 via ASPP2")
      (:left "that"
       :right "the effect of activated RAS on ASPP2 and p53 is mediated via the downstream Raf /MAPK pathway")
      (:left "that"
       :right "the phospho- specific antibody is specific for the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "that"
       :right "the phospho- specific antibody is specific for the ASPP2 fragment")
      (:left "that"
       :right "ASPP2 can potentiate RAS signaling by binding directly via the ASPP2 N-terminus")
      (:left "that"
       :right "p38 SAPK was active")
      (:left "that"
       :right "p38 SAPK is not an efficient kinase for ASPP2 phosphorylation")
      (:left "that"
       :right "oncogenic RAS can enhance the apoptotic function of p53 via ASPP1 and ASPP2")
      (:left "that"
       :right "the GAP defect will dominate")
      (:left "that"
       :right "monoubiquitination abrogates GAP–mediated GTP hydrolysis")
      (:left "that"
       :right "Ubiquitin dynamically samples a broad surface area of Ras that alters switch region dynamics")
      (:left "that"
       :right "monoubiquitination decreases the sensitivity of Ras to GAP–mediated hydrolysis")
      (:left "that"
       :right "monoubiquitination increases the population")
      (:left "that"
       :right "variations in the linker length on this scale (1–2 bonds) do not influence the sensitivity of mUbRas to GAP downregulation")
      (:left "that"
       :right "the response of Ras ligated to Ubiquitin C77 was identical to Ras ligated to Ubiquitin G76C")
      (:left "that"
       :right "the response of Ras ligated to Ubiquitin C77 was identical to Ras")
      (:left "that"
       :right "the effects of monoubiquitination on Ras are not isoform–specific")
      (:left "that"
       :right "the B-RAFV600E mutation predicts a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5]")
      (:left "that"
       :right "in certain contexts, COT expression may potentiate ERK activation in a MEK-independent manner")
      (:left "that"
       :right "COT may activate ERK through MEK-independent and MEK-dependent mechanisms")
      (:left "that"
       :right "COT expression alone was sufficient to induce this phenotype (Fig. 4c, 4d, Supplementary Fig. 17)")
      (:left "that"
       :right "C-RAF activation and heterodimerization with B-RAF constitute critical components of the cellular response to B-RAF inhibition")
      (:left "that"
       :right "COT and C-RAF drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling")
      (:left "that"
       :right "at least two RAS proteins are needed to stimulate formation of the complex (Figure 7B)")
      (:left "that"
       :right "because it is inhibited, BRAF does not directly phosphorylate MEK")
      (:left "that"
       :right "in RAS mutant cells, BRAF maintains itself")
      (:left "that"
       :right "oncogenic RAS requires CRAF but not BRAF to activate MEK (Dumaz et al., 2006)")
      (:left "that"
       :right "885-A activated CRAF in these cells (Figure 1D)")
      (:left "that"
       :right "ASPP2 is a novel substrate of MAPK")
      (:left "that"
       :right "the phospho-specific antibody is specific for       the ASPP2 fragment phosphorylated in vitro by MAPK")
      (:left "that"
       :right "the phospho-specific antibody is specific for       the ASPP2 fragment")
      (:left "that"
       :right "PI3KC2β binding to nucleotide-free Ras in vivo      may prevent loading of nucleotides onto Ras")
      (:left "that"
       :right "the RBD of PI3KC2β binds nucleotide-free Ras       in vitro (Fig. 5)")
      (:left "that"
       :right "there are no proteins in vivo that might stabilize       nucleotide-free Ras")))

(define-rule-record  ; #<PSR-1162 {s} → when s>
  :form (s (when s))
  :count 3
  :function create-when-where-relative
  :contexts
     ((:left "when"
       :right "oncogenic RAS is induced in HKe3 ER:HRASV12 cells (Figure S3B) or co-transfected in Saos2 cells (Figure S3C)")
      (:left "when"
       :right "oncogenic RAS is induced in HKe3 ER:HRASV12 cells (Figure S3B)")
      (:left "when"
       :right "BRAF is  inhibited")))

(define-rule-record  ; #<PSR-1160 {s} → where s>
  :form (s (where s))
  :count 4
  :function create-when-where-relative
  :contexts
     ((:left "where"
       :right "RAS is constitutively active")
      (:left "where"
       :right "RAS is mutated")
      (:left "where"
       :right "the cells were starved of serum")
      (:left "where"
       :right "it forms a stable complex with CRAF")))

(define-rule-record  ; #<PSR-1163 {s} → whether s>
  :form (s (whether s))
  :count 14
  :function create-whethercomp
  :contexts
     ((:left "whether"
       :right "the p53 binding ability of ASPP2 phosphorylation mutant would be influenced by RAS activation")
      (:left "whether"
       :right "MAPK phosphorylation at Ser827 could affect the cellular localization of ASPP2")
      (:left "whether"
       :right "RAS/MAPK pathway activation could result in the increased protein stability of ASPP2")
      (:left "whether"
       :right "activation of Raf/MAPK pathway is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX), which is constitutively present at the plasma membrane")
      (:left "whether"
       :right "activation of Raf/MAPK pathway is sufficient to regulate ASPP2 activity using a mutant form of Raf (Raf CAAX)")
      (:left "whether"
       :right "RAS activation may regulate ASPP2 phosphorylation")
      (:left "whether"
       :right "the activity of ASPP2 is regulated by the activation of a RAS-mediated signalling pathway")
      (:left "whether"
       :right "COT-expressing cancer cells remain sensitive to MAPK pathway inhibition at a target downstream of COT or RAF")
      (:left "whether"
       :right "overexpression of these genes was sufficient to activate the MAPK pathway")
      (:left "whether"
       :right "endogenous ASPP2 could be phosphorylated in cells")))

(define-rule-record  ; #<PSR-1238 {to-comp} → for to-comp>
  :form (to-comp (for to-comp))
  :count 3
  :function interpret-for-to-comp
  :contexts
     ((:left "for mutant RAS"
       :right "to induce apoptosis in cancer cells with wild-type p53")
      (:left "for its ASPP2"
       :right "to fully enhance p53 pro-apoptotic activity")
      (:left "for Raf CAAX"
       :right "to stimulate the full transcriptional activity of p53 via ASPP2")))

(define-rule-record  ; #<PSR-1131 {transitive-clause-without-object} → that transitive-clause-without-object>
  :form (transitive-clause-without-object
         (that transitive-clause-without-object))
  :count 2
  :function compose-that-with-vp
  :contexts
     ((:left "that"
       :right "we used")))

(define-rule-record  ; #<PSR-1444 {verb+ed} → be verb+ed>
  :form (verb+ed (be verb+ed))
  :count 91
  :function nil
  :contexts
     ((:left "is"
       :right "bound")
      (:left "been"
       :right "proposed")
      (:left "were"
       :right "immunoprecipitated")
      (:left "is"
       :right "mutated")
      (:left "is"
       :right "involved")
      (:left "is"
       :right "down-regulated")
      (:left "is not"
       :right "affected")
      (:left "be"
       :right "influenced")
      (:left "is"
       :right "required")
      (:left "were"
       :right "measured")
      (:left "was not"
       :right "affected")
      (:left "were"
       :right "treated")
      (:left "were"
       :right "starved")
      (:left "were"
       :right "constructed")
      (:left "is"
       :right "mediated")
      (:left "was"
       :right "compared")
      (:left "be"
       :right "mediated")
      (:left "was"
       :right "tested")
      (:left "be"
       :right "investigated")
      (:left "is"
       :right "phosphorylated")
      (:left "were"
       :right "analysed")
      (:left "was"
       :right "measured")
      (:left "was"
       :right "digested")
      (:left "is"
       :right "regulated")
      (:left "recently been"
       :right "shown")
      (:left "is"
       :right "sustained")
      (:left "was"
       :right "established")
      (:left "was"
       :right "observed")
      (:left "is"
       :right "associated")
      (:left "been"
       :right "validated")
      (:left "are"
       :right "found")
      (:left "be"
       :right "favored")
      (:left "was"
       :right "associated")
      (:left "was"
       :right "phosphorylated")
      (:left "are"
       :right "needed")
      (:left "is"
       :right "recruited")
      (:left "is"
       :right "inhibited")
      (:left "is not"
       :right "required")
      (:left "is"
       :right "induced")
      (:left "was"
       :right "detected")
      (:left "were"
       :right "stimulated")
      (:left "were"
       :right "grown")
      (:left "be"
       :right "phosphorylated")
      (:left "was"
       :right "performed")
      (:left "was"
       :right "purified")
      (:left "was"
       :right "used")
      (:left "is"
       :right "disrupted")
      (:left "is"
       :right "considered")))

(define-rule-record  ; #<PSR-1418 {verb+ed} → have verb+ed>
  :form (verb+ed (have verb+ed))
  :count 5
  :function nil
  :contexts
     ((:left "have"
       :right "used")
      (:left "has"
       :right "been")
      (:left "have"
       :right "demonstrated")
      (:left "have"
       :right "shown")))

(define-rule-record  ; #<PSR-1404 {verb} → do verb>
  :form (verb (do verb))
  :count 21
  :function absorb-auxiliary
  :contexts
     ((:left "increase"
       :right "increase")
      (:left "vanish"
       :right "vanish")
      (:left "behave"
       :right "behave")
      (:left "rise"
       :right "rise")
      (:left "become"
       :right "become")
      (:left "follow"
       :right "follow")
      (:left "precede"
       :right "precede")
      (:left "remain"
       :right "remain")
      (:left "drop"
       :right "drop")
      (:left "reach"
       :right "reach")
      (:left "did not"
       :right "detect")
      (:left "did not"
       :right "alter")
      (:left "do not"
       :right "influence")
      (:left "do not"
       :right "alter")
      (:left "do not"
       :right "require")
      (:left "did not"
       :right "show")
      (:left "do not"
       :right "know")
      (:left "do not"
       :right "allow")))

(define-rule-record  ; #<PSR-665 {verb} → time verb>
  :form (verb (time verb))
  :count 3
  :function add-time-adjunct
  :contexts
     ((:left "now"
       :right "have")
      (:left "time"
       :right "reach")))

(define-rule-record  ; #<PSR-1391 {verb} → to verb>
  :form (verb (to verb))
  :count 56
  :function make-infinitive
  :contexts
     ((:left "to"
       :right "probe")
      (:left "to"
       :right "have")
      (:left "to"
       :right "amplify")
      (:left "to"
       :right "promote")
      (:left "to"
       :right "inhibit")
      (:left "to"
       :right "suppress")
      (:left "To"
       :right "determine")
      (:left "To"
       :right "assess")
      (:left "to"
       :right "regulate")
      (:left "to"
       :right "phosphorylate")
      (:left "to"
       :right "bind")
      (:left "to"
       :right "examine")
      (:left "to"
       :right "dissect")
      (:left "To"
       :right "validate")
      (:left "To"
       :right "verify")
      (:left "to"
       :right "induce")
      (:left "to"
       :right "show")
      (:left "to"
       :right "stimulate")
      (:left "to"
       :right "hyperactivate")
      (:left "to"
       :right "enhance")
      (:left "to"
       :right "elucidate")
      (:left "to"
       :right "activate")
      (:left "to"
       :right "remove")
      (:left "To"
       :right "test")
      (:left "to"
       :right "raise")
      (:left "to"
       :right "dissociate")
      (:left "to"
       :right "be")))

(define-rule-record  ; #<PSR-1241 {vg+ed} → as vg+ed>
  :form (vg+ed (as vg+ed))
  :count 1
  :function interpret-adverb+verb
  :contexts
     ((:left "as"
       :right "indicated")))

(define-rule-record  ; #<PSR-1445 {vg+ed} → be vg+ed>
  :form (vg+ed (be vg+ed))
  :count 10
  :function check-passive-and-add-tense/aspect
  :contexts
     ((:left "is"
       :right "directly translated")
      (:left "are not"
       :right "fully understood")
      (:left "is"
       :right "also down-regulated")
      (:left "were"
       :right "considerably decreased")
      (:left "was"
       :right "slightly decreased")
      (:left "were"
       :right "largely preserved")
      (:left "are"
       :right "frequently confounded")
      (:left "was"
       :right "also observed")))

(define-rule-record  ; #<PSR-1419 {vg+ed} → have vg+ed>
  :form (vg+ed (have vg+ed))
  :count 2
  :function nil
  :contexts
     ((:left "have"
       :right "recently shown")))

(define-rule-record  ; #<PSR-222484 {vg+ed} → vg+ed in-vitro>
  :form (vg+ed (vg+ed in-vitro))
  :count 3
  :function interpret-in-vivo-vitro
  :contexts
     ((:left "phosphorylated"
       :right "in vitro")))

(define-rule-record  ; #<PSR-1442 {vg+ing} → be vg+ing>
  :form (vg+ing (be vg+ing))
  :count 1
  :function nil
  :contexts
     ((:left "are"
       :right "currently using")))

(define-rule-record  ; #<PSR-1420 {vg+passive} → have vg+passive>
  :form (vg+passive (have vg+passive))
  :count 5
  :function nil
  :contexts
     ((:left "has"
       :right "been proposed")
      (:left "has"
       :right "recently been shown")
      (:left "has"
       :right "been validated")))

(define-rule-record  ; #<PSR-1129 {vg+passive} → that vg+passive>
  :form (vg+passive (that vg+passive))
  :count 1
  :function compose-that-with-vp
  :contexts
     ((:left "that"
       :right "is phosphorylated")))

(define-rule-record  ; #<PSR-1405 {vg} → do vg>
  :form (vg (do vg))
  :count 5
  :function absorb-auxiliary
  :contexts
     ((:left "any time reach"
       :right "any time reach")
      (:left "some time reach"
       :right "some time reach")
      (:left "ever reach"
       :right "ever reach")
      (:left "always remain"
       :right "always remain")
      (:left "does not"
       :right "directly phosphorylate")))

(define-rule-record  ; #<PSR-1134 {vg} → which vg>
  :form (vg (which vg))
  :count 2
  :function compose-wh-with-vp
  :contexts
     ((:left "which"
       :right "has")))

(define-rule-record  ; #<PSR-1239 {vp+ed} → as vp+ed>
  :form (vp+ed (as vp+ed))
  :count 2
  :function interpret-adverb+verb
  :contexts
     ((:left "as"
       :right "detected by immunofluorescence")
      (:left "As"
       :right "shown in Figure S1")))

(define-rule-record  ; #<PSR-1128 {vp+passive} → that vp+passive>
  :form (vp+passive (that vp+passive))
  :count 4
  :function compose-that-with-vp
  :contexts
     ((:left "that"
       :right "is bound to NRAS")
      (:left "that"
       :right "is phosphorylated on Ser-602")
      (:left "that"
       :right "is phosphorylated on serine and tyrosine")
      (:left "that"
       :right "has been validated by the success of RAF and MEK inhibitors in clinical trials 6–8")))

(define-rule-record  ; #<PSR-1135 {vp+passive} → which vp+passive>
  :form (vp+passive (which vp+passive))
  :count 2
  :function compose-wh-with-vp
  :contexts
     ((:left "which"
       :right "is disrupted by addition of       guanine nucleotides")))

(define-rule-record  ; #<PSR-1127 {vp} → that vp>
  :form (vp (that vp))
  :count 16
  :function compose-that-with-vp
  :contexts
     ((:left "that"
       :right "regulate ERK nuclear translocation")
      (:left "that"
       :right "alters switch region dynamics")
      (:left "that"
       :right "is in the activated (GTP–bound) state")
      (:left "that"
       :right "do not require RAF signaling")
      (:left "that"
       :right "drives resistance to RAF inhibition in BRAFV600E cell lines")
      (:left "that"
       :right "elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies [12]")
      (:left "that"
       :right "engender C-RAF activation (e.g., oncogenic RAS mutations)")
      (:left "that"
       :right "express mutant BRAF (Figure S1G)")
      (:left "that"
       :right "is also highly selective for BRAF")
      (:left "that"
       :right "is highly selective")
      (:left "that"
       :right "inhibits V600EBRAF at 40 nM")
      (:left "that"
       :right "may stabilize nucleotide-free Ras in vivo")
      (:left "that"
       :right "might stabilize       nucleotide-free Ras")))

(define-rule-record  ; #<PSR-1133 {vp} → which vp>
  :form (vp (which vp))
  :count 3
  :function compose-wh-with-vp
  :contexts
     ((:left "which"
       :right "will translocate and activate p53")
      (:left "which"
       :right "is constitutively present at the plasma membrane")
      (:left "which"
       :right "also target the switch domains")))
