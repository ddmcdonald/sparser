
((DEFINE-MIXIN-CATEGORY WORK-73.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-CO-AGENT
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "at") (:NP "Theme" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:PREP "at")
                          (:IO "Theme" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "on") (:NP "Theme"))
                         ((:S AGENT) (:VERB) (:PREP "on") (:IO "Theme"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY WITHDRAW-82-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "from") (:IO "Source"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY WITHDRAW-82-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "from")
                          (:IO "Source" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:PREP "from") (:IO "Source"))
                         ((:S AGENT) (:VERB) (:LEX "away")))))
((DEFINE-MIXIN-CATEGORY WITHDRAW-82-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "of")
                          (:IO "Source" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:PREP "of") (:IO "Source"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY WITHDRAW-82 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-SOURCE)
                        :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY WISH-62 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-EXPERIENCER WITH-STIMULUS)
                        :REALIZATION
                        (((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "sc_to_inf"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "that_comp"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "np_ppart"))
                         ((:S EXPERIENCER) (:VERB) (:O "Stimulus" "+" "to_be"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "-" "sentential"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "for_comp")))))
((DEFINE-MIXIN-CATEGORY WIPE_MANNER-10.4.1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((SOURCE (- REGION)))
                        :MIXINS (WITH-SOURCE) :REALIZATION
                        (((:S AGENT) (:VERB) (:LEX "at") (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY WIPE_MANNER-10.4.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((DESTINATION (+ LOCATION)) (SOURCE (+ LOCATION))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY WIPE_INSTR-10.4.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY WIPE_INSTR-10.4.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((DESTINATION (+ LOCATION))
                         (INITIAL_LOCATION (+ LOCATION)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION
                          WITH-INSTRUMENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Initial_Location")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location")))))
((DEFINE-MIXIN-CATEGORY WINK-40.3.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((RECIPIENT (+ ANIMATE)) (THEME (+ COMMUNICATION))
                         (PATIENT (+ BODY_PART)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-THEME
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:PREP "in") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Recipient"))
                         ((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "in")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY WEEKEND-56 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((LOCATION (+ LOCATION)) (THEME (+ ANIMATE)))
                        :MIXINS (WITH-THEME WITH-LOCATION) :REALIZATION
                        (((:S THEME) (:VERB) (:PREP) (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY WEATHER-57 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME) :REALIZATION
                        (((:S IT[+BE]) (:VERB) (:PREP "with") (:IO "Theme"))
                         ((:S IT) (:LEX "[+be]") (:VERB) (:IO "Theme"))
                         ((:S IT) (:LEX "[+be]") (:VERB)))))
((DEFINE-MIXIN-CATEGORY WANT-32.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PIVOT) (:VERB) (:O "Theme" "+" "to_be"))
                         ((:S PIVOT) (:VERB) (:O "Theme" "+" "np_to_inf")))))
((DEFINE-MIXIN-CATEGORY WANT-32.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PIVOT) (:VERB) (:O "Theme" "+" "sc_to_inf"))
                         ((:S PIVOT) (:VERB) (:O "Theme" "+" "poss_ing"))
                         ((:S PIVOT) (:VERB) (:O "Theme" "+" "np_ppart"))
                         ((:S PIVOT) (:VERB) (:O "Theme" "+" "ac_ing"))
                         ((:S PIVOT) (:VERB) (:O "Theme"))
                         ((:S PIVOT) (:VERB) (:O "Theme") (:ADJ))
                         ((:S PIVOT) (:VERB) (:O "Theme" "+" "np_omit_ing"))
                         ((:S PIVOT) (:VERB) (:O "Theme" "+" "for_comp")))))
((DEFINE-MIXIN-CATEGORY WANT-32.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((PIVOT (+ ANIMATE))) :MIXINS (WITH-PIVOT WITH-THEME)
                        :REALIZATION (((:S PIVOT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY WALTZ-51.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((TRAJECTORY (+ CONCRETE)) (THEME (+ ANIMATE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-TRAJECTORY
                          WITH-DESTINATION
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Trajectory"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Trajectory")
                          (:IO "Destination"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY VOLUNTEER-95.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Attribute")))))
((DEFINE-MIXIN-CATEGORY VOLUNTEER-95.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PIVOT
                          WITH-THEME
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Pivot") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY VOID-106 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY VEHICLE_PATH-51.4.3 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((DESTINATION (+ LOCATION))
                         (INITIAL_LOCATION (+ LOCATION)) (THEME (+ VEHICLE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-TRAJECTORY
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Trajectory") (:PREP "from")
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Trajectory") (:PREP "to")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Trajectory"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY VEHICLE-51.4.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((LOCATION (+ CONCRETE))) :MIXINS
                        (WITH-LOCATION) :REALIZATION
                        (((:S THEME) (:VERB) (:O "Location")))))
((DEFINE-MIXIN-CATEGORY VEHICLE-51.4.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((TRAJECTORY (+ CONCRETE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-TRAJECTORY
                          WITH-DESTINATION
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Trajectory"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Trajectory"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY USE-105.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-PREDICATE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Predicate" "+" "oc_to_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Predicate"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:ADV))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY URGE-58.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient")
                          (:IO "Topic" "+" "that_comp")))))
((DEFINE-MIXIN-CATEGORY URGE-58.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient")
                          (:IO "Result" "+" "oc_to_inf")))))
((DEFINE-MIXIN-CATEGORY URGE-58.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-RESULT)
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY TURN-26.6.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Result")
                          (:PREP "from") (:NP "Initial_State"))
                         ((:S AGENT) (:VERB) (:PREP "from")
                          (:IO "Initial_State") (:PREP "to") (:NP "Result"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY TURN-26.6.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INITIAL_STATE
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB))
                         ((:S PATIENT) (:VERB) (:PREP "into") (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Result"))
                         ((:S PATIENT) (:VERB) (:PREP "from")
                          (:IO "Initial_State") (:PREP "into") (:NP "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "from")
                          (:IO "Initial_State") (:PREP "into")
                          (:NP "Result")))))
((DEFINE-MIXIN-CATEGORY TRY-61.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "sc_to_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "np_omit_ing")))))
((DEFINE-MIXIN-CATEGORY TRIFLE-105.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY TRICK-59.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-PREDICATE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Result" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Predicate" "+" "oc_ing"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY TRANSFER_MESG-37.1.1-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:PREP "about")
                          (:IO "Topic" "+" "ac_ing"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "oc_to_inf"))
                         ((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY TRANSFER_MESG-37.1.1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY TRANSFER_MESG-37.1.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-TOPIC
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Topic" "-" "sentential")
                          (:PREP "to") (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY TRANSCRIBE-25.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((DESTINATION (+ CONCRETE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY TOUCH-20-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Experiencer")
                          (:PREP "on | by") (:IO "Theme") (:PREP "with")
                          (:NP "Instrument")))))
((DEFINE-MIXIN-CATEGORY TOUCH-20 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((INSTRUMENT (+ SOLID)) (THEME (+ BODY_PART))
                         (EXPERIENCER (+ ANIMATE)) (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-EXPERIENCER
                          WITH-THEME
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Experiencer") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Experiencer")))))
((DEFINE-MIXIN-CATEGORY TINGLE-40.8.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((PATIENT (+ BODY_PART)) (EXPERIENCER (+ ANIMATE)))
                        :MIXINS (WITH-EXPERIENCER WITH-PATIENT WITH-STIMULUS)
                        :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "from at")
                          (:IO "Stimulus"))
                         ((:S PATIENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY THROW-17.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-CAUSER) :REALIZATION
                        (((:S CAUSER) (:VERB) (:PREP "into") (:IO "Result")
                          (:IO "Theme"))
                         ((:S CAUSER) (:VERB) (:O "Theme") (:PREP "into")
                          (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY THROW-17.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((DESTINATION (+ ANIMATE))) :MIXINS
                        (WITH-DESTINATION) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY THROW-17.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:ADV))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location") (:PREP) (:NP "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY TERMINUS-47.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-LOCATION)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:PREP "") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY TELL-37.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((TOPIC (+ COMMUNICATION))) :MIXINS
                        (WITH-AGENT WITH-RECIPIENT
                          WITH-TOPIC)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:PREP "of")
                          (:IO "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY TAPE-22.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((CO-PATIENT (+ SOLID)) (PATIENT (+ SOLID))) :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-CO-PATIENT
                          WITH-INSTRUMENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:IO "Result"))
                         ((:S PATIENT "+" "plural") (:VERB) (:LEX "together")
                          (:ADV))
                         ((:S PATIENT "+" "plural") (:VERB) (:ADV))
                         ((:S PATIENT) (:VERB) (:ADV) (:PREP "to on onto")
                          (:IO "Co-Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural")
                          (:LEX "together"))
                         ((:S AGENT) (:VERB) (:O "Patient")
                          (:PREP "to on onto") (:IO "Co-Patient")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")
                          (:PREP "to on onto") (:IO "Co-Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY TALK-37.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((TOPIC (+ COMMUNICATION))) :MIXINS
                        (WITH-AGENT WITH-CO-AGENT
                          WITH-TOPIC)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "about") (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "about") (:IO "Topic")
                          (:PREP "with") (:NP "Co-Agent"))
                         ((:S AGENT) (:VERB) (:PREP "about") (:IO "Topic")
                          (:PREP "to") (:NP "Co-Agent"))
                         ((:S AGENT "+" "plural") (:VERB) (:LEX "together"))
                         ((:S AGENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about") (:NP "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Co-Agent")
                          (:PREP "about") (:NP "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Co-Agent"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SWAT-18.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((LOCATION (+ CONCRETE)) (INSTRUMENT (+ SOLID))
                         (PATIENT (+ CONCRETE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT
                          WITH-LOCATION
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP)
                          (:IO "Location"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result") (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result"))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Patient")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY SWARM-47.5.1-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S LOCATION) (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SWARM-47.5.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THERE) (:VERB) (:O "Theme" "-" "definite")
                          (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY SWARM-47.5.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S LOCATION) (:VERB) (:PREP "with") (:IO "Theme"))
                         ((:S) (:NP "Location") (:VERB) (:IO "Theme"))
                         ((:S THERE) (:VERB) (:O "Theme" "-" "definite")
                          (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY SWARM-47.5.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-LOCATION)
                        :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY SUSTAIN-55.6-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-ATTRIBUTE) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY SUSTAIN-55.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "through")
                          (:IO "Instrument" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY SUSPECT-81 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "of")
                          (:IO "Attribute" "+" "oc_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "of")
                          (:IO "Attribute" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY SUPPORT-15.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")
                          (:PREP "with | through") (:IO "Instrument")))))
((DEFINE-MIXIN-CATEGORY SUPPORT-15.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PIVOT WITH-THEME) :REALIZATION
                        (((:S PIVOT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SUPERVISION-95.2.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-CO-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY SUFFOCATE-40.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Result"))
                         ((:S PATIENT) (:VERB) (:PREP "to") (:IO "Result"))
                         ((:S PATIENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "sc_to_inf"))
                         ((:S AGENT) (:VERB) (:PREP "in")
                          (:IO "Theme" "+" "sc_ing")))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "in at")
                          (:IO "Theme" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "in at")
                          (:IO "Theme" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "sc_to_inf")))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "in")
                          (:IO "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:PREP "in")
                          (:IO "Theme" "+" "sc_ing"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SUCCEED-74 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        NIL))
((DEFINE-MIXIN-CATEGORY SUBSTITUTE-13.6.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S THEME) (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY SUBSTITUTE-13.6.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-THEME WITH-CO-THEME
                          WITH-LOCATION)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:O "Location") (:PREP "with")
                          (:IO "Co-Theme"))
                         ((:S THEME "+" "plural") (:VERB) (:O "Location"))
                         ((:S THEME) (:VERB) (:PREP "for into")
                          (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY SUBSTANCE_EMISSION-43.4-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY SUBSTANCE_EMISSION-43.4-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-LOCATION) :REALIZATION
                        (((:S THEME) (:VERB) (:LEX "out"))
                         ((:S THERE) (:VERB) (:O "Source") (:PREP)
                          (:IO "Location"))
                         ((:S) (:NP "Location") (:VERB) (:IO "Source"))
                         ((:S LOCATION) (:VERB) (:PREP "with") (:IO "Theme"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB) (:PREP "from out_of")
                          (:IO "Source"))
                         ((:S SOURCE) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SUBSTANCE_EMISSION-43.4 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-THEME WITH-SOURCE) :REALIZATION
                        (((:S SOURCE) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SUBORDINATE-95.2.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-CO-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY SUBJUGATE-42.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY STOP-55.4-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "be_sc_ing")))))
((DEFINE-MIXIN-CATEGORY STOP-55.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:ADV)) ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY STOP-55.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((THEME (+ EVENTIVE))) :MIXINS
                        (WITH-AFFECTOR WITH-THEME) :REALIZATION
                        (((:S AFFECTOR) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY STIMULUS_SUBJECT-30.4 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER WITH-STIMULUS) :REALIZATION
                        (((:S STIMULUS) (:VERB) (:PREP "like"))
                         ((:S STIMULUS) (:VERB) (:ADJ) (:PREP "to")
                          (:IO "Experiencer"))
                         ((:S STIMULUS) (:VERB) (:ADJ)))))
((DEFINE-MIXIN-CATEGORY STIMULATE-59.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-PREDICATE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Predicate" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Predicate" "+" "oc_ing"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY STEAL-10.5-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Beneficiary")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY STEAL-10.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((BENEFICIARY (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE
                          WITH-BENEFICIARY)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Source") (:PREP "for") (:NP "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY STALK-35.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-LOCATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Location"))
                         ((:S AGENT) (:VERB) (:O "Location") (:PREP "for")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SPRAY-9.7-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ CONCRETE))) :MIXINS (WITH-THEME)
                        :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY SPRAY-9.7-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Destination")))))
((DEFINE-MIXIN-CATEGORY SPRAY-9.7-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:LEX "at")
                          (:IO "Destination"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY SPRAY-9.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Destination") (:PREP "with")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY SPLIT-23.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((CO-PATIENT (+ SOLID)) (PATIENT (+ SOLID))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-CO-PATIENT)
                        :REALIZATION
                        (((:S PATIENT "+" "plural") (:VERB) (:LEX "apart")
                          (:ADV))
                         ((:S PATIENT) (:VERB) (:PREP "off off of from")
                          (:IO "Co-Patient") (:ADV))
                         ((:S PATIENT "+" "plural") (:VERB) (:LEX "apart"))
                         ((:S PATIENT) (:VERB) (:PREP "off off of from")
                          (:IO "Co-Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural")
                          (:LEX "apart"))
                         ((:S AGENT) (:VERB) (:O "Patient")
                          (:PREP "off off of from") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SPEND_TIME-104 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-DURATION
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Duration") (:LEX "as")
                          (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Duration") (:LEX "as")
                          (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Duration")))))
((DEFINE-MIXIN-CATEGORY SPATIAL_CONFIGURATION-47.6-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY SPATIAL_CONFIGURATION-47.6 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((THEME (+ CONCRETE)))
                        :MIXINS (WITH-THEME WITH-LOCATION) :REALIZATION
                        (((:S) (:NP "Location") (:VERB) (:IO "Theme"))
                         ((:S THERE) (:VERB) (:PREP) (:IO "Location")
                          (:IO "Theme" "-" "definite"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SPANK-18.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((LOCATION (+ CONCRETE)) (INSTRUMENT (+ CONCRETE))
                         (PATIENT (+ CONCRETE)) (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT
                          WITH-LOCATION
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP)
                          (:IO "Location") (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP)
                          (:IO "Location"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result") (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY SOUND_EXISTENCE-47.4 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((THEME (+ SOUND)))
                        :MIXINS (WITH-THEME WITH-LOCATION) :REALIZATION
                        (((:S LOCATION) (:VERB) (:PREP "with") (:IO "Theme"))
                         ((:S) (:NP "Location") (:VERB) (:IO "Theme"))
                         ((:S THERE) (:VERB) (:O "Theme" "-" "definite"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SOUND_EMISSION-43.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((THEME (- ANIMATE)))
                        :MIXINS
                        (WITH-THEME WITH-LOCATION
                          WITH-AGENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S THERE) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Location"))
                         ((:S) (:NP "Location") (:VERB) (:IO "Theme"))
                         ((:S LOCATION) (:VERB) (:PREP "with") (:IO "Theme"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SNOOZE-40.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SNOOZE-40.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS (WITH-AGENT)
                        :REALIZATION (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SMELL_EMISSION-43.3 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((THEME (- ANIMATE)))
                        :MIXINS (WITH-THEME WITH-LOCATION) :REALIZATION
                        (((:S LOCATION) (:VERB) (:PREP "of") (:IO "Theme"))
                         ((:S LOCATION) (:VERB)) ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SLIDE-11.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((DESTINATION (+ ANIMATE))) :MIXINS
                        (WITH-DESTINATION) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SLIDE-11.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION
                          WITH-TRAJECTORY)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location") (:PREP "to")
                          (:NP "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Trajectory"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Initial_Location")
                          (:PREP "to") (:NP "Destination"))
                         ((:S THEME) (:VERB) (:PREP "to") (:IO "Destination"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Initial_Location"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SIMPLE_DRESSING-41.3.1-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SIMPLE_DRESSING-41.3.1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SIMPLE_DRESSING-41.3.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((THEME (+ GARMENT)) (AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY SIGHT-30.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER WITH-STIMULUS) :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient" "+" "plural")))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient" "+" "plural")
                          (:LEX "together"))
                         ((:S AGENT) (:VERB) (:O "Patient")
                          (:PREP "with into to") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB) (:PREP "with into to")
                          (:IO "Co-Patient") (:ADV)))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient" "+" "plural")
                          (:LEX "together"))
                         ((:S AGENT) (:VERB) (:O "Patient")
                          (:PREP "with into to") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SHAKE-22.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((CO-PATIENT (+ CONCRETE)) (PATIENT (+ CONCRETE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-CO-PATIENT)
                        :REALIZATION
                        (((:S PATIENT "+" "plural") (:VERB) (:ADV)
                          (:LEX "together"))
                         ((:S PATIENT "+" "plural") (:VERB) (:ADV)))))
((DEFINE-MIXIN-CATEGORY SETTLE-36.1.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Goal"))
                         ((:S AGENT) (:VERB) (:O "Co-Agent") (:IO "Goal"))
                         ((:S AGENT) (:VERB) (:O "Goal")))))
((DEFINE-MIXIN-CATEGORY SETTLE-36.1.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-CO-AGENT
                          WITH-TOPIC)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "on") (:NP "Goal" "-" "sentential"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "on")
                          (:IO "Goal" "+" "what_inf"))
                         ((:S AGENT "+" "plural") (:VERB)))))
((DEFINE-MIXIN-CATEGORY SEPARATE-23.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "with")
                          (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SEPARATE-23.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "from")
                          (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SEPARATE-23.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-CO-PATIENT)
                        :REALIZATION
                        (((:S PATIENT "+" "plural") (:VERB) (:ADV))
                         ((:S PATIENT) (:VERB) (:ADV) (:PREP "from")
                          (:IO "Co-Patient"))
                         ((:S PATIENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "from")
                          (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY SEND-11.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((DESTINATION (+ ANIMATE))) :MIXINS
                        (WITH-DESTINATION) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SEND-11.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Destination") (:PREP) (:NP "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location") (:PREP "to")
                          (:NP "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SEEM-109-1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB)
                          (:O "Attribute" "+" "rs_to_inf")))))
((DEFINE-MIXIN-CATEGORY SEEM-109-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:PREP "in")
                          (:IO "Attribute" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY SEEM-109-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB)
                          (:O "Attribute" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY SEEM-109 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-THEME WITH-ATTRIBUTE) :REALIZATION
                        (((:S THEME) (:VERB)
                          (:O "Attribute" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY SEE-30.1-1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:PREP "about of")
                          (:IO "Stimulus")))))
((DEFINE-MIXIN-CATEGORY SEE-30.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "poss_ing"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "oc_ing"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "oc_bare_inf")))))
((DEFINE-MIXIN-CATEGORY SEE-30.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "what_extract"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "how_extract"))
                         ((:S EXPERIENCER) (:VERB) (:O "Stimulus"))
                         ((:S EXPERIENCER) (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY SEE-30.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER WITH-STIMULUS) :REALIZATION
                        (((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "that_comp")))))
((DEFINE-MIXIN-CATEGORY SEARCH-35.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-LOCATION
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Location"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Location")
                          (:PREP "for") (:NP "Theme"))
                         ((:S AGENT) (:VERB) (:PREP "for") (:IO "Theme")
                          (:PREP) (:NP "Location"))
                         ((:S AGENT) (:VERB) (:O "Location") (:PREP "for")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY SCRIBBLE-25.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY SCRIBBLE-25.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((DESTINATION (+ CONCRETE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "on | in")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7-1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:O "Topic" "-" "sentential")
                          (:PREP "to") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7-1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:O "Topic" "-" "sentential")
                          (:PREP "to") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "that_comp")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "quotation"))
                         ((:S AGENT) (:VERB) (:O "Topic") (:PREP "to")
                          (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY SAY-37.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((TOPIC (+ COMMUNICATION))) :MIXINS
                        (WITH-AGENT WITH-TOPIC
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic" "+" "quotation")))))
((DEFINE-MIXIN-CATEGORY SATISFY-55.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S INSTRUMENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY RUSH-53.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((AGENT (+ ANIMATE))) :MIXINS (WITH-AGENT WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "through") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY RUN-51.3.2-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:PREP "to into") (:IO "Result"))
                         ((:S THEME) (:VERB) (:O "Trajectory")))))
((DEFINE-MIXIN-CATEGORY RUN-51.3.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-RESULT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Agent"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Trajectory"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Trajectory")))))
((DEFINE-MIXIN-CATEGORY RUN-51.3.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Trajectory")))))
((DEFINE-MIXIN-CATEGORY RUN-51.3.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((DESTINATION (+ CONCRETE))
                         (INITIAL_LOCATION (+ CONCRETE))
                         (TRAJECTORY (+ CONCRETE)))
                        :MIXINS
                        (WITH-THEME WITH-TRAJECTORY
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S) (:NP "Initial_Location") (:VERB) (:IO "Theme"))
                         ((:S THERE) (:VERB) (:O "Theme" "-" "definite")
                          (:PREP) (:IO "Initial_Location"))
                         ((:S THERE) (:VERB) (:PREP) (:IO "Initial_Location")
                          (:IO "Theme" "-" "definite"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Trajectory"))
                         ((:S THEME) (:VERB) (:PREP "to towards")
                          (:IO "Destination"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY RUMMAGE-35.5-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Location") (:PREP "for")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY RUMMAGE-35.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-LOCATION
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Location")
                          (:PREP "for") (:NP "Theme"))
                         ((:S AGENT) (:VERB) (:PREP "over through into")
                          (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY ROTATE-51.9.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:IO "Extent")))))
((DEFINE-MIXIN-CATEGORY ROTATE-51.9.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-THEME WITH-EXTENT
                          WITH-TRAJECTORY)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:ADV "Trajectory"))
                         ((:S THEME) (:VERB) (:O "Extent")))))
((DEFINE-MIXIN-CATEGORY ROLL-51.3.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((TRAJECTORY (+ CONCRETE)) (THEME (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-INITIAL_LOCATION
                          WITH-TRAJECTORY
                          WITH-DESTINATION
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:IO "Result"))
                         ((:S THEME) (:VERB) (:PREP "to into") (:IO "Result"))
                         ((:S THEME) (:VERB) (:O "Result"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Trajectory"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Trajectory"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY ROB-10.6.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((BENEFICIARY (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE
                          WITH-BENEFICIARY)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Source") (:PREP "for") (:NP "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY RISK-94-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "be_sc_ing")))))
((DEFINE-MIXIN-CATEGORY RISK-94 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY RESULT-27.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((CAUSER (- ANIMATE))) :MIXINS
                        (WITH-CAUSER WITH-THEME) :REALIZATION
                        (((:S PRECONDITION) (:VERB) (:PREP "in | to")
                          (:IO "Patient")))))
((DEFINE-MIXIN-CATEGORY RESPOND-113 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-PREDICATE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to|against") (:IO "Theme")
                          (:PREP "with") (:NP "Predicate"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Predicate"))
                         ((:S AGENT) (:VERB) (:PREP "to|against")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY RESIGN-10.11-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY RESIGN-10.11-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-ATTRIBUTE) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Attribute"))
                         ((:S AGENT) (:VERB) (:PREP "from")
                          (:IO "Source" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY RESIGN-10.11 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-SOURCE)
                        :REALIZATION (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY REQUIRE-103-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB)
                          (:O "Precondition" "+" "sc_to_inf")))))
((DEFINE-MIXIN-CATEGORY REQUIRE-103-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-SOURCE) :REALIZATION
                        (((:S THEME) (:VERB) (:O "Precondition" "+" "ac_ing"))
                         ((:S THEME) (:VERB)
                          (:O "Precondition" "+" "np_to_inf"))
                         ((:S THEME) (:VERB) (:O "Precondition") (:PREP "from")
                          (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY REQUIRE-103 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PRECONDITION WITH-THEME)
                        :REALIZATION
                        (((:S THEME) (:VERB)
                          (:O "Precondition" "+" "that_comp"))
                         ((:S THEME) (:VERB)
                          (:O "Precondition" "+" "for_comp"))
                         ((:S THEME) (:VERB) (:O "Precondition")))))
((DEFINE-MIXIN-CATEGORY REPRESENTATION-110.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-THEME WITH-CO-THEME
                          WITH-CONTEXT)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:O "Co-Theme")
                          (:PREP "in | for | to") (:IO "Context"))
                         ((:S THEME) (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY RENDER-29.90-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S CAUSER) (:VERB) (:O "Patient") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY RENDER-29.90-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S CAUSER) (:VERB) (:O "Patient") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY RENDER-29.90 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-CAUSER WITH-PATIENT WITH-RESULT) :REALIZATION
                        (((:S CAUSER) (:VERB) (:O "Result") (:IO "Patient"))
                         ((:S CAUSER) (:VERB) (:O "Patient") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY REMOVE-10.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY REMEDY-45.7-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT) (:VERB) (:ADV)))))
((DEFINE-MIXIN-CATEGORY REMEDY-45.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ INT_CONTROL))) :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY RELY-70 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Theme" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Theme" "+" "np_to_inf"))
                         ((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Theme" "+" "np_ing"))
                         ((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Theme" "+" "sc_ing")))))
((DEFINE-MIXIN-CATEGORY RELATE-86.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:PREP "to") (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY RELATE-86.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY RELATE-86.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-CO-THEME)
                        :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY REJECT-77.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY REJECT-77.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY REHEARSE-26.8-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY REHEARSE-26.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY REGISTER-54.1-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S THEME) (:VERB) (:O "Value")))))
((DEFINE-MIXIN-CATEGORY REGISTER-54.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Attribute") (:PREP "at")
                          (:IO "Value" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "at")
                          (:IO "Value" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY REGISTER-54.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-VALUE) :REALIZATION
                        (((:S THEME) (:VERB) (:PREP "at | to") (:IO "Value")))))
((DEFINE-MIXIN-CATEGORY REFRAIN-69 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "from")
                          (:IO "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:PREP "from")
                          (:IO "Theme" "+" "sc_ing"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY REFLEXIVE_APPEARANCE-48.1.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((RECIPIENT (+ ANIMATE)) (AGENT (+ ANIMATE))) :MIXINS
                        (WITH-THEME WITH-AGENT
                          WITH-RECIPIENT
                          WITH-REFLEXIVE)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:O "Reflexive"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY RECIPROCATE-112-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Predicate"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY RECIPROCATE-112 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-PREDICATE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:IO "Predicate"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY REAR-26.2.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-MATERIAL) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Material") (:IO "Product")))))
((DEFINE-MIXIN-CATEGORY REAR-26.2.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-PRODUCT)
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY REACH-51.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-GOAL) :REALIZATION
                        (((:S THEME) (:VERB) (:O "Goal")))))
((DEFINE-MIXIN-CATEGORY PUT_SPATIAL-9.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Destination" "+" "adv_loc"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY PUT_DIRECTION-9.4 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Destination" "+" "adv_loc"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PUT-9.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "on upon")
                          (:IO "Destination") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PUT-9.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PUT-9.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Destination" "+" "adv_loc"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY PUSH-12-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Trajectory"))
                         ((:S AGENT) (:VERB) (:PREP)))))
