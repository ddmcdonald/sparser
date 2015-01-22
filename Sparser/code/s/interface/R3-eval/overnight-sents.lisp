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


