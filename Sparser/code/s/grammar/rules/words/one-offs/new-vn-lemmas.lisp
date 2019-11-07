;; Written 10:17:4 11/07/2019

(in-package :sparser)


(define-mixin-category swarm-47.5.1-2-1
  :specializes subcategorization-pattern
  :mixins (NP.LOCATION-V-PP.THEME SWARM-47.5.1-2)
  :realization (:VERB ("abound") (:S LOCATION :WITH THEME)))

(define-mixin-category swarm-47.5.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION THERE-V-NP-PP SWARM-47.5.1)
  :realization (:VERB ("throng") (:DEFINITE THEME :LOC LOCATION)
                (:S THEME :LOC LOCATION)))

(define-mixin-category succeed-74-3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.THEME-S_ING SUCCEED-74-3)
  :realization (:VERB ("flub" "lose") (:S AGENT :SC_ING THEME)
                (:S AGENT :SENTENTIAL THEME)))

(define-mixin-category succeed-74-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S_ING NP-V-PP.THEME SUCCEED-74)
  :realization (:VERB ("excel" "succeed") (:S AGENT :IN THEME) (:S AGENT)))

(define-mixin-category substitute-13.6.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SUBSTITUTE-13.6.2)
  :realization (:VERB ("supplant" "replace") (:S THEME :O THEME)))

(define-mixin-category substance_emission-43.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-SOURCE)
  :realization (:VERB
                ("emit" ("give" :PREP "forth") ("give" :PREP "out")
                 ("give" :PREP "off") "give")
                (:S SOURCE :O THEME)))

(define-mixin-category spray-9.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP.DESTINATION-PP.THEME NP-V-NP.THEME
           NP-V-NP.DESTINATION WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("overload") (:S AGENT :O DESTINATION)
                (:S AGENT :O THEME) (:S AGENT :O DESTINATION :WITH THEME)
                (:S AGENT :O THEME :LOC DESTINATION :DEST_CONF DESTINATION)))

(define-mixin-category snooze-40.4
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("snooze" "slumber" "drowse" "doze" "catnap") (:S AGENT)))

(define-mixin-category simple_dressing-41.3.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SIMPLE_DRESSING-41.3.1)
  :realization (:VERB ("doff" "don") (:S AGENT :O THEME)))

(define-mixin-category simple_dressing-41.3.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SIMPLE_DRESSING-41.3.1)
  :realization (:VERB ("wear") (:S AGENT :O THEME)))

(define-mixin-category sound_existence-47.4
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP PP.LOCATION-V-NP
           NP.LOCATION-V-NP.THEME WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION)))
  :realization (:VERB
                ("sound" "roll" "reverberate" "resound" "resonate" "echo")
                (:S LOCATION :WITH THEME) (:LOC LOCATION :O THEME)
                (:DEFINITE THEME) (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category smell_emission-43.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP.LOCATION-V NP-V-PP.THEME WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB ("stink" "smell" "reek") (:S LOCATION :OF THEME)
                (:S LOCATION) (:S THEME)))

(define-mixin-category say-37.7-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-PP.RECIPIENT-THAT-S
           NP-V-PP.RECIPIENT-WHAT-S NP-V-PP.RECIPIENT-WHAT-S_INF SAY-37.7-1)
  :realization (:VERB ("hint") (:S AGENT :TO RECIPIENT :WHAT_INF TOPIC)
                (:S AGENT :TO RECIPIENT :WHAT_EXTRACT TOPIC)
                (:S AGENT :TO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :TO RECIPIENT :WH_INF TOPIC)
                (:S AGENT :TO RECIPIENT :HOW_EXTRACT TOPIC)
                (:S AGENT :SENTENTIAL TOPIC :TO RECIPIENT)))

(define-mixin-category slide-11.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.INITIAL_LOCATION NP-V-PP.DESTINATION
           NP-V-PP.INITIAL_LOCATION-PP.DESTINATION NP.AGENT-V-NP
           NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION WITH-PATH)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("pull" "scoot" "move")
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :PATH PATH) (:S AGENT :O THEME)
                (:S THEME :SRC SOURCE :TO DESTINATION)
                (:S THEME :TO DESTINATION) (:S THEME :PATH SOURCE) (:S THEME)))

(define-mixin-category risk-94-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING RISK-94)
  :realization (:VERB ("hazard" "risk" "chance") (:S AGENT :BE_SC_ING THEME)))

(define-mixin-category separate-23.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V NP-V-ADVP-MIDDLE-PP
           NP-V-ADVP-MIDDLE WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("uncoil" "sever" "disassociate") (:S PATIENT :M ADVERB)
                (:S PATIENT :M ADVERB :FROM CO-PATIENT) (:S PATIENT)
                (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :FROM CO-PATIENT)))

(define-mixin-category rehearse-26.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("repeat" ("walk" :PREP "through"))
                (:S AGENT :SC_ING THEME) (:S AGENT :O THEME)))

(define-mixin-category register-54.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.VALUE WITH-AGENT WITH-ATTRIBUTE REGISTER-54.1)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB ("mistime" "time") (:S AGENT :O ATTRIBUTE :AT PATH)
                (:S AGENT :O THEME :AT PATH) (:S AGENT :O THEME)))

(define-mixin-category refrain-69
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S_ING NP-V-PP.THEME-S WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("forbear" "desist" "abstain" "refrain")
                (:S AGENT :FROM THEME) (:S AGENT)))

(define-mixin-category reciprocate-112-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP RECIPROCATE-112)
  :realization (:VERB ("reciprocate" "answer") (:S AGENT :O PREDICATE)
                (:S AGENT)))

(define-mixin-category rear-26.2.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.MATERIAL-PP.PRODUCT WITH-MATERIAL REAR-26.2.2)
  :binds ((SPARSER::MATERIAL PHYSICAL))
  :realization (:VERB ("farm" "cultivate") (:S AGENT :IO MATERIAL :O PRODUCT)))

(define-mixin-category put-9.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION-NP WITH-THEME PUT-9.1)
  :realization (:VERB ("stick" "set" "put" "place")
                (:S AGENT :ON DESTINATION :UPON DESTINATION :O THEME)))

(define-mixin-category poke-19-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.INSTRUMENT-PP.THEME NP-V-PP.THEME
           NP-V-PP.THEME-PP.INSTRUMENT NP-V-PP.PATIENT
           NP-V-PP.PATIENT-PP.INSTRUMENT WITH-THEME POKE-19)
  :binds ((SPARSER::THEME PHYSICAL))
  :realization (:VERB ("stab") (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT) (:S AGENT :O THEME :WITH INSTRUMENT)
                (:S AGENT :O THEME) (:S AGENT :IO INSTRUMENT :O THEME)))

(define-mixin-category play-114.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("recreate" "frolic") (:S AGENT) (:S AGENT :WITH AGENT)))

(define-mixin-category rummage-35.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME RUMMAGE-35.5)
  :realization (:VERB
                ("tunnel" "snoop" "thumb" "root" "delve" "paw" "rummage"
                 "rifle" "grope" "forage")
                (:S AGENT :L LOCATION :FOR THEME)))

(define-mixin-category own-100.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("possess" "own" "hold" "have") (:S INSTRUMENT :O THEME)))

(define-mixin-category turn-26.6.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.PATIENT-PP.MATERIAL-PP.RESULT
           NP.PATIENT-V-PP.MATERIAL-PP.RESULT NP-V-NP.PATIENT-PP.RESULT
           NP.PATIENT-V-PP.RESULT NP-V NP-V-NP WITH-AGENT WITH-PATIENT
           WITH-SOURCE WITH-RESULT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("transmute" "translate" "transform" "mutate" "morph"
                 "metamorphose" "deform" "alter")
                (:S AGENT :O PATIENT) (:S PATIENT) (:S PATIENT :INTO RESULT)
                (:S AGENT :O PATIENT :INTO RESULT)
                (:S PATIENT :FROM SOURCE :INTO RESULT)
                (:S AGENT :O PATIENT :FROM SOURCE :INTO RESULT)))

(define-mixin-category occur-48.3
  :specializes subcategorization-pattern
  :mixins (NP-V THERE-V-NP NP-V-PP WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization (:VERB (("take" :PREP "place") "recur" "fall" ("go" :PREP "on"))
                (:S THEME :|| LOCATION) (:O THEME) (:S THEME)))

(define-mixin-category obtain-13.5.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ASSET NP.ASSET-V-NP WITH-EXTENT OBTAIN-13.5.2)
  :binds ((SPARSER::EXTENT CURRENCY))
  :realization (:VERB ("purchase" "obtain" "acquire") (:S EXTENT :O THEME)
                (:S AGENT :O THEME :FOR EXTENT)))

(define-mixin-category murder-42.1-1
  :specializes subcategorization-pattern
  :mixins (NP.INSTRUMENT-V-NP WITH-INSTRUMENT MURDER-42.1)
  :binds ((SPARSER::INSTRUMENT PHYSICAL))
  :realization (:VERB ("kill-off" "kill") (:S INSTRUMENT :O PATIENT)))

(define-mixin-category multiply-108-3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME MULTIPLY-108)
  :realization (:VERB ("average") (:S AGENT :O THEME :OVER THEME)))

(define-mixin-category mix-22.1-2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-NP-TOGETHER
           NP-V-ADVP-MIDDLE-PP NP-V-ADVP-MIDDLE MIX-22.1)
  :realization (:VERB ("tie" "add") (:S PATIENT :M ADVERB)
                (:S PATIENT :M ADVERB :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)))

(define-mixin-category mix-22.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-NP-V-TOGETHER MIX-22.1-1)
  :realization (:VERB
                ("recombine" "mix" "mingle" "merge" "meld" "fuse" "decoct"
                 "commingle" "compound" "combine" "blend")
                (:S PATIENT)))

(define-mixin-category mine-10.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("quarry" "mine") (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME)))

(define-mixin-category play-114.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-NP-PP.CO-AGENT NP-V-NP WITH-THEME PLAY-114.2)
  :realization (:VERB ("play") (:S AGENT :O THEME)
                (:S AGENT :O THEME :WITH AGENT) (:S AGENT :O AGENT)
                (:S AGENT :WITH THEME)))

(define-mixin-category masquerade-29.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE MASQUERADE-29.6)
  :realization (:VERB ("behave" "act") (:S AGENT :O ATTRIBUTE)))

(define-mixin-category long-32.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME LONG-32.2)
  :realization (:VERB ("yearn" "thirst" "lust" "hanker")
                (:S INSTRUMENT :AFTER THEME)))

(define-mixin-category long-32.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME LONG-32.2)
  :realization (:VERB
                ("yearn" "wish" "thirst" "pray" "pine" "lust" "long" "itch"
                 "hunger" "hope" "hanker" "fall" "die" "crave" "ache")
                (:S INSTRUMENT :FOR THEME)))

(define-mixin-category pocket-9.10-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V NP-V-ADVP POCKET-9.10)
  :realization (:VERB
                ("stable" "lodge" "ground" "moor" "land" "drydock" "dock"
                 "berth")
                (:S THEME :O DESTINATION) (:S THEME)
                (:S THEME :IN DESTINATION :ON DESTINATION :UNDER DESTINATION)))

(define-mixin-category linger-53.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP LINGER-53.1)
  :realization (:VERB ("stall" "scruple" "delay") (:S AGENT :O THEME)))

(define-mixin-category trifle-105.3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("trifle" "toy" "play" "fiddle" "diddle" "dally")
                (:S AGENT :WITH THEME)))

(define-mixin-category lecture-37.11-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC-S_ING LECTURE-37.11-1)
  :realization (:VERB ("comment" "elaborate") (:S AGENT :ABOUT TOPIC)))

(define-mixin-category talk-37.5
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-PP.CO-AGENT-PP.TOPIC NP-V NP-V-TOGETHER
           NP-V-PP.TOPIC-PP.CO-AGENT NP-V-PP.TOPIC WITH-AGENT WITH-AGENT
           WITH-TOPIC)
  :binds ((SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("talk" "speak") (:S AGENT :ABOUT TOPIC)
                (:S AGENT :ABOUT TOPIC :WITH AGENT)
                (:S AGENT :ABOUT TOPIC :TO AGENT) (:S AGENT)
                (:S AGENT :WITH AGENT :ABOUT TOPIC)
                (:S AGENT :TO AGENT :ABOUT TOPIC) (:S AGENT :WITH AGENT)
                (:S AGENT :TO AGENT)))

(define-mixin-category leave-51.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.INITIAL_LOCATION NP-V-NP.INITIAL_LOCATION-PP.DESTINATION
           WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SPARSER::SOURCE (:OR LOCATION PHYSICAL-AGENT))
          (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB ("abandon") (:S THEME :O SOURCE :PATH DESTINATION)
                (:S THEME :O SOURCE)))

(define-mixin-category other_cos-45.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ OTHER_COS-45.4)
  :realization (:VERB ("thaw" "set" "melt" "freeze" "dry" "awaken" "awake")
                (:S PATIENT :O RESULT)))

(define-mixin-category overstate-37.12
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("glorify" "tout" "overstress" "overrate" "overemphasize"
                 "amplify" "magnify" "hyperbolize" "overdraw" "overstate")
                (:S AGENT :O THEME)))

(define-mixin-category require-103-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-NP-S_INF NP-V-S_ING WITH-SOURCE REQUIRE-103)
  :realization (:VERB ("demand" "involve" "require" "necessitate")
                (:S THEME :AC_ING PREDICATE) (:S THEME :NP_TO_INF PREDICATE)
                (:S THEME :O PREDICATE :FROM SOURCE)))

(define-mixin-category interrogate-37.1.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP-PP.TOPIC WITH-AGENT
           WITH-RECIPIENT WITH-TOPIC WITH-ATTRIBUTE)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("interrogate" "interview" "question" "cross-examine")
                (:S AGENT :O RECIPIENT :ABOUT TOPIC)
                (:S AGENT :O RECIPIENT :AS ATTRIBUTE) (:S AGENT :O RECIPIENT)))

(define-mixin-category intend-61.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING INTEND-61.2-1)
  :realization (:VERB ("plan" "intend") (:S AGENT :NP_OMIT_ING TOPIC)))

(define-mixin-category intend-61.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S INTEND-61.2)
  :realization (:VERB ("mean") (:S AGENT :SMALL_CLAUSE TOPIC)
                (:S AGENT :SENTENTIAL TOPIC)))

(define-mixin-category intend-61.2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-TOPIC WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("aim") (:S AGENT :SENTENTIAL TOPIC :AS ATTRIBUTE)
                (:S AGENT :SC_TO_INF TOPIC)))

(define-mixin-category say-37.7-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-PP.RECIPIENT-THAT-S
           NP-V-PP.RECIPIENT-WHAT-S NP-V-PP.RECIPIENT-WHAT-S_INF SAY-37.7-1-1)
  :realization (:VERB ("recommend" "suggest" "purpose")
                (:S AGENT :TO RECIPIENT :WHAT_INF TOPIC)
                (:S AGENT :TO RECIPIENT :WHAT_EXTRACT TOPIC)
                (:S AGENT :TO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :TO RECIPIENT :WH_INF TOPIC)
                (:S AGENT :TO RECIPIENT :HOW_EXTRACT TOPIC)
                (:S AGENT :SENTENTIAL TOPIC :TO RECIPIENT)))

(define-mixin-category indicate-78-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RECIPIENT-THAT-S NP-V-PP.RECIPIENT-WHETHER/IF-S
           NP-V-PP.RECIPIENT-WHAT-S NP-V-PP.RECIPIENT-HOW-S INDICATE-78)
  :realization (:VERB ("say" "indicate" "explain")
                (:S INSTRUMENT :TO EXPERIENCER :HOW_EXTRACT TOPIC)
                (:S INSTRUMENT :TO EXPERIENCER :WHAT_EXTRACT TOPIC)
                (:S INSTRUMENT :TO EXPERIENCER :WH_COMP TOPIC)
                (:S INSTRUMENT :TO EXPERIENCER :THAT_COMP TOPIC)))

(define-mixin-category poke-19
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-NP-PP.PATIENT NP.INSTRUMENT-V-NP
           WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB ("prick" "pierce") (:S INSTRUMENT :O PATIENT)
                (:S AGENT :O INSTRUMENT :INTO PATIENT)
                (:S AGENT :O INSTRUMENT :THROUGH PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category spray-9.7-1-1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V-NP SPRAY-9.7-1)
  :realization (:VERB ("pile" "pack" "jam" "crowd" "cram")
                (:S THEME :O DESTINATION)))

(define-mixin-category help-72.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME HELP-72.1-1)
  :realization (:VERB ("help" "assist" "abet" "aid") (:S AGENT :WITH THEME)))

(define-mixin-category gobble-39.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-DOWN-NP WITH-PATIENT GOBBLE-39.3)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization (:VERB ("swig" "swallow" "slug" "quaff" "guzzle" "gulp")
                (:S AGENT :O PATIENT)))

(define-mixin-category succeed-74-2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP NP-V-PP.THEME-S_ING SUCCEED-74)
  :realization (:VERB ("win") (:S AGENT :SC_ING THEME)
                (:S AGENT :SENTENTIAL THEME) (:S AGENT)))

(define-mixin-category instr_communication-37.4.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.RECIPIENT NP-V-NP-PP.RECIPIENT NP-V-NP-DATIVE-NP
           NP-V-NP.RECIPIENT-S-QUOTE NP-V-PP.RECIPIENT-S-QUOTE NP-V-NP-PP.TOPIC
           NP-V-THAT-S NP-V-WHEN-S_INF NP-V-S_INF NP-V-NP.RECIPIENT-THAT-S
           NP-V-NP.RECIPIENT-WHEN-S_INF NP-V-NP.RECIPIENT-S_INF
           NP-V-PP.RECIPIENT-THAT-S NP-V-PP.RECIPIENT-WHEN-S_INF
           NP-V-PP.RECIPIENT-S_INF NP-V-FOR-NP-S_INF WITH-AGENT WITH-TOPIC
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("wireless" "wire" "telex" "telephone" "telegraph" "telecast"
                 "signal" "sign" "semaphore" "satellite" "relay" "radio"
                 "phone" "netmail" "modem" "fax" "e-mail" "cable" "broadcast")
                (:S AGENT :FOR TOPIC) (:S AGENT :TO RECIPIENT :AC_TO_INF TOPIC)
                (:S AGENT :TO RECIPIENT :WH_INF TOPIC)
                (:S AGENT :TO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :IO RECIPIENT :AC_TO_INF TOPIC)
                (:S AGENT :IO RECIPIENT :WH_INF TOPIC)
                (:S AGENT :IO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :AC_TO_INF TOPIC) (:S AGENT :WH_INF TOPIC)
                (:S AGENT :THAT_COMP TOPIC)
                (:S AGENT :O RECIPIENT :ABOUT TOPIC)
                (:S AGENT :TO RECIPIENT :O TOPIC)
                (:S AGENT :IO RECIPIENT :O TOPIC)
                (:S AGENT :O TOPIC :TO RECIPIENT) (:S AGENT :O RECIPIENT)
                (:S AGENT :O TOPIC)))

(define-mixin-category free-10.6.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING FREE-10.6.3)
  :realization (:VERB
                ("rerelease" "release" "emancipate" "free" "clear" "acquit"
                 "absolve")
                (:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category groom-41.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("neaten" "groom" "curry" "cleanse")
                (:S AGENT :O PATIENT)))

(define-mixin-category forbid-64.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("keep" "dissuade") (:S AGENT :O BENEFICIARY :FROM THEME)))

(define-mixin-category snooze-40.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME SNOOZE-40.4)
  :realization (:VERB ("sleep" "nap") (:S AGENT :O THEME)))

(define-mixin-category masquerade-29.6-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.ATTRIBUTE MASQUERADE-29.6)
  :realization (:VERB ("pose" "serve") (:S AGENT :IN ATTRIBUTE)
                (:S AGENT :O ATTRIBUTE)))

(define-mixin-category stop-55.4-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP.THEME-V NP-V-ADJ-MIDDLE STOP-55.4)
  :realization (:VERB
                ("terminate" "repeat" "lift" "halt" "deactivate"
                 ("cut" :PREP "out") ("cut" :PREP "off") "close")
                (:S THEME :M ADVERB) (:S THEME)))

(define-mixin-category fulfilling-13.4.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP FULFILLING-13.4.1)
  :realization (:VERB
                ("supply" "serve" "resupply" "furnish" "entrust" "credit")
                (:S AGENT :O RECIPIENT)))

(define-mixin-category run-51.3.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RUN-51.3.2)
  :realization (:VERB
                ("wing" "wander" "wade" "vault" "trudge" "trek" "travel"
                 "tramp" "traipse" "swim" "sweep" "stroll" "stride" "rove"
                 "roam" "ramble" "prowl" "plod" "perambulate" "pad" "leap"
                 "journey" "hop")
                (:S THEME :O PATH)))

(define-mixin-category seem-109-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE SEEM-109-1)
  :realization (:VERB ("stay" "remain" "look" "feel" "be")
                (:S THEME :IN ATTRIBUTE)))

(define-mixin-category exist-47.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP WITH-CAUSE WITH-MANNER EXIST-47.1)
  :binds ((SPARSER::MANNER ADVERB))
  :realization (:VERB ("survive" "live" "endure") (:S THEME :NIL MANNER)
                (:S THEME :NIL INSTRUMENT) (:S THEME :O CAUSE)))

(define-mixin-category linger-53.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION NP-V-PP.THEME WITH-AGENT HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("tarry" "putter" "procrastinate" "potter" "pause" "loiter"
                 "loaf" "linger" "hesitate" "equivocate" "dither" "dawdle"
                 "dally")
                (:S AGENT :OVER THEME) (:S AGENT :LOC LOCATION)))

(define-mixin-category gorge-39.6
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.PATIENT WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("thrive" "survive" "subsist" "prosper" "gorge" "flourish"
                 "feed" "exist")
                (:S AGENT :ON PATIENT)))

(define-mixin-category lecture-37.11-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC NP-V-PP.TOPIC-S_ING LECTURE-37.11)
  :realization (:VERB ("dwell") (:S AGENT :ON TOPIC) (:S AGENT :ABOUT TOPIC)))

(define-mixin-category focus-87.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC NP-V-PP.THEME-S_ING NP-V-PP.TOPIC-WHAT-S
           NP-V-PP.TOPIC-WHAT-S_INF WITH-AGENT WITH-TOPIC)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT)))
  :realization (:VERB
                ("fixate" "dwell" "converge" "contemplate" "concentrate"
                 "center" "focalize" "focus")
                (:S AGENT :ON TOPIC)))

(define-mixin-category exhale-40.1.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP EXHALE-40.1.3)
  :realization (:VERB ("inhale") (:S AGENT :O THEME) (:S AGENT)))

(define-mixin-category exclude-107.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.GOAL-S_ING EXCLUDE-107.3)
  :realization (:VERB ("preclude" "exclude") (:S AGENT :O THEME :FROM GOAL)))

(define-mixin-category neglect-75.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NEGLECT-75.1)
  :realization (:VERB ("omit" "neglect" "fail") (:S AGENT :SC_TO_INF THEME)))

(define-mixin-category exclude-107.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.GOAL NP-V-NP WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("omit") (:S AGENT :O THEME)
                (:S AGENT :O THEME :FROM GOAL)))

(define-mixin-category exchange-13.6.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME NP-V-NP-PP.CO-AGENT NP-V-NP WITH-AGENT
           WITH-THEME WITH-THEME WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("trade" "swap" "exchange" "change" "barter")
                (:S AGENT :O THEME) (:S AGENT :PLURAL THEME :WITH AGENT)
                (:S AGENT :PLURAL THEME) (:S AGENT :O THEME :FOR THEME)))

(define-mixin-category resign-10.11-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.SOURCE NP-V-NP WITH-ATTRIBUTE RESIGN-10.11)
  :realization (:VERB
                ("withdraw" ("walk" :PREP "out") ("walk" :PREP "away") "walk"
                 "retire" "resign")
                (:S AGENT :O ATTRIBUTE) (:S AGENT :FROM SOURCE)))

(define-mixin-category equip-13.4.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V-NP EQUIP-13.4.2-1)
  :realization (:VERB
                ("compensate" "burden" "weight" "overburden" "fortify"
                 "encumber" "armor")
                (:S THEME :O RECIPIENT)))

(define-mixin-category pay-68-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP-PP.THEME NP-V-NP-NP WITH-RECIPIENT PAY-68)
  :realization (:VERB ("tithe" "repay" "pay")
                (:S AGENT :IO RECIPIENT :O EXTENT)
                (:S AGENT :IO RECIPIENT :O EXTENT :FOR THEME)))

(define-mixin-category equip-13.4.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-FULFILLING-PP WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("ply" "invest" "charge")
                (:S AGENT :O RECIPIENT :WITH THEME)))

(define-mixin-category swarm-47.5.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION THERE-V-NP-PP PP.LOCATION-V-NP
           PP.LOCATION-V-PP.THEME SWARM-47.5.1)
  :realization (:VERB
                ("pullulate" "teem" "swim" "swarm" "hop" "creep" "crawl"
                 "bustle")
                (:S LOCATION :WITH THEME) (:LOC LOCATION :O THEME)
                (:DEFINITE THEME :LOC LOCATION) (:S THEME :LOC LOCATION)))

(define-mixin-category fulfilling-13.4.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RECIPIENT WITH-RECIPIENT WITH-AGENT FULFILLING-13.4.1)
  :binds ((SPARSER::AGENT (:OR ABSTRACT PHYSICAL-AGENT))
          (SPARSER::RECIPIENT (:OR ABSTRACT PHYSICAL-AGENT)))
  :realization (:VERB ("provide") (:S AGENT :FOR RECIPIENT)))

(define-mixin-category shake-22.3-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SHAKE-22.3-2)
  :realization (:VERB
                ("agglutinate" "affix" "fixate" "weld" "toggle" "splice"
                 "secure" "package" "moor" "ligate" "jumble" "graft" "fasten"
                 "concatenate" "bundle" "bond" "bind" "attach")
                (:S AGENT :PLURAL PATIENT)))

(define-mixin-category enforce-63
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-THAT-S WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("impose" "enforce" "control")
                (:S AGENT :THAT_COMP THEME) (:S AGENT :O THEME)))

(define-mixin-category eat-39.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP.SOURCE WITH-PATIENT EAT-39.1)
  :binds ((SPARSER::PATIENT (:AND/OR PATHOGEN SOLID)))
  :realization (:VERB ("drink") (:S AGENT :SRC SOURCE) (:S AGENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category earn-54.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-EXTENT)
  :realization (:VERB
                ("raise" "fetch" "earn" ("bring" :PREP "in") "bring" "attract")
                (:S THEME :O EXTENT)))

(define-mixin-category pronounce-29.3.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB ("spell" "say" "pronounce")
                (:S AGENT :IO THEME :O ATTRIBUTE)
                (:S AGENT :O THEME :WITH ATTRIBUTE :IN ATTRIBUTE)))

(define-mixin-category nonvehicle-51.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP NONVEHICLE-51.4.2)
  :realization (:VERB ("wing" "tack" "sail" "navigate" "fly" "drive" "cruise")
                (:S THEME :O PATH)))

(define-mixin-category drive-11.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION DRIVE-11.5)
  :realization (:VERB ("truck" "shuttle" "fly" "ferry" "cart" "bus" "barge")
                (:S AGENT :O THEME :TO DESTINATION :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category nonvehicle-51.4.2
  :specializes subcategorization-pattern
  :mixins (NP.AGENT-V NP-V-PP.LOCATION NP-V-NP-PP.LOCATION NP-V-NP
           NP-V-NP.LOCATION WITH-AGENT WITH-THEME WITH-PATH HAS-LOCATION)
  :binds ((SPARSER::LOCATION PHYSICAL) (SPARSER::PATH PHYSICAL)
          (SPARSER::THEME MOTOR-VEHICLE) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("row" "ride" "pedal" "paddle" "oar")
                (:S AGENT :L LOCATION) (:S AGENT :O THEME)
                (:S AGENT :O THEME :PATH PATH) (:S AGENT :PATH PATH) (:S AGENT)))

(define-mixin-category vehicle-51.4.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP HAS-LOCATION VEHICLE-51.4.1)
  :binds ((SPARSER::LOCATION PHYSICAL))
  :realization (:VERB
                ("toboggan" "sled" "ski" "skateboard" "skate" "raft"
                 "motorcycle" "motorbike" "kayak" "cycle" "canoe" "bike"
                 "bicycle")
                (:S THEME :L LOCATION)))