((DEFINE-MIXIN-CATEGORY PUSH-12-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "at against on")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY PUSH-12 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((THEME (+ CONCRETE)) (AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-TRAJECTORY
                          WITH-RESULT)
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PROSECUTE-33.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-ATTRIBUTE) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "as") (:IO "Attribute")
                          (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "as")
                          (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "as")
                          (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY PROSECUTE-33.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ HUMAN))) :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "for")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY PRONOUNCE-29.3.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "with in")
                          (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY PROMOTE-102 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "ac_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PROMISE-37.13 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-RECIPIENT
                          WITH-TOPIC)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY PRICE-54.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((VALUE (+ CURRENCY)) (THEME (+ CONCRETE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-VALUE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "at")
                          (:IO "Value"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PREPARING-26.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ CONCRETE))) :MIXINS (WITH-PATIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary")
                          (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY PREPARING-26.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((MATERIAL (+ CONCRETE)) (PRODUCT (+ CONCRETE)))
                        :MIXINS (WITH-PRODUCT WITH-MATERIAL) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Product") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary")
                          (:IO "Product"))
                         ((:S AGENT) (:VERB) (:O "Product")
                          (:PREP "from out_of with") (:IO "Material"))
                         ((:S AGENT) (:VERB) (:O "Product")))))
