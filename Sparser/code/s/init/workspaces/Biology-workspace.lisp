;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Biology-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  February 2014

;; Initiated 11/6/13 to setup experiments in reading biology texts
;; and constructing process models from them. 

(in-package :sparser)

; (load "/Users/ddm/sparser/load-nlp.lisp")

; (gload "bio;loader")

; (bio-setting)  ;; what we get by default

;; 2/27/14
; The greek characters are in -- entry-for-out-of-band-character --
; but with ascii value for the character that they return, 
; Can return the greek characters by backquoting the list and
; using code-char to get the character, but on first try of
; that we get a hangup in define-polyword/expr because the call
; to not-all-same-character-type doesn't know of the out of band
; chacters. This naievity is also burned into run-token-fas which
; picks up the first character of a newly-started token.
; The dispatch in continue-token has to be factored out so its
; usable in these other places, which isn't simple. The function
; tokenizer-entry might be a place to put this since lots of
; other code uses it.

;; 2/25/14 Have to remove SGML rules, e.g. for 'p' unless it's ok w/in ns-sequences
;; From 15677466
(defvar *pc* "The processing of the nfκb2 gene product p100 to generate p52 is a regulated event, which is important for the instrumental function of NF-κB. We previously demonstrated that this tightly controlled event is regulated positively by NF-κB-inducing kinase (NIK) and its downstream kinase, IκB kinase α (IKKα). However, the precise mechanisms by which NIK and IKKα induce p100 processing remain unclear. Here, we show that, besides activating IKKα, NIK also serves as a docking molecule recruiting IKKα to p100. This novel function of NIK requires two specific amino acid residues, serine 866 and serine 870, of p100 that are known to be essential for inducible processing of p100. We also show that, after being recruited into p100 complex, activated IKKα phosphorylates specific serines located in both N- and C-terminal regions of p100 (serines 99, 108, 115, 123, and 872). The phosphorylation of these specific serines is the prerequisite for ubiquitination and subsequent processing of p100 mediated by the β-TrCP ubiquitin ligase and 26 S proteasome, respectively. These results highlight the critical but different roles of NIK and IKKα in regulating p100 processing and shed light on the mechanisms mediating the tight control of p100 processing. These data also provide the first evidence for explaining why overexpression of IKKα or its activation by many other stimuli such as tumor necrosis factor and mitogens fails to induce p100 processing."
  "target paragraph for proposal")


(defvar *nkf2* "Processing of NF-kappaB2 precursor protein p100 to generate p52 is tightly controlled, which is important for proper function of NF-kappaB. Accordingly, constitutive processing of p100, caused by the loss of its C-terminal processing inhibitory domain due to nfkappab2 gene rearrangements, is associated with the development of various lymphomas and leukemia. In contrast to the physiological processing of p100 triggered by NF-kappaB-inducing kinase (NIK) and its downstream kinase, IkappaB kinase alpha (IKKalpha), which requires the E3 ligase, beta-transducin repeat-containing protein (beta-TrCP), and occurs only in the cytoplasm, the constitutive processing of p100 is independent of beta-TrCP but rather is regulated by the nuclear shuttling of p100. Here, we show that constitutive processing of p100 also requires IKKalpha, but not IKKbeta (IkappaB kinase beta) or IKKgamma (IkappaB kinase gamma). It seems that NIK is also dispensable for this pathogenic processing of p100. These results demonstrate a general role of IKKalpha in p100 processing under both physiological and pathogenic conditions. Additionally, we find that IKKalpha is not required for the nuclear translocation of p100. Thus, these results also indicate that p100 nuclear translocation is not sufficient for the constitutive processing of p100."
  "The entire abstact")

;; 2/6/14
; (setq *uniformly-scan-all-no-space-token-sequences* t)
;   polyword referents for HBP1 or D1 made done by reify-spelled-name
;   called from reify-ns-name-and-make-edge
; Referent is a category cons'd on the fly -- doesn't feel right
; (p "HBP1 is a repressor of the cyclin D1 gene and inhibits the Wnt signaling pathway. The inhibition of Wnt signaling and growth requires a common domain of HBP1. The apparent mechanism is an inhibition of TCF/LEF DNA binding through physical interaction with HBP1")


;; N.b. this is a draft of the arrangement of the sublanguage.
;; When it's ok we knit it into the usual set of files

(define-grammar-module *biology*
                       :name "Waypoints and related concepts"
                       :parent *sublanguages*)
(include-grammar-module *biology*)
(def-logical-pathname "bio;" "sl;biology:")


; (f "/Users/ddm/sift/nlp/corpus/biology/cholera.txt")