(define-mixin-category rehearse-26.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V REHEARSE-26.8)
  :realization (:VERB ("rehearse" "practice" "exercise") (:S AGENT)))

(define-mixin-category dressing_well-41.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-UP NP-V-UP-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PRONOUN)
          (SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB ("trick" "tog" "spruce" "gussy" "dress" "doll")
                (:S AGENT :O PATIENT)))

(define-mixin-category distinguish-23.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP NP-V-PP DISTINGUISH-23.5)
  :realization (:VERB ("differentiate" "distinguish")
                (:S AGENT :BETWEEN THEME :O THEME)
                (:S INSTRUMENT :O THEME :FROM THEME) (:S AGENT :O THEME)))

(define-mixin-category see-30.1-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.STIMULUS SEE-30.1-1-1)
  :realization (:VERB ("hear") (:S EXPERIENCER :ABOUT STIMULUS :OF STIMULUS)))

(define-mixin-category separate-23.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-PATIENT SEPARATE-23.1)
  :realization (:VERB
                ("segregate" "divorce" "divide" "dissimilate" "disentangle"
                 "differentiate" "decouple")
                (:S PATIENT :FROM CO-PATIENT)))

(define-mixin-category weekend-56
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB
                ("winter" "weekend" "vacation" "summer" "sojourn" "overnight"
                 "junket" "honeymoon" "holiday" "December")
                (:S THEME :LOC LOCATION)))

(define-mixin-category dine-39.5
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.PATIENT WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("sup" "snack" "picnic" "nosh" "luncheon" "lunch" "junket"
                 "graze" "feast" "dine" "brunch" "breakfast" "banquet")
                (:S AGENT :ON PATIENT) (:S AGENT)))

(define-mixin-category suffocate-40.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP.THEME-V NP-V-PP.RESULT NP-V-NP-PP.RESULT WITH-AGENT
           WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("suffocate" "stifle" "choke" "asphyxiate")
                (:S AGENT :O PATIENT :TO RESULT) (:S PATIENT :TO RESULT)
                (:S PATIENT) (:S AGENT :O PATIENT)))

(define-mixin-category die-42.4
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT))
  :realization (:VERB
                (("snuff" :PREP "it") ("pop" :PREP "off") "pass"
                 ("kick" :PREP "the_bucket") ("give" :PREP "up_the_ghost")
                 "fall" "decease" ("buy" :PREP "the_farm"))
                (:S PATIENT)))

(define-mixin-category multiply-108-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME MULTIPLY-108)
  :realization (:VERB
                ("subtract" "extrapolate" "interpolate" ("factor" :PREP "out")
                 "deduct")
                (:S AGENT :O THEME :FROM THEME)))

(define-mixin-category declare-29.4-1-1-3
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING DECLARE-29.4-1-1)
  :realization (:VERB ("profess") (:S AGENT :BE_SC_ING THEME)))

(define-mixin-category order-58.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("mandate" "demand" "declare" "announce")
                (:S AGENT :THAT_COMP RESULT) (:S AGENT :O RESULT)))

(define-mixin-category declare-29.4-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S_INF DECLARE-29.4-1-1)
  :realization (:VERB ("declare") (:S AGENT :WH_INF THEME)))

(define-mixin-category declare-29.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-WHAT-S_INF NP-V-HOW-S DECLARE-29.4-1)
  :realization (:VERB ("prove") (:S AGENT :HOW_EXTRACT THEME)
                (:S AGENT :WHAT_INF THEME)))

(define-mixin-category debone-10.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-SOURCE)
  :binds ((SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("eviscerate" "disembowel" "deworm" "dewax" "dewater" "devein"
                 "detusk" "detassel" "destress" "destarch" "desprout" "desex"
                 "descale" "desalt" "derind" "derib" "derat" "demast"
                 "deluster" "delouse" "delint" "deink" "deice" "dehusk"
                 "dehull" "dehorn" "dehead" "dehair" "degut" "degum" "degrit"
                 "degrease" "deglaze" "degerm" "degas" "defuzz" "defrost"
                 "deforest" "defog" "defoam" "deflower" "deflesh" "deflea"
                 "defeather" "defat" "defang" "decontaminate" "declaw" "debur"
                 "debug" "debowel" "debone" "debark" "deaccent")
                (:S AGENT :O SOURCE)))

(define-mixin-category poke-19-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP-V-NP.THEME-PP.INSTSRUMENT NP.INSTRUMENT-V-NP.THEME
           POKE-19-1)
  :realization (:VERB ("stick" "poke" "jab" "dig") (:S INSTRUMENT :O THEME)
                (:S AGENT :O THEME :WITH INSTRUMENT) (:S AGENT :O THEME)))

(define-mixin-category say-37.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.TOPIC NP-V-NP-PP.RECIPIENT NP-V-PP.RECIPIENT-S-QUOTE
           NP-V-HOW-S NP-V-HOW-S_INF NP-V-WHAT-S_INF NP-V-WHAT-S SAY-37.7)
  :realization (:VERB
                ("write" "voice" "vocalize" "venture" "utter" "promulgate"
                 "retort" "respond" "reply" "leak" "intimate" "insist"
                 "insinuate" "exclaim" "divulge" "disclose" "blabber" "allege"
                 "add")
                (:S AGENT :WHAT_EXTRACT TOPIC) (:S AGENT :WHAT_INF TOPIC)
                (:S AGENT :WH_INF TOPIC) (:S AGENT :HOW_EXTRACT TOPIC)
                (:S AGENT :TO RECIPIENT :QUOTATION TOPIC)
                (:S AGENT :O TOPIC :TO RECIPIENT) (:S AGENT :O TOPIC)))

(define-mixin-category lecture-37.11-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.TOPIC NP-V-PP.RECIPIENT-PP.TOPIC LECTURE-37.11)
  :realization (:VERB
                ("pontificate" "write" "theorize" "testify" "talk"
                 ("speak" :PREP "up") ("speak" :PREP "out") "speak"
                 "rhapsodize" "remark" "rave" "rant" "preach" "moralize"
                 "lecture" "gush")
                (:S AGENT :TO RECIPIENT :ABOUT TOPIC) (:S AGENT :ABOUT TOPIC)
                (:S AGENT)))

(define-mixin-category hire-13.5.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP-TO-BE-NP WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("train" ("take" :PREP "on") "subcontract" ("sign" :PREP "up")
                 ("sign" :PREP "on") "sign" "reinstate" "recruit" "prepare"
                 "hire" "groom" "enlist" "engage" "employ" "draft" "contract"
                 "commission")
                (:S AGENT :TO_BE THEME :IO ATTRIBUTE)
                (:S AGENT :O THEME :AS ATTRIBUTE) (:S AGENT :O THEME)))

(define-mixin-category waltz-51.5
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP-V-PP.TRAJECTORY-PP.GOAL NP-V-NP-PP.TRAJECTORY
           NP-V-NP-ADJP NP-V-NP-PP.GOAL WITH-AGENT WITH-THEME WITH-PATH
           WITH-DESTINATION WITH-RESULT)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::THEME PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("waltz" "tapdance" "tango" "squaredance" "shuffle" "samba"
                 "rumba" "quickstep" "polka" "pirouette" "jive" "jitterbug"
                 "jig" "foxtrot" "dance" "conga" "clog" "cancan" "bop"
                 "boogie")
                (:S AGENT :IO THEME :O RESULT) (:S AGENT :O THEME :PATH PATH)
                (:S THEME :PATH PATH :O DESTINATION) (:S THEME)))

(define-mixin-category transfer_mesg-37.1.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP-S_INF NP-V-NP-S_ING NP-V-NP-S
           NP-V-NP-WHAT-S NP-V-NP-WHAT-S_INF NP-V-NP-HOW-S
           TRANSFER_MESG-37.1.1-1)
  :realization (:VERB ("write" "tell" "teach" "show")
                (:S AGENT :IO RECIPIENT :HOW_EXTRACT TOPIC)
                (:S AGENT :IO RECIPIENT :WHAT_INF TOPIC)
                (:S AGENT :IO RECIPIENT :WHAT_EXTRACT TOPIC)
                (:S AGENT :IO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :O RECIPIENT :ABOUT TOPIC)
                (:S AGENT :IO RECIPIENT :OC_TO_INF TOPIC)
                (:S AGENT :O RECIPIENT)))

(define-mixin-category light_emission-43.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION NP.LOCATION-V-PP.THEME THERE-V-NP-PP.LOCATION
           PP.LOCATION-THERE-V-NP NP-V-NP.THEME WITH-THEME HAS-LOCATION
           WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT)))
          (SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB
                ("twinkle" "sparkle" "shine" "shimmer" "scintillate"
                 "incandesce" "glow" "glitter" "glisten" "glint" "glimmer"
                 "gleam" "glare" "fluoresce" "flicker" "flash" "flare" "flame"
                 "burn" "blink" "blaze" "beam")
                (:S AGENT :O THEME) (:LOC LOCATION :O THEME)
                (:O THEME :LOC LOCATION) (:S LOCATION :WITH THEME)
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category correspond-36.1.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT-HOW-S NP-V-PP.CO-AGENT-HOW-S_INF NP-V-WHAT-S_INF
           CORRESPOND-36.1.1)
  :realization (:VERB ("agree") (:S AGENT :WHAT_INF TOPIC)
                (:S AGENT :WITH AGENT :WH_INF TOPIC)
                (:S AGENT :WITH AGENT :HOW_EXTRACT TOPIC)))

(define-mixin-category interact-36.6
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.CO-AGENT WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("split-up" "hook-up" "interact" "go-out" "go-steady"
                 "follow-through" "follow-up")
                (:S AGENT :WITH AGENT) (:S AGENT)))

(define-mixin-category transfer_mesg-37.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-WHAT-S NP-V-WHAT-S_INF NP-V-NP
           NP-V-NP-PP.RECIPIENT NP-V WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                (("write" :PREP "in") "snitch" ("boil" :PREP "down")
                 ("sum" :PREP "up") "summarize" "outline" "communicate"
                 "corroborate" "verify" "illustrate" "sniff" "relay" "recite"
                 "recap" "preach" "pose" "narrate" "justify" "expound"
                 "explicate" "explain" "elucidate" "demonstrate")
                (:S AGENT) (:S AGENT :SENTENTIAL TOPIC :TO RECIPIENT)
                (:S AGENT :SENTENTIAL TOPIC) (:S AGENT :WHAT_INF TOPIC)
                (:S AGENT :WHAT_EXTRACT TOPIC)
                (:S AGENT :TO RECIPIENT :WH_INF TOPIC)
                (:S AGENT :TO RECIPIENT :HOW_EXTRACT TOPIC)
                (:S AGENT :WH_INF TOPIC) (:S AGENT :HOW_EXTRACT TOPIC)))

(define-mixin-category cope-83-1
  :specializes subcategorization-pattern
  :mixins (NP-V COPE-83)
  :realization (:VERB ("cope") (:S AGENT)))

(define-mixin-category give-13.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP-DATIVE-NP NP-V-NP NP-V-PP.RECIPIENT
           WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("render" "refund" "peddle" "pass" "loan" "lend" "give-back"
                 "deal")
                (:S AGENT :TO RECIPIENT) (:S AGENT :O THEME)
                (:S AGENT :IO RECIPIENT :O THEME)
                (:S AGENT :O THEME :TO RECIPIENT)))

(define-mixin-category cope-83
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("deal") (:S AGENT :WITH THEME)))

(define-mixin-category work-73.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME NP-V-PP.CO-AGENT-PP.THEME NP-V-PP.THEME-S_ING
           NP-V-PP.CO-AGENT-PP.THEME-S_ING WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT)))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("work" ("slog" :PREP "away") ("plug" :PREP "away") "labour"
                 "labor" ("bang" :PREP "away"))
                (:S AGENT :WITH AGENT :AT THEME) (:S AGENT :AT THEME)
                (:S AGENT :WITH AGENT :ON THEME) (:S AGENT :ON THEME)
                (:S AGENT)))

(define-mixin-category cooperate-73.1-3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.CO-AGENT-PP.THEME NP-V-PP.THEME-S_ING
           NP-V-PP.CO-AGENT-PP.THEME-S_ING COOPERATE-73.1)
  :realization (:VERB ("work" "labour") (:S AGENT :WITH AGENT :AT THEME)
                (:S AGENT :AT THEME) (:S AGENT :WITH AGENT :ON THEME)
                (:S AGENT :ON THEME)))

(define-mixin-category cooperate-73.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.THEME-S_ING COOPERATE-73.1)
  :realization (:VERB ("participate") (:S AGENT :IN THEME)))

(define-mixin-category substitute-13.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME NP-V-NP.LOCATION NP-V-NP-PP.CO-THEME WITH-THEME
           WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION)))
  :realization (:VERB ("switch" ("swap" :PREP "out") "swap" "substitute")
                (:S THEME :L LOCATION :WITH THEME) (:S THEME :L LOCATION)
                (:S THEME :FOR THEME :INTO THEME)))

(define-mixin-category turn-26.6.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RESULT NP-V-PP.MATERIAL-PP.RESULT
           NP-V-PP.RESULT--PP.MATERIAL TURN-26.6.1)
  :realization (:VERB ("turn" "convert" "change")
                (:S AGENT :TO RESULT :FROM SOURCE)
                (:S AGENT :FROM SOURCE :TO RESULT) (:S AGENT :TO RESULT)))

(define-mixin-category convert-26.6.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.GOAL WITH-AGENT
           CONVERT-26.6.2-1)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB
                (("switch" :PREP "over") "switch" ("move" :PREP "over")
                 "convert" ("change" :PREP "over"))
                (:S AGENT :O PATIENT :TO RESULT) (:S AGENT :O PATIENT)
                (:S PATIENT)))

(define-mixin-category contribute-13.2-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CONTRIBUTE-13.2-2)
  :realization (:VERB ("reimburse") (:S AGENT :O RECIPIENT)))

(define-mixin-category volunteer-95.4
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NP-V-PP NP-V-NP-PP WITH-AGENT WITH-INSTRUMENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB ("proffer" "offer") (:S AGENT :IO INSTRUMENT :O THEME)
                (:S AGENT :O THEME)))

(define-mixin-category contribute-13.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RECIPIENT NP-V-NP-PP.RECIPIENT CONTRIBUTE-13.2)
  :realization (:VERB ("distribute" "disseminate")
                (:S AGENT :O THEME :AMONG RECIPIENT) (:S AGENT :TO RECIPIENT)))

(define-mixin-category relate-86.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME RELATE-86.2)
  :realization (:VERB ("relate" "pertain" "refer") (:S THEME :TO THEME)))

(define-mixin-category sustain-55.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                (("carry" :PREP "on") "continue" ("keep" :PREP "up") "protract"
                 "prolong" "sustain" "maintain" "hold")
                (:S AGENT :O THEME :THROUGH INSTRUMENT)))

(define-mixin-category say-37.7
  :specializes subcategorization-pattern
  :mixins (NP-V-S-QUOTE WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                (("go" :PREP "on") ("go" :PREP "like") "go" "continue"
                 ("be" :PREP "like"))
                (:S AGENT :QUOTATION TOPIC)))

(define-mixin-category continue-55.3
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NP.THEME-V NP-V NP-V-PP.TIME WITH-AGENT WITH-THEME
           TEMPORALLY-LOCALIZED)
  :binds ((SPARSER::CERTAINTY TIME)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("continue") (:S AGENT :UNTIL TIME)
                (:S THEME :UNTIL TIME) (:S AGENT) (:S THEME)
                (:S AGENT :RS_TO_INF THEME)))

(define-mixin-category contiguous_location-47.8-2
  :specializes subcategorization-pattern
  :mixins (NP-V CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB ("dominate") (:S THEME)))

(define-mixin-category encounter-30.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                (("stumble" :PREP "upon") ("stumble" :PREP "on")
                 ("meet" :PREP "with") "meet" ("happen" :PREP "upon")
                 ("happen" :PREP "on") "encounter" ("come" :PREP "across")
                 ("chance" :PREP "upon") ("chance" :PREP "across"))
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category pay-68
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP WITH-AGENT WITH-EXTENT WITH-THEME)
  :binds ((SPARSER::EXTENT CURRENCY)
          (SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("serve" "waste" "squander" "spend") (:S AGENT :O EXTENT)
                (:S AGENT :O EXTENT :FOR THEME)))

(define-mixin-category consume-66-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING NP-V-NP-PP.GOAL CONSUME-66)
  :realization (:VERB ("waste" "squander" "spend" "misspend" "reuse")
                (:S AGENT :O EXTENT :ON GOAL)))

(define-mixin-category eat-39.1-3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP WITH-PATIENT EAT-39.1)
  :binds ((SPARSER::PATIENT PATHOGEN))
  :realization (:VERB
                ("use" "smoke" ("shoot" :PREP "up") "snort" "mainline" "inject"
                 "huff")
                (:S AGENT :O PATIENT) (:S AGENT)))

(define-mixin-category consume-66
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING WITH-AGENT WITH-EXTENT WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("consume" "use") (:S AGENT :IO EXTENT :SC_ING GOAL)
                (:S AGENT :O EXTENT)))

(define-mixin-category respond-113
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME NP-V-PP.PREDICATE NP-V-PP.THEME-PP.PREDICATE
           WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB ("retaliate" "respond" "reply" "rebel" "react")
                (:S AGENT :|TO\|AGAINST| THEME :WITH PREDICATE)
                (:S AGENT :WITH PREDICATE) (:S AGENT :|TO\|AGAINST| THEME)
                (:S AGENT)))

(define-mixin-category cooperate-73.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.CO-AGENT-PP.THEME NP-V-PP.THEME-S_ING
           COOPERATE-73.1)
  :realization (:VERB ("join" "cooperate" "collaborate") (:S AGENT :IN THEME)
                (:S AGENT :WITH AGENT :IN THEME)
                (:S AGENT :WITH AGENT :ON THEME) (:S AGENT :ON THEME)))

(define-mixin-category conspire-71
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.CO-AGENT NP-V-PP.BENEFICIARY NP-V-S_INF WITH-AGENT
           WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("befriend" ("team" :PREP "up") "sin" "scheme" "retaliate"
                 "rebel" "protest" "partner" "legislate" "discriminate"
                 "conspire" "collude" "collaborate" "ally")
                (:S AGENT :SC_TO_INF THEME) (:S AGENT :AGAINST BENEFICIARY)
                (:S AGENT :WITH AGENT) (:S AGENT)))

(define-mixin-category suspect-81
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE NP-V-PP.ATTRIBUTE-S_ING NP-V-PP.THEME-S_ING
           WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("condemn" "accuse" "suspect") (:S AGENT :POSS_ING THEME)
                (:S AGENT :O THEME :OF ATTRIBUTE)))

(define-mixin-category consider-29.9-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-TO-BE-NP NP-V-NP-ADJ NP-V-THAT-S CONSIDER-29.9)
  :realization (:VERB ("posit" "suppose" "think" "suspect")
                (:S AGENT :THAT_COMP THEME)
                (:S AGENT :NP_PPART THEME :SENTENTIAL ATTRIBUTE)
                (:S AGENT :TO_BE THEME)
                (:S AGENT :IO THEME :SENTENTIAL ATTRIBUTE)))

(define-mixin-category consider-29.9-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP-ADJ NP-V-NP-NP NP-V-NP-PP.ATTRIBUTE
           NP-V-WHETHER-S_INF CONSIDER-29.9-1-1)
  :realization (:VERB ("consider") (:S AGENT :WHETH_INF THEME)
                (:S AGENT :O THEME :FOR ATTRIBUTE)
                (:S AGENT :IO THEME :SENTENTIAL ATTRIBUTE)
                (:S AGENT :BE_SC_ING THEME)))

(define-mixin-category indicate-78
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-NP NP-V-WHETHER/IF-S NP-V-WHAT-S
           WITH-EXPERIENCER WITH-INSTRUMENT WITH-TOPIC)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("anticipate" "forebode" "prognosticate" "expose" "corroborate"
                 "denote" "predict" "imply")
                (:S INSTRUMENT :WHAT_EXTRACT TOPIC)
                (:S INSTRUMENT :WH_COMP TOPIC)
                (:S INSTRUMENT :SENTENTIAL TOPIC) (:S INSTRUMENT :WH_INF TOPIC)
                (:S INSTRUMENT :HOW_EXTRACT TOPIC)))

(define-mixin-category escape-51.1-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ESCAPE-51.1-1)
  :realization (:VERB ("approach" "enter") (:S THEME :O DESTINATION)))

(define-mixin-category invest-13.5.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.GOAL NP-V-NP-PP.THEME INVEST-13.5.4)
  :realization (:VERB ("allocate" "commit" "put" "invest")
                (:S AGENT :IO EXTENT :O THEME) (:S AGENT :IO EXTENT :O GOAL)))

(define-mixin-category dedicate-79
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING NP-V-NP-PP.GOAL WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("commit" "devote" "dedicate")
                (:S AGENT :O THEME :TO GOAL)))

(define-mixin-category confine-92-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION CONFINE-92)
  :realization (:VERB ("confine" "send" "recommit" "commit")
                (:S AGENT :O THEME :TO DESTINATION)))

(define-mixin-category confine-92
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("immure" "jug" "imprison" "jail" "detain" "hospitalize"
                 "incarcerate" "institutionalize" "charge")
                (:S AGENT :O THEME)))

(define-mixin-category declare-29.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-TO-BE-NP NP-V-NP-ADJ NP-V-THAT-S WITH-AGENT
           WITH-THEME WITH-RESULT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("confess" "avow") (:S AGENT :THAT_COMP THEME)
                (:S AGENT :NP_PPART THEME :SENTENTIAL RESULT)
                (:S AGENT :TO_BE THEME) (:S AGENT :IO THEME :SENTENTIAL RESULT)))

(define-mixin-category concealment-16-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.BENEFICIARY NP-V-PP.LOCATION CONCEALMENT-16)
  :realization (:VERB ("hide") (:S AGENT :LOC LOCATION)
                (:S AGENT :FROM BENEFICIARY) (:S AGENT)))

(define-mixin-category contain-15.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB ("hold" "contain") (:S INSTRUMENT :O THEME)))

(define-mixin-category create-26.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V CREATE-26.4)
  :realization (:VERB
                ("write" "silkscreen" "scriptwrite" "invent" "improvise"
                 "draft" "compose" "choreograph")
                (:S AGENT)))

(define-mixin-category comprise-107.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP COMPRISE-107.2)
  :realization (:VERB ("contain" "encompass" ("consist" :PREP "of") "comprise")
                (:S INSTRUMENT :O THEME)))

(define-mixin-category comprise-107.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP COMPRISE-107.2)
  :realization (:VERB
                ("form" "constitute" ("make" :PREP "up") "make" "compose"
                 "comprise")
                (:S THEME :O INSTRUMENT)))

(define-mixin-category discover-84
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-NP NP-V-THAT-S NP-V-WHAT-S
           NP-V-WHAT-S_INF WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                (("work" :PREP "out") ("chance" :PREP "upon")
                 ("chance" :PREP "on") ("chance" :PREP "across") "solve"
                 ("scent" :PREP "out") "see" "relearn" "rationalize"
                 "ascertain" "realize" "guess" "find" "discover" "determine"
                 "deduce")
                (:S AGENT :WHAT_INF THEME) (:S AGENT :WHAT_EXTRACT THEME)
                (:S AGENT :THAT_COMP THEME) (:S AGENT :SENTENTIAL THEME)
                (:S AGENT :WH_INF THEME) (:S AGENT :HOW_EXTRACT THEME)))

(define-mixin-category transfer_mesg-37.1.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP TRANSFER_MESG-37.1.1)
  :realization (:VERB ("read" "quote" "dictate")
                (:S AGENT :IO RECIPIENT :SENTENTIAL TOPIC)))

(define-mixin-category register-54.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.VALUE REGISTER-54.1-1)
  :realization (:VERB ("weigh" "total" "register" "read" "measure" "clock")
                (:S THEME :O PATH)))

(define-mixin-category learn-14-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC LEARN-14-2)
  :realization (:VERB ("read" "learn") (:S AGENT :OF TOPIC :ABOUT TOPIC)))

(define-mixin-category hold-15.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::THEME (:OR NIL PHYSICAL)) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("wield" "seize" "hold" "handle" "grip" "grasp" "grab" "clutch"
                 "clasp")
                (:S AGENT :O THEME)))

(define-mixin-category comprehend-87.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-HOW-S_INF NP-V-NP-TO-BE-NP COMPREHEND-87.2)
  :realization (:VERB
                ("recognize" "recognise" "realize" "read" "get" "fathom"
                 "follow" "apprehend" "comprehend" "grasp")
                (:S EXPERIENCER :TO_BE STIMULUS)
                (:S EXPERIENCER :WH_INF STIMULUS)
                (:S EXPERIENCER :AC_ING STIMULUS)))

(define-mixin-category stop-55.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING STOP-55.4-1)
  :realization (:VERB
                ("quit" "stop" "finish" "end" "discontinue" "conclude" "cease")
                (:S AGENT :BE_SC_ING THEME)))

(define-mixin-category complete-55.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING COMPLETE-55.2)
  :realization (:VERB ("quit" "discontinue" "complete")
                (:S AGENT :BE_SC_ING THEME)))

(define-mixin-category complete-55.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("pull-off" "bring-off" "achieve" "accomplish")
                (:S AGENT :O THEME)))

(define-mixin-category rush-53.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("rush" "hurry" "hasten") (:S AGENT :THROUGH THEME)
                (:S AGENT :O THEME) (:S AGENT :WITH THEME)))

(define-mixin-category orbit-51.9.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB ("twirl" "rotate" "revolve" "orbit")
                (:S THEME :PATH INSTRUMENT)))

(define-mixin-category cognize-85
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.STIMULUS NP-V-PP.STIMULUS-HOW/WHETHER-S NP-V-THAT-S
           WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB ("cognize" "cognise")
                (:S EXPERIENCER :THAT_COMP STIMULUS)
                (:S EXPERIENCER :ABOUT STIMULUS) (:S EXPERIENCER :OF STIMULUS)
                (:S EXPERIENCER :SENTENTIAL STIMULUS)))

(define-mixin-category clear-10.3-1
  :specializes subcategorization-pattern
  :mixins (NP.LOCATION-V NP-V-PP.LOCATION CLEAR-10.3)
  :realization (:VERB ("empty" "drain" "clear") (:S THEME :SRC SOURCE)
                (:S SOURCE)))

(define-mixin-category preparing-26.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.BENEFICIARY-NP NP-V-NP-PP.BENEFICIARY WITH-PATIENT
           PREPARING-26.3)
  :binds ((SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("weld" "wash" "toast" "softboil" "set" "scramble" "roast"
                 "pour" "poach" "overbake" "microwave" "iron" "hardboil"
                 "grill" "fry" "clean" "broil" "boil" "barbecue" "barbeque")
                (:S AGENT :O PATIENT :FOR BENEFICIARY)
                (:S AGENT :IO BENEFICIARY :O PATIENT) (:S AGENT :O PATIENT)))

(define-mixin-category clear-10.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.LOCATION NP-V-NP-PP.LOCATION NP-V-NP.LOCATION-PP.THEME
           WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("hollow" "clean") (:S AGENT :O SOURCE :OF THEME)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O SOURCE)))

(define-mixin-category separate-23.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-PATIENT SEPARATE-23.1)
  :realization (:VERB ("separate" "part" "dissociate" "disconnect")
                (:S PATIENT :WITH CO-PATIENT)))

(define-mixin-category shake-22.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT NP-V-NP-TOGETHER SHAKE-22.3)
  :realization (:VERB ("mass" "lump") (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)))

(define-mixin-category concealment-16
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.BENEFICIARY NP-V-NP-PP.LOCATION NP-V-NP WITH-AGENT
           WITH-BENEFICIARY WITH-PATIENT HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("suppress" "shelter" "sequester" "seclude" "screen" "repress"
                 "quarantine" "isolate" "impound" "curtain" "conceal"
                 "cloister" "block")
                (:S AGENT :O PATIENT) (:S AGENT :O PATIENT :LOC LOCATION)
                (:S AGENT :O PATIENT :FROM BENEFICIARY)))