((DEFINE-MIXIN-CATEGORY PREPARING-26.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((BENEFICIARY (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-BENEFICIARY) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY POUR-9.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:PREP) (:IO "Initial_Location")
                          (:PREP) (:NP "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location") (:PREP) (:NP "Destination"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Destination" "+" "adv_loc"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY POKE-19-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY POKE-19-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((THEME (+ CONCRETE))) :MIXINS (WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:LEX "at") (:IO "Patient")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Theme")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Instrument") (:LEX "at")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Theme")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY POKE-19 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((INSTRUMENT (+ POINTY)) (PATIENT (+ CONCRETE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S AGENT) (:VERB) (:O "Instrument") (:PREP "into")
                          (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:O "Instrument")
                          (:PREP "through") (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY POISON-42.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY POCKET-9.10-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Destination"))
                         ((:S THEME) (:VERB))
                         ((:S THEME) (:VERB) (:PREP "in on under")
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY POCKET-9.10 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((DESTINATION (+ CONCRETE))
                         (INITIAL_LOCATION (+ CONCRETE)) (THEME (+ CONCRETE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "in on under")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PLAY-114.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME) :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "with")
                          (:IO "Co-Agent"))
                         ((:S AGENT) (:VERB) (:O "Co-Agent"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PLAY-114.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-CO-AGENT)
                        :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY PIT-10.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((SOURCE (+ CONCRETE)) (AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-SOURCE) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY PERFORMANCE-26.7-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Beneficiary")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PERFORMANCE-26.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((BENEFICIARY (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-BENEFICIARY)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PELT-17.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((DESTINATION (+ CONCRETE))
                         (INITIAL_LOCATION (+ CONCRETE)) (THEME (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination"))
                         ((:S AGENT) (:VERB) (:O "Destination") (:PREP "with")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PEER-30.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((AGENT (+ ANIMATE))) :MIXINS (WITH-AGENT WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PAY-68-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-RECIPIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient") (:IO "Asset"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:IO "Asset")
                          (:PREP "for") (:NP "Theme")))))
((DEFINE-MIXIN-CATEGORY PAY-68 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((ASSET (+ CURRENCY))) :MIXINS
                        (WITH-AGENT WITH-ASSET
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Asset"))
                         ((:S AGENT) (:VERB) (:O "Asset") (:PREP "for")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY PATENT-101 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY PAIN-40.8.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((PATIENT (+ BODY_PART)) (EXPERIENCER (+ ANIMATE)))
                        :MIXINS (WITH-EXPERIENCER WITH-PATIENT WITH-STIMULUS)
                        :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "from") (:IO "Stimulus"))
                         ((:S PATIENT) (:VERB) (:O "Experiencer"))
                         ((:S PATIENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY OWN-100.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-PIVOT WITH-THEME) :REALIZATION
                        (((:S PIVOT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY OVERSTATE-37.12 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY OTHER_COS-45.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT) (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY OTHER_COS-45.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ INT_CONTROL))) :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB) (:ADV)) ((:S PATIENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY ORPHAN-29.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ORDER-58.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient")
                          (:IO "Result" "+" "oc_to_inf")))))
((DEFINE-MIXIN-CATEGORY ORDER-58.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Result" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY ORBIT-51.9.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-AXIS) :REALIZATION
                        (((:S THEME) (:VERB) (:PREP) (:IO "Axis")))))
((DEFINE-MIXIN-CATEGORY OCCUR-48.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY OCCUR-48.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S IT) (:VERB) (:O "Theme" "+" "that_comp")))))
((DEFINE-MIXIN-CATEGORY OCCUR-48.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-LOCATION)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:PREP "") (:IO "Location"))
                         ((:S THERE) (:VERB) (:O "Theme"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY OBTAIN-13.5.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((ASSET (+ CURRENCY))) :MIXINS (WITH-ASSET)
                        :REALIZATION
                        (((:S ASSET) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Asset")))))
((DEFINE-MIXIN-CATEGORY OBTAIN-13.5.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((SOURCE (+ CONCRETE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY NONVERBAL_EXPRESSION-40.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((RECIPIENT (+ ANIMATE)) (AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RECIPIENT
                          WITH-STIMULUS)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Stimulus"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:PREP "in") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY NONVEHICLE-51.4.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S THEME) (:VERB) (:O "Trajectory")))))
((DEFINE-MIXIN-CATEGORY NONVEHICLE-51.4.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((LOCATION (+ CONCRETE)) (TRAJECTORY (+ CONCRETE))
                         (THEME (+ VEHICLE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-TRAJECTORY
                          WITH-LOCATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Location"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Trajectory"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Trajectory"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY NEGLECT-75.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "sc_to_inf")))))
((DEFINE-MIXIN-CATEGORY NEGLECT-75.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY MURDER-42.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((INSTRUMENT (+ CONCRETE))) :MIXINS
                        (WITH-INSTRUMENT) :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY MURDER-42.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY MULTIPLY-108-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "over")
                          (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY MULTIPLY-108-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY MULTIPLY-108-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "by")
                          (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY MULTIPLY-108 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-CO-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "plural")))))
((DEFINE-MIXIN-CATEGORY MODES_OF_BEING_WITH_MOTION-47.3 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((THEME (+ CONCRETE)) (AGENT (+ INT_CONTROL))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-LOCATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S) (:NP "Location") (:VERB) (:IO "Theme"))
                         ((:S THERE) (:VERB) (:O "Theme" "-" "definite"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY MIX-22.1-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT "+" "plural") (:VERB) (:LEX "together"))
                         ((:S PATIENT "+" "plural") (:VERB))
                         ((:S PATIENT) (:VERB) (:PREP "with into to")
                          (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY MIX-22.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT "+" "plural") (:VERB) (:ADV)
                          (:LEX "together"))
                         ((:S PATIENT "+" "plural") (:VERB) (:ADV))
                         ((:S PATIENT) (:VERB) (:ADV) (:PREP "with into to")
                          (:IO "Co-Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural")
                          (:LEX "together"))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural"))
                         ((:S AGENT) (:VERB) (:O "Patient")
                          (:PREP "with into to") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY MIX-22.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT "+" "plural") (:VERB) (:LEX "together"))
                         ((:S PATIENT "+" "plural") (:VERB)))))
((DEFINE-MIXIN-CATEGORY MIX-22.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT "+" "plural") (:VERB) (:ADV)
                          (:LEX "together"))
                         ((:S PATIENT "+" "plural") (:VERB) (:ADV))
                         ((:S PATIENT) (:VERB) (:ADV) (:PREP "with into to")
                          (:IO "Co-Patient"))
                         ((:S PATIENT) (:VERB) (:PREP "with into to")
                          (:IO "Co-Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural")
                          (:LEX "together"))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural"))
                         ((:S AGENT) (:VERB) (:O "Patient")
                          (:PREP "with into to") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY MIX-22.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((CO-PATIENT (+ CONCRETE)) (PATIENT (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-CO-PATIENT)
                        :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY MINE-10.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((DESTINATION (+ LOCATION))
                         (INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY MEET-36.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB) (:O "Co-Agent"))
                         ((:S AGENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY MEET-36.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB) (:O "Co-Agent"))
                         ((:S AGENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY MEET-36.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((CO-AGENT (+ ANIMATE)) (AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-CO-AGENT) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY MEANDER-47.7-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY MEANDER-47.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ ELONGATED)) (LOCATION (+ CONCRETE)))
                        :MIXINS (WITH-LOCATION WITH-THEME) :REALIZATION
                        (((:S THERE) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Location"))
                         ((:S THERE) (:VERB) (:PREP) (:IO "Location")
                          (:IO "Theme"))
                         ((:S) (:NP "Location") (:VERB) (:IO "Theme"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY MATTER-91 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-EXPERIENCER WITH-STIMULUS)
                        :REALIZATION
                        (((:S STIMULUS "+" "that_comp") (:VERB))
                         ((:S IT) (:VERB) (:O "Stimulus" "+" "that_comp"))
                         ((:S IT) (:VERB) (:PREP "to") (:IO "Experiencer")
                          (:IO "Stimulus" "+" "that_comp"))
                         ((:S STIMULUS) (:VERB) (:PREP "to")
                          (:IO "Experiencer"))
                         ((:S STIMULUS) (:VERB)))))
((DEFINE-MIXIN-CATEGORY MASQUERADE-29.6-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "in") (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Attribute")))))
((DEFINE-MIXIN-CATEGORY MASQUERADE-29.6-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:LEX "like") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY MASQUERADE-29.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-ATTRIBUTE) :REALIZATION
                        (((:S AGENT) (:VERB) (:LEX "as") (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY MARVEL-31.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER WITH-STIMULUS) :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:PREP) (:IO "Stimulus"))
                         ((:S EXPERIENCER) (:VERB)))))
((DEFINE-MIXIN-CATEGORY MARRY-36.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((CO-AGENT (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-CO-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Co-Agent"))
                         ((:S AGENT "+" "plural") (:VERB)))))
((DEFINE-MIXIN-CATEGORY MANNER_SPEAKING-37.3 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((TOPIC (+ COMMUNICATION))) :MIXINS
                        (WITH-AGENT WITH-TOPIC
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Recipient")
                          (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "for") (:IO "Recipient")
                          (:IO "Topic" "+" "oc_to_inf"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Recipient")
                          (:IO "Topic" "+" "oc_to_inf"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Recipient")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "ac_to_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Topic") (:PREP)
                          (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Topic"))
                         ((:S AGENT) (:VERB) (:O "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "about") (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Recipient"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY LURE-59.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-PREDICATE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "into to")
                          (:IO "Predicate" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Predicate" "+" "oc_ing"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY LONG-32.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PIVOT) (:VERB) (:PREP "after") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY LONG-32.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PIVOT) (:VERB) (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY LONG-32.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-PIVOT WITH-THEME) :REALIZATION
                        (((:S PIVOT) (:VERB) (:O "Theme" "+" "sc_to_inf")))))
((DEFINE-MIXIN-CATEGORY LODGE-46 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((THEME (+ ANIMATE))) :MIXINS
                        (WITH-THEME WITH-LOCATION) :REALIZATION
                        (((:S THEME) (:VERB) (:O "Location" "+" "adv_loc"))
                         ((:S THEME) (:VERB) (:PREP "at in with")
                          (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY LINGER-53.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY LINGER-53.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-LOCATION
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "over") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY LIMIT-76 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-CAUSER WITH-PATIENT WITH-GOAL)
                        :REALIZATION
                        (((:S CAUSER) (:VERB) (:O "Patient")
                          (:IO "Goal" "+" "oc_to_inf"))
                         ((:S CAUSER) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Goal"))
                         ((:S CAUSER) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Goal" "+" "oc_ing"))
                         ((:S CAUSER) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY LIGHT_EMISSION-43.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((THEME (- ANIMATE)))
                        :MIXINS
                        (WITH-THEME WITH-LOCATION
                          WITH-AGENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S) (:NP "Location") (:LEX "there") (:VERB)
                          (:IO "Theme"))
                         ((:S THERE) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Location"))
                         ((:S LOCATION) (:VERB) (:PREP "with") (:IO "Theme"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY LET-64.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-BENEFICIARY
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Beneficiary")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY LECTURE-37.11-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Topic" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY LECTURE-37.11-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "poss_ing")))))
((DEFINE-MIXIN-CATEGORY LECTURE-37.11-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:PREP "about") (:NP "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY LECTURE-37.11 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-TOPIC
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "ac_ing")))))
((DEFINE-MIXIN-CATEGORY LEAVE-51.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY LEAVE-51.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ ANIMATE))) :MIXINS
                        (WITH-THEME WITH-SOURCE
                          WITH-GOAL)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:O "Source") (:PREP)
                          (:IO "Destination"))
                         ((:S THEME) (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY LEARN-14-2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "of about")
                          (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY LEARN-14-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "from") (:IO "Source")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP "from") (:IO "Source")
                          (:IO "Topic" "+" "wh_extract"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_comp"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "that_comp")))))
((DEFINE-MIXIN-CATEGORY LEARN-14-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY LEARN-14 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-TOPIC
                          WITH-SOURCE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "from") (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Topic") (:PREP "from")
                          (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY KNEAD-26.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PRODUCT
                          WITH-MATERIAL)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Material"))
                         ((:S AGENT) (:VERB) (:O "Material") (:PREP "into")
                          (:IO "Product"))
                         ((:S MATERIAL) (:VERB) (:PREP "into")
                          (:IO "Product")))))
((DEFINE-MIXIN-CATEGORY KEEP-15.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-LOCATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY JUDGMENT-33.1-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Attribute" "+" "small_clause")))))
((DEFINE-MIXIN-CATEGORY JUDGMENT-33.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "as")
                          (:IO "Attribute")))))
((DEFINE-MIXIN-CATEGORY JUDGMENT-33.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ HUMAN))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY INVOLVE-107.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-GOAL)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "in")
                          (:IO "Goal"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY INVESTIGATE-35.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-LOCATION
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Location"))
                         ((:S AGENT) (:VERB) (:O "Location") (:PREP "for")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY INVEST-13.5.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Asset") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Asset") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY INVEST-13.5.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-ASSET
                          WITH-GOAL)
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Goal")))))
((DEFINE-MIXIN-CATEGORY INTERROGATE-37.1.3 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-RECIPIENT
                          WITH-TOPIC
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient") (:PREP "about")
                          (:IO "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:PREP "as")
                          (:IO "Attribute" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY INTERACT-36.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((CO-AGENT (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-CO-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent"))
                         ((:S AGENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY INTEND-61.2-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic" "+" "np_omit_ing")))))
((DEFINE-MIXIN-CATEGORY INTEND-61.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic" "+" "small_clause"))
                         ((:S AGENT) (:VERB) (:O "Topic" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY INTEND-61.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-TOPIC
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic" "-" "sentential")
                          (:PREP "as") (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "sc_to_inf")))))
((DEFINE-MIXIN-CATEGORY INSTR_COMMUNICATION-37.4.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((TOPIC (+ COMMUNICATION))) :MIXINS
                        (WITH-AGENT WITH-TOPIC
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "for")
                          (:IO "Topic" "+" "for_comp"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "ac_to_inf"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "ac_to_inf"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "ac_to_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:PREP "about")
                          (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:O "Topic") (:PREP "to")
                          (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Topic")))))
((DEFINE-MIXIN-CATEGORY INQUIRE-37.1.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((TOPIC (+ QUESTION))) :MIXINS
                        (WITH-AGENT WITH-RECIPIENT
                          WITH-TOPIC)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wheth_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_comp"))
                         ((:S AGENT) (:VERB) (:PREP "of") (:IO "Recipient")
                          (:PREP "about") (:NP "Topic" "+" "wheth_inf"))
                         ((:S AGENT) (:VERB) (:PREP "of") (:IO "Recipient")
                          (:PREP "about") (:NP "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "of") (:IO "Recipient")
                          (:PREP "about") (:NP "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "of") (:IO "Recipient")
                          (:PREP "about") (:NP "Topic" "+" "wh_comp"))
                         ((:S AGENT) (:VERB) (:PREP "of") (:IO "Recipient")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP "of") (:IO "Recipient")
                          (:IO "Topic" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "wheth_inf"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:PREP "about")
                          (:IO "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "wh_comp"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "wheth_inf"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "wh_comp"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:PREP "about")
                          (:IO "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Recipient"))
                         ((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY INITIATE_COMMUNICATION-37.4.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY INITIATE_COMMUNICATION-37.4.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-RECIPIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY INDICATE-78-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PIVOT) (:VERB) (:O "Topic" "+" "to_be")))))
((DEFINE-MIXIN-CATEGORY INDICATE-78-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PIVOT) (:VERB) (:PREP "to") (:IO "Experiencer")
                          (:IO "Topic" "+" "how_extract"))
                         ((:S PIVOT) (:VERB) (:PREP "to") (:IO "Experiencer")
                          (:IO "Topic" "+" "what_extract"))
                         ((:S PIVOT) (:VERB) (:PREP "to") (:IO "Experiencer")
                          (:IO "Topic" "+" "wh_comp"))
                         ((:S PIVOT) (:VERB) (:PREP "to") (:IO "Experiencer")
                          (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY INDICATE-78 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-EXPERIENCER WITH-PIVOT WITH-TOPIC) :REALIZATION
                        (((:S PIVOT) (:VERB) (:O "Topic" "+" "what_extract"))
                         ((:S PIVOT) (:VERB) (:O "Topic" "+" "wh_comp"))
                         ((:S PIVOT) (:VERB) (:O "Topic" "-" "sentential"))
                         ((:S PIVOT) (:VERB) (:O "Topic" "+" "wh_inf"))
                         ((:S PIVOT) (:VERB) (:O "Topic" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY IMAGE_IMPRESSION-25.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((DESTINATION (+ CONCRETE)) (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB)) ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Destination"))
                         ((:S AGENT) (:VERB) (:O "Destination") (:PREP "with")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY ILLUSTRATE-25.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((DESTINATION (+ CONCRETE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination") (:PREP "with")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Destination")))))
((DEFINE-MIXIN-CATEGORY HURT-40.8.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:O "Patient"))
                         ((:S EXPERIENCER) (:VERB) (:O "Patient" "+" "refl")))))
((DEFINE-MIXIN-CATEGORY HURT-40.8.3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY HURT-40.8.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ BODY_PART))) :MIXINS (WITH-PATIENT)
                        :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY HURT-40.8.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY HUNT-35.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-LOCATION
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB)) ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Location"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Location")
                          (:PREP "for") (:NP "Theme"))
                         ((:S AGENT) (:VERB) (:PREP "for") (:IO "Theme")
                          (:PREP) (:NP "Location"))
                         ((:S AGENT) (:VERB) (:O "Location") (:PREP "for")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY HOLD-15.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((AGENT (+ ANIMATE))) :MIXINS (WITH-AGENT WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY HIT-18.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-INSTRUMENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:LEX "at") (:IO "Patient")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Patient")))))
((DEFINE-MIXIN-CATEGORY HIT-18.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((INSTRUMENT (+ CONCRETE)) (PATIENT (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:O "Patient")
                          (:PREP "to into") (:IO "Result"))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient")
                          (:IO "Result"))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S AGENT) (:VERB) (:O "Instrument")
                          (:PREP "against on") (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result") (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural")
                          (:LEX "together"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY HIRE-13.5.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "to_be")
                          (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "as")
                          (:IO "Attribute" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY HICCUP-40.1.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS (WITH-AGENT)
                        :REALIZATION (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY HERD-47.5.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:LEX "together"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY HELP-72.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with | for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:PREP "with | for")
                          (:IO "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY HELP-72.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with")
                          (:IO "Theme" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY HELP-72.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with")
                          (:IO "Theme" "+" "ac_ing"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary")
                          (:IO "Theme" "+" "oc_to_inf"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary") (:PREP "with")
                          (:IO "Theme" "+" "oc_ing"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary") (:PREP "with")
                          (:IO "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY HELP-72.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-BENEFICIARY
                          WITH-THEME)
                        :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY HARMONIZE-22.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-CO-THEME)
                        :REALIZATION
                        (((:S THEME "+" "plural") (:VERB))
                         ((:S THEME) (:VERB) (:ADV) (:IO "Co-Theme"))
                         ((:S THEME) (:VERB) (:O "Co-Theme"))
                         ((:S THEME "+" "plural") (:VERB) (:ADV)))))
((DEFINE-MIXIN-CATEGORY GROW-26.2.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((PRODUCT (+ CONCRETE)) (PATIENT (+ CONCRETE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-PRODUCT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Product"))
                         ((:S AGENT) (:VERB) (:O "Product")
                          (:PREP "from out_of") (:IO "Patient"))
                         ((:S PRODUCT) (:VERB) (:PREP "from out_of")
                          (:IO "Patient"))
                         ((:S PATIENT) (:VERB) (:PREP "into")
                          (:IO "Product")))))
((DEFINE-MIXIN-CATEGORY GROOM-41.1.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY GORGE-39.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ COMESTIBLE)) (AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "on") (:IO "Patient")))))
((DEFINE-MIXIN-CATEGORY GOBBLE-39.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:LEX "down"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY GOBBLE-39.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:LEX "down"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:LEX "up"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY GOBBLE-39.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS (WITH-AGENT)
                        :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY GIVE-13.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-ASSET) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient") (:IO "Theme")
                          (:PREP "at for on") (:NP "Asset"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Recipient") (:PREP "at for on") (:NP "Asset"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for at")
                          (:IO "Asset")))))
((DEFINE-MIXIN-CATEGORY GIVE-13.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY GET-13.5.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((SOURCE (+ ABSTRACT))) :MIXINS (WITH-SOURCE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "from for on")
                          (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY GET-13.5.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((SOURCE (+ CONCRETE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE
                          WITH-BENEFICIARY
                          WITH-ASSET)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Source") (:PREP "at for") (:NP "Asset"))
                         ((:S ASSET) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Asset"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY FUTURE_HAVING-13.3 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-GOAL)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to for")
                          (:IO "Goal"))
                         ((:S AGENT) (:VERB) (:O "Goal") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY FUNNEL-9.3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:PREP "into")
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY FUNNEL-9.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")
                          (:PREP "between in_between")
                          (:IO "Destination" "+" "plural")))))
((DEFINE-MIXIN-CATEGORY FUNNEL-9.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((TRAJECTORY (+ LOCATION))
                         (INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION
                          WITH-TRAJECTORY)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Trajectory"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Destination" "+" "adv_loc"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY FUNCTION-105.2.1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-PREDICATE) :REALIZATION
                        (((:S THEME) (:VERB) (:O "Predicate")))))
((DEFINE-MIXIN-CATEGORY FUNCTION-105.2.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME) :REALIZATION
                        (((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY FULFILLING-13.4.1-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-RECIPIENT WITH-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "for") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY FULFILLING-13.4.1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY FULFILLING-13.4.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Recipient") (:PREP "with")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to | for")
                          (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY FREE-10.6.3-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S CAUSER) (:VERB) (:O "Source") (:PREP "from")
                          (:IO "Theme" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY FREE-10.6.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S CAUSER) (:VERB) (:O "Source") (:PREP "of")
                          (:IO "Theme" "+" "oc_ing")))))
((DEFINE-MIXIN-CATEGORY FREE-10.6.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-CAUSER WITH-SOURCE WITH-THEME)
                        :REALIZATION
                        (((:S CAUSER) (:VERB) (:O "Source") (:PREP "of")
                          (:IO "Theme" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY FORBID-64.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "ac_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "poss_ing")))))
((DEFINE-MIXIN-CATEGORY FORBID-64.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-BENEFICIARY)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Beneficiary") (:PREP "from")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FOCUS-87.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY FOCUS-87.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-TOPIC) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Topic" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:PREP "on")
                          (:IO "Topic" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY FLOSS-41.2.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ BODY_PART)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with") (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY FLINCH-40.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER WITH-STIMULUS) :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:PREP "at from")
                          (:IO "Stimulus"))
                         ((:S EXPERIENCER) (:VERB)))))
((DEFINE-MIXIN-CATEGORY FIT-54.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-VALUE
                          WITH-LOCATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Value") (:PREP "in")
                          (:IO "Location"))
                         ((:S LOCATION) (:VERB) (:O "Value")))))
((DEFINE-MIXIN-CATEGORY FIRE-10.10 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((SOURCE (+ ORGANIZATION))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "as")
                          (:IO "Attribute" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY FILL-9.8-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination") (:PREP "in")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY FILL-9.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination"))
                         ((:S AGENT) (:VERB) (:O "Destination") (:PREP "with")
                          (:IO "Theme"))
                         ((:S THEME) (:VERB) (:O "Destination")))))
((DEFINE-MIXIN-CATEGORY FERRET-35.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-SOURCE
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY FEEDING-39.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((RECIPIENT (+ ANIMATE)) (THEME (+ COMESTIBLE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY EXIST-47.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-CIRCUMSTANCE WITH-MANNER)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:PREP) (:IO "Manner"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Pivot"))
                         ((:S THEME) (:VERB) (:O "Circumstance")))))
((DEFINE-MIXIN-CATEGORY EXIST-47.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-LOCATION)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY EXHALE-40.1.3-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY EXHALE-40.1.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY EXHALE-40.1.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY EXCLUDE-107.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Goal" "+" "oc_ing")))))
((DEFINE-MIXIN-CATEGORY EXCLUDE-107.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-GOAL)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY EXCHANGE-13.6.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-CO-THEME
                          WITH-CO-AGENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "plural")
                          (:PREP "with") (:IO "Co-Agent"))
                         ((:S AGENT "+" "plural") (:VERB)
                          (:O "Theme" "+" "plural"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY EXCEED-90 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-THEME WITH-CO-THEME
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:O "Co-Theme") (:PREP "in")
                          (:IO "Attribute"))
                         ((:S THEME) (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY ESTIMATE-34.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "to_be"))
                         ((:S AGENT) (:VERB) (:O "Value" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ESTIMATE-34.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-VALUE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "at")
                          (:IO "Value")))))
((DEFINE-MIXIN-CATEGORY ESTABLISH-55.5-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-INSTRUMENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument")))))
((DEFINE-MIXIN-CATEGORY ESTABLISH-55.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-PATIENT)
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1-1-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Trajectory")))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1-1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Destination")))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Initial_Location")))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:PREP) (:IO "Initial_Location"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY ESCAPE-51.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((TRAJECTORY (+ CONCRETE)) (DESTINATION (+ CONCRETE))
                         (INITIAL_LOCATION (+ CONCRETE)) (THEME (+ CONCRETE)))
                        :MIXINS
                        (WITH-THEME WITH-INITIAL_LOCATION
                          WITH-DESTINATION
                          WITH-TRAJECTORY)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:PREP) (:IO "Initial_Location")
                          (:PREP) (:NP "Destination"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Trajectory"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY EQUIP-13.4.2-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY EQUIP-13.4.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY EQUIP-13.4.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient") (:PREP "with")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY ENTITY_SPECIFIC_MODES_BEING-47.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-THEME WITH-LOCATION) :REALIZATION
                        (((:S LOCATION) (:VERB) (:PREP "with") (:IO "Theme"))
                         ((:S) (:NP "Location") (:VERB) (:IO "Theme"))
                         ((:S THERE) (:VERB) (:O "Theme" "-" "definite"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Location"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY ENTITY_SPECIFIC_COS-45.5 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((PATIENT (+ CONCRETE))) :MIXINS (WITH-PATIENT)
                        :REALIZATION (((:S PATIENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY ENSURE-99 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-PRECONDITION WITH-THEME WITH-BENEFICIARY)
                        :REALIZATION
                        (((:S PRECONDITION) (:VERB)
                          (:O "Theme" "+" "oc_to_inf"))
                         ((:S PRECONDITION) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S PRECONDITION) (:VERB) (:O "Beneficiary")
                          (:IO "Theme" "-" "sentential"))
                         ((:S PRECONDITION) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ENGENDER-27.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S CAUSER) (:VERB) (:O "Theme") (:IO "Predicate")))))
((DEFINE-MIXIN-CATEGORY ENGENDER-27.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ ABSTRACT))) :MIXINS
                        (WITH-CAUSER WITH-THEME) :REALIZATION
                        (((:S PRECONDITION) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY ENFORCE-63 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ENCOUNTER-30.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-EXPERIENCER WITH-STIMULUS)
                        :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY EMPLOYMENT-95.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-BENEFICIARY
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Attribute") (:IO "Co-Agent"))
                         ((:S AGENT) (:VERB) (:PREP "on") (:IO "Theme")
                          (:IO "Co-Agent"))
                         ((:S AGENT) (:VERB) (:PREP "on | in | at")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Co-Agent"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY EMPATHIZE-88.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-EXPERIENCER WITH-STIMULUS)
                        :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:PREP "with")
                          (:IO "Stimulus" "+" "what_inf"))
                         ((:S EXPERIENCER) (:VERB) (:PREP "with")
                          (:IO "Stimulus" "+" "poss_ing"))
                         ((:S EXPERIENCER) (:VERB) (:PREP "with")
                          (:IO "Stimulus" "-" "sentential"))
                         ((:S EXPERIENCER) (:VERB)))))
((DEFINE-MIXIN-CATEGORY EAT-39.1-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ BIOTIC))) :MIXINS (WITH-PATIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY EAT-39.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Source"))
                         ((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY EAT-39.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Source"))
                         ((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY EAT-39.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-LOCATION) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY EARN-54.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-THEME WITH-ASSET) :REALIZATION
                        (((:S THEME) (:VERB) (:O "Asset")))))
((DEFINE-MIXIN-CATEGORY DUB-29.3.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY DRIVE-11.5-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Destination") (:PREP) (:NP "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location") (:PREP "to")
                          (:NP "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DRIVE-11.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Destination") (:PREP) (:NP "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location") (:PREP "to towards")
                          (:NP "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to towards")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DRESSING_WELL-41.3.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((PATIENT (+ REFL)))
                        :MIXINS (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:LEX "up") (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:LEX "up")))))
((DEFINE-MIXIN-CATEGORY DRESS-41.1.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient" "+" "refl"))
                         ((:S AGENT) (:VERB) (:O "Patient"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY DISTINGUISH-23.5-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "between") (:IO "Theme")
                          (:IO "Co-Theme"))
                         ((:S INSTRUMENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Co-Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DISTINGUISH-23.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-INSTRUMENT
                          WITH-THEME
                          WITH-CO-THEME)
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DISFUNCTION-105.2.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-THEME) :REALIZATION (((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY DISCOVER-84-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Theme" "-" "sentential") (:PREP "from")
                          (:NP "Source"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Theme" "+" "poss_ing"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY DISCOVER-84-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "from") (:IO "Source")
                          (:PREP "about") (:NP "Theme" "+" "wheth_inf"))
                         ((:S AGENT) (:VERB) (:PREP "from") (:IO "Source")
                          (:PREP "about") (:NP "Theme" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP "from") (:IO "Source")
                          (:PREP "about") (:NP "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "from") (:IO "Source")
                          (:PREP "about") (:NP "Theme" "+" "wh_comp"))
                         ((:S AGENT) (:VERB) (:PREP "from") (:IO "Source")
                          (:IO "Theme" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP "from") (:IO "Source")
                          (:IO "Theme" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:PREP "about")
                          (:IO "Theme" "+" "np_ing")))))
((DEFINE-MIXIN-CATEGORY DISCOVER-84 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY DISASSEMBLE-23.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((CO-PATIENT (+ CONCRETE)) (PATIENT (+ CONCRETE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-CO-PATIENT)
                        :REALIZATION
                        (((:S PATIENT "+" "plural") (:VERB) (:ADV))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "from")
                          (:IO "Co-Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY DISAPPEARANCE-48.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S THEME) (:VERB) (:PREP "from")
                          (:IO "Initial_Location")))))
((DEFINE-MIXIN-CATEGORY DISAPPEARANCE-48.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-THEME WITH-INITIAL_LOCATION) :REALIZATION
                        (((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY DINE-39.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((PATIENT (+ COMESTIBLE)) (AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "on") (:IO "Patient"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY DIFFER-23.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-CO-THEME)
                        :REALIZATION
                        (((:S THEME "+" "plural") (:VERB))
                         ((:S THEME) (:VERB) (:PREP "from with")
                          (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY DIE-42.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-CAUSER) :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "of | from")
                          (:IO "Causer")))))
((DEFINE-MIXIN-CATEGORY DIE-42.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((PATIENT (+ ANIMATE))) :MIXINS (WITH-PATIENT)
                        :REALIZATION (((:S PATIENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY DEVOUR-39.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ BIOTIC))) :MIXINS
                        (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY DESTROY-44 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INSTRUMENT (+ CONCRETE)) (PATIENT (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY DEPRIVE-10.6.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Source") (:PREP "of")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY DEFEND-72.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-BENEFICIARY
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Beneficiary" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary" "+" "ac_ing"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary")
                          (:PREP "against") (:IO "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY DEDUCE-97.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:PREP "from")
                          (:IO "Theme" "+" "that_comp") (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY DEDICATE-79 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-GOAL)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Goal" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Goal" "+" "sc_ing")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1-1-3 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "be_sc_ing")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1-1-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "wheth_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "wh_comp")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "wh_inf")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "what_inf")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "as")
                          (:IO "Result" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "what_extract")))))
((DEFINE-MIXIN-CATEGORY DECLARE-29.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "np_ppart")
                          (:IO "Result" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "to_be"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Result" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Result" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY DEBONE-10.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((SOURCE (+ CONCRETE))) :MIXINS
                        (WITH-AGENT WITH-SOURCE) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY CUT-21.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CUT-21.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((INSTRUMENT (+ CONCRETE)) (PATIENT (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT
                          WITH-SOURCE
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "from")
                          (:IO "Source") (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "from")
                          (:IO "Source"))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient")
                          (:PREP "to into") (:IO "Result"))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result") (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result"))
                         ((:S INSTRUMENT) (:VERB) (:ADV))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB) (:ADV))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Patient")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:PREP "through|into")
                          (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:LEX "at") (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CURTSEY-40.3.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((RECIPIENT (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-RECIPIENT
                          WITH-TOPIC)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic") (:PREP "to")
                          (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Topic"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Recipient"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CREATE-26.4-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Beneficiary")
                          (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY CREATE-26.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CREATE-26.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((BENEFICIARY (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-RESULT
                          WITH-MATERIAL
                          WITH-BENEFICIARY
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Result") (:LEX "as")
                          (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Result") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Result")
                          (:PREP "from out_of") (:IO "Material"))
                         ((:S AGENT) (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY CRANE-40.3.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((RECIPIENT (+ ANIMATE)) (PATIENT (+ BODY_PART))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-TOPIC
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP)
                          (:IO "Recipient") (:PREP "in") (:NP "Topic"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP)
                          (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY COST-54.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((THEME (+ CONCRETE))) :MIXINS
                        (WITH-THEME WITH-VALUE
                          WITH-BENEFICIARY)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:O "Beneficiary") (:IO "Value"))
                         ((:S THEME) (:VERB) (:O "Value")))))
((DEFINE-MIXIN-CATEGORY CORRESPOND-36.1.1-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB)
                          (:O "Topic" "+" "wheth_inf"))
                         ((:S AGENT "+" "plural") (:VERB)
                          (:O "Topic" "+" "wh_comp")))))
((DEFINE-MIXIN-CATEGORY CORRESPOND-36.1.1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB)
                          (:O "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:IO "Topic" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY CORRESPOND-36.1.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-CO-AGENT
                          WITH-TOPIC)
                        :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB)
                          (:O "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about") (:NP "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about") (:NP "Topic" "+" "wheth_inf"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about") (:NP "Topic" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about") (:NP "Topic" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about") (:NP "Topic" "+" "wh_comp"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "about")
                          (:IO "Topic" "-" "sentential"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "what_inf"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "wheth_inf"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "what_extract"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "wh_comp"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "about")
                          (:IO "Topic" "+" "poss_ing"))
                         ((:S AGENT "+" "plural") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CORRELATE-86.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-CO-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "with")
                          (:IO "Co-Theme" "+" "ac_ing"))
                         ((:S THEME) (:VERB) (:PREP "with")
                          (:IO "Co-Theme" "+" "ac_ing")))))
((DEFINE-MIXIN-CATEGORY COPE-83-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY COPE-83-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS NIL :REALIZATION (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY COPE-83 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with")
                          (:IO "Theme" "+" "sc_ing")))))
((DEFINE-MIXIN-CATEGORY COOPERATE-73.1-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "at") (:NP "Theme" "+" "sc_ing"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "at")
                          (:IO "Theme" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "on") (:NP "Theme" "-" "sentential"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "on")
                          (:IO "Theme" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY COOPERATE-73.1-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB) (:PREP "in")
                          (:IO "Theme" "+" "sc_ing"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "in")
                          (:IO "Theme" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY COOPERATE-73.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB) (:PREP "in")
                          (:IO "Theme" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "in") (:NP "Theme" "-" "sentential"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "in")
                          (:IO "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "on") (:NP "Theme" "-" "sentential"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "on")
                          (:IO "Theme" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY COOPERATE-73.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-CO-AGENT
                          WITH-THEME)
                        :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY COOKING-45.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INSTRUMENT (+ SOLID)) (PATIENT (+ CONCRETE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "to into") (:IO "Result")
                          (:PREP "in on with") (:NP "Instrument"))
                         ((:S PATIENT) (:VERB) (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result") (:PREP "in on with")
                          (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result"))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB) (:ADV)) ((:S PATIENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient")
                          (:PREP "in on with") (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CONVERT-26.6.2-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Result" "+" "oc_ing"))
                         ((:S AGENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONVERT-26.6.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "from")
                          (:IO "Initial_State") (:PREP "to") (:NP "Result")))))
((DEFINE-MIXIN-CATEGORY CONVERT-26.6.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-PATIENT WITH-INITIAL_STATE
                          WITH-RESULT)
                        :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "to") (:IO "Result"))
                         ((:S PATIENT) (:VERB) (:PREP "to")
                          (:IO "Result" "+" "sc_ing")))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2-2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "among")
                          (:IO "Recipient" "+" "plural"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY CONTRIBUTE-13.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Recipient")))))
((DEFINE-MIXIN-CATEGORY CONTINUE-55.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((FINAL_TIME (+ TIME))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-FINAL_TIME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "until") (:IO "Time"))
                         ((:S THEME) (:VERB) (:PREP "until") (:IO "Time"))
                         ((:S AGENT) (:VERB)) ((:S THEME) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "rs_to_inf")))))
((DEFINE-MIXIN-CATEGORY CONTIGUOUS_LOCATION-47.8-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONTIGUOUS_LOCATION-47.8-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S THEME) (:LEX "and") (:O "Co-Theme") (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONTIGUOUS_LOCATION-47.8 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((CO-THEME (+ CONCRETE)) (THEME (+ CONCRETE))) :MIXINS
                        (WITH-THEME WITH-CO-THEME) :REALIZATION
                        (((:S THEME) (:VERB) (:O "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY CONTAIN-15.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PIVOT WITH-THEME) :REALIZATION
                        (((:S PIVOT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONSUME-66-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Asset") (:PREP "on")
                          (:IO "Goal" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Asset") (:PREP "on")
                          (:IO "Goal" "+" "sc_ing")))))
((DEFINE-MIXIN-CATEGORY CONSUME-66 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-ASSET
                          WITH-GOAL)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Asset")
                          (:IO "Goal" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:O "Asset")))))
((DEFINE-MIXIN-CATEGORY CONSPIRE-71 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-CO-AGENT
                          WITH-THEME
                          WITH-BENEFICIARY)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "sc_to_inf"))
                         ((:S AGENT) (:VERB) (:PREP "against")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "np_ppart")
                          (:IO "Attribute" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "to_be"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Attribute" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Attribute" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9-1-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "wheth_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Attribute" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Attribute" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Attribute" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "be_sc_ing")))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "wh_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "np_ppart")
                          (:IO "Attribute" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "to_be"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Attribute" "+" "np_p_ing")))))
((DEFINE-MIXIN-CATEGORY CONSIDER-29.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY CONJECTURE-29.5-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "like | as if | as though")
                          (:IO "Theme" "+" "sentential")))))
((DEFINE-MIXIN-CATEGORY CONJECTURE-29.5-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY CONJECTURE-29.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-PREDICATE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:LEX "to")
                          (:LEX "be") (:NP "Predicate")))))
