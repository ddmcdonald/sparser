;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Biology-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  October 2014

;; Initiated 11/6/13 to setup experiments in reading biology texts
;; and constructing process models from them. 

(in-package :sparser)

; (defvar script :biology)  ;; For customizing what gets loaded
; (setup-bio) ;; load the bio model etc.
; (bio-traps) ;; turn off forest level parsing and this presently problematic parameter
;    (setq *note-text-relations* nil)

; (setq *kind-of-chart-processing-to-do* :successive-sweeps)
; (bio-setting)

; (setq *do-islands-2d-pass* nil)

(defun bf-on () ;; bio forest
  (setq *sweep-sentence-treetops* t)
  (setq *island-driving* t))
(defun bf-off ()
  (setq *sweep-sentence-treetops* nil)
  (setq *island-driving* nil))


;;----- phrases from the 12/3/14 Darpa trainng data
;
; (p "at Lys residues 104 and 147 of K-Ras, and Lys residues 117, 147 and 170 for H-Ras.")



;; "J" for Julie

(defun j1 ()
  (p "The most frequently mutated oncogenes in the deadliest cancers responsible for human mortality are KRAS, PIK3CA and BRAF."))
#|  
e35   BE   1 "the most frequently mutated oncogenes in the deadliest cancers responsible for human mortality are kras , pik 3 ca and braf" 22
           period
 |#

(defun j2 ()
  (p "Importantly the signaling enzymes encoded by PIK3CA and BRAF are, in part, regulated by direct binding to activated forms of the Ras proteins suggesting that dysregulation of this key step in signaling is critical for tumor formation. "))
#|  Needs work
importantly bio-entity encode [M:2 "by"] bio-entity be comma in part comma 
regulate [M:2 "by"] binding [M:2 "to"] activate form [M:2 "of"] bio-entity 
suggest that dysregulation [M:2 "of"] step [M:2 "in"] "signaling" be modifier [M:2 "for"] formation "." |#

(defun j3 ()
  (p "Ras acts as a molecular switch that is activated upon GTP loading and deactivated upon hydrolysis of GTP to GDP."))
#|  Needs to see the two vps
e31   ACT                     1 "ras acts as a molecular switch" 7
e9                               "that"
e33   ACTIVATE                8 "is activated upon" 11
e30   LOAD                    11 "gtp loading" 13
e16 e17                          "and" :: and, AND
e32   DEACTIVATE              14 "deactivated upon" 16
e28   HYDROLYSIS              16 "hydrolysis of gtp to gdp" 21
|#
(defun j4 ()
  (p "This switch mechanism is common to a wide variety of GTP-binding proteins and is mediated by a conserved structure called the G-domain that consists of five conserved G boxes."))
#| [this switch mechanism][ is][ common] to [ a wide variety] of [ gtp-binding proteins] 
   and [ is mediated] by [ a conserved structure][ called][ the g-domain][ that consists] of 
   [ five conserved g boxes]
Hits new cases in the second pass, but before that we got:
e45   BE                      1 "this switch mechanism is" 5
e6 e7                            "common" :: common, MODIFIER
e51   TO                      6 "to a wide variety" 10
e47   OF                      10 "of gtp - binding proteins" 15
e21 e22                          "and" :: and, AND
e50   MEDIATE+ED              16 "is mediated by a conserved structure" 22
e48   CALL                    22 "called the g - domain" 27
e36                              "that"
e37   CONSISTS                28 "consists" 29
e46   OF                      29 "of five conserved g boxes" 34
                                period|#

(defun j5 ()
  (p "Under physiological conditions, the rate of GDP or GTP release from the G-domain is slow."))
#|  
e24   UNDER                   1 "under physiological conditions" 4
e4                               "COMMA"
e30   RATE-OF-PROCESS         5 "the rate of gdp or gtp release from the g - domain is slow" 19
                                 period  |#

(defun j6 ()
  (p "As a consequence the GDP produced by GTP hydrolysis on Ras is trapped and the bulk of cellular Ras accumulates in the GDP-bound ‘off’ state, despite the high GTP/GDP ratio in the cytosol (1–3)."))
#|  Needs the hypen and slash specialists done. Also something for the scare quotes and the reference in parenthese
|#

