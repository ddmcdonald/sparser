(in-package :sparser)
(defparameter *overnight-sentences*
      '(
        (p "Ras, like all GTPases, cycles between an inactive GDP-bound state and an active GTP-bound state. ")
        (p "The transition from the inactive to active state requires formation of nucleotide-free Ras through the action of exchange factors. ")
        (p "This state is considered to be a short-lived transition state intermediate in vivo [36] based on the relatively high GTP: GDP ratio in vivo [37], the ability of GTP to dissociate the GEF-Ras complex in vitro [31], and the assumption that there are no proteins in vivo that might stabilize nucleotide-free Ras and prevent GTP loading. ")
        (p "However, our results provide the first direct evidence for a protein that may stabilize nucleotide-free Ras in vivo.")
        (p "We demonstrate that the RBD of PI3KC2β binds nucleotide-free Ras in vitro (Fig. 5).")
        (p "In contrast to the GEF-Ras complex, which is disrupted by addition of guanine nucleotides, the PI3KC2β RBD-Ras complex is stable even in the presence of high concentrations of GTP or GDP.")
        (p "These data suggest that PI3KC2β binding to nucleotide-free Ras in vivo may prevent loading of nucleotides onto Ras.")
        (p "Although current methods do not allow for detection of nucleotide-free GTPases in vivo, our BiFC results provide additional support for our model. ")
        (p "PI3KC2β preferentially interacts with Ras17N, which has a 30-fold lower affinity for nucleotide compared to wild type Ras and therefore should exist for longer periods in the nucleotide-free state. ")
        (p "As a result, BiFC traps this form of Ras resulting in greater fluorescence complementation for Ras17N (and Ras17N/69N) compared to wild type or constitutively activated Ras (61L or 12V).")
        
        
        (p "A synthetic peptide encoding amino acids 824-832, with a phosphoserine at residue 827, was used to raise antibodies.")
        (p "A polyclonal antibody NGH.S4 was purified by affinity column purification.")
        (p "To test the efficacy of the purified phospho-specific antibody, a non-radioactive in vitro phosphorylation assay was performed on the purified GST-ASPP2 fragment (693-1128) with recombinant MAPK1.")
        (p "Figure 1C shows that the phospho-specific antibody is specific for the ASPP2 fragment phosphorylated in vitro by MAPK.")
        (p "To test whether endogenous ASPP2 could be phosphorylated in cells, Saos2 cells were grown in low serum for 50 hours to remove all background stimulation of RAS, after which the cells were stimulated with EGF and 20% fetal calf serum (FCS).")
        (p "Phosphorylated endogenous ASPP2 was detected by the phospho-specific antibody 30 minutes after RAS stimulation (Figure 1D).")
        (p "ASPP2 phosphorylation was rapid and transient as 3 hours after EGF stimulation phosphorylated ASPP2 was barely detectable. ")
        ;;(p "Moreover, with another different phospho-ASPP2 antibody, ES1, ASPP2 phosphorylation was also observed in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT) [2,10,11] (Figure 1E).")
(p "Moreover, with another different phospho-ASPP2 antibody, ES1, ASPP2 phosphorylation was also observed in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT).")
        (p "The phospho-specific antibody for ASPP2 is specific as knockdown of ASPP2 resulted in a lack of detection of phospho-ASPP2. ")
        (p "All these demonstrate that ASPP2 is a novel substrate of MAPK and Ser827 of ASPP2 can be phosphorylated by RAS/MAPK pathway.")
        )
      )

(defparameter *sentences* *overnight-sentences*)

(defun test-overnight()
  (setq *sentinces* *overnight-sentences*))

(defun otst1 (n test stream)
  (print (list n test))
  (let ((*readout-relations* t))
    (declare (special *readout-relations*))
    (pp (second test))
    (output-relations n (second test) stream)
    ))

(defun write-overnight-csv-output (&optional (file (test-file-with-time "overnight-test" "csv")))
  (format t "~2%Writing result to ~a" file)
  (with-open-file (s file :direction :output :if-exists :supersede)

    (let ((res nil))
      (format s "~%Sent#, Event#, Subject, Event, Object, Site(s), Context, Sentence~&")
      (setq res (loop for tst in *overnight-sentences* for n from 1 collect (otst1 n tst s)))
      (format t "~%wrote file ~a" file)
      nil)
  ))



#||
Passage 1 (From PMC3441633)
Ras, like all GTPases, cycles between an inactive GDP-bound state and an active GTP-bound state. The transition from the inactive to active state requires formation of nucleotide-free Ras through the action of exchange factors. This state is considered to be a short-lived transition state intermediate in vivo [36] based on the relatively high GTP: GDP ratio in vivo [37], the ability of GTP to dissociate the GEF-Ras complex in vitro [31], and the assumption that there are no proteins in vivo that might stabilize nucleotide-free Ras and prevent GTP loading. However, our results provide the first direct evidence for a protein that may stabilize nucleotide-free Ras in vivo. We demonstrate that the RBD of PI3KC2β binds nucleotide-free Ras in vitro (Fig. 5). In contrast to the GEF-Ras complex, which is disrupted by addition of guanine nucleotides, the PI3KC2β RBD-Ras complex is stable even in the presence of high concentrations of GTP or GDP. These data suggest that PI3KC2β binding to nucleotide-free Ras in vivo may prevent loading of nucleotides onto Ras. Although current methods do not allow for detection of nucleotide-free GTPases in vivo, our BiFC results provide additional support for our model. PI3KC2β preferentially interacts with Ras17N, which has a 30-fold lower affinity for nucleotide compared to wild type Ras and therefore should exist for longer periods in the nucleotide-free state. As a result, BiFC traps this form of Ras resulting in greater fluorescence complementation for Ras17N (and Ras17N/69N) compared to wild type or constitutively activated Ras (61L or 12V).