((DEFINE-MIXIN-CATEGORY CONFRONT-98 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "with")
                          (:IO "Instrument" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONFINE-92-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY CONFINE-92 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((DESTINATION (+ LOCATION))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-DESTINATION)
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONFESS-37.10 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-RECIPIENT
                          WITH-TOPIC)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "how_extract"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Topic" "-" "sentential")
                          (:PREP "to") (:IO "Recipient"))
                         ((:S AGENT) (:VERB) (:O "Topic" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "be_sc_ing"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "np_ppart"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "to_be"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY CONDUCT-111.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ EVENTIVE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-BENEFICIARY)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CONCEALMENT-16-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Location"))
                         ((:S AGENT) (:VERB) (:PREP "from")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CONCEALMENT-16 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((BENEFICIARY (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-BENEFICIARY
                          WITH-PATIENT
                          WITH-LOCATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP)
                          (:IO "Location"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "from")
                          (:IO "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY COMPRISE-107.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PIVOT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY COMPRISE-107.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Pivot")))))
((DEFINE-MIXIN-CATEGORY COMPRISE-107.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PIVOT WITH-THEME) :REALIZATION
                        NIL))
((DEFINE-MIXIN-CATEGORY COMPREHEND-87.2-1-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:O "Stimulus")
                          (:PREP "about"))
                         ((:S EXPERIENCER) (:VERB) (:PREP "about | of")
                          (:IO "Stimulus" "+" "wh_extract"))
                         ((:S EXPERIENCER) (:VERB) (:PREP "about | of")
                          (:IO "Stimulus" "+" "wh_inf"))
                         ((:S EXPERIENCER) (:VERB) (:PREP "about | of")
                          (:IO "Stimulus" "+" "poss_ing"))
                         ((:S EXPERIENCER) (:VERB) (:PREP "about | of")
                          (:IO "Stimulus")))))