(defun j7 ()
  (p "Growth factors can turn on Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms."))
#|  Fix comma-delimited-list to write a better edge so it will print nicely. 
    Make 'both' active
e46   TURN                    1 "growth factors can turn on ras by activating guanine nucleotide exchange factors ( gefs ) or by inhibiting the gtpase activating proteins ( gaps ) or by both mechanisms" 30
e34                              "PERIOD" |#

(defun j8 ()
  (p "RasGEFs bind to Ras and lower the transition energy for the nucleotide exchange of the bound GDP for the more abundant cytosolic GTP, whereas RasGAPs bind to Ras and catalyze GTP hydrolysis. "))
#|  needs lots of ordinarly / semi-biological vocabulary
|#

(defun j9 ()
  (p "The most prevalent oncogenic mutations in Ras (Gly12 and Gly13 in the G1 box, and Gln61 in the G3 box) preserve the GTP bound state by inhibiting intrinsic GTPase activity and by interfering with the ability of GAPs. "))
(defun j10 ()
  (p "Other less frequently observed mutations, such as those found in the G4 and G5 boxes, increase the rate of nucleotide exchange, thereby mimicking the GEFs and increasing the GTP-bound state (1–7)."))


(defun d1 () ;; "d" for Denver
  (p "Mitogen-induced signal transduction is mediated by a cascade of protein phosphorylation and dephosphorylation."))
(defun d2 ()
  (p "One of the immediate responses of mitogen stimulation is the activation of a family of protein kinases known as mitogen-activated protein kinase or extracellular signal-regulated kinase (ERK)."))
(defun d3 ()
  (p "MEK (MAP kinase or ERK kinase) is the immediate upstream activator kinase of ERK."))
(defun d4 ()
  (p "Two cDNAs, MEK1 and MEK2, were cloned and sequenced."))
(defun d5 ()
  (p "MEK1 and MEK2 encode 393 and 400 amino acid residues, respectively."))
(defun d6 ()
  (p "The human MEK1 shares 99% amino acid sequence identity with the murine MEK1 and 80% with human MEK2."))
(defun d7 ()
  (p "Both MEK1 and MEK2 were expressed in Escherichia coli and shown to be able to activate recombinant human ERK1 in vitro."))
(defun d8 ()
  (p "The purified MEK2 protein stimulated threonine and tyrosine phosphorylation on ERK1 and concomitantly activated ERK1 kinase activity more than 100-fold."))
(defun d9 ()
  (p "The recombinant MEK2 showed lower activity as an ERK activator as compared with MEK purified from tissue."))
(defun d10 ()
  (p "However, the recombinant MEK2 can be activated by serum-stimulated cell extract in vitro."))
(defun d11 ()
  (p "MEKs, in a manner similar to ERKs, are likely to consist of a family of related proteins playing critical roles in signal transduction."))


;; 8/30/14
#| 8. Growth factors can turn on Ras by activating Guanine nucleotide
Exchange Factors (GEFs) or by inhibiting the GTPase Activating
Proteins (GAPs) or by both mechanisms. |#
; (p "Growth factors can activate Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms.")
;; /// substitute "activate" for "turn on" so can develop the
;; island forest parser without having to fix the problems with the
;; present verb+prep treatment first.
; (p "Growth factors can activate Ras by activating Guanine nucleotide Exchange Factors or by inhibiting the GTPase Activating Proteins or by both mechanisms.")
;; /// pull out the parentheses because something is inhibiting their interior's analysis



(defun setup-bio ()
  (remove-paragraph-marker) ;; #<PSR1155  sgml-label ->  "p"> interfers with "p100"
  (setq *tts-after-each-section* nil)
  (setq *note-text-relations* nil) ;; plist-for passed :uncalculated noting "[1-3]"
  (gload "bio;loader")
  (declare-all-existing-individuals-permanent))

(defun bio-traps ()
  ;; switch settings to facilitate 'getting through'
  (setq *sweep-sentence-treetops* nil) ;; easing these in gradually
  (setq *island-driving* nil))



;  8/11/14 Sweep through everything and scoop up all the bio-entities
; (setq *kind-of-chart-processing-to-do* :r3-entity-sweep)

