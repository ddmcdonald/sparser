(in-package :sparser) 
(defparameter *jan-dry-run*
  `((p "We next considered the effect of Ras monoubiquitination on
GAP–mediated hydrolysis.")
    (p "To this end we compared the rate of GTP hydrolysis for Ras and mUbRas
in the presence of the catalytic domains of two GAPs, NF1 (NF1 333)
and p120GAP(GAP–334).")
    (p "At a GAP–to–Ras ratio of 1:500, we observed an order of magnitude
increase in the rate of GTP hydrolysis for unmodified Ras relative to
the intrinsic rate of GTP hydrolysis.")
    (p "No increase in the rate of GTP hydrolysis was observed for mUbRas in
the presence of the same GAP-to-Ras ratio.")
    (p "Therefore, mUbRas is insensitive to GAP–mediated regulation, similar
to an oncogenic RasG12V mutation (9).") ;; FIX THE BFOOTNOTE INDICATOR (9) which was mutation9
    (p "We obtained similar results using K–Ras, indicating that the effects
of monoubiquitination on Ras are not isoform–specific.")

    (p "To verify that the differences between the enzymatic and chemical
ubiquitination linkers (seven bonds and five bonds, respectively) do
not alter GAP–responsiveness, we placed an additional cysteine at the
c–terminus of Ubiquitin (Ubiquitin C77), thereby creating a linker one
bond longer than the native linker. ")
    (p "We measured the rate of GAP–mediated GTP hydrolysis and observed that
the response of Ras ligated to Ubiquitin C77 was identical to Ras
ligated to Ubiquitin G76C.")
    (p "These results indicate that variations in the linker length on this
scale (1–2 bonds) do not influence the sensitivity of mUbRas to GAP
downregulation.")

    (p "To validate the use of an in vitro system to dissect the mechanism of
Ras regulation, we measured the sensitivity of mUbRas to GAP–mediated
hydrolysis in a cellular reconstitution system.")
    (p "We immunoprecipitated Ras from HEK293T cells and compared the
sensitivity of the monoubiquitinated and unmodified fractions of Ras
to regulation by GAP.")
    (p "Monoubiquitinated K–Ras is less sensitive than the unmodified protein
to GAP–mediated GTP hydrolysis.")
    (p "These data support our in vitro findings that monoubiquitination
increases the population of active, GTP–bound Ras through a defect in
sensitivity to GAP–mediated regulation.")


    (p "It was established recently that monoubiquitination increases the
proportion of Ras that is in the activated (GTP–bound) state, that
monoubiquitination enhances association with the downstream effectors
Raf and PI3–Kinase, and that mutation of the primary site of
monoubiquitination impairs oncogenic Ras–mediated tumorigenesis.")
    (p "Here we show that monoubiquitination decreases the sensitivity of Ras
to GAP–mediated hydrolysis.")
    (p "A major advance was our ability to easily generate mUbRas, modified at
a single site, in a form suitable for detailed biophysical studies.")
    (p "This chemical ligation strategy will likely be useful for the study of
other monoubiquitinated proteins.")
    (p "Surprisingly, monoubiquitination did not alter the intrinsic activity
of Ras, despite the size of the modification.")
    (p "Our modeling and NMR analyses indicated that Ubiquitin dynamically
samples a broad surface area of Ras that alters switch region
dynamics.")
    (p "These results led us to examine the effect of monoubiquitination on
the interaction of Ras with its cognate GEF and GAPs, which also
target the switch domains.")
    (p "The analysis revealed that monoubiquitination abrogates GAP–mediated
GTP hydrolysis.")
    (p "All other activities, including the ability to bind regulators, were
largely preserved and our kinetic modeling suggests that the GAP
defect will dominate.")
    (p "Furthermore, this outcome was specific to monoubiquitination at
position 147.")
    (p "Thus our work establishes an entirely new mode of Ras activation in
which signaling is sustained even in the absence of hormone stimulus
or oncogene mutation.")





    (p "It has recently been shown that oncogenic RAS can enhance the
apoptotic function of p53 via ASPP1 and ASPP2.")
    (p "Mechanistically ASPP1 and ASPP2 bind RAS-GTP and potentiates RAS
signalling to enhance p53 mediated apoptosis.")
    (p "As RAS is upstream of several signalling cascades, we queried whether
the activity of ASPP2 is regulated by the activation of a RAS-mediated
signalling pathway.")
    (p "One of the most studied downstream pathways of RAS signalling is the
Raf-MAPK pathway.")
    (p "Interestingly, we observed two conserved putative MAPK phosphorylation
sites in ASPP1 and ASPP2.")
    (p "The ASPP1 sites are at residues 671 and 746, and the ASPP2 sites are
at residues 698 and 827.")
    (p "We thus tested whether RAS activation may regulate ASPP2
phosphorylation.")
    (p "An in vitro phophorylation assay was performed with a purified
C-terminus fragment of ASPP2 (693-1128) containing both MAPK putative
phosphorylation sites.")
    (p "When compared to p38 SAPK, MAPK1 was clearly able to phosphorylate the
ASPP2 fragment in vitro.")
    (p "Histone 2B phosphorylated by p38 SAPK had high levels of incorporated
32P, suggesting that p38 SAPK was active; while under the same
conditions, ASPP2 (693-1128) fragment phosphorylated by p38 SAPK had
very low levels of incorporated 32P, indicating that p38 SAPK is not
an efficient kinase for ASPP2 phosphorylation.")
    (p "The phosphorylated ASPP2 fragment by MAPK1 was digested by trypsin and
fractioned on a high performance liquid chromatography (HPLC). 
Each eluted fraction was measured for its radioactivity content.
The fractions representing these radioactive peaks were
analysed by mass spectrometry.")
    (p "Of the two radioactive peaks, one represented the linker region
between the GST and our ASPP2 fragment and the other corresponded to a
fragment of the same mass as that containing the second putative
phosphorylation site, serine 827.")
    (p "Hence ASPP2 can be phosphorylated at serine 827 by MAPK1 in vitro.")

    (p "We and others have recently shown that ASPP2 can potentiate RAS
signaling by binding directly via the ASPP2 N-terminus.")
    (p "Moreover, the RAS-ASPP interaction enhances the transcription function
of p53 in cancer cells.")
    (p "Until now, it has been unclear how RAS could affect ASPP2 to enhance
p53 function.")
    (p "We show here that ASPP2 is phosphorylated by the RAS/Raf/MAPK pathway
and that this phosphorylation leads to its increased translocation to
the cytosol/nucleus and increased binding to p53, providing an
explanation of how RAS can activate p53 pro-apoptotic functions.")
    (p "Additionally, RAS/Raf/MAPK pathway activation stabilizes ASPP2
protein, although the underlying mechanism remains to be investigated.")))


(defvar *known-breaks* nil)
(defvar *tested* '(0))
(defun reset-dectest ()
  (setq *tested* '(0)))

(defparameter *sentences* *dec-tests*)
(defun test-jan ()
  (setq *sentences* *jan-dry-run*)
  nil)

(defun test-dec ()
  (setq *sentences* *dec-tests*)
  nil)


(defun dectest(n &optional (sentences *sentences*))
  (let ((test  (nth (- n 1) sentences)))
    (print (list n test))
    (if (member n *known-breaks*)
        (print "skipping because of known problems")
        (progn
          (eval test)
          (terpri) 
          (terpri)
          (print "SEMANTIC FOREST ------------------------------------")
          (pprint
           (tts-semantics))
          (print "___________________________________________")
          (terpri)
          (terpri)
          (terpri)
          ))))

(defun retest () 
  (loop for i from (+ 1 (car *tested*)) to 100 
    when (<= i (length *sentences*))
    do 
    (push i *tested*) (dectest i)))



(defun bad () 
  (push (car *tested*) *known-breaks*) 
  (retest))


