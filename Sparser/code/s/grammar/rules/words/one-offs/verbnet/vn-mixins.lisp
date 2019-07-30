;; Written 16:11:1 7/30/2019

(in-package :sparser)


 (define-mixin-category absorb-39.8
  :specializes subcategorization-pattern
  :mixins (WITH-GOAL WITH-THEME WITH-SOURCE)
  :realization ((:S "Goal" :O "Theme" :PREP "from" :IO "Source")
                (:S "Goal" :O "Theme"))) 

 (define-mixin-category accept-77.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category accompany-51.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((THEME PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category acquiesce-95.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "to" :IO "Theme")
                (:S "Agent" :PREP "to" :IO "Co-Agent"))) 

 (define-mixin-category acquiesce-95.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category act-114
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT PREDICATION)
  :binds ((PREDICATE "PREDICATE") (AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Predicate"))) 

 (define-mixin-category act-114-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category act-114-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Predicate")
                (:S "Agent" :PREP "on" :IO "Predicate"))) 

 (define-mixin-category addict-96
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-STIMULUS)
  :binds ((PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Patient" :PREP "to" :IO "Stimulus"))) 

 (define-mixin-category adjust-26.9
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-GOAL WITH-SOURCE)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "to" :IO "Goal")
                (:S "Agent" :O "Patient" :PREP "to" :IO "Goal")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category admire-31.2
  :specializes subcategorization-pattern
  :mixins (WITH-STIMULUS WITH-EXPERIENCER WITH-ATTRIBUTE)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Experiencer" :O "Stimulus" :PREP "for" :IO "Attribute")
                (:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category admire-31.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category admit-64.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-CAUSE)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Theme" :IO "Location"))) 

 (define-mixin-category admit-64.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Location")
                (:S "Agent" :O "Theme" :IO "Location"))) 

 (define-mixin-category adopt-93
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category advise-37.9
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY)) (TOPIC SPEECH-ACT)
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Recipient" :PREP "of" :IO "Topic")
                (:S "Agent" :O "Recipient" :IO "Topic")
                (:S "Agent" :O "Recipient" :PREP
                 "against about concerning on regarding respecting" :IO
                 "Topic")
                (:S "Agent" :O "Recipient"))) 

 (define-mixin-category advise-37.9-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Topic")
                (:S "Agent" :PREP
                 "against about concerning on regarding respecting" :IO
                 "Topic"))) 

 (define-mixin-category allow-64.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme") (:S "Agent" :O "Beneficiary"))) 

 (define-mixin-category allow-64.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Beneficiary" :IO "Theme"))) 

 (define-mixin-category amalgamate-22.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Patient" :ADV)
                (:S "Patient" :ADV :PREP "with" :NP "Co-Patient"))) 

 (define-mixin-category amalgamate-22.2-1
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT WITH-CO-PATIENT)
  :binds ((CO-PATIENT PHYSICAL) (PATIENT PHYSICAL))
  :realization ((:S "Patient" :PREP "with" :IO "Co-Patient")
                (:S "Agent" :O "Patient")
                (:S "Agent" :O "Patient" :PREP "into to with" :IO "Co-Patient"))) 

 (define-mixin-category amalgamate-22.2-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient"))) 

 (define-mixin-category amalgamate-22.2-2
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT WITH-CO-PATIENT WITH-AGENT)
  :binds ((AGENT (OR PHYSICAL-AGENT ABSTRACT))
          (CO-PATIENT (OR PHYSICAL-AGENT ABSTRACT)) (PATIENT PHYSICAL))
  :realization ((:S "Patient" :PREP "with" :IO "Co-Patient")
                (:S "Agent" :O "Patient")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Co-Patient"))) 

 (define-mixin-category amalgamate-22.2-2-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient"))) 

 (define-mixin-category amalgamate-22.2-3
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category amalgamate-22.2-3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient" :PREP "to" :IO "Co-Patient"))) 

 (define-mixin-category amalgamate-22.2-3-1-1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((CO-PATIENT PHYSICAL-AGENT) (PATIENT PHYSICAL-AGENT)
          (AGENT PHYSICAL-AGENT))
  :realization ((:S "Patient"))) 

 (define-mixin-category amalgamate-22.2-3-2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((CO-PATIENT PHYSICAL) (PATIENT PHYSICAL)
          (AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Patient"))) 

 (define-mixin-category amuse-31.1
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS WITH-RESULT)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Stimulus" :O "Experiencer" :IO "Result")
                (:S "Stimulus" :LEX "'s" :IO "Experiencer") (:S "Stimulus")
                (:S "Experiencer" :ADV) (:S "Stimulus" :O "Experiencer"))) 

 (define-mixin-category animal_sounds-38
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RECIPIENT WITH-CAUSE)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Location" :PREP "with" :IO "Agent")
                (:S "Agent" :O "Location") (:S "Agent" :O "Theme")
                (:S "Agent" :PREP :NP "Recipient") (:S "Agent"))) 

 (define-mixin-category appeal-31.4
  :specializes subcategorization-pattern
  :mixins (WITH-STIMULUS WITH-EXPERIENCER)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Stimulus" :PREP "to" :IO "Experiencer"))) 

 (define-mixin-category appeal-31.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Stimulus" :PREP "at" :IO "Experiencer"))) 

 (define-mixin-category appeal-31.4-2
  :specializes subcategorization-pattern
  :realization ((:S "Stimulus" :PREP "on" :IO "Experiencer"))) 

 (define-mixin-category appeal-31.4-3
  :specializes subcategorization-pattern
  :realization ((:S "Stimulus"))) 

 (define-mixin-category appear-48.1.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :realization ((:S "Theme" :O "Location") (:S :NP "Location" :NP "Theme")
                (:S "there" :O "Theme" :PREP :NP "Location")
                (:S "Theme" :PREP :NP "Location") (:S "Theme"))) 

 (define-mixin-category appoint-29.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RESULT)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :LEX "to" :LEX "be" :IO "Result")
                (:S "Agent" :O "Theme" :LEX "as" :IO "Result")
                (:S "Agent" :O "Theme" :IO "Result"))) 

 (define-mixin-category assessment-34.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :LEX "'s" :IO "Attribute")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Attribute")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category assuming_position-50
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-CAUSE)
  :binds ((CAUSE (AND/OR LOCATION REGION)) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP :NP "Location") (:S "Agent"))) 

 (define-mixin-category attack-60.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category attack-60.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent"))) 

 (define-mixin-category attend-107.4
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-GOAL)
  :realization NIL) 

 (define-mixin-category attend-107.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Goal"))) 

 (define-mixin-category attend-107.4-2
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :PREP :NP "Goal"))) 

 (define-mixin-category avoid-52
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-CAUSE WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme") (:S "Agent" :O "Location"))) 

 (define-mixin-category banish-10.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (AND/OR LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL-AGENT) (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "to" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Source")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category base-97.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "on" :IO "Source"))) 

 (define-mixin-category battle-36.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "about | over " :IO "Theme")
                (:S "Agent" :PREP "about | over" :IO "Theme")
                (:S "Agent" :PREP "about | over" :IO "Topic")
                (:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "about | over"
                 :IO "Theme")
                (:S "Agent") (:S "Agent" :PREP "with" :IO "Co-Agent"))) 

 (define-mixin-category battle-36.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Co-Agent" :PREP "about | over" :IO "Theme")
                (:S "Agent" :O "Co-Agent"))) 

 (define-mixin-category become-109.1
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT WITH-RESULT)
  :realization ((:S "Patient" :O "Result"))) 

 (define-mixin-category become-109.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :PREP "in | into" :IO "Result"))) 

 (define-mixin-category become-109.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :O "Result"))) 

 (define-mixin-category beg-58.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Result"))) 

 (define-mixin-category beg-58.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "for" :IO "Result"))) 

 (define-mixin-category beg-58.2-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient" :PREP "for" :IO "Result"))) 

 (define-mixin-category begin-55.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT") (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category begin-55.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category begin-55.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Instrument" :O "Theme")
                (:S "Agent" :O "Theme" :PREP "with" :IO "Instrument")
                (:S "Theme" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Theme") (:S "Theme"))) 

 (define-mixin-category being_dressed-41.3.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "in" :IO "Theme"))) 

 (define-mixin-category bend-45.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((INSTRUMENT SOLID) (PATIENT SOLID))
  :realization ((:S "Agent" :O "Patient" :PREP "to into" :IO "Result" :PREP
                 "with" :NP "Instrument")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :IO "Result")
                (:S "Instrument" :O "Patient") (:S "Patient" :ADV)
                (:S "Patient")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category benefit-72.2
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-BENEFICIARY)
  :realization ((:S "Beneficiary" :PREP "from by" :IO "Causer")
                (:S "Beneficiary") (:S "Causer" :O "Beneficiary"))) 

 (define-mixin-category berry-13.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent"))) 

 (define-mixin-category bill-54.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-EXTENT WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY)) (EXTENT CURRENCY)
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Recipient" :IO "Asset")
                (:S "Agent" :O "Recipient"))) 

 (define-mixin-category birth-28.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((PATIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent"))) 

 (define-mixin-category birth-28.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category body_internal_motion-49.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((PATIENT PRONOUN) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent"))) 

 (define-mixin-category body_internal_states-40.6
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Experiencer" :PREP "from at" :IO "Stimulus")
                (:S "Experiencer"))) 

 (define-mixin-category body_motion-49.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-GOAL WITH-PATH)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Path" :IO "Theme")
                (:S "Agent" :O "Theme" :IO "Path"))) 

 (define-mixin-category body_motion-49.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Path" :IO "Theme")
                (:S "Agent" :PREP :NP "Path") (:S "Agent" :O "Goal")
                (:S "Agent" :O "Theme" :IO "Goal"))) 

 (define-mixin-category body_motion-49.2-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category braid-41.2.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category break-45.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((INSTRUMENT SOLID) (PATIENT SOLID))
  :realization ((:S "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result" :PREP
                 "with" :NP "Instrument")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :IO "Result" :PREP "with" :IO
                 "Instrument")
                (:S "Agent" :O "Patient" :IO "Result")
                (:S "Instrument" :O "Patient") (:S "Patient" :ADV)
                (:S "Patient")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category break_down-45.8
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :realization ((:S "Patient"))) 

 (define-mixin-category breathe-40.1.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP "on onto" :IO "Destination")
                (:S "Agent" :O "Theme")
                (:S "Agent" :PREP "on onto" :IO "Destination") (:S "Agent"))) 

 (define-mixin-category breathe-40.1.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category bring-11.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT")
          (DESTINATION (OR PHYSICAL-AGENT LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL))
  :realization ((:S "Instrument" :O "Theme" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location" :PREP "to"
                 :NP "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location")
                (:S "Agent" :PREP "against before into on to onto" :IO
                 "Destination" :IO "Theme")
                (:S "Agent" :O "Theme" :PREP "against before into on to onto"
                 :IO "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category bring-11.3-1
  :specializes subcategorization-pattern
  :mixins (WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :LEX "together")
                (:S "Agent" :O "Destination" :IO "Theme"))) 

 (define-mixin-category build-26.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-MATERIAL WITH-PRODUCT WITH-BENEFICIARY WITH-EXTENT)
  :binds ((EXTENT CURRENCY) (BENEFICIARY (OR PHYSICAL-AGENT COMPANY))
          (MATERIAL PHYSICAL) (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Agent" :O "Product" :PREP "from out_of" :IO "Material"
                 :PREP "for" :NP "Asset")
                (:S "Agent" :O "Beneficiary" :IO "Product" :PREP "for" :IO
                 "Asset")
                (:S "Material" :O "Product")
                (:S "Agent" :O "Material" :PREP "into" :IO "Product" :PREP
                 "for" :NP "Beneficiary")
                (:S "Agent" :O "Material" :PREP "for" :IO "Beneficiary")
                (:S "Agent" :O "Product" :PREP "from out_of" :IO "Material"
                 :PREP "for" :NP "Beneficiary")
                (:S "Agent" :O "Beneficiary" :IO "Product" :PREP "from out_of"
                 :IO "Material")
                (:S "Agent" :O "Product" :PREP "for" :IO "Beneficiary")
                (:S "Agent" :O "Material" :PREP "into" :IO "Product")
                (:S "Agent" :O "Product" :PREP "from out_of" :IO "Material")
                (:S "Agent") (:S "Agent" :O "Product"))) 

 (define-mixin-category build-26.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Asset" :O "Beneficiary" :IO "Product" :PREP "from out_of"
                 :IO "Material")
                (:S "Asset" :O "Product" :PREP "from out_of" :IO "Material")
                (:S "Asset" :O "Beneficiary" :IO "Product")
                (:S "Asset" :O "Product")
                (:S "Agent" :O "Product" :PREP "for" :IO "Asset"))) 

 (define-mixin-category bulge-47.5.3
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-THEME)
  :binds ((CAUSE PHYSICAL))
  :realization ((:S "Location") (:S "Location" :PREP "with" :IO "Theme"))) 

 (define-mixin-category bully-59.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Patient" :PREP "into" :IO "Result")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category bump-18.4
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-THEME)
  :binds ((THEME PHYSICAL) (CAUSE PHYSICAL))
  :realization ((:S "Theme" :PREP "against into onto" :IO "Location"))) 

 (define-mixin-category bump-18.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :LEX "together"))) 

 (define-mixin-category butter-9.9
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (AND/OR LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Destination" :PREP "with" :IO "Theme")
                (:S "Agent" :O "Destination"))) 

 (define-mixin-category calibratable_cos-45.6.1
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT WITH-ATTRIBUTE)
  :realization ((:S "Patient") (:S "Patient" :PREP "in" :IO "Attribute")
                (:S "Attribute" :LEX "of" :IO "Patient"))) 

 (define-mixin-category calibratable_cos-45.6.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-EXTENT WITH-SOURCE WITH-RESULT)
  :realization ((:S "Patient" :PREP "in" :IO "Attribute" :PREP "?by" :IO
                 "?Extent" :PREP "?from" :NP "?Initial_State" :PREP "?to" :NP
                 "?Result")
                (:S "Patient" :PREP "in" :IO "Attribute" :IO "?Extent" :PREP
                 "?from" :NP "?Initial_State" :PREP "?to" :NP "?Result")
                (:S "Attribute" :PREP "of" :IO "Patient" :PREP "by" :IO
                 "Extent" :PREP "?from" :NP "?Initial_State" :PREP "?to" :NP
                 "?Result")
                (:S "Attribute" :PREP "of" :IO "Patient" :IO "Extent" :PREP
                 "?from" :NP "?Initial_State" :PREP "?to" :NP "?Result")
                (:S "Patient" :PREP "by" :IO "Extent" :PREP "?from" :IO
                 "?Initial_State" :PREP "?to" :NP "?Result")
                (:S "Patient" :O "Extent" :PREP "?from" :IO "?Initial_State"
                 :PREP "?to" :NP "?Result"))) 

 (define-mixin-category calve-28.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((PATIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent"))) 

 (define-mixin-category captain-29.8
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY)
  :binds ((BENEFICIARY PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "for" :IO "Beneficiary"))) 

 (define-mixin-category captain-29.8-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Beneficiary"))) 

 (define-mixin-category captain-29.8-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Beneficiary" :O "Agent"))) 

 (define-mixin-category care-88.1
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Experiencer" :O "Stimulus") (:S "Experiencer"))) 

 (define-mixin-category care-88.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Experiencer" :O "Stimulus")
                (:S "Experiencer" :PREP "about" :IO "Stimulus"))) 

 (define-mixin-category caring-75.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization NIL) 

 (define-mixin-category caring-75.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category caring-75.2-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "to" :IO "Theme"))) 

 (define-mixin-category caring-75.2-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "for" :IO "Theme"))) 

 (define-mixin-category carry-11.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SOURCE LOCATION) (THEME PHYSICAL))
  :realization ((:S "Agent" :O "Theme" :PREP "to towards" :IO "Destination"
                 :PREP :NP "Initial_Location")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location" :PREP
                 "to towards" :NP "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location")
                (:S "Agent" :O "Theme" :PREP "to towards" :IO "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category carry-11.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "to towards" :IO "Destination"
                 :PREP :NP "Initial_Location")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location" :PREP
                 "to towards" :NP "Destination")
                (:S "Agent" :O "Theme" :PREP "to towards" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category carry-11.4-1-1
  :specializes subcategorization-pattern
  :mixins (WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Destination" :IO "Theme"))) 

 (define-mixin-category carve-21.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((INSTRUMENT PHYSICAL) (PATIENT PHYSICAL))
  :realization NIL) 

 (define-mixin-category carve-21.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Instrument" :ADV) (:S "Instrument" :O "Patient")
                (:S "Patient" :ADV)
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category carve-21.2-2
  :specializes subcategorization-pattern
  :realization ((:S "Instrument" :ADV) (:S "Instrument" :O "Patient")
                (:S "Patient" :ADV)
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category caused_calibratable_cos-45.6.2
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-PATIENT WITH-EXTENT WITH-SOURCE WITH-GOAL
           WITH-ATTRIBUTE)
  :realization ((:S "Causer" :O "Patient" :IO "?Extent" :IO "?Source" :IO
                 "?Goal"))) 

 (define-mixin-category caused_calibratable_cos-45.6.2-1
  :specializes subcategorization-pattern
  :mixins (WITH-ATTRIBUTE)
  :realization ((:S "Patient" :PREP "in" :IO "Attribute" :PREP "?by" :IO
                 "?Extent" :PREP "?from" :NP "?Source" :PREP "?to" :NP "?Goal")
                (:S "Patient" :PREP "in" :IO "Attribute" :IO "?Extent" :PREP
                 "?from" :NP "?Source" :PREP "?to" :NP "?Goal")
                (:S "Attribute" :PREP "of" :IO "Patient" :PREP "by" :IO
                 "Extent" :PREP "?from" :NP "?Source" :PREP "?to" :NP "?Goal")
                (:S "Attribute" :PREP "of" :IO "Patient" :IO "?Extent" :PREP
                 "?from" :NP "?Source" :PREP "?to" :NP "?Goal")
                (:S "Patient" :PREP "?by" :IO "?Extent" :PREP "?from" :IO
                 "?Source" :PREP "?to" :NP "?Goal")
                (:S "Patient" :O "Extent" :PREP "?from" :IO "?Source" :PREP
                 "?to" :NP "?Goal"))) 

 (define-mixin-category change_bodily_state-40.8.4
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Experiencer" :PREP "from at" :IO "Stimulus")
                (:S "Experiencer"))) 

 (define-mixin-category characterize-29.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((THEME (OR PHYSICAL COMPANY)) (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "as" :IO "Attribute")
                (:S "Agent" :O "Theme" :LEX "to be" :IO "Attribute")
                (:S "Agent" :O "Theme" :LEX "as" :IO "Attribute"))) 

 (define-mixin-category characterize-29.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category characterize-29.2-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category characterize-29.2-1-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category chase-51.6
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((THEME PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "after" :IO "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Trajectory")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category cheat-10.6.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SOURCE (OR PHYSICAL-AGENT LOCATION REGION))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Source" :PREP "out_of" :IO "Theme")
                (:S "Agent" :O "Source"))) 

 (define-mixin-category cheat-10.6.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Source" :PREP "for" :IO "Theme"))) 

 (define-mixin-category cheat-10.6.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "from" :IO "Source"))) 

 (define-mixin-category chew-39.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization NIL) 

 (define-mixin-category chew-39.2-1
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT (AND/OR NIL SOLID)))
  :realization ((:S "Agent" :PREP "on" :IO "Patient")
                (:S "Agent" :PREP "at" :IO "Patient") (:S "Agent")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category chew-39.2-2
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT (AND/OR NIL SOLID)))
  :realization ((:S "Agent" :PREP "from" :IO "Patient") (:S "Agent")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category chit_chat-37.6
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-TOPIC)
  :binds ((TOPIC SPEECH-ACT) (AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "about" :IO "Topic")
                (:S "Agent" :PREP "about" :IO "Topic" :PREP "with" :IO
                 "Co-Agent")
                (:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "about" :IO
                 "Topic")
                (:S "Agent" :PREP "with" :IO "Co-Agent") (:S "Agent"))) 

 (define-mixin-category chit_chat-37.6-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Topic" :PREP "with" :IO "Co-Agent")
                (:S "Agent" :O "Topic"))) 

 (define-mixin-category classify-29.10
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "in" :IO "Goal")
                (:S "Agent" :O "Theme" :PREP "as" :IO "Goal")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category clear-10.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION LOCATION) (SOURCE LOCATION) (THEME PHYSICAL))
  :realization ((:S "Agent" :O "Source" :PREP "of" :IO "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Source")
                (:S "Agent" :O "Source"))) 

 (define-mixin-category clear-10.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :PREP :NP "Source") (:S "Source"))) 

 (define-mixin-category cling-22.5
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME)
  :binds ((THEME PHYSICAL) (THEME PHYSICAL))
  :realization ((:S "Theme" :LEX "together")
                (:S "Theme" :PREP "to with" :IO "Co-Theme"))) 

 (define-mixin-category cognize-85
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Experiencer" :PREP "about" :IO "Stimulus")
                (:S "Experiencer" :PREP "of" :IO "Stimulus")
                (:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category coil-9.6
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION LOCATION) (SOURCE LOCATION) (THEME (AND/OR NIL NIL)))
  :realization ((:S "Theme" :ADV :PREP :IO "Destination")
                (:S "Theme" :PREP :NP "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category coil-9.6-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :ADV))) 

 (define-mixin-category coloring-24
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((PATIENT PHYSICAL))
  :realization ((:S "Agent" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :IO "Result")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category compel-59.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT PREDICATION)
  :binds ((PREDICATE "PREDICATE") (PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Patient" :IO "Predicate")
                (:S "Agent" :O "Patient" :PREP "into" :IO "Predicate")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category complain-37.8
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY)) (TOPIC SPEECH-ACT)
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "to" :IO "Recipient" :PREP "about" :IO
                 "Topic")
                (:S "Agent" :PREP "about" :IO "Topic" :PREP "to" :IO
                 "Recipient")
                (:S "Agent" :PREP "about" :IO "Topic")
                (:S "Agent" :PREP "to" :IO "Recipient" :IO "Topic")
                (:S "Agent" :O "Topic") (:S "Agent" :PREP "to" :IO "Recipient")
                (:S "Agent"))) 

 (define-mixin-category complete-55.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category complete-55.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category comprehend-87.2
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-ATTRIBUTE WITH-STIMULUS)
  :binds ((EXPERIENCER (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Experiencer" :O "Stimulus" :PREP "as" :IO "Attribute")
                (:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category comprehend-87.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category comprehend-87.2-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Experiencer"))) 

 (define-mixin-category comprehend-87.2-1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Experiencer" :O "Stimulus" :PREP "about")
                (:S "Experiencer" :PREP "about | of" :IO "Stimulus"))) 

 (define-mixin-category comprise-107.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-ATTRIBUTE)
  :realization ((:S "Attribute" :O "Theme"))) 

 (define-mixin-category comprise-107.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Attribute"))) 

 (define-mixin-category concealment-16
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY WITH-PATIENT WITH-CAUSE)
  :binds ((BENEFICIARY PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient")
                (:S "Agent" :O "Patient" :PREP :NP "Location")
                (:S "Agent" :O "Patient" :PREP "from" :IO "Beneficiary"))) 

 (define-mixin-category concealment-16-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP :NP "Location")
                (:S "Agent" :PREP "from" :IO "Beneficiary") (:S "Agent"))) 

 (define-mixin-category conduct-111.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Theme" :IO "Beneficiary")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category confess-37.10
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "to" :IO "Recipient" :IO "Topic")
                (:S "Agent" :PREP "to" :IO "Recipient")
                (:S "Agent" :O "Topic" :PREP "to" :IO "Recipient")
                (:S "Agent" :O "Topic"))) 

 (define-mixin-category confine-92
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((DESTINATION LOCATION) (AGENT (AND/OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category confine-92-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "to" :IO "Destination"))) 

 (define-mixin-category confront-98
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT") (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category conjecture-29.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME PREDICATION)
  :binds ((PREDICATE "PREDICATE") (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :LEX "to" :LEX "be" :IO "Predicate"))) 

 (define-mixin-category conjecture-29.5-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category conjecture-29.5-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "like | as if | as though" :IO "Theme"))) 

 (define-mixin-category consider-29.9
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category consider-29.9-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme") (:S "Agent" :O "Theme" :IO "Attribute"))) 

 (define-mixin-category consider-29.9-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme") (:S "Agent" :O "Theme" :IO "Attribute"))) 

 (define-mixin-category consider-29.9-1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "for" :IO "Attribute")
                (:S "Agent" :O "Theme" :IO "Attribute") (:S "Agent" :O "Theme"))) 

 (define-mixin-category consider-29.9-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme") (:S "Agent" :O "Theme" :IO "Attribute"))) 

 (define-mixin-category conspire-71
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme")
                (:S "Agent" :PREP "against" :IO "Beneficiary")
                (:S "Agent" :PREP "with" :IO "Co-Agent") (:S "Agent"))) 

 (define-mixin-category consume-66
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-EXTENT WITH-GOAL)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Asset" :IO "Goal") (:S "Agent" :O "Asset"))) 

 (define-mixin-category consume-66-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Asset" :PREP "on" :IO "Goal"))) 

 (define-mixin-category contain-15.4
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT WITH-THEME)
  :binds ((INSTRUMENT "OBJECT"))
  :realization ((:S "Pivot" :O "Theme"))) 

 (define-mixin-category contiguous_location-47.8
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME)
  :binds ((THEME PHYSICAL) (THEME PHYSICAL))
  :realization ((:S "Theme" :O "Co-Theme"))) 

 (define-mixin-category contiguous_location-47.8-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :LEX "and" :IO "Co-Theme"))) 

 (define-mixin-category contiguous_location-47.8-2
  :specializes subcategorization-pattern
  :realization ((:S "Theme"))) 

 (define-mixin-category continue-55.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME TEMPORALLY-LOCALIZED)
  :binds ((CERTAINTY TIME) (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "until" :IO "Time")
                (:S "Theme" :PREP "until" :IO "Time") (:S "Agent") (:S "Theme")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category contribute-13.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "to" :IO "Recipient" :IO "Theme")
                (:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Recipient"))) 

 (define-mixin-category contribute-13.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "among" :IO "Recipient")
                (:S "Agent" :PREP "to" :IO "Recipient"))) 

 (define-mixin-category contribute-13.2-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category contribute-13.2-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Recipient" :IO "Theme"))) 

 (define-mixin-category contribute-13.2-2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Recipient"))) 

 (define-mixin-category convert-26.6.2
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT WITH-RESULT WITH-SOURCE)
  :realization ((:S "Patient" :PREP "to" :IO "Result"))) 

 (define-mixin-category convert-26.6.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :PREP "from" :IO "Initial_State" :PREP "to" :IO
                 "Result"))) 

 (define-mixin-category convert-26.6.2-1-1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Patient" :PREP "to" :IO "Result")
                (:S "Agent" :O "Patient") (:S "Patient"))) 

 (define-mixin-category cooking-45.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((INSTRUMENT SOLID) (PATIENT PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Patient" :PREP "to into" :IO "Result" :PREP "in on with"
                 :IO "Instrument")
                (:S "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result" :PREP
                 "in on with" :NP "Instrument")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Instrument" :O "Patient") (:S "Patient" :ADV)
                (:S "Patient")
                (:S "Agent" :O "Patient" :PREP "in on with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category cooperate-73.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization NIL) 

 (define-mixin-category cooperate-73.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "in" :IO "Theme")
                (:S "Agent" :PREP "in" :IO "Theme")
                (:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "on" :IO "Theme")
                (:S "Agent" :PREP "on" :IO "Theme"))) 

 (define-mixin-category cooperate-73.1-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "in" :IO "Theme"))) 

 (define-mixin-category cooperate-73.1-3
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "at" :IO "Theme")
                (:S "Agent" :PREP "at" :IO "Theme")
                (:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "on" :IO "Theme")
                (:S "Agent" :PREP "on" :IO "Theme"))) 

 (define-mixin-category cope-83
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "with" :IO "Theme"))) 

 (define-mixin-category cope-83-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category cope-83-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category correlate-86.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "with" :IO "Co-Theme")
                (:S "Theme" :PREP "with" :IO "Co-Theme"))) 

 (define-mixin-category correspond-36.1.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-TOPIC)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Topic")
                (:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "about" :IO
                 "Topic")
                (:S "Agent" :PREP "about" :IO "Topic") (:S "Agent"))) 

 (define-mixin-category correspond-36.1.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Topic")
                (:S "Agent" :PREP "with" :IO "Co-Agent" :IO "Topic"))) 

 (define-mixin-category correspond-36.1.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Topic"))) 

 (define-mixin-category cost-54.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-PATH WITH-BENEFICIARY)
  :binds ((BENEFICIARY (OR PHYSICAL-AGENT COMPANY)) (THEME PHYSICAL))
  :realization ((:S "Theme" :O "Beneficiary" :IO "Value")
                (:S "Theme" :O "Value"))) 

 (define-mixin-category crane-40.3.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((RECIPIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient" :PREP :NP "Recipient" :PREP "in" :NP
                 "Topic")
                (:S "Agent" :O "Patient" :PREP :NP "Recipient")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category create-26.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-RESULT WITH-MATERIAL WITH-BENEFICIARY WITH-ATTRIBUTE)
  :binds ((BENEFICIARY PHYSICAL-AGENT) (MATERIAL "PHYSICAL")
          (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Agent" :O "Result" :LEX "as" :IO "Attribute")
                (:S "Agent" :O "Result" :PREP "for" :IO "Beneficiary")
                (:S "Agent" :O "Result" :PREP "from out_of" :IO "Material")
                (:S "Agent" :O "Result"))) 

 (define-mixin-category create-26.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category create-26.4-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Beneficiary" :IO "Result"))) 

 (define-mixin-category curtsey-40.3.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((RECIPIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Topic" :PREP "to" :IO "Recipient")
                (:S "Agent" :O "Topic") (:S "Agent" :PREP :NP "Recipient")
                (:S "Agent"))) 

 (define-mixin-category cut-21.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-SOURCE WITH-RESULT)
  :binds ((INSTRUMENT PHYSICAL) (PATIENT PHYSICAL))
  :realization ((:S "Agent" :O "Patient" :PREP "from" :IO "Source" :PREP "with"
                 :NP "Instrument")
                (:S "Agent" :O "Patient" :PREP "from" :IO "Source")
                (:S "Instrument" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Instrument" :O "Patient" :IO "Result")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result" :PREP
                 "with" :NP "Instrument")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :IO "Result" :PREP "with" :IO
                 "Instrument")
                (:S "Agent" :O "Patient" :IO "Result") (:S "Instrument" :ADV)
                (:S "Instrument" :O "Patient") (:S "Patient" :ADV)
                (:S "Agent" :LEX "at" :IO "Patient" :PREP "with" :IO
                 "Instrument")
                (:S "Agent" :PREP "through|into" :IO "Patient")
                (:S "Agent" :LEX "at" :IO "Patient")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category cut-21.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT (OR NIL PRONOUN)))
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category debone-10.8
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL) (SOURCE PHYSICAL)
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Source"))) 

 (define-mixin-category declare-29.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RESULT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme") (:S "Agent" :O "Theme" :IO "Result"))) 

 (define-mixin-category declare-29.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "as" :IO "Result")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category declare-29.4-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category declare-29.4-1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category declare-29.4-1-1-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category declare-29.4-1-1-3
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category declare-29.4-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category dedicate-79
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "to" :IO "Goal"))) 

 (define-mixin-category deduce-97.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "from" :IO "Theme" :IO "Source")
                (:S "Agent" :O "Theme" :PREP "from" :IO "Source")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category defend-72.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((BENEFICIARY (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Beneficiary" :PREP "against" :IO "Theme")
                (:S "Agent" :O "Beneficiary"))) 

 (define-mixin-category deprive-10.6.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SOURCE (OR PHYSICAL-AGENT LOCATION REGION))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Source" :PREP "of" :IO "Theme")
                (:S "Agent" :O "Source"))) 

 (define-mixin-category destroy-44
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((INSTRUMENT PHYSICAL) (PATIENT PHYSICAL))
  :realization ((:S "Instrument" :O "Patient")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category devour-39.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((PATIENT PATHOGEN) (AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category die-42.4
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT WITH-CAUSE)
  :binds ((PATIENT PHYSICAL-AGENT))
  :realization ((:S "Patient"))) 

 (define-mixin-category die-42.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :PREP "of | from" :IO "Causer"))) 

 (define-mixin-category differ-23.4
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME)
  :realization ((:S "Theme") (:S "Theme" :PREP "from with" :IO "Co-Theme"))) 

 (define-mixin-category dine-39.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "on" :IO "Patient") (:S "Agent"))) 

 (define-mixin-category disappearance-48.2
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT WITH-SOURCE)
  :realization ((:S "Patient"))) 

 (define-mixin-category disappearance-48.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :PREP "from" :IO "Initial_Location"))) 

 (define-mixin-category disassemble-23.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((CO-PATIENT PHYSICAL) (PATIENT PHYSICAL)
          (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Patient" :ADV)
                (:S "Agent" :O "Patient" :PREP "from" :IO "Co-Patient")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category discover-84
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category discover-84-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme")
                (:S "Agent" :PREP "from" :IO "Source" :PREP "about" :IO
                 "Theme")
                (:S "Agent" :PREP "from" :IO "Source" :IO "Theme")
                (:S "Agent" :PREP "about" :IO "Theme"))) 

 (define-mixin-category discover-84-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "about" :IO "Theme" :PREP "from" :IO
                 "Source")
                (:S "Agent" :PREP "about" :IO "Theme") (:S "Agent"))) 

 (define-mixin-category disfunction-105.2.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME)
  :realization ((:S "Theme"))) 

 (define-mixin-category distinguish-23.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-INSTRUMENT WITH-THEME WITH-THEME)
  :binds ((INSTRUMENT "OBJECT") (AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category distinguish-23.5-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "between" :IO "Theme" :IO "Co-Theme")
                (:S "Instrument" :O "Theme" :PREP "from" :IO "Co-Theme")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category dress-41.1.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((PATIENT (OR PHYSICAL-AGENT PRONOUN)) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient") (:S "Agent"))) 

 (define-mixin-category dressing_well-41.3.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((PATIENT PRONOUN) (AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :LEX "up" :IO "Patient")
                (:S "Agent" :O "Patient" :LEX "up"))) 

 (define-mixin-category drive-11.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (OR PHYSICAL-AGENT LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL) (AGENT (OR PHYSICAL-AGENT MOTOR-VEHICLE)))
  :realization ((:S "Agent" :O "Theme" :PREP "to" :IO "Destination" :PREP :NP
                 "Initial_Location")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location" :PREP
                 "to towards" :NP "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location")
                (:S "Agent" :O "Theme" :PREP "to towards" :IO "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category drive-11.5-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "to" :IO "Destination" :PREP :NP
                 "Initial_Location")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location" :PREP "to"
                 :NP "Destination")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category dub-29.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RESULT)
  :binds ((THEME (OR PHYSICAL COMPANY)) (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme") (:S "Agent" :O "Theme" :IO "Result"))) 

 (define-mixin-category earn-54.6
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-EXTENT)
  :realization ((:S "Theme" :O "Asset"))) 

 (define-mixin-category eat-39.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-CAUSE)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization NIL) 

 (define-mixin-category eat-39.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT (AND/OR PATHOGEN SOLID)))
  :realization ((:S "Agent" :PREP :NP "Source") (:S "Agent")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category eat-39.1-2
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT (AND/OR PATHOGEN SOLID)))
  :realization ((:S "Agent" :PREP :NP "Source") (:S "Agent")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category eat-39.1-3
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT PATHOGEN))
  :realization ((:S "Agent" :O "Patient") (:S "Agent"))) 

 (define-mixin-category empathize-88.2
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Experiencer" :PREP "with" :IO "Stimulus")
                (:S "Experiencer"))) 

 (define-mixin-category employment-95.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT"))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Attribute" :IO "Co-Agent")
                (:S "Agent" :PREP "on" :IO "Theme" :IO "Co-Agent")
                (:S "Agent" :PREP "on | in | at" :IO "Theme")
                (:S "Agent" :O "Co-Agent") (:S "Agent"))) 

 (define-mixin-category encounter-30.5
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER "PHYSICAL-AGENT"))
  :realization ((:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category enforce-63
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (AND/OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category engender-27.1
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-THEME)
  :binds ((THEME ABSTRACT))
  :realization ((:S "Causer" :O "Theme"))) 

 (define-mixin-category engender-27.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Causer" :O "Theme" :IO "Predicate"))) 

 (define-mixin-category ensure-99
  :specializes subcategorization-pattern
  :mixins (PREDICATION WITH-THEME WITH-BENEFICIARY)
  :binds ((PREDICATE "PREDICATE"))
  :realization ((:S "Precondition" :O "Theme" :PREP "for" :IO "Beneficiary")
                (:S "Precondition" :O "Beneficiary" :IO "Theme")
                (:S "Precondition" :O "Theme"))) 

 (define-mixin-category entity_specific_cos-45.5
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT PHYSICAL))
  :realization ((:S "Patient"))) 

 (define-mixin-category entity_specific_modes_being-47.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :binds ((CAUSE (AND/OR LOCATION REGION)))
  :realization ((:S "Location" :PREP "with" :IO "Theme")
                (:S :NP "Location" :NP "Theme") (:S "there" :O "Theme")
                (:S "Theme" :PREP :NP "Location") (:S "Theme"))) 

 (define-mixin-category equip-13.4.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Recipient" :PREP "with" :IO "Theme"))) 

 (define-mixin-category equip-13.4.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Recipient"))) 

 (define-mixin-category equip-13.4.2-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Recipient"))) 

 (define-mixin-category escape-51.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-PATH)
  :binds ((PATH PHYSICAL) (DESTINATION PHYSICAL) (SOURCE PHYSICAL)
          (THEME PHYSICAL))
  :realization ((:S "Theme" :PREP :NP "Initial_Location" :PREP :IO
                 "Destination")
                (:S "Theme" :PREP :NP "Trajectory")
                (:S "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category escape-51.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :PREP :NP "Initial_Location") (:S "Theme"))) 

 (define-mixin-category escape-51.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Initial_Location"))) 

 (define-mixin-category escape-51.1-1-2
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Destination"))) 

 (define-mixin-category escape-51.1-1-3
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Trajectory"))) 

 (define-mixin-category establish-55.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category establish-55.5-1
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT"))
  :realization ((:S "Agent" :O "Theme" :PREP "with" :IO "Instrument"))) 

 (define-mixin-category estimate-34.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "at" :IO "Value"))) 

 (define-mixin-category estimate-34.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Value") (:S "Agent" :O "Theme"))) 

 (define-mixin-category exceed-90
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME WITH-ATTRIBUTE)
  :realization ((:S "Theme" :O "Co-Theme" :PREP "in" :IO "Attribute")
                (:S "Theme" :O "Co-Theme"))) 

 (define-mixin-category exchange-13.6.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-THEME WITH-AGENT)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "with" :IO "Co-Agent")
                (:S "Agent" :PREP :NP "Theme") (:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Co-Theme"))) 

 (define-mixin-category exclude-107.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((THEME (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP "from" :IO "Goal"))) 

 (define-mixin-category exclude-107.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "from" :IO "Goal"))) 

 (define-mixin-category exhale-40.1.3
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT WITH-THEME)
  :binds ((INSTRUMENT PHYSICAL-AGENT))
  :realization NIL) 

 (define-mixin-category exhale-40.1.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Pivot" :O "Theme") (:S "Pivot"))) 

 (define-mixin-category exhale-40.1.3-2
  :specializes subcategorization-pattern
  :realization ((:S "Pivot" :O "Theme") (:S "Pivot"))) 

 (define-mixin-category exist-47.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :realization ((:S "Theme" :PREP :NP "Location") (:S "Theme"))) 

 (define-mixin-category exist-47.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT WITH-MANNER)
  :binds ((MANNER "ADVERB") (INSTRUMENT "OBJECT"))
  :realization ((:S "Theme" :PREP :NP "Manner") (:S "Theme" :PREP :NP "Pivot")
                (:S "Theme" :O "Pivot"))) 

 (define-mixin-category feeding-39.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((RECIPIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Recipient" :IO "Theme")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Recipient")
                (:S "Agent" :O "Recipient"))) 

 (define-mixin-category ferret-35.6
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-SOURCE WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Source"))) 

 (define-mixin-category fill-9.8
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (AND/OR LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Destination") (:S "Theme" :O "Destination")
                (:S "Agent" :O "Destination" :PREP "with" :IO "Theme"))) 

 (define-mixin-category fill-9.8-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Destination" :PREP "in" :IO "Theme"))) 

 (define-mixin-category fire-10.10
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-GOAL WITH-ATTRIBUTE)
  :binds ((SOURCE COMPANY) (THEME (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "as" :IO "Attribute")
                (:S "Agent" :O "Theme" :PREP "from" :IO "Source")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category fit-54.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATH WITH-CAUSE)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Value" :PREP "in" :IO "Location")
                (:S "Location" :O "Value"))) 

 (define-mixin-category flinch-40.5
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Experiencer" :PREP "at from" :IO "Stimulus")
                (:S "Experiencer"))) 

 (define-mixin-category floss-41.2.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT") (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent") (:S "Agent" :O "Patient"))) 

 (define-mixin-category focus-87.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC)
  :binds ((AGENT (OR PHYSICAL-AGENT)))
  :realization ((:S "Agent" :PREP "on" :IO "Topic"))) 

 (define-mixin-category focus-87.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "about" :IO "Topic") (:S "Agent"))) 

 (define-mixin-category forbid-64.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Beneficiary" :PREP "from" :IO "Theme"))) 

 (define-mixin-category forbid-64.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category free-10.6.3
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-SOURCE WITH-THEME)
  :binds ((SOURCE (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Causer" :O "Source" :PREP "of" :IO "Theme"))) 

 (define-mixin-category free-10.6.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Causer" :O "Source" :PREP "of" :IO "Theme"))) 

 (define-mixin-category free-10.6.3-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Causer" :O "Source" :PREP "from" :IO "Theme"))) 

 (define-mixin-category free-80
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-SOURCE WITH-THEME)
  :binds ((SOURCE (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Causer" :O "Source" :PREP "of" :IO "Theme"))) 

 (define-mixin-category free-80-1
  :specializes subcategorization-pattern
  :realization ((:S "Causer" :O "Source" :PREP "of" :IO "Theme"))) 

 (define-mixin-category free-80-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Causer" :O "Source" :PREP "from" :IO "Theme"))) 

 (define-mixin-category fulfilling-13.4.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme")
                (:S "Agent" :O "Recipient" :PREP "with" :IO "Theme")
                (:S "Agent" :O "Theme" :PREP "to | for" :IO "Recipient"))) 

 (define-mixin-category fulfilling-13.4.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Recipient"))) 

 (define-mixin-category fulfilling-13.4.1-2
  :specializes subcategorization-pattern
  :mixins (WITH-RECIPIENT WITH-AGENT)
  :binds ((AGENT (OR ABSTRACT PHYSICAL-AGENT))
          (RECIPIENT (OR ABSTRACT PHYSICAL-AGENT)))
  :realization ((:S "Agent" :PREP "for" :IO "Recipient"))) 

 (define-mixin-category function-105.2.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME)
  :realization ((:S "Theme"))) 

 (define-mixin-category function-105.2.1-1
  :specializes subcategorization-pattern
  :mixins (PREDICATION)
  :binds ((PREDICATE "PREDICATE"))
  :realization ((:S "Theme" :O "Predicate"))) 

 (define-mixin-category funnel-9.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (AND/OR LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category funnel-9.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "between in_between" :IO
                 "Destination"))) 

 (define-mixin-category funnel-9.3-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :PREP "into" :IO "Destination"))) 

 (define-mixin-category future_having-13.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-BENEFICIARY WITH-GOAL)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Theme" :IO "Beneficiary" :IO "Goal")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Goal")
                (:S "Agent" :O "Goal" :IO "Theme") (:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Goal"))) 

 (define-mixin-category future_having-13.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Beneficiary" :IO "Theme" :IO "Goal"))) 

 (define-mixin-category get-13.5.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-BENEFICIARY WITH-EXTENT)
  :binds ((EXTENT (AND/OR LOCATION REGION))
          (BENEFICIARY (OR PHYSICAL-AGENT COMPANY)) (SOURCE PHYSICAL)
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "from" :IO "Source" :PREP "at for"
                 :NP "Asset")
                (:S "Asset" :O "Theme")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Asset")
                (:S "Agent" :O "Beneficiary" :IO "Theme")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Beneficiary")
                (:S "Agent" :O "Theme" :PREP "from" :IO "Source")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category get-13.5.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-SOURCE)
  :binds ((SOURCE ABSTRACT))
  :realization ((:S "Agent" :O "Theme" :PREP "from for on" :IO "Source"))) 

 (define-mixin-category give-13.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "to" :IO "Recipient") (:S "Agent" :O "Theme")
                (:S "Agent" :O "Recipient" :IO "Theme")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Recipient"))) 

 (define-mixin-category give-13.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-EXTENT)
  :realization ((:S "Agent" :O "Recipient" :IO "Theme" :PREP "at for on" :IO
                 "Asset")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Recipient" :PREP
                 "at for on" :NP "Asset")
                (:S "Agent" :O "Theme" :PREP "for at" :IO "Asset"))) 

 (define-mixin-category gobble-39.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization NIL) 

 (define-mixin-category gobble-39.3-1
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT (AND/OR NIL SOLID)))
  :realization ((:S "Agent" :O "Patient" :LEX "down")
                (:S "Agent" :O "Patient" :LEX "up") (:S "Agent" :O "Patient"))) 

 (define-mixin-category gobble-39.3-2
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT (AND/OR NIL SOLID)))
  :realization ((:S "Agent" :O "Patient" :LEX "down") (:S "Agent" :O "Patient"))) 

 (define-mixin-category gorge-39.6
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "on" :IO "Patient"))) 

 (define-mixin-category groom-41.1.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((PATIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category grow-26.2.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-PRODUCT)
  :binds ((PRODUCT PHYSICAL) (PATIENT PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient" :PREP "into" :IO "Product")
                (:S "Agent" :O "Product" :PREP "from out_of" :IO "Patient")
                (:S "Product" :PREP "from out_of" :IO "Patient")
                (:S "Patient" :PREP "into" :IO "Product"))) 

 (define-mixin-category harmonize-22.6
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME)
  :realization ((:S "Theme") (:S "Theme" :ADV :NP "Co-Theme")
                (:S "Theme" :O "Co-Theme") (:S "Theme" :ADV))) 

 (define-mixin-category help-72.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((BENEFICIARY (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization NIL) 

 (define-mixin-category help-72.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "with" :IO "Theme")
                (:S "Agent" :O "Beneficiary" :IO "Theme")
                (:S "Agent" :O "Beneficiary" :PREP "with" :IO "Theme")
                (:S "Agent" :O "Beneficiary"))) 

 (define-mixin-category help-72.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "with" :IO "Theme"))) 

 (define-mixin-category help-72.1-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "with | for" :IO "Beneficiary"))) 

 (define-mixin-category herd-47.5.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((THEME (AND/OR PHYSICAL COLLECTION)) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :LEX "together") (:S "Agent" :O "Theme")
                (:S "Theme"))) 

 (define-mixin-category hiccup-40.1.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent"))) 

 (define-mixin-category hire-13.5.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((THEME (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :IO "Attribute")
                (:S "Agent" :O "Theme" :PREP "as" :IO "Attribute")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category hit-18.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((INSTRUMENT PHYSICAL) (PATIENT PHYSICAL))
  :realization ((:S "Instrument" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Instrument" :O "Patient" :IO "Result")
                (:S "Instrument" :O "Patient")
                (:S "Agent" :O "Instrument" :PREP "against on" :IO "Patient")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result" :PREP
                 "with" :NP "Instrument")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :IO "Result" :PREP "with" :IO
                 "Instrument")
                (:S "Agent" :O "Patient" :IO "Result")
                (:S "Agent" :O "Patient" :LEX "together")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category hit-18.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT)
  :binds ((INSTRUMENT (OR NIL PRONOUN)))
  :realization ((:S "Agent" :LEX "at" :IO "Patient" :PREP "with" :IO
                 "Instrument")
                (:S "Agent" :LEX "at" :IO "Patient"))) 

 (define-mixin-category hold-15.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((THEME (OR NIL PHYSICAL)) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category hunt-35.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-CAUSE WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent") (:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Location")
                (:S "Agent" :PREP :NP "Location" :PREP "for" :NP "Theme")
                (:S "Agent" :PREP "for" :IO "Theme" :PREP :NP "Location")
                (:S "Agent" :O "Location" :PREP "for" :IO "Theme"))) 

 (define-mixin-category hurt-40.8.3
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization NIL) 

 (define-mixin-category hurt-40.8.3-1
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :realization ((:S "Experiencer" :O "Patient"))) 

 (define-mixin-category hurt-40.8.3-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient"))) 

 (define-mixin-category hurt-40.8.3-2
  :specializes subcategorization-pattern
  :realization ((:S "Experiencer" :O "Patient"))) 

 (define-mixin-category illustrate-25.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL) (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Agent" :O "Destination" :PREP "with" :IO "Theme")
                (:S "Agent" :O "Destination"))) 

 (define-mixin-category image_impression-25.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL))
  :realization ((:S "Agent") (:S "Agent" :O "Theme")
                (:S "Agent" :O "Destination")
                (:S "Agent" :O "Destination" :PREP "with" :IO "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category indicate-78
  :specializes subcategorization-pattern
  :mixins (WITH-RECIPIENT WITH-CAUSE WITH-TOPIC)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Causer" :O "Topic"))) 

 (define-mixin-category indicate-78-1
  :specializes subcategorization-pattern
  :realization ((:S "Causer" :PREP "to" :IO "Recipient" :IO "Topic"))) 

 (define-mixin-category indicate-78-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Causer" :O "Topic"))) 

 (define-mixin-category initiate_communication-37.4.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Recipient"))) 

 (define-mixin-category initiate_communication-37.4.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category inquire-37.1.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "of" :IO "Recipient" :PREP "about" :IO
                 "Topic")
                (:S "Agent" :PREP "of" :IO "Recipient" :IO "Topic")
                (:S "Agent" :PREP "about" :IO "Topic")
                (:S "Agent" :O "Recipient" :IO "Topic")
                (:S "Agent" :O "Recipient" :PREP "about" :IO "Topic")
                (:S "Agent" :O "Recipient") (:S "Agent")
                (:S "Agent" :O "Topic"))) 

 (define-mixin-category instr_communication-37.4.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY)) (TOPIC SPEECH-ACT)
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "for" :IO "Topic")
                (:S "Agent" :O "Recipient" :PREP "about" :IO "Topic")
                (:S "Agent" :PREP "to" :IO "Recipient" :IO "Topic")
                (:S "Agent" :O "Recipient" :IO "Topic")
                (:S "Agent" :O "Topic" :PREP "to" :IO "Recipient")
                (:S "Agent" :O "Recipient") (:S "Agent" :O "Topic"))) 

 (define-mixin-category intend-61.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC WITH-ATTRIBUTE)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Topic" :PREP "as" :IO "Attribute")
                (:S "Agent" :O "Topic"))) 

 (define-mixin-category intend-61.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Topic"))) 

 (define-mixin-category intend-61.2-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Topic"))) 

 (define-mixin-category interact-36.6
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT)
  :binds ((AGENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "with" :IO "Co-Agent") (:S "Agent"))) 

 (define-mixin-category interrogate-37.1.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-RECIPIENT WITH-TOPIC WITH-ATTRIBUTE)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Recipient" :PREP "about" :IO "Topic")
                (:S "Agent" :O "Recipient" :PREP "as" :IO "Attribute")
                (:S "Agent" :O "Recipient"))) 

 (define-mixin-category invest-13.5.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-EXTENT WITH-GOAL)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Goal"))) 

 (define-mixin-category invest-13.5.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Asset" :IO "Theme")
                (:S "Agent" :O "Asset" :IO "Goal"))) 

 (define-mixin-category investigate-35.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-CAUSE WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Location")
                (:S "Agent" :O "Location" :PREP "for" :IO "Theme"))) 

 (define-mixin-category involve-107.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((THEME (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "in" :IO "Goal")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category judgment-33.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :realization ((:S "Agent" :O "Attribute")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Attribute")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category judgment-33.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "as" :IO "Attribute"))) 

 (define-mixin-category judgment-33.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :IO "Attribute"))) 

 (define-mixin-category keep-15.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-CAUSE)
  :binds ((CAUSE (AND/OR LOCATION REGION)) (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Location"))) 

 (define-mixin-category knead-26.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PRODUCT WITH-MATERIAL)
  :binds ((MATERIAL "PHYSICAL") (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Agent" :O "Material")
                (:S "Agent" :O "Material" :PREP "into" :IO "Product")
                (:S "Material" :PREP "into" :IO "Product"))) 

 (define-mixin-category learn-14
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC WITH-SOURCE)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Topic") (:S "Agent" :PREP "from" :IO "Source")
                (:S "Agent" :O "Topic" :PREP "from" :IO "Source"))) 

 (define-mixin-category learn-14-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category learn-14-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "from" :IO "Source" :IO "Topic")
                (:S "Agent" :O "Topic"))) 

 (define-mixin-category learn-14-2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "of about" :IO "Topic"))) 

 (define-mixin-category leave-51.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SOURCE PHYSICAL-AGENT) (THEME PHYSICAL-AGENT))
  :realization ((:S "Theme" :O "Source"))) 

 (define-mixin-category leave-51.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme"))) 

 (define-mixin-category lecture-37.11
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "about" :IO "Topic"))) 

 (define-mixin-category lecture-37.11-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "to" :IO "Recipient" :PREP "about" :IO
                 "Topic")
                (:S "Agent" :PREP "about" :IO "Topic") (:S "Agent"))) 

 (define-mixin-category lecture-37.11-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "about" :IO "Topic"))) 

 (define-mixin-category lecture-37.11-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "on" :IO "Topic")
                (:S "Agent" :PREP "about" :IO "Topic"))) 

 (define-mixin-category let-64.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Beneficiary" :IO "Theme"))) 

 (define-mixin-category light_emission-43.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE WITH-AGENT)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")) (THEME PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme")
                (:S :NP "Location" :LEX "there" :NP "Theme")
                (:S "there" :O "Theme" :PREP :NP "Location")
                (:S "Location" :PREP "with" :IO "Theme")
                (:S "Theme" :PREP :NP "Location") (:S "Theme"))) 

 (define-mixin-category limit-76
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-PATIENT WITH-GOAL)
  :binds ((PATIENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Causer" :O "Patient" :IO "Goal")
                (:S "Causer" :O "Patient" :PREP "to" :IO "Goal")
                (:S "Causer" :O "Patient"))) 

 (define-mixin-category linger-53.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-CAUSE WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "over" :IO "Theme")
                (:S "Agent" :PREP :NP "Location"))) 

 (define-mixin-category linger-53.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category lodge-46
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :binds ((THEME PHYSICAL-AGENT))
  :realization ((:S "Theme" :O "Location")
                (:S "Theme" :PREP "at in with" :IO "Location"))) 

 (define-mixin-category long-32.2
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT WITH-THEME)
  :binds ((INSTRUMENT "OBJECT"))
  :realization ((:S "Pivot" :O "Theme"))) 

 (define-mixin-category long-32.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Pivot" :PREP "for" :IO "Theme"))) 

 (define-mixin-category long-32.2-2
  :specializes subcategorization-pattern
  :realization ((:S "Pivot" :PREP "after" :IO "Theme"))) 

 (define-mixin-category lure-59.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT PREDICATION)
  :binds ((PREDICATE "PREDICATE") (PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Patient" :PREP "into to" :IO "Predicate")
                (:S "Agent" :O "Patient" :PREP "into" :IO "Predicate")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category manner_speaking-37.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY)) (TOPIC SPEECH-ACT)
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "for" :IO "Recipient" :IO "Topic")
                (:S "Agent" :PREP :NP "Recipient" :NP "Topic")
                (:S "Agent" :O "Topic" :PREP :NP "Recipient")
                (:S "Agent" :O "Topic") (:S "Agent" :PREP "about" :IO "Topic")
                (:S "Agent" :PREP :NP "Recipient") (:S "Agent"))) 

 (define-mixin-category marry-36.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT)
  :binds ((AGENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Co-Agent") (:S "Agent"))) 

 (define-mixin-category marvel-31.3
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Experiencer" :PREP :NP "Stimulus") (:S "Experiencer"))) 

 (define-mixin-category masquerade-29.6
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-ATTRIBUTE)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :LEX "as" :IO "Attribute"))) 

 (define-mixin-category masquerade-29.6-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :LEX "like" :IO "Attribute"))) 

 (define-mixin-category masquerade-29.6-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "in" :IO "Attribute")
                (:S "Agent" :O "Attribute"))) 

 (define-mixin-category matter-91
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER (AND/OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "it" :O "Stimulus")
                (:S "it" :PREP "to" :IO "Experiencer" :IO "Stimulus")
                (:S "Stimulus" :PREP "to" :IO "Experiencer") (:S "Stimulus"))) 

 (define-mixin-category meander-47.7
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-THEME)
  :binds ((CAUSE PHYSICAL))
  :realization ((:S "there" :O "Theme" :PREP :NP "Location")
                (:S "there" :PREP :NP "Location" :NP "Theme")
                (:S :NP "Location" :NP "Theme")
                (:S "Theme" :PREP :NP "Location"))) 

 (define-mixin-category meander-47.7-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme"))) 

 (define-mixin-category meet-36.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT)
  :binds ((AGENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization NIL) 

 (define-mixin-category meet-36.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Co-Agent") (:S "Agent")
                (:S "Agent" :PREP "with" :IO "Co-Agent"))) 

 (define-mixin-category meet-36.3-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Co-Agent") (:S "Agent")
                (:S "Agent" :PREP "with" :IO "Co-Agent"))) 

 (define-mixin-category mine-10.9
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION LOCATION) (SOURCE LOCATION) (THEME PHYSICAL)
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Initial_Location")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category mix-22.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((CO-PATIENT PHYSICAL) (PATIENT PHYSICAL))
  :realization NIL) 

 (define-mixin-category mix-22.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :ADV :LEX "together") (:S "Patient" :ADV)
                (:S "Patient" :ADV :PREP "with into to" :NP "Co-Patient")
                (:S "Patient" :PREP "with into to" :IO "Co-Patient")
                (:S "Agent" :O "Patient" :LEX "together")
                (:S "Agent" :O "Patient")
                (:S "Agent" :O "Patient" :PREP "with into to" :IO "Co-Patient"))) 

 (define-mixin-category mix-22.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :LEX "together") (:S "Patient"))) 

 (define-mixin-category mix-22.1-2
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :ADV :LEX "together") (:S "Patient" :ADV)
                (:S "Patient" :ADV :PREP "with into to" :NP "Co-Patient")
                (:S "Agent" :O "Patient" :LEX "together")
                (:S "Agent" :O "Patient")
                (:S "Agent" :O "Patient" :PREP "with into to" :IO "Co-Patient"))) 

 (define-mixin-category mix-22.1-2-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :LEX "together") (:S "Patient")
                (:S "Patient" :PREP "with into to" :IO "Co-Patient"))) 

 (define-mixin-category modes_of_being_with_motion-47.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-CAUSE)
  :binds ((CAUSE (AND/OR LOCATION REGION)) (THEME PHYSICAL))
  :realization ((:S "Agent" :O "Theme") (:S :NP "Location" :NP "Theme")
                (:S "there" :O "Theme") (:S "Theme" :PREP :NP "Location")
                (:S "Theme"))) 

 (define-mixin-category multiply-108
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category multiply-108-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "by" :IO "Co-Theme"))) 

 (define-mixin-category multiply-108-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "from" :IO "Co-Theme"))) 

 (define-mixin-category multiply-108-3
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "over" :IO "Co-Theme"))) 

 (define-mixin-category murder-42.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT") (PATIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category murder-42.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT)
  :binds ((INSTRUMENT PHYSICAL))
  :realization ((:S "Instrument" :O "Patient"))) 

 (define-mixin-category neglect-75.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category neglect-75.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category nonvehicle-51.4.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((PATH PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Trajectory") (:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Trajectory")
                (:S "Agent" :PREP :NP "Trajectory") (:S "Agent"))) 

 (define-mixin-category nonvehicle-51.4.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Trajectory"))) 

 (define-mixin-category nonverbal_expression-40.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((RECIPIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP :NP "Recipient")
                (:S "Agent" :PREP "in" :IO "Theme") (:S "Agent" :O "Theme")
                (:S "Agent"))) 

 (define-mixin-category obtain-13.5.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SOURCE PHYSICAL) (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "from" :IO "Source")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category obtain-13.5.2-1
  :specializes subcategorization-pattern
  :mixins (WITH-EXTENT)
  :binds ((EXTENT CURRENCY))
  :realization ((:S "Asset" :O "Theme")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Asset"))) 

 (define-mixin-category occur-48.3
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :realization ((:S "Theme" :PREP "" :IO "Location") (:S "there" :O "Theme")
                (:S "Theme"))) 

 (define-mixin-category occur-48.3-1
  :specializes subcategorization-pattern
  :realization ((:S "it" :O "Theme"))) 

 (define-mixin-category occur-48.3-2
  :specializes subcategorization-pattern
  :realization ((:S "Theme"))) 

 (define-mixin-category orbit-51.9.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT"))
  :realization ((:S "Theme" :PREP :NP "Axis"))) 

 (define-mixin-category order-58.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Result"))) 

 (define-mixin-category order-58.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient" :IO "Result"))) 

 (define-mixin-category orphan-29.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category other_cos-45.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((INSTRUMENT "OBJECT"))
  :realization ((:S "Instrument" :O "Patient") (:S "Patient" :ADV)
                (:S "Patient")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category other_cos-45.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :O "Result"))) 

 (define-mixin-category overstate-37.12
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category own-100.1
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT WITH-THEME)
  :binds ((INSTRUMENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Pivot" :O "Theme"))) 

 (define-mixin-category pain-40.8.1
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-PATIENT WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Patient" :PREP "from" :IO "Stimulus")
                (:S "Patient" :O "Experiencer") (:S "Patient"))) 

 (define-mixin-category patent-101
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category pay-68
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-EXTENT WITH-THEME)
  :binds ((EXTENT CURRENCY) (AGENT (AND/OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Asset")
                (:S "Agent" :O "Asset" :PREP "for" :IO "Theme"))) 

 (define-mixin-category pay-68-1
  :specializes subcategorization-pattern
  :mixins (WITH-RECIPIENT)
  :realization ((:S "Agent" :O "Recipient" :IO "Asset")
                (:S "Agent" :O "Recipient" :IO "Asset" :PREP "for" :IO "Theme"))) 

 (define-mixin-category peer-30.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP :NP "Theme"))) 

 (define-mixin-category pelt-17.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL) (SOURCE PHYSICAL) (THEME PHYSICAL))
  :realization ((:S "Agent" :O "Destination")
                (:S "Agent" :O "Destination" :PREP "with" :IO "Theme"))) 

 (define-mixin-category performance-26.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((BENEFICIARY PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP "for" :IO "Beneficiary")
                (:S "Agent") (:S "Agent" :O "Theme"))) 

 (define-mixin-category performance-26.7-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Beneficiary" :IO "Theme"))) 

 (define-mixin-category pit-10.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL) (SOURCE PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Source"))) 

 (define-mixin-category play-114.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "with" :IO "Co-Agent") (:S "Agent"))) 

 (define-mixin-category play-114.2-1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME)
  :realization ((:S "Agent" :O "Theme" :PREP "with" :IO "Co-Agent")
                (:S "Agent" :O "Co-Agent")
                (:S "Agent" :PREP "with" :IO "Theme") (:S "Agent" :O "Theme"))) 

 (define-mixin-category pocket-9.10
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL) (SOURCE PHYSICAL) (THEME PHYSICAL)
          (AGENT (OR NIL COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "in on under" :IO "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category pocket-9.10-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Destination") (:S "Theme")
                (:S "Theme" :PREP "in on under" :IO "Destination"))) 

 (define-mixin-category poison-42.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((INSTRUMENT "OBJECT") (PATIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :IO "Result")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category poke-19
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((PATIENT PHYSICAL) (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Instrument" :O "Patient")
                (:S "Agent" :LEX "at" :IO "Patient" :PREP "with" :IO
                 "Instrument")
                (:S "Agent" :LEX "at" :IO "Patient")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Instrument" :PREP "through into" :IO "Patient")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category pour-9.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-DESTINATION WITH-SOURCE)
  :binds ((SOURCE (AND/OR LOCATION REGION))
          (DESTINATION (AND/OR LOCATION REGION))
          (THEME (OR NIL PHYSICAL COLLECTION)) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Theme" :PREP :NP "Initial_Location" :PREP :IO
                 "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location" :PREP :IO
                 "Destination")
                (:S "Theme" :PREP :NP "Destination")
                (:S "Agent" :O "Theme" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category preparing-26.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY)
  :binds ((BENEFICIARY PHYSICAL-AGENT)
          (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization NIL) 

 (define-mixin-category preparing-26.3-1
  :specializes subcategorization-pattern
  :mixins (WITH-PRODUCT)
  :binds ((PRODUCT PHYSICAL))
  :realization ((:S "Agent" :O "Product" :PREP "for" :IO "Beneficiary")
                (:S "Agent" :O "Beneficiary" :IO "Product")
                (:S "Agent" :O "Product"))) 

 (define-mixin-category preparing-26.3-2
  :specializes subcategorization-pattern
  :mixins (WITH-PATIENT)
  :binds ((PATIENT PHYSICAL))
  :realization ((:S "Agent" :O "Patient" :PREP "for" :IO "Beneficiary")
                (:S "Agent" :O "Beneficiary" :IO "Patient")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category price-54.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((PATH CURRENCY) (THEME PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP "at" :IO "Value")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category promise-37.13
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "to" :IO "Recipient" :IO "Topic")
                (:S "Agent" :O "Topic") (:S "Agent" :O "Recipient" :IO "Topic"))) 

 (define-mixin-category promote-102
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category pronounce-29.3.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Theme" :PREP "with in" :IO "Attribute")
                (:S "Agent" :O "Theme" :IO "Attribute"))) 

 (define-mixin-category prosecute-33.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-THEME)
  :binds ((AGENT (OR NIL COMPANY)))
  :realization ((:S "Agent" :O "Patient" :PREP "for" :IO "Theme")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category prosecute-33.2-1
  :specializes subcategorization-pattern
  :mixins (WITH-ATTRIBUTE)
  :realization ((:S "Agent" :O "Patient" :PREP "as" :IO "Attribute" :PREP "for"
                 :NP "Patient")
                (:S "Agent" :O "Patient" :PREP "as" :IO "Attribute"))) 

 (define-mixin-category push-12
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-PATH WITH-RESULT)
  :binds ((THEME PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category push-12-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "at against on" :IO "Theme")
                (:S "Agent" :O "Theme" :IO "Result"))) 

 (define-mixin-category push-12-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP :NP "Trajectory") (:S "Agent" :PREP))) 

 (define-mixin-category put-9.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (AND/OR LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category put-9.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category put-9.1-2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME)
  :binds ((THEME ABSTRACT))
  :realization ((:S "Agent" :PREP "on upon" :IO "Destination" :IO "Theme"))) 

 (define-mixin-category put_direction-9.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (AND/OR LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category put_spatial-9.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (AND/OR LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category put_spatial-9.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Destination")
                (:S "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category reach-51.8
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-GOAL)
  :binds ((THEME (AND/OR PHYSICAL COMPANY)))
  :realization ((:S "Theme" :O "Goal"))) 

 (define-mixin-category rear-26.2.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PRODUCT)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category rear-26.2.2-1
  :specializes subcategorization-pattern
  :mixins (WITH-MATERIAL)
  :binds ((MATERIAL "PHYSICAL"))
  :realization ((:S "Agent" :O "Material" :IO "Product"))) 

 (define-mixin-category reciprocate-112
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME PREDICATION)
  :binds ((PREDICATE "PREDICATE") (AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Theme" :IO "Predicate") (:S "Agent" :O "Theme"))) 

 (define-mixin-category reciprocate-112-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Predicate") (:S "Agent"))) 

 (define-mixin-category reflexive_appearance-48.1.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-AGENT WITH-RECIPIENT REFLEXIVE)
  :binds ((PRONOUN "PRONOUN") (RECIPIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Theme" :O "Reflexive")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Recipient")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category refrain-69
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "from" :IO "Theme") (:S "Agent"))) 

 (define-mixin-category register-54.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-PATH)
  :realization ((:S "Theme" :PREP "at | to" :IO "Value"))) 

 (define-mixin-category register-54.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-ATTRIBUTE)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Attribute" :PREP "at" :IO "Value")
                (:S "Agent" :O "Theme" :PREP "at" :IO "Value")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category register-54.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Value"))) 

 (define-mixin-category rehearse-26.8
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category rehearse-26.8-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category reject-77.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category reject-77.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category relate-86.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME)
  :realization NIL) 

 (define-mixin-category relate-86.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Co-Theme"))) 

 (define-mixin-category relate-86.2-2
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :PREP "to" :IO "Co-Theme"))) 

 (define-mixin-category rely-70
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "on" :IO "Theme"))) 

 (define-mixin-category remedy-45.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT"))
  :realization ((:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category remedy-45.7-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :ADV))) 

 (define-mixin-category remove-10.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((GOAL LOCATION) (SOURCE LOCATION) (AGENT (OR NIL COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Source")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category render-29.90
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-PATIENT WITH-RESULT)
  :realization ((:S "Causer" :O "Result" :IO "Patient")
                (:S "Agent" :O "Patient" :IO "Result"))) 

 (define-mixin-category render-29.90-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient" :IO "Result"))) 

 (define-mixin-category render-29.90-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient" :IO "Result"))) 

 (define-mixin-category representation-110.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME PREDICATION)
  :binds ((PREDICATE "PREDICATE"))
  :realization ((:S "Theme" :O "Co-Theme" :PREP "in | for | to" :IO "Context")
                (:S "Theme" :O "Co-Theme"))) 

 (define-mixin-category require-103
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT WITH-THEME)
  :binds ((INSTRUMENT "OBJECT"))
  :realization ((:S "Pivot" :O "Theme"))) 

 (define-mixin-category require-103-1
  :specializes subcategorization-pattern
  :mixins (WITH-SOURCE)
  :realization ((:S "Pivot" :O "Theme")
                (:S "Pivot" :O "Theme" :PREP "from" :IO "Source"))) 

 (define-mixin-category require-103-2
  :specializes subcategorization-pattern
  :realization ((:S "Pivot" :O "Theme"))) 

 (define-mixin-category resign-10.11
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-SOURCE WITH-GOAL)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent"))) 

 (define-mixin-category resign-10.11-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "from" :IO "Source"))) 

 (define-mixin-category resign-10.11-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Source"))) 

 (define-mixin-category respond-113
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME PREDICATION)
  :binds ((PREDICATE "PREDICATE") (AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :PREP "to|against" :IO "Theme" :PREP "with" :IO
                 "Predicate")
                (:S "Agent" :PREP "with" :IO "Predicate")
                (:S "Agent" :PREP "to|against" :IO "Theme") (:S "Agent"))) 

 (define-mixin-category result-27.2
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE WITH-THEME)
  :binds ((CAUSE PHYSICAL-AGENT))
  :realization ((:S "Causer" :PREP "in | to" :IO "Theme"))) 

 (define-mixin-category risk-94
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category risk-94-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category rob-10.6.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-BENEFICIARY)
  :binds ((BENEFICIARY PHYSICAL-AGENT)
          (SOURCE (OR PHYSICAL-AGENT LOCATION REGION))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Source" :PREP "for" :NP
                 "Beneficiary")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Beneficiary")
                (:S "Agent" :O "Theme" :PREP :NP "Source")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category roll-51.3.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-PATH WITH-RESULT)
  :binds ((PATH PHYSICAL) (THEME PHYSICAL))
  :realization ((:S "Agent" :O "Theme" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Theme" :IO "Result")
                (:S "Theme" :PREP "to into" :IO "Result")
                (:S "Theme" :O "Result")
                (:S "Agent" :O "Theme" :PREP :NP "Trajectory")
                (:S "Agent" :O "Theme") (:S "Theme" :PREP :NP "Trajectory")
                (:S "Theme"))) 

 (define-mixin-category rotate-51.9.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-EXTENT WITH-PATH)
  :realization ((:S "Theme" :ADV "Trajectory") (:S "Theme" :O "Extent"))) 

 (define-mixin-category rotate-51.9.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Theme" :IO "Extent"))) 

 (define-mixin-category rummage-35.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-CAUSE WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP :NP "Location" :PREP "for" :NP "Theme")
                (:S "Agent" :PREP "over through into" :IO "Location"))) 

 (define-mixin-category rummage-35.5-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Location" :PREP "for" :IO "Theme"))) 

 (define-mixin-category run-51.3.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-SOURCE WITH-PATH WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL) (PATH PHYSICAL) (SOURCE PHYSICAL)
          (THEME (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S :NP "Initial_Location" :NP "Theme")
                (:S "there" :O "Theme" :PREP :NP "Initial_Location")
                (:S "there" :PREP :NP "Initial_Location" :NP "Theme")
                (:S "Theme" :PREP :NP "Trajectory") (:S "Theme"))) 

 (define-mixin-category run-51.3.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Trajectory"))) 

 (define-mixin-category run-51.3.2-2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-RESULT WITH-SOURCE)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Trajectory"))) 

 (define-mixin-category run-51.3.2-2-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Trajectory"))) 

 (define-mixin-category rush-53.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "through" :IO "Theme")
                (:S "Agent" :O "Theme") (:S "Agent" :PREP "with" :IO "Theme"))) 

 (define-mixin-category satisfy-55.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT") (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "with" :IO "Instrument")
                (:S "Instrument" :O "Theme"))) 

 (define-mixin-category say-37.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY)) (TOPIC SPEECH-ACT)
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Topic"))) 

 (define-mixin-category say-37.7-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "to" :IO "Recipient" :IO "Topic")
                (:S "Agent" :O "Topic" :PREP "to" :IO "Recipient")
                (:S "Agent" :O "Topic"))) 

 (define-mixin-category say-37.7-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Topic"))) 

 (define-mixin-category say-37.7-1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "to" :IO "Recipient" :IO "Topic")
                (:S "Agent" :O "Topic" :PREP "to" :IO "Recipient"))) 

 (define-mixin-category say-37.7-1-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "to" :IO "Recipient" :IO "Topic")
                (:S "Agent" :O "Topic" :PREP "to" :IO "Recipient"))) 

 (define-mixin-category scribble-25.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL) (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Agent" :O "Theme" :PREP "on | in" :IO "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category scribble-25.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category search-35.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-CAUSE WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP :NP "Location")
                (:S "Agent" :PREP :NP "Location" :PREP "for" :NP "Theme")
                (:S "Agent" :PREP "for" :IO "Theme" :PREP :NP "Location")
                (:S "Agent" :O "Location" :PREP "for" :IO "Theme"))) 

 (define-mixin-category see-30.1
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category see-30.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category see-30.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category see-30.1-1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Experiencer" :PREP "about of" :IO "Stimulus"))) 

 (define-mixin-category seem-109
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-ATTRIBUTE)
  :realization ((:S "Theme" :O "Attribute"))) 

 (define-mixin-category seem-109-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Attribute"))) 

 (define-mixin-category seem-109-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :PREP "in" :IO "Attribute"))) 

 (define-mixin-category seem-109-1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Attribute"))) 

 (define-mixin-category send-11.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (OR PHYSICAL-AGENT LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL) (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "to" :IO "Destination" :PREP :NP
                 "Initial_Location")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location" :PREP "to"
                 :NP "Destination")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category send-11.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Destination" :IO "Theme"))) 

 (define-mixin-category separate-23.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Patient" :ADV)
                (:S "Patient" :ADV :PREP "from" :NP "Co-Patient")
                (:S "Patient") (:S "Agent" :O "Patient")
                (:S "Agent" :O "Patient" :PREP "from" :IO "Co-Patient"))) 

 (define-mixin-category separate-23.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :PREP "from" :IO "Co-Patient"))) 

 (define-mixin-category separate-23.1-2
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :PREP "with" :IO "Co-Patient"))) 

 (define-mixin-category settle-36.1.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-TOPIC)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "on" :IO "Goal")
                (:S "Agent" :PREP "on" :IO "Goal") (:S "Agent"))) 

 (define-mixin-category settle-36.1.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Co-Agent" :IO "Goal") (:S "Agent" :O "Goal"))) 

 (define-mixin-category shake-22.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((CO-PATIENT PHYSICAL) (PATIENT PHYSICAL)
          (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Patient" :ADV :LEX "together") (:S "Patient" :ADV))) 

 (define-mixin-category shake-22.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient" :LEX "together")
                (:S "Agent" :O "Patient" :PREP "with into to" :IO "Co-Patient"))) 

 (define-mixin-category shake-22.3-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient")
                (:S "Patient" :PREP "with into to" :IO "Co-Patient" :ADV))) 

 (define-mixin-category shake-22.3-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient" :LEX "together")
                (:S "Agent" :O "Patient" :PREP "with into to" :IO "Co-Patient"))) 

 (define-mixin-category shake-22.3-2-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category sight-30.2
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category simple_dressing-41.3.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category slide-11.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-PATH)
  :binds ((DESTINATION (OR PHYSICAL-AGENT LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL))
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Initial_Location" :PREP "to"
                 :NP "Destination")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Trajectory")
                (:S "Agent" :O "Theme")
                (:S "Theme" :PREP :NP "Initial_Location" :PREP "to" :NP
                 "Destination")
                (:S "Theme" :PREP "to" :IO "Destination")
                (:S "Theme" :PREP :NP "Initial_Location") (:S "Theme"))) 

 (define-mixin-category slide-11.2-1
  :specializes subcategorization-pattern
  :mixins (WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Destination" :IO "Theme"))) 

 (define-mixin-category smell_emission-43.3
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :binds ((THEME PHYSICAL-AGENT))
  :realization ((:S "Location" :PREP "of" :IO "Theme") (:S "Location")
                (:S "Theme"))) 

 (define-mixin-category snooze-40.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent"))) 

 (define-mixin-category snooze-40.4-1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME)
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category sound_emission-43.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE WITH-AGENT TEMPORALLY-LOCALIZED)
  :binds ((CERTAINTY "CERTAINTY") (AGENT ("PRONOUN" "PHYSICAL-AGENT"))
          (THEME PHYSICAL-AGENT))
  :realization ((:S "Theme" :O "Result") (:S "Agent" :O "Theme")
                (:S "there" :O "Theme" :PREP :NP "Location")
                (:S :NP "Location" :NP "Theme")
                (:S "Location" :PREP "with" :IO "Theme")
                (:S "Theme" :PREP :NP "Location") (:S "Theme"))) 

 (define-mixin-category sound_existence-47.4
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :binds ((CAUSE (AND/OR LOCATION REGION)))
  :realization ((:S "Location" :PREP "with" :IO "Theme")
                (:S :NP "Location" :NP "Theme") (:S "there" :O "Theme")
                (:S "Theme" :PREP :NP "Location") (:S "Theme"))) 

 (define-mixin-category spank-18.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-CAUSE WITH-RESULT)
  :binds ((CAUSE PHYSICAL) (INSTRUMENT PHYSICAL) (PATIENT PHYSICAL))
  :realization ((:S "Agent" :O "Patient" :PREP :NP "Location" :PREP "with" :NP
                 "Instrument")
                (:S "Agent" :O "Patient" :PREP :NP "Location")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result" :PREP
                 "with" :NP "Instrument")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :IO "Result")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category spatial_configuration-47.6
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :binds ((CAUSE (AND/OR LOCATION REGION)) (THEME PHYSICAL))
  :realization ((:S :NP "Location" :NP "Theme")
                (:S "there" :PREP :NP "Location" :NP "Theme")
                (:S "Theme" :PREP :NP "Location") (:S "Theme"))) 

 (define-mixin-category spatial_configuration-47.6-1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Location"))) 

 (define-mixin-category spend_time-104
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-EXTENT WITH-ATTRIBUTE)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Duration" :LEX "as" :IO "Attribute")
                (:S "Agent" :O "Duration"))) 

 (define-mixin-category split-23.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((CO-PATIENT SOLID) (PATIENT SOLID))
  :realization ((:S "Patient" :LEX "apart" :ADV)
                (:S "Patient" :PREP "off off of from" :IO "Co-Patient" :ADV)
                (:S "Patient" :LEX "apart")
                (:S "Patient" :PREP "off off of from" :IO "Co-Patient")
                (:S "Agent" :O "Patient" :LEX "apart")
                (:S "Agent" :O "Patient" :PREP "off off of from" :IO
                 "Co-Patient"))) 

 (define-mixin-category spray-9.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION (AND/OR LOCATION REGION)) (SOURCE LOCATION)
          (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Destination") (:S "Agent" :O "Theme")
                (:S "Agent" :O "Destination" :PREP "with" :IO "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category spray-9.7-1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME)
  :binds ((THEME (OR NIL PHYSICAL COLLECTION)))
  :realization ((:S "Agent" :O "Theme" :LEX "at" :IO "Destination")
                (:S "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category spray-9.7-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Destination"))) 

 (define-mixin-category spray-9.7-2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME)
  :binds ((THEME PHYSICAL))
  :realization NIL) 

 (define-mixin-category stalk-35.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-CAUSE)
  :binds ((AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Location")
                (:S "Agent" :O "Location" :PREP "for" :IO "Theme"))) 

 (define-mixin-category steal-10.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-BENEFICIARY)
  :binds ((BENEFICIARY PHYSICAL-AGENT) (SOURCE (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Source" :PREP "for" :NP
                 "Beneficiary")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Beneficiary")
                (:S "Agent" :O "Theme" :PREP :NP "Source")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category steal-10.5-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Beneficiary" :IO "Theme"))) 

 (define-mixin-category stimulate-59.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT PREDICATION)
  :binds ((PREDICATE "PREDICATE") (PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Patient" :PREP "into" :IO "Predicate")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category stimulus_subject-30.4
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Stimulus" :PREP "like")
                (:S "Stimulus" :ADJ :PREP "to" :NP "Experiencer")
                (:S "Stimulus" :ADJ))) 

 (define-mixin-category stop-55.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Affector" :O "Theme"))) 

 (define-mixin-category stop-55.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :ADV) (:S "Theme"))) 

 (define-mixin-category stop-55.4-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category subjugate-42.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT") (PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category subordinate-95.2.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "to" :IO "Co-Agent"))) 

 (define-mixin-category substance_emission-43.4
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-SOURCE)
  :realization ((:S "Source" :O "Theme"))) 

 (define-mixin-category substance_emission-43.4-1
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE)
  :realization ((:S "Source" :O "Theme") (:S "Theme" :LEX "out")
                (:S "there" :O "Theme" :PREP :NP "Location")
                (:S :NP "Location" :NP "Theme")
                (:S "Location" :PREP "with" :IO "Theme")
                (:S "Theme" :PREP :NP "Location")
                (:S "Theme" :PREP "from out_of" :IO "Source") (:S "Source"))) 

 (define-mixin-category substance_emission-43.4-1-1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Source"))) 

 (define-mixin-category substitute-13.6.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME WITH-SOURCE WITH-GOAL WITH-CAUSE)
  :binds ((CAUSE (AND/OR LOCATION REGION)))
  :realization ((:S "Theme" :O "Location" :PREP "with" :IO "Co-Theme")
                (:S "Theme" :O "Location")
                (:S "Theme" :PREP "for into" :IO "Co-Theme"))) 

 (define-mixin-category substitute-13.6.2-1
  :specializes subcategorization-pattern
  :realization ((:S "Theme" :O "Co-Theme"))) 

 (define-mixin-category succeed-74
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization NIL) 

 (define-mixin-category succeed-74-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "in" :IO "Theme") (:S "Agent"))) 

 (define-mixin-category succeed-74-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category succeed-74-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "in at" :IO "Theme") (:S "Agent" :O "Theme")
                (:S "Agent"))) 

 (define-mixin-category succeed-74-3
  :specializes subcategorization-pattern
  :realization ((:S "Agent"))) 

 (define-mixin-category succeed-74-3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "in at" :IO "Theme") (:S "Agent" :O "Theme"))) 

 (define-mixin-category succeed-74-3-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme") (:S "Agent" :PREP "in" :IO "Theme"))) 

 (define-mixin-category suffocate-40.7
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((PATIENT PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient" :PREP "to" :IO "Result")
                (:S "Patient" :PREP "to" :IO "Result") (:S "Patient")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category supervision-95.2.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Co-Agent"))) 

 (define-mixin-category support-15.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT") (AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Instrument" :O "Theme"))) 

 (define-mixin-category support-15.3-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Theme" :PREP "with | through" :IO "Instrument"))) 

 (define-mixin-category suspect-81
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP "of" :IO "Attribute"))) 

 (define-mixin-category sustain-55.6
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((INSTRUMENT "OBJECT") (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :PREP "through" :IO "Instrument"))) 

 (define-mixin-category sustain-55.6-1
  :specializes subcategorization-pattern
  :mixins (WITH-ATTRIBUTE)
  :realization ((:S "Agent" :O "Theme" :IO "Attribute"))) 

 (define-mixin-category swarm-47.5.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :binds ((CAUSE (AND/OR LOCATION REGION)) (THEME (AND/OR PHYSICAL COLLECTION)))
  :realization NIL) 

 (define-mixin-category swarm-47.5.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Location" :PREP "with" :IO "Theme")
                (:S :NP "Location" :NP "Theme")
                (:S "there" :O "Theme" :PREP :NP "Location")
                (:S "Theme" :PREP :NP "Location"))) 

 (define-mixin-category swarm-47.5.1-2
  :specializes subcategorization-pattern
  :realization ((:S "there" :O "Theme" :PREP :NP "Location")
                (:S "Theme" :PREP :NP "Location"))) 

 (define-mixin-category swarm-47.5.1-2-1
  :specializes subcategorization-pattern
  :realization ((:S "Location" :PREP "with" :IO "Theme"))) 

 (define-mixin-category swat-18.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-CAUSE WITH-RESULT)
  :binds ((CAUSE PHYSICAL) (INSTRUMENT SOLID) (PATIENT PHYSICAL)
          (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Patient" :PREP :NP "Location")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result" :PREP
                 "with" :NP "Instrument")
                (:S "Agent" :O "Patient" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Patient" :IO "Result" :PREP "with" :IO
                 "Instrument")
                (:S "Agent" :O "Patient" :IO "Result")
                (:S "Agent" :LEX "at" :IO "Patient" :PREP "with" :IO
                 "Instrument")
                (:S "Agent" :LEX "at" :IO "Patient")
                (:S "Agent" :O "Patient" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category talk-37.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-TOPIC)
  :binds ((TOPIC SPEECH-ACT) (AGENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "about" :IO "Topic")
                (:S "Agent" :PREP "about" :IO "Topic" :PREP "with" :IO
                 "Co-Agent")
                (:S "Agent" :PREP "about" :IO "Topic" :PREP "to" :IO
                 "Co-Agent")
                (:S "Agent" :LEX "together")
                (:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "about" :IO
                 "Topic")
                (:S "Agent" :PREP "to" :IO "Co-Agent" :PREP "about" :IO
                 "Topic")
                (:S "Agent" :PREP "with" :IO "Co-Agent")
                (:S "Agent" :PREP "to" :IO "Co-Agent") (:S "Agent"))) 

 (define-mixin-category tape-22.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((INSTRUMENT (AND/OR PHYSICAL PHYSICAL-AGENT)) (CO-PATIENT SOLID)
          (PATIENT SOLID) (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Agent" :O "Patient" :IO "Result")
                (:S "Patient" :LEX "together" :ADV)
                (:S "Patient" :ADV :LEX "together") (:S "Patient" :ADV)
                (:S "Patient" :ADV :PREP "to on onto" :NP "Co-Patient")
                (:S "Agent" :O "Patient" :LEX "together")
                (:S "Agent" :O "Patient" :PREP "to on onto" :IO "Co-Patient")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category tape-22.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Patient" :PREP "to on onto" :IO "Co-Patient"))) 

 (define-mixin-category tell-37.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((TOPIC SPEECH-ACT) (RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Recipient" :IO "Topic")
                (:S "Agent" :O "Recipient" :PREP "of" :IO "Topic")
                (:S "Agent" :O "Recipient"))) 

 (define-mixin-category terminus-47.9
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :realization ((:S "Theme" :PREP "" :IO "Location"))) 

 (define-mixin-category throw-17.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-RESULT)
  :binds ((DESTINATION (OR PHYSICAL-AGENT LOCATION REGION)) (SOURCE LOCATION)
          (THEME PHYSICAL))
  :realization ((:S "Agent" :O "Theme" :ADV)
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location" :PREP :IO
                 "Destination")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location")
                (:S "Agent" :O "Theme" :PREP :NP "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category throw-17.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Destination" :IO "Theme"))) 

 (define-mixin-category throw-17.1-1-1
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE)
  :realization ((:S "Causer" :PREP "into" :IO "Result" :IO "Theme")
                (:S "Causer" :O "Theme" :PREP "into" :IO "Result"))) 

 (define-mixin-category tingle-40.8.2
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-PATIENT WITH-STIMULUS)
  :binds ((EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S "Patient" :PREP "from at" :IO "Stimulus") (:S "Patient"))) 

 (define-mixin-category touch-20
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-EXPERIENCER WITH-INSTRUMENT)
  :binds ((INSTRUMENT SOLID) (EXPERIENCER PHYSICAL))
  :realization ((:S "Agent" :O "Experiencer" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Experiencer"))) 

 (define-mixin-category touch-20-1
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER)
  :binds ((EXPERIENCER (OR NIL PRONOUN)))
  :realization ((:S "Agent" :O "Experiencer" :PREP "with" :IO "Instrument")
                (:S "Agent" :O "Experiencer"))) 

 (define-mixin-category transcribe-25.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((DESTINATION PHYSICAL) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category transfer_mesg-37.1.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-TOPIC WITH-RECIPIENT WITH-SOURCE)
  :binds ((RECIPIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent") (:S "Agent" :PREP "from" :IO "Source")
                (:S "Agent" :O "Topic" :PREP "to" :IO "Recipient")
                (:S "Agent" :PREP "to" :IO "Recipient" :IO "Topic")
                (:S "Agent" :O "Topic"))) 

 (define-mixin-category transfer_mesg-37.1.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Recipient" :IO "Topic"))) 

 (define-mixin-category transfer_mesg-37.1.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Recipient" :PREP "about" :IO "Topic")
                (:S "Agent" :O "Recipient" :IO "Topic")
                (:S "Agent" :O "Recipient"))) 

 (define-mixin-category trick-59.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT PREDICATION)
  :binds ((PREDICATE "PREDICATE") (PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Patient" :PREP "into" :IO "Result")
                (:S "Agent" :O "Patient" :PREP "into" :IO "Predicate")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category trifle-105.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "with" :IO "Theme"))) 

 (define-mixin-category try-61.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme"))) 

 (define-mixin-category turn-26.6.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-RESULT WITH-SOURCE)
  :binds ((AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Agent" :O "Patient") (:S "Patient")
                (:S "Patient" :PREP "into" :IO "Result")
                (:S "Agent" :O "Patient" :PREP "into" :IO "Result")
                (:S "Patient" :PREP "from" :IO "Initial_State" :PREP "into" :IO
                 "Result")
                (:S "Agent" :O "Patient" :PREP "from" :IO "Initial_State" :PREP
                 "into" :NP "Result"))) 

 (define-mixin-category turn-26.6.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "to" :IO "Result" :PREP "from" :IO
                 "Initial_State")
                (:S "Agent" :PREP "from" :IO "Initial_State" :PREP "to" :IO
                 "Result")
                (:S "Agent" :PREP "to" :IO "Result"))) 

 (define-mixin-category urge-58.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((PATIENT (OR PHYSICAL-AGENT COMPANY))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category urge-58.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient" :IO "Result"))) 

 (define-mixin-category urge-58.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Patient" :IO "Topic"))) 

 (define-mixin-category use-105.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME PREDICATION)
  :binds ((PREDICATE "PREDICATE") (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Theme" :IO "Predicate")
                (:S "Agent" :O "Theme" :PREP "for" :IO "Predicate")
                (:S "Agent" :O "Theme" :ADV) (:S "Agent" :O "Theme"))) 

 (define-mixin-category vehicle-51.4.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-PATH WITH-RESULT)
  :binds ((PATH PHYSICAL) (THEME PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP "to into" :IO "Result")
                (:S "Agent" :O "Theme" :IO "Result") (:S "Agent" :O "Theme")
                (:S "Agent" :O "Theme" :PREP :NP "Trajectory")
                (:S "Theme" :PREP :NP "Trajectory") (:S "Theme"))) 

 (define-mixin-category vehicle-51.4.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-CAUSE)
  :binds ((CAUSE PHYSICAL))
  :realization ((:S "Theme" :O "Location"))) 

 (define-mixin-category vehicle_path-51.4.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-PATH WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION LOCATION) (SOURCE LOCATION) (THEME MOTOR-VEHICLE)
          (AGENT (OR PHYSICAL-AGENT MOTOR-VEHICLE)))
  :realization ((:S "Agent" :O "Trajectory" :PREP "from" :IO
                 "Initial_Location")
                (:S "Agent" :O "Trajectory" :PREP "to" :IO "Destination")
                (:S "Agent" :O "Trajectory")
                (:S "Agent" :O "Theme" :PREP "from" :IO "Initial_Location")
                (:S "Agent" :O "Theme" :PREP "to" :IO "Destination")
                (:S "Agent" :O "Theme"))) 

 (define-mixin-category void-106
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :O "Patient"))) 

 (define-mixin-category volunteer-95.4
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-INSTRUMENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((INSTRUMENT "OBJECT") (AGENT ("PRONOUN" "PHYSICAL-AGENT")))
  :realization ((:S "Agent" :O "Pivot" :IO "Theme") (:S "Agent" :O "Theme"))) 

 (define-mixin-category volunteer-95.4-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :O "Attribute"))) 

 (define-mixin-category waltz-51.5
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-PATH WITH-GOAL)
  :binds ((PATH PHYSICAL) (THEME PHYSICAL-AGENT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :O "Theme" :PREP "to into" :IO "Goal")
                (:S "Agent" :O "Theme" :IO "Goal")
                (:S "Agent" :O "Theme" :PREP :NP "Trajectory")
                (:S "Theme" :PREP :NP "Trajectory" :NP "Goal") (:S "Theme"))) 

 (define-mixin-category want-32.1
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT WITH-THEME)
  :binds ((INSTRUMENT PHYSICAL-AGENT))
  :realization ((:S "Pivot" :O "Theme"))) 

 (define-mixin-category want-32.1-1
  :specializes subcategorization-pattern
  :realization ((:S "Pivot" :O "Theme" :ADJ) (:S "Pivot" :O "Theme"))) 

 (define-mixin-category want-32.1-1-1
  :specializes subcategorization-pattern
  :realization ((:S "Pivot" :O "Theme"))) 

 (define-mixin-category weather-57
  :specializes subcategorization-pattern
  :mixins (WITH-THEME)
  :binds ((THEME (OR PHYSICAL NIL)))
  :realization ((:S "it[+be]" :PREP "with" :IO "Theme")
                (:S "it" :LEX "[+be]" :IO "Theme") (:S "it" :LEX "[+be]"))) 

 (define-mixin-category weekend-56
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-CAUSE)
  :binds ((CAUSE LOCATION) (THEME PHYSICAL-AGENT))
  :realization ((:S "Theme" :PREP :NP "Location"))) 

 (define-mixin-category wink-40.3.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-THEME WITH-RECIPIENT)
  :binds ((RECIPIENT PHYSICAL-AGENT) (THEME SPEECH-ACT) (AGENT PHYSICAL-AGENT))
  :realization ((:S "Agent" :PREP "in" :IO "Theme") (:S "Agent" :O "Theme")
                (:S "Agent" :PREP :NP "Recipient") (:S "Agent")
                (:S "Agent" :O "Patient" :PREP "in" :IO "Theme")
                (:S "Agent" :O "Patient"))) 

 (define-mixin-category wipe_instr-10.4.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-INSTRUMENT
           WITH-RESULT)
  :binds ((INSTRUMENT (AND/OR PHYSICAL PHYSICAL-AGENT)) (DESTINATION LOCATION)
          (SOURCE LOCATION) (THEME (AND/OR PHYSICAL PHYSICAL-AGENT))
          (AGENT (OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S "Agent" :O "Initial_Location" :IO "Result") (:S "Agent")
                (:S "Agent" :O "Initial_Location")
                (:S "Agent" :O "Theme" :PREP :NP "Initial_Location"))) 

 (define-mixin-category wipe_instr-10.4.2-1
  :specializes subcategorization-pattern
  :mixins (WITH-DESTINATION)
  :realization ((:S "Agent" :O "Theme" :PREP :NP "Destination"))) 

 (define-mixin-category wipe_manner-10.4.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((DESTINATION LOCATION) (SOURCE LOCATION)
          (THEME (AND/OR PHYSICAL PHYSICAL-AGENT)))
  :realization ((:S "Agent" :O "Theme") (:S "Agent" :O "Source")
                (:S "Agent" :O "Theme" :PREP :NP "Source"))) 

 (define-mixin-category wipe_manner-10.4.1-1
  :specializes subcategorization-pattern
  :mixins (WITH-SOURCE)
  :binds ((SOURCE REGION))
  :realization ((:S "Agent" :LEX "at" :IO "Source"))) 

 (define-mixin-category wish-62
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((EXPERIENCER (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Experiencer" :O "Stimulus"))) 

 (define-mixin-category withdraw-82
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-SOURCE)
  :binds ((AGENT (AND/OR PHYSICAL-AGENT COMPANY)))
  :realization NIL) 

 (define-mixin-category withdraw-82-1
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "of" :IO "Source") (:S "Agent"))) 

 (define-mixin-category withdraw-82-2
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "from" :IO "Source") (:S "Agent" :LEX "away"))) 

 (define-mixin-category withdraw-82-3
  :specializes subcategorization-pattern
  :realization ((:S "Agent" :PREP "from" :IO "Source") (:S "Agent"))) 

 (define-mixin-category work-73.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((AGENT ("PRONOUN" "PHYSICAL-AGENT"))
          (AGENT (OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "at" :IO "Theme")
                (:S "Agent" :PREP "at" :IO "Theme")
                (:S "Agent" :PREP "with" :IO "Co-Agent" :PREP "on" :IO "Theme")
                (:S "Agent" :PREP "on" :IO "Theme") (:S "Agent"))) 
