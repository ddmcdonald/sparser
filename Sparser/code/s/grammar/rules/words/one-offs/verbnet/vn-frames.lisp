;; Written 15:6:23 8/09/2019

(in-package :sparser)


(define-mixin-category NP-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble SVO))

(define-mixin-category NP-V
  :specializes subcategorization-pattern
  :realization (:mumble SV))

(define-mixin-category NP-V-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble SVIngcomp))

(define-mixin-category NP-V-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble SVO))

(define-mixin-category NP-V-that-S
  :specializes subcategorization-pattern
  :realization (:mumble SVSComp))

(define-mixin-category NP-V-PP.location
  :specializes subcategorization-pattern
  :realization (:mumble SV
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (location  right-referent))))
                  ))

(define-mixin-category NP-V-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble SVO1O2))

(define-mixin-category NP-V-NP-PP.instrument
  :specializes subcategorization-pattern
  :realization (:mumble SVO
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (instrument  right-referent))))
                  ))

(define-mixin-category NP-V-NP-PP.destination
  :specializes subcategorization-pattern
  :realization (:mumble SVO
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (destination  right-referent))))
                  ))

(define-mixin-category NP-V-NP-PP.result
  :specializes subcategorization-pattern
  :realization (:mumble SVO
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (result-role  right-referent))))
                  ))

(define-mixin-category NP-V-NP-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-ADJ
  :specializes subcategorization-pattern
  :realization (:mumble SVOA))

(define-mixin-category NP-V-NP-PP.attribute
  :specializes subcategorization-pattern
  :realization (:mumble SVO
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (attribute  right-referent))))
                  ))

(define-mixin-category NP-V-NP-PP.location
  :specializes subcategorization-pattern
  :realization (:mumble SVOL))

(define-mixin-category NP-V-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble SVIcomp))

(define-mixin-category NP-V-NP-PP.source
  :specializes subcategorization-pattern
  :realization (:mumble SVO
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (source  right-referent))))
                  ))

(define-mixin-category NP-V-what-S
  :specializes subcategorization-pattern
  :realization (:mumble SVO-obj-rel))

(define-mixin-category NP-V-PP.theme-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble SVPComp/ing))

(define-mixin-category NP-V-how-S
  :specializes subcategorization-pattern
  :realization (:mumble SVSCOMP_no-that
                :s agent
                :c howcomp))  

(define-mixin-category NP-V-NP-PP.recipient
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.theme
  :specializes subcategorization-pattern
  :realization (:mumble SVO))

(define-mixin-category NP-V-NP-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-how-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADV-Middle
  :specializes subcategorization-pattern
  :realization (:mumble SVADV))

(define-mixin-category NP-V-NP-PP.initial_location
  :specializes subcategorization-pattern
  :realization (:mumble SVO
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (source  right-referent))))
                  ))

(define-mixin-category NP-V-PP.topic
  :specializes subcategorization-pattern
  :realization (:mumble SV
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (topic  right-referent))))
                  ))

(define-mixin-category NP.instrument-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.beneficiary
  :specializes subcategorization-pattern
  :realization (:mumble SVO
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (beneficiary  right-referent))))
                  ))

(define-mixin-category NP-V-NP-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble SVO
                :additional-rules
                  ((:pp-adjunct (s (s pp)
                                 :head left-referent
                                 :binds (goal  right-referent))))
                  ))

(define-mixin-category NP-V-PP.co-agent
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-ADJP
  :specializes subcategorization-pattern
  :realization (:mumble SVOA))

(define-mixin-category NP-V-NP-PP
  :specializes subcategorization-pattern
  :realization (:mumble SVO1PO2))

(define-mixin-category NP-V-NP-PP.co-patient
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-to-be-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.stimulus
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble SVOICOMP-obj-rel))

(define-mixin-category NP-V-NP-PP.initial_location-PP.destination
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-that-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category PP.location-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADVP-Middle
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-ADVP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-Dative-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.recipient
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.destination
  :specializes subcategorization-pattern
  :realization (:mumble SVO))

(define-mixin-category NP-V-PP.source
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.result-PP.instrument
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-together
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.theme-V
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category There-V-NP-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.attribute
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-patient
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-how-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.result
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-whether/if-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.co-theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.destination-PP.initial_location
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.topic
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.beneficiary-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.location
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.patient
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-how-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.location-V-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.patient-V
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADJ
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADV
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADVP-Middle-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-ADV
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.value
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-to-be-ADJ
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.destination
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.material-PP.product
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.patient
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.beneficiary
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.experiencer
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-S-Quote
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.stimulus-what-S
  :specializes subcategorization-pattern
  :realization (:mumble SVPCOMP-obj-rel))

(define-mixin-category NP-V-S-Quote
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-for-NP-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-together
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category There-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category There-V-PP-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-ADJP-PP.instrument
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.asset
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.co-agent
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP-Conative
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-PP.topic
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.location-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-what-S
  :specializes subcategorization-pattern
  :realization (:mumble SVPCOMP-obj-rel))

(define-mixin-category NP-V-PP.theme-what-S
  :specializes subcategorization-pattern
  :realization (:mumble SVPCOMP-obj-rel))

