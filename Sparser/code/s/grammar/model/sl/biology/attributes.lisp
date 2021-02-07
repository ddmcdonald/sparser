;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2016-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "attributes"
;;;  Module: "grammar/model/sl/biology/
;;; version: December 2020

;; Moving all attributes defined in biology to this file


(define-category time-course :specializes attribute
  :realization 
  (:noun "time course"))

;; "role" is unusual in that it is an attribute of a PAIR of items
(noun "role" :specializes attribute
      :binds ((process bio-process))
      :realization
      (:in process))

;; "threshold" should also be an attribute of a PAIR of items
(define-category threshold :specializes scalar-attribute
  :realization (:noun "threshold"))

;;; The scalar-attributes

(define-category bio-concentration :specializes scalar-attribute
  :realization
  (:noun "concentration"))

(define-category frequency :specializes scalar-attribute
  :realization
  (:noun "frequency"))

(define-category peak :specializes scalar-attribute
  :restrict ((owner (:or biological scalar-attribute amount)))
  :realization (:noun "peak"
                :in owner ;;measured-item
                      ) ;; "a peak in the measured amount ..."
  :documentation "The preposition 'in' does the same work as 'of'
    in other kinds of amounts / quantities of stuff. In biology
    it seems most appropriate when we are describing locations
    in graphs, e.g. 'dip' ")

;;--- bio-scalar -- now scalar-attribute
;; (p/s "Decrease the binding rate of NRAS and BRAF.")
;;(delete-noun-cfr (resolve "rate")) ;;/// override it



(define-category process-rate :specializes scalar-attribute
 :binds ((components biological)
         (process bio-process))
 :realization 
    (:noun "rate"
     :for components
     :m process))
(def-synonym process-rate (:noun "kinetics"))

#| The parser will do "binding rate" compositionally, and will put
the 'binding' in the process slot of the process-rate object.
Unfortunately, generating from that requires coercing 'binding' 
into a particple in order to provide an adjective realization,
which if further than is worth going just now. (Same issue as we
have with phosphorylated as a preposed modifier.) |#
(define-category binding-rate
  :specializes process-rate
  :realization (:noun "binding rate"))

(define-category dissociation-rate
  :specializes process-rate
  :realization (:noun "dissociation rate"))

(define-category catalysis-rate
  :specializes process-rate
  :realization (:noun "catalysis rate"))

(noun "insensitivity" :specializes scalar-attribute ;; HUH?
      :binds ((cause biological))
      :realization
      (:noun "insensitivity"
       :to cause))

(noun "sensitivity"  :specializes scalar-attribute
      :binds ((cause biological))
      :realization
      (:noun "sensitivity"
       :to cause))

(define-category bio-strength :specializes scalar-attribute
  :realization
  (:noun "strength"))

;;;;;; These should be moved to a higher level file for more general "attributes"

(define-category duration :specializes scalar-attribute
  :binds ((theme top))
  :realization
  (:noun "duration"))

;;(delete-noun-cfr (resolve "number"))
;;(delete-noun-cfr (resolve "numbers"))
(noun "age" :specializes scalar-attribute)
(noun "coefficient" :specializes scalar-attribute)
(define-category count-of :specializes scalar-attribute
  :realization (:noun ("number" "count")))
(noun "consistency" :specializes scalar-attribute)
(noun "cost" :specializes scalar-attribute) 
(noun "degree" :specializes scalar-attribute) 
(noun "extent" :specializes scalar-attribute)
(noun "intensity" :specializes scalar-attribute)
(noun "mass" :specializes scalar-attribute)
(noun "necessity" :specializes scalar-attribute)
(noun "odds" :specializes scalar-attribute)
(noun "percentage" :specializes scalar-attribute)
(noun "proportion" :specializes scalar-attribute)
(noun "scale" :specializes scalar-attribute
              :binds ((source top)) ;; "the scale from xxx test"
      :realization (:from source)) ;;possibly just attribute
(noun "score" :specializes scalar-attribute)
(noun "validity" :specializes scalar-attribute)
(noun "weight" :specializes scalar-attribute)
(noun index-attribute :noun ( "index"  :plural ("indexes" "indices")) :specializes scalar-attribute)
(noun value-attribute :noun  "value" :specializes scalar-attribute)
(noun factor-attribute :noun  "factor" :specializes scalar-attribute)

;; non-scalar attributes and related-entities
;; "true" attributes (by my intuition)
(noun "sex" :specializes attribute)

;; related things which are not quite plausible as variables on categories
(noun "accuracy" :specializes related-thing)
(noun "adoption" :specializes related-thing)
(noun "aim" :specializes related-thing)
(noun "antecedent" :specializes related-thing)
(noun "avoidance" :specializes related-thing)
(noun "behavior" :specializes related-thing)
(noun "characteristics" :specializes related-thing)
(noun "consequence" :specializes related-thing)
(noun "collapse" :specializes related-thing)
(noun "content" :specializes attribute)
(noun "definition" :specializes related-thing)
(noun "design" :specializes related-thing)
(noun "dissemination" :specializes related-thing)
(noun "distribution" :specializes related-thing)
(noun "ease" :specializes related-thing)
(noun "effectiveness" :specializes related-thing)
(noun "feature" :specializes  related-thing) ;; not really -- but WHAT??

(noun "goal" :specializes related-thing)
(noun "implementation" :specializes related-thing)
(noun "indicator" :specializes related-thing)
(noun "intolerance" :specializes related-thing)
(noun "limitation" :specializes related-thing)
(noun "locus" :specializes related-thing)
(noun "meaning" :specializes related-thing)
(noun "means" :specializes related-thing)
(noun "pattern" :specializes related-thing)
(noun "politicization" :specializes related-thing)
(noun "prevalence" :specializes related-thing)
(noun "purpose" :specializes related-thing)
(noun "recipient" :specializes related-thing)
(noun results :noun "result" :specializes related-thing)
(noun "rise" :specializes related-thing)
(noun "risk" :specializes related-thing)
(noun "sense" :specializes related-thing)
(noun "shortage" :specializes related-thing) ;; maybe scalar-attribute??
(noun "shortness" :specializes related-thing)
(noun "source" :specializes related-thing)
(noun "stage" :specializes related-thing)
(noun "structure" :specializes related-thing)
(noun "threat" :specializes related-thing)
(noun "time" :specializes related-thing)

(define-category spread  :specializes related-thing :realization (:noun "spread" :verb  "spread"))
(define-category transmission  :specializes related-thing
  :binds
  ((ACROSS top)
       (OVER top)
       (THROUGH top)
       (TO top))
  :realization
  (:noun "transmission"
   :verb ( "transmit"  :TENSED/SINGULAR "transmits" :PRESENT-PARTICIPLE "transmitting" :PAST-TENSE "transmitted")
   :across ACROSS :over OVER :through THROUGH :to TO))


(define-category course :specializes related-thing ;;"course of the disease"
  :mixins (biological)
  :binds
  ((ON top)
   (OFF top)
   (IN top))
  :realization (:noun  "course" :on ON :off OFF :in IN))
(noun "dynamics" :specializes course) ;;possibly just attribute

(define-category estimate :specializes related-thing
  :binds
  ((BY top)
   (BEYOND top)
   (|ACCORDING TO| top))
  :realization (:noun  "estimate" :by BY :beyond BEYOND :|ACCORDING TO| |ACCORDING TO|))

(define-category phase :specializes related-thing
  :binds
  ((IN top)
   (|OUT OF| top))
  :realization (:noun  "phase" :in IN :|OUT OF| |OUT OF|))


;;;;;; bulk addition to be reviewed
(noun "area" :specializes scalar-attribute)

(noun "acceptance" :specializes related-thing)
(noun "acknowledgment" :specializes related-thing)
(noun "adequacy" :specializes related-thing)
(noun "advantage" :specializes related-thing)
(noun "appraisal" :specializes related-thing)
(noun "authority" :specializes related-thing)
(noun "basics" :specializes related-thing)
(noun "battery" :specializes related-thing)
(noun "body" :specializes related-thing)
(noun "booster" :specializes related-thing)
(noun "breakdown" :specializes related-thing)
(noun "bulletin" :specializes related-thing)
(noun "capital" :specializes related-thing)
(noun "choice" :specializes related-thing)
(noun "cohort" :specializes related-thing)
(noun "committee" :specializes related-thing)
(noun "concept" :specializes related-thing)
(noun "conduit" :specializes related-thing)
(noun "conscientiousness" :specializes related-thing)
(noun "council" :specializes related-thing)
(noun "dearth" :specializes related-thing)
(noun "demographics" :specializes related-thing)
(noun "diagnosis" :specializes related-thing)
;;(noun "domain" :specializes related-thing) conflict with protein-domain
(noun "element" :specializes related-thing)
(noun "epicenter" :specializes related-thing)
(noun "epicentre" :specializes related-thing)
(noun "epidemiology" :specializes related-thing)
(noun "episode" :specializes related-thing)
(noun "error" :specializes related-thing)
(noun "forefront" :specializes related-thing)
(noun "foundation" :specializes related-thing)
(noun "genesis" :specializes related-thing)
(noun "graph" :specializes related-thing)
(noun "guideline" :specializes related-thing)
(noun "guise" :specializes related-thing)
(noun "habit" :specializes related-thing)
(noun "immediacy" :specializes related-thing)
(noun "impression" :specializes related-thing)
(noun "influx" :specializes related-thing)
(noun "instruction" :specializes related-thing)
(noun "interface" :specializes related-thing)
(noun "language" :specializes related-thing)
(noun "law" :specializes related-thing)
(noun "life" :specializes related-thing)
(noun "literacy" :specializes related-thing)
(noun "lot" :specializes related-thing)
(noun "majority-auto" :specializes related-thing)
(noun "manifestation" :specializes related-thing)
(noun "margin" :specializes related-thing)
(noun "matrix" :specializes related-thing)
(noun "midst" :specializes related-thing)
(noun "ministry" :specializes related-thing)
(noun "multitude" :specializes related-thing)
(noun "network" :specializes related-thing)
(noun "onset" :specializes related-thing)
(noun "origin" :specializes related-thing)
(noun "parameter" :specializes related-thing)
(noun "patchwork" :specializes related-thing)
(noun "platform" :specializes related-thing)
(noun "policy" :specializes related-thing)
(noun "preference" :specializes related-thing)
(noun "principle" :specializes related-thing)
(noun "priority" :specializes related-thing)
(noun "procedure" :specializes related-thing)
(noun "product" :specializes related-thing)
(noun "prohibition" :specializes related-thing)
(noun "property" :specializes related-thing)
(noun "psychology" :specializes related-thing)
(noun "rating" :specializes related-thing)
(noun "reader" :specializes related-thing)
(noun "recommendation" :specializes related-thing)
(noun "relevance" :specializes related-thing)
(noun "reluctance" :specializes related-thing)
(noun "scenario" :specializes related-thing)
(noun "scope" :specializes related-thing)
(noun "series" :specializes related-thing)
(noun "seriousness" :specializes related-thing)
(noun "society" :specializes related-thing)
(noun "specter" :specializes related-thing)
(noun "standard-endurant" :specializes related-thing)
(noun "statistics" :specializes related-thing)
(noun "subgroup" :specializes related-thing)
(noun "supporter" :specializes related-thing)
(noun "swathe-endurant" :specializes related-thing)
(noun "task" :specializes related-thing)
(noun "tedium" :specializes related-thing)
(noun "think-endurant" :specializes related-thing)
(noun "tightness" :specializes related-thing)
(noun "topic" :specializes related-thing)
(noun "trait" :specializes related-thing)
(noun "trustworthiness" :specializes related-thing)
(noun "unaware" :specializes related-thing)
(noun "union" :specializes related-thing)
(noun "unit" :specializes related-thing)
(noun "upside-endurant" :specializes related-thing)
(noun "uptake" :specializes related-thing)
(noun "variety" :specializes related-thing)
(noun "venue" :specializes related-thing)
(noun "volume" :specializes related-thing)
(noun "waiver" :specializes related-thing)
(noun "welfare" :specializes related-thing)
(noun "worthy-endurant" :specializes related-thing)