;;  8/22/14 Need to tweak ordering so the full caps hack doesn't do
;  the PIK of PIK3CA before the no-space can get it. 
;  Also, full-caps doesn't look for the set already having been defined
;   and caps is wrong on no-space cases, e.g. pik3ca
;  Also doesn't see cases like GTPase, and gets false positives from
;  the references "1-7" and the apostostrophe before off in 'off'

;; 8/27/14
; *peek-rightward* is t. Presumably from Strider. Used in segment-finished
; do we want it in general?
;   
; (trace-ns-sequences)  (p "Sunday R1. Tuesday R2.")
;;  The final period is correctly omitted from the no-space name,
;;  but the interior period is being swallowed. 

; (setq *dbg-print* t)  (setq *debug-segment-handling* t)

;; 7/9/14
; (p "Phosphorylated Ser1507 on APC can prime a phosphorylation of Ser1503 by GSK-3. This scheme accounts for the presence of the six phosphates found in the mass spectroscopic analysis of in vitro-phosphorylated R3.")
; (p "Phosphorylated Ser1507 on APC can prime a phosphorylation of Ser1503 by GSK-3.")
; (p "This scheme accounts for the presence of the six phosphates found in the mass spectroscopic analysis of in vitro-phosphorylated R3.")


;; 6/9/14
; (just-bracketing-setting)
; (just-bracketing-with-comlex-setting)
; (setq *break-on-new-bracket-situations* nil)  ;; get some early on
; punted on split over buffers in actual-characters-of-word
; (setq *edge-for-unknown-words* nil)
; (setq *do-forest-level* nil) ;; not noticing all the periods because the return
;    and such aren't well-enough debugged.


; (setq *permit-extra-open-parens* t)
;? (f "/Users/ddm/ws/Sparser local/corpus/LarryHunterBioBook/BeingAlive.textsource")


; (word-frequency-setting)
; (setq *stem-words-for-frequency-counts* nil)
; (initialize-word-frequency-data)
; (f "/Users/ddm/sift/nlp/corpus/biology/hallmarks.txt")
;; Added fair number of characters to analyzers/tokenizer/alphabet.lisp
;; 2,902 unique words in 23,973 words
#|
took 74,471 microseconds (0.074471 seconds) to run.
      2,917 microseconds (0.002917 seconds, 3.92%) of which was spent in GC.
During that period, and with 8 available CPU cores,
     79,797 microseconds (0.079797 seconds) were spent in user mode
      1,607 microseconds (0.001607 seconds) were spent in system mode
 2,284,960 bytes of memory allocated.

|#


;; 2/27/14
; The greek characters are in -- entry-for-out-of-band-character --
;; 4/19/14
; Something has changed oddly whereby a kappa in this file is coming out
; as the combination of #\Latin_Capital_Letter_I_With_Circumflex with
; #\Masculine_Ordinal_Indicator when passed to the parser.
; Eyeballing the string shows a kappa. Describing it reveils that pair
; rather than a kappa. 

;; 2/25/14 Have to remove SGML rules, e.g. for 'p' unless it's ok w/in ns-sequences
(defun remove-paragraph-marker ()
  (let ((rule (find-cfr 'sgml-label '("p"))))
    (when rule
      (delete/cfr rule))))

;; From 15677466
(defvar *pc* "The processing of the nfκb2 gene product p100 to generate p52 is a regulated event, which is important for the instrumental function of NF-κB. We previously demonstrated that this tightly controlled event is regulated positively by NF-κB-inducing kinase (NIK) and its downstream kinase, IκB kinase α (IKKα). 
However, the precise mechanisms by which NIK and IKKα induce p100 processing remain unclear. 
Here, we show that, besides activating IKKα, NIK also serves as a docking molecule recruiting IKKα to p100. 
This novel function of NIK requires two specific amino acid residues, serine 866 and serine 870, of p100 that are known to be essential for inducible processing of p100. 
We also show that, after being recruited into p100 complex, activated IKKα phosphorylates specific serines located in both N- and C-terminal regions of p100 (serines 99, 108, 115, 123, and 872). 
The phosphorylation of these specific serines is the prerequisite for ubiquitination and subsequent processing of p100 mediated by the β-TrCP ubiquitin ligase and 26 S proteasome, respectively. 
These results highlight the critical but different roles of NIK and IKKα in regulating p100 processing and shed light on the mechanisms mediating the tight control of p100 processing. 
These data also provide the first evidence for explaining why overexpression of IKKα or its activation by many other stimuli such as tumor necrosis factor and mitogens fails to induce p100 processing."
  "target paragraph for proposal")