(define-mixin-category exceed-90
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE WITH-THEME WITH-THEME WITH-ATTRIBUTE)
  :realization (:VERB
                ("top" "surpass" "overstep" "overreach" "outwit" "outweigh"
                 "outstrip" "outsmart" "outshine" "outrace" "outnumber"
                 "outmatch" "outdo" "outbid" "lap" "exceed" "better"
                 "transcend" "overleap" "overcome")
                (:S THEME :O THEME :IN ATTRIBUTE) (:S THEME :O THEME)))

(define-mixin-category chew-39.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP.PATIENT WITH-PATIENT CHEW-39.2)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization (:VERB ("suck" "slurp" "sip" "lap") (:S AGENT :FROM PATIENT)
                (:S AGENT) (:S AGENT :O PATIENT)))

(define-mixin-category cheat-10.6.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME CHEAT-10.6.1)
  :realization (:VERB ("swindle" "defraud" "fleece" "cozen" "con")
                (:S AGENT :O SOURCE :FOR THEME)))

(define-mixin-category cheat-10.6.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("gull" "cheat") (:S AGENT :O SOURCE :OUT_OF THEME)
                (:S AGENT :O SOURCE)))

(define-mixin-category chase-51.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.LOCATION NP-V-PP.THEME WITH-AGENT WITH-THEME
           WITH-PATH)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("trail" "track" "tail" "shadow" "pursue" "follow" "chase")
                (:S AGENT :AFTER THEME) (:S AGENT :O THEME :SPATIAL PATH)
                (:S AGENT :O THEME)))

(define-mixin-category characterize-29.2-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ NP-V-WHETHER/IF-S NP-V-WHAT-S NP-V-WHAT-S_INF
           CHARACTERIZE-29.2-1)
  :realization (:VERB ("reveal" "report") (:S AGENT :WHAT_INF THEME)
                (:S AGENT :WHAT_EXTRACT THEME) (:S AGENT :WH_COMP THEME)
                (:S AGENT :NP_PPART THEME)))

(define-mixin-category wish-62
  :specializes subcategorization-pattern
  :mixins (NP-V-FOR-NP-S_INF NP-V-NP NP-V-NP-TO-BE-ADJ NP-V-NP-ADJ NP-V-THAT-S
           NP-V-S_INF WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("yen" "imagine" "dream" "aim" "think" "propose" "plan"
                 "intend" "wish" "expect")
                (:S EXPERIENCER :SC_TO_INF STIMULUS)
                (:S EXPERIENCER :THAT_COMP STIMULUS)
                (:S EXPERIENCER :NP_PPART STIMULUS)
                (:S EXPERIENCER :TO_BE STIMULUS)
                (:S EXPERIENCER :SENTENTIAL STIMULUS)
                (:S EXPERIENCER :FOR_COMP STIMULUS)))

(define-mixin-category empathize-88.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS NP-V-PP.STIMULUS-S_ING NP-V-PP.STIMULUS-WHAT-S
           WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("commiserate" "identify" "sympathize" "empathize")
                (:S EXPERIENCER :WITH STIMULUS) (:S EXPERIENCER)))

(define-mixin-category representation-110.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.MANNER WITH-THEME WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization (:VERB ("symbolize" "signify" "represent" "mean" "denote" "be")
                (:S THEME :O THEME :IN PREDICATE :|\|| PREDICATE :FOR PREDICATE
                 :|\|| PREDICATE :TO PREDICATE)
                (:S THEME :O THEME)))

(define-mixin-category deduce-97.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-THAT-S-PP.THEME NP-V-THAT-S
           WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("rationalize" "prove" "conceive" "gather" "deduce" "deduct"
                 "infer" "disprove" "derive" "conclude" ("reason" :PREP "out")
                 "reason")
                (:S AGENT :THAT_COMP THEME) (:S AGENT :FROM THEME :O SOURCE)
                (:S AGENT :O THEME :FROM SOURCE) (:S AGENT :O THEME)))

(define-mixin-category characterize-29.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF CHARACTERIZE-29.2)
  :realization (:VERB ("underestimate" "view" "conceive" "characterize")
                (:S AGENT :WH_INF THEME) (:S AGENT :HOW_EXTRACT THEME)))

(define-mixin-category see-30.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S NP-V-S_ING SEE-30.1-1)
  :realization (:VERB
                ("see" "notice" "perceive" "sense" "feel" "discern" "detect")
                (:S EXPERIENCER :POSS_ING STIMULUS)
                (:S EXPERIENCER :OC_ING STIMULUS)
                (:S EXPERIENCER :OC_BARE_INF STIMULUS)))

(define-mixin-category patent-101
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("impersonate" "imitate" "evidence" "verify" "accredit"
                 "credential" "certify" "register" "license" "trademark"
                 "patent" "copyright")
                (:S AGENT :O THEME)))

(define-mixin-category multiply-108
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("count" "tally" "add" "sum") (:S AGENT :PLURAL THEME)))

(define-mixin-category matter-91
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.EXPERIENCER IT-V-PP.EXPERIENCER-THAT-S IT-V-THAT-S
           THAT-S.STIMULUS-V WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("count" "matter") (:S STIMULUS) (:THAT_COMP STIMULUS)
                (:TO EXPERIENCER :THAT_COMP STIMULUS)
                (:S STIMULUS :TO EXPERIENCER)))

(define-mixin-category masquerade-29.6
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE WITH-AGENT WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("rank" "qualify" "officiate" "masquerade" "function" "count"
                 "behave")
                (:S AGENT :O ATTRIBUTE)))

(define-mixin-category differ-23.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME NP-V WITH-THEME WITH-THEME)
  :realization (:VERB ("vary" "diverge" "differ" "deviate" "branch") (:S THEME)
                (:S THEME :FROM THEME :WITH THEME)))

(define-mixin-category convert-26.6.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.SOURCE-PP.GOAL CONVERT-26.6.2)
  :realization (:VERB ("turn" "shift" "revert" "return")
                (:S PATIENT :FROM SOURCE :TO RESULT)))

(define-mixin-category caused_calibratable_cos-45.6.2-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-ADV-MIDDLE NP.PATIENT-V
           NP.PATIENT-V-NP.EXTENT-PP.INITIAL_STATE-PP.RESULT
           NP.PATIENT-V-PP.EXTENT-PP.INITIAL_STATE-PP.RESULT
           NP.ATTRIBUTE-V-NP.EXTENT-PP.INITIAL_STATE-PP.RESULT
           NP.ATTRIBUTE-V-PP.EXTENT-PP.INITIAL_STATE-PP.RESULT
           NP.PATIENT-V-PP.ATTRIBUTE-NP.EXTENT-PP.INITIAL_STATE-PP.RESULT
           NP.PATIENT-V-PP.ATTRIBUTE-PP.EXTENT-PP.INITIAL_STATE-PP.RESULT
           CAUSED_CALIBRATABLE_COS-45.6.2)
  :realization (:VERB
                ("lower" "vary" "shift" "move" "increase" "diminish" "decrease"
                 "build-up" "balloon" "advance")
                (:S PATIENT :IN ATTRIBUTE :BY EXTENT :FROM INTIAL_STATE :TO
                 RESULT)
                (:S PATIENT :IN ATTRIBUTE :O EXTENT :FROM SOURCE :TO RESULT)
                (:S ATTRIBUTE :OF PATIENT :BY EXTENT :FROM SOURCE :TO RESULT)
                (:S ATTRIBUTE :OF PATIENT :O EXTENT :FROM SOURCE :TO RESULT)
                (:S PATIENT :BY EXTENT :FROM SOURCE :TO RESULT)
                (:S PATIENT :O EXTENT :FROM SOURCE :TO RESULT) (:S PATIENT)
                (:S PATIENT :M ADVERB) (:S CAUSE :O PATIENT)))

(define-mixin-category limit-76
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.GOAL NP-V-NP-S_INF WITH-CAUSE
           WITH-PATIENT WITH-GOAL)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("constrain" "restrain" "restrict" "reduce" "limit" "confine")
                (:S CAUSE :IO PATIENT :OC_TO_INF GOAL)
                (:S CAUSE :O PATIENT :TO GOAL) (:S CAUSE :O PATIENT)))

(define-mixin-category drive-11.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT MOTOR-VEHICLE)))
  :realization (:VERB
                ("wheel" "trundle" ("tool" :PREP "around") "tool" "paddle"
                 "motor" "row" "drive" "bike")
                (:S AGENT :O THEME :TO DESTINATION :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION :TOWARDS
                 DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category steal-10.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP STEAL-10.5)
  :realization (:VERB
                ("wangle" "swipe" "steal" "sneak" "snatch" "smuggle" "shoplift"
                 "salvage" "pirate" "pilfer" "nick" "nab" "hook" "grab" "flog"
                 "cop" "capture" "cadge")
                (:S AGENT :IO BENEFICIARY :O THEME)))

(define-mixin-category push-12
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-PATH WITH-RESULT)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("heave") (:S AGENT :O THEME)))

(define-mixin-category touch-20
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-EXPERIENCER WITH-THEME
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("wring" "twinge" "tweak" "tug" "squeeze" "osculate" "knead"
                 "grope" "chafe")
                (:S AGENT :O THEME :WITH INSTRUMENT) (:S AGENT :O THEME)
                (:S AGENT :O EXPERIENCER :WITH INSTRUMENT)
                (:S AGENT :O EXPERIENCER)))

(define-mixin-category push-12-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJP-RESULT NP-V-PP-CONATIVE PUSH-12)
  :realization (:VERB ("yank" "tug" "pull" "jerk")
                (:S AGENT :AT THEME :AGAINST THEME :ON THEME)
                (:S AGENT :IO THEME :O RESULT)))

(define-mixin-category push-12-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP NP-V-PP.TRAJECTORY PUSH-12-1)
  :realization (:VERB
                ("thrust" "squeeze" "shove" "push" "press" "nudge" "jostle")
                (:S AGENT :DIR PATH) (:S AGENT)))

(define-mixin-category succeed-74-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF SUCCEED-74-1)
  :realization (:VERB ("manage") (:S AGENT :SC_TO_INF THEME)))

(define-mixin-category cope-83-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP COPE-83-1)
  :realization (:VERB
                (("get" :PREP "through") ("get" :PREP "by") "grapple" "manage")
                (:S AGENT :O THEME)))

(define-mixin-category focus-87.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.TOPIC NP-V-PP.THEME-S_ING NP-V-PP.TOPIC-WHAT-S
           NP-V-PP.TOPIC-WHAT-S_INF FOCUS-87.1)
  :realization (:VERB
                ("wonder" "think" "ruminate" "reflect" "ponder" "muse"
                 "meditate" "deliberate" "brood")
                (:S AGENT :ABOUT TOPIC) (:S AGENT)))

(define-mixin-category caring-75.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP CARING-75.2)
  :realization (:VERB (("look" :PREP "out") "care") (:S AGENT :FOR THEME)))

(define-mixin-category care-88.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-THAT-S NP-V-WHETHER/IF-S WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("mind") (:S EXPERIENCER :WH_COMP STIMULUS)
                (:S EXPERIENCER :THAT_COMP STIMULUS) (:S EXPERIENCER)))

(define-mixin-category captain-29.8-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CAPTAIN-29.8-1)
  :realization (:VERB ("star") (:S BENEFICIARY :O AGENT)))

(define-mixin-category establish-55.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("stage" "pioneer" "machinate" "innovate" "constitutionalize"
                 "constitute" "bring")
                (:S AGENT :O PATIENT)))

(define-mixin-category feeding-39.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.RECIPIENT NP-V-NP-DATIVE-NP WITH-AGENT WITH-THEME
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("suckle" "spoonfeed" "nurse" "handfeed" "force-feed" "feed"
                 "breastfeed" "bottlefeed")
                (:S AGENT :IO RECIPIENT :O THEME)
                (:S AGENT :O THEME :TO RECIPIENT) (:S AGENT :O RECIPIENT)))

(define-mixin-category defend-72.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-S_ING WITH-AGENT WITH-BENEFICIARY
           WITH-THEME)
  :binds ((SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                (("speak" :PREP "for") "safeguard" "guard" "preserve" "shade"
                 "protect" "insure" "defend")
                (:S AGENT :POSS_ING BENEFICIARY) (:S AGENT :AC_ING BENEFICIARY)
                (:S AGENT :O BENEFICIARY :AGAINST THEME)
                (:S AGENT :O BENEFICIARY)))

(define-mixin-category employment-95.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP NP-V-PP-PP WITH-AGENT WITH-THEME WITH-BENEFICIARY
           WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("work" "temp" "subcontract" "freelance" "clerk")
                (:S AGENT :IO ATTRIBUTE :O AGENT) (:S AGENT :ON THEME :O AGENT)
                (:S AGENT :ON THEME :|\|| THEME :IN THEME :|\|| THEME :AT
                 THEME)
                (:S AGENT :O AGENT) (:S AGENT)))

(define-mixin-category caring-75.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CARING-75.2)
  :realization (:VERB
                (("wait" :PREP "on") "mind" "manage" ("look" :PREP "after")
                 "babysit")
                (:S AGENT :O THEME)))

(define-mixin-category volunteer-95.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP VOLUNTEER-95.4)
  :realization (:VERB (("sign" :PREP "up") "enlist" "volunteer")
                (:S AGENT :O ATTRIBUTE)))

(define-mixin-category declare-29.4-1-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-WHETHER/IF-S NP-V-WHETHER/IF-S_INF DECLARE-29.4-1-1)
  :realization (:VERB ("judge" "find") (:S AGENT :WHETH_INF THEME)
                (:S AGENT :WH_COMP THEME)))

(define-mixin-category entity_specific_cos-45.5
  :specializes subcategorization-pattern
  :mixins (NP.PATIENT-V WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("pullulate" "wither" "wilt" "wane" "tarnish" "swell"
                 "suppurate" "subside" "stagnate" "sprout" "spoil" "rust" "rot"
                 "putrefy" "progress" "phosphoresce" "oxidize" "moult" "molt"
                 "molder" "green" "germinate" "foliate" "flower" "fester"
                 "ferment" "erode" "ebb" "deteriorate" "decompose" "decay"
                 "crust" "corrode" "burn" "burgeon" "bud" "blossom" "bloom"
                 "blister" "atrophy" "apostatize")
                (:S PATIENT)))

(define-mixin-category send-11.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION SEND-11.1)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization (:VERB
                ("wire" "UPS" "transmit" "sneak" "smuggle" "slip" "ship" "send"
                 "pass" "mail" "hand" "forward" "FedEx" "express" "airmail")
                (:S AGENT :IO DESTINATION :O THEME)))

(define-mixin-category slide-11.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION SLIDE-11.2)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization (:VERB ("slide" "roll" "float" "dart" "bounce")
                (:S AGENT :IO DESTINATION :O THEME)))

(define-mixin-category run-51.3.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.LOCATION NP-V-NP NP-V-NP-PP.RESULT WITH-AGENT WITH-RESULT
           RUN-51.3.2)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("trot" "trip" "tack" "strut" "speed" "sneak" "slide" "skitter"
                 "skip" "scoot" "roll" "race" "prance" "lope" "inch" "hurtle"
                 "hurry" "hobble" "hasten" "glide" "gallop" "float" "drift"
                 "dash" "dart" "coast" "canter" "bowl" "bounce" "back")
                (:S AGENT :O THEME :TO RESULT :INTO RESULT) (:S AGENT :O THEME)
                (:S AGENT :O AGENT) (:S AGENT :O THEME :SPATIAL PATH)))

(define-mixin-category vehicle-51.4.1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP.THEME-V-PP.LOCATION NP-V-NP-PP.LOCATION NP-V-NP
           NP-V-NP-ADJ NP-V-NP-PP.RESULT WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-PATH WITH-DESTINATION WITH-RESULT)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::THEME (:OR PHYSICAL-AGENT NIL))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("yacht" "trolley" "tram" "taxi" "sleigh" "sledge" "rocket"
                 "rickshaw" "punt" "parachute" "motor" "moped" "jet" "jeep"
                 "helicopter" "gondola" "ferry" "dogsled" "coach" "chariot"
                 "caravan" "cab" "bus" "bobsled" "boat" "balloon")
                (:S AGENT :O THEME :TO RESULT :INTO RESULT)
                (:S AGENT :IO THEME :O RESULT) (:S AGENT :O THEME)
                (:S AGENT :O THEME :PATH PATH) (:S THEME :PATH PATH) (:S THEME)))

(define-mixin-category withdraw-82-3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.SOURCE WITHDRAW-82)
  :realization (:VERB ("retire" ("pull" :PREP "away") "retreat" "withdraw")
                (:S AGENT :FROM SOURCE) (:S AGENT)))

(define-mixin-category funnel-9.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP NP-V-NP-PP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION WITH-PATH)
  :binds ((SPARSER::PATH LOCATION)
          (SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("channelize" "sop" "siphon" "scoop" "hoe" "ladle" "dunk"
                 "dip")
                (:S AGENT :O THEME :SPATIAL PATH)
                (:S AGENT :IO THEME :ADV_LOC DESTINATION)
                (:S AGENT :O THEME :DEST_CONF DESTINATION)))

(define-mixin-category reject-77.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("turn-down" "refuse" "rebuff" "decline")
                (:S AGENT :POSS_ING THEME) (:S AGENT :SENTENTIAL THEME)))

(define-mixin-category escape-51.1-1-3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ESCAPE-51.1-1)
  :realization (:VERB ("pass" "descend" "cross" "climb" "ascend")
                (:S THEME :O PATH)))

(define-mixin-category spray-9.7-2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME SPRAY-9.7)
  :binds ((SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("stuff" "stock" "stack" "slather" "seed" "plant" "heap" "dust"
                 "mound" "daub" "dab" "load" "drape")))

(define-mixin-category classify-29.10
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.GOAL NP-V-NP-PP.LOCATION WITH-AGENT WITH-THEME
           WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("recode" "code" "categorize" "seed" "separate"
                 ("sort" :PREP "out") "catalogue" "number" "grade" "chunk"
                 "lump" "bracket" "regroup" "group" "reclassify" "isolate"
                 "sort" "constellate" "class" "classify")
                (:S AGENT :O THEME :IN GOAL) (:S AGENT :O THEME :AS GOAL)
                (:S AGENT :O THEME)))

(define-mixin-category remedy-45.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB
                ("vulgarize" "ventilate" "urbanize" "underfeed" "turn-down"
                 "turn-up" "trivialize" "truncate" "traumatize" "tousle"
                 "tart up" "taiwanize" "tabulate" "sulfurize" "subvert"
                 "streamline" "sterilize" "sovietize" "sinter" "singe"
                 "silence" "shortchange" "sensationalize" "secularize" "revise"
                 "repair" "remedy" "remaster" "regularize" "refract" "redact"
                 "rectify" "reanimate" "raise" "publicize" "prettify"
                 "prejudge" "popularize" "pollard" "pink" "perpetuate"
                 "perfect" "pasteurize" "paralyze" "oxygenate" "overshadow"
                 "obviate" "obscure" "objectify" "nitrify" "nasalize" "mute"
                 "mummify" "muddy" "motorize" "mismanage" "mishandle"
                 "minimize" "miniaturize" "mineralize" "militarize" "medicate"
                 "mechanize" "marginalize" "manure" "light" "iodize" "invert"
                 "inspissate" "inseminate" "incinerate" "inactivate"
                 "immortalize" "ice" "hydrogenate" "humidify" "humanize"
                 "grade" "fortify" "flouridate" "fertilize" "federalize"
                 "fanaticize" "expropriate" "exhume" "exacerbate" "europeanize"
                 "eternize" "eternalize" "enunciate" "enhance" "embrocate"
                 "embitter" "emasculate" "edify" "disorganize" "dislocate"
                 "dispel" "disinter" "disinfect" "dishevel" "disable"
                 "diffract" "desensitize" "desalinate" "demobilize" "dement"
                 "demean" "delineate" "dehumidify" "deconstruct" "debase"
                 "deafen" "cremate" "counteract" "correct" "contextualize"
                 "construct" "constringe" "constipate" "configure"
                 "commercialize" "coif" "circumscribe" "circumcise"
                 "christianize" "chlorinate" "chamfer" "cauterize"
                 "catholicize" "castrate" "carbonify" "capacitate" "bungle"
                 "bring-up" "bring-out" "bowdlerize" "botch" "bloody" "blemish"
                 "blast" "bedew" "bastardize" "backfill" "animate"
                 "anesthetize" "alleviate" "alcoholize" "africanize" "abase")
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category put_direction-9.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("back" "raise" "lower" "lift" "hoist" "heel" "elevate" "drive"
                 "drop")
                (:S AGENT :IO THEME :ADV_LOC DESTINATION)
                (:S AGENT :O THEME :SPATIAL DESTINATION) (:S AGENT :O THEME)))

(define-mixin-category chew-39.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP-CONATIVE NP-V-PP.PATIENT WITH-PATIENT CHEW-39.2)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization (:VERB
                ("teethe" "lick" "peck" "pick" "nibble" "munch" "masticate"
                 "gum" "gnaw" "crunch" "chomp" "chew")
                (:S AGENT :ON PATIENT) (:S AGENT :AT PATIENT) (:S AGENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category use-105.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-ADV NP-V-NP-PP.PREDICATE NP-V-NP-S_INF
           WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("work" "run" "reuse" "play" "exploit" "exert" "employ" "apply"
                 "utilize" "use")
                (:S AGENT :IO THEME :OC_TO_INF PREDICATE)
                (:S AGENT :O THEME :FOR PREDICATE)
                (:S AGENT :O THEME :M ADVERB) (:S AGENT :O THEME)))

(define-mixin-category function-105.2.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-THEME)
  :realization (:VERB ("run" ("go" :PREP "on") "go") (:S THEME)))

(define-mixin-category carry-11.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("yank" "tug" "tow" "tote" "schlep" "run" "pull" "nudge" "lug"
                 "hoist" "heft" "haul" "draw" "drag" "carry")
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION :SRC
                 SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION :TOWARDS
                 DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category bump-18.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::LOCATION PHYSICAL))
  :realization (:VERB ("run" "hit") (:S THEME :L LOCATION)))

(define-mixin-category reflexive_appearance-48.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP WITH-THEME WITH-AGENT WITH-RECIPIENT
           REFLEXIVE)
  :binds ((SPARSER::PRONOUN PRONOUN) (SPARSER::RECIPIENT PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("suggest" "show" "shape" "reveal" "recommend" "reassert"
                 "propose" "proffer" "present" "pose" "offer" "manifest"
                 "intrude" "form" "flaunt" "express" "expose" "exhibit"
                 "display" "define" "declare" "assert" "announce")
                (:S THEME :O PRONOUN) (:S AGENT :O THEME :TO RECIPIENT)
                (:S AGENT :O THEME)))

(define-mixin-category scribble-25.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V SCRIBBLE-25.2)
  :realization (:VERB
                (("print" :PREP "up") ("print" :PREP "out") "write" "type"
                 "stencil" "spraypaint" "sketch" "scribble" "scrawl" "scratch"
                 "record" "print" "plot" "pencil" "ink" "draw" "doodle"
                 "crayon" "charcoal" "chalk" "carve")
                (:S AGENT)))

(define-mixin-category disassemble-23.3
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.CO-PATIENT NP-V-ADV-MIDDLE
           WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("sieve" "unzip" "untie" "unstitch" "unstaple" "unshackle"
                 "unseal" "unscrew" "unpin" "unpeg" "unleash" "unlock"
                 "unlatch" "unlace" "unhook" "unhitch" "unhinge" "unglue"
                 "unfix" "unfasten" "unclip" "unclasp" "unclamp" "unchain"
                 "unbutton" "unbuckle" "unbolt" "sunder" "slice" "sift"
                 "segregate" "partition" "pare" "dismount" "dismantle"
                 "disconnect" "disassemble" "detach" "carve")
                (:S PATIENT :M ADVERB) (:S AGENT :O PATIENT :FROM CO-PATIENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category roll-51.3.1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP-V-PP.LOCATION NP-V-NP.THEME NP-V-NP-PP.LOCATION
           NP-V-ADJ NP-V-PP.RESULT NP-V-NP-ADJ NP-V-NP-PP.RESULT WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-SOURCE WITH-PATH WITH-DESTINATION
           WITH-RESULT)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("undulate" "spiral" "soar" "snake" "wind" "whirl" "twist"
                 "twirl" "turn" "spin" "rotate" "revolve" "coil" "swing"
                 "slide" "roll" "nose" "move" "glide" "float" "drop" "drift"
                 "bounce")
                (:S AGENT :O THEME :TO RESULT :INTO RESULT)
                (:S AGENT :IO THEME :O RESULT)
                (:S THEME :TO RESULT :INTO RESULT) (:S THEME :O RESULT)
                (:S AGENT :O THEME :PATH PATH) (:S AGENT :O THEME)
                (:S THEME :SPATIAL PATH) (:S THEME)))

(define-mixin-category coil-9.6
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.LOCATION NP-V-PP.LOCATION
           NP-V-ADV-MIDDLE-PP.LOCATION WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::DESTINATION LOCATION)
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME (:AND/OR NIL NIL)))
  :realization (:VERB
                ("wind" "whirl" "twine" "swirl" "spin" "rotate" "roll" "loop")
                (:S THEME :M ADVERB :PATH DESTINATION)
                (:S THEME :PATH DESTINATION)
                (:S AGENT :O THEME :PATH DESTINATION)))

(define-mixin-category transcribe-25.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                (("write" :PREP "out") ("write" :PREP "up") "videotape" "type"
                 "transcribe" "televise" "tape" ("tally" :PREP "up") "tally"
                 "record" "photograph" "photocopy" "microfilm" "forge" "film"
                 "duplicate" "document" "copy" "chronicle" "chart")
                (:S AGENT :O THEME :LOC DESTINATION :DEST_CONF DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category occur-48.3-1
  :specializes subcategorization-pattern
  :mixins (IT-V-THAT-S OCCUR-48.3)
  :realization (:VERB
                ("transpire" "result" "pass" "occur" "happen" "follow"
                 "eventuate" "ensue" "develop" "chance" "befall")
                (:THAT_COMP THEME)))

(define-mixin-category throw-17.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.DESTINATIONS
           NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-RESULT)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("drive" "discard" "cast") (:S AGENT :O THEME :M ADVERB)
                (:S AGENT :O THEME :SRC SOURCE :DEST_DIR DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :DEST DESTINATION :LOC DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category preparing-26.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.BENEFICIARY-NP NP-V-NP-PP.BENEFICIARY WITH-PRODUCT
           WITH-MATERIAL PREPARING-26.3)
  :binds ((SPARSER::MATERIAL PHYSICAL) (SPARSER::PRODUCT PHYSICAL))
  :realization (:VERB
                ("cultivate" "toss" "run" "roll" "ready" "prepare" "mix"
                 "light" "kindle" "fix" ("cook" :PREP "up") "cook" "clear"
                 "brew" "blend" "bake")
                (:S AGENT :O PRODUCT :FOR BENEFICIARY)
                (:S AGENT :IO BENEFICIARY :O PRODUCT)
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL :WITH
                 MATERIAL)
                (:S AGENT :O PRODUCT)))

(define-mixin-category cooking-45.3
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-PP.RESULT
           NP-V-PP.RESULT-PP.INSTRUMENT WITH-AGENT WITH-PATIENT WITH-INSTRUMENT
           WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                (("warm" :PREP "up") "toast" "stir-fry" "stew" "steep"
                 "steam-bake" "steam" "softboil" "simmer" "shirr" "sear"
                 "scallop" "scald" "saute" "roast" "rissole" "reheat"
                 "pot-roast" "poach" "plank" "pickle" "perk" "percolate"
                 "parch" "parboil" "pan-fry" "pan-broil" "overheat" "overcook"
                 "overbake" "oven-poach" "oven-fry" "microwave" "heat"
                 "hardboil" "grill" "fry" "french-fry" "deep-fry" "crisp"
                 "cook" "coddle" "charcoal-broil" "charbroil" "char"
                 "caramelize" "brown" "broil" "braise" "boil" "blanch"
                 "barbeque" "barbecue" "bake")
                (:S PATIENT :TO RESULT :INTO RESULT :IN INSTRUMENT :ON
                 INSTRUMENT :WITH INSTRUMENT)
                (:S PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :IN INSTRUMENT :ON
                 INSTRUMENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S INSTRUMENT :O PATIENT) (:S PATIENT :M ADVERB) (:S PATIENT)
                (:S AGENT :O PATIENT :IN INSTRUMENT :ON INSTRUMENT :WITH
                 INSTRUMENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category herd-47.5.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP.THEME NP-V-NP-TOGETHER WITH-AGENT WITH-THEME)
  :binds ((SPARSER::THEME (:AND/OR PHYSICAL COLLECTION))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("reconvene" "mass" "huddle" "herd" "group" "gather" "flock"
                 "convene" "congregate" "collect" "cluster" "assemble" "amass"
                 "aggregate" "accumulate")
                (:S AGENT :O THEME) (:S THEME)))