((DEFINE-MIXIN-CATEGORY COMPREHEND-87.2-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S EXPERIENCER) (:VERB)))))
((DEFINE-MIXIN-CATEGORY COMPREHEND-87.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:O "Stimulus" "+" "to_be"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "wh_inf"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "ac_ing")))))
((DEFINE-MIXIN-CATEGORY COMPREHEND-87.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-EXPERIENCER WITH-ATTRIBUTE WITH-STIMULUS)
                        :REALIZATION
                        (((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "that_comp"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "what_extract"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "wh_comp"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "poss_ing"))
                         ((:S EXPERIENCER) (:VERB) (:O "Stimulus") (:PREP "as")
                          (:IO "Attribute"))
                         ((:S EXPERIENCER) (:VERB) (:O "Stimulus"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY COMPLETE-55.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "be_sc_ing")))))
((DEFINE-MIXIN-CATEGORY COMPLETE-55.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY COMPLAIN-37.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((TOPIC (+ COMMUNICATION))) :MIXINS
                        (WITH-AGENT WITH-TOPIC
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:PREP "about") (:NP "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "quotation"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "quotation"))
                         ((:S AGENT) (:VERB) (:PREP "about") (:IO "Topic")
                          (:PREP "to") (:NP "Recipient"))
                         ((:S AGENT) (:VERB) (:PREP "about") (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Recipient"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY COMPEL-59.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-PREDICATE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient")
                          (:IO "Predicate" "+" "oc_to_inf"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Predicate" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Predicate" "+" "oc_ing"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY COLORING-24 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ CONCRETE)) (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY COIL-9.6-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:ADV)))))