(defun kappa-1 ()
  ;; Rewrite of *pc* without the greek letters to get around 4/19 wierdness
  (p "The processing of the nfkappab2 gene product p100 to generate p52 is a regulated event, which is important for the instrumental function of NF-kappaB."))
(defun kappa-2 ()
  (p "We previously demonstrated that this tightly controlled event is regulated positively by NF-kappaB-inducing kinase (NIK) and its downstream kinase, IkappaB kinase alpha (IKKalpha)."))
;; (delete-cfr remain-in-job ("remain"))  -- don't include *job-events* or *isr*
(defun kappa-3 ()
  (p "However, the precise mechanisms by which NIK and IKKalpha induce p100 processing remain unclear."))
(defun kappa-4 ()
  (p "Here, we show that, besides activating IKKalpha, NIK also serves as a docking molecule recruiting IKKalpha to p100."))
(defun kappa-5 ()
  (p "This novel function of NIK requires two specific amino acid residues, serine 866 and serine 870, of p100 that are known to be essential for inducible processing of p100."))
(defun kappa-6 ()
  (p "We also show that, after being recruited into p100 complex, activated IKKalpha phosphorylates specific serines located in both N- and C-terminal regions of p100 (serines 99, 108, 115, 123, and 872)."))
(defun kappa-7 ()
  (p "The phosphorylation of these specific serines is the prerequisite for ubiquitination and subsequent processing of p100 mediated by the beta-TrCP ubiquitin ligase and 26 S proteasome, respectively."))
(defun kappa-8 ()
  (p "These results highlight the critical but different roles of NIK and IKKalpha in regulating p100 processing and shed light on the mechanisms mediating the tight control of p100 processing."))
(defun kappa-9 ()
  (p "These data also provide the first evidence for explaining why overexpression of IKKalpha or its activation by many other stimuli such as tumor necrosis factor and mitogens fails to induce p100 processing."))


(defvar *nkf2* "Processing of NF-kappaB2 precursor protein p100 to generate p52 is tightly controlled, which is important for proper function of NF-kappaB. Accordingly, constitutive processing of p100, caused by the loss of its C-terminal processing inhibitory domain due to nfkappab2 gene rearrangements, is associated with the development of various lymphomas and leukemia. In contrast to the physiological processing of p100 triggered by NF-kappaB-inducing kinase (NIK) and its downstream kinase, IkappaB kinase alpha (IKKalpha), which requires the E3 ligase, beta-transducin repeat-containing protein (beta-TrCP), and occurs only in the cytoplasm, the constitutive processing of p100 is independent of beta-TrCP but rather is regulated by the nuclear shuttling of p100. Here, we show that constitutive processing of p100 also requires IKKalpha, but not IKKbeta (IkappaB kinase beta) or IKKgamma (IkappaB kinase gamma). It seems that NIK is also dispensable for this pathogenic processing of p100. These results demonstrate a general role of IKKalpha in p100 processing under both physiological and pathogenic conditions. Additionally, we find that IKKalpha is not required for the nuclear translocation of p100. Thus, these results also indicate that p100 nuclear translocation is not sufficient for the constitutive processing of p100."
  "The entire abstact according to the abstractor, not as in the article")

;; 2/6/14
; (setq *uniformly-scan-all-no-space-token-sequences* t)
;   polyword referents for HBP1 or D1 made done by reify-spelled-name
;   called from reify-ns-name-and-make-edge
; Referent is a category cons'd on the fly -- doesn't feel right
; (p "HBP1 is a repressor of the cyclin D1 gene and inhibits the Wnt signaling pathway. The inhibition of Wnt signaling and growth requires a common domain of HBP1. The apparent mechanism is an inhibition of TCF/LEF DNA binding through physical interaction with HBP1")




; (f "/Users/ddm/sift/nlp/corpus/biology/cholera.txt")