(define-mixin-category put-9.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("wharf" ("tack" :PREP "on") "superimpose" "station" "sling"
                 "situate" "position" "mount" "lodge" "implant" "immerse"
                 "emplace" "arrange")
                (:S AGENT :IO THEME :ADV_LOC DESTINATION)
                (:S AGENT :O THEME :LOC DESTINATION)))

(define-mixin-category exhale-40.1.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP EXHALE-40.1.3)
  :realization (:VERB
                ("whiff" "urinate" "regurgitate" "expectorate" "perspire"
                 "hemorrhage" "exhale" "defecate")
                (:S AGENT :O THEME) (:S AGENT)))

(define-mixin-category substance_emission-43.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP.THEME-V-PP.SOURCE NP-V-PP.LOCATION NP.LOCATION-V-PP.THEME
           PP.LOCATION-V-NP THERE-V-NP-PP NP-V-OUT HAS-LOCATION
           SUBSTANCE_EMISSION-43.4)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization (:VERB
                ("trickle" "sweat" "stream" "steam" "squirt" "spurt" "sprout"
                 "spout" "spill" "spew" "slop" "shed" "seep" "radiate" "puff"
                 "pour" "percolate" "ooze" "leak" "jet" "gush" "foam" "exude"
                 "exrete" "emanate" "drool" "drip" "dribble" "bubble" "belch"
                 "bead")
                (:S THEME) (:O SOURCE :LOC LOCATION) (:LOC LOCATION :O SOURCE)
                (:S LOCATION :WITH THEME) (:S THEME :PATH LOCATION)
                (:S THEME :FROM SOURCE :OUT_OF SOURCE) (:S SOURCE)))

(define-mixin-category pour-9.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP NP-V-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-PP.INITIAL_LOCATION-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE (:AND/OR LOCATION REGION))
          (SPARSER::THEME (:OR NIL PHYSICAL COLLECTION))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("trickle" "spill" "spew" "slosh" "slop" "pour" "drip"
                 "dribble")
                (:S THEME :SRC SOURCE :DEST_CONF DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE :DEST_CONF DESTINATION)
                (:S THEME :PATH DESTINATION)
                (:S AGENT :IO THEME :ADV_LOC DESTINATION)
                (:S AGENT :O THEME :PATH DESTINATION)))

(define-mixin-category substance_emission-43.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.SOURCE WITH-AGENT SUBSTANCE_EMISSION-43.4-1)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB ("bleed") (:S AGENT :O SOURCE)))

(define-mixin-category rob-10.6.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.BENEFICIARY
           NP-V-NP-PP.SOURCE-PP.BENEFICIARY WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::SOURCE (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("cull" "milk" "strip" "bleed" "rob")
                (:S AGENT :O THEME :SRC SOURCE :FOR BENEFICIARY)
                (:S AGENT :O THEME :FOR BENEFICIARY)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category cheat-10.6.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE CHEAT-10.6.1-1)
  :realization (:VERB ("cull" "milk" "strip" "bleed" "rob")
                (:S AGENT :O THEME :FROM SOURCE)))

(define-mixin-category breathe-40.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.DESTINATION NP-V-NP.THEME NP-V-NP.THEME-PP.DESTINATION
           WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("weep" "vomit" ("throw" :PREP "up") "sweat" "spit" "shit"
                 "puke" "piss" "pee" "drool" "dribble" "bleed" "barf")
                (:S AGENT :O THEME :ON DESTINATION :ONTO DESTINATION)
                (:S AGENT :O THEME)
                (:S AGENT :ON DESTINATION :ONTO DESTINATION) (:S AGENT)))

(define-mixin-category disappearance-48.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP DISAPPEARANCE-48.2)
  :realization (:VERB ("vanish" "perish" "lapse" "go" "expire" "disappear")
                (:S THEME :FROM SOURCE)))

(define-mixin-category cling-22.5
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME NP-V-TOGETHER WITH-THEME WITH-THEME)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("cling" "cleave" "adhere") (:S THEME)
                (:S THEME :TO THEME :WITH THEME)))

(define-mixin-category hurt-40.8.3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V HURT-40.8.3-1)
  :realization (:VERB
                ("twist" "turn" "tear" "sprain" "splinter" "split" "rupture"
                 "pull" "fracture" "chip" "break")
                (:S PATIENT)))

(define-mixin-category wink-40.3.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V NP-V-PP.RECIPIENT NP-V-PP.THEME NP-V-NP
           WITH-AGENT WITH-PATIENT WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::THEME SPEECH-ACT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("wink" "wave" "squint" "shrug" "point" "nod" "gesture" "clap"
                 "blink" "beckon")
                (:S AGENT :O THEME) (:S AGENT :IN THEME)
                (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT)
                (:S AGENT :O PATIENT :IN THEME) (:S AGENT :O PATIENT)))

(define-mixin-category wipe_manner-10.4.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-NP.SOURCE NP-V-NP.THEME WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME (:AND/OR PHYSICAL PHYSICAL-AGENT)))
  :realization (:VERB
                ("wring" "winnow" "whisk" "weed" "unload" "trim" "strain"
                 "soak" "skim" "smooth" "shave" "purge" "polish" "offload"
                 "leach" "flush" "expurgate" "expunge" "exorcise" "distil"
                 "distill" "buff")
                (:S AGENT :O THEME) (:S AGENT :O SOURCE)
                (:S AGENT :O THEME :SRC SOURCE)))

(define-mixin-category ferret-35.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE WITH-AGENT WITH-SOURCE WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("tease" "nose" "ferret") (:S AGENT :O THEME :DIR SOURCE)))

(define-mixin-category wipe_manner-10.4.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP-CONATIVE WITH-SOURCE WIPE_MANNER-10.4.1)
  :binds ((SPARSER::SOURCE REGION))
  :realization (:VERB
                ("wipe" "wear" "wash" "sweep" "swab" "suction" "suck" "strip"
                 "squeeze" "scrub" "scratch" "scrape" "scour" "rub" "rinse"
                 "prune" "pluck" "lick" "erase" "dust" "dab" "bail")
                (:S AGENT :O SOURCE)))

(define-mixin-category create-26.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.BENEFICIARY-NP CREATE-26.4-1)
  :realization (:VERB ("spin" "paint" "draw" "dig" "design" "craft" "conjure")
                (:S AGENT :IO BENEFICIARY :O RESULT)))

(define-mixin-category spank-18.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT NP-V-NP-ADJP NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-NP-PP.LOCATION
           NP-V-NP-PP-PP.INSTRUMENT NP-V-NP WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT HAS-LOCATION WITH-RESULT)
  :binds ((SPARSER::LOCATION PHYSICAL) (SPARSER::INSTRUMENT PHYSICAL)
          (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("horsewhip" "whop" "whomp" "whisk" "whip" "whap" "wham"
                 "wallop" "truncheon" "thump" "thrash" "strap" "spank" "sock"
                 "slam" "pummel" "pommel" "paddle" "lather" "larrup" "lam"
                 "k.o." "knife" "knee" "fustigate" "flog" "flail" "flagellate"
                 "elbow" "cuff" "cudgel" "cosh" "conk" "club" "clout" "clobber"
                 "cane" "brain" "bonk" "bludgeon" "birch" "biff" "belt")
                (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :LOC LOCATION :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :LOC LOCATION)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :O RESULT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT)))

(define-mixin-category carve-21.2-3
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-ADVP-MIDDLE
           NP.INSTRUMENT-V-NP NP.INSTRUMENT-V-ADVP CARVE-21.2)
  :realization (:VERB
                ("tool" "spear" "sand" "mill" "mangle" "lance" "file" "drill")
                (:S INSTRUMENT :M ADVERB) (:S INSTRUMENT :O PATIENT)
                (:S PATIENT :M ADVERB) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category coloring-24
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-ADJP NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           WITH-RESULT)
  :binds ((SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("varnish" "tint" "starch" "stain" "spraypaint" "shellac"
                 "repaint" "paint" "lacquer" "japan" "glaze" "enamel" "dye"
                 "distemper" "color")
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :O RESULT) (:S AGENT :O PATIENT)))

(define-mixin-category rotate-51.9.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP WITH-AGENT ROTATE-51.9.1)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB
                ("wind" "twist" "twirl" "turn" "swing" "spin" "rotate" "hook"
                 "coil" "curl")
                (:S AGENT :IO THEME :O EXTENT)))

(define-mixin-category coil-9.6-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV-MIDDLE COIL-9.6)
  :realization (:VERB ("twist" "twirl" "swing" "hook" "coil" "curl")
                (:S THEME :M ADVERB)))

(define-mixin-category carve-21.2-2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-ADVP-MIDDLE
           NP.INSTRUMENT-V-NP NP.INSTRUMENT-V-ADVP CARVE-21.2)
  :realization (:VERB
                ("tread" "prune" "punch" "pink" "mow" "crop" "chop" "carve")
                (:S INSTRUMENT :M ADVERB) (:S INSTRUMENT :O PATIENT)
                (:S PATIENT :M ADVERB) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category wipe_instr-10.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION WIPE_INSTR-10.4.2)
  :realization (:VERB
                ("vacuum" "siphon" "shovel" "shear" "rake" "plow" "mop" "hose"
                 "comb" "brush")
                (:S AGENT :O THEME :DEST_CONF DESTINATION)))

(define-mixin-category floss-41.2.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-NP-PP.INSTRUMENT NP-V-PP.INSTRUMENT WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("wash" "shave" "floss" "brush")
                (:S AGENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category reach-51.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-GOAL)
  :binds ((SPARSER::THEME (:AND/OR PHYSICAL COMPANY)))
  :realization (:VERB ("breast" "make" "hit" "reach") (:S THEME :O GOAL)))

(define-mixin-category contribute-13.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME CONTRIBUTE-13.2)
  :realization (:VERB ("transfer" "proffer" "extend" "disburse")
                (:S AGENT :IO RECIPIENT :O THEME)))

(define-mixin-category body_motion-49.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP NP-V-PP NP-V-PP-PP BODY_MOTION-49.2)
  :realization (:VERB ("extend") (:S AGENT :IO PATH :O THEME)
                (:S AGENT :DIR PATH) (:S AGENT :O GOAL)
                (:S AGENT :IO THEME :O GOAL)))

(define-mixin-category swat-18.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-PP NP-V-PP-PP NP-V-NP-ADJP
           NP-V-NP-ADJP-PP.INSTRUMENT NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-NP-PP.LOCATION WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT HAS-LOCATION WITH-RESULT)
  :binds ((SPARSER::LOCATION PHYSICAL) (SPARSER::INSTRUMENT SOLID)
          (SPARSER::PATIENT PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("swipe" "swat" "stab" "slug" "slice" "scratch" "punch" "peck"
                 "paw" "kick" "claw" "chop" "bite")
                (:S AGENT :O PATIENT :LOC LOCATION)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :O RESULT :WITH INSTRUMENT)
                (:S AGENT :IO PATIENT :O RESULT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category carry-11.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION CARRY-11.4-1)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization (:VERB ("thrust" "shove" "push" "kick" "heave")
                (:S AGENT :IO DESTINATION :O THEME)))

(define-mixin-category body_internal_motion-49.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("wriggle" "wobble" "wiggle" "waggle" "twitch" "totter"
                 "teeter" "sway" "squirm" "rock" "kick" "jiggle" "gyrate"
                 "flap" "fidget" "buck")
                (:S AGENT)))

(define-mixin-category calve-28.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("whelp" "spawn" "pup" "litter" "lamb" "kitten" "foal" "fawn"
                 "cub" "calve")
                (:S AGENT)))

(define-mixin-category engender-27.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-CAUSE WITH-THEME)
  :binds ((SPARSER::THEME ABSTRACT))
  :realization (:VERB
                ("spawn" "sire" "shape" ("set" :PREP "off")
                 ("set" :PREP "in_motion") "return" "raise" "produce" "kindle"
                 "generate" "engender" "create" ("bring" :PREP "about") "bring"
                 "beget")
                (:S PREDICATE :O PATIENT)))

(define-mixin-category multiply-108-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME MULTIPLY-108)
  :realization (:VERB ("divide" "multiply") (:S AGENT :O THEME :BY THEME)))

(define-mixin-category birth-28.2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("procreate" "multiply" "reproduce") (:S AGENT)))

(define-mixin-category risk-94
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-THAT-S WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("wager" "venture" "punt" "gamble" "bet")
                (:S AGENT :THAT_COMP THEME) (:S AGENT :O THEME)))

(define-mixin-category get-13.5.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE WITH-SOURCE GET-13.5.1)
  :binds ((SPARSER::SOURCE ABSTRACT))
  :realization (:VERB
                ("secure" "score" "save" "get" "gain" "cash" "fetch" "earn")
                (:S AGENT :O THEME :FROM SOURCE :FOR SOURCE :ON SOURCE)))

(define-mixin-category bill-54.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP-NP.ASSET WITH-AGENT WITH-EXTENT
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::EXTENT CURRENCY)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("wager" "undercharge" "tip" "tax" "spare" "scrimp" "save"
                 "overcharge" "mulct" "invoice" "fine" "charge" "bill" "bet"
                 "amerce")
                (:S AGENT :IO RECIPIENT :O EXTENT) (:S AGENT :O RECIPIENT)))

(define-mixin-category give-13.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ASSET NP-V-NP-PP.RECIPIENT-PP.ASSET NP-V-NP-NP-PP.ASSET
           WITH-EXTENT GIVE-13.1)
  :realization (:VERB ("pawn" "lease" "sell" "rent" "let" "hawk" "hock" "give")
                (:S AGENT :IO RECIPIENT :O THEME :AT EXTENT :FOR EXTENT :ON
                 EXTENT)
                (:S AGENT :O THEME :TO RECIPIENT :AT EXTENT :FOR EXTENT :ON
                 EXTENT)
                (:S AGENT :O THEME :FOR EXTENT :AT EXTENT)))

(define-mixin-category breathe-40.1.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP BREATHE-40.1.2)
  :realization (:VERB
                ("hawk" "urinate" "slobber" "retch" "expectorate" "defecate"
                 "cry" "cough" "breathe")
                (:S AGENT :O THEME)))

(define-mixin-category orphan-29.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB
                ("widow" "whore" "recruit" "pauper" "outlaw" "orphan" "martyr"
                 "knight" "cuckold" "cripple" "beggar" "apprentice")
                (:S AGENT :O THEME)))

(define-mixin-category captain-29.8
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.BENEFICIARY WITH-AGENT WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("whore" "volunteer" "soldier" "prostitute" "model" "midwife"
                 "lawyer" "judge" "butcher")
                (:S AGENT :FOR BENEFICIARY)))

(define-mixin-category wipe_instr-10.4.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INITIAL_LOCATION NP-V-NP.INITIAL_LOCATION NP-V
           NP-V-NP-ADJP-RESULT WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT (:AND/OR PHYSICAL PHYSICAL-AGENT))
          (SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME (:AND/OR PHYSICAL PHYSICAL-AGENT))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("towel" "squeegee" "sponge" "sandpaper" "plough" "iron"
                 "hoover" "filter" "file")
                (:S AGENT :IO SOURCE :O RESULT) (:S AGENT) (:S AGENT :O SOURCE)
                (:S AGENT :O THEME :SRC SOURCE)))

(define-mixin-category tape-22.4
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.CO-PATIENT
           NP-V-NP-PP.CO-PATIENT-PP.INSTRUMENT NP-V-NP-TOGETHER
           NP-V-ADV-MIDDLE-PP NP-V-ADV-MIDDLE NP-V-TOGETHER-ADV-MIDDLE
           NP-V-NP-ADJP WITH-AGENT WITH-PATIENT WITH-CO-PATIENT WITH-INSTRUMENT
           WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT (:AND/OR PHYSICAL PHYSICAL-AGENT))
          (SPARSER::CO-PATIENT SOLID) (SPARSER::PATIENT SOLID)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("zip" "yoke" "wire" "weld" "truss" "trammel" "tie" "thumbtack"
                 "thread" "tether" "tape" "tack" "suture" "string" "strap"
                 "stitch" "staple" "solder" "skewer" "shackle" "seal" "screw"
                 "rope" "rivet" "reeve" "plaster" "pin" "peg" "paste" "paste"
                 "padlock" "nail" "muzzle" "moor" "manacle" "loop" "lock"
                 "link" "leash" "latch" "lasso" "lash" "lace" "knot" "hook"
                 "hitch" "hinge" "harness" "handcuff" "gum" "glue" "fetter"
                 "fasten" "epoxy" "connect" "clip" "clasp" "clamp" "cinch"
                 "chain" "cement" "cable" "button" "buckle" "bracket" "bolt"
                 "bond" "belt" "band" "anchor" "affix")
                (:S AGENT :IO PATIENT :O RESULT) (:S PATIENT :M ADVERB)
                (:S PATIENT :M ADVERB :TO CO-PATIENT :ON CO-PATIENT :ONTO
                 CO-PATIENT)
                (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :TO CO-PATIENT :ON CO-PATIENT :ONTO
                 CO-PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO CO-PATIENT :ON CO-PATIENT :ONTO
                 CO-PATIENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category hunt-35.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-PP.THEME-PP.LOCATION NP-V-PP.LOCATION-PP.THEME
           NP-V-NP-PP.LOCATION NP-V-NP NP-V WITH-AGENT HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("seek" "scrounge" "poach" "pan" "mine" "hunt" "fish" "feel"
                 "dig")
                (:S AGENT) (:S AGENT :O THEME)
                (:S AGENT :O THEME :LOC LOCATION)
                (:S AGENT :LOC LOCATION :FOR THEME)
                (:S AGENT :FOR THEME :LOC LOCATION)
                (:S AGENT :L LOCATION :FOR THEME)))

(define-mixin-category berry-13.7
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("hawk" "whore" "whelk" "whale" "sponge" "snipe" "snail"
                 "shrimp" "shark" "seal" "scollop" "rabbit" "prawn" "pearl"
                 "oyster" "nut" "nest" "mushroom" "log" "hay" "hog" "grouse"
                 "fowl" "fish" "crab" "clam" "blackberry" "birdnest" "berry"
                 "antique")
                (:S AGENT)))

(define-mixin-category benefit-72.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP WITH-CAUSE WITH-BENEFICIARY)
  :realization (:VERB ("profit" "benefit")
                (:S BENEFICIARY :FROM CAUSE :BY CAUSE) (:S BENEFICIARY)
                (:S CAUSE :O BENEFICIARY)))

(define-mixin-category body_motion-49.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V BODY_MOTION-49.2-1)
  :realization (:VERB ("stretch" "reach") (:S AGENT)))

(define-mixin-category flinch-40.5
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("wince" "shrink" "recoil" "quail" "flinch" "cringe" "cower"
                 "balk")
                (:S EXPERIENCER :AT STIMULUS :FROM STIMULUS) (:S EXPERIENCER)))

(define-mixin-category equip-13.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT EQUIP-13.4.2)
  :realization (:VERB
                ("treat" "saddle" "reward" "repay" "remunerate" "regale"
                 "redress" "recompense" "rearm" "outfit" "equip" "arm")
                (:S AGENT :O RECIPIENT)))

(define-mixin-category dress-41.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT PRONOUN))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("wash" "undress" "unclothe" "tan" "sunbathe" "strip" "shower"
                 "shave" "primp" "preen" "moisturize" "lave" "frock" "exercise"
                 "dress" "disrobe" "clothe" "change" "bathe")
                (:S AGENT :REFL PATIENT) (:S AGENT :O PATIENT) (:S AGENT)))

(define-mixin-category being_dressed-41.3.3
  :specializes subcategorization-pattern
  :mixins (PASSIVE WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("robe" "outfit" "garb" "clothe" "attire")
                (:S AGENT :IN THEME)))

(define-mixin-category confront-98
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                (("move" :PREP "in_on") "breast" "combat" "pre-empt" "counter"
                 "rival" "target" "intercept" "handle" "brave" "approach"
                 ("go" :PREP "about") ("take" :PREP "on") "tackle" "undertake"
                 ("head" :PREP "on") "confront" "face")
                (:S AGENT :O THEME :WITH INSTRUMENT) (:S AGENT :O THEME)))

(define-mixin-category begin-55.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP-V-NP NP-V-PP.INSTRUMENT NP-V-NP-PP.INSTRUMENT
           NP.INSTRUMENT-V-NP BEGIN-55.1-1)
  :realization (:VERB
                ("undertake" "resume" "recommence" "commence"
                 ("start" :PREP "off") "start" "begin")
                (:S INSTRUMENT :O THEME) (:S AGENT :O THEME :WITH INSTRUMENT)
                (:S THEME :WITH INSTRUMENT) (:S AGENT :O THEME) (:S THEME)))

(define-mixin-category begin-55.1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                (("set" :PREP "out") "proceed" "pledge" ("go" :PREP "on"))
                (:S AGENT :SC_TO_INF THEME)))

(define-mixin-category beg-58.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RESULT BEG-58.2-1)
  :realization (:VERB ("beg") (:S AGENT :O PATIENT :FOR RESULT)))

(define-mixin-category beg-58.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RESULT BEG-58.2)
  :realization (:VERB ("supplicate") (:S AGENT :FOR RESULT)))

(define-mixin-category beg-58.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_INF NP-V-S_INF WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("importune" "request") (:S AGENT :SC_TO_INF RESULT)))

(define-mixin-category sustain-55.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ WITH-ATTRIBUTE SUSTAIN-55.6)
  :realization (:VERB ("leave" "keep") (:S AGENT :IO THEME :O ATTRIBUTE)))

(define-mixin-category resign-10.11-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RESIGN-10.11)
  :realization (:VERB
                (("walk" :PREP "off") "vacate" "quit" "resign" "renounce"
                 "leave" ("give" :PREP "up") "depart" "abdicate")
                (:S AGENT :O SOURCE)))

(define-mixin-category leave-51.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V LEAVE-51.2)
  :realization (:VERB ("leave" "desert") (:S THEME)))

(define-mixin-category keep-15.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.LOCATION NP-V-NP WITH-AGENT WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("stockpile" "stock" "store" "leave" "keep" "hold" "hoard")
                (:S AGENT :O THEME) (:S AGENT :O THEME :LOC LOCATION)))

(define-mixin-category escape-51.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ESCAPE-51.1-1)
  :realization (:VERB
                ("vacate" "leave" "flee" "exit" "escape" "disembark" "depart")
                (:S THEME :O SOURCE)))

(define-mixin-category become-109.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP BECOME-109.1-1)
  :realization (:VERB ("leave" ("end" :PREP "up") "become")
                (:S PATIENT :SENTENTIAL RESULT)))

(define-mixin-category rear-26.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PRODUCT)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB ("rear" "raise" "nurture" "grow") (:S AGENT :O PATIENT)))

(define-mixin-category grow-26.2.1
  :specializes subcategorization-pattern
  :mixins (NP.MATERIAL-V-PP.PRODUCT NP.PRODUCT-V-PP.MATERIAL
           NP-V-NP.PRODUCT-PP.MATERIAL NP-V-NP.MATERIAL-PP.PRODUCT WITH-AGENT
           WITH-PATIENT WITH-PRODUCT)
  :binds ((SPARSER::PRODUCT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("redevelop" "mature" "maturate" "hatch" "grow" "generate"
                 "evolve" "develop")
                (:S AGENT :O PATIENT :INTO PRODUCT)
                (:S AGENT :O PRODUCT :FROM PATIENT :OUT_OF PATIENT)
                (:S PRODUCT :FROM PATIENT :OUT_OF PATIENT)
                (:S PATIENT :INTO PRODUCT)))

(define-mixin-category build-26.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.PRODUCT-PP.MATERIAL NP-V-NP.MATERIAL-PP.PRODUCT
           NP-V-NP.BENEFICIARY-NP-PP NP-V-NP-PP.MATERIAL-PP.BENEFICIARY
           NP-V-NP-PP.BENEFICIARY NP-V-NP-PP.PRODUCT-PP.BENEFICIARY
           NP.MATERIAL-V-NP NP-V-NP-NP-PP.ASSET NP-V-NP-PP.MATERIAL-PP.ASSET
           WITH-AGENT WITH-MATERIAL WITH-PRODUCT WITH-BENEFICIARY WITH-EXTENT)
  :binds ((SPARSER::EXTENT CURRENCY)
          (SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::MATERIAL PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("whittle" "weave" "stitch" "spin" "sew" "sculpture" "roll"
                 "refashion" "reassemble" "pound" "mold" "knit" "hammer" "hack"
                 "grow" "grind" "formulate" "forge" "fold" "fashion" "erect"
                 "embroider" "develop" "crochet" "cook" "compile" "churn"
                 "chisel" "cast" "blow" "bead" "bake" "assemble" "arrange")
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL :FOR
                 EXTENT)
                (:S AGENT :IO BENEFICIARY :O PRODUCT :FOR EXTENT)
                (:S MATERIAL :O PRODUCT)
                (:S AGENT :O MATERIAL :INTO PRODUCT :FOR BENEFICIARY)
                (:S AGENT :O MATERIAL :FOR BENEFICIARY)
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL :FOR
                 BENEFICIARY)
                (:S AGENT :IO BENEFICIARY :O PRODUCT :FROM MATERIAL :OUT_OF
                 MATERIAL)
                (:S AGENT :O PRODUCT :FOR BENEFICIARY)
                (:S AGENT :O MATERIAL :INTO PRODUCT)
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL)
                (:S AGENT :O PRODUCT)))

(define-mixin-category become-109.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE BECOME-109.1)
  :realization (:VERB ("grow" "go" "fall" "come")
                (:S PATIENT :SENTENTIAL RESULT)))

(define-mixin-category meet-36.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-NP NP-V MEET-36.3)
  :realization (:VERB ("fight" "debate" "box" "battle") (:S AGENT)
                (:S AGENT :O AGENT) (:S AGENT :WITH AGENT)))

(define-mixin-category battle-36.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-NP-PP.THEME-WHETHER-S
           NP-V-NP-PP.THEME-WHAT-S NP-V-NP-PP.THEME-WHETHER-S_INF
           NP-V-NP-PP.THEME-WHAT-S_INF BATTLE-36.4)
  :realization (:VERB
                ("wrestle" "refight" "fight" "duel" "debate" "combat" "box"
                 "battle")
                (:S AGENT :O AGENT :ABOUT THEME :|\|| THEME :OVER THEME)
                (:S AGENT :O AGENT)))

(define-mixin-category settle-36.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.GOAL-WHAT-S_INF NP-V-PP.CO-AGENT-PP.GOAL WITH-AGENT
           WITH-AGENT WITH-TOPIC)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("renegotiate" "square" "bargain" "interact" "haggle"
                 "disagree" "deliberate" "differ" "correspond" "cooperate"
                 "concur" "compromise" "communicate" "commiserate"
                 "collaborate" "settle")
                (:S AGENT :WITH AGENT :ON GOAL) (:S AGENT :ON GOAL) (:S AGENT)))

(define-mixin-category correspond-36.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S NP-V-PP.THEME-WHETHER/IF-S NP-V-PP.THEME-WHAT-S
           NP-V-PP.THEME-WHETHER-S_INF NP-V-PP.THEME-WHAT-S_INF NP-V-PP.THEME
           NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S NP-V-PP.CO-AGENT-PP.THEME-WHAT-S
           NP-V-PP.CO-AGENT-PP.THEME-WHAT-S_INF
           NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S_INF NP-V-PP.CO-AGENT-PP.THEME
           NP-V-WHAT-S WITH-AGENT WITH-AGENT WITH-TOPIC)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("plot" "negotiate" "interact" "disagree" "differ" "deliberate"
                 "correspond" "cooperate" "confer" "concur" "compromise"
                 "communicate" "commiserate" "collide" "collaborate" "bargain"
                 "banter")
                (:S AGENT :WHAT_EXTRACT TOPIC)
                (:S AGENT :WITH AGENT :ABOUT TOPIC) (:S AGENT :ABOUT TOPIC)
                (:S AGENT)))