((DEFINE-MIXIN-CATEGORY COIL-9.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((DESTINATION (+ LOCATION))
                         (INITIAL_LOCATION (+ LOCATION))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION
                          WITH-AXIS)
                        :REALIZATION
                        (((:S THEME) (:VERB) (:ADV) (:PREP)
                          (:IO "Destination"))
                         ((:S THEME) (:VERB) (:PREP) (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination")))))
((DEFINE-MIXIN-CATEGORY COGNIZE-85 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER WITH-STIMULUS) :REALIZATION
                        (((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "that_comp"))
                         ((:S EXPERIENCER) (:VERB) (:PREP "about")
                          (:IO "Stimulus" "+" "wh_comp"))
                         ((:S EXPERIENCER) (:VERB) (:PREP "of")
                          (:IO "Stimulus"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY CLING-22.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((CO-THEME (+ CONCRETE)) (THEME (+ CONCRETE)))
                        :MIXINS (WITH-THEME WITH-CO-THEME) :REALIZATION
                        (((:S THEME "+" "plural") (:VERB) (:LEX "together"))
                         ((:S THEME) (:VERB) (:PREP "to with")
                          (:IO "Co-Theme")))))
((DEFINE-MIXIN-CATEGORY CLEAR-10.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:PREP) (:IO "Source"))
                         ((:S SOURCE) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CLEAR-10.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((DESTINATION (+ LOCATION)) (SOURCE (+ LOCATION))
                         (THEME (+ CONCRETE)) (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Source") (:PREP "of")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY CLASSIFY-29.10 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-GOAL)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "in")
                          (:IO "Goal"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "as")
                          (:IO "Goal" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CHIT_CHAT-37.6-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic") (:PREP "with")
                          (:IO "Co-Agent"))
                         ((:S AGENT) (:VERB) (:O "Topic"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_ing"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_extract")))))
((DEFINE-MIXIN-CATEGORY CHIT_CHAT-37.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((TOPIC (+ COMMUNICATION))) :MIXINS
                        (WITH-AGENT WITH-CO-AGENT
                          WITH-TOPIC)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "about") (:IO "Topic"))
                         ((:S AGENT "+" "plural") (:VERB) (:PREP "about")
                          (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "about") (:IO "Topic")
                          (:PREP "with") (:NP "Co-Agent"))
                         ((:S AGENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about") (:NP "Topic"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CHEW-39.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "from") (:IO "Patient"))
                         ((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CHEW-39.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "on") (:IO "Patient"))
                         ((:S AGENT) (:VERB) (:PREP "at") (:IO "Patient"))
                         ((:S AGENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CHEW-39.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((PATIENT (+ COMESTIBLE)) (AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-PATIENT) :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY CHEAT-10.6.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Source" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY CHEAT-10.6.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Source") (:PREP "for")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CHEAT-10.6.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Source") (:PREP "out_of")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Source")))))
((DEFINE-MIXIN-CATEGORY CHASE-51.6 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ CONCRETE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-TRAJECTORY)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "after") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Trajectory"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CHARACTERIZE-29.2-1-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "wh_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "np_ppart")))))
((DEFINE-MIXIN-CATEGORY CHARACTERIZE-29.2-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "ac_ing")))))
((DEFINE-MIXIN-CATEGORY CHARACTERIZE-29.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY CHARACTERIZE-29.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "as")
                          (:IO "Attribute" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:LEX "to be")
                          (:IO "Attribute" "+" "small_clause"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:LEX "as")
                          (:IO "Attribute" "+" "oc_ing")))))
