;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: September 2014

;; Initiated 7/23/14 by lifting proteins from NFkappaB experiment.
;; Moved proteins out to their own file 9/8/14
;;; temporary home for rules
;;; gene  --> mutate gene
;;; enzyme --> bio-process enzyme
;;; move out oncoogene to taxonomy, and mutate to be a verb (so mutated is a past participle)
;; 11/9/14 hack for ', in part,' and terms for g1,...,g5, 'as a consequence' and .exchange' as a bio-process
;; added critical, common, "tumor formation", first stab at "form", revised "condition", revised "G-domain"


(in-package :sparser)

;;---- j1


(adj "deadliest") ;;//// no -- define shortcut, morphology extensions
;; to define the whole comparative paradigm

;;(np-head "cancer")

(adj "responsible" ;; adj/noun "resposibility"
  :subject 'bio-entity
  :theme 'bio-entity
  :subcategorization '((for np) (theme)))

(adj "critical" ;; adj/noun "resposibility"
  :subject 'bio-entity
  :theme 'bio-entity
  :subcategorization '((for bio-process) (theme)))

(adj "common" ;; adj/noun "resposibility"
  :subject 'bio-entity
  :theme 'bio-entity
  :subcategorization '((to bio-entity) (theme)))


(def-bio "tumor formation" bio-process)

;;(np-head "human") ;;/// check people code
(def-bio "human" species)
(np-head "mortality") ;;/// relationship to "mortal" ??


;;--- j2

#| Importantly the signaling enzymes encoded by PIK3CA and BRAF are, in part,
regulated by direct binding to activated forms of the Ras proteins
suggesting that dysregulation of this key step in signaling is
critical for tumor formation. |#

;; "importantly"
;; An attribute of the entire fact, not the eventuallity
;; in it. All the rhetorical/status markers should go
;; in the same place. A field in the container will suffice

;; "signalling enzyme" 

(def-bio "signaling" bio-process ;; makes common nouns 
  :identifier "GO:0023052")       ;; reasonable stand-in

;;(np-head "enzyme")

(define-adverb "in part")
(define-adverb ", in part,") ;; ugly but simple way to handle sentential adverbs that can be set off by commas...
(define-adverb "as a consequence")

;;--- J3
(define-adjective "molecular")
;; It's realated to molecule, but how exactly?
;; Seems wrong to jump to "is made of molecules"

#| This switch mechanism is common to a wide variety of GTP-binding
proteins and is mediated by a conserved structure called the G-domain
that consists of five conserved G boxes. |#

(np-head "switch") ;;/// trivial standin



(np-head "mechanism")

;; activated forms of the Ras proteins
;; Needs a whole model
(def-bio "form" bio-variant)

(np-head "tumor")
;;(np-head "formation")
(def-bio "tumor formation" bio-process)

;;--- j5 
(define-adjective "physiological")
(def-bio "condition" bio-condition)

(np-head "G-domain" :super 'protein-segment) ;; somehow (def-bio "G-domain" protein-segment) di not work

(def-cfr rate-of-process (rate-of-process-of release)
  ;;//// The semantic-composition based on 'release' being 
  ;; a subtype of 'process' is not working. This is an
  ;; expedient in the meantime. 
  ;; See rules in measurements.lisp that want to be in 
  ;; a fancy ETF.
  :form np
  :referent (:head left-edge
             :bind (process right-edge)))

(find-or-make-individual 'qualitative-rate :name "slow")

;;--- j6

;; cellular "GO:0005623"

;;--- j8

(def-bio "RasGEF" protein) ;; family
;;/// hypenated and separated. 
(def-bio "RasGAP" protein) ;; ditto

(def-bio "exchange" bio-process)

;; cytosolic "GO:0005829"

;; "GTP, whereas RasGAPs ... end of the sentence" GO:0006184

(define-lambda-variable 'trailing-parenthetical
  'parentheses ;; value restriction
  category::expressible-type) ;; overly high type bound to.
;; used by knit-parens-into-neighbor 

;;--- j9

(define-adjective "prevalent")

(def-bio "g1" bio-entity)
(def-bio "g2" bio-entity)
(def-bio "g3" bio-entity)
(def-bio "g4" bio-entity)
(def-bio "g5" bio-entity)

;; G1 (box) "PR:000003866"

;; G3 (box) "PR:000004651"


;;--- j10

;; G5 "PR:000004652"

;;;-------------------------------------------------------
;;; Hacked up to 'get through' the 9/4/14 target abstract
;;;-------------------------------------------------------

#+ignore
(define-category signal-transduction ;;// same flaw as small molecute
  :specializes bio-process
  :lemma (common-noun "signal transduction"))


(def-cfr gene (mutate gene)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge patient))

(def-cfr enzyme (bio-process enzyme)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge patient))