(define-mixin-category settle-36.1.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S NP-V-PP-THAT-S NP-V-S SETTLE-36.1.2)
  :realization (:VERB ("decide" "debate" "argue" "agree" "resolve")
                (:S AGENT :O GOAL) (:S AGENT :IO AGENT :O GOAL)))

(define-mixin-category correspond-36.1.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-WHETHER/IF-S NP-V-WHETHER-S_INF CORRESPOND-36.1.1-1)
  :realization (:VERB ("argue" "debate") (:S AGENT :WHETH_INF TOPIC)
                (:S AGENT :WH_COMP TOPIC)))

(define-mixin-category chit_chat-37.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-NP NP-V-NP-PP.CO-AGENT CHIT_CHAT-37.6)
  :realization (:VERB ("discuss" "debate" "argue")
                (:S AGENT :O TOPIC :WITH AGENT) (:S AGENT :O TOPIC)
                (:S AGENT :WH_ING TOPIC) (:S AGENT :WH_EXTRACT TOPIC)))

(define-mixin-category battle-36.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S
           NP-V-PP.CO-AGENT-PP.THEME-WHAT-S
           NP-V-PP.CO-AGENT-PP.THEME-WHAT-S_INF
           NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S_INF NP-V-PP.CO-AGENT-PP.THEME
           NP-V-PP.TOPIC-NP-S_ING NP-V-PP.THEME-WHETHER-S NP-V-PP.THEME-WHAT-S
           NP-V-PP.THEME-WHETHER-S_INF NP-V-PP.THEME-WHAT-S_INF NP-V-PP.THEME
           WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("wrangle" "war" "vie" "tussle" "tilt" "struggle" "squabble"
                 "spat" "spar" "skirmish" "scuffle" "scrap" "quibble" "quarrel"
                 "joust" "feud" "fence" "dispute" "dicker" "contend" "compete"
                 "collide" "clash" "brawl" "bicker" "bargain" "argue")
                (:S AGENT :SENTENTIAL THEME) (:S AGENT :WHAT_INF THEME)
                (:S AGENT :WHETH_INF THEME) (:S AGENT :WHAT_EXTRACT THEME)
                (:S AGENT :WH_COMP THEME) (:S AGENT :POSS_ING TOPIC)
                (:S AGENT :WITH AGENT :SENTENTIAL THEME)
                (:S AGENT :WITH AGENT :WHETH_INF THEME)
                (:S AGENT :WITH AGENT :WHAT_INF THEME)
                (:S AGENT :WITH AGENT :WHAT_EXTRACT THEME)
                (:S AGENT :WITH AGENT :WH_COMP THEME) (:S AGENT)
                (:S AGENT :WITH AGENT)))

(define-mixin-category base-97.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-NP-PP.SOURCE-WHETHER-S
           NP-V-NP-PP.SOURCE-S_ING NP-V-NP-PP.SOURCE-S WITH-AGENT WITH-THEME
           WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("construe" "build" "found" "ground" "establish" "base")
                (:S AGENT :O THEME :ON SOURCE)))

(define-mixin-category throw-17.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION THROW-17.1)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization (:VERB
                ("boot" "tap" "smash" "sling" "slap" "slam" "shove" "shoot"
                 "punt" "pitch" "pass" "nudge" "loft" "lob" "knock" "hurl"
                 "hit" "flip" "fling" "flick" "fire" "chuck" "bunt" "bat"
                 "bash")
                (:S AGENT :IO DESTINATION :O THEME)))

(define-mixin-category create-26.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.MATERIAL NP-V-NP-PP.BENEFICIARY
           NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-RESULT WITH-MATERIAL
           WITH-BENEFICIARY WITH-ATTRIBUTE)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT) (SPARSER::MATERIAL PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("turn-out" "synthesize" "style" "reorganize" "reconstitute"
                 "rebuild" "rearrange" "publish" "produce" "organize" "model"
                 "mass-produce" "manufacture" "lay" "formulate" "form"
                 "fabricate" "derive" "create" "cowrite" "contrive" "construct"
                 "concoct" "compute" "coin" "author")
                (:S AGENT :IO RESULT :O ATTRIBUTE)
                (:S AGENT :O RESULT :FOR BENEFICIARY)
                (:S AGENT :O RESULT :FROM MATERIAL :OUT_OF MATERIAL)
                (:S AGENT :O RESULT)))

(define-mixin-category fire-10.10
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-ATTRIBUTE)
  :binds ((SPARSER::SOURCE COMPANY)
          (SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("shitcan" ("let" :PREP "go") ("lay" :PREP "off")
                 ("give" :PREP "the_boot") "terminate" ("force" :PREP "out")
                 "suspend" ("send" :PREP "away") "can" "remove" "expel" "oust"
                 "unseat" "drop" "sack" "dismiss" "fire")
                (:S AGENT :O THEME :AS ATTRIBUTE)
                (:S AGENT :O THEME :FROM SOURCE) (:S AGENT :O THEME)))

(define-mixin-category free-10.6.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME WITH-CAUSE WITH-SOURCE WITH-THEME)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("break" "ease" "wean" "disencumber" "cleanse" "unburden"
                 "exonerate" "discharge" "liberate" "alleviate")
                (:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category banish-10.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.DESTINATION WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL-AGENT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("boot" "turn-out" "turn-back" "turn-away" "shanghai" "remove"
                 "recuse" "recall" "extradite" "expel" "exile" "evacuate"
                 "dismiss" "discharge" "deport" "banish")
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category neglect-75.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("overlook" "overleap" ("leave" :PREP "out") "ignore" "forego"
                 "forgo" "disregard")
                (:S AGENT :O THEME)))

(define-mixin-category contribute-13.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP.THEME- NP-V-PP.RECIPIENT-NP WITH-AGENT
           WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("turn-over" "turn-in" "abnegate" ("shell" :PREP "out")
                 ("pass" :PREP "out") ("hand" :PREP "out") "give-up" "give-out"
                 "give-away" "gift" "restore" "resign" "remit" "relinquish"
                 "refer" "forgo" "betroth")
                (:S AGENT :TO RECIPIENT :O THEME) (:S AGENT :O THEME)
                (:S AGENT :O THEME :TO RECIPIENT)))

(define-mixin-category void-106
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("nullify" "invalidate" "avoid" "void" "quash" "annul")
                (:S AGENT :O PATIENT)))

(define-mixin-category avoid-52
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.LOCATION NP-V-NP.THEME NP-V-S_ING WITH-AGENT HAS-LOCATION
           WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("sidestep" "shun" "forgo" "evade" "eschew" "elude" "duck"
                 "dodge" "circumvent" "boycott" "avoid")
                (:S AGENT :POSS_ING THEME) (:S AGENT :BE_SC_ING THEME)
                (:S AGENT :O THEME) (:S AGENT :L LOCATION)))

(define-mixin-category attend-107.4-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP ATTEND-107.4)
  :realization (:VERB ("belong" "go") (:S THEME :NIL GOAL)))

(define-mixin-category caring-75.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP CARING-75.2-1)
  :realization (:VERB ("tend" "attend") (:S AGENT :TO THEME)))

(define-mixin-category attend-107.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ATTEND-107.4)
  :realization (:VERB ("patronize" "attend") (:S THEME :O GOAL)))

(define-mixin-category run-51.3.2-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.RESULT RUN-51.3.2-2)
  :realization (:VERB
                ("walk" "rush" "run" "promenade" "parade" "march" "jump" "jog"
                 "fly")
                (:S THEME :TO RESULT :INTO RESULT) (:S THEME :O PATH)))

(define-mixin-category pelt-17.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("stone" "shower" "shell" "pepperspray" "pelt" "buffet"
                 "bombard")
                (:S AGENT :O DESTINATION) (:S AGENT :O DESTINATION :WITH THEME)))

(define-mixin-category judgment-33.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP.ATTRIBUTE WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :realization (:VERB
                ("slang" "imprecate" "gibe" ("find" :PREP "fault_with")
                 "condone" "blaspheme" "blame" "badmouth" "backbite" "assault"
                 "abuse")
                (:S AGENT :O ATTRIBUTE) (:S AGENT :O THEME :FOR ATTRIBUTE)
                (:S AGENT :O THEME)))

(define-mixin-category attack-60.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB
                (("set" :PREP "upon") ("round" :PREP "on") ("lay" :PREP "into")
                 "jump" ("fall" :PREP "upon") "charge" "bombard" "bomb"
                 "assault" "assail" "ambush")
                (:S AGENT :O PATIENT)))

(define-mixin-category lodge-46
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION NP-V-ADV WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB
                ("stay" "stop" ("stay" :PREP "over") "squat"
                 ("sleep" :PREP "over") "shelter" ("shack" :PREP "up") "settle"
                 "room" "reside" "quarter" "overnight" "lodge" "live" "guest"
                 "dwell" "camp" "bunk" "board" "bivouac" "barrack")
                (:S THEME :L LOCATION)))

(define-mixin-category escape-51.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.INITIAL_LOCATION ESCAPE-51.1)
  :realization (:VERB
                ("withdraw" "vamoose" "skedaddle" "retreat" "emigrate" "emerge"
                 "bolt" ("set" :PREP "out") ("set" :PREP "off") "arrive"
                 "tumble" "rise" "return" "recede" "plunge" "go" "file" "fall"
                 "decamp" "continue" "come" "approach" "advance")
                (:S THEME :PATH SOURCE) (:S THEME)))

(define-mixin-category spray-9.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V-NP-PP.DESTINATION-CONATIVE WITH-THEME
           SPRAY-9.7)
  :binds ((SPARSER::THEME (:OR NIL PHYSICAL COLLECTION)))
  :realization (:VERB
                ("wrap" "spurt" "swash" "swab" "string" "strew" "stick"
                 "squirt" "spritz" "sprinkle" "spread" "spray" "splatter"
                 "splash" "spatter" "sow" "smudge" "smear" "shower" "sew"
                 "seed" "scatter" "rub" "pump" "plaster" "hang" "drizzle"
                 "brush" "baste")
                (:S AGENT :IO THEME :O DESTINATION)
                (:S THEME :LOC DESTINATION :DIR DESTINATION)))

(define-mixin-category poison-42.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-ADJ NP-V-NP-PP.RESULT NP-V-NP-PP.INSTRUMENT
           WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::PATIENT PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("throttle" "suffocate" "strangulate" "strangle" "stone" "stab"
                 "smother" "shoot" "poison" "pip" "knife" "impale" "hang"
                 "garrotte" "gas" "fry" "evicerate" "electrocute" "drown"
                 "disembowel" "decapitate" "dart" "crucify" "bullet" "behead"
                 "asphyxiate")
                (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :O RESULT) (:S AGENT :O PATIENT)))

(define-mixin-category bend-45.2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP NP-V-NP-ADJ NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::PATIENT SOLID))
  :realization (:VERB
                ("unbend" "wrinkle" "warp" "unwind" "unroll" "unfurl" "unfold"
                 "tauten" "stretch" "straighten" "splay" "slacken" "slack"
                 "shrivel" "shrink" "scrunch" "rumple" "round" "roll" "inflate"
                 "hyperextend" "furrow" "fold" "flex" "distend" "deflate"
                 "decompress" "crumple" "contract" "constrict" "compress"
                 "compact" "crinkle" "crease" "bend")
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :O RESULT) (:S INSTRUMENT :O PATIENT)
                (:S PATIENT :M ADVERB) (:S PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category stimulus_subject-30.4
  :specializes subcategorization-pattern
  :mixins (NP-V-ADJ NP-V-ADJ-PP.EXPERIENCER NP-V-PP.ATTRIBUTE WITH-EXPERIENCER
           WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB ("taste" "sound" "smell" "look" "feel") (:S STIMULUS)
                (:S STIMULUS :TO EXPERIENCER)))

(define-mixin-category stalk-35.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP-PP.LOCATION NP-V-NP WITH-AGENT WITH-THEME
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("whiff" "track" "taste" "stalk" "smell" "scent")
                (:S AGENT :O THEME) (:S AGENT :O THEME :LOC LOCATION)
                (:S AGENT :L LOCATION :FOR THEME)))

(define-mixin-category seem-109
  :specializes subcategorization-pattern
  :mixins (NP-V-ADJ WITH-THEME WITH-ATTRIBUTE)
  :realization (:VERB ("keep" "taste" "sound" "smell")
                (:S THEME :SENTENTIAL ATTRIBUTE)))

(define-mixin-category see-30.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-ATTR-POS NP-V-HOW-S NP-V-WHAT-S SEE-30.1)
  :realization (:VERB ("taste" "smell") (:S EXPERIENCER :WHAT_EXTRACT STIMULUS)
                (:S EXPERIENCER :HOW_EXTRACT STIMULUS)
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category learn-14-1
  :specializes subcategorization-pattern
  :mixins (NP-V LEARN-14)
  :realization (:VERB ("learn" "study" "relearn" "read" "cram") (:S AGENT)))

(define-mixin-category discover-84-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S_ING NP-V-PP.THEME-WHAT-S NP-V-PP.THEME
           NP-V-PP.THEME-PP.SOURCE DISCOVER-84-1)
  :realization (:VERB
                (("figure" :PREP "out") ("find" :PREP "out") "study" "learn"
                 "hear")
                (:S AGENT :ABOUT THEME :FROM SOURCE) (:S AGENT :ABOUT THEME)
                (:S AGENT)))

(define-mixin-category investigate-35.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.LOCATION-PP.THEME NP-V-NP.LOCATION WITH-AGENT HAS-LOCATION
           WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("tour" "test" "tap" "survey" "surveil" "scrutinize" "scan"
                 "riffle" "ransack" "raid" "quiz" "picket" "observe" "monitor"
                 "investigate" "inspect" "frisk" "examine" "explore" "canvass")
                (:S AGENT :L LOCATION) (:S AGENT :L LOCATION :FOR THEME)))

(define-mixin-category meet-36.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-NP NP-V MEET-36.3)
  :realization (:VERB
                ("visit" "reunite" "remonstrate" "play" "meet" "deliberate"
                 "consult")
                (:S AGENT) (:S AGENT :O AGENT) (:S AGENT :WITH AGENT)))

(define-mixin-category inquire-37.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V NP-V-NP.RECIPIENT NP-V-NP.TOPIC
           NP-V-NP-PP.TOPIC NP-V-NP-WHETHER-S NP-V-NP-WHAT-S
           NP-V-NP-WHETHER-S_INF NP-V-NP-WHAT-S_INF NP-V-PP.TOPIC-WHETHER-S
           NP-V-NP-PP.TOPIC-WHAT-S NP-V-PP.TOPIC-WHETHER-S_INF
           NP-V-PP.TOPIC-WHAT-S_INF NP-V-PP.TOPIC NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-PP.RECIPIENT-WHETHER-S
           NP-V-PP.RECIPIENT-PP.TOPIC-WHAT-S
           NP-V-PP.RECIPIENT-PP.TOPIC-WHAT-S_INF
           NP-V-PP.RECIPIENT-PP.TOPIC-WHETHER-S_INF NP-V-WHETHER-S NP-V-WHAT-S
           NP-V-WHETHER-S_INF NP-V-WHAT-S_INF NP-V-NP-HOW-S WITH-AGENT
           WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::TOPIC QUESTION)
          (SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("pry" "consult" "inquire" "enquire" "ask")
                (:S AGENT :IO RECIPIENT :HOW_EXTRACT TOPIC)
                (:S AGENT :WHAT_INF TOPIC) (:S AGENT :WHETH_INF TOPIC)
                (:S AGENT :WHAT_EXTRACT TOPIC) (:S AGENT :WH_COMP TOPIC)
                (:S AGENT :OF RECIPIENT :ABOUT TOPIC)
                (:S AGENT :OF RECIPIENT :WH_INF TOPIC)
                (:S AGENT :OF RECIPIENT :HOW_EXTRACT TOPIC)
                (:S AGENT :ABOUT TOPIC) (:S AGENT :O RECIPIENT :ABOUT TOPIC)
                (:S AGENT :IO RECIPIENT :WHAT_INF TOPIC)
                (:S AGENT :IO RECIPIENT :WHETH_INF TOPIC)
                (:S AGENT :IO RECIPIENT :WHAT_EXTRACT TOPIC)
                (:S AGENT :IO RECIPIENT :WH_COMP TOPIC)
                (:S AGENT :SENTENTIAL TOPIC) (:S AGENT :O RECIPIENT) (:S AGENT)
                (:S AGENT :WH_INF TOPIC) (:S AGENT :HOW_EXTRACT TOPIC)))

(define-mixin-category search-35.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-PP.THEME-NP.LOCATION NP-V-PP.LOCATION-PP.THEME
           NP-V-PP.LOCATION WITH-AGENT HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("quest" "watch" "troll" "trawl" "sweep" "sift" "shop" "search"
                 "scout" "scour" "scavenge" "rifle" "rake" "quarry" "prowl"
                 "prospect" "probe" "plumb" "patrol" "nose" "excavate" "dredge"
                 "drag" "dive" "comb" "check" "advertise")
                (:S AGENT :LOC LOCATION) (:S AGENT :LOC LOCATION :FOR THEME)
                (:S AGENT :FOR THEME :LOC LOCATION)
                (:S AGENT :L LOCATION :FOR THEME)))

(define-mixin-category estimate-34.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-HOW-S NP-V-NP-TO-BE-ADJ NP-V-THAT-S NP-V-WHAT-S
           ESTIMATE-34.2)
  :realization (:VERB
                ("project" "guesstimate" "assess" "quantize" "count" "judge"
                 "guess" "approximate" "gauge" "estimate")
                (:S AGENT :WHAT_EXTRACT THEME) (:S AGENT :THAT_COMP THEME)
                (:S AGENT :TO_BE THEME) (:S AGENT :HOW_EXTRACT PATH)
                (:S AGENT :O THEME)))

(define-mixin-category image_impression-25.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME-PP.DESTINATION NP-V-NP.DESTINATION-PP.THEME
           NP-V-NP.DESTINATION NP-V-NP.THEME NP-V WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL))
  :realization (:VERB
                ("tool" "tattoo" "stipple" "stamp" "sign" "scar" "reinscribe"
                 "paint" "mark" "inscribe" "ingrain" "incise" "imprint"
                 "handpaint" "etch" "engrave" "embroider" "emboss" "applique"
                 "annotate")
                (:S AGENT) (:S AGENT :O THEME) (:S AGENT :O DESTINATION)
                (:S AGENT :O DESTINATION :WITH THEME)
                (:S AGENT :O THEME :LOC DESTINATION :DEST_CONF DESTINATION)))

(define-mixin-category declare-29.4-2
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF DECLARE-29.4)
  :realization (:VERB ("proclaim") (:S AGENT :WH_INF THEME)
                (:S AGENT :HOW_EXTRACT THEME)))

(define-mixin-category put-9.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP PUT-9.1)
  :realization (:VERB
                ("stow" "stash" "reinstall" "plant" "park" "install" "insert"
                 "embed" "deposit" "build-in" "bury" "apply")
                (:S AGENT :O THEME)))

(define-mixin-category butter-9.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.DESTINATION NP-V-NP-PP.THEME WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("sauce" "insulate" "zipcode" "yoke" "wreathe" "whitewash"
                 "wharf" "wax" "water" "wallpaper" "veneer" "veil" "varnish"
                 "turf" "top" "tinsel" "tile" "ticket" "thatch" "tassel"
                 "tarmac" "tar" "tag" "sulphur" "sugar" "stucco" "string"
                 "stress" "stopper" "starch" "stain" "spice" "sole" "soil"
                 "sod" "slipcover" "slime" "slate" "silver" "side" "shutter"
                 "shoe" "shingle" "shawl" "sequin" "seed" "scent" "sand"
                 "salve" "salt" "saddle" "rut" "rouge" "rosin" "roof" "robe"
                 "putty" "punctuate" "powder" "postmark" "poster" "pomade"
                 "polish" "poison" "plaster" "plank" "perfume" "pepper" "patch"
                 "parquet" "paper" "panel" "ornament" "oil" "nickel" "muzzle"
                 "mulch" "mantle" "lubricate" "lipstick" "leaven" "leash"
                 "label" "ink" "ice" "heel" "hat" "harness" "halter" "groove"
                 "grease" "gravel" "grass" "graffiti" "glove" "glass" "gild"
                 "gas" "garland" "gag" "glaze" "fuel" "frost" "frame" "forest"
                 "flour" "fence" "feather" "drug" "dope" "diaper" "crumb"
                 "crown" "cork" "coal" "cloak" "clay" "chrome" "caulk" "carpet"
                 "cap" "camouflage" "calk" "buttonhole" "butter" "bronze"
                 "bridle" "brick" "bread" "board" "blindfold" "blanket" "black"
                 "bait" "asphalt" "aromatize")
                (:S AGENT :O DESTINATION :WITH THEME) (:S AGENT :O DESTINATION)))

(define-mixin-category appeal-31.4-3
  :specializes subcategorization-pattern
  :mixins (NP-V APPEAL-31.4)
  :realization (:VERB ("appeal") (:S STIMULUS)))

(define-mixin-category appeal-31.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.EXPERIENCER APPEAL-31.4)
  :realization (:VERB ("niggle") (:S STIMULUS :AT EXPERIENCER)))

(define-mixin-category hiccup-40.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("yawn" "wheeze" "swallow" "snuffle" "snuff" "snore" "sniffle"
                 "sneeze" "shiver" "salivate" "pant" "hiccup" "flush" "fart"
                 "eruct" "burp" "blush" "blink" "belch")
                (:S AGENT)))

(define-mixin-category complain-37.8
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-THAT-S NP-V-PP.RECIPIENT-THAT-S
           NP-V-PP.TOPIC NP-V-PP.TOPIC-PP.RECIPIENT NP-V-S-QUOTE
           NP-V-PP.RECIPIENT-S-QUOTE NP-V-PP.RECIPIENT-PP.TOPIC WITH-AGENT
           WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("whine" "object" "moan" "kvetch" "grumble" "grouse" "grouch"
                 "gripe" "crab" "complain" "caterwaul" "brag" "boast" "bitch"
                 "bellyache")
                (:S AGENT :TO RECIPIENT :ABOUT TOPIC)
                (:S AGENT :TO RECIPIENT :QUOTATION TOPIC)
                (:S AGENT :QUOTATION TOPIC)
                (:S AGENT :ABOUT TOPIC :TO RECIPIENT) (:S AGENT :ABOUT TOPIC)
                (:S AGENT :TO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :THAT_COMP TOPIC) (:S AGENT :TO RECIPIENT) (:S AGENT)))

(define-mixin-category performance-26.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.BENEFICIARY-NP PERFORMANCE-26.7)
  :realization (:VERB
                ("whistle" "sing" "stage" "replay" "recite" "play" "hum"
                 "dance")
                (:S AGENT :IO BENEFICIARY :O THEME)))

(define-mixin-category peer-30.3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("stare" "squint" "snoop" "sniff" "peer" "peep" "peek" "ogle"
                 "look" "listen" "leer" "goggle" "glare" "glance" "gaze" "gawk"
                 "gape" "eavesdrop" "check" "attend")
                (:S AGENT :SPATIAL THEME)))

(define-mixin-category gobble-39.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-UP NP-V-NP-DOWN WITH-PATIENT GOBBLE-39.3)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization (:VERB ("wolf" "gobble" "bolt") (:S AGENT :O PATIENT)))

(define-mixin-category disfunction-105.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-THEME)
  :realization (:VERB
                (("poop" :PREP "out") ("go" :PREP "out") ("go" :PREP "off")
                 ("go" :PREP "down") ("give" :PREP "out")
                 ("fizzle" :PREP "out") "die" "croak")
                (:S THEME)))

(define-mixin-category die-42.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CAUSE WITH-CAUSE DIE-42.4)
  :realization (:VERB
                ("perish" ("pass" :PREP "away") "expire" ("drop" :PREP "dead")
                 "die" "croak" "conk" "choke")
                (:S PATIENT :OF CAUSE :|\|| CAUSE :FROM CAUSE)))

(define-mixin-category break_down-45.8
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-PATIENT)
  :realization (:VERB
                (("fizzle" :PREP "out") ("poop" :PREP "out") "perish"
                 ("pass" :PREP "away") ("kick" :PREP "the_bucket") "give"
                 ("give" :PREP "way") ("give" :PREP "out") ("go" :PREP "off")
                 ("go" :PREP "down") ("go" :PREP "out") ("fall" :PREP "apart")
                 "expire" "die" "croak" ("break" :PREP "down"))
                (:S PATIENT)))

(define-mixin-category chit_chat-37.6
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-PP.CO-AGENT-PP.TOPIC NP-V
           NP-V-PP.TOPIC-PP.CO-AGENT NP-V-PP.TOPIC WITH-AGENT WITH-AGENT
           WITH-TOPIC)
  :binds ((SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("yak" "schmooze" "rap" "palaver" "joke" "jest" "gossip" "gab"
                 "flirt" "converse" "confer" "chitchat" "chatter" "chat")
                (:S AGENT :ABOUT TOPIC) (:S AGENT :ABOUT TOPIC :WITH AGENT)
                (:S AGENT) (:S AGENT :WITH AGENT :ABOUT TOPIC)
                (:S AGENT :WITH AGENT)))

(define-mixin-category initiate_communication-37.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V INITIATE_COMMUNICATION-37.4.2)
  :realization (:VERB ("telephone" "ring" "phone" "call") (:S AGENT)))

(define-mixin-category dub-29.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP WITH-AGENT WITH-THEME WITH-RESULT)
  :binds ((SPARSER::THEME (:OR PHYSICAL COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("style" "nickname" "name" "label" "crown" "consecrate"
                 "christen" "brand" "baptize" "anoint" "vote" "term" "stamp"
                 "rule" "rename" "pronounce" "dub" "decree" "call")
                (:S AGENT :O THEME) (:S AGENT :IO THEME :O RESULT)))

(define-mixin-category nonverbal_expression-40.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP NP-V-PP.THEME NP-V-PP.RECIPIENT NP-V-PP.STIMULUS
           WITH-AGENT WITH-THEME WITH-RECIPIENT WITH-STIMULUS)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("hem" "yawn" "whistle" "weep" "titter" "sob" "snort" "snore"
                 "snivel" "snigger" "sniff" "snicker" "sneer" "smirk" "smile"
                 "simper" "sigh" "scowl" "scoff" "pout" "moan" "lour" "laugh"
                 "jeer" "howl" "guffaw" "growl" "groan" "grin" "grimace"
                 "goggle" "glower" "glare" "giggle" "gawk" "gasp" "gape"
                 "frown" "cry" "cough" "chuckle" "chortle" "cackle" "blubber"
                 "beam")
                (:S AGENT :DEST_DIR STIMULUS) (:S AGENT :DEST_DIR RECIPIENT)
                (:S AGENT :IN THEME) (:S AGENT :O THEME) (:S AGENT)))

(define-mixin-category initiate_communication-37.4.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT WITH-AGENT WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("reach" "ping" ("get" :PREP "hold_of")
                 ("get" :PREP "ahold_of") "get" "buzz")
                (:S AGENT :O RECIPIENT)))

(define-mixin-category bulge-47.5.3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION PHYSICAL))
  :realization (:VERB
                ("seethe" "hyperventilate" "hum" "buzz" "bulge" "bristle")
                (:S LOCATION) (:S LOCATION :WITH THEME)))

(define-mixin-category pit-10.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-SOURCE)
  :binds ((SPARSER::SOURCE PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("zest" "worm" "wind" "weed" "vein" "tassel" "tail" "string"
                 "stone" "stem" "stalk" "snail" "skin" "shuck" "shell" "seed"
                 "scalp" "scale" "rind" "pulp" "poll" "pod" "pith" "pit" "pip"
                 "pinion" "peel" "milk" "louse" "lint" "husk" "hull" "head"
                 "gut" "gill" "core" "burl" "bone" "beard" "bark")
                (:S AGENT :O SOURCE)))