((DEFINE-MIXIN-CATEGORY CHANGE_BODILY_STATE-40.8.4 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER WITH-STIMULUS) :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:PREP "from at")
                          (:IO "Stimulus"))
                         ((:S EXPERIENCER) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CAUSED_CALIBRATABLE_COS-45.6.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "in") (:IO "Attribute")
                          (:PREP "?by") (:NP "?Extent") (:PREP "?from")
                          (:NP "?Intial_State") (:PREP "?to") (:NP "?Result"))
                         ((:S PATIENT) (:VERB) (:PREP "in") (:IO "Attribute")
                          (:IO "?Extent") (:PREP "?from")
                          (:NP "?Initial_State") (:PREP "?to") (:NP "?Result"))
                         ((:S ATTRIBUTE) (:PREP "of") (:O "Patient") (:VERB)
                          (:PREP "by") (:NP "Extent") (:PREP "?from")
                          (:NP "?Initial_State") (:PREP "?to") (:NP "?Result"))
                         ((:S ATTRIBUTE) (:PREP "of") (:O "Patient") (:VERB)
                          (:IO "?Extent") (:PREP "?from")
                          (:NP "?Initial_State") (:PREP "?to") (:NP "?Result"))
                         ((:S PATIENT) (:VERB) (:PREP "?by") (:IO "?Extent")
                          (:PREP "?from") (:NP "?Initial_State") (:PREP "?to")
                          (:NP "?Result"))
                         ((:S PATIENT) (:VERB) (:O "Extent") (:PREP "?from")
                          (:IO "?Initial_State") (:PREP "?to") (:NP "?Result"))
                         ((:S PATIENT) (:VERB)) ((:S PATIENT) (:VERB) (:ADV))
                         ((:S CAUSER) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CAUSED_CALIBRATABLE_COS-45.6.2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-CAUSER WITH-PATIENT WITH-EXTENT
                         WITH-INITIAL_STATE WITH-RESULT WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S CAUSER) (:VERB) (:O "Patient") (:IO "Extent")
                          (:IO "Initial_State") (:NP "Result"))
                         ((:S CAUSER) (:VERB) (:O "Patient") (:IO "Extent")
                          (:IO "Initial_State") (:NP "Result")))))
((DEFINE-MIXIN-CATEGORY CARVE-21.2-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:ADV))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB) (:ADV))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CARVE-21.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:ADV))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB) (:ADV))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CARVE-21.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:ADV))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB) (:ADV))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY CARVE-21.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INSTRUMENT (+ CONCRETE)) (PATIENT (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT)
                        :REALIZATION NIL))
((DEFINE-MIXIN-CATEGORY CARRY-11.4-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((DESTINATION (+ ANIMATE))) :MIXINS
                        (WITH-DESTINATION) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CARRY-11.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to towards")
                          (:IO "Destination") (:PREP) (:NP "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location") (:PREP "to towards")
                          (:NP "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to towards")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CARRY-11.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to towards")
                          (:IO "Destination") (:PREP) (:NP "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location") (:PREP "to towards")
                          (:NP "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "to towards")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CARING-75.2-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "for") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CARING-75.2-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY CARING-75.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY CARING-75.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        NIL))
((DEFINE-MIXIN-CATEGORY CARE-88.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:PREP "about")
                          (:IO "Stimulus" "+" "wh_comp"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "what_extract"))
                         ((:S EXPERIENCER) (:VERB) (:PREP "about")
                          (:IO "Stimulus" "+" "what_extract")))))
((DEFINE-MIXIN-CATEGORY CARE-88.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-EXPERIENCER WITH-STIMULUS)
                        :REALIZATION
                        (((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "wh_comp"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "that_comp"))
                         ((:S EXPERIENCER) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CAPTAIN-29.8-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S BENEFICIARY) (:VERB) (:O "Agent")))))
((DEFINE-MIXIN-CATEGORY CAPTAIN-29.8-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY CAPTAIN-29.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((BENEFICIARY (+ CONCRETE)) (AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-BENEFICIARY) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "for")
                          (:IO "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY CALVE-28.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY CALIBRATABLE_COS-45.6.1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-EXTENT WITH-INITIAL_STATE WITH-RESULT)
                        :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "in") (:IO "Attribute")
                          (:PREP "by") (:NP "Extent") (:PREP "from")
                          (:NP "Initial_State") (:PREP "to") (:NP "Result"))
                         ((:S PATIENT) (:VERB) (:PREP "in") (:IO "Attribute")
                          (:IO "Extent") (:PREP "from") (:NP "Initial_State")
                          (:PREP "to") (:NP "Result"))
                         ((:S ATTRIBUTE) (:PREP "of") (:O "Patient") (:VERB)
                          (:PREP "by") (:NP "Extent") (:PREP "from")
                          (:NP "Initial_State") (:PREP "to") (:NP "?Result"))
                         ((:S ATTRIBUTE) (:PREP "of") (:O "Patient") (:VERB)
                          (:IO "Extent") (:PREP "from") (:NP "Initial_State")
                          (:PREP "to") (:NP "Result"))
                         ((:S PATIENT) (:VERB) (:PREP "by") (:IO "Extent")
                          (:PREP "from") (:NP "Initial_State") (:PREP "to")
                          (:NP "Result"))
                         ((:S PATIENT) (:VERB) (:O "Extent") (:PREP "from")
                          (:IO "Initial_State") (:PREP "to") (:NP "Result")))))
((DEFINE-MIXIN-CATEGORY CALIBRATABLE_COS-45.6.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS
                        (WITH-PATIENT WITH-ATTRIBUTE) :REALIZATION
                        (((:S PATIENT) (:VERB))
                         ((:S PATIENT) (:VERB) (:PREP "in") (:IO "Attribute"))
                         ((:S ATTRIBUTE) (:LEX "of") (:O "Patient") (:VERB)))))
((DEFINE-MIXIN-CATEGORY BUTTER-9.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ CONCRETE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Destination") (:PREP "with")
                          (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Destination")))))
((DEFINE-MIXIN-CATEGORY BUMP-18.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME "+" "plural") (:VERB) (:LEX "together")))))
((DEFINE-MIXIN-CATEGORY BUMP-18.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((THEME (+ CONCRETE)) (LOCATION (+ CONCRETE))) :MIXINS
                        (WITH-LOCATION WITH-THEME) :REALIZATION
                        (((:S THEME) (:VERB) (:PREP "against into onto")
                          (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY BULLY-59.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Result" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "into")
                          (:IO "Result" "+" "oc_ing"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BULGE-47.5.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((LOCATION (+ CONCRETE))) :MIXINS
                        (WITH-LOCATION WITH-THEME) :REALIZATION
                        (((:S LOCATION) (:VERB))
                         ((:S LOCATION) (:VERB) (:PREP "with") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY BUILD-26.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S ASSET) (:VERB) (:O "Beneficiary") (:IO "Product")
                          (:PREP "from out_of") (:NP "Material"))
                         ((:S ASSET) (:VERB) (:O "Product")
                          (:PREP "from out_of") (:IO "Material"))
                         ((:S ASSET) (:VERB) (:O "Beneficiary")
                          (:IO "Product"))
                         ((:S ASSET) (:VERB) (:O "Product"))
                         ((:S AGENT) (:VERB) (:O "Product") (:PREP "for")
                          (:IO "Asset")))))
((DEFINE-MIXIN-CATEGORY BUILD-26.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((ASSET (+ CURRENCY)) (MATERIAL (+ CONCRETE)))
                        :MIXINS
                        (WITH-AGENT WITH-MATERIAL
                          WITH-PRODUCT
                          WITH-BENEFICIARY
                          WITH-ASSET)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Product")
                          (:PREP "from out_of") (:IO "Material") (:PREP "for")
                          (:NP "Asset"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary") (:IO "Product")
                          (:PREP "for") (:NP "Asset"))
                         ((:S MATERIAL) (:VERB) (:O "Product"))
                         ((:S AGENT) (:VERB) (:O "Material") (:PREP "into")
                          (:IO "Product") (:PREP "for") (:NP "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Material") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Product")
                          (:PREP "from out_of") (:IO "Material") (:PREP "for")
                          (:NP "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Beneficiary") (:IO "Product")
                          (:PREP "from out_of") (:NP "Material"))
                         ((:S AGENT) (:VERB) (:O "Product") (:PREP "for")
                          (:IO "Beneficiary"))
                         ((:S AGENT) (:VERB) (:O "Material") (:PREP "into")
                          (:IO "Product"))
                         ((:S AGENT) (:VERB) (:O "Product")
                          (:PREP "from out_of") (:IO "Material"))
                         ((:S AGENT) (:VERB) (:O "Product")))))
((DEFINE-MIXIN-CATEGORY BRING-11.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((DESTINATION (+ ANIMATE))) :MIXINS
                        (WITH-DESTINATION) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "plural")
                          (:LEX "together"))
                         ((:S AGENT) (:VERB) (:O "Destination")
                          (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY BRING-11.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INITIAL_LOCATION (+ LOCATION)) (THEME (+ CONCRETE))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INITIAL_LOCATION
                          WITH-DESTINATION
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:O "Theme")
                          (:IO "Destination" "+" "adv_loc"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location") (:PREP "to")
                          (:NP "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Initial_Location"))
                         ((:S AGENT) (:VERB)
                          (:PREP "against before into on to onto")
                          (:IO "Destination") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:PREP "against before into on to onto")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY BREATHE-40.1.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY BREATHE-40.1.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "on onto")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:PREP "on onto")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY BREAK_DOWN-45.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PATIENT) :REALIZATION
                        (((:S PATIENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY BREAK-45.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS
                        ((INSTRUMENT (+ SOLID)) (PATIENT (+ SOLID))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result") (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result")
                          (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result"))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB) (:ADV)) ((:S PATIENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BRAID-41.2.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ BODY_PART)) (AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BODY_MOTION-49.2-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY BODY_MOTION-49.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Path") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Path"))
                         ((:S AGENT) (:VERB) (:O "Goal"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY BODY_MOTION-49.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ BODY_PART))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-GOAL
                          WITH-PATH)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Path") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:IO "Path")))))
((DEFINE-MIXIN-CATEGORY BODY_INTERNAL_STATES-40.6 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER WITH-STIMULUS) :REALIZATION
                        (((:S EXPERIENCER) (:VERB) (:PREP "from at")
                          (:IO "Stimulus"))
                         ((:S EXPERIENCER) (:VERB)))))
((DEFINE-MIXIN-CATEGORY BODY_INTERNAL_MOTION-49.1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT) :REALIZATION
                        (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY BIRTH-28.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BIRTH-28.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((PATIENT (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-PATIENT) :REALIZATION
                        (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY BILL-54.5 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((ASSET (+ CURRENCY))) :MIXINS
                        (WITH-AGENT WITH-ASSET
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient") (:IO "Asset"))
                         ((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY BERRY-13.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS (WITH-AGENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB)) ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY BENEFIT-72.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-CAUSER WITH-BENEFICIARY)
                        :REALIZATION
                        (((:S BENEFICIARY) (:VERB) (:PREP "from by")
                          (:IO "Causer"))
                         ((:S BENEFICIARY) (:VERB))
                         ((:S CAUSER) (:VERB) (:O "Beneficiary")))))
((DEFINE-MIXIN-CATEGORY BEND-45.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((INSTRUMENT (+ SOLID)) (PATIENT (+ SOLID))
                         (AGENT (+ INT_CONTROL)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-INSTRUMENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result") (:PREP "with") (:NP "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to into")
                          (:IO "Result"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:IO "Result"))
                         ((:S INSTRUMENT) (:VERB) (:O "Patient"))
                         ((:S PATIENT) (:VERB) (:ADV)) ((:S PATIENT) (:VERB))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY BEING_DRESSED-41.3.3 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "in") (:IO "Theme")))))
((DEFINE-MIXIN-CATEGORY BEGIN-55.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S INSTRUMENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "with")
                          (:IO "Instrument"))
                         ((:S THEME) (:VERB) (:PREP "with") (:IO "Instrument"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S THEME) (:VERB)))))
