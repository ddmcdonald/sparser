;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "cellular-processes"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from phenomena 5/10/17
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
     :etf (svo-passive)
     :m agent
     :s agent 
     :o object
     :to object))

(def-synonym signal ;; Jan.#26
    (:noun "signalling"))
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

(noun "cell-cell contact" :super cellular-process)
(noun "cell-cell communications" :super cellular-process)
(adj "cell-cell" :super bio-predication)

(define-category adhesion :specializes cellular-process
                 :bindings (uid "GO:0007155")
    :realization
    (:verb "adhere"
	   :etf (sv)
	   :noun ("adhesion" "cell adhesion" "cellular adhesion")))
                             

(define-category axon-guidance :specializes cellular-process
   :binds ((initial biological)
           (final biological))
   :realization
   (:noun "axon guidance"
          :from initial
          :to final
          :into final))

(define-category death :specializes cellular-process
                 ;; actually organism process but we and harvard are just going with it being cell death
                 :bindings (uid "GO:0008219")
                 :realization
                 (:verb "die"
                        :noun ("death" "cell death" "cellular death")
                        :etf (sv)))

(define-category programmed-cell-death ;; aka programmed cell death
    :specializes death
    :bindings (uid "GO:0012501")
    :realization (:noun "programmed cell death"))

(define-category apoptosis ;; aka programmed cell death
    :specializes programmed-cell-death
    :bindings (uid "GO:0006915")
    :realization
    (:noun "apoptosis" :adj "apoptotic"))
(adj "pro-apoptotic" :super apoptosis)

(define-category viral-egress
    :specializes cellular-process
    :realization
    (:noun ("egress" "viral egress")))

(define-category exocytosis
    :specializes viral-egress
    :bindings (uid "GO:0006887")
    :realization
    (:noun "exocytosis"))

(define-category viral-budding
    :specializes viral-egress
    :bindings (uid "GO:0046755")
    :realization
    (:noun ("viral budding" "virus budding" "virion budding" "budding")))

(define-category killing ;; related to but not quite the same as apoptosis
    :specializes cellular-process
    :realization
    (:noun "killing"))

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
                 :bindings (uid "GO:0008283")
                 :realization
    (:verb "proliferate"
	   :noun ("proliferation" "cell proliferation" "cellular proliferation")
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

(define-category necrosis :specializes death
                 :binds ((necrotized biological))
                 :bindings (uid "GO:0070265")
                 :realization
                 (:verb "necrotize"
                        :etf (svo-passive)
                        :o necrotized
                        :adj "necrotic"
                        :noun ("necrosis" :plural "necroses")
                        :etf (sv)))
(def-synonym necrosis
    (:noun "necrotic cell death"))

(define-category autophagy :specializes cellular-process
                 :bindings (uid "GO:0006914")
                 :realization (:noun "autophagy"))

(define-category cell-growth
    :specializes cellular-process
    :bindings (uid "GO:0016049")
    :realization (:noun  ("cell growth" "cellular growth" "growth" "growing"
                                        "cell expansion" "cell enlargement")))

(define-category differentiation :specializes cellular-process
                 :bindings (uid "GO:0030154")
                 :realization (:noun ("differentiation" "cell differentiation")))
(def-synonym differentiation 
    (:noun "differentiating"))

(define-category motility
    :specializes cellular-process
    :bindings (uid "GO:0016477")
    :realization
    (:noun ("motility" "cell motility" "cellular motility"
                       "cell movement" "cellular movement"
                       "cell migration")))

(noun "neurite outgrowth" :super cellular-process)

(define-category senescence :specializes cellular-process
                 :bindings (uid "GO:0090398")
                 :realization
                 (:noun ("senescence" "cell senescence" "cellular senescence")
                 :adj "senescent"))


(define-category survival :specializes cellular-process
                 :bindings (uid "MESH:D002470")
                 :realization
                 (:noun ("survival" "cell survival" "cellular survival"
                                    "cell viability")))



(def-synonym division (:noun "cell division"))
(def-synonym division (:noun "cellular division"))



