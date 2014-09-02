;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Biology-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  August 2014

;; Initiated 11/6/13 to setup experiments in reading biology texts
;; and constructing process models from them. 

(in-package :sparser)

; (defvar script :biology)  ;; For customizing what gets loaded
; (load "/Users/ddm/sparser/load-nlp.lisp")

; (setup-bio)
(defun setup-bio ()
  (remove-paragraph-marker)
  (setq *tts-after-each-section* nil)
  (gload "bio;loader"))

;; 8/29/14
; (bio-traps)
(defun bio-traps ()
  ;; switch settings to facilitate 'getting through'
  (setq *note-text-relations* nil) ;; plist-for passed :uncalculated noting "[1-3]"
  (setq *sweep-sentence-treetops* nil) ;; easing these in gradually
   (setq *island-driving* nil))

; (f "/Users/ddm/sift/nlp/corpus/biology/Paul-test-cases.txt")
;    (setq *sweep-sentence-treetops* t)
;    (setq *island-driving* t)

;;8/7/14 debugging the new forest level's loops
; (bio-setting)
; (trace-network-flow)  (trace-forest-level) 
; (trace-forest-transitions)
; (trace-extension) ;; the decision
; (trace-paragraphs) ;; period-hook
; (setq *break-on-next-sentence* t) ;; inside period-hook
; (trace-sections) ;; sentence creation
; (trace-network) ;; pretty thorough trace


;; 8/12/14 Figuring out the affix weirdness
;  define-word/expr  lookup/make-word-symbol define-main-verb
;  assign-morph-brackets-to-unknown-word setup-verb
; (trace-morphology)
;  8/22/14 -- "increase" is automatically defined as a noun because
; of its suffix, which blocks the possibility of defining it as
; a verb when you see "increasing"

;  8/11/14 Sweep through everything and scoop up all the bio-entities
; (setq *kind-of-chart-processing-to-do* :r3-entity-sweep)
; (read-file-for-entities "/Users/ddm/sift/nlp/corpus/biology/Paul-test-cases.txt")
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
; (bio-setting)
; (f "/Users/ddm/sift/nlp/corpus/biology/Paul-test-cases.txt")

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

