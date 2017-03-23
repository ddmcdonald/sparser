;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from phenomena 3/1/17
;; contains: signalling, other cellular processes, and cellular processes with IDs

(in-package :sparser)

;;;------------
;;; signalling
;;;------------

(define-category signal-propagation
                 :specializes bio-process
  :binds ((direction pathway-direction))
  :realization (:noun "signal propagation"
                      :m direction))

;; (setq *break-on-illegal-duplicate-rules* t)
; The def-synonym call is creating a rule it should be able
; to lookup and reuse because the lhs and rhs are eq/equal
; but the reuse existing rule case isn't being taken and
; it's instead mis-construed as a duplicate, which should
; require a different lhs. 

;; "RAS signalling"
;; a new mode of Ras activation in which signaling is sustained ...
(define-category signal :specializes cellular-process
  ;;//// bind it explicitly? :obo-id "GO:0023052"  ;; reasonable stand-in
  :binds ((agent protein) ;;bio-entity) ;; what's doing the signalling
          (object (:or bio-process protein)))  ;; what's being signaled
  :realization 
    (:verb ("signal"  :present-participle "xxxsignaling") ;; block "signaling" as a verb
     :noun "signalling"
     :etf (svo-passive)
     :m agent
     :s agent 
     :o object
     :to object))

(def-synonym signal ;; Jan.#26
   (:noun "signaling"))

(def-synonym signal ;; Jan.#26
   (:noun "signal"))

(noun "import signal" :super signal)
(noun "export signal" :super signal)

;;;-------------------------
;;; Other Cellular processes
;;;-------------------------

; "RAS can enhance the apoptotic function of p53"
; intracellular apoptotic signaling
; apoptotic signals
; the apoptosis pathway

(noun "EMT" :super cellular-process)

(define-category adhesion :specializes cellular-process
    :realization
    (:verb "adhere"
	   :etf (sv)
	   :noun "adhesion"))

(define-category apoptosis ;; aka cell death
    :specializes cellular-process
    :realization
    (:noun "apoptosis" :adj "apoptotic"))

(define-category killing ;; related to but not quite the same as apoptosis
    :specializes cellular-process
    :realization
    (:noun "killing"))


(define-category axon-guidance :specializes cellular-process
   :binds ((initial biological)
           (final biological))
   :realization
   (:noun "axon guidance"
          :from initial
          :to final
          :into final))

(define-category death :specializes cellular-process ;; actually organism process
  :realization
  (:verb "die"
         :noun "death" :etf (sv)))

(define-category division :specializes cellular-process
    :realization
    (:verb "divide"
	   :noun "division"
	   :etf (sv)))

(define-category growth :specializes cellular-process
    :realization
    (:verb ("grow" :past-tense "grew")
	   :noun "growth"
	   :etf (sv)))

(define-category proliferation :specializes cellular-process
    :realization
    (:verb "proliferate"
	   :noun "proliferation"
	   :etf (sv)))

(define-category cell-cycle-progression :specializes cellular-process
   :realization
   (:noun "cell cycle progression"))

(define-category protein-synthesis :specializes cellular-process
   :realization
   (:noun "protein synthesis"))

(define-category transformation :specializes cellular-process
   :binds ((initial biological)
           (final biological))
   :realization
   (:verb "transform"
          :etf (sv)
          :noun "transformation"
          :from initial
          :to final
          :into final))

(define-category anchorage :specializes cellular-process
  :binds ((anchor biological)
          (anchored biological))
    :realization
    (:verb ("anchor" :present-participle "anchoring" :past-tense "anchored")
	   :etf (svo-passive)
	   :noun "anchorage"
           :s anchor
           :o anchored
           :to anchor))

(define-category necrosis :specializes cellular-process
    :binds ((necrotized biological))                         
    :realization
    (:verb "necrotize"
           :etf (svo-passive)
           :o necrotized
           :adj "necrotic"
	   :noun "necrosis"
	   :etf (sv)))



(noun "autophagy" :super cellular-process)
(define-category cell-growth :specializes cellular-process
  :realization (:noun  "cell growth"))
(def-synonym cell-growth
    (:noun "cellular growth"))
(def-synonym cell-growth
    (:noun "growth"))
(def-synonym cell-growth
    (:noun "growing"))

(noun "differentiation" :super cellular-process)

(def-synonym differentiation
    (:noun "differentiating"))

(noun "motility" :super cellular-process)
(noun "neurite outgrowth" :super cellular-process)
(noun "senescence" :super cellular-process)
(noun "survival" :super cellular-process)
(adj "pro-apoptotic" :super apoptosis)