(define-mixin-category manner_speaking-37.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-PP.TOPIC NP-V-NP NP-V-S-QUOTE
           NP-V-NP-PP.RECIPIENT NP-V-THAT-S NP-V-HOW-S_INF NP-V-S_INF
           NP-V-PP.RECIPIENT-THAT-S NP-V-PP.RECIPIENT-HOW-S_INF
           NP-V-PP.RECIPIENT-S_INF NP-V-PP.RECIPIENT-S-QUOTE WITH-AGENT
           WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("hum" "gurgle" "blare" "yodel" "yelp" "yell" "yap" "yammer"
                 "whoop" "witter" "whistle" "whisper" "whine" "whimper"
                 "wheeze" "warble" "wail" "vociferate" "twitter" "twang"
                 "trumpet" "trill" "tisk" "thunder" "stutter" "stemmer"
                 "stammer" "squeal" "squeak" "squawk" "squall" "splutter"
                 "snuffle" "snivel" "snarl" "snap" "smile" "smatter" "sing"
                 "sigh" "simper" "sibilate" "shriek" "shout" "screech" "scream"
                 "rumble" "roar" "rasp" "rant" "rage" "quaver" "purr" "prattle"
                 "pant" "natter" "nasal" "mutter" "murmur" "mumble" "moan"
                 "mewl" "lisp" "lilt" "keen" "jabber" "howl" "hoot" "holler"
                 "hiss" "grunt" "grumble" "growl" "groan" "gibber" "gasp"
                 "gabble" "drone" "drawl" "cry" "crow" "croon" "croak" "coo"
                 "cluck" "chuckle" "chortle" "chirp" "chatter" "chant" "carol"
                 "call" "cackle" "bluster" "burble" "bray" "boom" "blubber"
                 "bleat" "bellow" "bawl" "bark" "babble")
                (:S AGENT :DEST_DIR RECIPIENT :O TOPIC)
                (:S AGENT :FOR RECIPIENT :OC_TO_INF TOPIC)
                (:S AGENT :DEST_DIR RECIPIENT :OC_TO_INF TOPIC)
                (:S AGENT :DEST_DIR RECIPIENT :WH_INF TOPIC)
                (:S AGENT :DEST_DIR RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :AC_TO_INF TOPIC) (:S AGENT :WH_INF TOPIC)
                (:S AGENT :THAT_COMP TOPIC)
                (:S AGENT :O TOPIC :DEST_DIR RECIPIENT) (:S AGENT :O TOPIC)
                (:S AGENT :ABOUT TOPIC) (:S AGENT :DEST_DIR RECIPIENT)
                (:S AGENT)))

(define-mixin-category animal_sounds-38
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-NP.THEME NP-V-PP.STIMULUS WITH-AGENT
           WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::THEME SPEECH-ACT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("whine" "wheeze" "trumpet" "thunder" "snarl" "screech"
                 "rumble" "moan" "ululate" "groan" "rattle" "boom" "yowl" "yip"
                 "yelp" "yell" "yap" "woof" "whistle" "whinny" "whimper"
                 "warble" "wail" "twitter" "tweet" "trill" "stridulate"
                 "squeal" "squeak" "squawk" "scrawk" "rooroo" "roar" "quack"
                 "purr" "pipe" "peep" "oink" "neigh" "moo" "mew" "meow" "low"
                 "ki-yi" "howl" "hoot" "honk" "hiss" "hee-haw" "grunt" "growl"
                 "gobble" "drone" "cuckoo" "crow" "croak" "coo" "cluck"
                 "chitter" "chirrup" "chirp" "cheep" "chatter" "caw" "call"
                 "cackle" "buzz" "bray" "bleat" "blat" "bellow" "bay" "bark"
                 "baa")
                (:S AGENT :AT STIMULUS) (:S AGENT :O THEME)
                (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT)))

(define-mixin-category hit-18.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-NP-TOGETHER
           NP-V-NP-ADJP-PP.INSTRUMENT NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-NP-PP NP.INSTRUMENT-V-NP
           NP-V-NP-ADJP NP-V-NP-ADJP-PP.RESULT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("smite" "whop" "whap" "whang" "wham" "whack" "trounce"
                 "thwack" "thump" "tamp" "squelch" "squash" "pink" "knap"
                 "dash" "click" "bop" "blast" "bash" "bang")
                (:S INSTRUMENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S INSTRUMENT :IO PATIENT :O RESULT)
                (:S INSTRUMENT :O PATIENT)
                (:S AGENT :O INSTRUMENT :AGAINST PATIENT :ON PATIENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :O RESULT :WITH INSTRUMENT)
                (:S AGENT :IO PATIENT :O RESULT) (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category entity_specific_modes_being-47.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP NP.LOCATION-V-NP
           NP.LOCATION-V-PP.THEME WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION)))
  :realization (:VERB
                ("sprout" "smolder" "seethe" "roil" "ripple" "rage" "propagate"
                 "moil" "froth" "foam" "flux" "flower" "flow" "fizz" "fester"
                 "effervesce" "burn" "bulge" "bristle" "blossom" "bloom"
                 "billow")
                (:S LOCATION :WITH THEME) (:LOC LOCATION :O THEME)
                (:DEFINITE THEME) (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category care-88.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.STIMULUS-WHAT-S NP-V-WHAT-S NP-V-PP.STIMULUS-HOW/WHETHER-S
           CARE-88.1)
  :realization (:VERB ("wonder" "worry" "care")
                (:S EXPERIENCER :ABOUT STIMULUS)
                (:S EXPERIENCER :WHAT_EXTRACT STIMULUS)))

(define-mixin-category try-61.1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP NP-V-S_INF WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("intend" "attempt" "try") (:S AGENT :SC_TO_INF THEME)
                (:S AGENT :SENTENTIAL THEME) (:S AGENT :NP_OMIT_ING THEME)))

(define-mixin-category prosecute-33.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE NP-V-NP-PP.THEME-PP.ATTRIBUTE
           NP-V-NP-PP.ATTRIBUTE-PP.THEME WITH-ATTRIBUTE PROSECUTE-33.2)
  :realization (:VERB
                ("try" "punish" "prosecute" "persecute" "indict" "arrest")
                (:S AGENT :AS ATTRIBUTE :O PATIENT)
                (:S AGENT :O PATIENT :AS ATTRIBUTE)))

(define-mixin-category assessment-34.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP.ATTRIBUTE WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("watch" ("try" :PREP "out") ("try" :PREP "on") "try" "test"
                 "taste" "survey" "surveil" "study" "scrutinize" "scan"
                 "sample" "review" "research" "regard" "proofread" "peruse"
                 "monitor" "investigate" "inspect" ("go" :PREP "over") "follow"
                 ("feel" :PREP "out") "evaluate" "examine" "consult" "check"
                 "audit" "assess" "assay" "appraise" "analyze" "analyse")
                (:S AGENT :GENITIVE THEME :IO ATTRIBUTE)
                (:S AGENT :O THEME :FOR ATTRIBUTE) (:S AGENT :O THEME)))

(define-mixin-category send-11.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("transship" "import" "export" "transport" "transfer" "shunt"
                 "shift" "return" "post" "port" ("pass" :PREP "on")
                 "handdeliver" "drive" "dispatch" "deliver" "convey")
                (:S AGENT :O THEME :TO DESTINATION :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category relate-86.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RELATE-86.2)
  :realization (:VERB
                (("touch" :PREP "on") ("bear" :PREP "on") "touch" "concern"
                 "involve")
                (:S THEME :O THEME)))

(define-mixin-category contiguous_location-47.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB
                ("touch" "meet" "intersect" "hit" "cross" "adjoin" "abut")
                (:S THEME :S THEME)))

(define-mixin-category throw-17.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RESULT NP-V-PP.RESULT-NP WITH-CAUSE THROW-17.1-1)
  :realization (:VERB ("toss" "tip" "throw" "launch" "kick" "catapult")
                (:S CAUSE :INTO RESULT :O THEME)
                (:S CAUSE :O THEME :INTO RESULT)))

(define-mixin-category urge-58.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING URGE-58.1)
  :realization (:VERB
                ("tempt" "summon" "push" ("lean" :PREP "on") "invite" "force"
                 ("egg" :PREP "on") "dare" ("call" :PREP "on"))
                (:S AGENT :IO PATIENT :OC_TO_INF RESULT)))

(define-mixin-category sound_emission-43.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION NP.LOCATION-V-PP.THEME PP.LOCATION-V-NP
           THERE-V-NP-PP NP-V-NP.THEME WITH-THEME HAS-LOCATION WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT)))
          (SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB
                ("zing" "whump" "whoosh" "whistle" "whisper" "whish" "whir"
                 "whine" "wheeze" "wail" "vroom" "ululate" "twang" "trumpet"
                 "trill" "tootle" "toot" "toll" "tinkle" "ting" "tick" "thunk"
                 "thunder" "thump" "thud" "thrum" "swoosh" "swish" "strike"
                 "squelch" "squeal" "squeak" "squawk" "sputter" "splutter"
                 "splash" "sploosh" "sough" "sound" "snap" "sizzle" "sing"
                 "shrill" "shriek" "screech" "scream" "rustle" "rumble" "roll"
                 "roar" "ring" "rattle" "rasp" "rap" "putter" "purr" "pop"
                 "plunk" "plop" "plonk" "plink" "plash" "pipe" "pink" "ping"
                 "peal" "patter" "murmur" "moan" "mewl" "lilt" "knock" "knell"
                 "keen" "jingle" "jangle" "hum" "howl" "honk" "hoot" "hiss"
                 "gurgle" "growl" "groan" "fizzle" "fizz" "explode" "drone"
                 "dong" "ding" "cry" "crunch" "crepitate" "creak" "crash"
                 "crackle" "crack" "clunk" "clump" "clomp" "clink" "cling"
                 "click" "clatter" "clash" "clap" "clank" "clang" "clack"
                 "chug" "chitter" "chir" "chink" "chime" "chatter" "caterwaul"
                 "buzz" "burr" "burble" "bubble" "boom" "blat" "blast" "blare"
                 "bellow" "beep" "beat" "bang" "babble")
                (:S AGENT :O THEME) (:O THEME :LOC LOCATION)
                (:LOC LOCATION :O THEME) (:S LOCATION :WITH THEME)
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category hit-18.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP NP-V-PP-PP WITH-INSTRUMENT HIT-18.1)
  :binds ((SPARSER::INSTRUMENT (:OR NIL PRONOUN)))
  :realization (:VERB
                ("tap" "whang" "stomp" "strike" "smash" "smack" "slap" "rap"
                 "pound" "lash" "knock" "kick" "jab" "hit" "hammer" "drum"
                 "butt" "bump" "beat" "batter")
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category bump-18.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-TOGETHER BUMP-18.4)
  :realization (:VERB
                ("thump" "thud" "strike" "squash" "smash" "smack" "slap" "slam"
                 "rap" "ram" "knock" "hammer" "crunch" "crash" "crack"
                 "collide" "clatter" "clash" "clang" "butt" "bump" "brush"
                 "bash" "bang")
                (:S THEME)))

(define-mixin-category attack-60.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT ATTACK-60.1)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB ("strike" "raid" "charge" "attack") (:S AGENT)))

(define-mixin-category shake-22.3-1-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-PP-ADV-MIDDLE NP-V-NP SHAKE-22.3-1)
  :realization (:VERB ("whisk" "whip" "swirl" "stir" "scramble" "fuse" "beat")
                (:S AGENT :O PATIENT)
                (:S PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO CO-PATIENT :M
                 ADVERB)))

(define-mixin-category touch-20-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME-PP.INSTRUMENT TOUCH-20)
  :realization (:VERB
                ("touch" "tickle" "stroke" "sting" "rub" "prod" "pinch" "pet"
                 "peck" "paw" "pat" "nudge" "massage" "lick" "kiss" "grip"
                 "graze" "grasp" "fondle" "caress")
                (:S AGENT :O EXPERIENCER :ON THEME :|\|| THEME :BY THEME :WITH
                 INSTRUMENT)))

(define-mixin-category tingle-40.8.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-PATIENT WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("twinge" "tingle" "tickle" "throb" "swim" "sting" "split"
                 "spin" "smart" "reel" "pucker" "prickle" "pound" "palpitate"
                 "hum" "burn" "ache")
                (:S PATIENT :FROM STIMULUS :AT STIMULUS) (:S PATIENT)))

(define-mixin-category hurt-40.8.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-PATIENT HURT-40.8.3)
  :realization (:VERB
                ("stub" "sting" "rick" "overstretch" "chafe" "graze" "jam"
                 "hit")
                (:S EXPERIENCER :O PATIENT)))

(define-mixin-category run-51.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-PP-NP THERE-V-NP-PP PP.LOCATION-V-NP
           WITH-THEME WITH-PATH WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::PATH PHYSICAL)
          (SPARSER::THEME (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("zoom" "zigzag" "yaw" "worm" "whiz" "wend" "weave" "waddle"
                 "trundle" "troop" "tread" "totter" "tootle" "toil" "toddle"
                 "tiptoe" "tear" "swerve" "swan" "swagger" "swag" "stump"
                 "stumble" "streak" "stray" "stomp" "step" "stagger" "spring"
                 "sprint" "somersault" "slouch" "slog" "slither" "slink"
                 "sleepwalk" "skulk" "skid" "skedaddle" "sidle" "shuffle"
                 "shamble" "seesaw" "scuttle" "scutter" "scurry" "scud"
                 "scramble" "scram" "scamper" "saunter" "sashay" "romp" "roar"
                 "pussyfoot" "pounce" "pootle" "pace" "nip" "mosey" "mince"
                 "meander" "lurch" "lumber" "lollop" "limp" "jounce"
                 "hopscotch" "hitchhike" "hike" ("goose" :PREP "step")
                 "globetrot" "ghost" "gambol" "gallivant" "frolic" "flounce"
                 "flit" "falter" "dodder" "creep" "crawl" "clump" "climb"
                 "clamber" "chunter" "charge" "cavort" "carom" "caper" "bustle"
                 "breeze" "bound" "bolt" "backpack" "ambulate" "amble")
                (:PATH SOURCE :O THEME) (:DEFINITE THEME :PATH SOURCE)
                (:PATH SOURCE :DEFINITE THEME) (:S THEME :SPATIAL PATH)
                (:S THEME :TO DESTINATION :TOWARDS DESTINATION) (:S THEME)))

(define-mixin-category change_bodily_state-40.8.4
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                (("zonk" :PREP "out") ("pass" :PREP "out") ("nod" :PREP "off")
                 ("konk" :PREP "out") ("drift" :PREP "off")
                 ("drowse" :PREP "off") ("doze" :PREP "off") "swoon"
                 ("black" :PREP "out") "sicken" "pale" "faint" "blench"
                 "blanch")
                (:S EXPERIENCER :FROM STIMULUS :AT STIMULUS) (:S EXPERIENCER)))

(define-mixin-category knead-26.5
  :specializes subcategorization-pattern
  :mixins (NP.MATERIAL-V-PP.PRODUCT NP-V-NP.MATERIAL-PP.PRODUCT
           NP-V-NP.MATERIAL WITH-AGENT WITH-PRODUCT WITH-MATERIAL)
  :binds ((SPARSER::MATERIAL PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("work" "wind" "whip" "wad" "twist" "twirl" "squish" "squeeze"
                 "squash" "shake" "melt" "knead" "flux" "flex" "fold" "distort"
                 "curve" "contort" "compress" "collect" "coil" "bend" "beat"
                 "ball")
                (:S AGENT :O MATERIAL) (:S AGENT :O MATERIAL :INTO PRODUCT)
                (:S MATERIAL :INTO PRODUCT)))

(define-mixin-category funnel-9.3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION FUNNEL-9.3-1)
  :realization (:VERB
                ("wedge" "sweep" "squeeze" "shake" "ram" "push" "pound"
                 "hammer" "funnel" "dump" "bang")
                (:S THEME :INTO DESTINATION)))

(define-mixin-category crane-40.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.RECIPIENT NP-V-NP-PP.RECIPIENT-PP.THEME
           WITH-AGENT WITH-PATIENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("wrinkle" "wring" "wiggle" "waggle" "wag" "twitch" "twiddle"
                 "turn" "toss" "stretch" "stamp" "snap" "smack" "shuffle"
                 "show" "shake" "rub" "roll" "raise" "purse" "pucker" "open"
                 "knit" "kick" "hunch" "hang" "grind" "gnash" "fold" "flutter"
                 "flick" "flex" "flash" "flap" "drum" "cross" "crook" "crane"
                 "cock" "close" "click" "clench" "blow" "beat" "bat" "bare"
                 "arch")
                (:S AGENT :O PATIENT :DEST_DIR RECIPIENT :IN TOPIC)
                (:S AGENT :O PATIENT :DEST_DIR RECIPIENT) (:S AGENT :O PATIENT)))

(define-mixin-category body_internal_states-40.6
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("writhe" "tremble" "shudder" "shiver" "shake" "quiver" "quake"
                 "cower" "convulse")
                (:S EXPERIENCER :FROM STIMULUS :AT STIMULUS) (:S EXPERIENCER)))

(define-mixin-category free-10.6.3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME FREE-10.6.3-1)
  :realization (:VERB ("purify" "purge" "relieve" "cure")
                (:S CAUSE :O SOURCE :FROM THEME)))

(define-mixin-category stimulate-59.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("stimulate" "spur" "rouse" "prompt" "jolt" "incite")
                (:S AGENT :O PATIENT :INTO PREDICATE) (:S AGENT :O PATIENT)))

(define-mixin-category pocket-9.10
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::THEME PHYSICAL) (SPARSER::AGENT (:OR NIL COMPANY)))
  :realization (:VERB
                ("wharf" "warehouse" "tree" "trap" "tin" "tassel" "string"
                 "spool" "spit" "spindle" "snare" "skewer" "shoulder" "shelve"
                 "sheathe" "pot" "pocket" "pillory" "pen" "pasture" "kennel"
                 "jug" "jar" "jail" "imprison" "house" "hangar" "garage" "fork"
                 "file" "cup" "crate" "corral" "coop" "cloister" "cellar"
                 "case" "can" "cage" "box" "bottle" "bin" "billet" "bench"
                 "bed" "beach" "barrack" "bank" "bag" "archive")
                (:S AGENT :O THEME :IN DESTINATION :ON DESTINATION :UNDER
                 DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category appeal-31.4-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.EXPERIENCER APPEAL-31.4)
  :realization (:VERB ("jar" "grate") (:S STIMULUS :ON EXPERIENCER)))

(define-mixin-category trick-59.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("trap" "trick" "mislead" "manipulate" "hoodwink" "fool"
                 "extort" "entrap" "ensnare" "dupe" "delude" "deceive" "con"
                 "cheat" "blackmail" "bluff" "bullshit" "fox" "cozen"
                 "bamboozle")
                (:S AGENT :O PATIENT :INTO RESULT)
                (:S AGENT :O PATIENT :INTO PREDICATE) (:S AGENT :O PATIENT)))

(define-mixin-category reject-77.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-WHAT-S REJECT-77.2)
  :realization (:VERB
                ("reject" ("pooh" :PREP "pooh") "disprefer" "disparage"
                 "dismiss" "discourage")
                (:S AGENT :WHAT_EXTRACT THEME) (:S AGENT :HOW_EXTRACT THEME)))

(define-mixin-category forbid-64.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP FORBID-64.4)
  :realization (:VERB
                ("stop" "restrain" "prohibit" "prevent" "preclude" "obstruct"
                 "inhibit" "impede" "hinder" "hamper" "forbid" "exclude"
                 "discourage" "deter" "block" "bar" "ban")
                (:S AGENT :SENTENTIAL THEME) (:S AGENT :AC_ING THEME)
                (:S AGENT :POSS_ING THEME)))

(define-mixin-category deprive-10.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("sap" "deprive" "divest" "deplete" "dispossess" "drain"
                 "disarm" "denude" "bereave" "depopulate" "rid" "plunder"
                 "disabuse" "despoil" "burgle")
                (:S AGENT :O SOURCE :OF THEME) (:S AGENT :O SOURCE)))

(define-mixin-category destroy-44
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP.INSTRUMENT-V-NP WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("shatter" "wreck" "wrack" "waste" "vaporize" "unmake" "undo"
                 "smoke" "shipwreck" "ruin" "raze" "ravage" "rack" "obliterate"
                 "mutilate" "maim" ("louse" :PREP "up") "level" "extirpate"
                 "exterminate" "efface" "disfigure" "devastate" "destroy"
                 "desecrate" "demolish" "decimate" "damage" "blitz" "blight"
                 "annihilate")
                (:S INSTRUMENT :O PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category stop-55.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("kill" "raise" "cut") (:S AGENT :O THEME)))

(define-mixin-category split-23.2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP-APART NP-V-PP.CO-PATIENT
           NP-V-APART NP-V-PP-ADV-MIDDLE NP-V-APART-ADV-MIDDLE WITH-AGENT
           WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT SOLID) (SPARSER::PATIENT SOLID))
  :realization (:VERB
                ("yank" "tug" "tear" "split" "snap" "sliver" "slip" "shove"
                 "saw" "roll" "rip" "push" "pull" "pry" "knock" "kick" "hew"
                 "hack" "draw" "cut" "break" "blow")
                (:S PATIENT :M ADVERB)
                (:S PATIENT :OFF CO-PATIENT :OFF CO-PATIENT :OF CO-PATIENT
                 :FROM CO-PATIENT :M ADVERB)
                (:S PATIENT)
                (:S PATIENT :OFF CO-PATIENT :OFF CO-PATIENT :OF CO-PATIENT
                 :FROM CO-PATIENT)
                (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :OFF CO-PATIENT :OFF CO-PATIENT :OF
                 CO-PATIENT :FROM CO-PATIENT)))

(define-mixin-category meander-47.7
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION PP.LOCATION-V-NP THERE-V-PP-NP THERE-V-NP-PP
           HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION PHYSICAL))
  :realization (:VERB
                ("zig" "zag" "veer" "range" "wind" "weave" "wander" "tumble"
                 "sweep" "stretch" "straggle" "skirt" "round" "pass" "mount"
                 "lance" "go" "fall" "emerge" "edge" "dive" "cut" "cross"
                 "crest" "crawl" "cascade" "angle")
                (:O THEME :PATH LOCATION) (:PATH LOCATION :O THEME)
                (:S THEME :PATH LOCATION)))

(define-mixin-category hurt-40.8.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP HURT-40.8.3)
  :realization (:VERB
                ("wrench" "sunburn" "strain" "skin" "scratch" "scald" "prick"
                 "nick" "injure" "hurt" "cut" "contuse" "burn" "bump" "bruise"
                 "bite" "bark")
                (:S EXPERIENCER :O PATIENT) (:S EXPERIENCER :REFL PATIENT)))

(define-mixin-category escape-51.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V-PP.TRAJECTORY
           NP-V-PP.INITIAL_LOCATION-PP.DESTINATION WITH-THEME WITH-SOURCE
           WITH-DESTINATION WITH-PATH)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::DESTINATION PHYSICAL)
          (SPARSER::SOURCE PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization (:VERB (("make" :PREP "it") "get" "cut")
                (:S THEME :PATH SOURCE :PATH DESTINATION) (:S THEME :PATH PATH)
                (:S THEME :PATH DESTINATION)))

(define-mixin-category cut-21.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-PATIENT CUT-21.1)
  :binds ((SPARSER::PATIENT (:OR NIL PRONOUN)))
  :realization (:VERB
                ("ream" "snip" "slice" "slash" "scratch" "scrape" "scarify"
                 "saw" "rip" "hew" "hack" "cut" "clip" "chop" "chip")
                (:S AGENT :O PATIENT)))

(define-mixin-category caused_calibratable_cos-45.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.PATIENT-PP.EXTENT-PP.INITIAL_STATE-PP.RESULT
           NP-V-NP.PATIENT-NP.EXTENT-PP.INITIAL_STATE-PP.RESULT WITH-CAUSE
           WITH-PATIENT WITH-EXTENT WITH-SOURCE WITH-RESULT WITH-ATTRIBUTE)
  :realization (:VERB ("reduce" "raise" "cut") (:S CAUSE)))

(define-mixin-category build-26.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-P.ASSET NP.ASSET-V-NP NP.ASSET-V-NP-NP NP.ASSET-V-PP
           NP.ASSET-V-NP-PP BUILD-26.1)
  :realization (:VERB ("shape" "sculpt" "remake" "make" "cut" "carve" "build")
                (:S EXTENT :IO BENEFICIARY :O PRODUCT :FROM MATERIAL :OUT_OF
                 MATERIAL)
                (:S EXTENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL)
                (:S EXTENT :IO BENEFICIARY :O PRODUCT) (:S EXTENT :O PRODUCT)
                (:S AGENT :O PRODUCT :FOR EXTENT)))

(define-mixin-category braid-41.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("wax" "wave" "tweeze" "trim" "towel" "tease" "talc" "style"
                 "soap" "shampoo" "set" "rouge" "rinse" "powder" "pluck"
                 "plait" "paint" "perm" "part" "manicure" "lather" "highlight"
                 "henna" "gel" "file" "dye" "cut" "curl" "crop" "crimp"
                 "condition" "comb" "coldcream" "clip" "brush" "braid" "bob")
                (:S AGENT :O PATIENT)))

(define-mixin-category subjugate-42.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                (("walk" :PREP "over") "kill" "strangle" "slake" "reduce"
                 "subjugate" ("keep" :PREP "down") "quash" "repress" "muffle"
                 "smother" "quench" "quell" "squelch" "muzzle" "gag"
                 ("calm" :PREP "down") "lull" ("hush" :PREP "up")
                 ("shut" :PREP "up") "still" "silence" "hush" "choke"
                 "suffocate" "dampen" "stifle" "crush" "curb" "conquer"
                 "subdue" ("stamp" :PREP "down") "suppress" "nourish" "mob"
                 "enslave" "disenfranchise")
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category break-45.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP NP-V-NP-ADJ
           NP-V-NP-ADJ-PP.INSTRUMENT NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-PP.RESULT WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::PATIENT SOLID))
  :realization (:VERB
                ("tear" "tatter" "split" "splinter" "snap" "smash" "sliver"
                 "shred" "shatter" "rupture" "rip" "rive" "rend" "pop"
                 "granulate" "fragment" "fracture" "fissure" "dissolve" "crush"
                 "crumble" "crash" "crack" "cleave" "chip" ("break" :PREP "up")
                 ("break" :PREP "down") ("break" :PREP "apart") "break"
                 "atomize")
                (:S PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :O RESULT :WITH INSTRUMENT)
                (:S AGENT :IO PATIENT :O RESULT) (:S INSTRUMENT :O PATIENT)
                (:S PATIENT :M ADVERB) (:S PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category pain-40.8.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP.EXPERIENCER NP-V-PP.STIMULUS WITH-EXPERIENCER
           WITH-PATIENT WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB ("pain" "kill" "itch" "hurt" "burn" "bother" "ail")
                (:S PATIENT :FROM STIMULUS) (:S PATIENT :O EXPERIENCER)
                (:S PATIENT)))

(define-mixin-category rummage-35.5
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION NP-V-PP.LOCATION-PP.THEME WITH-AGENT HAS-LOCATION
           WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("scratch" "scrabble" "poke" "page" "look" "listen" "leaf" "go"
                 "fumble" "burrow" "bore")
                (:S AGENT :LOC LOCATION :FOR THEME) (:S AGENT :L LOCATION)))

(define-mixin-category carve-21.2-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-ADVP-MIDDLE
           NP.INSTRUMENT-V-NP NP.INSTRUMENT-V-ADVP CARVE-21.2)
  :realization (:VERB
                ("trench" "squish" "squash" "smash" "slit" "slice" "shred"
                 "scrunch" "scollop" "quarter" "pulverize" "perforate" "notch"
                 "nick" "mince" "mash" "grind" "grate" "gouge" "gash" "flatten"
                 "flake" "fillet" "dice" "dent" "cube" "crush" "crunch"
                 "crumple" "crumble" "crumb" "cleave" "chip" "bruise" "bore")
                (:S INSTRUMENT :M ADVERB) (:S INSTRUMENT :O PATIENT)
                (:S PATIENT :M ADVERB) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category lure-59.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                (("win" :PREP "over") "sweet-talk" "talk" "soothe" "seduce"
                 "lure" "inveigle" "flatter" "entice" "draw" "coerce" "coax"
                 "cajole" "bewitch" "attract" "allure")
                (:S AGENT :O PATIENT :SENTENTIAL PREDICATE)
                (:S AGENT :O PATIENT :INTO PREDICATE) (:S AGENT :O PATIENT)))

