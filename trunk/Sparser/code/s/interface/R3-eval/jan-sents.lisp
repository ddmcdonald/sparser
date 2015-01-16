(in-package :sparser)

(defparameter *jan-sents*
    `(

;;; first article para 18 (art# para# sent# sentence)
  (1 p18 1 "We next considered the effect of Ras monoubiquitination on
GAP–mediated hydrolysis.")
  (1 p18 2  "To this end we compared the rate of GTP hydrolysis for Ras and mUbRas
in the presence of the catalytic domains of two GAPs, NF1 (NF1 333)
and p120GAP(GAP–334).")
  (1 p18 3  "At a GAP–to–Ras ratio of 1:500, we observed an order of magnitude
increase in the rate of GTP hydrolysis for unmodified Ras relative to
the intrinsic rate of GTP hydrolysis.")
  (1 p18 4  "No increase in the rate of GTP hydrolysis was observed for mUbRas in
the presence of the same GAP-to-Ras ratio.")
  (1 p18 5  "Therefore, mUbRas is insensitive to GAP–mediated regulation, similar
to an oncogenic RasG12V mutation (9).") ;; FIX THE BFOOTNOTE INDICATOR (9) which was mutation9
  (1 p18 6  "We obtained similar results using K–Ras, indicating that the effects
of monoubiquitination on Ras are not isoform–specific.")

  (1 p19 1  "To verify that the differences between the enzymatic and chemical
ubiquitination linkers (seven bonds and five bonds, respectively) do
not alter GAP–responsiveness, we placed an additional cysteine at the
c–terminus of Ubiquitin (Ubiquitin C77), thereby creating a linker one
bond longer than the native linker. ")
  (1 p19 2  "We measured the rate of GAP–mediated GTP hydrolysis and observed that
the response of Ras ligated to Ubiquitin C77 was identical to Ras
ligated to Ubiquitin G76C.")
  (1 p19 3  "These results indicate that variations in the linker length on this
scale (1–2 bonds) do not influence the sensitivity of mUbRas to GAP
downregulation.")

  (1 p20 1  "To validate the use of an in vitro system to dissect the mechanism of
Ras regulation, we measured the sensitivity of mUbRas to GAP–mediated
hydrolysis in a cellular reconstitution system.")
  (1 p20 2  "We immunoprecipitated Ras from HEK293T cells and compared the
sensitivity of the monoubiquitinated and unmodified fractions of Ras
to regulation by GAP.")
  (1 p20 3  "Monoubiquitinated K–Ras is less sensitive than the unmodified protein
to GAP–mediated GTP hydrolysis.")
  (1 p20 4  "These data support our in vitro findings that monoubiquitination
increases the population of active, GTP–bound Ras through a defect in
sensitivity to GAP–mediated regulation.")

;; from discussion
  (1 p28 1  "It was established recently that monoubiquitination increases the
proportion of Ras that is in the activated (GTP–bound) state, that
monoubiquitination enhances association with the downstream effectors
Raf and PI3–Kinase, and that mutation of the primary site of
monoubiquitination impairs oncogenic Ras–mediated tumorigenesis.")
  (1 p28 2  "Here we show that monoubiquitination decreases the sensitivity of Ras
to GAP–mediated hydrolysis.")
  (1 p28 3  "A major advance was our ability to easily generate mUbRas, modified at
a single site, in a form suitable for detailed biophysical studies.")
  (1 p28 4  "This chemical ligation strategy will likely be useful for the study of
other monoubiquitinated proteins.")
  (1 p28 5  "Surprisingly, monoubiquitination did not alter the intrinsic activity
of Ras, despite the size of the modification.")
  (1 p28 6  "Our modeling and NMR analyses indicated that Ubiquitin dynamically
samples a broad surface area of Ras that alters switch region
dynamics.")
  (1 p28 7  "These results led us to examine the effect of monoubiquitination on
the interaction of Ras with its cognate GEF and GAPs, which also
target the switch domains.")
  (1 p28 8  "The analysis revealed that monoubiquitination abrogates GAP–mediated
GTP hydrolysis.")
  (1 p28 9  "All other activities, including the ability to bind regulators, were
largely preserved and our kinetic modeling suggests that the GAP
defect will dominate.")
  (1 p28 10  "Furthermore, this outcome was specific to monoubiquitination at
position 147.")
  (1 p28  11 "Thus our work establishes an entirely new mode of Ras activation in
which signaling is sustained even in the absence of hormone stimulus
or oncogene mutation.")
  
  ;;; article 2 results section

  (2 res-p1 1  "It has recently been shown that oncogenic RAS can enhance the
apoptotic function of p53 via ASPP1 and ASPP2.")
  (2 res-p1 2  "Mechanistically ASPP1 and ASPP2 bind RAS-GTP and potentiates RAS
signalling to enhance p53 mediated apoptosis.")
  (2 res-p1 3 "As RAS is upstream of several signalling cascades, we queried whether
the activity of ASPP2 is regulated by the activation of a RAS-mediated
signalling pathway.")
  (2 res-p1 4 "One of the most studied downstream pathways of RAS signalling is the
Raf-MAPK pathway.")
  (2 res-p1 5 "Interestingly, we observed two conserved putative MAPK phosphorylation
sites in ASPP1 and ASPP2.")
  (2 res-p1 6 "The ASPP1 sites are at residues 671 and 746, and the ASPP2 sites are
at residues 698 and 827.")
  (2 res-p1 7 "We thus tested whether RAS activation may regulate ASPP2
phosphorylation.")
  (2 res-p1 8 "An in vitro phophorylation assay was performed with a purified
C-terminus fragment of ASPP2 (693-1128) containing both MAPK putative
phosphorylation sites.")
  (2 res-p1 9 "When compared to p38 SAPK, MAPK1 was clearly able to phosphorylate the
ASPP2 fragment in vitro.")
  (2 res-p1 10 "Histone 2B phosphorylated by p38 SAPK had high levels of incorporated
32P, suggesting that p38 SAPK was active; while under the same
conditions, ASPP2 (693-1128) fragment phosphorylated by p38 SAPK had
very low levels of incorporated 32P, indicating that p38 SAPK is not
an efficient kinase for ASPP2 phosphorylation.")
  (2 res-p1 11 "The phosphorylated ASPP2 fragment by MAPK1 was digested by trypsin and
fractioned on a high performance liquid chromatography (HPLC). 
Each eluted fraction was measured for its radioactivity content.
The fractions representing these radioactive peaks were
analysed by mass spectrometry.")
  (2 res-p1 12 "Of the two radioactive peaks, one represented the linker region
between the GST and our ASPP2 fragment and the other corresponded to a
fragment of the same mass as that containing the second putative
phosphorylation site, serine 827.")
  (2 res-p1 13  "Hence ASPP2 can be phosphorylated at serine 827 by MAPK1 in vitro.")

;;; discussion p2

  (2 disc-p2 1  "We and others have recently shown that ASPP2 can potentiate RAS
signaling by binding directly via the ASPP2 N-terminus.")
  (2 disc-p2 2  "Moreover, the RAS-ASPP interaction enhances the transcription function
of p53 in cancer cells.")
  (2 disc-p2 3  "Until now, it has been unclear how RAS could affect ASPP2 to enhance
p53 function.")
  (2 disc-p2 4  "We show here that ASPP2 is phosphorylated by the RAS/Raf/MAPK pathway
and that this phosphorylation leads to its increased translocation to
the cytosol/nucleus and increased binding to p53, providing an
explanation of how RAS can activate p53 pro-apoptotic functions.")
  (2 disc-p2 5 "Additionally, RAS/Raf/MAPK pathway activation stabilizes ASPP2
protein, although the underlying mechanism remains to be investigated.")))