((DEFINE-MIXIN-CATEGORY BEGIN-55.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "be_sc_ing")))))
((DEFINE-MIXIN-CATEGORY BEGIN-55.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-INSTRUMENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "sc_to_inf")))))
((DEFINE-MIXIN-CATEGORY BEG-58.2-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "for")
                          (:IO "Result" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY BEG-58.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "for")
                          (:IO "Result" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY BEG-58.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Result" "+" "sc_to_inf"))
                         ((:S AGENT) (:VERB) (:O "Result" "+" "sc_to_inf")))))
((DEFINE-MIXIN-CATEGORY BECOME-109.1-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT) (:VERB)
                          (:O "Result" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY BECOME-109.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "in | into")
                          (:IO "Result" "-" "sentential")))))
((DEFINE-MIXIN-CATEGORY BECOME-109.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-PATIENT WITH-RESULT)
                        :REALIZATION (((:S PATIENT) (:VERB) (:O "Result")))))
((DEFINE-MIXIN-CATEGORY BATTLE-36.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Co-Agent")
                          (:PREP "about | over") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Co-Agent")
                          (:PREP "about | over") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Co-Agent")
                          (:PREP "about | over") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Co-Agent")
                          (:PREP "about | over") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Co-Agent")
                          (:PREP "about | over") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:O "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY BATTLE-36.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-CO-AGENT
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT "+" "plural") (:VERB)
                          (:PREP "about | over ")
                          (:IO "Theme" "-" "sentential"))
                         ((:S AGENT "+" "plural") (:VERB)
                          (:PREP "about | over") (:IO "Theme" "+" "what_inf"))
                         ((:S AGENT "+" "plural") (:VERB)
                          (:PREP "about | over") (:IO "Theme" "+" "wheth_inf"))
                         ((:S AGENT "+" "plural") (:VERB)
                          (:PREP "about | over")
                          (:IO "Theme" "+" "what_extract"))
                         ((:S AGENT "+" "plural") (:VERB)
                          (:PREP "about | over") (:IO "Theme" "+" "wh_comp"))
                         ((:S AGENT "+" "plural") (:VERB)
                          (:PREP "about | over") (:IO "Topic" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about | over")
                          (:NP "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about | over") (:NP "Theme" "+" "wheth_inf"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about | over") (:NP "Theme" "+" "what_inf"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about | over")
                          (:NP "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")
                          (:PREP "about | over") (:NP "Theme" "+" "wh_comp"))
                         ((:S AGENT "+" "plural") (:VERB))
                         ((:S AGENT) (:VERB) (:PREP "with") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY BASE-97.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "on")
                          (:IO "Source" "+" "ac_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "on")
                          (:IO "Source" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "on")
                          (:IO "Source" "+" "wh_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "on")
                          (:IO "Source")))))
((DEFINE-MIXIN-CATEGORY BANISH-10.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((SOURCE (+ LOCATION)) (THEME (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-SOURCE
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP "to")
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Source"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY AVOID-52 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-LOCATION
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "be_sc_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Location")))))
((DEFINE-MIXIN-CATEGORY ATTEND-107.4-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:PREP) (:IO "Goal")))))
((DEFINE-MIXIN-CATEGORY ATTEND-107.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S THEME) (:VERB) (:O "Goal")))))
((DEFINE-MIXIN-CATEGORY ATTEND-107.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-THEME WITH-GOAL) :REALIZATION
                        NIL))
((DEFINE-MIXIN-CATEGORY ATTACK-60.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-PATIENT)
                        :REALIZATION (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY ATTACK-60.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-PATIENT)
                        :REALIZATION (((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY ASSUMING_POSITION-50 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS ((AGENT (+ ANIMATE)))
                        :MIXINS (WITH-AGENT WITH-LOCATION) :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Location"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY ASSESSMENT-34.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((AGENT (+ ANIMATE))) :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "genitive")
                          (:LEX "'s") (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:PREP "for")
                          (:IO "Attribute"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY APPOINT-29.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RESULT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:LEX "to")
                          (:LEX "be") (:NP "Result" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:LEX "as")
                          (:IO "Result" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme") (:IO "Result")))))
((DEFINE-MIXIN-CATEGORY APPEAL-31.4-3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S STIMULUS) (:VERB)))))
((DEFINE-MIXIN-CATEGORY APPEAL-31.4-2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S STIMULUS) (:VERB) (:PREP "on")
                          (:IO "Experiencer")))))
((DEFINE-MIXIN-CATEGORY APPEAL-31.4-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S STIMULUS) (:VERB) (:PREP "at")
                          (:IO "Experiencer")))))
((DEFINE-MIXIN-CATEGORY APPEAL-31.4 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-STIMULUS WITH-EXPERIENCER) :REALIZATION
                        (((:S STIMULUS) (:VERB) (:PREP "to")
                          (:IO "Experiencer")))))
((DEFINE-MIXIN-CATEGORY ANIMAL_SOUNDS-38 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ COMMUNICATION)) (AGENT (+ ANIMAL)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP) (:IO "Stimulus"))
                         ((:S AGENT) (:VERB) (:O "Theme"))
                         ((:S AGENT) (:VERB) (:PREP) (:IO "Recipient"))
                         ((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY AMUSE-31.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-EXPERIENCER WITH-STIMULUS WITH-RESULT)
                        :REALIZATION
                        (((:S STIMULUS) (:VERB) (:O "Experiencer")
                          (:IO "Result"))
                         ((:S STIMULUS "+" "genitive") (:LEX "'s") (:VERB)
                          (:IO "Experiencer"))
                         ((:S STIMULUS) (:VERB))
                         ((:S EXPERIENCER) (:VERB) (:ADV))
                         ((:S STIMULUS) (:VERB) (:O "Experiencer")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-3-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((CO-PATIENT (+ CONCRETE)) (PATIENT (+ CONCRETE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-CO-PATIENT)
                        :REALIZATION (((:S PATIENT "+" "plural") (:VERB)))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-3-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((CO-PATIENT (+ ANIMATE)) (PATIENT (+ ANIMATE))
                         (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-CO-PATIENT)
                        :REALIZATION (((:S PATIENT "+" "plural") (:VERB)))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-3-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-3 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient" "+" "plural")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S PATIENT "+" "plural") (:VERB)))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-2 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((PATIENT (+ CONCRETE))) :MIXINS
                        (WITH-PATIENT WITH-CO-PATIENT
                          WITH-AGENT)
                        :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "with")
                          (:IO "Co-Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "with")
                          (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-1-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS NIL :MIXINS NIL
                        :REALIZATION (((:S PATIENT "+" "plural") (:VERB)))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2-1 :SPECIALIZES
                        SUBCATEGORIZATION-PATTERN :BINDS
                        ((CO-PATIENT (+ CONCRETE)) (PATIENT (+ CONCRETE)))
                        :MIXINS (WITH-PATIENT WITH-CO-PATIENT) :REALIZATION
                        (((:S PATIENT) (:VERB) (:PREP "with")
                          (:IO "Co-Patient"))
                         ((:S AGENT) (:VERB) (:O "Patient" "+" "plural"))
                         ((:S AGENT) (:VERB) (:O "Patient")
                          (:PREP "into to with") (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY AMALGAMATE-22.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-CO-PATIENT)
                        :REALIZATION
                        (((:S PATIENT "+" "plural") (:VERB) (:ADV))
                         ((:S PATIENT) (:VERB) (:ADV) (:PREP "with")
                          (:IO "Co-Patient")))))
((DEFINE-MIXIN-CATEGORY ALLOW-64.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Beneficiary")
                          (:IO "Theme" "+" "oc_to_inf")))))
((DEFINE-MIXIN-CATEGORY ALLOW-64.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-BENEFICIARY
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "ac_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ADVISE-37.9-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Topic" "+" "quotation"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB)
                          (:PREP
                           "against about concerning on regarding respecting")
                          (:IO "Topic")))))
((DEFINE-MIXIN-CATEGORY ADVISE-37.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((TOPIC (+ COMMUNICATION))) :MIXINS
                        (WITH-AGENT WITH-TOPIC
                          WITH-RECIPIENT)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Recipient") (:PREP "of")
                          (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "quotation"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "wh_inf"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:IO "Topic" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Recipient")
                          (:PREP
                           "against about concerning on regarding respecting")
                          (:IO "Topic"))
                         ((:S AGENT) (:VERB) (:O "Recipient")))))
((DEFINE-MIXIN-CATEGORY ADOPT-93 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ADMIT-64.3-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Location"))
                         ((:S AGENT) (:VERB) (:O "Theme")
                          (:IO "Location" "+" "adv_loc")))))
((DEFINE-MIXIN-CATEGORY ADMIT-64.3 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-LOCATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:IO "Location")))))
((DEFINE-MIXIN-CATEGORY ADMIRE-31.2-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "sc_to_inf")))))
((DEFINE-MIXIN-CATEGORY ADMIRE-31.2 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((EXPERIENCER (+ ANIMATE))) :MIXINS
                        (WITH-STIMULUS WITH-EXPERIENCER WITH-ATTRIBUTE)
                        :REALIZATION
                        (((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "poss_ing"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "be_sc_ing"))
                         ((:S EXPERIENCER) (:VERB)
                          (:O "Stimulus" "+" "that_comp"))
                         ((:S EXPERIENCER) (:VERB) (:O "Stimulus"))
                         ((:S EXPERIENCER) (:VERB) (:O "Stimulus")
                          (:PREP "for") (:IO "Attribute"))
                         ((:S EXPERIENCER) (:VERB) (:O "Stimulus")))))
((DEFINE-MIXIN-CATEGORY ADJUST-26.9 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-GOAL
                          WITH-SOURCE)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Goal"))
                         ((:S AGENT) (:VERB) (:PREP "to")
                          (:IO "Goal" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Goal" "+" "oc_ing"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Goal" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Patient")))))
((DEFINE-MIXIN-CATEGORY ADDICT-96 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS
                        (WITH-AGENT WITH-PATIENT
                          WITH-STIMULUS)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Stimulus" "+" "sc_ing"))
                         ((:S AGENT) (:VERB) (:O "Patient") (:PREP "to")
                          (:IO "Stimulus")))))
((DEFINE-MIXIN-CATEGORY ACT-114-1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Predicate"))
                         ((:S AGENT) (:VERB) (:PREP "on") (:IO "Predicate")))))
((DEFINE-MIXIN-CATEGORY ACT-114-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS NIL :REALIZATION (((:S AGENT) (:VERB)))))
((DEFINE-MIXIN-CATEGORY ACT-114 :SPECIALIZES SUBCATEGORIZATION-PATTERN :BINDS
                        NIL :MIXINS (WITH-AGENT WITH-PREDICATE) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Predicate")))))
((DEFINE-MIXIN-CATEGORY ACQUIESCE-95.1-1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS NIL :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "sc_to_inf")))))
((DEFINE-MIXIN-CATEGORY ACQUIESCE-95.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-AGENT WITH-CO-AGENT
                          WITH-THEME)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:PREP "to") (:IO "Theme"))
                         ((:S AGENT) (:VERB) (:PREP "to") (:IO "Co-Agent")))))
((DEFINE-MIXIN-CATEGORY ACCOMPANY-51.7 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS ((THEME (+ ANIMATE)) (AGENT (+ ANIMATE)))
                        :MIXINS
                        (WITH-AGENT WITH-THEME
                          WITH-DESTINATION)
                        :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme") (:PREP)
                          (:IO "Destination"))
                         ((:S AGENT) (:VERB) (:O "Theme")))))
((DEFINE-MIXIN-CATEGORY ACCEPT-77.1 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS (WITH-AGENT WITH-THEME) :REALIZATION
                        (((:S AGENT) (:VERB) (:O "Theme" "+" "what_extract"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "that_comp"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "poss_ing"))
                         ((:S AGENT) (:VERB) (:O "Theme" "-" "sentential"))
                         ((:S AGENT) (:VERB) (:O "Theme" "+" "how_extract")))))
((DEFINE-MIXIN-CATEGORY ABSORB-39.8 :SPECIALIZES SUBCATEGORIZATION-PATTERN
                        :BINDS NIL :MIXINS
                        (WITH-GOAL WITH-THEME
                          WITH-SOURCE)
                        :REALIZATION
                        (((:S GOAL) (:VERB) (:O "Theme") (:PREP "from")
                          (:IO "Source"))
                         ((:S GOAL) (:VERB) (:O "Theme")))))