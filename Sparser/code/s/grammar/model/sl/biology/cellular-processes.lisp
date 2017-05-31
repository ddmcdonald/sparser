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

(noun "cell-cell contact" :super cellular-process)
(noun "cell-cell communications" :super cellular-process)
(adj "cell-cell" :super bio-predication)

(define-category adhesion :specializes cellular-process
    :realization
    (:verb "adhere"
	   :etf (sv)
	   :noun "adhesion"))

(define-category apoptosis ;; aka cell death
    :specializes cellular-process
    :bindings (uid "GO:0006915")
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
(def-synonym apoptosis (:noun "programmed cell death"))
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

