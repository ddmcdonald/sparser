;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Chunking reference results for chunk-results
;;; 2/11/19 20:52:20

(in-package :sparser)

(defparameter *CHUNK-RESULTS*
  '(
("We propose that when BRAF is  inhibited, it escapes this auto-inhibited fate and is recruited to the plasma membrane by RAS, where it forms a stable complex with CRAF." ;; #0
  ((:ng "we") (:vg "propose") (:ng "braf") (:vg "is inhibited") (:ng "it")
   (:vg "escapes") (:ng "this auto - inhibited fate") (:vg "is recruited")
   (:ng "the plasma membrane") (:ng "ras") (:ng "it") (:vg "forms")
   (:ng "a stable complex") (:ng "craf")))

("Based on these results, we hypothesized that COT and C-RAF drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling." ;; #1
  ((:vg "based") (:ng "these results") (:ng "we") (:vg "hypothesized")
   (:ng "cot and c - raf") (:vg "drive") (:ng "resistance")
   (:ng "raf inhibition") (:nil "predominantly") (:ng "re - activation")
   (:ng "mapk signaling")))

("Similarly, all four drugs inhibited ERK in SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G)." ;; #2
  ((:nil "similarly") (:ng "all four drugs") (:vg "inhibited") (:ng "erk")
   (:ng "skmel 24 , skmel 28 , d 25 , and wm 266 . 4 cells")
   (:ng "another four lines") (:vg "express") (:ng "mutant braf")))

("However, our results provide the first direct evidence for a protein that 
 may stabilize nucleotide-free Ras in vivo." ;; #3
  ((:ng "our results") (:vg "provide") (:ng "the first direct evidence")
   (:ng "a protein") (:vg "may stabilize") (:ng "nucleotide - free ras")
   (:adjg "in vivo")))

("Identification of resistance mechanisms in a manner that elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies [12]." ;; #4
  ((:ng "identification") (:ng "resistance mechanisms") (:ng "a manner")
   (:vg "elucidates") (:ng "alternative ' druggable ' targets")
   (:vg "may inform") (:ng "effective long - term treatment strategies")))

("Together, these results provide new insights into resistance mechanisms involving the MAPK pathway and articulate an integrative approach through which high-throughput functional screens may inform the development of novel therapeutic strategies." ;; #5
  ((:nil "together") (:ng "these results") (:vg "provide") (:ng "new insights")
   (:ng "resistance mechanisms") (:vg "involving") (:ng "the mapk pathway")
   (:vg "articulate") (:ng "an integrative approach")
   (:ng "high - throughput functional screens") (:vg "may inform")
   (:ng "the development") (:ng "novel therapeutic strategies")))

("We obtained similar results using K–Ras, indicating that the effects
of monoubiquitination on Ras are not isoform–specific." ;; #6
  ((:ng "we") (:vg "obtained") (:ng "similar results") (:vg "using")
   (:ng "k - ras") (:vg "indicating") (:ng "the effects")
   (:ng "monoubiquitination") (:ng "ras") (:vg "are") (:nil "not")
   (:adjg "isoform - specific")))

("These data support our in vitro findings that monoubiquitination
increases the population of active, GTP–bound Ras through a defect in
sensitivity to GAP–mediated regulation." ;; #7
  ((:ng "these data") (:vg "support") (:ng "our in vitro findings")
   (:ng "monoubiquitination") (:vg "increases") (:ng "the population")
   (:adjg "active") (:ng "gtp - bound ras") (:ng "a defect")
   (:ng "sensitivity") (:ng "gap - mediated regulation")))

("It was established recently that monoubiquitination increases the
proportion of Ras that is in the activated (GTP–bound) state, that
monoubiquitination enhances association with the downstream effectors
Raf and PI3–Kinase, and that mutation of the primary site of
monoubiquitination impairs oncogenic Ras–mediated tumorigenesis." ;; #8
  ((:ng "it") (:vg "was established") (:nil "recently")
   (:ng "monoubiquitination") (:vg "increases") (:ng "the proportion")
   (:ng "ras") (:vg "is") (:ng "the activated ( gtp - bound ) state")
   (:ng "monoubiquitination") (:vg "enhances") (:ng "association")
   (:ng "the downstream effectors raf and pi 3 - kinase") (:ng "mutation")
   (:ng "the primary site") (:ng "monoubiquitination") (:vg "impairs")
   (:ng "oncogenic ras - mediated tumorigenesis")))

("Our modeling and NMR analyses indicated that Ubiquitin dynamically
samples a broad surface area of Ras that alters switch region
dynamics." ;; #9
  ((:ng "our modeling and nmr analyses") (:vg "indicated") (:ng "ubiquitin")
   (:vg "dynamically samples") (:ng "a broad surface area") (:ng "ras")
   (:vg "alters") (:ng "switch region dynamics")))

("These results led us to examine the effect of monoubiquitination on
the interaction of Ras with its cognate GEF and GAPs, which also
target the switch domains." ;; #10
  ((:ng "these results") (:vg "led") (:ng "us") (:vg "to examine")
   (:ng "the effect") (:ng "monoubiquitination") (:ng "the interaction")
   (:ng "ras") (:ng "its cognate gef and gaps") (:ng "which")
   (:vg "also target") (:ng "the switch domains")))

("We show here that ASPP2 is phosphorylated by the RAS/Raf/MAPK pathway
and that this phosphorylation leads to its increased translocation to
the cytosol/nucleus and increased binding to p53, providing an
explanation of how RAS can activate p53 pro-apoptotic functions." ;; #11
  ((:ng "we") (:vg "show") (:nil "here") (:ng "aspp 2")
   (:vg "is phosphorylated") (:ng "the ras / raf / mapk pathway")
   (:ng "this phosphorylation") (:vg "leads")
   (:ng "its increased translocation") (:ng "the cytosol / nucleus")
   (:vg "increased") (:ng "binding") (:ng "p 53") (:vg "providing")
   (:ng "an explanation") (:ng "ras") (:vg "can activate")
   (:ng "p 53 pro - apoptotic functions")))

("Raf CAAX increases Bax-luciferase levels by 2.5 fold over the baseline of p53 and ASPP2 alone." ;; #12
  ((:ng "raf caax") (:vg "increases") (:ng "bax - luciferase levels")
   (:nil "2 . 5 fold") (:ng "the baseline") (:ng "p 53 and aspp 2")
   (:nil "alone")))

("These results suggest that MAPK phosphorylation of ASPP2 Ser827 is necessary for Raf CAAX to stimulate the full transcriptional activity of p53 via ASPP2." ;; #13
  ((:ng "these results") (:vg "suggest") (:ng "mapk phosphorylation")
   (:ng "aspp 2 ser 827") (:vg "is") (:adjg "necessary") (:ng "raf caax")
   (:vg "to stimulate") (:ng "the full transcriptional activity") (:ng "p 53")
   (:ng "aspp 2")))

("It has recently been shown that activation of RAS results in ASPP2 translocation from the plasma membrane to the cytosol and nucleus [2]." ;; #14
  ((:ng "it") (:vg "has recently been shown") (:ng "activation") (:ng "ras")
   (:vg "results") (:ng "aspp 2 translocation") (:ng "the plasma membrane")
   (:ng "the cytosol and nucleus")))

("We show here that ASPP2 is phosphorylated by the RAS/Raf/MAPK pathway and that this phosphorylation leads to its increased translocation to the cytosol/nucleus and increased binding to p53, providing an explanation of how RAS can activate p53 pro-apoptotic functions (Figure 5)." ;; #15
  ((:ng "we") (:vg "show") (:nil "here") (:ng "aspp 2")
   (:vg "is phosphorylated") (:ng "the ras / raf / mapk pathway")
   (:ng "this phosphorylation") (:vg "leads")
   (:ng "its increased translocation") (:ng "the cytosol / nucleus")
   (:vg "increased") (:ng "binding") (:ng "p 53") (:vg "providing")
   (:ng "an explanation") (:ng "ras") (:vg "can activate")
   (:ng "p 53 pro - apoptotic functions")))

("The ability of oncogenic RAS to stimulate apoptosis allows the cell to have a fail-proof mechanism: mutated RAS signals to p53 via ASPP2 to induce apoptosis instead of uncontrolled proliferation." ;; #16
  ((:ng "the ability") (:ng "oncogenic ras") (:vg "to stimulate")
   (:ng "apoptosis") (:vg "allows") (:ng "the cell") (:vg "to have")
   (:ng "a fail - proof mechanism") (:ng "mutated ras") (:vg "signals")
   (:ng "p 53") (:ng "aspp 2") (:vg "to induce") (:ng "apoptosis")
   (:ng "uncontrolled proliferation")))

("Wild-type ASPP2, but not mutant ASPP2 (S827A), translocates to the cytosol and nucleus upon oncogenic RAS activation and this results in an increased interaction with p53." ;; #17
  ((:ng "wild - type aspp 2") (:ng "mutant aspp 2") (:vg "translocates")
   (:ng "the cytosol and nucleus") (:ng "oncogenic ras activation")
   (:ng "this") (:vg "results") (:ng "an increased interaction") (:ng "p 53")))

("These results indicate that the differential shuttling behavior of the mutant is a consequence of delayed phosphorylation of ERK by MEK rather than dimerization." ;; #18
  ((:ng "these results") (:vg "indicate")
   (:ng "the differential shuttling behavior") (:ng "the mutant") (:vg "is")
   (:ng "a consequence") (:ng "delayed phosphorylation") (:ng "erk")
   (:ng "mek") (:ng "dimerization")))

))