(def-synonym adhesion (:noun "cell adhesion"))
(def-synonym adhesion (:noun "cellular adhesion"))
(def-synonym adhesion (:noun "cell–cell adhesion"))
(def-synonym apoptosis (:noun "cell death"))
(def-synonym apoptosis (:noun "cellular death"))
(def-synonym division (:noun "cell division"))
(def-synonym division (:noun "cellular division"))
(def-synonym motility (:noun "cell motility"))
(def-synonym motility (:noun "cell movement"))
(def-synonym motility (:noun "cellular motility"))
(def-synonym motility (:noun "cellular movement"))
(def-synonym proliferation (:noun "cell proliferation"))
(def-synonym proliferation (:noun "cellular proliferation"))
(def-synonym senescence (:adj "senescent"))
(def-synonym senescence (:noun "cell senescence"))
(def-synonym senescence (:noun "cellular senescence"))
(def-synonym survival (:noun "cell survival"))
(def-synonym survival (:noun "cellular survival"))

;;;----------------------------
;;; Cellular processes with IDs
;;;----------------------------

;; some if these could be more directly linked to the above categories or possibly go into post-translation modification
(def-ided-indiv cellular-process "Cell Cycle" "GO:0007049") 
(def-ided-indiv cellular-process "DNA damage checkpoint" "GO:0000077") 
(def-ided-indiv cellular-process "DNA damage response" "GO:0000077") 
(def-ided-indiv cellular-process "DNA repair" "GO:0006281") 
(def-ided-indiv cellular-process "DNA replication" "GO:0006260") 
(def-ided-indiv cellular-process "M-phase" "GO:0000279" :name "M phase") 
(def-ided-indiv cellular-process "OxPho" "GO:0006119") 
(def-ided-indiv cellular-process "S-phase" "GO:0051320" :name "S phase") 
(def-ided-indiv cellular-process "TCA cycle" "GO:0006099") 
(def-ided-indiv cellular-process "adaptive immunity" "GO:0002250") 
(def-ided-indiv cellular-process "autophagic cell death" "GO:0048102") 
(def-ided-indiv cellular-process "bioenergetic" "GO:0006091") 
(def-ided-indiv cellular-process "cell differentiation" "GO:0030154") 
(def-ided-indiv cellular-process "cell migration" "GO:0016477") 
(def-ided-indiv cellular-process "cell viability" "MESH:D002470") 
(def-ided-indiv cellular-process "cell-cell adhesion" "GO:0016337") ;; should have been blocked by definition above -- need to look into this
(def-ided-indiv cellular-process "cytokine production" "GO:0001816") 
(def-ided-indiv cellular-process "cytokinesis" "GO:0000910") 
(def-ided-indiv cellular-process "dedifferentiation" "GO:0043696") ;; maybe should be defined in terms of de
(def-ided-indiv cellular-process "energy metabolism" "GO:0006091") 
(def-ided-indiv cellular-process "epithelial to mesenchymal transition" "GO:0001837") 
(def-ided-indiv cellular-process "glycolysis" "GO:0006096") 
(def-ided-indiv cellular-process "homeostasis" "GO:0042592") 
(def-ided-indiv cellular-process "immune response" "GO:0006955") 
(def-ided-indiv cellular-process "infiltration" "MESH:D009361") 
(def-ided-indiv cellular-process "inflammatory response" "GO:0006954") 
(def-ided-indiv cellular-process "innate immune response" "GO:0045087") 
(def-ided-indiv cellular-process "invasiveness" "MESH:D009361") 
(def-ided-indiv cellular-process "mitochondrial membrane potential" "GO:0051881") 
(def-ided-indiv cellular-process "necrotic cell death" "MESH:D009336") 
(def-ided-indiv cellular-process "oxidative phosphorylation" "GO:0006119") 
(def-ided-indiv cellular-process "programmed cell death" "GO:0006915") 
(def-ided-indiv cellular-process "prophase" "GO:0051324" :name "prophase") 
(def-ided-indiv cellular-process "protein degradation" "GO:0006508") 
(def-ided-indiv cellular-process "protein folding" "GO:0006457") 
(def-ided-indiv cellular-process "proteolysis" "GO:0006508") 
(def-ided-indiv cellular-process "response to stress" "GO:0006950") 
(def-ided-indiv cellular-process "signal transduction" "GO:0007165") 
(def-ided-indiv cellular-process "signalling cascade" "GO:0007165") 

;; moved to pathways file (def-ided-indiv cellular-process "signalling pathway" "GO:0007165") 
(def-ided-indiv cellular-process "stress response" "GO:0006950") 
(def-ided-indiv cellular-process "subcellular localization" "GO:0051179") 
(def-ided-indiv cellular-process "tumor microenvironment" "MESH:D059016") 