(define-mixin-category bully-59.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("terrify" "tease" "taunt" "shock" "shame" "panic" "nag"
                 "hustle" "harry" "harass" "frighten" "bully" "bullock"
                 "badger" "annoy")
                (:S AGENT :O PATIENT :INTO RESULT) (:S AGENT :O PATIENT)))

(define-mixin-category marry-36.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("pet" "nuzzle" "neck" "marry" "kiss" "hug" "embrace" "divorce"
                 "date" "cuddle" "court")
                (:S AGENT :O AGENT) (:S AGENT)))

(define-mixin-category amalgamate-22.2-3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT WITH-CO-PATIENT AMALGAMATE-22.2-3-1)
  :binds ((SPARSER::CO-PATIENT PHYSICAL-AGENT)
          (SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("wed" "remarry" "marry") (:S PATIENT)))

(define-mixin-category rely-70
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME-NP-S_ING NP-V-PP.THEME-S_INF NP-V-PP.THEME-S_ING
           NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("wager" ("take" :PREP "a_chance") "gamble" "bet" "reckon"
                 "figure" "count" "bargain" "bank" "depend" "rely")
                (:S AGENT :ON THEME)))

(define-mixin-category establish-55.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT WITH-INSTRUMENT ESTABLISH-55.5)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB
                (("open" :PREP "up") "open" "launch" "synthesise"
                 ("strike" :PREP "up") "simulate" "set" "introduce" "arrange"
                 ("bring" :PREP "about") "mount" "devise" "premise" "prepare"
                 "originate" "organize" "institute" "instigate" "implement"
                 "plant" "found" "format" "feign" "fake" "establish"
                 "initiate")
                (:S AGENT :O PATIENT :WITH INSTRUMENT)))

(define-mixin-category amalgamate-22.2-3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT AMALGAMATE-22.2-3)
  :realization (:VERB ("figure" "introduce")
                (:S AGENT :O PATIENT :TO CO-PATIENT)))

(define-mixin-category amalgamate-22.2-3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP AMALGAMATE-22.2)
  :realization (:VERB ("oppose") (:S AGENT :PLURAL PATIENT)))

(define-mixin-category other_cos-45.4
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB
                ("yellow" "worsen" "widen" "wizen" "whiten" "wet" "westernize"
                 "weaken" "warm" "waken" "wake" "vulcanize" "volatilize"
                 "vitrify" "vibrate" "vaporize" "upload" "unionize" "ulcerate"
                 "turn-off" "turn-on" "triple" "trip" "treble" "tranquilize"
                 "toughen" "topple" "tone" "tire" "tighten" "thin" "thicken"
                 "tense" "tenderize" "taper" "tan" "tame" "sweeten" "sunburn"
                 "submerge" "strengthen" "strangulate" "stratify" "stiffen"
                 "steepen" "steady" "standardize" "stabilize" "sprout" "souse"
                 "sour" "solidify" "soften" "sober" "soak" "smoothen" "smooth"
                 "smarten" "slow" "slim" "sink" "silver" "silicify" "sicken"
                 "shut" "shush" "shorten" "short-circuit" "short" "sharpen"
                 "sensitize" "section" "sear" "scorch" "saponify" "roughen"
                 "root" "ripen" "revive" "reverse" "resuscitate" "reproduce"
                 "replicate" "reopen" "renew" "rekindle" "reform" "refine"
                 "redouble" "redden" "rarefy" "quieten" "quiet" "quicken"
                 "quadruple" "purple" "purify" "puncture" "propagate"
                 "proliferate" "privatize" "polymerize" "polarize" "plump"
                 "petrify" "pale" "ossify" "open" "occlude" "normalize"
                 "neutralize" "naturalize" "nationalize" "narrow" "mummify"
                 "multiply" "moisten" "modulate" "modify" "modernize"
                 "moderate" "mobilize" "mitigate" "metabolize" "mellow"
                 "mature" "macerate" "loosen" "loose" "liven" "liquify"
                 "liquefy" "lignify" "liberalize" "levitate" "level" "lessen"
                 "lengthen" "laminate" "kindle" "ionize" "internationalize"
                 "intensify" "industrialize" "indurate" "improve" "ignite"
                 "hydrate" "hydrolize" "hybridize" "hush" "hellenize"
                 "heighten" "heat" "heal" "hasten" "harmonize" "harden" "grow"
                 "gray" "glutenize" "globalize" "gladden" "germanize"
                 "gentrify" "gelatinize" "gasify" "fuse" "fructify" "frost"
                 "freshen" "freckle" "fray" "fossilize" "fluff" "flood"
                 "flatten" "firm" "fill" "feminize" "federate" "fatten" "fade"
                 "explode" "expand" "exfoliate" "even" "evaporate" "escalate"
                 "equilibrate" "equalize" "enlarge" "energize" "emulsify"
                 "empty" "emaciate" "effeminate" "ease" "dull" "drain"
                 "downshift" "double" "divide" "diversify" "dissipate"
                 "disperse" "disintegrate" "discolor" "disband" "dirty" "dim"
                 "dilute" "dilate" "diffuse" "devalue" "detonate" "destabilize"
                 "desiccate" "derail" "depressurize" "democratize"
                 "demagnetize" "dehydrate" "degrade" "degenerate" "defrost"
                 "deflect" "deepen" "decentralize" "decelerate" "de-escalate"
                 "darken" "dampen" "curdle" "crystallize" "crisp" "crimson"
                 "corrupt" "corrugate" "cool" "congeal" "condense" "combust"
                 "collect" "collapse" "coarsen" "coagulate" "cloud" "close"
                 "clog" "clear" "clean" "clarify" "civilize" "chill"
                 ("cheer" :PREP "up") "cheapen" "char" "change" "centralize"
                 "carbonize" "capsize" "calcify" "burst" "burn" "broaden"
                 "brighten" "bolshevize" "blur" "blunt" "bleach" "bisect"
                 "bifurcate" "beautify" "blacken" "balance" "augment"
                 "attenuate" "anglicize" "amplify" "americanize" "ameliorate"
                 "alter" "alkalize" "alkalify" "air" "agglomerate" "age"
                 "activate" "acidify" "acetify" "accelerate" "abridge" "abrade"
                 "abbreviate" "abate")
                (:S INSTRUMENT :O PATIENT) (:S PATIENT :M ADVERB) (:S PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category remedy-45.7-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV-MIDDLE REMEDY-45.7)
  :realization (:VERB
                ("upload" "transplant" "magnify" "magnetize" "lighten"
                 "homogenize" "halve" "extinguish" "domesticate" "conflate"
                 "categorize")
                (:S PATIENT :M ADVERB)))

(define-mixin-category fill-9.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-NP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("inject" "tinge" "taint" "sully" "suffuse" "stud"
                 ("stop" :PREP "up") "stipple" "staff" "splotch" "soil" "smut"
                 "season" "sauce" "ripple" "ring" "riddle" "resupply"
                 "repopulate" "replenish" "prefill" "plug" "plate" "pad"
                 "ornament" "mottle" "mask" "litter" "lash" "lard" "inundate"
                 "interweave" "intersperse" "interleave" "interlard"
                 "interlace" "inlay" "infest" "infect" "impregnate" "imbue"
                 "honeycomb" ("gum" :PREP "up") "grace" "garnish" "garland"
                 "flood" "fleck" "fill" "enrich" "endow" "encircle" "emblazon"
                 "embellish" "dot" "dope" "dirty" "deluge" "dam" "contaminate"
                 "clutter" "close" "clog" "choke" "bombard" "blot" "blockade"
                 "blacktop" "bestrew" "bandage" "anoint")
                (:S AGENT :O DESTINATION) (:S AGENT :O DESTINATION :WITH THEME)
                (:S THEME :O DESTINATION)))

(define-mixin-category correlate-86.1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP-S_ING WITH-AGENT WITH-THEME WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("co-occur" "flip-flop" "alternate" "correlate" "coincide")
                (:S AGENT :O THEME :WITH THEME) (:S THEME :WITH THEME)))

(define-mixin-category shake-22.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP NP-V-NP-TOGETHER SHAKE-22.3)
  :realization (:VERB
                ("stick" "shuffle" "shake" "sew" "roll" "pair" "herd" "group"
                 "glom" "gather" "fix" "collect" "collate" "cluster" "baste"
                 "band")
                (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)))

(define-mixin-category mix-22.1-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.PATIENT NP-V NP-V-TOGETHER MIX-22.1-2)
  :realization (:VERB
                ("unite" "rejoin" "network" "pool" "pair" "link" "join"
                 "connect")
                (:S PATIENT)
                (:S PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO CO-PATIENT)))

(define-mixin-category fill-9.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME FILL-9.8)
  :realization (:VERB
                ("stain" "vein" "veil" "trim" "tool" "tile" "swathe" "swaddle"
                 "surround" "spot" "speckle" "soak" "smother" "shroud"
                 "saturate" "robe" "redecorate" "pave" "panel" "marinate"
                 "line" "frame" "festoon" "face" "entangle" "encrust" "edge"
                 "drench" "douse" "disguise" "decorate" "deck" "dapple" "cover"
                 "coat" "cloak" "carpet" "block" "blanket" "bind" "bathe"
                 "adorn")
                (:S AGENT :O DESTINATION :IN THEME)))

(define-mixin-category mix-22.1-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-NP-NP-TOGETHER
           NP-V-PP.CO-PATIENT NP-V-ADVP-MIDDLE-PP NP-V-ADVP-MIDDLE
           NP-NP-V-ADVP-MIDDLE-TOGETHER MIX-22.1)
  :realization (:VERB
                ("cream" "tumble" "scramble" "intermix" "consolidate" "admix")
                (:S PATIENT :M ADVERB)
                (:S PATIENT :M ADVERB :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO CO-PATIENT)
                (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)))

(define-mixin-category amalgamate-22.2-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V AMALGAMATE-22.2-2)
  :realization (:VERB
                ("unify" "rhyme" "repackage" "interrelate" "intermingle"
                 "harmonize" "correlate" "contrast" "consolidate" "conflate"
                 "coincide" "coalesce" "unite" "mate" "interweave" "intertwine"
                 "intersperse" "interlock" "interlink" "interlace"
                 "interconnect" "interchange" "entwine" "crisscross"
                 "alternate")
                (:S PATIENT)))

(define-mixin-category amalgamate-22.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V AMALGAMATE-22.2-1)
  :realization (:VERB ("intermingle" "consolidate" "coalesce" "amalgamate")
                (:S PATIENT)))

(define-mixin-category amalgamate-22.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-PP WITH-PATIENT WITH-CO-PATIENT
           WITH-AGENT AMALGAMATE-22.2)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT ABSTRACT))
          (SPARSER::CO-PATIENT (:OR PHYSICAL-AGENT ABSTRACT))
          (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("identity" "total" "integrate" "incorporate" "confuse"
                 "confederate" "compare" "associate" "affiliate" "team" "pair"
                 "muddle" "entangle" "conjoin")
                (:S PATIENT :WITH CO-PATIENT) (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT)))

(define-mixin-category harmonize-22.6
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV NP-V-PP NP-V-ADV-PP NP-V WITH-THEME WITH-THEME)
  :realization (:VERB
                ("square" "rhyme" "match" "jibe" "harmonize" "pair" "go"
                 "dovetail" "couple" "cohere" "alternate")
                (:S THEME) (:S THEME :M ADVERB :O THEME) (:S THEME :O THEME)
                (:S THEME :M ADVERB)))

(define-mixin-category amalgamate-22.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-PP.CO-PATIENT WITH-PATIENT
           WITH-CO-PATIENT AMALGAMATE-22.2)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB ("overlap" "match" "integrate" "incorporate" "couple")
                (:S PATIENT :WITH CO-PATIENT) (:S AGENT :PLURAL PATIENT)
                (:S AGENT :O PATIENT :INTO CO-PATIENT :TO CO-PATIENT :WITH
                 CO-PATIENT)))

(define-mixin-category amalgamate-22.2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADVP-MIDDLE-PP NP-V-ADVP-MIDDLE WITH-AGENT
           WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB ("intermarry") (:S PATIENT :M ADVERB)
                (:S PATIENT :M ADVERB :WITH CO-PATIENT)))

(define-mixin-category prosecute-33.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-PATIENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR NIL COMPANY)))
  :realization (:VERB
                ("sanction" "report" "penalize" "nab" "impeach" "collar" "bust"
                 "book")
                (:S AGENT :O PATIENT :FOR THEME) (:S AGENT :O PATIENT)))

(define-mixin-category illustrate-25.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("tag" "redecorate" "ornament" "monogram" "letter" "label"
                 "initial" "illustrate" "illuminate" "ice" "gild" "endorse"
                 "embellish" "decorate" "date" "brand" "bead" "autograph"
                 "adorn" "address")
                (:S AGENT :O DESTINATION :WITH THEME) (:S AGENT :O DESTINATION)))

(define-mixin-category order-58.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING ORDER-58.3)
  :realization (:VERB ("require" "order" "commission" "command" "authorize")
                (:S AGENT :IO PATIENT :OC_TO_INF RESULT)))

(define-mixin-category say-37.7-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S SAY-37.7-1)
  :realization (:VERB
                ("report" "note" "remark" "repeat" "volunteer" "state" "say"
                 "reveal" "relate" "reiterate" "recount" "propose" "proclaim"
                 "observe" "mention" "interpose" "interject" "declare" "convey"
                 "confide" "confess" "claim" "blurt" "blab" "articulate"
                 "announce" "advise")
                (:S AGENT :THAT_COMP TOPIC)))

(define-mixin-category advise-37.9-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC NP-V-THAT-S NP-V-HOW-S_INF NP-V-S-QUOTE ADVISE-37.9)
  :realization (:VERB
                ("warn" "instruct" "counsel" "caution" "advise" "admonish")
                (:S AGENT :QUOTATION TOPIC) (:S AGENT :WH_INF TOPIC)
                (:S AGENT :THAT_COMP TOPIC)
                (:S AGENT :AGAINST TOPIC :ABOUT TOPIC :CONCERNING TOPIC :ON
                 TOPIC :REGARDING TOPIC :RESPECTING TOPIC)))

(define-mixin-category tell-37.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP.RECIPIENT-PP.TOPIC NP-V-NP.RECIPIENT-S
           WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("remind" "update" "notify" "apprise" "inform" "acquaint")
                (:S AGENT :IO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :O RECIPIENT :OF TOPIC) (:S AGENT :O RECIPIENT)))

(define-mixin-category promise-37.13
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-THAT-S NP-V-S_ING NP-V-PP.RECIPIENT-THAT-S
           NP-V-THAT-S WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("ascertain" "promise" "guarantee" "assure")
                (:S AGENT :THAT_COMP TOPIC)
                (:S AGENT :TO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :POSS_ING TOPIC)
                (:S AGENT :IO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :IO RECIPIENT :O TOPIC)))

(define-mixin-category ensure-99
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-NP NP-V-NP-PP.BENEFICIARY NP-V-THAT-S PREDICATION
           WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization (:VERB
                ("provide" "reinsure" "ascertain" "secure" "insure" "guarantee"
                 "assure" "ensure")
                (:S PREDICATE :OC_TO_INF THEME)
                (:S PREDICATE :O THEME :FOR BENEFICIARY)
                (:S PREDICATE :IO BENEFICIARY :SENTENTIAL THEME)
                (:S PREDICATE :O THEME)))

(define-mixin-category appoint-29.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-PP.RESULT NP-V-NP-TO-BE-NP NP-V-NP WITH-AGENT
           WITH-THEME WITH-RESULT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("nominate" "name" "want" "reelect" "upgrade" "adopt" "ordain"
                 "mark" "proclaim" "install" "elect" "designate" "crown"
                 "coronate" "appoint")
                (:S AGENT :O THEME) (:S AGENT :IO THEME :SENTENTIAL RESULT)
                (:S AGENT :IO THEME :O RESULT)))

(define-mixin-category declare-29.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-WHAT-S NP-V-NP-ADJ DECLARE-29.4)
  :realization (:VERB ("maintain" "assume" "adjudge")
                (:S AGENT :O THEME :AS RESULT) (:S AGENT :WHAT_EXTRACT THEME)))

(define-mixin-category involve-107.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.GOAL WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("enroll" "include" "relate" "engage" "involve")
                (:S AGENT :O THEME :IN GOAL) (:S AGENT :O THEME)))

(define-mixin-category confess-37.10
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-NP-TO-BE-NP NP-V-NP-ADJ NP-V-NP NP-V-NP-PP.RECIPIENT
           NP-V-S_ING NP-V-PP.RECIPIENT NP-V-PP.RECIPIENT-HOW-S NP-V-THAT-S
           WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("reveal" "proclaim" ("fess" :PREP "up") "acknowledge" "admit"
                 "confess")
                (:S AGENT :THAT_COMP TOPIC)
                (:S AGENT :TO RECIPIENT :HOW_EXTRACT TOPIC)
                (:S AGENT :TO RECIPIENT) (:S AGENT :POSS_ING TOPIC)
                (:S AGENT :SENTENTIAL TOPIC :TO RECIPIENT)
                (:S AGENT :SENTENTIAL TOPIC) (:S AGENT :BE_SC_ING TOPIC)
                (:S AGENT :NP_PPART TOPIC) (:S AGENT :TO_BE TOPIC)
                (:S AGENT :HOW_EXTRACT TOPIC)))

(define-mixin-category admit-64.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADV NP-V-NP-PP.LOCATION ADMIT-64.3)
  :realization (:VERB ("welcome" "receive" "permit" "include" "admit")
                (:S AGENT :O THEME :LOC LOCATION)
                (:S AGENT :IO THEME :L LOCATION)))

(define-mixin-category weather-57
  :specializes subcategorization-pattern
  :mixins (IT-V IT-V-NP.THEME IT-V-PP.THEME WITH-THEME)
  :binds ((SPARSER::THEME (:OR PHYSICAL NIL)))
  :realization (:VERB
                ("thunder" "thaw" "teem" "swelter" "storm" "sprinkle" "spot"
                 "spit" "snow" "sleet" "shower" "roar" "rain" "precipitate"
                 "pour" "pelt" "mizzle" "mist" "lightning" "howl" "hail" "gust"
                 "freeze" "frost" "fog" "drizzle" "clear" "bucket" "blow")
                (:WITH THEME) (:O THEME) NIL))

(define-mixin-category judgment-33.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-TO-BE-NP JUDGMENT-33.1-1)
  :realization (:VERB
                ("praise" "laud" "judge" "herald" "hail" "doubt" "acclaim")
                (:S AGENT :IO THEME :SMALL_CLAUSE ATTRIBUTE)))

(define-mixin-category allow-64.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S ALLOW-64.1)
  :realization (:VERB ("permit" "allow")
                (:S AGENT :IO BENEFICIARY :OC_TO_INF THEME)))

(define-mixin-category admit-64.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.LOCATION WITH-AGENT WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION)
          (SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB ("hail" "let" "allow") (:S AGENT :IO THEME :L LOCATION)))

(define-mixin-category want-32.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-FOR-NP-S_INF NP-V-NP-ADV NP-V-S_ING NP-V-NP-ADJ NP-V-NP-S_ING
           NP-V-S_INF WANT-32.1)
  :realization (:VERB ("enjoy") (:S INSTRUMENT :SC_TO_INF THEME)
                (:S INSTRUMENT :POSS_ING THEME) (:S INSTRUMENT :NP_PPART THEME)
                (:S INSTRUMENT :AC_ING THEME) (:S INSTRUMENT :O THEME)
                (:S INSTRUMENT :NP_OMIT_ING THEME)
                (:S INSTRUMENT :FOR_COMP THEME)))

(define-mixin-category admire-31.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF ADMIRE-31.2)
  :realization (:VERB
                ("hate" "fear" "enjoy" "love" "like" "regret" "dislike"
                 "disdain" "despise")
                (:S EXPERIENCER :SC_TO_INF STIMULUS)))

(define-mixin-category marvel-31.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("react" "sorrow" "triumph" "seethe" "salivate" "ruminate"
                 "reflect" "puzzle" "obsess" "muse" "mope" "hunger"
                 "hallucinate" "gloat" "delight" "anguish" "anger" "agonize"
                 "groove" "weary" "tire" "disapprove" "despair" "beware"
                 "approve" "wallow" "revel" "rejoice" "luxuriate" "glory"
                 "exult" "bask" "suffer" "hurt" "ache" "weep" "mourn" "grieve"
                 "feel" "fear" "cry" "care" "bleed" ("lose" :PREP "it")
                 ("go" :PREP "ballistic") ("go" :PREP "apeshit")
                 ("freak" :PREP "out") ("flip" :PREP "out") "worry" "sulk"
                 "stress" "stew" "moon" "mind" "fret" "bother" "chafe" "wonder"
                 "thrill" "swoon" "start" "sicken" "sadden" "rage" "marvel"
                 "madden" "gladden" "fume" "enthuse" "cringe" "cheer" "die")
                (:S EXPERIENCER :NIL STIMULUS) (:S EXPERIENCER)))

(define-mixin-category price-54.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.VALUE WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((SPARSER::PATH CURRENCY) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("value" "reappraise" "rate" "price" "peg" "overestimate"
                 "meter" "gauge" "fix" "estimate" "calibrate" "auction"
                 "assess" "approximate" "appraise")
                (:S AGENT :O THEME :AT PATH) (:S AGENT :O THEME)))

(define-mixin-category fulfilling-13.4.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP-FULFILLING-PP.THEME NP-V-NP WITH-AGENT
           WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("trust" "present" "leave" "issue") (:S AGENT :O THEME)
                (:S AGENT :O RECIPIENT :WITH THEME)
                (:S AGENT :O THEME :TO RECIPIENT :|\|| RECIPIENT :FOR
                 RECIPIENT)))

(define-mixin-category conjecture-29.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CONJECTURE-29.5)
  :realization (:VERB
                ("vaticinate" "trust" "prophesy" "presume" "infer" "guess"
                 "foretell" "foresee" "foreknow" "expect" "believe"
                 "anticipate")
                (:S AGENT :SENTENTIAL THEME)))

(define-mixin-category allow-64.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("tolerate" "sanction" "okay" "endorse" "authorize" "approve")
                (:S AGENT :POSS_ING THEME) (:S AGENT :AC_ING THEME)
                (:S AGENT :O THEME)))

(define-mixin-category support-15.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-INSTRUMENT SUPPORT-15.3)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB
                ("support" "strengthen" "reinforce" ("hold" :PREP "up") "buoy"
                 "buttress" "boost" "bolster")
                (:S AGENT :O THEME :WITH INSTRUMENT :|\|| INSTRUMENT :THROUGH
                 INSTRUMENT)))

(define-mixin-category help-72.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-NP-S_ING NP-V-NP-S_INF NP-V-S_ING
           HELP-72.1)
  :realization (:VERB ("succor" "support") (:S AGENT :WITH THEME)
                (:S AGENT :IO BENEFICIARY :OC_TO_INF THEME)
                (:S AGENT :O BENEFICIARY :WITH THEME) (:S AGENT :O BENEFICIARY)))

(define-mixin-category contiguous_location-47.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-THEME)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("veil" "enshroud" "wreathe" "underlie" "traverse" "top"
                 "surround" "surmount" "support" "straddle" "span" "skirt"
                 "ring" "rim" "predate" "precede" "overhang" "overcast"
                 "neighbor" "line" "hug" "head" "frame" "forgo" "follow"
                 "flank" "fill" "fence" "envelop" "engulf" "encompass"
                 "enclose" "encircle" "edge" "cover" "cloak" "circle" "cap"
                 "bridge" "bracket" "bound" "border" "blanket" "bestride")
                (:S THEME :O THEME)))

(define-mixin-category spatial_configuration-47.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME-PP WITH-AGENT SPATIAL_CONFIGURATION-47.6)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("tilt" "swing" "straddle" "stand" "sprawl" "slope" "sit"
                 "rest" "recline" "project" "plop" "perch" "open" "nestle"
                 "hang" "fly" "flop" "droop" "dangle" "bend" "balance")
                (:S AGENT :O THEME :LOC LOCATION)))

(define-mixin-category put_spatial-9.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("underlay" "tilt" "swing" "suspend" "straddle" "stand"
                 "sprawl" "slope" "sit" "rest" "recline" "project" "prop"
                 "plop" "perch" "open" "nestle" "lean" "lay" "hang" "fly"
                 "flop" "droop" "dangle" "bend" "balance")
                (:S AGENT :IO THEME :ADV_LOC DESTINATION)
                (:S AGENT :O THEME :LOC DESTINATION)))

(define-mixin-category exist-47.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization (:VERB
                ("persevere" "wait" "vegetate" "tower" "thrive" "stay" "stand"
                 "shelter" "reside" "remain" "prosper" "prevail" "predominate"
                 "persist" "lurk" "loom" "live" "linger" "languish" "hold"
                 "flourish" "extend" "exist" "dwell" "coexist")
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category sight-30.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("sniff" "witness" "view" "spy" "spot" "sight"
                 ("scent" :PREP "out") "scent" "savor" "recognize" "perceive"
                 "overhear" "observe" "note" ("make" :PREP "out") "glimpse"
                 "eye" "experience" "espy" "discover" "descry" "behold")
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category indicate-78-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-TO-BE-NP INDICATE-78-1)
  :realization (:VERB
                ("suggest" "show" "reveal" "prove" "establish" "demonstrate"
                 "confirm" "verify" "disclose" "reaffirm" "affirm")
                (:S INSTRUMENT :TO_BE TOPIC)))

(define-mixin-category conjecture-29.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-TO-BE-NP NP-V-THAT-S WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("swear" "surmise" "spectulate" "repute" "prognosticate" "hold"
                 "doubt" "determine" "deny" "conjecture" "assert" "affirm"
                 "admit")
                (:S AGENT :THAT_COMP THEME) (:S AGENT :IO THEME :O PREDICATE)))

(define-mixin-category want-32.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_INF NP-V-NP-TO-BE-ADJ WANT-32.1-1)
  :realization (:VERB ("desire" "prefer" "like" "need" "want")
                (:S INSTRUMENT :TO_BE THEME) (:S INSTRUMENT :NP_TO_INF THEME)))

(define-mixin-category want-32.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT PHYSICAL-AGENT))
  :realization (:VERB ("love" "fancy" "desire" "crave" "covet")
                (:S INSTRUMENT :O THEME)))

(define-mixin-category consider-29.9-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE NP-V-NP-TO-BE-NP NP-V-THAT-S CONSIDER-29.9)
  :realization (:VERB ("reckon" "rate" "esteem" "deem" "acknowledge")
                (:S AGENT :THAT_COMP THEME) (:S AGENT :TO_BE THEME)
                (:S AGENT :IO THEME :NP_P_ING ATTRIBUTE)))

(define-mixin-category support-15.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB ("bear" "hold") (:S INSTRUMENT :O THEME)))

(define-mixin-category birth-28.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP BIRTH-28.2)
  :realization (:VERB
                ("spawn" "sire" "mother" "have" "get" "generate" "father"
                 "deliver" ("bring" :PREP "forth") "birth" "beget" "bear")
                (:S AGENT :O PATIENT)))

(define-mixin-category judgment-33.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE JUDGMENT-33.1)
  :realization (:VERB
                (("write" :PREP "up") "welcome" "vilify" "upbraid" "toast"
                 "thank" "stigmatize" "snub" "slander" "shame" "scorn" "scold"
                 "satirize" "salute" "ridicule" "reward" "revile" "repudiate"
                 "reprove" "reproach" "recommend" "rebuke" "pardon" "mock"
                 "malign" "lampoon" "lambaste" "insult" "incriminate" "honor"
                 "greet" "glorify" "forgive" "felicitate" "fault" "extol"
                 "excuse" "eulogize" "disparage" "deride" "deprecate"
                 "denounce" "denigrate" "defame" "decry" "damn" "curse"
                 "criticize" "congratulate" "condemn" "compliment" "commend"
                 "commemorate" "cite" "chide" "chastise" "chasten" "censure"
                 "celebrate" "castigate" "calumniate" "bless" "berate"
                 "belittle" "attack" "assail" "approve" "applaud")
                (:S AGENT :O THEME :AS ATTRIBUTE)))

