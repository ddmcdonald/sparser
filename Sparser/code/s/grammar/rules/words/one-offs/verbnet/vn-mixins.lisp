;; Written 16:40:18 7/26/2019

(in-package :sparser)


((DEFINE-MIXIN-CATEGORY ABSORB-39.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-GOAL CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE)
  :BINDS ((#<variable GOAL>) (#<variable THEME>) (#<variable SOURCE>))
  :REALIZATION
  (((:S "Goal") (:VERB) (:O "Theme") (:PREP "from") (:IO "Source"))
   ((:S "Goal") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ACCEPT-77.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ACCOMPANY-51.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-DESTINATION) :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "spatial")
    (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ACQUIESCE-95.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-THEME)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY ACQUIESCE-95.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ACT-114 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::PREDICATION) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Predicate")))))
((DEFINE-MIXIN-CATEGORY ACT-114-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY ACT-114-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Predicate"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Predicate")))))
((DEFINE-MIXIN-CATEGORY ADDICT-96 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-STIMULUS)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable STIMULUS>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "to") (:IO "Stimulus"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to") (:IO "Stimulus")))))
((DEFINE-MIXIN-CATEGORY ADJUST-26.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-GOAL
   CATEGORY::WITH-SOURCE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT>) (#<variable GOAL>)
   (#<variable SOURCE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY ADMIRE-31.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-STIMULUS CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable STIMULUS>) (#<variable EXPERIENCER>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus") (:PREP "for") (:IO "Attribute"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY ADMIRE-31.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY ADMIT-64.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>) (#<variable CAUSE>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Theme") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY ADMIT-64.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY ADOPT-93 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ADVISE-37.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC CATEGORY::WITH-RECIPIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable TOPIC>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:PREP "of") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient")
    (:PREP "against about concerning on regarding respecting") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY ADVISE-37.9-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB)
    (:PREP "against about concerning on regarding respecting") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY ALLOW-64.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-BENEFICIARY CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable BENEFICIARY>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY ALLOW-64.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT>) (#<variable CO-PATIENT>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:ADV))
   ((:S "Patient") (:VERB) (:ADV) (:PREP "with") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT) :BINDS
  ((#<variable PATIENT>) (#<variable CO-PATIENT>)) :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "with") (:IO "Co-Patient"))
   ((:S "Agent") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "into to with")
    (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT CATEGORY::WITH-AGENT)
  :BINDS
  ((#<variable PATIENT>) (#<variable CO-PATIENT> NIL NIL)
   (#<variable AGENT> NIL NIL))
  :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "with") (:IO "Co-Patient"))
   ((:S "Agent") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-3 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-3-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "to") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-3-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT)
  :BINDS ((#<variable AGENT>) (#<variable PATIENT>) (#<variable CO-PATIENT>))
  :REALIZATION (((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-3-2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable PATIENT>) (#<variable CO-PATIENT>))
  :REALIZATION (((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY AMUSE-31.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable EXPERIENCER>) (#<variable STIMULUS>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Stimulus") (:VERB) (:O "Experiencer") (:IO "Result"))
   ((:S "Stimulus") (:LEX "'s") (:VERB) (:IO "Experiencer"))
   ((:S "Stimulus") (:VERB)) ((:S "Experiencer") (:VERB) (:ADV))
   ((:S "Stimulus") (:VERB) (:O "Experiencer")))))
((DEFINE-MIXIN-CATEGORY ANIMAL_SOUNDS-38 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RECIPIENT
   CATEGORY::WITH-CAUSE)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable RECIPIENT>)
   (#<variable CAUSE>))
  :REALIZATION
  (((:S "Location") (:VERB) (:PREP "with") (:IO "Agent"))
   ((:S "Agent") (:VERB) (:O "Location")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:PREP "+" "dest_dir") (:IO "Recipient"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY APPEAL-31.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-STIMULUS CATEGORY::WITH-EXPERIENCER) :BINDS
  ((#<variable STIMULUS>) (#<variable EXPERIENCER>)) :REALIZATION
  (((:S "Stimulus") (:VERB) (:PREP "to") (:IO "Experiencer")))))
((DEFINE-MIXIN-CATEGORY APPEAL-31.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Stimulus") (:VERB) (:PREP "at") (:IO "Experiencer")))))
((DEFINE-MIXIN-CATEGORY APPEAL-31.4-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Stimulus") (:VERB) (:PREP "on") (:IO "Experiencer")))))
((DEFINE-MIXIN-CATEGORY APPEAL-31.4-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Stimulus") (:VERB)))))
((DEFINE-MIXIN-CATEGORY APPEAR-48.1.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable THEME>) (#<variable CAUSE>)) :REALIZATION
  (((:S "Theme") (:VERB) (:O "Location"))
   ((:S "+" "loc") (:NP "Location") (:VERB) (:IO "Theme"))
   ((:S "there") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY APPOINT-29.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:LEX "to") (:LEX "be") (:NP "Result"))
   ((:S "Agent") (:VERB) (:O "Theme") (:LEX "as") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY ASSESSMENT-34.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE)
  :BINDS ((#<variable AGENT>) (#<variable THEME>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:LEX "'s") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ASSUMING_POSITION-50 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-CAUSE)
  :BINDS ((#<variable AGENT>) (#<variable CAUSE> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY ATTACK-60.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable PATIENT>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY ATTACK-60.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable PATIENT>))
  :REALIZATION (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY ATTEND-107.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-GOAL) :BINDS
  ((#<variable THEME>) (#<variable GOAL>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY ATTEND-107.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Theme") (:VERB) (:O "Goal")))))
((DEFINE-MIXIN-CATEGORY ATTEND-107.4-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:PREP) (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY AVOID-52 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT>) (#<variable CAUSE>) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Location")))))
((DEFINE-MIXIN-CATEGORY BANISH-10.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY BASE-97.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "on") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "on") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "on") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "on") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY BATTLE-36.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-THEME)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "about | over ") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "about | over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "about | over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "about | over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "about | over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "about | over") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about | over")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about | over")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about | over")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about | over")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about | over")
    (:NP "Theme"))
   ((:S "Agent") (:VERB))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY BATTLE-36.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Co-Agent") (:PREP "about | over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Co-Agent") (:PREP "about | over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Co-Agent") (:PREP "about | over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Co-Agent") (:PREP "about | over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Co-Agent") (:PREP "about | over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY BECOME-109.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT) :BINDS
  ((#<variable PATIENT>) (#<variable RESULT-ROLE>)) :REALIZATION
  (((:S "Patient") (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY BECOME-109.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "in | into") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY BECOME-109.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Patient") (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY BEG-58.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Result")) ((:S "Agent") (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY BEG-58.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "for") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY BEG-58.2-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "for") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY BEGIN-55.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY BEGIN-55.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY BEGIN-55.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Instrument") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "with") (:IO "Instrument"))
   ((:S "Theme") (:VERB) (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY BEING_DRESSED-41.3.3 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT>) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY BEND-45.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT
   CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>) (#<variable INSTRUMENT>)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state") (:PREP "with") (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Instrument") (:VERB) (:O "Patient")) ((:S "Patient") (:VERB) (:ADV))
   ((:S "Patient") (:VERB))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BENEFIT-72.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE CATEGORY::WITH-BENEFICIARY) :BINDS
  ((#<variable CAUSE>) (#<variable BENEFICIARY>)) :REALIZATION
  (((:S "Beneficiary") (:VERB) (:PREP "from by") (:IO "Causer"))
   ((:S "Beneficiary") (:VERB)) ((:S "Causer") (:VERB) (:O "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY BERRY-13.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT) :BINDS ((#<variable AGENT>)) :REALIZATION
  (((:S "Agent") (:VERB)) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY BILL-54.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-EXTENT CATEGORY::WITH-RECIPIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable EXTENT>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:IO "Asset"))
   ((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY BIRTH-28.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY BIRTH-28.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BODY_INTERNAL_MOTION-49.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY BODY_INTERNAL_STATES-40.6 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER>) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:PREP "from at") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB)))))
((DEFINE-MIXIN-CATEGORY BODY_MOTION-49.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-GOAL
   CATEGORY::WITH-PATH)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>) (#<variable GOAL>) (#<variable PATH>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Path") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Path")))))
((DEFINE-MIXIN-CATEGORY BODY_MOTION-49.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Path") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "+" "dir") (:IO "Path"))
   ((:S "Agent") (:VERB) (:O "Goal"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY BODY_MOTION-49.2-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY BRAID-41.2.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BREAK-45.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT
   CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>) (#<variable INSTRUMENT>)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "to into") (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state") (:PREP "with") (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result") (:PREP "with")
    (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Instrument") (:VERB) (:O "Patient")) ((:S "Patient") (:VERB) (:ADV))
   ((:S "Patient") (:VERB))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BREAK_DOWN-45.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT>)) :REALIZATION
  (((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY BREATHE-40.1.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-DESTINATION) :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "on onto") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:PREP "on onto") (:IO "Destination"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY BREATHE-40.1.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY BRING-11.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL NIL)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION
  (((:S "Instrument") (:VERB) (:O "Theme") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location") (:PREP "to") (:NP "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:PREP "against before into on to onto")
    (:IO "Destination") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "against before into on to onto")
    (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY BRING-11.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-DESTINATION) :BINDS ((#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:LEX "together"))
   ((:S "Agent") (:VERB) (:O "Destination") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY BUILD-26.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-MATERIAL CATEGORY::WITH-PRODUCT
   CATEGORY::WITH-BENEFICIARY CATEGORY::WITH-EXTENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable MATERIAL>) (#<variable PRODUCT>)
   (#<variable BENEFICIARY> NIL NIL) (#<variable EXTENT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Product") (:PREP "from out_of") (:IO "Material")
    (:PREP "for") (:NP "Asset"))
   ((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Product") (:PREP "for")
    (:NP "Asset"))
   ((:S "Material") (:VERB) (:O "Product"))
   ((:S "Agent") (:VERB) (:O "Material") (:PREP "into") (:IO "Product")
    (:PREP "for") (:NP "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Material") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Product") (:PREP "from out_of") (:IO "Material")
    (:PREP "for") (:NP "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Product")
    (:PREP "from out_of") (:NP "Material"))
   ((:S "Agent") (:VERB) (:O "Product") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Material") (:PREP "into") (:IO "Product"))
   ((:S "Agent") (:VERB) (:O "Product") (:PREP "from out_of") (:IO "Material"))
   ((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Product")))))
((DEFINE-MIXIN-CATEGORY BUILD-26.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Asset") (:VERB) (:O "Beneficiary") (:IO "Product")
    (:PREP "from out_of") (:NP "Material"))
   ((:S "Asset") (:VERB) (:O "Product") (:PREP "from out_of") (:IO "Material"))
   ((:S "Asset") (:VERB) (:O "Beneficiary") (:IO "Product"))
   ((:S "Asset") (:VERB) (:O "Product"))
   ((:S "Agent") (:VERB) (:O "Product") (:PREP "for") (:IO "Asset")))))
((DEFINE-MIXIN-CATEGORY BULGE-47.5.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME) :BINDS
  ((#<variable CAUSE>) (#<variable THEME>)) :REALIZATION
  (((:S "Location") (:VERB))
   ((:S "Location") (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY BULLY-59.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BUMP-18.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME) :BINDS
  ((#<variable CAUSE>) (#<variable THEME>)) :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "against into onto") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY BUMP-18.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:LEX "together")))))
((DEFINE-MIXIN-CATEGORY BUTTER-9.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Destination") (:PREP "with") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Destination")))))
((DEFINE-MIXIN-CATEGORY CALIBRATABLE_COS-45.6.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-PATIENT CATEGORY::WITH-ATTRIBUTE) :BINDS
  ((#<variable PATIENT>) (#<variable ATTRIBUTE>)) :REALIZATION
  (((:S "Patient") (:VERB))
   ((:S "Patient") (:VERB) (:PREP "in") (:IO "Attribute"))
   ((:S "Attribute") (:LEX "of") (:O "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CALIBRATABLE_COS-45.6.1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-EXTENT CATEGORY::WITH-SOURCE CATEGORY::WITH-RESULT) :BINDS
  ((#<variable EXTENT>) (#<variable SOURCE>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "in") (:IO "Attribute") (:PREP "?by")
    (:NP "?Extent") (:PREP "?from") (:NP "?Initial_State") (:PREP "?to")
    (:NP "?Result"))
   ((:S "Patient") (:VERB) (:PREP "in") (:IO "Attribute") (:IO "?Extent")
    (:PREP "?from") (:NP "?Initial_State") (:PREP "?to") (:NP "?Result"))
   ((:S "Attribute") (:PREP "of") (:O "Patient") (:VERB) (:PREP "by")
    (:NP "Extent") (:PREP "?from") (:NP "?Initial_State") (:PREP "?to")
    (:NP "?Result"))
   ((:S "Attribute") (:PREP "of") (:O "Patient") (:VERB) (:IO "Extent")
    (:PREP "?from") (:NP "?Initial_State") (:PREP "?to") (:NP "?Result"))
   ((:S "Patient") (:VERB) (:PREP "by") (:IO "Extent") (:PREP "?from")
    (:NP "?Initial_State") (:PREP "?to") (:NP "?Result"))
   ((:S "Patient") (:VERB) (:O "Extent") (:PREP "?from") (:IO "?Initial_State")
    (:PREP "?to") (:NP "?Result")))))
((DEFINE-MIXIN-CATEGORY CALVE-28.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CAPTAIN-29.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-BENEFICIARY) :BINDS
  ((#<variable AGENT>) (#<variable BENEFICIARY>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "for") (:IO "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY CAPTAIN-29.8-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY CAPTAIN-29.8-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Beneficiary") (:VERB) (:O "Agent")))))
((DEFINE-MIXIN-CATEGORY CARE-88.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER> NIL NIL) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus")) ((:S "Experiencer") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CARE-88.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Experiencer") (:VERB) (:PREP "about") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:PREP "about") (:IO "Stimulus")))))
((DEFINE-MIXIN-CATEGORY CARING-75.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY CARING-75.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CARING-75.2-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CARING-75.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CARRY-11.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to towards") (:IO "Destination")
    (:PREP "+" "src") (:NP "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location") (:PREP "to towards") (:NP "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to towards") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CARRY-11.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to towards") (:IO "Destination")
    (:PREP "+" "src") (:NP "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location") (:PREP "to towards") (:NP "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to towards") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CARRY-11.4-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-DESTINATION) :BINDS ((#<variable DESTINATION>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Destination") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CARVE-21.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT)
  :BINDS ((#<variable AGENT>) (#<variable PATIENT>) (#<variable INSTRUMENT>))
  :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY CARVE-21.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Instrument") (:VERB) (:ADV))
   ((:S "Instrument") (:VERB) (:O "Patient")) ((:S "Patient") (:VERB) (:ADV))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CARVE-21.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Instrument") (:VERB) (:ADV))
   ((:S "Instrument") (:VERB) (:O "Patient")) ((:S "Patient") (:VERB) (:ADV))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CAUSED_CALIBRATABLE_COS-45.6.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-CAUSE CATEGORY::WITH-PATIENT CATEGORY::WITH-EXTENT
   CATEGORY::WITH-SOURCE CATEGORY::WITH-GOAL CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable CAUSE>) (#<variable PATIENT>) (#<variable EXTENT>)
   (#<variable SOURCE>) (#<variable GOAL>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Causer") (:VERB) (:O "Patient") (:IO "?Extent") (:IO "?Source")
    (:NP "?Goal"))
   ((:S "Causer") (:VERB) (:O "Patient") (:IO "?Extent") (:IO "?Source")
    (:NP "?Goal")))))
((DEFINE-MIXIN-CATEGORY CAUSED_CALIBRATABLE_COS-45.6.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-ATTRIBUTE) :BINDS
  ((#<variable ATTRIBUTE>)) :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "in") (:IO "Attribute") (:PREP "?by")
    (:NP "?Extent") (:PREP "?from") (:NP "?Source") (:PREP "?to")
    (:NP "?Goal"))
   ((:S "Patient") (:VERB) (:PREP "in") (:IO "Attribute") (:IO "?Extent")
    (:PREP "?from") (:NP "?Source") (:PREP "?to") (:NP "?Goal"))
   ((:S "Attribute") (:PREP "of") (:O "Patient") (:VERB) (:PREP "by")
    (:NP "Extent") (:PREP "?from") (:NP "?Source") (:PREP "?to") (:NP "?Goal"))
   ((:S "Attribute") (:PREP "of") (:O "Patient") (:VERB) (:IO "?Extent")
    (:PREP "?from") (:NP "?Source") (:PREP "?to") (:NP "?Goal"))
   ((:S "Patient") (:VERB) (:PREP "?by") (:IO "?Extent") (:PREP "?from")
    (:NP "?Source") (:PREP "?to") (:NP "?Goal"))
   ((:S "Patient") (:VERB) (:O "Extent") (:PREP "?from") (:IO "?Source")
    (:PREP "?to") (:NP "?Goal")))))
((DEFINE-MIXIN-CATEGORY CHANGE_BODILY_STATE-40.8.4 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER>) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:PREP "from at") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CHARACTERIZE-29.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME> NIL NIL)
   (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "as") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:LEX "to be") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:LEX "as") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY CHARACTERIZE-29.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CHARACTERIZE-29.2-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CHARACTERIZE-29.2-1-2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CHASE-51.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::DIRECTION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>)
   (#<variable NAME> :PRIMITIVE SPARSER::WORD))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "after") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "spatial") (:IO "Trajectory"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CHEAT-10.6.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-GOAL)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable SOURCE> NIL NIL NIL) (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Source") (:PREP "out_of") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY CHEAT-10.6.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Source") (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CHEAT-10.6.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY CHEW-39.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY CHEW-39.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "on") (:IO "Patient"))
   ((:S "Agent") (:VERB) (:PREP "at") (:IO "Patient")) ((:S "Agent") (:VERB))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CHEW-39.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "from") (:IO "Patient")) ((:S "Agent") (:VERB))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CHIT_CHAT-37.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL) (#<variable TOPIC>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic") (:PREP "with")
    (:NP "Co-Agent"))
   ((:S "Agent") (:VERB))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CHIT_CHAT-37.6-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic") (:PREP "with") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY CLASSIFY-29.10 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-GOAL)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "in") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "as") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CLEAR-10.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Source") (:PREP "of") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY CLEAR-10.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "+" "src") (:IO "Source"))
   ((:S "Source") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CLING-22.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-THEME) :BINDS
  ((#<variable THEME>) (#<variable THEME>)) :REALIZATION
  (((:S "Theme") (:VERB) (:LEX "together"))
   ((:S "Theme") (:VERB) (:PREP "to with") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY COGNIZE-85 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER>) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:PREP "about") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB) (:PREP "of") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY COIL-9.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME> NIL NIL) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Theme") (:VERB) (:ADV) (:PREP "+" "path") (:IO "Destination"))
   ((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "path") (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY COIL-9.6-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Theme") (:VERB) (:ADV)))))
((DEFINE-MIXIN-CATEGORY COLORING-24 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT)
  :BINDS ((#<variable AGENT>) (#<variable PATIENT>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY COMPEL-59.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::PREDICATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY COMPLAIN-37.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC CATEGORY::WITH-RECIPIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable TOPIC>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic") (:PREP "to")
    (:NP "Recipient"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY COMPLETE-55.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY COMPLETE-55.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY COMPREHEND-87.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-ATTRIBUTE CATEGORY::WITH-STIMULUS)
  :BINDS
  ((#<variable EXPERIENCER> NIL NIL) (#<variable ATTRIBUTE>)
   (#<variable STIMULUS>))
  :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus") (:PREP "as") (:IO "Attribute"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY COMPREHEND-87.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY COMPREHEND-87.2-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Experiencer") (:VERB)))))
((DEFINE-MIXIN-CATEGORY COMPREHEND-87.2-1-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus") (:PREP "about"))
   ((:S "Experiencer") (:VERB) (:PREP "about | of") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB) (:PREP "about | of") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB) (:PREP "about | of") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB) (:PREP "about | of") (:IO "Stimulus")))))
((DEFINE-MIXIN-CATEGORY COMPRISE-107.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE) :BINDS
  ((#<variable THEME>) (#<variable ATTRIBUTE>)) :REALIZATION
  (((:S "Attribute") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY COMPRISE-107.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Attribute")))))
((DEFINE-MIXIN-CATEGORY CONCEALMENT-16 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-BENEFICIARY CATEGORY::WITH-PATIENT
   CATEGORY::WITH-CAUSE)
  :BINDS
  ((#<variable AGENT>) (#<variable BENEFICIARY>) (#<variable PATIENT>)
   (#<variable CAUSE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "+" "loc") (:IO "Location"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "from") (:IO "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY CONCEALMENT-16-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONDUCT-111.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-BENEFICIARY) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>) (#<variable BENEFICIARY>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONFESS-37.10 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-RECIPIENT CATEGORY::WITH-TOPIC)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable RECIPIENT> NIL NIL)
   (#<variable TOPIC>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic") (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY CONFINE-92 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-DESTINATION) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable DESTINATION>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONFINE-92-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY CONFRONT-98 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONJECTURE-29.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::PREDICATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:LEX "to") (:LEX "be")
    (:NP "Predicate")))))
((DEFINE-MIXIN-CATEGORY CONJECTURE-29.5-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONJECTURE-29.5-2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "like | as if | as though") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9-1-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY CONSPIRE-71 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-THEME
   CATEGORY::WITH-BENEFICIARY)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable BENEFICIARY>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:PREP "against") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONSUME-66 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-EXTENT CATEGORY::WITH-GOAL)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable EXTENT>) (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Asset") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Asset")))))
((DEFINE-MIXIN-CATEGORY CONSUME-66-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Asset") (:PREP "on") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Asset") (:PREP "on") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY CONTAIN-15.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable INSTRUMENT> . #<ref-category OBJECT>) (#<variable THEME>))
  :REALIZATION (((:S "Pivot") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONTIGUOUS_LOCATION-47.8 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-THEME)
  :BINDS ((#<variable THEME>) (#<variable THEME>)) :REALIZATION
  (((:S "Theme") (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY CONTIGUOUS_LOCATION-47.8-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:LEX "and") (:O "Co-Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONTIGUOUS_LOCATION-47.8-2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONTINUE-55.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::TEMPORALLY-LOCALIZED)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable CERTAINTY>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "until") (:IO "Time"))
   ((:S "Theme") (:VERB) (:PREP "until") (:IO "Time")) ((:S "Agent") (:VERB))
   ((:S "Theme") (:VERB)) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RECIPIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "among") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2-2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2-2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY CONVERT-26.6.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT CATEGORY::WITH-SOURCE)
  :BINDS ((#<variable PATIENT>) (#<variable RESULT-ROLE>) (#<variable SOURCE>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "to") (:IO "Result"))
   ((:S "Patient") (:VERB) (:PREP "to") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY CONVERT-26.6.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "from") (:IO "Initial_State") (:PREP "to")
    (:NP "Result")))))
((DEFINE-MIXIN-CATEGORY CONVERT-26.6.2-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-AGENT) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "to") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient")) ((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY COOKING-45.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT
   CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>) (#<variable INSTRUMENT>)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "to into") (:IO "Result" "+" "state")
    (:PREP "in on with") (:NP "Instrument"))
   ((:S "Patient") (:VERB) (:PREP "to into") (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state") (:PREP "in on with") (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Instrument") (:VERB) (:O "Patient")) ((:S "Patient") (:VERB) (:ADV))
   ((:S "Patient") (:VERB))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "in on with")
    (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY COOPERATE-73.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-THEME)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL) (#<variable THEME>))
  :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY COOPERATE-73.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "in")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "on")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY COOPERATE-73.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY COOPERATE-73.1-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "at")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "at") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "on")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY COPE-83 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY COPE-83-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY COPE-83-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CORRELATE-86.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "with") (:IO "Co-Theme"))
   ((:S "Theme") (:VERB) (:PREP "with") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY CORRESPOND-36.1.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL) (#<variable TOPIC>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CORRESPOND-36.1.1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY CORRESPOND-36.1.1-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY COST-54.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-PATH CATEGORY::WITH-BENEFICIARY)
  :BINDS
  ((#<variable THEME>) (#<variable PATH>) (#<variable BENEFICIARY> NIL NIL))
  :REALIZATION
  (((:S "Theme") (:VERB) (:O "Beneficiary") (:IO "Value"))
   ((:S "Theme") (:VERB) (:O "Value")))))
((DEFINE-MIXIN-CATEGORY CRANE-40.3.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-TOPIC
   CATEGORY::WITH-RECIPIENT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>) (#<variable TOPIC>)
   (#<variable RECIPIENT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "+" "dest_dir")
    (:IO "Recipient") (:PREP "in") (:NP "Topic"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "+" "dest_dir")
    (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CREATE-26.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-RESULT CATEGORY::WITH-MATERIAL
   CATEGORY::WITH-BENEFICIARY CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable RESULT-ROLE>)
   (#<variable MATERIAL> . #<ref-category PHYSICAL>) (#<variable BENEFICIARY>)
   (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Result") (:LEX "as") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Result") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Result") (:PREP "from out_of") (:IO "Material"))
   ((:S "Agent") (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY CREATE-26.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CREATE-26.4-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY CURTSEY-40.3.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-RECIPIENT CATEGORY::WITH-TOPIC)
  :BINDS ((#<variable AGENT>) (#<variable RECIPIENT>) (#<variable TOPIC>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic") (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "+" "dest_dir") (:IO "Recipient"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CUT-21.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT
   CATEGORY::WITH-SOURCE CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>) (#<variable INSTRUMENT>)
   (#<variable SOURCE>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "from") (:IO "Source")
    (:PREP "with") (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "from") (:IO "Source"))
   ((:S "Instrument") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Instrument") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state") (:PREP "with") (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result") (:PREP "with")
    (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Instrument") (:VERB) (:ADV))
   ((:S "Instrument") (:VERB) (:O "Patient")) ((:S "Patient") (:VERB) (:ADV))
   ((:S "Agent") (:VERB) (:LEX "at") (:IO "Patient") (:PREP "with")
    (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:PREP "through|into") (:IO "Patient"))
   ((:S "Agent") (:VERB) (:LEX "at") (:IO "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CUT-21.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT> NIL NIL))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY DEBONE-10.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RESULT)
  :BINDS ((#<variable AGENT>) (#<variable THEME>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "as") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1-1-2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1-1-3 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DEDICATE-79 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-GOAL)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY DEDUCE-97.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Theme") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DEFEND-72.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-BENEFICIARY CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable BENEFICIARY> NIL NIL)
   (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Beneficiary") (:PREP "against") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY DEPRIVE-10.6.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-GOAL)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable SOURCE> NIL NIL NIL) (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Source") (:PREP "of") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY DESTROY-44 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT)
  :BINDS ((#<variable AGENT>) (#<variable PATIENT>) (#<variable INSTRUMENT>))
  :REALIZATION
  (((:S "Instrument") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY DEVOUR-39.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable PATIENT>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY DIE-42.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-PATIENT CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable PATIENT>) (#<variable CAUSE>)) :REALIZATION
  (((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY DIE-42.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "of | from") (:IO "Causer")))))
((DEFINE-MIXIN-CATEGORY DIFFER-23.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-THEME) :BINDS
  ((#<variable THEME>) (#<variable THEME>)) :REALIZATION
  (((:S "Theme") (:VERB))
   ((:S "Theme") (:VERB) (:PREP "from with") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY DINE-39.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "on") (:IO "Patient")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY DISAPPEARANCE-48.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-PATIENT CATEGORY::WITH-SOURCE) :BINDS
  ((#<variable PATIENT>) (#<variable SOURCE>)) :REALIZATION
  (((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY DISAPPEARANCE-48.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "from") (:IO "Initial_Location")))))
((DEFINE-MIXIN-CATEGORY DISASSEMBLE-23.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT>) (#<variable CO-PATIENT>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:ADV))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "from") (:IO "Co-Patient"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY DISCOVER-84 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DISCOVER-84-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source") (:PREP "about")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source") (:PREP "about")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source") (:PREP "about")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source") (:PREP "about")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY DISCOVER-84-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "about") (:IO "Theme") (:PREP "from")
    (:NP "Source"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Theme"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY DISFUNCTION-105.2.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-THEME) :BINDS
  ((#<variable THEME>)) :REALIZATION (((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY DISTINGUISH-23.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-THEME
   CATEGORY::WITH-THEME)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>) (#<variable THEME>)
   (#<variable THEME>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DISTINGUISH-23.5-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "between") (:IO "Theme") (:IO "Co-Theme"))
   ((:S "Instrument") (:VERB) (:O "Theme") (:PREP "from") (:IO "Co-Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DRESS-41.1.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT>) (#<variable PATIENT> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient")) ((:S "Agent") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY DRESSING_WELL-41.3.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable PATIENT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:LEX "up") (:IO "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:LEX "up")))))
((DEFINE-MIXIN-CATEGORY DRIVE-11.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Destination")
    (:PREP "+" "src") (:NP "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location") (:PREP "to towards") (:NP "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to towards") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DRIVE-11.5-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Destination")
    (:PREP "+" "src") (:NP "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location") (:PREP "to") (:NP "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DUB-29.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RESULT) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME> NIL NIL)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY EARN-54.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-EXTENT) :BINDS
  ((#<variable THEME>) (#<variable EXTENT>)) :REALIZATION
  (((:S "Theme") (:VERB) (:O "Asset")))))
((DEFINE-MIXIN-CATEGORY EAT-39.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable AGENT>) (#<variable CAUSE>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY EAT-39.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "src") (:IO "Source"))
   ((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY EAT-39.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "src") (:IO "Source"))
   ((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY EAT-39.1-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY EMPATHIZE-88.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER> NIL NIL) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:PREP "with") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB) (:PREP "with") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB) (:PREP "with") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB)))))
((DEFINE-MIXIN-CATEGORY EMPLOYMENT-95.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-THEME
   CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> NIL NIL)
   (#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Attribute") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Theme") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB) (:PREP "on | in | at") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Co-Agent")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY ENCOUNTER-30.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER> . #<ref-category PHYSICAL-AGENT>)
   (#<variable STIMULUS>))
  :REALIZATION (((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY ENFORCE-63 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ENGENDER-27.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME) :BINDS
  ((#<variable CAUSE>) (#<variable THEME>)) :REALIZATION
  (((:S "Causer") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ENGENDER-27.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Causer") (:VERB) (:O "Theme") (:IO "Predicate")))))
((DEFINE-MIXIN-CATEGORY ENSURE-99 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::PREDICATION CATEGORY::WITH-THEME CATEGORY::WITH-BENEFICIARY)
  :BINDS
  ((#<variable PREDICATE> . #<ref-category PREDICATE>) (#<variable THEME>)
   (#<variable BENEFICIARY>))
  :REALIZATION
  (((:S "Precondition") (:VERB) (:O "Theme"))
   ((:S "Precondition") (:VERB) (:O "Theme") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Precondition") (:VERB) (:O "Beneficiary") (:IO "Theme"))
   ((:S "Precondition") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ENTITY_SPECIFIC_COS-45.5 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable PATIENT>)) :REALIZATION (((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY ENTITY_SPECIFIC_MODES_BEING-47.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE)
  :BINDS ((#<variable THEME>) (#<variable CAUSE> NIL NIL)) :REALIZATION
  (((:S "Location") (:VERB) (:PREP "with") (:IO "Theme"))
   ((:S "+" "loc") (:NP "Location") (:VERB) (:IO "Theme"))
   ((:S "there") (:VERB) (:O "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY EQUIP-13.4.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RECIPIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY EQUIP-13.4.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY EQUIP-13.4.2-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE CATEGORY::WITH-DESTINATION
   CATEGORY::DIRECTION)
  :BINDS
  ((#<variable THEME>) (#<variable SOURCE>) (#<variable DESTINATION>)
   (#<variable NAME>))
  :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Initial_Location")
    (:PREP "+" "path") (:NP "Destination"))
   ((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Trajectory"))
   ((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Initial_Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Initial_Location")))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1-1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Destination")))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1-1-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Trajectory")))))
((DEFINE-MIXIN-CATEGORY ESTABLISH-55.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ESTABLISH-55.5-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT) :BINDS
  ((#<variable INSTRUMENT> . #<ref-category OBJECT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "with") (:IO "Instrument")))))
((DEFINE-MIXIN-CATEGORY ESTIMATE-34.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-PATH)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable PATH>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "at") (:IO "Value")))))
((DEFINE-MIXIN-CATEGORY ESTIMATE-34.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Value"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY EXCEED-90 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE)
  :BINDS ((#<variable THEME>) (#<variable THEME>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Theme") (:VERB) (:O "Co-Theme") (:PREP "in") (:IO "Attribute"))
   ((:S "Theme") (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY EXCHANGE-13.6.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-THEME
   CATEGORY::WITH-AGENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable THEME>)
   (#<variable AGENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "with") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB) (:PREP "+" "loc") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY EXCLUDE-107.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-GOAL)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME> NIL NIL) (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY EXCLUDE-107.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY EXHALE-40.1.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable INSTRUMENT>) (#<variable THEME>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY EXHALE-40.1.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Pivot") (:VERB) (:O "Theme")) ((:S "Pivot") (:VERB)))))
((DEFINE-MIXIN-CATEGORY EXHALE-40.1.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Pivot") (:VERB) (:O "Theme")) ((:S "Pivot") (:VERB)))))
((DEFINE-MIXIN-CATEGORY EXIST-47.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable THEME>) (#<variable CAUSE>)) :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY EXIST-47.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-MANNER) :BINDS
  ((#<variable INSTRUMENT> . #<ref-category OBJECT>)
   (#<variable MANNER> . #<ref-category ADVERB>))
  :REALIZATION
  (((:S "Theme") (:VERB) (:PREP) (:IO "Manner"))
   ((:S "Theme") (:VERB) (:PREP) (:IO "Pivot"))
   ((:S "Theme") (:VERB) (:O "Pivot")))))
((DEFINE-MIXIN-CATEGORY FEEDING-39.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RECIPIENT)
  :BINDS ((#<variable AGENT>) (#<variable THEME>) (#<variable RECIPIENT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY FERRET-35.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-SOURCE CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT>) (#<variable SOURCE>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "dir") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY FILL-9.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Destination"))
   ((:S "Theme") (:VERB) (:O "Destination"))
   ((:S "Agent") (:VERB) (:O "Destination") (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FILL-9.8-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Destination") (:PREP "in") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FIRE-10.10 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-GOAL CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME> NIL NIL) (#<variable SOURCE>)
   (#<variable GOAL>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "as") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY FIT-54.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATH CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable AGENT>) (#<variable PATH>) (#<variable CAUSE>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Value") (:PREP "in") (:IO "Location"))
   ((:S "Location") (:VERB) (:O "Value")))))
((DEFINE-MIXIN-CATEGORY FLINCH-40.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER>) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:PREP "at from") (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB)))))
((DEFINE-MIXIN-CATEGORY FLOSS-41.2.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY FOCUS-87.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC) :BINDS
  ((#<variable AGENT> NIL) (#<variable TOPIC>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "on") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY FOCUS-87.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY FORBID-64.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-BENEFICIARY) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable BENEFICIARY>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Beneficiary") (:PREP "from") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FORBID-64.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY FREE-10.6.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE CATEGORY::WITH-SOURCE CATEGORY::WITH-THEME)
  :BINDS ((#<variable CAUSE>) (#<variable SOURCE> NIL NIL) (#<variable THEME>))
  :REALIZATION
  (((:S "Causer") (:VERB) (:O "Source") (:PREP "of") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FREE-10.6.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Causer") (:VERB) (:O "Source") (:PREP "of") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FREE-10.6.3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Causer") (:VERB) (:O "Source") (:PREP "from") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FREE-80 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-CAUSE CATEGORY::WITH-SOURCE CATEGORY::WITH-THEME) :BINDS
  ((#<variable CAUSE>) (#<variable SOURCE> NIL NIL) (#<variable THEME>))
  :REALIZATION
  (((:S "Causer") (:VERB) (:O "Source") (:PREP "of") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FREE-80-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Causer") (:VERB) (:O "Source") (:PREP "of") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FREE-80-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Causer") (:VERB) (:O "Source") (:PREP "from") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FULFILLING-13.4.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RECIPIENT) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:PREP "with") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to | for") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY FULFILLING-13.4.1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY FULFILLING-13.4.1-2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-RECIPIENT CATEGORY::WITH-AGENT) :BINDS
  ((#<variable RECIPIENT> NIL NIL) (#<variable AGENT> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "for") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY FUNCTION-105.2.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME) :BINDS ((#<variable THEME>)) :REALIZATION
  (((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY FUNCTION-105.2.1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::PREDICATION) :BINDS
  ((#<variable PREDICATE> . #<ref-category PREDICATE>)) :REALIZATION
  (((:S "Theme") (:VERB) (:O "Predicate")))))
((DEFINE-MIXIN-CATEGORY FUNNEL-9.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "dest_conf")
    (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY FUNNEL-9.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "between in_between")
    (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY FUNNEL-9.3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "into") (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY FUTURE_HAVING-13.3 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-BENEFICIARY
   CATEGORY::WITH-GOAL)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>) (#<variable BENEFICIARY>) (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Beneficiary") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Goal") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY FUTURE_HAVING-13.3-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Theme") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY GET-13.5.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-BENEFICIARY CATEGORY::WITH-EXTENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable BENEFICIARY> NIL NIL) (#<variable EXTENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Source")
    (:PREP "at for") (:NP "Asset"))
   ((:S "Asset") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Asset"))
   ((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY GET-13.5.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-SOURCE) :BINDS ((#<variable SOURCE>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "from for on") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY GIVE-13.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RECIPIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY GIVE-13.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXTENT) :BINDS ((#<variable EXTENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:IO "Theme") (:PREP "at for on")
    (:NP "Asset"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Recipient")
    (:PREP "at for on") (:NP "Asset"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for at") (:IO "Asset")))))
((DEFINE-MIXIN-CATEGORY GOBBLE-39.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT) :BINDS ((#<variable AGENT>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY GOBBLE-39.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:LEX "down"))
   ((:S "Agent") (:VERB) (:O "Patient") (:LEX "up"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY GOBBLE-39.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:LEX "down"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY GORGE-39.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "on") (:IO "Patient")))))
((DEFINE-MIXIN-CATEGORY GROOM-41.1.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY GROW-26.2.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-PRODUCT)
  :BINDS ((#<variable AGENT>) (#<variable PATIENT>) (#<variable PRODUCT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Product"))
   ((:S "Agent") (:VERB) (:O "Product") (:PREP "from out_of") (:IO "Patient"))
   ((:S "Product") (:VERB) (:PREP "from out_of") (:IO "Patient"))
   ((:S "Patient") (:VERB) (:PREP "into") (:IO "Product")))))
((DEFINE-MIXIN-CATEGORY HARMONIZE-22.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-THEME) :BINDS
  ((#<variable THEME>) (#<variable THEME>)) :REALIZATION
  (((:S "Theme") (:VERB)) ((:S "Theme") (:VERB) (:ADV) (:IO "Co-Theme"))
   ((:S "Theme") (:VERB) (:O "Co-Theme")) ((:S "Theme") (:VERB) (:ADV)))))
((DEFINE-MIXIN-CATEGORY HELP-72.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-BENEFICIARY CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable BENEFICIARY> NIL NIL)
   (#<variable THEME>))
  :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY HELP-72.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Beneficiary") (:PREP "with") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Beneficiary") (:PREP "with") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY HELP-72.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY HELP-72.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with | for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:PREP "with | for") (:IO "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY HERD-47.5.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT>) (#<variable THEME> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:LEX "together"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY HICCUP-40.1.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT) :BINDS ((#<variable AGENT>)) :REALIZATION
  (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY HIRE-13.5.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME> NIL NIL)
   (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "as") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY HIT-18.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT
   CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>) (#<variable INSTRUMENT>)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Instrument") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Instrument") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Instrument") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB) (:O "Instrument") (:PREP "against on")
    (:IO "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state") (:PREP "with") (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result") (:PREP "with")
    (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient") (:LEX "together"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY HIT-18.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT) :BINDS ((#<variable INSTRUMENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:LEX "at") (:IO "Patient") (:PREP "with")
    (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:LEX "at") (:IO "Patient")))))
((DEFINE-MIXIN-CATEGORY HOLD-15.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT>) (#<variable THEME> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY HUNT-35.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT>) (#<variable CAUSE>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location"))
   ((:S "Agent") (:VERB) (:PREP "+" "loc") (:IO "Location") (:PREP "for")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "for") (:IO "Theme") (:PREP "+" "loc")
    (:NP "Location"))
   ((:S "Agent") (:VERB) (:O "Location") (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY HURT-40.8.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER) :BINDS ((#<variable EXPERIENCER>))
  :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY HURT-40.8.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY HURT-40.8.3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY HURT-40.8.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Patient"))
   ((:S "Experiencer") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY ILLUSTRATE-25.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-DESTINATION) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Destination") (:PREP "with") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Destination")))))
((DEFINE-MIXIN-CATEGORY IMAGE_IMPRESSION-25.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-DESTINATION) :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Destination"))
   ((:S "Agent") (:VERB) (:O "Destination") (:PREP "with") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP) (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY INDICATE-78 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-RECIPIENT CATEGORY::WITH-CAUSE CATEGORY::WITH-TOPIC)
  :BINDS
  ((#<variable RECIPIENT> NIL NIL) (#<variable CAUSE>) (#<variable TOPIC>))
  :REALIZATION
  (((:S "Causer") (:VERB) (:O "Topic")) ((:S "Causer") (:VERB) (:O "Topic"))
   ((:S "Causer") (:VERB) (:O "Topic")) ((:S "Causer") (:VERB) (:O "Topic"))
   ((:S "Causer") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY INDICATE-78-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Causer") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Causer") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Causer") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Causer") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY INDICATE-78-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Causer") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY INITIATE_COMMUNICATION-37.4.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-RECIPIENT) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable RECIPIENT> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY INITIATE_COMMUNICATION-37.4.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY INQUIRE-37.1.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-RECIPIENT CATEGORY::WITH-TOPIC)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable RECIPIENT> NIL NIL)
   (#<variable TOPIC>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "of") (:IO "Recipient") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "of") (:IO "Recipient") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "of") (:IO "Recipient") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "of") (:IO "Recipient") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "of") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "of") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Recipient"))
   ((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY INSTR_COMMUNICATION-37.4.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC CATEGORY::WITH-RECIPIENT) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable TOPIC>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "for") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic") (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Recipient"))
   ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY INTEND-61.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable TOPIC>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic") (:PREP "as") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY INTEND-61.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY INTEND-61.2-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY INTERACT-36.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT) :BINDS
  ((#<variable AGENT>) (#<variable AGENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB)) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY INTERROGATE-37.1.3 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-RECIPIENT CATEGORY::WITH-TOPIC
   CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable RECIPIENT> NIL NIL)
   (#<variable TOPIC>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:PREP "as") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY INVEST-13.5.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-EXTENT
   CATEGORY::WITH-GOAL)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable EXTENT>)
   (#<variable GOAL>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Goal")))))
((DEFINE-MIXIN-CATEGORY INVEST-13.5.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Asset") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Asset") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY INVESTIGATE-35.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT>) (#<variable CAUSE>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Location"))
   ((:S "Agent") (:VERB) (:O "Location") (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY INVOLVE-107.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-GOAL)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME> NIL NIL) (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "in") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY JUDGMENT-33.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE)
  :BINDS ((#<variable AGENT>) (#<variable THEME>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY JUDGMENT-33.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "as") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY JUDGMENT-33.1-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY KEEP-15.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable CAUSE> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY KNEAD-26.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PRODUCT CATEGORY::WITH-MATERIAL)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PRODUCT>)
   (#<variable MATERIAL> . #<ref-category PHYSICAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Material"))
   ((:S "Agent") (:VERB) (:O "Material") (:PREP "into") (:IO "Product"))
   ((:S "Material") (:VERB) (:PREP "into") (:IO "Product")))))
((DEFINE-MIXIN-CATEGORY LEARN-14 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC CATEGORY::WITH-SOURCE) :BINDS
  ((#<variable AGENT>) (#<variable TOPIC>) (#<variable SOURCE>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Topic") (:PREP "from") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY LEARN-14-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY LEARN-14-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "from") (:IO "Source") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY LEARN-14-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "of about") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY LEAVE-51.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE CATEGORY::WITH-GOAL)
  :BINDS ((#<variable THEME>) (#<variable SOURCE>) (#<variable GOAL>))
  :REALIZATION (((:S "Theme") (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY LEAVE-51.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY LECTURE-37.11 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC CATEGORY::WITH-RECIPIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable TOPIC>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION (((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY LECTURE-37.11-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY LECTURE-37.11-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY LECTURE-37.11-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "on") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY LET-64.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-BENEFICIARY CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable BENEFICIARY>) (#<variable THEME>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY LIGHT_EMISSION-43.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE CATEGORY::WITH-AGENT) :BINDS
  ((#<variable THEME>) (#<variable CAUSE>)
   (#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "+" "loc") (:NP "Location") (:LEX "there") (:VERB) (:IO "Theme"))
   ((:S "there") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location"))
   ((:S "Location") (:VERB) (:PREP "with") (:IO "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY LIMIT-76 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-CAUSE CATEGORY::WITH-PATIENT CATEGORY::WITH-GOAL) :BINDS
  ((#<variable CAUSE>) (#<variable PATIENT> NIL NIL) (#<variable GOAL>))
  :REALIZATION
  (((:S "Causer") (:VERB) (:O "Patient") (:IO "Goal"))
   ((:S "Causer") (:VERB) (:O "Patient") (:PREP "to") (:IO "Goal"))
   ((:S "Causer") (:VERB) (:O "Patient") (:PREP "to") (:IO "Goal"))
   ((:S "Causer") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY LINGER-53.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT>) (#<variable CAUSE>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "over") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "+" "loc") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY LINGER-53.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY LODGE-46 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable THEME>) (#<variable CAUSE>)) :REALIZATION
  (((:S "Theme") (:VERB) (:O "Location"))
   ((:S "Theme") (:VERB) (:PREP "at in with") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY LONG-32.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable INSTRUMENT> . #<ref-category OBJECT>) (#<variable THEME>))
  :REALIZATION (((:S "Pivot") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY LONG-32.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Pivot") (:VERB) (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY LONG-32.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Pivot") (:VERB) (:PREP "after") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY LURE-59.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::PREDICATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "into to") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY MANNER_SPEAKING-37.3 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC CATEGORY::WITH-RECIPIENT) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable TOPIC>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "dest_dir") (:IO "Recipient")
    (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "for") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "+" "dest_dir") (:IO "Recipient")
    (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "+" "dest_dir") (:IO "Recipient")
    (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "+" "dest_dir") (:IO "Recipient")
    (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic") (:PREP "+" "dest_dir") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "+" "dest_dir") (:IO "Recipient"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY MARRY-36.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT) :BINDS
  ((#<variable AGENT>) (#<variable AGENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Co-Agent")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY MARVEL-31.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER>) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:PREP) (:IO "Stimulus"))
   ((:S "Experiencer") (:VERB)))))
((DEFINE-MIXIN-CATEGORY MASQUERADE-29.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-ATTRIBUTE) :BINDS
  ((#<variable AGENT>) (#<variable ATTRIBUTE>)) :REALIZATION
  (((:S "Agent") (:VERB) (:LEX "as") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY MASQUERADE-29.6-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:LEX "like") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY MASQUERADE-29.6-2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "in") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Attribute")))))
((DEFINE-MIXIN-CATEGORY MATTER-91 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER> NIL NIL) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Stimulus") (:VERB)) ((:S "it") (:VERB) (:O "Stimulus"))
   ((:S "it") (:VERB) (:PREP "to") (:IO "Experiencer") (:IO "Stimulus"))
   ((:S "Stimulus") (:VERB) (:PREP "to") (:IO "Experiencer"))
   ((:S "Stimulus") (:VERB)))))
((DEFINE-MIXIN-CATEGORY MEANDER-47.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME) :BINDS
  ((#<variable CAUSE>) (#<variable THEME>)) :REALIZATION
  (((:S "there") (:VERB) (:O "Theme") (:PREP "+" "path") (:IO "Location"))
   ((:S "there") (:VERB) (:PREP "+" "path") (:IO "Location") (:IO "Theme"))
   ((:S "+" "path") (:NP "Location") (:VERB) (:IO "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY MEANDER-47.7-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY MEET-36.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT) :BINDS
  ((#<variable AGENT>) (#<variable AGENT>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY MEET-36.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Co-Agent"))
   ((:S "Agent") (:VERB))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY MEET-36.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Co-Agent"))
   ((:S "Agent") (:VERB))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY MINE-10.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY MIX-22.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT)
  :BINDS ((#<variable AGENT>) (#<variable PATIENT>) (#<variable CO-PATIENT>))
  :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY MIX-22.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:ADV) (:LEX "together"))
   ((:S "Patient") (:VERB) (:ADV))
   ((:S "Patient") (:VERB) (:ADV) (:PREP "with into to") (:IO "Co-Patient"))
   ((:S "Patient") (:VERB) (:PREP "with into to") (:IO "Co-Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:LEX "together"))
   ((:S "Agent") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with into to")
    (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY MIX-22.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:LEX "together")) ((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY MIX-22.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:ADV) (:LEX "together"))
   ((:S "Patient") (:VERB) (:ADV))
   ((:S "Patient") (:VERB) (:ADV) (:PREP "with into to") (:IO "Co-Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:LEX "together"))
   ((:S "Agent") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with into to")
    (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY MIX-22.1-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:LEX "together")) ((:S "Patient") (:VERB))
   ((:S "Patient") (:VERB) (:PREP "with into to") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY MODES_OF_BEING_WITH_MOTION-47.3 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable CAUSE> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "+" "loc") (:NP "Location") (:VERB) (:IO "Theme"))
   ((:S "there") (:VERB) (:O "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY MULTIPLY-108 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable THEME>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY MULTIPLY-108-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "by") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY MULTIPLY-108-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY MULTIPLY-108-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "over") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY MURDER-42.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY MURDER-42.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT) :BINDS ((#<variable INSTRUMENT>))
  :REALIZATION (((:S "Instrument") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY NEGLECT-75.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY NEGLECT-75.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY NONVEHICLE-51.4.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::DIRECTION) :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable NAME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Trajectory")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "path") (:IO "Trajectory"))
   ((:S "Agent") (:VERB) (:PREP "+" "path") (:IO "Trajectory"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY NONVEHICLE-51.4.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Trajectory")))))
((DEFINE-MIXIN-CATEGORY NONVERBAL_EXPRESSION-40.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-RECIPIENT) :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable RECIPIENT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "dest_dir") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY OBTAIN-13.5.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY OBTAIN-13.5.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXTENT) :BINDS ((#<variable EXTENT>)) :REALIZATION
  (((:S "Asset") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Asset")))))
((DEFINE-MIXIN-CATEGORY OCCUR-48.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable THEME>) (#<variable CAUSE>)) :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "" "+" "loc") (:IO "Location"))
   ((:S "there") (:VERB) (:O "Theme")) ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY OCCUR-48.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "it") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY OCCUR-48.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY ORBIT-51.9.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-INSTRUMENT) :BINDS
  ((#<variable THEME>) (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION (((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Axis")))))
((DEFINE-MIXIN-CATEGORY ORDER-58.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Result")) ((:S "Agent") (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY ORDER-58.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY ORPHAN-29.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY OTHER_COS-45.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT
   CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Instrument") (:VERB) (:O "Patient")) ((:S "Patient") (:VERB) (:ADV))
   ((:S "Patient") (:VERB))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY OTHER_COS-45.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Patient") (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY OVERSTATE-37.12 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY OWN-100.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable INSTRUMENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Pivot") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PAIN-40.8.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-PATIENT CATEGORY::WITH-STIMULUS)
  :BINDS
  ((#<variable EXPERIENCER>) (#<variable PATIENT>) (#<variable STIMULUS>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "from") (:IO "Stimulus"))
   ((:S "Patient") (:VERB) (:O "Experiencer")) ((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY PATENT-101 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PAY-68 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-EXTENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable EXTENT>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Asset"))
   ((:S "Agent") (:VERB) (:O "Asset") (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PAY-68-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-RECIPIENT) :BINDS ((#<variable RECIPIENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:IO "Asset"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Asset") (:PREP "for")
    (:NP "Theme")))))
((DEFINE-MIXIN-CATEGORY PEER-30.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT>) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "spatial") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PELT-17.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Destination"))
   ((:S "Agent") (:VERB) (:O "Destination") (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PERFORMANCE-26.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-BENEFICIARY) :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable BENEFICIARY>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PERFORMANCE-26.7-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PIT-10.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY PLAY-114.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY PLAY-114.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME) :BINDS ((#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "with") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB) (:O "Co-Agent"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY POCKET-9.10 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "in on under")
    (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY POCKET-9.10-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Destination")) ((:S "Theme") (:VERB))
   ((:S "Theme") (:VERB) (:PREP "in on under") (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY POISON-42.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT
   CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY POKE-19 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT>) (#<variable INSTRUMENT>))
  :REALIZATION
  (((:S "Instrument") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB) (:LEX "at") (:IO "Patient") (:PREP "with")
    (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:LEX "at") (:IO "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Instrument") (:PREP "through into")
    (:IO "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY POUR-9.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-DESTINATION
   CATEGORY::WITH-SOURCE)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME> NIL NIL NIL)
   (#<variable DESTINATION> NIL NIL) (#<variable SOURCE> NIL NIL))
  :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "+" "src") (:IO "Initial_Location")
    (:PREP "+" "dest_conf") (:NP "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location") (:PREP "+" "dest_conf") (:NP "Destination"))
   ((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "path") (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY PREPARING-26.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-BENEFICIARY) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable BENEFICIARY>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY PREPARING-26.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PRODUCT) :BINDS ((#<variable PRODUCT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Product") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Product"))
   ((:S "Agent") (:VERB) (:O "Product")))))
((DEFINE-MIXIN-CATEGORY PREPARING-26.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-PATIENT) :BINDS ((#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY PRICE-54.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-PATH)
  :BINDS ((#<variable AGENT>) (#<variable THEME>) (#<variable PATH>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "at") (:IO "Value"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PROMISE-37.13 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-RECIPIENT CATEGORY::WITH-TOPIC)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable RECIPIENT> NIL NIL)
   (#<variable TOPIC>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY PROMOTE-102 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PRONOUNCE-29.3.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "with in") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY PROSECUTE-33.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-THEME)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "for") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY PROSECUTE-33.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-ATTRIBUTE) :BINDS ((#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "as") (:IO "Attribute")
    (:PREP "for") (:NP "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "as") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "as") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY PUSH-12 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::DIRECTION
   CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>)
   (#<variable NAME> :PRIMITIVE SPARSER::WORD) (#<variable RESULT-ROLE>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PUSH-12-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "at against on") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY PUSH-12-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "dir") (:IO "Trajectory"))
   ((:S "Agent") (:VERB) (:PREP "+" "dir")))))
((DEFINE-MIXIN-CATEGORY PUT-9.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY PUT-9.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PUT-9.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME) :BINDS ((#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "on upon") (:IO "Destination") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PUT_DIRECTION-9.4 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "spatial")
    (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PUT_SPATIAL-9.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY PUT_SPATIAL-9.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Destination"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY REACH-51.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-GOAL) :BINDS
  ((#<variable THEME> NIL NIL) (#<variable GOAL>)) :REALIZATION
  (((:S "Theme") (:VERB) (:O "Goal")))))
((DEFINE-MIXIN-CATEGORY REAR-26.2.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PRODUCT) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable PRODUCT>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY REAR-26.2.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-MATERIAL) :BINDS
  ((#<variable MATERIAL> . #<ref-category PHYSICAL>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Material") (:IO "Product")))))
((DEFINE-MIXIN-CATEGORY RECIPROCATE-112 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::PREDICATION)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>) (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY RECIPROCATE-112-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Predicate")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY REFLEXIVE_APPEARANCE-48.1.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-AGENT CATEGORY::WITH-RECIPIENT
   CATEGORY::REFLEXIVE)
  :BINDS
  ((#<variable THEME>) (#<variable AGENT>) (#<variable RECIPIENT>)
   (#<variable PRONOUN> . #<ref-category PRONOUN>))
  :REALIZATION
  (((:S "Theme") (:VERB) (:O "Reflexive" "+" "refl"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY REFRAIN-69 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "from") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Theme")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY REGISTER-54.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-PATH) :BINDS
  ((#<variable THEME>) (#<variable PATH>)) :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "at | to") (:IO "Value")))))
((DEFINE-MIXIN-CATEGORY REGISTER-54.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-ATTRIBUTE) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Attribute") (:PREP "at") (:IO "Value"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "at") (:IO "Value"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY REGISTER-54.1-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Value")))))
((DEFINE-MIXIN-CATEGORY REHEARSE-26.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY REHEARSE-26.8-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY REJECT-77.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY REJECT-77.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY RELATE-86.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-THEME) :BINDS
  ((#<variable THEME>) (#<variable THEME>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY RELATE-86.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Theme") (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY RELATE-86.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "to") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY RELY-70 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "on") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY REMEDY-45.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY REMEDY-45.7-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Patient") (:VERB) (:ADV)))))
((DEFINE-MIXIN-CATEGORY REMOVE-10.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-GOAL)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY RENDER-29.90 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT)
  :BINDS ((#<variable CAUSE>) (#<variable PATIENT>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Causer") (:VERB) (:O "Result") (:IO "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY RENDER-29.90-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY RENDER-29.90-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY REPRESENTATION-110.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-THEME CATEGORY::PREDICATION) :BINDS
  ((#<variable THEME>) (#<variable THEME>)
   (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION
  (((:S "Theme") (:VERB) (:O "Co-Theme") (:PREP "in | for | to")
    (:IO "Context"))
   ((:S "Theme") (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY REQUIRE-103 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable INSTRUMENT> . #<ref-category OBJECT>) (#<variable THEME>))
  :REALIZATION
  (((:S "Pivot") (:VERB) (:O "Theme")) ((:S "Pivot") (:VERB) (:O "Theme"))
   ((:S "Pivot") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY REQUIRE-103-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-SOURCE) :BINDS ((#<variable SOURCE>)) :REALIZATION
  (((:S "Pivot") (:VERB) (:O "Theme")) ((:S "Pivot") (:VERB) (:O "Theme"))
   ((:S "Pivot") (:VERB) (:O "Theme") (:PREP "from") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY REQUIRE-103-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Pivot") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY RESIGN-10.11 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-SOURCE CATEGORY::WITH-GOAL)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable SOURCE>) (#<variable GOAL>))
  :REALIZATION (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY RESIGN-10.11-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "from") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY RESIGN-10.11-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY RESPOND-113 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::PREDICATION)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>) (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to|against") (:IO "Theme") (:PREP "with")
    (:NP "Predicate"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:PREP "to|against") (:IO "Theme"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY RESULT-27.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME) :BINDS
  ((#<variable CAUSE>) (#<variable THEME>)) :REALIZATION
  (((:S "Causer") (:VERB) (:PREP "in | to") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY RISK-94 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY RISK-94-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ROB-10.6.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-BENEFICIARY)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable SOURCE> NIL NIL NIL) (#<variable BENEFICIARY>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src") (:IO "Source")
    (:PREP "for") (:NP "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ROLL-51.3.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::DIRECTION
   CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable NAME>)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Result"))
   ((:S "Theme") (:VERB) (:PREP "to into") (:IO "Result" "+" "state"))
   ((:S "Theme") (:VERB) (:O "Result"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "path") (:IO "Trajectory"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "spatial") (:IO "Trajectory"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY ROTATE-51.9.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-EXTENT CATEGORY::DIRECTION)
  :BINDS
  ((#<variable THEME>) (#<variable EXTENT>)
   (#<variable NAME> :PRIMITIVE SPARSER::WORD))
  :REALIZATION
  (((:S "Theme") (:VERB) (:ADV "Trajectory"))
   ((:S "Theme") (:VERB) (:O "Extent")))))
((DEFINE-MIXIN-CATEGORY ROTATE-51.9.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Theme") (:IO "Extent")))))
((DEFINE-MIXIN-CATEGORY RUMMAGE-35.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT>) (#<variable CAUSE>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "loc") (:IO "Location") (:PREP "for")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "over through into") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY RUMMAGE-35.5-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Location") (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY RUN-51.3.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE CATEGORY::DIRECTION
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable THEME> NIL NIL) (#<variable SOURCE>) (#<variable NAME>)
   (#<variable DESTINATION>))
  :REALIZATION
  (((:S "+" "path") (:NP "Initial_Location") (:VERB) (:IO "Theme"))
   ((:S "there") (:VERB) (:O "Theme") (:PREP "+" "path")
    (:IO "Initial_Location"))
   ((:S "there") (:VERB) (:PREP "+" "path")
    (:IO "Initial_Location" "+" "concrete") (:IO "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "spatial") (:IO "Trajectory"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY RUN-51.3.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Trajectory" "+" "concrete")))))
((DEFINE-MIXIN-CATEGORY RUN-51.3.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-RESULT CATEGORY::WITH-SOURCE)
  :BINDS ((#<variable AGENT>) (#<variable RESULT-ROLE>) (#<variable SOURCE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "spatial") (:IO "Trajectory"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "spatial")
    (:IO "Trajectory")))))
((DEFINE-MIXIN-CATEGORY RUN-51.3.2-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Trajectory" "+" "concrete")))))
((DEFINE-MIXIN-CATEGORY RUSH-53.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT>) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "through") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SATISFY-55.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "with") (:IO "Instrument"))
   ((:S "Instrument") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC CATEGORY::WITH-RECIPIENT) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable TOPIC>)
   (#<variable RECIPIENT> NIL NIL))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic") (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7-1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic") (:PREP "to") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7-1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic") (:PREP "to") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY SCRIBBLE-25.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-DESTINATION) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "on | in") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SCRIBBLE-25.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SEARCH-35.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-CAUSE CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT>) (#<variable CAUSE>) (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Agent") (:VERB) (:PREP "+" "loc") (:IO "Location") (:PREP "for")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "for") (:IO "Theme") (:PREP "+" "loc")
    (:NP "Location"))
   ((:S "Agent") (:VERB) (:O "Location") (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SEE-30.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER>) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY SEE-30.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY SEE-30.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY SEE-30.1-1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Experiencer") (:VERB) (:PREP "about of") (:IO "Stimulus")))))
((DEFINE-MIXIN-CATEGORY SEEM-109 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE) :BINDS
  ((#<variable THEME>) (#<variable ATTRIBUTE>)) :REALIZATION
  (((:S "Theme") (:VERB) (:O "Attribute")))))
((DEFINE-MIXIN-CATEGORY SEEM-109-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Attribute")))))
((DEFINE-MIXIN-CATEGORY SEEM-109-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "in") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY SEEM-109-1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Attribute")))))
((DEFINE-MIXIN-CATEGORY SEND-11.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Destination")
    (:PREP "+" "src") (:NP "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location") (:PREP "to") (:NP "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SEND-11.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-DESTINATION) :BINDS ((#<variable DESTINATION>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Destination") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SEPARATE-23.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT)
  :BINDS ((#<variable AGENT>) (#<variable PATIENT>) (#<variable CO-PATIENT>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:ADV))
   ((:S "Patient") (:VERB) (:ADV) (:PREP "from") (:IO "Co-Patient"))
   ((:S "Patient") (:VERB)) ((:S "Agent") (:VERB) (:O "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "from") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SEPARATE-23.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "from") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SEPARATE-23.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "with") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SETTLE-36.1.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL) (#<variable TOPIC>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "on")
    (:NP "Goal"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Goal")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SETTLE-36.1.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Goal"))
   ((:S "Agent") (:VERB) (:O "Co-Agent") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Goal")))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT>) (#<variable CO-PATIENT>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:ADV) (:LEX "together"))
   ((:S "Patient") (:VERB) (:ADV)))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:LEX "together"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with into to")
    (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient"))
   ((:S "Patient") (:VERB) (:PREP "with into to") (:IO "Co-Patient") (:ADV)))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:LEX "together"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with into to")
    (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY SIGHT-30.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER>) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY SIMPLE_DRESSING-41.3.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME)
  :BINDS ((#<variable AGENT>) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SLIDE-11.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION CATEGORY::DIRECTION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL NIL)
   (#<variable NAME> :PRIMITIVE SPARSER::WORD))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location") (:PREP "to") (:NP "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "path") (:IO "Trajectory"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "src") (:IO "Initial_Location")
    (:PREP "to") (:NP "Destination"))
   ((:S "Theme") (:VERB) (:PREP "to") (:IO "Destination"))
   ((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Initial_Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SLIDE-11.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-DESTINATION) :BINDS ((#<variable DESTINATION>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Destination") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SMELL_EMISSION-43.3 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE)
  :BINDS ((#<variable THEME>) (#<variable CAUSE>)) :REALIZATION
  (((:S "Location") (:VERB) (:PREP "of") (:IO "Theme"))
   ((:S "Location") (:VERB)) ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SNOOZE-40.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT) :BINDS ((#<variable AGENT>)) :REALIZATION
  (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SNOOZE-40.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME) :BINDS ((#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SOUND_EMISSION-43.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE CATEGORY::WITH-AGENT
   CATEGORY::TEMPORALLY-LOCALIZED)
  :BINDS
  ((#<variable THEME>) (#<variable CAUSE>)
   (#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable CERTAINTY> . #<ref-category CERTAINTY>))
  :REALIZATION
  (((:S "Theme") (:VERB) (:O "Result")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "there") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location"))
   ((:S "+" "loc") (:NP "Location") (:VERB) (:IO "Theme"))
   ((:S "Location") (:VERB) (:PREP "with") (:IO "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SOUND_EXISTENCE-47.4 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE)
  :BINDS ((#<variable THEME>) (#<variable CAUSE> NIL NIL)) :REALIZATION
  (((:S "Location") (:VERB) (:PREP "with") (:IO "Theme"))
   ((:S "+" "loc") (:NP "Location") (:VERB) (:IO "Theme"))
   ((:S "there") (:VERB) (:O "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SPANK-18.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT
   CATEGORY::WITH-CAUSE CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>) (#<variable INSTRUMENT>)
   (#<variable CAUSE>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient" "+" "body_part"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "+" "loc")
    (:IO "Location" "+" "body_part") (:PREP "with") (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "+" "loc")
    (:IO "Location" "+" "body_part"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state") (:PREP "with") (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY SPATIAL_CONFIGURATION-47.6 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE)
  :BINDS ((#<variable THEME>) (#<variable CAUSE> NIL NIL)) :REALIZATION
  (((:S "+" "loc") (:NP "Location") (:VERB) (:IO "Theme"))
   ((:S "there") (:VERB) (:PREP "+" "loc") (:IO "Location") (:IO "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SPATIAL_CONFIGURATION-47.6-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-AGENT) :BINDS
  ((#<variable AGENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY SPEND_TIME-104 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-EXTENT CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable EXTENT>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Duration") (:LEX "as") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Duration") (:LEX "as") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Duration")))))
((DEFINE-MIXIN-CATEGORY SPLIT-23.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT)
  :BINDS ((#<variable AGENT>) (#<variable PATIENT>) (#<variable CO-PATIENT>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:LEX "apart") (:ADV))
   ((:S "Patient") (:VERB) (:PREP "off off of from") (:IO "Co-Patient") (:ADV))
   ((:S "Patient") (:VERB) (:LEX "apart"))
   ((:S "Patient") (:VERB) (:PREP "off off of from") (:IO "Co-Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:LEX "apart"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "off off of from")
    (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SPRAY-9.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Destination") (:PREP "with") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP) (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY SPRAY-9.7-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME) :BINDS ((#<variable THEME> NIL NIL NIL))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:LEX "at") (:IO "Destination"))
   ((:S "Theme") (:VERB) (:PREP) (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY SPRAY-9.7-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Destination")))))
((DEFINE-MIXIN-CATEGORY SPRAY-9.7-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME) :BINDS ((#<variable THEME>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY STALK-35.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE)
  :BINDS ((#<variable AGENT>) (#<variable THEME>) (#<variable CAUSE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location"))
   ((:S "Agent") (:VERB) (:O "Location") (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY STEAL-10.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-BENEFICIARY)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable SOURCE> NIL NIL)
   (#<variable BENEFICIARY>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src") (:IO "Source")
    (:PREP "for") (:NP "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Beneficiary"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY STEAL-10.5-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Beneficiary") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY STIMULATE-59.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::PREDICATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY STIMULUS_SUBJECT-30.4 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER>) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Stimulus") (:VERB) (:PREP "like"))
   ((:S "Stimulus") (:VERB) (:ADJ) (:PREP "to") (:IO "Experiencer"))
   ((:S "Stimulus") (:VERB) (:ADJ)))))
((DEFINE-MIXIN-CATEGORY STOP-55.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Affector") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY STOP-55.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:ADV)) ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY STOP-55.4-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SUBJUGATE-42.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY SUBORDINATE-95.2.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY SUBSTANCE_EMISSION-43.4 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE) :BINDS
  ((#<variable THEME>) (#<variable SOURCE>)) :REALIZATION
  (((:S "Source") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SUBSTANCE_EMISSION-43.4-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable CAUSE>)) :REALIZATION
  (((:S "Source") (:VERB) (:O "Theme")) ((:S "Theme") (:VERB) (:LEX "out"))
   ((:S "there") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location"))
   ((:S "+" "loc") (:NP "Location") (:VERB) (:IO "Theme"))
   ((:S "Location") (:VERB) (:PREP "with") (:IO "Theme"))
   ((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Location"))
   ((:S "Theme") (:VERB) (:PREP "from out_of") (:IO "Source"))
   ((:S "Source") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SUBSTANCE_EMISSION-43.4-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-AGENT) :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY SUBSTITUTE-13.6.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-THEME CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-GOAL CATEGORY::WITH-CAUSE)
  :BINDS
  ((#<variable THEME>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable GOAL>) (#<variable CAUSE> NIL NIL))
  :REALIZATION
  (((:S "Theme") (:VERB) (:O "Location") (:PREP "with") (:IO "Co-Theme"))
   ((:S "Theme") (:VERB) (:O "Location"))
   ((:S "Theme") (:VERB) (:PREP "for into") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY SUBSTITUTE-13.6.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Theme") (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "in at") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION (((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "in at") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SUFFOCATE-40.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT)
  :BINDS ((#<variable AGENT>) (#<variable PATIENT>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "to")
    (:IO "Result" "+" "state"))
   ((:S "Patient") (:VERB) (:PREP "to") (:IO "Result" "+" "state"))
   ((:S "Patient") (:VERB)) ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY SUPERVISION-95.2.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT)
  :BINDS ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY SUPPORT-15.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>) (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION (((:S "Instrument") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SUPPORT-15.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "with | through")
    (:IO "Instrument")))))
((DEFINE-MIXIN-CATEGORY SUSPECT-81 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>) (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "of") (:IO "Attribute"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "of") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY SUSTAIN-55.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "through") (:IO "Instrument")))))
((DEFINE-MIXIN-CATEGORY SUSTAIN-55.6-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-ATTRIBUTE) :BINDS ((#<variable ATTRIBUTE>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Theme") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY SWARM-47.5.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable THEME> NIL NIL) (#<variable CAUSE> NIL NIL)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY SWARM-47.5.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Location") (:VERB) (:PREP "with") (:IO "Theme"))
   ((:S "+" "loc") (:NP "Location") (:VERB) (:IO "Theme"))
   ((:S "there") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY SWARM-47.5.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "there") (:VERB) (:O "Theme") (:PREP "+" "loc") (:IO "Location"))
   ((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY SWARM-47.5.1-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Location") (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SWAT-18.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-INSTRUMENT
   CATEGORY::WITH-CAUSE CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>) (#<variable INSTRUMENT>)
   (#<variable CAUSE>) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "+" "loc")
    (:IO "Location" "+" "body_part"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state") (:PREP "with") (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result") (:PREP "with")
    (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Agent") (:VERB) (:LEX "at") (:IO "Patient") (:PREP "with")
    (:NP "Instrument"))
   ((:S "Agent") (:VERB) (:LEX "at") (:IO "Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY TALK-37.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable AGENT> NIL NIL) (#<variable TOPIC>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic") (:PREP "with")
    (:NP "Co-Agent"))
   ((:S "Agent") (:VERB) (:PREP "about") (:IO "Topic") (:PREP "to")
    (:NP "Co-Agent"))
   ((:S "Agent") (:VERB) (:LEX "together")) ((:S "Agent") (:VERB))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Co-Agent") (:PREP "about")
    (:NP "Topic"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Co-Agent"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY TAPE-22.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-CO-PATIENT
   CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT>) (#<variable CO-PATIENT>)
   (#<variable INSTRUMENT> NIL NIL) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:IO "Result"))
   ((:S "Patient") (:VERB) (:LEX "together") (:ADV))
   ((:S "Patient") (:VERB) (:ADV) (:LEX "together"))
   ((:S "Patient") (:VERB) (:ADV))
   ((:S "Patient") (:VERB) (:ADV) (:PREP "to on onto") (:IO "Co-Patient"))
   ((:S "Agent") (:VERB) (:O "Patient") (:LEX "together"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "to on onto")
    (:IO "Co-Patient"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY TAPE-22.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "to on onto") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY TELL-37.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-RECIPIENT CATEGORY::WITH-TOPIC)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable RECIPIENT> NIL NIL)
   (#<variable TOPIC>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:PREP "of") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY TERMINUS-47.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable THEME>) (#<variable CAUSE>)) :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY THROW-17.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable SOURCE>)
   (#<variable DESTINATION> NIL NIL NIL) (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:ADV))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location") (:PREP "+" "dest_dir") (:NP "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP) (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY THROW-17.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-DESTINATION) :BINDS ((#<variable DESTINATION>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Destination") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY THROW-17.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE) :BINDS ((#<variable CAUSE>)) :REALIZATION
  (((:S "Causer") (:VERB) (:PREP "into") (:IO "Result") (:IO "Theme"))
   ((:S "Causer") (:VERB) (:O "Theme") (:PREP "into") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY TINGLE-40.8.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-PATIENT CATEGORY::WITH-STIMULUS)
  :BINDS
  ((#<variable EXPERIENCER>) (#<variable PATIENT>) (#<variable STIMULUS>))
  :REALIZATION
  (((:S "Patient") (:VERB) (:PREP "from at") (:IO "Stimulus"))
   ((:S "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY TOUCH-20 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-INSTRUMENT)
  :BINDS
  ((#<variable AGENT>) (#<variable EXPERIENCER>) (#<variable INSTRUMENT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Experiencer") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Experiencer")))))
((DEFINE-MIXIN-CATEGORY TOUCH-20-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-EXPERIENCER) :BINDS
  ((#<variable EXPERIENCER> NIL NIL)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Experiencer") (:PREP "with") (:IO "Instrument"))
   ((:S "Agent") (:VERB) (:O "Experiencer")))))
((DEFINE-MIXIN-CATEGORY TRANSCRIBE-25.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-DESTINATION) :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP) (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY TRANSFER_MESG-37.1.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-TOPIC CATEGORY::WITH-RECIPIENT
   CATEGORY::WITH-SOURCE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable TOPIC>)
   (#<variable RECIPIENT> NIL NIL) (#<variable SOURCE>))
  :REALIZATION
  (((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source"))
   ((:S "Agent") (:VERB) (:O "Topic") (:PREP "to") (:IO "Recipient"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Topic")) ((:S "Agent") (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY TRANSFER_MESG-37.1.1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY TRANSFER_MESG-37.1.1-1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:PREP "about") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient") (:IO "Topic"))
   ((:S "Agent") (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY TRICK-59.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::PREDICATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY TRIFLE-105.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY TRY-61.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY TURN-26.6.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT
   CATEGORY::WITH-SOURCE)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT>) (#<variable RESULT-ROLE>)
   (#<variable SOURCE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient")) ((:S "Patient") (:VERB))
   ((:S "Patient") (:VERB) (:PREP "into") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "into") (:IO "Result"))
   ((:S "Patient") (:VERB) (:PREP "from") (:IO "Initial_State") (:PREP "into")
    (:NP "Result"))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "from") (:IO "Initial_State")
    (:PREP "into") (:NP "Result")))))
((DEFINE-MIXIN-CATEGORY TURN-26.6.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "to") (:IO "Result") (:PREP "from")
    (:NP "Initial_State"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Initial_State") (:PREP "to")
    (:NP "Result"))
   ((:S "Agent") (:VERB) (:PREP "to") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY URGE-58.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT> NIL NIL)
   (#<variable RESULT-ROLE>))
  :REALIZATION (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY URGE-58.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY URGE-58.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY USE-105.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::PREDICATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable PREDICATE> . #<ref-category PREDICATE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "for") (:IO "Predicate"))
   ((:S "Agent") (:VERB) (:O "Theme") (:ADV))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY VEHICLE-51.4.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::DIRECTION
   CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable NAME>)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to into")
    (:IO "Result" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Result"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "path") (:IO "Trajectory"))
   ((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Trajectory"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY VEHICLE-51.4.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-CAUSE) :BINDS ((#<variable CAUSE>)) :REALIZATION
  (((:S "Theme") (:VERB) (:O "Location")))))
((DEFINE-MIXIN-CATEGORY VEHICLE_PATH-51.4.3 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::DIRECTION
   CATEGORY::WITH-SOURCE CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME>)
   (#<variable NAME> :PRIMITIVE SPARSER::WORD) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Trajectory") (:PREP "from")
    (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Trajectory") (:PREP "to") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Trajectory"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "from") (:IO "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "to") (:IO "Destination"))
   ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY VOID-106 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable PATIENT>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY VOLUNTEER-95.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-THEME
   CATEGORY::WITH-ATTRIBUTE)
  :BINDS
  ((#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable INSTRUMENT> . #<ref-category OBJECT>) (#<variable THEME>)
   (#<variable ATTRIBUTE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Pivot") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY VOLUNTEER-95.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:O "Attribute")))))
((DEFINE-MIXIN-CATEGORY WALTZ-51.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::DIRECTION
   CATEGORY::WITH-GOAL)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME>) (#<variable NAME>)
   (#<variable GOAL>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "to into")
    (:IO "Goal" "+" "state"))
   ((:S "Agent") (:VERB) (:O "Theme") (:IO "Goal"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "path") (:IO "Trajectory"))
   ((:S "Theme") (:VERB) (:PREP "+" "path") (:IO "Trajectory") (:IO "Goal"))
   ((:S "Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY WANT-32.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-THEME) :BINDS
  ((#<variable INSTRUMENT>) (#<variable THEME>)) :REALIZATION
  (((:S "Pivot") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY WANT-32.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Pivot") (:VERB) (:O "Theme")) ((:S "Pivot") (:VERB) (:O "Theme"))
   ((:S "Pivot") (:VERB) (:O "Theme")) ((:S "Pivot") (:VERB) (:O "Theme"))
   ((:S "Pivot") (:VERB) (:O "Theme"))
   ((:S "Pivot") (:VERB) (:O "Theme") (:ADJ))
   ((:S "Pivot") (:VERB) (:O "Theme")) ((:S "Pivot") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY WANT-32.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Pivot") (:VERB) (:O "Theme")) ((:S "Pivot") (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY WEATHER-57 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME) :BINDS ((#<variable THEME> NIL NIL))
  :REALIZATION
  (((:S "it[+be]") (:VERB) (:PREP "with") (:IO "Theme"))
   ((:S "it") (:LEX "[+be]") (:VERB) (:IO "Theme"))
   ((:S "it") (:LEX "[+be]") (:VERB)))))
((DEFINE-MIXIN-CATEGORY WEEKEND-56 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-THEME CATEGORY::WITH-CAUSE) :BINDS
  ((#<variable THEME>) (#<variable CAUSE>)) :REALIZATION
  (((:S "Theme") (:VERB) (:PREP "+" "loc") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY WINK-40.3.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-PATIENT CATEGORY::WITH-THEME
   CATEGORY::WITH-RECIPIENT)
  :BINDS
  ((#<variable AGENT>) (#<variable PATIENT>) (#<variable THEME>)
   (#<variable RECIPIENT>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:PREP "in") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Theme"))
   ((:S "Agent") (:VERB) (:PREP "+" "dest_dir") (:IO "Recipient"))
   ((:S "Agent") (:VERB))
   ((:S "Agent") (:VERB) (:O "Patient") (:PREP "in") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY WIPE_INSTR-10.4.2 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION CATEGORY::WITH-INSTRUMENT CATEGORY::WITH-RESULT)
  :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable THEME> NIL NIL) (#<variable SOURCE>)
   (#<variable DESTINATION>) (#<variable INSTRUMENT> NIL NIL)
   (#<variable RESULT-ROLE>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Initial_Location") (:IO "Result"))
   ((:S "Agent") (:VERB)) ((:S "Agent") (:VERB) (:O "Initial_Location"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src")
    (:IO "Initial_Location")))))
((DEFINE-MIXIN-CATEGORY WIPE_INSTR-10.4.2-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-DESTINATION) :BINDS
  ((#<variable DESTINATION>)) :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "dest_conf")
    (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY WIPE_MANNER-10.4.1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-AGENT CATEGORY::WITH-THEME CATEGORY::WITH-SOURCE
   CATEGORY::WITH-DESTINATION)
  :BINDS
  ((#<variable AGENT>) (#<variable THEME> NIL NIL) (#<variable SOURCE>)
   (#<variable DESTINATION>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:O "Theme")) ((:S "Agent") (:VERB) (:O "Source"))
   ((:S "Agent") (:VERB) (:O "Theme") (:PREP "+" "src") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY WIPE_MANNER-10.4.1-1 :SPECIALIZES
  SUBCATEGORIZATION-PATTERN :MIXINS (CATEGORY::WITH-SOURCE) :BINDS
  ((#<variable SOURCE>)) :REALIZATION
  (((:S "Agent") (:VERB) (:LEX "at") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY WISH-62 :SPECIALIZES SUBCATEGORIZATION-PATTERN :MIXINS
  (CATEGORY::WITH-EXPERIENCER CATEGORY::WITH-STIMULUS) :BINDS
  ((#<variable EXPERIENCER> NIL NIL) (#<variable STIMULUS>)) :REALIZATION
  (((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus"))
   ((:S "Experiencer") (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY WITHDRAW-82 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-SOURCE) :BINDS
  ((#<variable AGENT> NIL NIL) (#<variable SOURCE>)) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY WITHDRAW-82-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "of") (:IO "Source"))
   ((:S "Agent") (:VERB) (:PREP "of") (:IO "Source")) ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY WITHDRAW-82-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "from") (:IO "Source"))
   ((:S "Agent") (:VERB) (:PREP "from") (:IO "Source"))
   ((:S "Agent") (:VERB) (:LEX "away")))))
((DEFINE-MIXIN-CATEGORY WITHDRAW-82-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS NIL :BINDS NIL :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "from") (:IO "Source"))
   ((:S "Agent") (:VERB)))))
((DEFINE-MIXIN-CATEGORY WORK-73.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
  :MIXINS (CATEGORY::WITH-AGENT CATEGORY::WITH-AGENT CATEGORY::WITH-THEME)
  :BINDS
  ((#<variable AGENT> NIL NIL)
   (#<variable AGENT> :OR #<ref-category PRONOUN>
    #<ref-category PHYSICAL-AGENT>)
   (#<variable THEME>))
  :REALIZATION
  (((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "at")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "at") (:IO "Theme"))
   ((:S "Agent") (:VERB) (:PREP "with") (:IO "Co-Agent") (:PREP "on")
    (:NP "Theme"))
   ((:S "Agent") (:VERB) (:PREP "on") (:IO "Theme")) ((:S "Agent") (:VERB)))))