Passage 2 (from PMC3847091)

A synthetic peptide encoding amino acids 824-832, with a phosphoserine at residue 827, was used to raise antibodies. A polyclonal antibody NGH.S4 was purified by affinity column purification. To test the efficacy of the purified phospho-specific
antibody, a non-radioactive in vitro phosphorylation assay was performed on the purified GST-ASPP2 fragment (693-1128) with recombinant MAPK1. Figure 1C shows that the phosphospecific antibody is specific for the ASPP2 fragment
phosphorylated in vitro by MAPK. To test whether endogenous ASPP2 could be phosphorylated in cells, Saos2 cells were grown in low serum for 50 hours to remove all background stimulation of RAS, after which the cells were stimulated with EGF and 20% fetal calf serum (FCS). Phosphorylated endogenous ASPP2 was detected by the phospho-specific antibody 30 minutes after RAS stimulation (Figure 1D). ASPP2 phosphorylation was rapid and transient as 3 hours after EGF
stimulation phosphorylated ASPP2 was barely detectable. Moreover, with another different phospho-ASPP2 antibody, ES1, ASPP2 phosphorylation was also observed in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT) [2,10,11] (Figure 1E). The phospho-specific antibody for ASPP2 is specific as knockdown of ASPP2 resulted in a lack of detection of phospho-ASPP2. All these demonstrate that ASPP2 is a novel substrate of MAPK and Ser827 of ASPP2 can be phosphorylated by RAS/MAPK pathway.

||#


(defparameter *overnight-sents*
    '(
      (1-1 "Ras, like all GTPases, cycles between an inactive GDP-bound state and an active GTP-bound state. ")
      (1-2 "The transition from the inactive to active state requires formation of nucleotide-free Ras through the action of exchange factors. ")
      (1-3 "This state is considered to be a short-lived transition state intermediate in vivo [36] based on the relatively high GTP: GDP ratio in vivo [37], the ability of GTP to dissociate the GEF-Ras complex in vitro [31], and the assumption that there are no proteins in vivo that might stabilize nucleotide-free Ras and prevent GTP loading. ")
      (1-4 "However, our results provide the first direct evidence for a protein that may stabilize nucleotide-free Ras in vivo.")
      (1-5 "We demonstrate that the RBD of PI3KC2β binds nucleotide-free Ras in vitro (Fig. 5).")
      (1-6 "In contrast to the GEF-Ras complex, which is disrupted by addition of guanine nucleotides, the PI3KC2β RBD-Ras complex is stable even in the presence of high concentrations of GTP or GDP.")
      (1-7 "These data suggest that PI3KC2β binding to nucleotide-free Ras in vivo may prevent loading of nucleotides onto Ras.")
      (1-8 "Although current methods do not allow for detection of nucleotide-free GTPases in vivo, our BiFC results provide additional support for our model. ")
      (1-9 "PI3KC2β preferentially interacts with Ras17N, which has a 30-fold lower affinity for nucleotide compared to wild type Ras and therefore should exist for longer periods in the nucleotide-free state. ")
      (1-10 "As a result, BiFC traps this form of Ras resulting in greater fluorescence complementation for Ras17N (and Ras17N/69N) compared to wild type or constitutively activated Ras (61L or 12V).")
        
        
      (2-1 "A synthetic peptide encoding amino acids 824-832, with a phosphoserine at residue 827, was used to raise antibodies.")
      (2-2 "A polyclonal antibody NGH.S4 was purified by affinity column purification.")
      (2-3 "To test the efficacy of the purified phospho-specific antibody, a non-radioactive in vitro phosphorylation assay was performed on the purified GST-ASPP2 fragment (693-1128) with recombinant MAPK1.")
      (2-4 "Figure 1C shows that the phospho-specific antibody is specific for the ASPP2 fragment phosphorylated in vitro by MAPK.")
      (2-5 "To test whether endogenous ASPP2 could be phosphorylated in cells, Saos2 cells were grown in low serum for 50 hours to remove all background stimulation of RAS, after which the cells were stimulated with EGF and 20% fetal calf serum (FCS).")
      (2-6 "Phosphorylated endogenous ASPP2 was detected by the phospho-specific antibody 30 minutes after RAS stimulation (Figure 1D).")
      (2-7 "ASPP2 phosphorylation was rapid and transient as 3 hours after EGF stimulation phosphorylated ASPP2 was barely detectable. ")
      ;;(2-8 "Moreover, with another different phospho-ASPP2 antibody, ES1, ASPP2 phosphorylation was also observed in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT) [2,10,11] (Figure 1E).")
      (2-9 "Moreover, with another different phospho-ASPP2 antibody, ES1, ASPP2 phosphorylation was also observed in a human colon cancer cell line HKe3 ER:HRASV12 cells, in which RAS activation is induced upon the addition of 4-hydroxytamoxifen (4-OHT).")
      (2-10 "The phospho-specific antibody for ASPP2 is specific as knockdown of ASPP2 resulted in a lack of detection of phospho-ASPP2. ")
      (2-11 "All these demonstrate that ASPP2 is a novel substrate of MAPK and Ser827 of ASPP2 can be phosphorylated by RAS/MAPK pathway.")
      )
      )