(define-mixin-category comprehend-87.2
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-S_ING NP-V-WHY-S
           NP-V-WHAT-S NP-V-THAT-S WITH-EXPERIENCER WITH-ATTRIBUTE
           WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("misapprehend" "misunderstand" "misinterpret" "misconstrue"
                 "appreciate")
                (:S EXPERIENCER :THAT_COMP STIMULUS)
                (:S EXPERIENCER :WHAT_EXTRACT STIMULUS)
                (:S EXPERIENCER :WH_COMP STIMULUS)
                (:S EXPERIENCER :POSS_ING STIMULUS)
                (:S EXPERIENCER :O STIMULUS :AS ATTRIBUTE)
                (:S EXPERIENCER :O STIMULUS)
                (:S EXPERIENCER :HOW_EXTRACT STIMULUS)))

(define-mixin-category calibratable_cos-45.6.1-1
  :specializes subcategorization-pattern
  :mixins (NP.PATIENT-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-PP.EXTENT-PP.SOURCE-PP.GOAL WITH-EXTENT
           WITH-SOURCE WITH-RESULT CALIBRATABLE_COS-45.6.1)
  :realization (:VERB
                ("swell" "tumble" "swing" "surge" "soar" "slip" "slide"
                 "skyrocket" "seesaw" "rise" "rocket" "retreat" "plunge"
                 "plump" "plummet" "multiply" "mushroom" "jump" "grow"
                 ("go" :PREP "up") ("go" :PREP "down") "gain" "fluctuate"
                 "fall-off" ("fall" :PREP "away") "fall" "explode" "dwindle"
                 "drop" "depreciate" "dive" "dip" "decline" "climb"
                 "appreciate")
                (:S PATIENT :IN ATTRIBUTE :BY EXTENT :FROM SOURCE :TO RESULT)
                (:S PATIENT :IN ATTRIBUTE :O EXTENT :FROM SOURCE :TO RESULT)
                (:S ATTRIBUTE :OF PATIENT :BY EXTENT :FROM SOURCE :TO RESULT)
                (:S ATTRIBUTE :OF PATIENT :O EXTENT :FROM SOURCE :TO RESULT)
                (:S PATIENT :BY EXTENT :FROM SOURCE :TO RESULT)
                (:S PATIENT :O EXTENT :FROM SOURCE :TO RESULT)))

(define-mixin-category admire-31.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP.STIMULUS NP-V-THAT-S NP-V-S_ING
           NP-V-NP-S_ING WITH-STIMULUS WITH-EXPERIENCER WITH-ATTRIBUTE)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("suffer" "believe" "rue" "resent" "pity" "mourn" "loathe"
                 "lament" "execrate" "envy" "dread" "distrust" "deplore"
                 "abhor" "worship" "venerate" "value" "trust" "treasure"
                 "tolerate" "support" "stand" "savor" "revere" "relish"
                 "respect" "prize" "reaffirm" "affirm" "prefer" "mistrust"
                 "miss" "idolize" "grudge" "favor" "fancy" "exalt" "esteem"
                 "detest" "deify" "cherish" "bewail" "bear" "applaud"
                 "appreciate" "adore" "admire")
                (:S EXPERIENCER :POSS_ING STIMULUS)
                (:S EXPERIENCER :BE_SC_ING STIMULUS)
                (:S EXPERIENCER :THAT_COMP STIMULUS)
                (:S EXPERIENCER :O STIMULUS)
                (:S EXPERIENCER :O STIMULUS :FOR ATTRIBUTE)))

(define-mixin-category funnel-9.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION FUNNEL-9.3)
  :realization (:VERB
                ("wring" "wipe" "tuck" "squish" "squash" "spoon" "shovel"
                 "scrape" "rake" "fit" "channel")
                (:S AGENT :O THEME :PLURAL DESTINATION)))

(define-mixin-category adjust-26.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP NP-V-NP-S_ING NP-V-S_ING NP-V-PP WITH-AGENT
           WITH-PATIENT WITH-GOAL WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("assimilate" "readapt" "readjust" "fit" "gear" "adjust"
                 "conform" "accommodate" "adapt")
                (:S AGENT :TO GOAL) (:S AGENT :O PATIENT :TO GOAL)
                (:S AGENT :O PATIENT)))

(define-mixin-category meander-47.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V MEANDER-47.7)
  :realization (:VERB
                ("zigzag" "swerve" "undulate" "twist" "turn" "snake" "slant"
                 "run" "rise" "plunge" "plummit" "meander" "drop" "dip"
                 "descend" "crisscross" "converge" "climb" "bend" "ascend")
                (:S THEME)))

(define-mixin-category addict-96
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.STIMULUS NP-V-NP-S_ING WITH-AGENT WITH-PATIENT
           WITH-STIMULUS)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("slant" "woo" "predispose" "incline" "dispose" "bias"
                 "addict")
                (:S AGENT :O PATIENT :TO STIMULUS)))

(define-mixin-category performance-26.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-NP-PP.BENEFICIARY WITH-AGENT WITH-THEME
           WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("vocalize" "rap" "perform" "model" "intone" "improvise" "heel"
                 "enact" "direct" "chant" "belt")
                (:S AGENT :O THEME :FOR BENEFICIARY) (:S AGENT)
                (:S AGENT :O THEME)))

(define-mixin-category function-105.2.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP PREDICATION FUNCTION-105.2.1)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization (:VERB ("work" "operate" "function" "perform")
                (:S THEME :O PREDICATE)))

(define-mixin-category act-114-1
  :specializes subcategorization-pattern
  :mixins (NP-V ACT-114)
  :realization (:VERB ("perform" "do") (:S AGENT)))

(define-mixin-category engender-27.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S ENGENDER-27.1)
  :realization (:VERB
                ("trigger" ("stir" :PREP "up") "stimulate" "spark" "provoke"
                 "prompt" "instigate" "inspire" "incite" "elicit" "cause"
                 ("call" :PREP "forth") "arouse" "actuate")
                (:S CAUSE :IO THEME :O PREDICATE)))

(define-mixin-category satisfy-55.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("satisfy" "satiate" "sate" "meet" "fulfill" "exceed")
                (:S AGENT :O THEME :WITH INSTRUMENT) (:S INSTRUMENT :O THEME)))

(define-mixin-category murder-42.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::PATIENT PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("slay" "slaughter" "off" "murder" "massacre" "lynch"
                 "liquidate" "immolate" "exterminate" "execute" "euthanize"
                 "eliminate" "dispatch" "butcher" "bushwhack" "assassinate"
                 "annihilate")
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category contribute-13.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V CONTRIBUTE-13.2-1)
  :realization (:VERB
                ("surrender" "submit" "sacrifice" "resubmit" "forfeit" "donate"
                 "contribute" "circularize" "administer")
                (:S AGENT)))

(define-mixin-category acquiesce-95.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF ACQUIESCE-95.1)
  :realization (:VERB ("submit" "consent" "acquiesce")
                (:S AGENT :SC_TO_INF THEME)))

(define-mixin-category future_having-13.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME- NP-V-NP-DATIVE-NP NP-V-NP-PP.GOAL WITH-AGENT
           WITH-THEME WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB
                ("yield" "will" "vote" "reassign" "reallocate" "ration"
                 "promise" "portion-out" "owe" "offer" "leave" "issue"
                 "guarantee" "grant" "extend" "devolve" "concede" "cede"
                 "bequeath" "award" "assign" "apportion" "allow" "allot"
                 "allocate" "advance" "accord")
                (:S AGENT :O THEME :TO GOAL :FOR GOAL)
                (:S AGENT :IO GOAL :O THEME) (:S AGENT :O THEME)
                (:S AGENT :O THEME :TO GOAL)))

(define-mixin-category spatial_configuration-47.6
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-PP-NP PP.LOCATION-V-NP WITH-THEME
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("yaw" "tower" "swag" "stoop" "squat" "suspend" "slump"
                 "slouch" "sag" "roost" "rise" "repose" "protrude" "lounge"
                 "loom" "loll" "lie" "lean" "kneel" "jut" "hunch" "huddle"
                 "hover" "crouch" "bow")
                (:LOC LOCATION :O THEME) (:LOC LOCATION :DEFINITE THEME)
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category modes_of_being_with_motion-47.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP PP.LOCATION-V-NP NP-V-NP.THEME
           WITH-AGENT WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("roil" "writhe" "worm" "wobble" "wiggle" "waver" "wave" "waft"
                 "vibrate" "vacillate" "undulate" "tremble" "totter" "throb"
                 "teeter" "swirl" "sway" "swag" "stir" "shake" "rotate" "rock"
                 "revolve" "recirculate" "quiver" "quake" "pulse" "pulsate"
                 "oscillate" "joggle" "jiggle" "hover" "flutter" "float" "flap"
                 "falter" "eddy" "drift" "dance" "creep" "circulate" "bow"
                 "bob")
                (:S AGENT :O THEME) (:LOC LOCATION :O THEME) (:DEFINITE THEME)
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category curtsey-40.3.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-NP NP-V-NP-PP.RECIPIENT WITH-AGENT
           WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("salute" "salaam" "kneel" "genuflect" "curtsey" "bow" "bob")
                (:S AGENT :O TOPIC :TO RECIPIENT) (:S AGENT :O TOPIC)
                (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT)))

(define-mixin-category assuming_position-50
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION WITH-AGENT HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("straddle" "stoop" ("stand" :PREP "up") "stand"
                 ("squat" :PREP "down") "squat" "sprawl" "slump" "slouch"
                 ("sit" :PREP "down") "sit" "rise" "plop" "perch"
                 ("lie" :PREP "down") "lie" "lean" "kneel" ("hunch" :PREP "up")
                 "hunch" "hang" "flop" "crouch" "bow" "bend")
                (:S AGENT :LOC LOCATION) (:S AGENT)))

(define-mixin-category acquiesce-95.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-PP.THEME WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("yield" "succumb" ("give" :PREP "in") ("give" :PREP "way")
                 "fall" "defer" "capitulate" "bow" "accede")
                (:S AGENT :TO THEME) (:S AGENT :TO AGENT)))

(define-mixin-category terminus-47.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization (:VERB ("terminate" "stop" "start" "lead" "end" "begin")
                (:S THEME :|| LOCATION)))

(define-mixin-category supervision-95.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.AGENT WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("supervise" "superintend" "manage" "lead" "direct" "boss")
                (:S AGENT :O AGENT)))

(define-mixin-category spend_time-104
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-EXTENT WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("waste" "use" "spend" "misspend" "serve" "pass" "lead" "kill")
                (:S AGENT :IO EXTENT :O ATTRIBUTE) (:S AGENT :O EXTENT)))

(define-mixin-category result-27.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP WITH-CAUSE WITH-THEME)
  :binds ((SPARSER::CAUSE PHYSICAL-AGENT))
  :realization (:VERB ("result" ("lead" :PREP "up") "lead" "cause")
                (:S PREDICATE :IN PATIENT :|\|| PATIENT :TO PATIENT)))

(define-mixin-category compel-59.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT NP-V-NP-S_INF WITH-AGENT
           WITH-PATIENT PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("wheedle" "sway" "suborn" "steamroller" "sandbag" "rush"
                 "railroad" "persuade" "palaver" "oblige" "obligate" "motivate"
                 "lead" "influence" "induce" "impel" "hound" "goad" "drive"
                 "dragoon" "commandeer" "convince" "compel" "bribe" "bait"
                 "arm-twist")
                (:S AGENT :IO PATIENT :OC_TO_INF PREDICATE)
                (:S AGENT :O PATIENT :INTO PREDICATE) (:S AGENT :O PATIENT)))

(define-mixin-category captain-29.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CAPTAIN-29.8)
  :realization (:VERB
                ("witness" "valet" "usher" "understudy" "umpire" "tutor"
                 "tailor" "sponsor" "skipper" "shepherd" "referee" "police"
                 "pioneer" "pilot" "partner" "nurse" "mother" "host" "guard"
                 "escort" "emcee" "doctor" "crew" "cox" "coach" "clerk"
                 "chauffeur" "chaperone" "champion" "captain" "caddy" "butler"
                 "bully" "boss" "babysit")
                (:S AGENT :O BENEFICIARY)))

(define-mixin-category conduct-111.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB
                ("throw" "spearhead" "run" "host" "hold" "head" "give"
                 "conduct")
                (:S AGENT :IO THEME :O BENEFICIARY) (:S AGENT :O THEME)))

(define-mixin-category act-114
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB
                (("engage" :PREP "in") "cause" "make" "fulfill" "execute"
                 "conduct" ("carry" :PREP "through") ("carry" :PREP "out")
                 "action")
                (:S AGENT :O PREDICATE)))

(define-mixin-category accompany-51.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::THEME PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("steer" "shepherd" "misdirect" "lead" "guide" "escort"
                 "conduct" "accompany")
                (:S AGENT :O THEME :SPATIAL DESTINATION) (:S AGENT :O THEME)))

(define-mixin-category urge-58.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-THAT-S URGE-58.1-1)
  :realization (:VERB
                ("urge" "prod" "pressure" "press" "lobby" "implore" "entreat"
                 "exhort" "encourage" "ask" "admonish")
                (:S AGENT :IO PATIENT :THAT_COMP TOPIC)))

(define-mixin-category promote-102
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("underscore" "emphasize" "invite" "encourage" "further"
                 "boost" "advance" "promote")
                (:S AGENT :POSS_ING THEME) (:S AGENT :AC_ING THEME)
                (:S AGENT :O THEME)))

(define-mixin-category amuse-31.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-ADV-MIDDLE NP-V-NP-PRO-ARB NP.CAUSE-V-NP
           NP-V-NP-ADJ WITH-EXPERIENCER WITH-STIMULUS WITH-RESULT)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("smite" "roil" "wow" "wound" "worry" "weary" "vex" "upset"
                 "uplift" "unsettle" "unnerve" "try" "trouble" "transport"
                 "transfix" "touch" "torture" "torment" "titillate" "tire"
                 "tickle" "throw" "thrill" "threaten" "terrorize" "terrify"
                 "tempt" "tantalize" "surprise" "stupefy" "stun" "stump"
                 "strike" "stir" "sting" "stimulate" "startle" "stagger"
                 "spook" "spellbind" "soothe" "solace" "sober" "sicken" "shock"
                 "shame" "shake" "scare" "scandalize" "satisfy" "sadden"
                 "ruffle" "rile" "revolt" "revitalize" "repulse" "repel"
                 "relieve" "relax" "rejuvenate" "refresh" "recharge" "reassure"
                 "ravish" "rankle" "rag" "quench" "puzzle" "provoke"
                 "preoccupy" "please" "plague" "placate" "pique" "pester"
                 "perturb" "perplex" "peeve" "pain" "pacify" "overwhelm"
                 "overawe" "outrage" "offend" "occupy" "obsess" "numb"
                 "nonplus" "nettle" "nauseate" "mystify" "muddle" "move"
                 "mortify" "mollify" "molest" "misguide" "miff" "mesmerize"
                 "menace" "madden" "lull" "kill" "jolt" "jollify" "jar" "jade"
                 "irritate" "irk" "invigorate" "intrigue" "intoxicate"
                 "intimidate" "interest" "insult" "inspire" "infuriate"
                 "inflame" "incense" "impress" "impair" "hypnotize" "hurt"
                 "humiliate" "humble" "horrify" "hearten" "haunt" "harm"
                 "harass" "grieve" "gratify" "gladden" "galvanize" "gall"
                 "fuddle" "frustrate" "frighten" "fox" "fluster" "flummox"
                 "floor" "flatter" "flabbergast" "faze" "fatigue" "fascinate"
                 "exhilarate" "exhaust" "excite" "exasperate" "entrance"
                 "entice" "enthuse" "enthrall" "entertain" "enrapture" "enrage"
                 "enliven" "enlighten" "engross" "engage" "enflame" "enervate"
                 "encourage" "enchant" "embolden" "embarrass" "electrify"
                 "elate" "dumbfound" "divert" "disturb" "distress" "distract"
                 "dissatisfy" "disquiet" "displease" "dispirit" "dismay"
                 "disillusion" "dishonour" "dishearten" "disgust" "disgruntle"
                 "disgrace" "discourage" "discompose" "disconcert" "discomfit"
                 "discombobulate" "disarm" "disappoint" "devastate" "depress"
                 "demoralize" "demolish" "delight" "deject" "dazzle" "daze"
                 "daunt" "cut" "crush" "cow" "convince" "content" "console"
                 "confuse" "confound" "concern" "comfort" "cloy" "chill"
                 "cheer" "charm" "chagrin" "captivate" "calm" "bug" "browbeat"
                 "bother" "bore" "boggle" "bewitch" "bewilder" "beguile"
                 "befuddle" "baffle" "awe" "astound" "astonish" "assuage"
                 "arouse" "appease" "appall" "antagonize" "annoy" "anger"
                 "amuse" "amaze" "alienate" "alarm" "agonize" "agitate"
                 "aggrieve" "aggravate" "affront" "afflict" "affect" "abash")
                (:S STIMULUS :IO EXPERIENCER :O RESULT)
                (:S STIMULUS :O EXPERIENCER) (:S STIMULUS)
                (:S EXPERIENCER :M ADVERB)))

(define-mixin-category advise-37.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP.RECIPIENT-THAT-S NP-V-NP-HOW-S_INF
           NP-V-NP-S-QUOTE NP-V-NP-PP.TOPIC WITH-AGENT WITH-TOPIC
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("notify" "encourage" "educate" "brief" "assure" "alert")
                (:S AGENT :O RECIPIENT :OF TOPIC)
                (:S AGENT :IO RECIPIENT :QUOTATION TOPIC)
                (:S AGENT :IO RECIPIENT :WH_INF TOPIC)
                (:S AGENT :IO RECIPIENT :THAT_COMP TOPIC)
                (:S AGENT :O RECIPIENT :AGAINST TOPIC :ABOUT TOPIC :CONCERNING
                 TOPIC :ON TOPIC :REGARDING TOPIC :RESPECTING TOPIC)
                (:S AGENT :O RECIPIENT)))

(define-mixin-category comprehend-87.2-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.STIMULUS NP-V-PP.STIMULUS-S_ING NP-V-PP.STIMULUS-WHAT-S
           NP-V-NP-PP.ATTRIBUTE COMPREHEND-87.2-1-1)
  :realization (:VERB ("understand" "know") (:S EXPERIENCER)
                (:S EXPERIENCER :WH_EXTRACT STIMULUS)
                (:S EXPERIENCER :WH_INF STIMULUS)
                (:S EXPERIENCER :POSS_ING STIMULUS)
                (:S EXPERIENCER :ABOUT STIMULUS :|\|| STIMULUS :OF STIMULUS)))

(define-mixin-category invest-13.5.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP WITH-AGENT WITH-THEME WITH-EXTENT WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("speculate" "buy") (:S AGENT :O GOAL)))

(define-mixin-category obtain-13.5.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("hijack" "arrogate" "subselect" "source" "snatch" "select"
                 "seize" "retrieve" "regain" "recover" "recoup" "receive"
                 "make" "inherit" "grab" "exact" "collect" "commandeer" "cadge"
                 "borrow" "appropriate" "accumulate" "accrue" "accept")
                (:S AGENT :O THEME :FROM SOURCE) (:S AGENT :O THEME)))

(define-mixin-category characterize-29.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-WHAT-S NP-V-WHAT-S_INF CHARACTERIZE-29.2-1)
  :realization (:VERB
                ("recollect" "remember" "visualize" "imagine" "identify"
                 "envisage" "accept" "represent" "describe" "define" "portray")
                (:S AGENT :WHAT_INF THEME) (:S AGENT :WHAT_EXTRACT THEME)
                (:S AGENT :AC_ING THEME)))

(define-mixin-category accept-77.1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-NP NP-V-S_ING NP-V-THAT-S NP-V-WHAT-S WITH-AGENT
           WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("encourage" "understand" "buy" "accept")
                (:S AGENT :WHAT_EXTRACT THEME) (:S AGENT :THAT_COMP THEME)
                (:S AGENT :POSS_ING THEME) (:S AGENT :SENTENTIAL THEME)
                (:S AGENT :HOW_EXTRACT THEME)))

(define-mixin-category vehicle_path-51.4.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-PP.INITIAL_LOCATION
           WITH-AGENT WITH-THEME WITH-PATH WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME MOTOR-VEHICLE)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT MOTOR-VEHICLE)))
  :realization (:VERB ("coast" "sail" "take") (:S AGENT :O PATH :FROM SOURCE)
                (:S AGENT :O PATH :TO DESTINATION) (:S AGENT :O PATH)
                (:S AGENT :O THEME :FROM SOURCE)
                (:S AGENT :O THEME :TO DESTINATION) (:S AGENT :O THEME)))

(define-mixin-category steal-10.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.BENEFICIARY
           NP-V-NP-PP.SOURCE-PP.BENEFICIARY WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::SOURCE (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("wrest" "thieve" "take" "sequester" ("snatch" :PREP "away")
                 "seize" "rustle" "rob" "rescue" "repossess" "redeem" "recoup"
                 "reclaim" "recapture" "purloin" "plunder" "plagiarize" "pinch"
                 "pickpocket" "nobble" "misappropriate" "milk" "lift"
                 "liberate" ("knock" :PREP "off") "kidnap" "highjack" "filch"
                 "extort" "embezzle" "emancipate" "cull" "confiscate"
                 "commandeer" "carjack" "cabbage" "bleed" "annex" "abduct")
                (:S AGENT :O THEME :SRC SOURCE :FOR BENEFICIARY)
                (:S AGENT :O THEME :FOR BENEFICIARY)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category scribble-25.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("underline" "underscore" "trace" ("take" :PREP "down") "take"
                 "spell" "misspell" ("jot" :PREP "down") "jot" "forge" "copy")
                (:S AGENT :O THEME :ON DESTINATION :|\|| DESTINATION :IN
                 DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category require-103
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-FOR-NP-S_INF NP-V-THAT-S PREDICATION WITH-THEME)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization (:VERB ("take") (:S THEME :THAT_COMP PREDICATE)
                (:S THEME :FOR_COMP PREDICATE) (:S THEME :O PREDICATE)))

(define-mixin-category render-29.90
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJP NP-V-ADJP-NP WITH-CAUSE WITH-PATIENT WITH-RESULT)
  :realization (:VERB ("leave" "take" "render" "drive")
                (:S CAUSE :IO RESULT :O PATIENT)
                (:S CAUSE :IO PATIENT :O RESULT)))

(define-mixin-category remove-10.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR NIL COMPANY)))
  :realization (:VERB
                ("prise" "extinguish" "sever" "remove" "evict" "dismiss"
                 "discharge" "oust" "withdraw" "wrench" "winkle" "uproot"
                 ("take" :PREP "off") ("take" :PREP "out")
                 ("take" :PREP "away") "take" "subtract" "strip" "shoo"
                 "separate" "roust" "retract" "render" "ream" "reap" "pull"
                 "pry" "partition" "ostracize" "omit" "lose" "lop" "kill"
                 "extrude" "extract" "extirpate" "expel" "excommunicate"
                 "excise" "eradicate" "eliminate" "eject" "draw" "disengage"
                 "dislodge" "disgorge" "depose" "delete" "deduct" "deburr"
                 "cut-off" "cull" "abstract" "abolish")
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category get-13.5.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.BENEFICIARY
           NP-V-NP.BENEFICIARY-NP NP-V-NP-PP.ASSET NP.ASSET-V-NP
           NP-V-NP-PP.SOURCE-NP.ASSET WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-BENEFICIARY WITH-EXTENT)
  :binds ((SPARSER::EXTENT (:AND/OR LOCATION REGION))
          (SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("win" "take" "reserve" "rent" "reach" "pull" "procure" "pluck"
                 "pick" "phone" "order" "lease" "hire" "gather" "find" "choose"
                 "charter" "catch" "call" "buy" "book" "attain")
                (:S AGENT :O THEME :FROM SOURCE :AT EXTENT :FOR EXTENT)
                (:S EXTENT :O THEME) (:S AGENT :O THEME :FOR EXTENT)
                (:S AGENT :IO BENEFICIARY :O THEME)
                (:S AGENT :O THEME :FOR BENEFICIARY)
                (:S AGENT :O THEME :FROM SOURCE) (:S AGENT :O THEME)))

(define-mixin-category fit-54.3
  :specializes subcategorization-pattern
  :mixins (NP.LOCATION-V-NP NP-V-NP-PP.LOCATION WITH-AGENT WITH-PATH
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("take" "store" "sleep" "serve" "seat" "reseat" "house" "hold"
                 "hibernate" "feed" "fit" "contain" "carry")
                (:S AGENT :O PATH :IN LOCATION) (:S LOCATION :O PATH)))

(define-mixin-category cost-54.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.VALUE NP-V-NP-NP WITH-THEME WITH-PATH WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("take" "net" "last" "cost" "carry")
                (:S THEME :IO BENEFICIARY :O PATH) (:S THEME :O PATH)))

(define-mixin-category convert-26.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-PP.GOAL WITH-PATIENT WITH-SOURCE WITH-RESULT)
  :realization (:VERB
                ("turn" "take" ("settle" :PREP "down") "revert" "return"
                 "resort" ("go" :PREP "back") ("get" :PREP "down")
                 ("get" :PREP "around") "get" "fall" ("come" :PREP "around")
                 "advert")
                (:S PATIENT :TO RESULT)))

(define-mixin-category characterize-29.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING NP-V-NP-TO-BE-ADJ NP-V-NP-PP.ATTRIBUTE WITH-AGENT
           WITH-THEME WITH-ATTRIBUTE)
  :binds ((SPARSER::THEME (:OR PHYSICAL COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("stamp" "pidgeonhole" "subselect" "select" "classify" "class"
                 "adopt" "perceive" "take" "rank" "treat" "regard" "hail"
                 "praise" "certify" "diagnose" "cast" "bill" "typecast"
                 "stereotype" "specify" "redraw" "recast" "paint" "pigeonhole"
                 "picture" "peg" "moot" "interpret" "fancy" "envision" "detail"
                 "depict" "count")
                (:S AGENT :O THEME :AS ATTRIBUTE)
                (:S AGENT :IO THEME :SMALL_CLAUSE ATTRIBUTE)
                (:S AGENT :IO THEME :OC_ING ATTRIBUTE)))

(define-mixin-category bring-11.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-PP.DESTINATION-NP
           NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("take") (:S INSTRUMENT :IO THEME :ADV_LOC DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :AGAINST DESTINATION :BEFORE DESTINATION :INTO
                 DESTINATION :ON DESTINATION :TO DESTINATION :ONTO DESTINATION
                 :O THEME)
                (:S AGENT :O THEME :AGAINST DESTINATION :BEFORE DESTINATION
                 :INTO DESTINATION :ON DESTINATION :TO DESTINATION :ONTO
                 DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category adopt-93
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("take" ("take" :PREP "on") ("take" :PREP "over") "follow"
                 "adopt" "assume" "abide-by")
                (:S AGENT :O THEME)))

(define-mixin-category devour-39.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PATHOGEN)
          (SPARSER::AGENT (:OR (PHYSICAL-AGENT SOCIAL-AGENT))))
  :realization (:VERB
                ("take" "swill" "ingest" "imbibe" "have" "down" "devour"
                 "consume")
                (:S AGENT :O PATIENT)))

(define-mixin-category learn-14-2
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S NP-V-WHAT-S NP-V-PP.SOURCE-HOW-S NP-V-PP.SOURCE-WH-S_INF
           LEARN-14)
  :realization (:VERB ("memorize" "glean" "assimilate" "absorb")
                (:S AGENT :FROM SOURCE :WH_INF TOPIC)
                (:S AGENT :FROM SOURCE :WH_EXTRACT TOPIC)
                (:S AGENT :WH_COMP TOPIC) (:S AGENT :THAT_COMP TOPIC)))

(define-mixin-category absorb-39.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE WITH-GOAL WITH-THEME WITH-SOURCE)
  :realization (:VERB ("take" "ingest" "absorb")
                (:S GOAL :O THEME :FROM SOURCE) (:S GOAL :O THEME)))