(define-mixin-category NP-V-PP.topic-PP.co-agent
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.topic-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-whether-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.asset-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.instrument-V-ADVP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category It-V-that-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADVP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-ADJP-Result
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-NP-PP.asset
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.source-PP.beneficiary
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-how-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-that-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-up
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-what-S
  :specializes subcategorization-pattern
  :realization (:mumble S-V-IO-DO_obj-rel))

(define-mixin-category NP-V-NP-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.attribute
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.destination-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.initial_location
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.location-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.product-PP.material
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.recipient-that-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.source
  :specializes subcategorization-pattern
  :realization (:mumble SVO))

(define-mixin-category NP-V-NP.theme-(PP)
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.theme-PP.destination
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.topic
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.value
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP-ADV-Middle
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-PP.theme-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-PP.theme-what-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-PP.theme-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-PP.theme-whether-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-PP.theme-whether-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.destination-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.initial_location-PP.destination
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.instrument
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.predicate
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-PP.topic
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.source-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.source-how-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.stimulus-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.stimulus-how/whether-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-whether-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.time
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.topic-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.topic-what-S
  :specializes subcategorization-pattern
  :realization (:mumble SVPCOMP-obj-rel))

(define-mixin-category NP-V-PP.trajectory
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-together-ADV-Middle
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.attribute-V-NP.extent-PP.source-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.attribute-V-PP.extent-PP.source-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.location-V
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.location-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.material-V-PP.product
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.patient-V-NP.extent-PP.source-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.patient-V-PP.attribute-NP.extent-PP.source-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.patient-V-PP.attribute-PP.extent-PP.source-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.patient-V-PP.extent-PP.source-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.theme-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category It-V
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category It-V-NP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category It-V-PP.experiencer-that-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category It-V-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-NP-V-ADVP-Middle-together
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-NP-V-together
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADJ-Middle
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADJ-PP.experiencer
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADJP-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADV-Middle-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADV-Middle-PP.location
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADV-Middle-together
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADV-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-ADV-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-ADJ-PP.instrument
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-ADJP-PP.result
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-ATTR-POS
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-Fulfilling-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-Fulfilling-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-NP-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-NP-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-NP-together
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-NP.asset
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-P.asset
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP-PP.instrument
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.attribute-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.destination-Conative
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.destinations
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.goal-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.manner
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.material
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.material-PP.asset
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.material-PP.beneficiary
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.patient
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.predicate
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.product-PP.beneficiary
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.recipient-PP.asset
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.recipient-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.source-NP.asset
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.source-PP.instrument
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.source-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.source-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.source-whether-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.stimulus
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.theme-PP.attribute
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.theme-what-S
  :specializes subcategorization-pattern
  :realization (:mumble SVOPCOMP-obj-rel))

(define-mixin-category NP-V-NP-PP.theme-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.theme-whether-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.theme-whether-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PP.topic-what-S
  :specializes subcategorization-pattern
  :realization (:mumble SVOPCOMP-obj-rel))

(define-mixin-category NP-V-NP-PP.trajectory
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-PRO-ARB
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-S-INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-S-Quote
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-apart
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-dative-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-down
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-how-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-whether-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP-whether-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.beneficiary-NP-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.experiencer
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.extent
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.material
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.patient-NP.extent-PP.source-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.patient-PP.extent-PP.source-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.patient-PP.material-PP.result
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.patient-PP.result
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.recipient-PP.topic
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.recipient-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.recipient-S-Quote
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.recipient-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.recipient-when-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.stimulus
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-NP.theme-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP-that-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.agent
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.attribute-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.beneficiary-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.cause
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-how-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.co-agent-how-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.goal-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.initial_loc
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.initial_loc-PP.destination
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.initial_location
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.material-PP.result
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-PP.topic-what-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-PP.topic-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-PP.topic-whether-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-when-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-whether-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.recipient-whether/if-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.result--PP.material
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.result-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.result-PP.instrument
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.source-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.source-PP.theme-what-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.source-PP.theme-what-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.source-PP.theme-whether-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.source-PP.theme-whether/if-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.source-how-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.source-wh-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-NP-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-NP.location
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-PP.location
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-PP.predicate
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-PP.source
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-whether-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.theme-whether/if-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.topic-NP-S_ING
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.topic-PP.recipient
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.topic-whether-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.topic-whether-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.trajectory-PP.goal
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-PP.value
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-apart
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-down-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-out
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-that-S-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-up-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-when-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-whether-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-whether/if-S_INF
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP-V-why-S
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.agent-V
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.agent-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.asset-V-NP-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.asset-V-NP-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.asset-V-PP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.attribute-V
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.cause-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.location-V-NP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.location-V-PP.agent
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.material-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.patient-V-PP.attribute
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.patient-V-PP.material-PP.result
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.patient-V-PP.result
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.product-V-PP.material
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.theme-V-PP.location
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category NP.theme-V-PP.source
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category PP.location-V-PP.theme
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category PP.location-there-V-NP
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category Passive
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category That-S.stimulus-V
  :specializes subcategorization-pattern
  :realization (:mumble ))

(define-mixin-category There-V-NP-PP.location
  :specializes subcategorization-pattern
  :realization (:mumble ))
