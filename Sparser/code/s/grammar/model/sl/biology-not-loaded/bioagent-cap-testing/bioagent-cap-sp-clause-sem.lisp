(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("What genes does mir-128 regulate?"
   (:var mv16079 :isa regulate :object mv16081 :agent mv16080 :present "PRESENT" :raw-text
    "regulate")
   (:var mv16081 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16080 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv16087 :isa regulate :object mv16088 :agent mv16084 :present "PRESENT" :raw-text
    "regulate")
   (:var mv16088 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv16084 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv16090 :isa tell :theme mv16094 :theme mv16091 :present "PRESENT")
   (:var mv16094 :isa involve :theme mv16096 :participant mv16093)
   (:var mv16096 :isa apoptosis :raw-text "apoptosis")
   (:var mv16093 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16091 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv16101 :isa be :subject mv16100 :predicate mv16116 :present "PRESENT")
   (:var mv16100 :isa what)
   (:var mv16116 :isa gene :plural t :predication mv16106 :has-determiner "THE" :raw-text "genes")
   (:var mv16106 :isa have :possessor mv16116 :that-rel t :thing-possessed mv16108 :present
    "PRESENT")
   (:var mv16108 :isa evidence :fact mv16111 :predication mv16107)
   (:var mv16111 :isa regulate :agent mv16099 :progressive mv16110 :raw-text "regulated")
   (:var mv16099 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv16110 :isa be) (:var mv16107 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv16119 :isa be :subject mv16118 :predicate mv16121 :present "PRESENT")
   (:var mv16118 :isa what) (:var mv16121 :isa involve :theme mv16123 :participant mv16120)
   (:var mv16123 :isa apoptosis :raw-text "apoptosis")
   (:var mv16120 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv16127 :isa be :subject mv16126 :predicate mv16129 :present "PRESENT")
   (:var mv16126 :isa what) (:var mv16129 :isa role :process mv16131 :participant mv16128)
   (:var mv16131 :isa apoptosis :raw-text "apoptosis")
   (:var mv16128 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv16135 :isa be :subject mv16134 :predicate mv16137 :present "PRESENT")
   (:var mv16134 :isa what) (:var mv16137 :isa role :process mv16141 :participant mv16136)
   (:var mv16141 :isa regulate :cellular-process mv16139 :raw-text "regulation")
   (:var mv16139 :isa apoptosis :raw-text "apoptotic")
   (:var mv16136 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv16146 :isa be :subject mv16145 :predicate mv16153 :present "PRESENT")
   (:var mv16145 :isa what) (:var mv16153 :isa evidence :statement mv16152 :has-determiner "THE")
   (:var mv16152 :isa target :agent mv16143 :object mv16144 :present "PRESENT" :raw-text "targets")
   (:var mv16143 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid
    "MIMAT0000243")
   (:var mv16144 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv16159 :isa regulate :object mv16160 :agent mv16156 :present "PRESENT" :raw-text
    "regulate")
   (:var mv16160 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv16156 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid
    "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv16166 :isa regulate :object mv16167 :agent mv16163 :present "PRESENT" :raw-text
    "regulate")
   (:var mv16167 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv16163 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid
    "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv16171 :isa be :subject mv16170 :predicate mv16174 :present "PRESENT")
   (:var mv16170 :isa what)
   (:var mv16174 :isa significance :context mv16169 :agent mv16168 :has-determiner "THE" :modifier
    mv16173)
   (:var mv16169 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv16168 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv16173 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv16182 :isa be :subject mv16181 :predicate mv16185 :present "PRESENT")
   (:var mv16181 :isa what)
   (:var mv16185 :isa significance :context mv16180 :agent mv16179 :has-determiner "THE" :modifier
    mv16184)
   (:var mv16180 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv16179 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv16184 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv16191 :isa be :subject mv16190 :predicate mv16197 :present "PRESENT")
   (:var mv16190 :isa what) (:var mv16197 :isa has-synonym :plural t :item mv16195)
   (:var mv16195 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv16200 :isa be :subject mv16199 :predicate mv16211 :present "PRESENT")
   (:var mv16199 :isa what)
   (:var mv16211 :isa gene :plural t :predication mv16209 :quantifier mv16201 :raw-text "genes")
   (:var mv16209 :isa mutation :object mv16211 :that-rel t :context mv16198 :present "PRESENT"
    :raw-text "mutated")
   (:var mv16198 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv16201 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv16220 :isa mutation :object mv16219 :context mv16212 :present "PRESENT" :raw-text
    "mutated")
   (:var mv16219 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16212 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv16234 :isa polar-question :statement mv16232)
   (:var mv16232 :isa bio-activate :agent mv16224 :object mv16222 :raw-text "activate")
   (:var mv16224 :isa phosphorylate :site mv16231 :raw-text "phosphorylation")
   (:var mv16231 :isa residue-on-protein :raw-text "S221" :position mv16229 :amino-acid mv16227)
   (:var mv16229 :isa number :value 221) (:var mv16227 :isa amino-acid :name "serine" :letter "S")
   (:var mv16222 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv16247 :isa polar-question :statement mv16245)
   (:var mv16245 :isa bio-activate :agent mv16237 :object mv16235 :raw-text "activate")
   (:var mv16237 :isa phosphorylate :site mv16244 :raw-text "phosphorylation")
   (:var mv16244 :isa residue-on-protein :raw-text "S222" :position mv16242 :amino-acid mv16240)
   (:var mv16242 :isa number :value 222) (:var mv16240 :isa amino-acid :name "serine" :letter "S")
   (:var mv16235 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv16250 :isa simulate :object mv16254 :present "PRESENT" :raw-text "Simulate")
   (:var mv16254 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv16249
    :component mv16248)
   (:var mv16249 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv16248 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv16256 :isa be :subject mv16255 :predicate mv16264 :present "PRESENT")
   (:var mv16255 :isa what) (:var mv16264 :isa member :plural t :set mv16261 :has-determiner "THE")
   (:var mv16261 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv16266 :isa be :subject mv16265 :predicate mv16274 :present "PRESENT")
   (:var mv16265 :isa what) (:var mv16274 :isa member :plural t :set mv16271 :has-determiner "THE")
   (:var mv16271 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv16276 :isa be :subject mv16275 :predicate mv16284 :present "PRESENT")
   (:var mv16275 :isa what) (:var mv16284 :isa member :plural t :set mv16281 :has-determiner "THE")
   (:var mv16281 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv16286 :isa be :subject mv16285 :predicate mv16298 :present "PRESENT")
   (:var mv16285 :isa what) (:var mv16298 :isa member :plural t :set mv16296 :has-determiner "THE")
   (:var mv16296 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv16301 :isa be :subject mv16300 :predicate mv16309 :present "PRESENT")
   (:var mv16300 :isa what) (:var mv16309 :isa member :plural t :set mv16299 :has-determiner "THE")
   (:var mv16299 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras"
    :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv16311 :isa be :subject mv16310 :predicate mv16314 :present "PRESENT")
   (:var mv16310 :isa what) (:var mv16314 :isa has-name :item mv16317 :quantifier mv16312)
   (:var mv16317 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16312 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv16321 :isa be :subject mv16320 :predicate mv16324 :present "PRESENT")
   (:var mv16320 :isa what) (:var mv16324 :isa has-name :item mv16319 :quantifier mv16322)
   (:var mv16319 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv16322 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv16332 :isa affect :manner mv16330 :agent mv16328 :object mv16329 :present "PRESENT"
    :raw-text "affect")
   (:var mv16330 :isa how)
   (:var mv16328 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16329 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv16334 :isa list :theme mv16340 :present "PRESENT")
   (:var mv16340 :isa gene :plural t :predication mv16338 :quantifier mv16335 :raw-text "genes")
   (:var mv16338 :isa regulate :object mv16340 :agent mv16333 :past "PAST" :raw-text "regulated")
   (:var mv16333 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv16335 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv16344 :isa list :theme mv16355 :present "PRESENT")
   (:var mv16355 :isa gene :plural t :predication mv16350 :quantifier mv16345 :has-determiner "THE"
    :raw-text "genes")
   (:var mv16350 :isa regulate :object mv16355 :agent mv16343 :past "PAST" :raw-text "regulated")
   (:var mv16343 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv16345 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv16359 :isa list :theme mv16365 :present "PRESENT")
   (:var mv16365 :isa gene :plural t :predication mv16363 :has-determiner "THE" :raw-text "genes")
   (:var mv16363 :isa regulate :object mv16365 :agent mv16358 :past "PAST" :raw-text "regulated")
   (:var mv16358 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv16370 :isa be :subject mv16369 :predicate mv16385 :present "PRESENT")
   (:var mv16369 :isa what)
   (:var mv16385 :isa regulator :plural t :theme mv16380 :has-determiner "THE" :predication mv16372
    :context mv16373 :raw-text "regulators")
   (:var mv16380 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv16368 mv16379))
   (:var mv16368 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv16379 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16372 :isa common) (:var mv16373 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv16387 :isa be :subject mv16386 :predicate mv16400 :present "PRESENT")
   (:var mv16386 :isa what)
   (:var mv16400 :isa upstream-segment :plural t :pathwaycomponent mv16396 :has-determiner "THE"
    :predication mv16389 :raw-text "upstreams")
   (:var mv16396 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv16393 mv16395))
   (:var mv16393 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv16395 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16389 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv16403 :isa be :subject mv16402 :predicate mv16415 :present "PRESENT")
   (:var mv16402 :isa what)
   (:var mv16415 :isa upstream-segment :plural t :pathwaycomponent mv16411 :has-determiner "THE"
    :predication mv16405 :raw-text "upstreams")
   (:var mv16411 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv16401 mv16410))
   (:var mv16401 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv16410 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16405 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv16418 :isa be :subject mv16417 :predicate mv16425 :present "PRESENT")
   (:var mv16417 :isa what)
   (:var mv16425 :isa gene :plural t :predication mv16423 :has-determiner "THE" :raw-text "genes")
   (:var mv16423 :isa regulate :object mv16425 :that-rel t :agent mv16416 :present "PRESENT"
    :raw-text "regulates")
   (:var mv16416 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv16430 :isa be :subject mv16429 :predicate mv16441 :present "PRESENT")
   (:var mv16429 :isa what)
   (:var mv16441 :isa micro-rna :plural t :predication mv16435 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv16435 :isa regulate :agent mv16441 :that-rel t :object mv16439 :present "PRESENT"
    :raw-text "regulate")
   (:var mv16439 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv16436 mv16437 mv16426 mv16427 mv16428))
   (:var mv16436 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv16437 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv16426 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16427 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv16428 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv16444 :isa be :subject mv16443 :predicate mv16455 :present "PRESENT")
   (:var mv16443 :isa what)
   (:var mv16455 :isa micro-rna :plural t :predication mv16449 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv16449 :isa regulate :agent mv16455 :that-rel t :object mv16453 :present "PRESENT"
    :raw-text "regulate")
   (:var mv16453 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv16450 mv16451 mv16442))
   (:var mv16450 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv16451 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv16442 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv16457 :isa be :subject mv16456 :predicate mv16465 :present "PRESENT")
   (:var mv16456 :isa what)
   (:var mv16465 :isa regulator :plural t :theme mv16462 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv16462 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv16469 :isa regulate :|affected-process-OR-object| mv16467 :agent mv16466 :organ mv16472
    :present "PRESENT" :raw-text "regulate")
   (:var mv16467 :isa what)
   (:var mv16466 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16472 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv16477 :isa regulate :|affected-process-OR-object| mv16474 :|agent-OR-cause| mv16476
    :organ mv16480 :present "PRESENT" :raw-text "regulate")
   (:var mv16474 :isa what) (:var mv16476 :isa pronoun/inanimate :word "it")
   (:var mv16480 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv16490 :isa regulate :object mv16489 :agent mv16482 :present "PRESENT" :raw-text
    "regulated")
   (:var mv16489 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16482 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv16502 :isa regulate :object mv16501 :agent mv16500 :present "PRESENT" :raw-text
    "regulated")
   (:var mv16501 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16500 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv16512 :isa regulate :object mv16511 :agent mv16510 :present "PRESENT" :raw-text
    "regulated")
   (:var mv16511 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16510 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv16521 :isa regulate :|affected-process-OR-object| mv16517 :agent mv16514 :present
    "PRESENT" :raw-text "regulated")
   (:var mv16517 :isa these :quantifier mv16515 :word "these") (:var mv16515 :isa which)
   (:var mv16514 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv16531 :isa regulate :|affected-process-OR-object| mv16527 :agent mv16524 :present
    "PRESENT" :raw-text "regulated")
   (:var mv16527 :isa these :quantifier mv16525 :word "these") (:var mv16525 :isa which)
   (:var mv16524 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv16538 :isa bio-use :agent mv16540 :object mv16539 :present "PRESENT" :raw-text "use")
   (:var mv16540 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv16539 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv16545 :isa regulate :location mv16543 :agent mv16541 :affected-process mv16547 :present
    "PRESENT" :raw-text "regulate")
   (:var mv16543 :isa where)
   (:var mv16541 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16547 :isa gene-transcript-express :object mv16542 :has-determiner "THE" :raw-text
    "expression")
   (:var mv16542 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv16571 :isa polar-question :statement mv16555)
   (:var mv16555 :isa tell :agent mv16554 :theme mv16570 :beneficiary mv16556 :modal "CAN")
   (:var mv16554 :isa interlocutor :name "hearer")
   (:var mv16570 :isa transcription-factor :plural t :predication mv16568 :quantifier mv16557
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv16568 :isa share :object mv16570 :that-rel t :participant mv16565 :modal "CAN" :raw-text
    "shared")
   (:var mv16565 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv16552 mv16564))
   (:var mv16552 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv16564 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv16557 :isa all :word "all") (:var mv16556 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv16592 :isa be :subject mv16591 :predicate mv16600 :present "PRESENT")
   (:var mv16591 :isa what)
   (:var mv16600 :isa regulator :plural t :theme mv16597 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv16597 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv16604 :isa regulate :|affected-process-OR-object| mv16601 :agent mv16603 :present
    "PRESENT" :raw-text "regulate")
   (:var mv16601 :isa what)
   (:var mv16603 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv16606 :isa be :subject mv16605 :predicate mv16607 :present "PRESENT")
   (:var mv16605 :isa what)
   (:var mv16607 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv16614 :isa polar-question :statement mv16610)
   (:var mv16610 :isa involve :object mv16608 :theme mv16612 :past "PAST")
   (:var mv16608 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16612 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?"
   (:var mv16623 :isa polar-question :statement mv16617)
   (:var mv16617 :isa involve :object mv16615 :theme mv16621 :past "PAST")
   (:var mv16615 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16621 :isa regulate :cellular-process mv16619 :raw-text "regulation")
   (:var mv16619 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?"
   (:var mv16631 :isa polar-question :statement mv16626)
   (:var mv16626 :isa involve :object mv16624 :theme mv16628 :past "PAST")
   (:var mv16624 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16628 :isa regulate :affected-process mv16629 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv16629 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv16643 :isa regulate :object mv16642 :agent mv16632 :present "PRESENT" :raw-text
    "regulated")
   (:var mv16642 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv16634 :raw-text
    "genes")
   (:var mv16634 :isa apoptosis :raw-text "apoptotic")
   (:var mv16632 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv16645 :isa list :theme mv16652 :present "PRESENT")
   (:var mv16652 :isa gene :plural t :has-determiner "THE" :cellular-process mv16647 :raw-text
    "genes")
   (:var mv16647 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv16664 :isa involve :object mv16667 :theme mv16662 :present "PRESENT")
   (:var mv16667 :isa gene :plural t :predication mv16657 :has-determiner "WHAT" :raw-text "genes")
   (:var mv16657 :isa regulate :object mv16667 :agent mv16653 :past "PAST" :raw-text "regulated")
   (:var mv16653 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16662 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv16669 :isa list :theme mv16671 :present "PRESENT")
   (:var mv16671 :isa gene :plural t :predication mv16672 :raw-text "genes")
   (:var mv16672 :isa regulate :object mv16671 :agent mv16668 :past "PAST" :raw-text "regulated")
   (:var mv16668 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv16684 :isa involve :object mv16683 :theme mv16682 :present "PRESENT")
   (:var mv16683 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16682 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv16697 :isa involve :object mv16699 :theme mv16695 :present "PRESENT")
   (:var mv16699 :isa gene :plural t :predication mv16691 :has-determiner "WHAT" :raw-text "genes")
   (:var mv16691 :isa regulate :object mv16699 :that-rel t :agent mv16686 :present "PRESENT"
    :raw-text "regulates")
   (:var mv16686 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16695 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv16701 :isa list :theme mv16707 :present "PRESENT")
   (:var mv16707 :isa gene :plural t :predication mv16705 :has-determiner "THE" :raw-text "genes")
   (:var mv16705 :isa regulate :object mv16707 :agent mv16700 :past "PAST" :raw-text "regulated")
   (:var mv16700 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv16711 :isa list :theme mv16717 :present "PRESENT")
   (:var mv16717 :isa gene :plural t :has-determiner "THE" :predication mv16713 :raw-text "genes")
   (:var mv16713 :isa regulate :object mv16717 :agent mv16710 :raw-text "regulated")
   (:var mv16710 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv16726 :isa regulate :object mv16725 :agent mv16718 :present "PRESENT" :raw-text
    "regulated")
   (:var mv16725 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv16718 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv16736 :isa involve :object mv16735 :theme mv16734 :present "PRESENT")
   (:var mv16735 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv16734 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv16749 :isa involve :object mv16748 :present "PRESENT")
   (:var mv16748 :isa gene :plural t :has-determiner "WHAT" :predication mv16740 :raw-text "genes")
   (:var mv16740 :isa regulate :object mv16748 :agent mv16738 :raw-text "regulated")
   (:var mv16738 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv16752 :isa let :complement mv16773 :present "PRESENT")
   (:var mv16773 :isa know :agent mv16753 :statement mv16772 :present "PRESENT")
   (:var mv16753 :isa interlocutor :name "speaker")
   (:var mv16772 :isa wh-question :statement mv16767 :wh if)
   (:var mv16767 :isa involve :object mv16771 :theme mv16765 :present "PRESENT")
   (:var mv16771 :isa gene :plural t :quantifier mv16756 :predication mv16761 :has-determiner "THE"
    :raw-text "genes")
   (:var mv16756 :isa any :word "any")
   (:var mv16761 :isa regulate :object mv16771 :agent mv16751 :present "PRESENT" :raw-text
    "regulates")
   (:var mv16751 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16765 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv16775 :isa let :complement mv16797 :present "PRESENT")
   (:var mv16797 :isa know :agent mv16776 :statement mv16796 :present "PRESENT")
   (:var mv16776 :isa interlocutor :name "speaker")
   (:var mv16796 :isa wh-question :statement mv16791 :wh whether)
   (:var mv16791 :isa involve :object mv16795 :theme mv16789 :present "PRESENT")
   (:var mv16795 :isa gene :plural t :quantifier mv16780 :predication mv16785 :has-determiner "THE"
    :raw-text "genes")
   (:var mv16780 :isa any :word "any")
   (:var mv16785 :isa regulate :object mv16795 :agent mv16774 :present "PRESENT" :raw-text
    "regulates")
   (:var mv16774 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16789 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv16816 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv16818 :isa tell :beneficiary mv16819 :present "PRESENT")
   (:var mv16819 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv16829 :isa tell :theme mv16838 :beneficiary mv16830 :present "PRESENT")
   (:var mv16838 :isa wh-question :statement mv16836 :wh if)
   (:var mv16836 :isa involve :object mv16828 :theme mv16835 :present "PRESENT")
   (:var mv16828 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16835 :isa apoptosis :raw-text "apoptosis")
   (:var mv16830 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv16840 :isa tell :theme mv16850 :theme mv16841 :present "PRESENT")
   (:var mv16850 :isa wh-question :statement mv16848 :wh whether)
   (:var mv16848 :isa involve :object mv16839 :theme mv16847 :present "PRESENT")
   (:var mv16839 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16847 :isa apoptosis :raw-text "apoptosis")
   (:var mv16841 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv16853 :isa be :subject mv16852 :predicate mv16865 :present "PRESENT")
   (:var mv16852 :isa what)
   (:var mv16865 :isa gene :plural t :predication mv16863 :predication mv16854 :raw-text "genes")
   (:var mv16863 :isa involve :object mv16865 :that-rel t :theme mv16861 :present "PRESENT")
   (:var mv16861 :isa apoptosis :raw-text "apoptosis")
   (:var mv16854 :isa regulate :object mv16865 :agent mv16851 :raw-text "regulated")
   (:var mv16851 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv16868 :isa be :subject mv16867 :predicate mv16880 :present "PRESENT")
   (:var mv16867 :isa what)
   (:var mv16880 :isa gene :plural t :predication mv16878 :predication mv16869 :raw-text "genes")
   (:var mv16878 :isa involve :object mv16880 :that-rel t :theme mv16876 :present "PRESENT")
   (:var mv16876 :isa apoptosis :raw-text "apoptosis")
   (:var mv16869 :isa regulate :object mv16880 :agent mv16866 :raw-text "regulated")
   (:var mv16866 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv16892 :isa involve :object mv16885 :theme mv16891 :present "PRESENT")
   (:var mv16885 :isa downstream-segment :pathwaycomponent mv16881 :has-determiner "WHAT" :modifier
    mv16884 :raw-text "downstream")
   (:var mv16881 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16884 :isa gene :plural t :raw-text "genes")
   (:var mv16891 :isa apoptosis :raw-text "apoptosis"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv16897 :isa be :subject mv16896 :predicate mv16899 :present "PRESENT")
   (:var mv16896 :isa what)
   (:var mv16899 :isa involve :theme mv16904 :participant mv16895 :has-determiner "THE")
   (:var mv16904 :isa regulate :cellular-process mv16902 :raw-text "regulation")
   (:var mv16902 :isa apoptosis :raw-text "apoptotic")
   (:var mv16895 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv16910 :isa involve :theme mv16912 :object mv16911 :present "PRESENT")
   (:var mv16912 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv16911 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv16918 :isa involve :theme mv16920 :object mv16919 :present "PRESENT")
   (:var mv16920 :isa bio-process :plural t :has-determiner "WHAT" :raw-text "processes")
   (:var mv16919 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv16932 :isa involve :object mv16931 :theme mv16929 :present "PRESENT")
   (:var mv16931 :isa gene :plural t :has-determiner "WHICH" :predication mv16923 :raw-text
    "genes")
   (:var mv16923 :isa regulate :object mv16931 :agent mv16921 :raw-text "regulated")
   (:var mv16921 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16929 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv16948 :isa involve :object mv16951 :theme mv16945 :present "PRESENT")
   (:var mv16951 :isa gene :plural t :organ mv16941 :has-determiner "WHICH" :predication mv16936
    :raw-text "genes")
   (:var mv16941 :isa liver :has-determiner "THE")
   (:var mv16936 :isa regulate :object mv16951 :agent mv16934 :raw-text "regulated")
   (:var mv16934 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16945 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv16963 :isa involve :object mv16962 :theme mv16960 :present "PRESENT")
   (:var mv16962 :isa gene :plural t :has-determiner "WHICH" :predication mv16954 :raw-text
    "genes")
   (:var mv16954 :isa regulate :object mv16962 :agent mv16952 :raw-text "regulated")
   (:var mv16952 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16960 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv16967 :isa bio-activate :agent mv16966 :object mv16965 :present "PRESENT" :raw-text
    "activates")
   (:var mv16966 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv16965 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv16969 :isa bio-activate :agent mv16968 :object mv16970 :present "PRESENT" :raw-text
    "activates")
   (:var mv16968 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv16970 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv16973 :isa phosphorylate :agent mv16971 :substrate mv16972 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv16971 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv16972 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv16976 :isa dephosphorylate :agent mv16974 :substrate mv16975 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv16974 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv16975 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv16978 :isa upregulate :agent mv16977 :object mv16979 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv16977 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv16979 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv16983 :isa binding :binder mv16982 :direct-bindee mv16986 :present "PRESENT" :raw-text
    "binds")
   (:var mv16982 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv16986 :isa protein :has-determiner "THE" :modifier mv16981 :modifier mv16985 :raw-text
    "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv16981 :isa growth-factor :raw-text "growth factor")
   (:var mv16985 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv16987 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv16993 :isa binding :binder mv17000 :direct-bindee mv17001 :present "PRESENT" :raw-text
    "binds")
   (:var mv17000 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv16991
    :component mv16990)
   (:var mv16991 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv16990 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17001 :isa bio-complex :quantifier mv16994 :raw-text "EGFR-EGF" :component mv16996
    :component mv16995)
   (:var mv16994 :isa another :word "another")
   (:var mv16996 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv16995 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv17007 :isa binding :binder mv17009 :direct-bindee mv17002 :present "PRESENT" :raw-text
    "binds")
   (:var mv17009 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv17004
    :component mv17004)
   (:var mv17004 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17002 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv17010 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv17016 :isa binding :binder mv17012 :direct-bindee mv17013 :present "PRESENT" :raw-text
    "binds")
   (:var mv17012 :isa protein :predication mv17015 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv17015 :isa binding :direct-bindee mv17012 :binder mv17014 :raw-text "bound")
   (:var mv17014 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17013 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv17020 :isa binding :binder mv17018 :direct-bindee mv17021 :present "PRESENT" :raw-text
    "binds")
   (:var mv17018 :isa protein :predication mv17019 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv17019 :isa binding :direct-bindee mv17018 :binder mv17017 :raw-text "bound")
   (:var mv17017 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv17021 :isa protein :predication mv17028 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv17028 :isa binding :direct-bindee mv17021 :that-rel t :bindee mv17027 :present "PRESENT"
    :negation mv17024 :raw-text "bound")
   (:var mv17027 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17024 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv17033 :isa binding :binder mv17032 :direct-bindee mv17034 :present "PRESENT" :raw-text
    "binds")
   (:var mv17032 :isa protein :predication mv17031 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv17031 :isa binding :direct-bindee mv17032 :binder mv17030 :raw-text "bound")
   (:var mv17030 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv17034 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv17044 :isa binding :binder mv17038 :direct-bindee mv17045 :present "PRESENT" :raw-text
    "binds")
   (:var mv17038 :isa protein :predication mv17046 :predication mv17037 :raw-text "NRAS" :uid
    "UP:P01111" :name "RASN_HUMAN")
   (:var mv17046 :isa binding :direct-bindee mv17038 :that-rel t :bindee mv17035 :present "PRESENT"
    :negation mv17041 :raw-text "bound")
   (:var mv17035 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv17041 :isa not :word "not")
   (:var mv17037 :isa binding :direct-bindee mv17038 :binder mv17036 :raw-text "bound")
   (:var mv17036 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv17045 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv17048 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv17053 :isa affect :manner mv17050 :agent mv17052 :object mv17049 :present "PRESENT"
    :raw-text "affect")
   (:var mv17050 :isa how)
   (:var mv17052 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17049 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv17062 :isa explicit-suggestion :suggestion mv17056 :marker let-as-directive)
   (:var mv17056 :isa highlight :theme mv17058 :present "PRESENT")
   (:var mv17058 :isa downstream-segment :pathwaycomponent mv17055 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv17055 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv17072 :isa explicit-suggestion :suggestion mv17066 :marker let-as-directive)
   (:var mv17066 :isa move-to :goal mv17070 :theme mv17064 :present "PRESENT")
   (:var mv17070 :isa bottom :has-determiner "THE")
   (:var mv17064 :isa protein :predication mv17067 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17067 :isa phosphorylate :substrate mv17064 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv17081 :isa explicit-suggestion :suggestion mv17077 :marker let-as-directive)
   (:var mv17077 :isa put-something-somewhere :theme mv17074 :present "PRESENT")
   (:var mv17074 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv17089 :isa explicit-suggestion :suggestion mv17084 :marker let-as-directive)
   (:var mv17084 :isa show :at-relative-location mv17087 :|statement-OR-theme| mv17083 :present
    "PRESENT")
   (:var mv17087 :isa top-qua-location :has-determiner "THE")
   (:var mv17083 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv17100 :isa polar-question :statement mv17098)
   (:var mv17098 :isa decrease :agent mv17090 :object mv17094 :raw-text "decrease")
   (:var mv17090 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17094 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv17115 :isa polar-question :statement mv17112)
   (:var mv17112 :isa decrease :agent mv17101 :|affected-process-OR-object| mv17106 :raw-text
    "decrease")
   (:var mv17101 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17106 :isa bio-amount :measured-item mv17108 :has-determiner "THE" :raw-text "amount")
   (:var mv17108 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS decrease ELK1 in the model?" (:var mv17126 :isa polar-question :statement mv17124)
   (:var mv17124 :isa decrease :agent mv17118 :object mv17116 :raw-text "decrease")
   (:var mv17118 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv17116 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv17149 :isa polar-question :statement mv17148)
   (:var mv17148 :isa event-relation :subordinated-event mv17146 :event mv17143)
   (:var mv17146 :isa wh-question :statement mv17144 :wh if)
   (:var mv17144 :isa increase :|agent-OR-cause| mv17132 :level mv17142
    :|affected-process-OR-object| mv17136 :raw-text "increase")
   (:var mv17132 :isa interlocutor :name "person-and-machine")
   (:var mv17142 :isa measurement :number mv17139) (:var mv17139 :isa number :value 10)
   (:var mv17136 :isa bio-amount :measured-item mv17127 :has-determiner "THE" :raw-text "amount")
   (:var mv17127 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17143 :isa vanish :agent mv17129 :raw-text "vanish")
   (:var mv17129 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv17174 :isa polar-question :statement mv17173)
   (:var mv17173 :isa event-relation :subordinated-event mv17171 :event mv17167)
   (:var mv17171 :isa wh-question :statement mv17168 :wh if)
   (:var mv17168 :isa increase :|agent-OR-cause| mv17155 :|multiplier-OR-cause| mv17166
    :|affected-process-OR-object| mv17159 :raw-text "increase")
   (:var mv17155 :isa interlocutor :name "person-and-machine")
   (:var mv17166 :isa measurement :number mv17163) (:var mv17163 :isa number :value 10)
   (:var mv17159 :isa bio-amount :measured-item mv17150 :has-determiner "THE" :raw-text "amount")
   (:var mv17150 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17167 :isa vanish :agent mv17152 :raw-text "vanish")
   (:var mv17152 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv17196 :isa polar-question :statement mv17195)
   (:var mv17195 :isa event-relation :subordinated-event mv17193 :event mv17190)
   (:var mv17193 :isa wh-question :statement mv17191 :wh if)
   (:var mv17191 :isa increase :|agent-OR-cause| mv17181 :|multiplier-OR-cause| mv17189 :object
    mv17176 :raw-text "increase")
   (:var mv17181 :isa interlocutor :name "person-and-machine")
   (:var mv17189 :isa measurement :number mv17186) (:var mv17186 :isa number :value 10)
   (:var mv17176 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv17190 :isa vanish :agent mv17175 :raw-text "vanish")
   (:var mv17175 :isa protein :predication mv17178 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17178 :isa phosphorylate :substrate mv17175 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv17222 :isa polar-question :statement mv17221)
   (:var mv17221 :isa event-relation :subordinated-event mv17219 :event mv17215)
   (:var mv17219 :isa wh-question :statement mv17216 :wh if)
   (:var mv17216 :isa increase :|agent-OR-cause| mv17203 :|multiplier-OR-cause| mv17214
    :|affected-process-OR-object| mv17207 :raw-text "increase")
   (:var mv17203 :isa interlocutor :name "person-and-machine")
   (:var mv17214 :isa measurement :number mv17211) (:var mv17211 :isa number :value 10)
   (:var mv17207 :isa bio-amount :measured-item mv17198 :has-determiner "THE" :raw-text "amount")
   (:var mv17198 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv17215 :isa vanish :agent mv17197 :raw-text "vanish")
   (:var mv17197 :isa protein :predication mv17200 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17200 :isa phosphorylate :substrate mv17197 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv17234 :isa polar-question :statement mv17232)
   (:var mv17232 :isa increase :cause mv17226 :adverb mv17229 :raw-text "increase")
   (:var mv17226 :isa bio-amount :measured-item mv17223 :has-determiner "THE" :raw-text "amount")
   (:var mv17223 :isa protein :predication mv17228 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17228 :isa phosphorylate :substrate mv17223 :raw-text "phosphorylated")
   (:var mv17229 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?"
   (:var mv17244 :isa polar-question :statement mv17243)
   (:var mv17243 :isa copular-predication :item mv17235 :value mv17241 :predicate mv17237)
   (:var mv17235 :isa protein :predication mv17238 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv17238 :isa binding :direct-bindee mv17235 :bindee mv17236 :past "PAST" :raw-text
    "bound")
   (:var mv17236 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17241 :isa high :adverb mv17240) (:var mv17240 :isa eventually :name "eventually")
   (:var mv17237 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv17253 :isa polar-question :statement mv17252)
   (:var mv17252 :isa copular-predication :item mv17245 :value mv17250 :predicate mv17247)
   (:var mv17245 :isa protein :predication mv17248 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17248 :isa binding :direct-bindee mv17245 :bindee mv17246 :past "PAST" :raw-text
    "bound")
   (:var mv17246 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv17250 :isa transient) (:var mv17247 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv17260 :isa polar-question :statement mv17259)
   (:var mv17259 :isa sustained :participant mv17255 :past "PAST")
   (:var mv17255 :isa protein :predication mv17257 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv17257 :isa binding :direct-bindee mv17255 :binder mv17254 :raw-text "bound")
   (:var mv17254 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv17267 :isa polar-question :statement mv17266)
   (:var mv17266 :isa copular-predication :item mv17261 :value mv17265 :predicate mv17262)
   (:var mv17261 :isa protein :predication mv17263 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17263 :isa phosphorylate :substrate mv17261 :raw-text "phosphorylated")
   (:var mv17265 :isa high :adverb mv17264) (:var mv17264 :isa always :name "always")
   (:var mv17262 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv17274 :isa polar-question :statement mv17273)
   (:var mv17273 :isa copular-predication :item mv17268 :value mv17272 :predicate mv17269)
   (:var mv17268 :isa protein :predication mv17270 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17270 :isa phosphorylate :substrate mv17268 :raw-text "phosphorylated")
   (:var mv17272 :isa high :adverb mv17271) (:var mv17271 :isa eventually :name "eventually")
   (:var mv17269 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv17281 :isa polar-question :statement mv17280)
   (:var mv17280 :isa copular-predication :item mv17275 :value mv17279 :predicate mv17276)
   (:var mv17275 :isa protein :predication mv17277 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17277 :isa phosphorylate :substrate mv17275 :raw-text "phosphorylated")
   (:var mv17279 :isa high :adverb mv17278) (:var mv17278 :isa ever :name "ever")
   (:var mv17276 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv17291 :isa polar-question :statement mv17290)
   (:var mv17290 :isa copular-predication :item mv17282 :value mv17285 :predicate mv17283)
   (:var mv17282 :isa protein :predication mv17284 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17284 :isa phosphorylate :substrate mv17282 :raw-text "phosphorylated")
   (:var mv17285 :isa high) (:var mv17283 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv17297 :isa polar-question :statement mv17296)
   (:var mv17296 :isa copular-predication :item mv17292 :value mv17295 :predicate mv17293)
   (:var mv17292 :isa protein :predication mv17294 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17294 :isa phosphorylate :substrate mv17292 :raw-text "phosphorylated")
   (:var mv17295 :isa high) (:var mv17293 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv17308 :isa polar-question :statement mv17302)
   (:var mv17302 :isa sustained :theme mv17298 :level mv17306 :past "PAST")
   (:var mv17298 :isa protein :predication mv17300 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17300 :isa phosphorylate :substrate mv17298 :raw-text "phosphorylated")
   (:var mv17306 :isa level :has-determiner "A" :predication mv17305 :raw-text "level")
   (:var mv17305 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv17314 :isa polar-question :statement mv17313)
   (:var mv17313 :isa sustained :participant mv17309 :past "PAST")
   (:var mv17309 :isa protein :predication mv17311 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17311 :isa phosphorylate :substrate mv17309 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv17320 :isa polar-question :statement mv17319)
   (:var mv17319 :isa copular-predication :item mv17315 :value mv17318 :predicate mv17316)
   (:var mv17315 :isa protein :predication mv17317 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17317 :isa phosphorylate :substrate mv17315 :raw-text "phosphorylated")
   (:var mv17318 :isa transient) (:var mv17316 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv17331 :isa polar-question :statement mv17330)
   (:var mv17330 :isa copular-predication :item mv17329 :value mv17327 :predicate mv17323)
   (:var mv17329 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv17322
    :component mv17321)
   (:var mv17322 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17321 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv17327 :isa high :adverb mv17326) (:var mv17326 :isa ever :name "ever")
   (:var mv17323 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv17340 :isa polar-question :statement mv17337)
   (:var mv17337 :isa bio-form :agent mv17339 :past "PAST" :raw-text "formed")
   (:var mv17339 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv17333
    :component mv17332)
   (:var mv17333 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17332 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv17363 :isa polar-question :statement mv17362)
   (:var mv17362 :isa event-relation :subordinated-event mv17358 :event mv17360)
   (:var mv17358 :isa wh-question :statement mv17352 :wh if)
   (:var mv17352 :isa increase :|agent-OR-cause| mv17350 :level mv17357 :object mv17341 :present
    "PRESENT" :raw-text "increase")
   (:var mv17350 :isa interlocutor :name "person-and-machine")
   (:var mv17357 :isa measurement :number mv17354) (:var mv17354 :isa number :value 10)
   (:var mv17341 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17360 :isa copular-predication :item mv17344 :value mv17348 :predicate mv17342)
   (:var mv17344 :isa bio-amount :measured-item mv17346 :has-determiner "THE" :raw-text "amount")
   (:var mv17346 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv17348 :isa low :adverb mv17347) (:var mv17347 :isa always :name "always")
   (:var mv17342 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv17388 :isa polar-question :statement mv17387)
   (:var mv17387 :isa event-relation :subordinated-event mv17383 :event mv17385)
   (:var mv17383 :isa wh-question :statement mv17375 :wh if)
   (:var mv17375 :isa increase :|agent-OR-cause| mv17373 :|multiplier-OR-cause| mv17381 :object
    mv17364 :present "PRESENT" :raw-text "increase")
   (:var mv17373 :isa interlocutor :name "person-and-machine")
   (:var mv17381 :isa measurement :number mv17378) (:var mv17378 :isa number :value 100)
   (:var mv17364 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17385 :isa copular-predication :item mv17367 :value mv17371 :predicate mv17365)
   (:var mv17367 :isa bio-amount :measured-item mv17369 :has-determiner "THE" :raw-text "amount")
   (:var mv17369 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv17371 :isa low :adverb mv17370) (:var mv17370 :isa always :name "always")
   (:var mv17365 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv17415 :isa polar-question :statement mv17414)
   (:var mv17414 :isa event-relation :subordinated-event mv17410 :event mv17412)
   (:var mv17410 :isa wh-question :statement mv17400 :wh if)
   (:var mv17400 :isa increase :|agent-OR-cause| mv17398 :level mv17408
    :|affected-process-OR-object| mv17402 :present "PRESENT" :raw-text "increase")
   (:var mv17398 :isa interlocutor :name "person-and-machine")
   (:var mv17408 :isa measurement :number mv17405) (:var mv17405 :isa number :value 100)
   (:var mv17402 :isa bio-amount :measured-item mv17389 :has-determiner "THE" :raw-text "amount")
   (:var mv17389 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17412 :isa copular-predication :item mv17392 :value mv17396 :predicate mv17390)
   (:var mv17392 :isa bio-amount :measured-item mv17394 :has-determiner "THE" :raw-text "amount")
   (:var mv17394 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv17396 :isa high :adverb mv17395) (:var mv17395 :isa ever :name "ever")
   (:var mv17390 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv17444 :isa polar-question :statement mv17443)
   (:var mv17443 :isa event-relation :subordinated-event mv17439 :event mv17441)
   (:var mv17439 :isa wh-question :statement mv17427 :wh if)
   (:var mv17427 :isa increase :|agent-OR-cause| mv17425 :|multiplier-OR-cause| mv17436
    :|affected-process-OR-object| mv17429 :present "PRESENT" :raw-text "increase")
   (:var mv17425 :isa interlocutor :name "person-and-machine")
   (:var mv17436 :isa measurement :number mv17433) (:var mv17433 :isa number :value 100)
   (:var mv17429 :isa bio-amount :measured-item mv17416 :has-determiner "THE" :raw-text "amount")
   (:var mv17416 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17441 :isa copular-predication :item mv17419 :value mv17423 :predicate mv17417)
   (:var mv17419 :isa bio-amount :measured-item mv17421 :has-determiner "THE" :raw-text "amount")
   (:var mv17421 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv17423 :isa high :adverb mv17422) (:var mv17422 :isa ever :name "ever")
   (:var mv17417 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv17454 :isa polar-question :statement mv17450)
   (:var mv17450 :isa phosphorylate :cause mv17448 :past "PAST" :raw-text "phosphorylated")
   (:var mv17448 :isa bio-amount :measured-item mv17445 :has-determiner "THE" :raw-text "amount")
   (:var mv17445 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv17465 :isa polar-question :statement mv17464)
   (:var mv17464 :isa copular-predication :item mv17458 :value mv17462 :predicate mv17456)
   (:var mv17458 :isa bio-amount :measured-item mv17455 :has-determiner "THE" :raw-text "amount")
   (:var mv17455 :isa protein :predication mv17460 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17460 :isa phosphorylate :substrate mv17455 :raw-text "phosphorylated")
   (:var mv17462 :isa high :adverb mv17461) (:var mv17461 :isa eventually :name "eventually")
   (:var mv17456 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv17476 :isa polar-question :statement mv17475)
   (:var mv17475 :isa copular-predication :item mv17469 :value mv17473 :predicate mv17467)
   (:var mv17469 :isa bio-amount :measured-item mv17466 :has-determiner "THE" :raw-text "amount")
   (:var mv17466 :isa protein :predication mv17471 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17471 :isa phosphorylate :substrate mv17466 :raw-text "phosphorylated")
   (:var mv17473 :isa high :adverb mv17472) (:var mv17472 :isa ever :name "ever")
   (:var mv17467 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv17487 :isa polar-question :statement mv17485)
   (:var mv17485 :isa increase :cause mv17480 :adverb mv17483 :raw-text "increasing")
   (:var mv17480 :isa bio-amount :measured-item mv17477 :has-determiner "THE" :raw-text "amount")
   (:var mv17477 :isa protein :predication mv17482 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17482 :isa phosphorylate :substrate mv17477 :raw-text "phosphorylated")
   (:var mv17483 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv17497 :isa polar-question :statement mv17496)
   (:var mv17496 :isa copular-predication :item mv17491 :value mv17494 :predicate mv17489)
   (:var mv17491 :isa bio-amount :measured-item mv17488 :has-determiner "THE" :raw-text "amount")
   (:var mv17488 :isa protein :predication mv17493 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17493 :isa phosphorylate :substrate mv17488 :raw-text "phosphorylated")
   (:var mv17494 :isa high) (:var mv17489 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv17508 :isa polar-question :statement mv17507)
   (:var mv17507 :isa copular-predication :item mv17501 :value mv17505 :predicate mv17499)
   (:var mv17501 :isa bio-amount :measured-item mv17498 :has-determiner "THE" :raw-text "amount")
   (:var mv17498 :isa protein :predication mv17503 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17503 :isa phosphorylate :substrate mv17498 :raw-text "phosphorylated")
   (:var mv17505 :isa high :adverb mv17504) (:var mv17504 :isa sometimes) (:var mv17499 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv17523 :isa polar-question :statement mv17516)
   (:var mv17516 :isa sustained :theme mv17512 :level mv17520 :past "PAST")
   (:var mv17512 :isa bio-amount :measured-item mv17509 :has-determiner "THE" :raw-text "amount")
   (:var mv17509 :isa protein :predication mv17514 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17514 :isa phosphorylate :substrate mv17509 :raw-text "phosphorylated")
   (:var mv17520 :isa level :has-determiner "A" :predication mv17519 :raw-text "level")
   (:var mv17519 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv17533 :isa polar-question :statement mv17531)
   (:var mv17531 :isa sustained :participant mv17527 :past "PAST")
   (:var mv17527 :isa bio-amount :measured-item mv17524 :has-determiner "THE" :raw-text "amount")
   (:var mv17524 :isa protein :predication mv17529 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17529 :isa phosphorylate :substrate mv17524 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv17543 :isa polar-question :statement mv17542)
   (:var mv17542 :isa copular-predication :item mv17537 :value mv17540 :predicate mv17535)
   (:var mv17537 :isa bio-amount :measured-item mv17534 :has-determiner "THE" :raw-text "amount")
   (:var mv17534 :isa protein :predication mv17539 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17539 :isa phosphorylate :substrate mv17534 :raw-text "phosphorylated")
   (:var mv17540 :isa transient) (:var mv17535 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv17554 :isa polar-question :statement mv17552)
   (:var mv17552 :isa copular-predication :item mv17547 :value mv17551 :predicate mv17550)
   (:var mv17547 :isa bio-amount :measured-item mv17544 :has-determiner "THE" :raw-text "amount")
   (:var mv17544 :isa protein :predication mv17549 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17549 :isa phosphorylate :substrate mv17544 :raw-text "phosphorylated")
   (:var mv17551 :isa high) (:var mv17550 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv17577 :isa polar-question :statement mv17576)
   (:var mv17576 :isa event-relation :subordinated-event mv17573 :event mv17574)
   (:var mv17573 :isa wh-question :statement mv17563 :wh if)
   (:var mv17563 :isa increase :|agent-OR-cause| mv17561 :level mv17571
    :|affected-process-OR-object| mv17565 :present "PRESENT" :raw-text "increase")
   (:var mv17561 :isa interlocutor :name "person-and-machine")
   (:var mv17571 :isa measurement :number mv17568) (:var mv17568 :isa number :value 100)
   (:var mv17565 :isa bio-amount :measured-item mv17556 :has-determiner "THE" :raw-text "amount")
   (:var mv17556 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv17574 :isa copular-predication :item mv17555 :value mv17559 :predicate mv17557)
   (:var mv17555 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv17559 :isa low :adverb mv17558) (:var mv17558 :isa eventually :name "eventually")
   (:var mv17557 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv17604 :isa polar-question :statement mv17603)
   (:var mv17603 :isa event-relation :subordinated-event mv17600 :event mv17601)
   (:var mv17600 :isa wh-question :statement mv17597 :wh if)
   (:var mv17597 :isa increase :|affected-process-OR-object| mv17586 :|multiplier-OR-cause| mv17595
    :raw-text "increased")
   (:var mv17586 :isa bio-amount :measured-item mv17579 :has-determiner "THE" :raw-text "amount")
   (:var mv17579 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv17595 :isa measurement :number mv17592) (:var mv17592 :isa number :value 100)
   (:var mv17601 :isa copular-predication :item mv17578 :value mv17583 :predicate mv17580)
   (:var mv17578 :isa protein :predication mv17581 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv17581 :isa active) (:var mv17583 :isa low :adverb mv17582)
   (:var mv17582 :isa eventually :name "eventually") (:var mv17580 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv17631 :isa polar-question :statement mv17630)
   (:var mv17630 :isa event-relation :subordinated-event mv17626 :event mv17628)
   (:var mv17626 :isa wh-question :statement mv17616 :wh if)
   (:var mv17616 :isa increase :|agent-OR-cause| mv17614 :level mv17624
    :|affected-process-OR-object| mv17618 :present "PRESENT" :raw-text "increase")
   (:var mv17614 :isa interlocutor :name "person-and-machine")
   (:var mv17624 :isa measurement :number mv17621) (:var mv17621 :isa number :value 100)
   (:var mv17618 :isa bio-amount :measured-item mv17606 :has-determiner "THE" :raw-text "amount")
   (:var mv17606 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv17628 :isa copular-predication :item mv17609 :value mv17612 :predicate mv17607)
   (:var mv17609 :isa bio-amount :measured-item mv17605 :has-determiner "THE" :raw-text "amount")
   (:var mv17605 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv17612 :isa low :adverb mv17611) (:var mv17611 :isa eventually :name "eventually")
   (:var mv17607 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv17659 :isa polar-question :statement mv17658)
   (:var mv17658 :isa event-relation :subordinated-event mv17654 :event mv17656)
   (:var mv17654 :isa wh-question :statement mv17644 :wh if)
   (:var mv17644 :isa increase :|agent-OR-cause| mv17642 :level mv17652
    :|affected-process-OR-object| mv17646 :present "PRESENT" :raw-text "increase")
   (:var mv17642 :isa interlocutor :name "person-and-machine")
   (:var mv17652 :isa measurement :number mv17649) (:var mv17649 :isa number :value 100)
   (:var mv17646 :isa bio-amount :measured-item mv17633 :has-determiner "THE" :raw-text "amount")
   (:var mv17633 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv17656 :isa copular-predication :item mv17636 :value mv17640 :predicate mv17634)
   (:var mv17636 :isa bio-amount :measured-item mv17632 :has-determiner "THE" :raw-text "amount")
   (:var mv17632 :isa protein :predication mv17638 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv17638 :isa active) (:var mv17640 :isa low :adverb mv17639)
   (:var mv17639 :isa always :name "always") (:var mv17634 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv17670 :isa explicit-suggestion :suggestion mv17664 :marker let-as-directive)
   (:var mv17664 :isa move-to :|at-relative-location-OR-goal| mv17667 :theme mv17668 :present
    "PRESENT")
   (:var mv17667 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv17668 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv17661 mv17662))
   (:var mv17661 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17662 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv17673 :isa phosphorylate :agent mv17671 :substrate mv17672 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv17671 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv17672 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv17675 :isa move-to :|at-relative-location-OR-goal| mv17678 :theme mv17680 :present
    "PRESENT")
   (:var mv17678 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv17680 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv17683 :isa phosphorylate :agent mv17681 :substrate mv17682 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv17681 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17682 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv17693 :isa explicit-suggestion :suggestion mv17686 :marker let-as-directive)
   (:var mv17686 :isa highlight :theme mv17688 :present "PRESENT")
   (:var mv17688 :isa upstream-segment :pathwaycomponent mv17685 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv17685 :isa protein :predication mv17691 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17691 :isa phosphorylate :substrate mv17685 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv17702 :isa explicit-suggestion :suggestion mv17696 :marker let-as-directive)
   (:var mv17696 :isa show :at-relative-location mv17700 :|statement-OR-theme| mv17695 :present
    "PRESENT")
   (:var mv17700 :isa top-qua-location :has-determiner "THE")
   (:var mv17695 :isa protein :predication mv17697 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv17697 :isa phosphorylate :substrate mv17695 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv17715 :isa explicit-suggestion :suggestion mv17705 :marker let-as-directive)
   (:var mv17705 :isa show :at-relative-location mv17712 :|statement-OR-theme| mv17707 :present
    "PRESENT")
   (:var mv17712 :isa top-qua-location :has-determiner "THE")
   (:var mv17707 :isa downstream-segment :pathwaycomponent mv17704 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv17704 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv17727 :isa explicit-suggestion :suggestion mv17718 :marker let-as-directive)
   (:var mv17718 :isa move-to :goal mv17724 :theme mv17725 :present "PRESENT")
   (:var mv17724 :isa top-qua-location :has-determiner "THE")
   (:var mv17725 :isa element :plural t :modifier mv17719)
   (:var mv17719 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv17732 :isa affect :manner mv17729 :agent mv17731 :object mv17728 :present "PRESENT"
    :raw-text "affect")
   (:var mv17729 :isa how)
   (:var mv17731 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17728 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv17736 :isa affect :manner mv17734 :agent mv17733 :object mv17737 :present "PRESENT"
    :raw-text "affect")
   (:var mv17734 :isa how)
   (:var mv17733 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17737 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv17740 :isa be :subject mv17739 :predicate mv17742 :present "PRESENT")
   (:var mv17739 :isa what) (:var mv17742 :isa path :endpoints mv17746 :has-determiner "THE")
   (:var mv17746 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv17744 mv17738))
   (:var mv17744 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17738 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv17751 :isa affect :manner mv17749 :agent mv17748 :object mv17752 :present "PRESENT"
    :raw-text "affect")
   (:var mv17749 :isa how)
   (:var mv17748 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17752 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv17757 :isa affect :manner mv17755 :agent mv17753 :object mv17754 :present "PRESENT"
    :raw-text "affect")
   (:var mv17755 :isa how)
   (:var mv17753 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv17754 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv17762 :isa affect :manner mv17759 :agent mv17761 :object mv17758 :present "PRESENT"
    :raw-text "affect")
   (:var mv17759 :isa how)
   (:var mv17761 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv17758 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv17766 :isa affect :manner mv17763 :agent mv17765 :object mv17767 :present "PRESENT"
    :raw-text "affect")
   (:var mv17763 :isa how)
   (:var mv17765 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv17767 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv17774 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes"))
  ("What pathways affect BRAF?"
   (:var mv17778 :isa affect :agent mv17780 :object mv17779 :present "PRESENT" :raw-text "affect")
   (:var mv17780 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv17779 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv17784 :isa bio-activate :agent mv17786 :object mv17785 :present "PRESENT" :raw-text
    "activate")
   (:var mv17786 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17785 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv17795 :isa explicit-suggestion :suggestion mv17790 :marker let-as-directive)
   (:var mv17790 :isa learning :context mv17789 :statement mv17788 :present "PRESENT")
   (:var mv17789 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17788 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What is its relationship with BRAF?"
   (:var mv17797 :isa be :subject mv17796 :predicate mv17799 :present "PRESENT")
   (:var mv17796 :isa what) (:var mv17799 :isa relationship :patient mv17801 :modifier mv17798)
   (:var mv17801 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17798 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv17805 :isa be :subject mv17804 :predicate mv17807 :present "PRESENT")
   (:var mv17804 :isa what) (:var mv17807 :isa relationship :patient mv17803 :modifier mv17806)
   (:var mv17803 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv17806 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv17812 :isa phosphorylate :agent mv17810 :substrate mv17811 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv17810 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17811 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv17814 :isa what))
  ("Let's stop learning about AKT1." (:var mv17822 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv17831 :isa be :subject mv17830 :predicate mv17834 :present "PRESENT")
   (:var mv17830 :isa what)
   (:var mv17834 :isa response :beneficiary mv17843 :has-determiner "THE" :modifier mv17833
    :raw-text "response")
   (:var mv17843 :isa cell-type :plural t :mutation mv17841)
   (:var mv17841 :isa alter :plural t :|agent-OR-object| mv17829 :raw-text "alterations")
   (:var mv17829 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17833 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv17847 :isa be :subject mv17846 :predicate mv17850 :present "PRESENT")
   (:var mv17846 :isa what)
   (:var mv17850 :isa response :cell-type mv17859 :has-determiner "THE" :modifier mv17849 :raw-text
    "response")
   (:var mv17859 :isa cell-type :plural t :mutation mv17857)
   (:var mv17857 :isa alter :plural t :|agent-OR-object| mv17845 :raw-text "alterations")
   (:var mv17845 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17849 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv17862 :isa be :subject mv17861 :predicate mv17865 :present "PRESENT")
   (:var mv17861 :isa what)
   (:var mv17865 :isa frequency :context mv17869 :measured-item mv17867 :has-determiner "THE"
    :measured-item mv17864 :raw-text "frequency")
   (:var mv17869 :isa glioblastoma)
   (:var mv17867 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17864 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv17875 :isa be :subject mv17874 :predicate mv17878 :present "PRESENT")
   (:var mv17874 :isa what)
   (:var mv17878 :isa frequency :context mv17873 :measured-item mv17872 :has-determiner "THE"
    :measured-item mv17877 :raw-text "frequency")
   (:var mv17873 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv17872 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17877 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv17884 :isa show :|statement-OR-theme| mv17899 :beneficiary mv17885 :present "PRESENT")
   (:var mv17899 :isa mutation :plural t :context mv17883 :object mv17894 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv17883 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17894 :isa collection :raw-text "PTEN and BRAF" :type protein :number 2 :items
    (mv17890 mv17892))
   (:var mv17890 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv17892 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17885 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv17901 :isa show :|statement-OR-theme| mv17913 :beneficiary mv17902 :present "PRESENT")
   (:var mv17913 :isa mutation :plural t :context mv17900 :object mv17907 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv17900 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17907 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv17902 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv17916 :isa be :subject mv17915 :predicate mv17927 :present "PRESENT")
   (:var mv17915 :isa what)
   (:var mv17927 :isa mutation :plural t :context mv17914 :object mv17921 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv17914 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17921 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv17930 :isa be :subject mv17929 :predicate mv17942 :present "PRESENT")
   (:var mv17929 :isa what) (:var mv17942 :isa quality-predicate :item mv17940 :attribute mv17936)
   (:var mv17940 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17928 mv17939))
   (:var mv17928 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17939 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17936 :isa location-of :has-determiner "THE" :predication mv17934 :modifier mv17935)
   (:var mv17934 :isa likely :comparative mv17932)
   (:var mv17932 :isa superlative-quantifier :name "most")
   (:var mv17935 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv17958 :isa polar-question :statement mv17953)
   (:var mv17953 :isa there-exists :value mv17957 :predicate mv17945)
   (:var mv17957 :isa upstream-segment :plural t :pathwaycomponent mv17954 :predication mv17947
    :raw-text "upstreams")
   (:var mv17954 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17943 mv17952))
   (:var mv17943 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17952 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17947 :isa common) (:var mv17945 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv17962 :isa be :subject mv17961 :predicate mv17974 :present "PRESENT")
   (:var mv17961 :isa what)
   (:var mv17974 :isa upstream-segment :plural t :pathwaycomponent mv17970 :has-determiner "THE"
    :predication mv17964 :raw-text "upstreams")
   (:var mv17970 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv17959 mv17968 mv17960))
   (:var mv17959 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17968 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17960 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17964 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv17987 :isa copular-predication :item mv17984 :value mv17975 :predicate mv17981)
   (:var mv17984 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17975 :isa mutual-exclusivity :disease mv17977 :alternative mv17976)
   (:var mv17977 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv17976 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv17981 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv17992 :isa be :subject mv17991 :predicate mv18002 :present "PRESENT")
   (:var mv17991 :isa what)
   (:var mv18002 :isa gene :disease mv17990 :has-determiner "THE" :predication mv17988 :raw-text
    "genes")
   (:var mv17990 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv17988 :isa mutual-exclusivity :alternative mv17989)
   (:var mv17989 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv18006 :isa be :subject mv18005 :predicate mv18009 :present "PRESENT")
   (:var mv18005 :isa what)
   (:var mv18009 :isa significance :context mv18004 :agent mv18003 :has-determiner "THE" :modifier
    mv18008)
   (:var mv18004 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv18003 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv18008 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv18017 :isa be :subject mv18016 :predicate mv18020 :present "PRESENT")
   (:var mv18016 :isa what)
   (:var mv18020 :isa significance :context mv18015 :agent mv18014 :has-determiner "THE" :modifier
    mv18019)
   (:var mv18015 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv18014 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv18019 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv18026 :isa be :subject mv18025 :predicate mv18029 :present "PRESENT")
   (:var mv18025 :isa what)
   (:var mv18029 :isa significance :context mv18034 :agent mv18031 :has-determiner "THE" :modifier
    mv18028)
   (:var mv18034 :isa cancer :organ mv18033 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv18033 :isa pancreas)
   (:var mv18031 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv18028 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv18038 :isa be :subject mv18037 :predicate mv18041 :present "PRESENT")
   (:var mv18037 :isa what)
   (:var mv18041 :isa significance :context mv18046 :agent mv18043 :has-determiner "THE" :modifier
    mv18040)
   (:var mv18046 :isa cancer :modifier mv18045 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv18045 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv18043 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18040 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv18050 :isa phosphorylate :agent mv18049 :substrate mv18051 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv18049 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18051 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv18053 :isa binding :binder mv18052 :direct-bindee mv18054 :present "PRESENT" :raw-text
    "binds")
   (:var mv18052 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18054 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv18060 :isa binding :binder mv18056 :direct-bindee mv18055 :present "PRESENT" :raw-text
    "binds")
   (:var mv18056 :isa protein :predication mv18057 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv18057 :isa binding :direct-bindee mv18056 :bindee mv18059 :past "PAST" :raw-text
    "bound")
   (:var mv18059 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18055 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv18066 :isa copular-predication :item mv18063 :value mv18065 :predicate mv18064)
   (:var mv18063 :isa protein-family :predication mv18062 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv18062 :isa phosphorylate :substrate mv18063 :raw-text "Phosphorylated")
   (:var mv18065 :isa active) (:var mv18064 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv18067 :isa protein :predication mv18069 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv18069 :isa phosphorylate :substrate mv18067 :target mv18068 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv18068 :isa protein :site mv18074 :modifier mv18075 :raw-text "MAPK1" :uid "UP:P28482"
    :name "MK01_HUMAN")
   (:var mv18074 :isa residue-on-protein :raw-text "S220" :position mv18073 :amino-acid mv18072)
   (:var mv18073 :isa number :value 220) (:var mv18072 :isa amino-acid :name "serine" :letter "S")
   (:var mv18075 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv18080 :isa transcribe :agent mv18077 :object mv18078 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv18077 :isa protein :predication mv18079 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv18079 :isa active)
   (:var mv18078 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv18109 :isa polar-question :statement mv18108)
   (:var mv18108 :isa event-relation :subordinated-event mv18104 :event mv18106)
   (:var mv18104 :isa wh-question :statement mv18092 :wh if)
   (:var mv18092 :isa increase :|agent-OR-cause| mv18090 :|multiplier-OR-cause| mv18101
    :|affected-process-OR-object| mv18094 :present "PRESENT" :raw-text "increase")
   (:var mv18090 :isa interlocutor :name "person-and-machine")
   (:var mv18101 :isa measurement :number mv18098) (:var mv18098 :isa number :value 10)
   (:var mv18094 :isa bio-amount :measured-item mv18081 :has-determiner "THE" :raw-text "amount")
   (:var mv18081 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18106 :isa copular-predication :item mv18084 :value mv18088 :predicate mv18082)
   (:var mv18084 :isa bio-amount :measured-item mv18086 :has-determiner "THE" :raw-text "amount")
   (:var mv18086 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18088 :isa high :adverb mv18087) (:var mv18087 :isa ever :name "ever")
   (:var mv18082 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv18121 :isa polar-question :statement mv18119)
   (:var mv18119 :isa decrease :agent mv18111 :object mv18115 :raw-text "decrease")
   (:var mv18111 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv18115 :isa protein-family :predication mv18114 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv18114 :isa phosphorylate :substrate mv18115 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv18132 :isa polar-question :statement mv18130)
   (:var mv18130 :isa decrease :agent mv18123 :object mv18126 :raw-text "decrease")
   (:var mv18123 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv18126 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv18137 :isa regulate :manner mv18134 :agent mv18136 :object mv18133 :present "PRESENT"
    :raw-text "regulate")
   (:var mv18134 :isa how)
   (:var mv18136 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv18133 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv18142 :isa bio-activate :manner mv18139 :agent mv18141 :object mv18138 :present
    "PRESENT" :raw-text "activate")
   (:var mv18139 :isa how)
   (:var mv18141 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv18138 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv18148 :isa polar-question :statement mv18147)
   (:var mv18147 :isa inhibit :agent mv18144 :object mv18146 :raw-text "inhibit")
   (:var mv18144 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv18146 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv18161 :isa share :object mv18160 :participant mv18159 :present "PRESENT" :raw-text
    "shared")
   (:var mv18160 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv18159 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv18156 mv18157 mv18151))
   (:var mv18156 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18157 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv18151 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv18164 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv18173 :isa be :subject mv18172 :predicate mv18174 :present "PRESENT")
   (:var mv18172 :isa what)
   (:var mv18174 :isa upstream-segment :pathwaycomponent mv18171 :raw-text "upstream")
   (:var mv18171 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv18182 :isa want :agent mv18179 :theme mv18190 :present "PRESENT")
   (:var mv18179 :isa interlocutor :name "speaker")
   (:var mv18190 :isa bio-find :agent mv18179 :object mv18187 :present "PRESENT" :raw-text "find")
   (:var mv18187 :isa treatment :disease mv18178 :has-determiner "A" :raw-text "treatment")
   (:var mv18178 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv18199 :isa bio-use :object mv18192 :modal mv18193 :agent mv18194 :present "PRESENT"
    :raw-text "use")
   (:var mv18192 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv18193 :isa could)
   (:var mv18194 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv18212 :isa polar-question :statement mv18208)
   (:var mv18208 :isa there-exists :value mv18211 :predicate mv18201)
   (:var mv18211 :isa drug :plural t :target mv18207 :quantifier mv18203 :raw-text "drugs")
   (:var mv18207 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18203 :isa any :word "any") (:var mv18201 :isa syntactic-there))
  ("Are they kinases?" (:var mv18217 :isa polar-question :statement mv18213)
   (:var mv18213 :isa be :subject mv18214 :predicate mv18216)
   (:var mv18214 :isa pronoun/plural :word "they")
   (:var mv18216 :isa kinase :plural t :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv18227 :isa polar-question :statement mv18221)
   (:var mv18221 :isa bio-find :agent mv18219 :object mv18223 :modal "CAN" :raw-text "find")
   (:var mv18219 :isa interlocutor :name "hearer")
   (:var mv18223 :isa drug :target mv18225 :has-determiner "A" :raw-text "drug")
   (:var mv18225 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv18249 :isa polar-question :statement mv18233)
   (:var mv18233 :isa tell :agent mv18232 :theme mv18248 :beneficiary mv18234 :modal "CAN")
   (:var mv18232 :isa interlocutor :name "hearer")
   (:var mv18248 :isa transcription-factor :plural t :predication mv18246 :quantifier mv18235
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv18246 :isa share :object mv18248 :that-rel t :participant mv18243 :modal "CAN" :raw-text
    "shared")
   (:var mv18243 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18230 mv18242))
   (:var mv18230 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18242 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18235 :isa all :word "all") (:var mv18234 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv18282 :isa polar-question :statement mv18281)
   (:var mv18281 :isa know :agent mv18270 :statement mv18280)
   (:var mv18270 :isa interlocutor :name "hearer")
   (:var mv18280 :isa drug :plural t :target mv18276 :quantifier mv18272 :raw-text "drugs")
   (:var mv18276 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18272 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv18294 :isa polar-question :statement mv18292)
   (:var mv18292 :isa regulate :agent mv18283 :object mv18288 :raw-text "regulate")
   (:var mv18283 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18288 :isa gene :organ mv18291 :has-determiner "THE" :expresses mv18287 :raw-text
    "gene")
   (:var mv18291 :isa lung :has-determiner "THE")
   (:var mv18287 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv18305 :isa polar-question :statement mv18303)
   (:var mv18303 :isa regulate :agent mv18295 :object mv18300 :raw-text "regulate")
   (:var mv18295 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18300 :isa gene :organ mv18302 :has-determiner "THE" :expresses mv18296 :raw-text
    "gene")
   (:var mv18302 :isa liver)
   (:var mv18296 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv18313 :isa polar-question :statement mv18312)
   (:var mv18312 :isa regulate :agent mv18306 :object mv18311 :raw-text "regulate")
   (:var mv18306 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18311 :isa gene :has-determiner "THE" :expresses mv18307 :raw-text "gene")
   (:var mv18307 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv18325 :isa polar-question :statement mv18323)
   (:var mv18323 :isa regulate :agent mv18314 :object mv18319 :raw-text "regulate")
   (:var mv18314 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18319 :isa gene :organ mv18322 :has-determiner "THE" :expresses mv18318 :raw-text
    "gene")
   (:var mv18322 :isa lung :has-determiner "THE")
   (:var mv18318 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv18332 :isa polar-question :statement mv18331)
   (:var mv18331 :isa target :agent mv18326 :object mv18327 :raw-text "target")
   (:var mv18326 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv18327 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv18339 :isa polar-question :statement mv18338)
   (:var mv18338 :isa target :agent mv18333 :object mv18334 :raw-text "target")
   (:var mv18333 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv18334 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv18346 :isa polar-question :statement mv18345)
   (:var mv18345 :isa target :agent mv18340 :object mv18341 :raw-text "target")
   (:var mv18340 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv18341 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv18353 :isa polar-question :statement mv18352)
   (:var mv18352 :isa target :agent mv18347 :object mv18348 :raw-text "target")
   (:var mv18347 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv18348 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv18362 :isa polar-question :statement mv18360)
   (:var mv18360 :isa regulate :agent mv18354 :object mv18359 :raw-text "regulate")
   (:var mv18354 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18359 :isa bio-entity :organ mv18358 :name "cfors") (:var mv18358 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv18371 :isa polar-question :statement mv18369)
   (:var mv18369 :isa regulate :agent mv18363 :object mv18366 :raw-text "regulate")
   (:var mv18363 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18366 :isa protein :organ mv18368 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18368 :isa liver))
  ("Does it regulate cfos in brain" (:var mv18380 :isa polar-question :statement mv18378)
   (:var mv18378 :isa regulate :|agent-OR-cause| mv18373 :object mv18375 :raw-text "regulate")
   (:var mv18373 :isa pronoun/inanimate :word "it")
   (:var mv18375 :isa protein :organ mv18377 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18377 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv18386 :isa polar-question :statement mv18385)
   (:var mv18385 :isa regulate :agent mv18381 :object mv18384 :raw-text "regulate")
   (:var mv18381 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18384 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv18400 :isa polar-question :statement mv18397)
   (:var mv18397 :isa regulate :agent mv18387 :object mv18392 :raw-text "regulate")
   (:var mv18387 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18392 :isa gene :cell-type mv18398 :has-determiner "THE" :expresses mv18391 :raw-text
    "gene")
   (:var mv18398 :isa cell-type :plural t :non-cellular-location mv18394)
   (:var mv18394 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv18391 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv18408 :isa polar-question :statement mv18407)
   (:var mv18407 :isa bio-utilize :agent mv18405 :object mv18402 :raw-text "utilize")
   (:var mv18405 :isa pathway :has-determiner "THE" :modifier mv18401 :raw-text "pathway")
   (:var mv18401 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv18402 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv18418 :isa polar-question :statement mv18417)
   (:var mv18417 :isa bio-utilize :agent mv18415 :object mv18409 :raw-text "utilize")
   (:var mv18415 :isa pathway :has-determiner "THE" :modifier mv18412 :raw-text "pathway")
   (:var mv18412 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv18409 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv18420 :isa give :theme mv18427 :beneficiary mv18421 :present "PRESENT")
   (:var mv18427 :isa evidence :statement mv18426 :has-determiner "THE")
   (:var mv18426 :isa decrease :agent mv18425 :object mv18419 :present "PRESENT" :raw-text
    "decreases")
   (:var mv18425 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv18419 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv18421 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv18429 :isa give :theme mv18436 :beneficiary mv18430 :present "PRESENT")
   (:var mv18436 :isa evidence :statement mv18435 :has-determiner "THE")
   (:var mv18435 :isa regulate :agent mv18434 :object mv18428 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18434 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv18428 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv18430 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv18441 :isa polar-question :statement mv18437)
   (:var mv18437 :isa be :subject mv18438 :predicate mv18440)
   (:var mv18438 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18440 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv18448 :isa polar-question :statement mv18444)
   (:var mv18444 :isa inhibit :object mv18442 :agent mv18446 :past "PAST" :raw-text "inhibited")
   (:var mv18442 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv18446 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv18457 :isa polar-question :statement mv18452)
   (:var mv18452 :isa be :subject mv18449 :predicate mv18450)
   (:var mv18449 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18450 :isa transcription-factor :controlled-gene mv18455 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv18455 :isa gene :expresses mv18451 :raw-text "gene")
   (:var mv18451 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv18476 :isa polar-question :statement mv18460)
   (:var mv18460 :isa be :subject mv18458 :predicate mv18475)
   (:var mv18458 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18475 :isa regulator :plural t :quantifier mv18463 :theme mv18470 :has-determiner "THE"
    :raw-text "regulators")
   (:var mv18463 :isa number :value 1)
   (:var mv18470 :isa gene :has-determiner "THE" :expresses mv18459 :raw-text "gene")
   (:var mv18459 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv18484 :isa polar-question :statement mv18478)
   (:var mv18478 :isa be :subject mv18479 :predicate mv18481)
   (:var mv18479 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv18481 :isa inhibitor :protein mv18477 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv18477 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv18492 :isa polar-question :statement mv18485)
   (:var mv18485 :isa be :subject mv18486 :predicate mv18488)
   (:var mv18486 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv18488 :isa inhibitor :|target-OR-protein| mv18490 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv18490 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv18497 :isa polar-question :statement mv18493)
   (:var mv18493 :isa be :subject mv18496 :predicate mv18495)
   (:var mv18496 :isa bio-entity :name "fakeprotein")
   (:var mv18495 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv18502 :isa polar-question :statement mv18499)
   (:var mv18499 :isa be :subject mv18498 :predicate mv18501)
   (:var mv18498 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv18501 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv18509 :isa polar-question :statement mv18504)
   (:var mv18504 :isa be :subject mv18503 :predicate mv18508)
   (:var mv18503 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18508 :isa regulator :has-determiner "AN" :cellular-process mv18506 :raw-text
    "regulator")
   (:var mv18506 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv18522 :isa polar-question :statement mv18512)
   (:var mv18512 :isa involve :object mv18510 :|context-OR-theme| mv18520 :past "PAST")
   (:var mv18510 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18520 :isa pathway :plural t :quantifier mv18514 :cellular-process mv18515 :raw-text
    "pathways")
   (:var mv18514 :isa any :word "any") (:var mv18515 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?"
   (:var mv18531 :isa polar-question :statement mv18525)
   (:var mv18525 :isa involve :object mv18523 :theme mv18529 :past "PAST")
   (:var mv18523 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18529 :isa regulate :cellular-process mv18527 :raw-text "regulation")
   (:var mv18527 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?"
   (:var mv18539 :isa polar-question :statement mv18534)
   (:var mv18534 :isa involve :object mv18532 :theme mv18536 :past "PAST")
   (:var mv18532 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18536 :isa regulate :affected-process mv18537 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv18537 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv18545 :isa phosphorylate :substrate mv18546 :agent mv18544 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv18546 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv18544 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv18556 :isa polar-question :statement mv18547)
   (:var mv18547 :isa be :subject mv18555 :predicate mv18554)
   (:var mv18555 :isa indefinite-pronoun :has-determiner "THE" :ordinal mv18552 :word "one")
   (:var mv18552 :isa number :value 1)
   (:var mv18554 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv18568 :isa polar-question :statement mv18567)
   (:var mv18567 :isa there-exists :value mv18561 :predicate mv18558)
   (:var mv18561 :isa drug :predication mv18565 :has-determiner "A" :raw-text "drug")
   (:var mv18565 :isa target :agent mv18561 :that-rel t :object mv18566 :present "PRESENT"
    :raw-text "targets")
   (:var mv18566 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18558 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv18581 :isa polar-question :statement mv18579)
   (:var mv18579 :isa there-exists :value mv18576 :predicate mv18571)
   (:var mv18576 :isa pathway :predication mv18577 :has-determiner "AN" :cellular-process mv18574
    :raw-text "pathway")
   (:var mv18577 :isa regulate :affected-process mv18576 :agent mv18569 :past "PAST" :raw-text
    "regulated")
   (:var mv18569 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18574 :isa apoptosis :raw-text "apoptotic") (:var mv18571 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv18597 :isa polar-question :statement mv18594)
   (:var mv18594 :isa there-exists :value mv18589 :predicate mv18584)
   (:var mv18589 :isa pathway :predication mv18595 :has-determiner "AN" :cellular-process mv18587
    :raw-text "pathway")
   (:var mv18595 :isa regulate :affected-process mv18589 :that-rel t :agent mv18582 :present
    "PRESENT" :raw-text "regulated")
   (:var mv18582 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18587 :isa apoptosis :raw-text "apoptotic") (:var mv18584 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv18599 :isa let :complement mv18617 :present "PRESENT")
   (:var mv18617 :isa know :agent mv18600 :statement mv18616 :present "PRESENT")
   (:var mv18600 :isa interlocutor :name "speaker")
   (:var mv18616 :isa wh-question :statement mv18612 :wh if)
   (:var mv18612 :isa there-exists :value mv18615 :predicate mv18605)
   (:var mv18615 :isa gene :plural t :predication mv18611 :quantifier mv18606 :cellular-process
    mv18607 :raw-text "genes")
   (:var mv18611 :isa regulate :object mv18615 :agent mv18598 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18598 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18606 :isa any :word "any") (:var mv18607 :isa apoptosis :raw-text "apoptotic")
   (:var mv18605 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv18619 :isa let :complement mv18628 :present "PRESENT")
   (:var mv18628 :isa know :agent mv18620 :statement mv18627 :present "PRESENT")
   (:var mv18620 :isa interlocutor :name "speaker")
   (:var mv18627 :isa gene :plural t :predication mv18625 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv18625 :isa regulate :object mv18627 :agent mv18618 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18618 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv18630 :isa list :theme mv18641 :present "PRESENT")
   (:var mv18641 :isa gene :plural t :predication mv18635 :quantifier mv18631 :has-determiner "THE"
    :raw-text "genes")
   (:var mv18635 :isa regulate :object mv18641 :agent mv18639 :past "PAST" :raw-text "regulated")
   (:var mv18639 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18629 mv18638))
   (:var mv18629 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18638 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18631 :isa all :word "all"))
  ("List genes regulated by elk1 and srf"
   (:var mv18645 :isa list :theme mv18647 :present "PRESENT")
   (:var mv18647 :isa gene :plural t :predication mv18648 :raw-text "genes")
   (:var mv18648 :isa regulate :object mv18647 :agent mv18652 :past "PAST" :raw-text "regulated")
   (:var mv18652 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18644 mv18651))
   (:var mv18644 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18651 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv18656 :isa list :theme mv18670 :present "PRESENT")
   (:var mv18670 :isa gene :plural t :predication mv18668 :quantifier mv18657 :raw-text "genes")
   (:var mv18668 :isa regulate :object mv18670 :that-rel t :agent mv18666 :present "PRESENT"
    :raw-text "regulated")
   (:var mv18666 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18655 mv18665))
   (:var mv18655 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18665 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18657 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv18672 :isa list :theme mv18678 :present "PRESENT")
   (:var mv18678 :isa evidence :statement mv18677 :has-determiner "THE")
   (:var mv18677 :isa decrease :agent mv18676 :object mv18671 :present "PRESENT" :raw-text
    "decreases")
   (:var mv18676 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv18671 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv18680 :isa name-something :patient mv18684 :present "PRESENT")
   (:var mv18684 :isa gene :plural t :predication mv18685 :raw-text "genes")
   (:var mv18685 :isa regulate :object mv18684 :agent mv18689 :past "PAST" :raw-text "regulated")
   (:var mv18689 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18679 mv18688))
   (:var mv18679 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18688 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv18710 :isa copular-predication :item mv18713 :value mv18703 :predicate mv18702)
   (:var mv18713 :isa gene :plural t :has-determiner "WHICH" :predication mv18699 :has-determiner
    "THE" :cellular-process mv18695 :raw-text "genes")
   (:var mv18699 :isa regulate :object mv18713 :agent mv18692 :past "PAST" :raw-text "regulated")
   (:var mv18692 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18695 :isa apoptosis :raw-text "apoptotic") (:var mv18703 :isa active :organ mv18706)
   (:var mv18706 :isa liver :has-determiner "THE") (:var mv18702 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv18732 :isa copular-predication :item mv18734 :value mv18725 :predicate mv18724)
   (:var mv18734 :isa gene :plural t :has-determiner "WHICH" :predication mv18722 :has-determiner
    "THE" :cellular-process mv18718 :raw-text "genes")
   (:var mv18722 :isa regulate :object mv18734 :agent mv18715 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18715 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18718 :isa apoptosis :raw-text "apoptotic") (:var mv18725 :isa active :organ mv18728)
   (:var mv18728 :isa liver :has-determiner "THE") (:var mv18724 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv18750 :isa copular-predication :item mv18753 :value mv18747 :predicate mv18746)
   (:var mv18753 :isa gene :plural t :has-determiner "WHICH" :predication mv18741 :has-determiner
    "THE" :raw-text "genes")
   (:var mv18741 :isa regulate :object mv18753 :agent mv18736 :organ mv18744 :present "PRESENT"
    :raw-text "regulates")
   (:var mv18736 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18744 :isa liver :has-determiner "THE")
   (:var mv18747 :isa apoptosis :raw-text "apoptotic") (:var mv18746 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv18768 :isa copular-predication :item mv18770 :value mv18764 :predicate mv18763)
   (:var mv18770 :isa gene :plural t :has-determiner "WHICH" :predication mv18761 :has-determiner
    "THE" :non-cellular-location mv18758 :raw-text "genes")
   (:var mv18761 :isa regulate :object mv18770 :agent mv18755 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18755 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18758 :isa liver) (:var mv18764 :isa apoptosis :raw-text "apoptotic")
   (:var mv18763 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv18785 :isa copular-predication :item mv18787 :value mv18781 :predicate mv18780)
   (:var mv18787 :isa gene :plural t :has-determiner "WHICH" :predication mv18778 :has-determiner
    "THE" :non-cellular-location mv18775 :raw-text "genes")
   (:var mv18778 :isa regulate :object mv18787 :agent mv18772 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18772 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18775 :isa liver) (:var mv18781 :isa apoptosis :raw-text "apoptotic")
   (:var mv18780 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv18791 :isa bio-find :object mv18793 :present "PRESENT" :adverb mv18789 :raw-text "find")
   (:var mv18793 :isa pathway :plural t :predication mv18794 :raw-text "pathways")
   (:var mv18794 :isa involve :theme mv18793 :object mv18795 :progressive "PROGRESSIVE")
   (:var mv18795 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18789 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv18798 :isa show :|statement-OR-theme| mv18806 :beneficiary mv18799 :present "PRESENT"
    :adverb mv18797)
   (:var mv18806 :isa pathway :plural t :predication mv18803 :modifier mv18800 :raw-text
    "pathways")
   (:var mv18803 :isa involve :theme mv18806 :object mv18804 :progressive "PROGRESSIVE")
   (:var mv18804 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18800 :isa database :name "KEGG" :uid "KEGG")
   (:var mv18799 :isa interlocutor :name "speaker") (:var mv18797 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv18808 :isa show :|statement-OR-theme| mv18814 :beneficiary mv18809 :present "PRESENT"
    :adverb mv18807)
   (:var mv18814 :isa pathway :plural t :predication mv18812 :raw-text "pathways")
   (:var mv18812 :isa involve :theme mv18814 :object mv18813 :progressive "PROGRESSIVE")
   (:var mv18813 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18809 :isa interlocutor :name "speaker") (:var mv18807 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv18816 :isa bio-activate :agent mv18815 :object mv18817 :present "PRESENT" :raw-text
    "activates")
   (:var mv18815 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18817 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv18818 :isa remove :object mv18825 :present "PRESENT" :raw-text "Remove")
   (:var mv18825 :isa fact :statement mv18823 :has-determiner "THE")
   (:var mv18823 :isa bio-activate :agent mv18822 :object mv18824 :present "PRESENT" :raw-text
    "activates")
   (:var mv18822 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18824 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv18828 :isa bio-activate :agent mv18827 :object mv18829 :present "PRESENT" :raw-text
    "activates")
   (:var mv18827 :isa protein-family :predication mv18826 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18826 :isa inactive)
   (:var mv18829 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv18830 :isa remove :object mv18838 :present "PRESENT" :raw-text "Remove")
   (:var mv18838 :isa fact :statement mv18836 :has-determiner "THE")
   (:var mv18836 :isa bio-activate :agent mv18835 :object mv18837 :present "PRESENT" :raw-text
    "activates")
   (:var mv18835 :isa protein-family :predication mv18834 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18834 :isa inactive)
   (:var mv18837 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv18840 :isa show :|statement-OR-theme| mv18843 :present "PRESENT")
   (:var mv18843 :isa pathway :plural t :non-cellular-location mv18839 :raw-text "pathways")
   (:var mv18839 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv18844 :isa show :|statement-OR-theme| mv18850 :beneficiary mv18845 :present "PRESENT")
   (:var mv18850 :isa pathway :plural t :predication mv18848 :raw-text "pathways")
   (:var mv18848 :isa involve :theme mv18850 :object mv18849 :progressive "PROGRESSIVE")
   (:var mv18849 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18845 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv18851 :isa show :|statement-OR-theme| mv18861 :beneficiary mv18852 :present "PRESENT")
   (:var mv18861 :isa pathway :plural t :pathwaycomponent mv18856 :raw-text "pathways")
   (:var mv18856 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway-OR-in-family|
    mv18858 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18858 :isa pronoun/plural :word "them")
   (:var mv18852 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv18862 :isa show :|statement-OR-theme| mv18869 :beneficiary mv18863 :present "PRESENT")
   (:var mv18869 :isa pathway :plural t :pathwaycomponent mv18867 :raw-text "pathways")
   (:var mv18867 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18863 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv18871 :isa show :|statement-OR-theme| mv18878 :beneficiary mv18872 :present "PRESENT")
   (:var mv18878 :isa evidence :statement mv18877 :has-determiner "THE")
   (:var mv18877 :isa decrease :agent mv18876 :object mv18870 :present "PRESENT" :raw-text
    "decreases")
   (:var mv18876 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv18870 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv18872 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv18880 :isa show :|statement-OR-theme| mv18891 :beneficiary mv18881 :present "PRESENT")
   (:var mv18891 :isa evidence :statement mv18886 :has-determiner "THE")
   (:var mv18886 :isa decrease :agent mv18885 :|affected-process-OR-object| mv18888 :present
    "PRESENT" :raw-text "decreases")
   (:var mv18885 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv18888 :isa bio-amount :measured-item mv18879 :has-determiner "THE" :raw-text "amount")
   (:var mv18879 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv18881 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv18893 :isa show :|statement-OR-theme| mv18900 :beneficiary mv18894 :present "PRESENT")
   (:var mv18900 :isa evidence :statement mv18899 :has-determiner "THE")
   (:var mv18899 :isa regulate :agent mv18898 :object mv18892 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18898 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv18892 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv18894 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv18904 :isa show :|statement-OR-theme| mv18902 :present "PRESENT")
   (:var mv18902 :isa transcription-factor :plural t :predication mv18905 :raw-text
    "transcription factors")
   (:var mv18905 :isa share :object mv18902 :participant mv18909 :past "PAST" :raw-text "shared")
   (:var mv18909 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18903 mv18908))
   (:var mv18903 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18908 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv18913 :isa tell :beneficiary mv18914 :present "PRESENT")
   (:var mv18914 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv18941 :isa tell :theme mv18951 :beneficiary mv18942 :present "PRESENT")
   (:var mv18951 :isa gene :plural t :predication mv18948 :has-determiner "WHAT" :raw-text "genes")
   (:var mv18948 :isa regulate :object mv18951 :agent mv18949 :present "PRESENT" :raw-text
    "regulate")
   (:var mv18949 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18940 mv18947))
   (:var mv18940 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18947 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18942 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv18974 :isa involve :theme mv18978 :object mv18976 :present "PRESENT")
   (:var mv18978 :isa pathway :plural t :has-determiner "WHAT" :modifier mv18971 :raw-text
    "pathways")
   (:var mv18971 :isa database :name "KEGG" :uid "KEGG")
   (:var mv18976 :isa signal :modifier mv18975 :raw-text "signaling")
   (:var mv18975 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv18989 :isa regulate :object mv18988 :agent mv18980 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18988 :isa phosphatase :plural t :has-determiner "WHAT" :enzyme mv18979 :raw-text
    "phosphatases")
   (:var mv18979 :isa protein-family :raw-text "MAP kinase" :name
    "mitogen activated protein kinase" :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv18980 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv18997 :isa be :subject mv19002 :predicate mv18998 :present "PRESENT")
   (:var mv19002 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv18993 :raw-text
    "genes")
   (:var mv18993 :isa apoptosis :raw-text "apoptotic")
   (:var mv18998 :isa downstream-segment :pathwaycomponent mv18991 :raw-text "downstream")
   (:var mv18991 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv19011 :isa regulate :object mv19016 :agent mv19004 :organ mv19014 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19016 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv19006 :raw-text
    "genes")
   (:var mv19006 :isa apoptosis :raw-text "apoptotic")
   (:var mv19004 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19014 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv19025 :isa regulate :object mv19027 :agent mv19018 :present "PRESENT" :raw-text
    "regulate")
   (:var mv19027 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv19020 :raw-text
    "genes")
   (:var mv19020 :isa apoptosis :raw-text "apoptotic")
   (:var mv19018 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv19034 :isa be :subject mv19039 :predicate mv19035 :present "PRESENT")
   (:var mv19039 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv19030 :raw-text
    "genes")
   (:var mv19030 :isa apoptosis :raw-text "apoptotic")
   (:var mv19035 :isa upstream-segment :pathwaycomponent mv19039 :modifier mv19028 :raw-text
    "upstream")
   (:var mv19028 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv19046 :isa involve :theme mv19048 :object mv19040 :present "PRESENT")
   (:var mv19048 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv19042 :raw-text
    "pathways")
   (:var mv19042 :isa apoptosis :raw-text "apoptotic")
   (:var mv19040 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv19050 :isa be :subject mv19049 :predicate mv19056 :present "PRESENT")
   (:var mv19049 :isa what)
   (:var mv19056 :isa target-protein :plural t :treatment mv19052 :raw-text "targets")
   (:var mv19052 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv19059 :isa be :subject mv19058 :predicate mv19064 :present "PRESENT")
   (:var mv19058 :isa what)
   (:var mv19064 :isa inhibitor :plural t :quantifier mv19060 :protein mv19057 :raw-text
    "inhibitors")
   (:var mv19060 :isa some :word "some")
   (:var mv19057 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv19066 :isa be :subject mv19065 :predicate mv19074 :present "PRESENT")
   (:var mv19065 :isa what)
   (:var mv19074 :isa drug :plural t :predication mv19071 :quantifier mv19067 :raw-text "drugs")
   (:var mv19071 :isa inhibit :agent mv19074 :that-rel t :object mv19072 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv19072 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19067 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv19077 :isa be :subject mv19076 :predicate mv19086 :present "PRESENT")
   (:var mv19076 :isa what)
   (:var mv19086 :isa gene :plural t :context mv19075 :quantifier mv19078 :raw-text "genes")
   (:var mv19075 :isa signaling-pathway :has-determiner "THE" :modifier mv19083 :raw-text
    "signaling pathway")
   (:var mv19083 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv19078 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv19089 :isa be :subject mv19088 :predicate mv19098 :present "PRESENT")
   (:var mv19088 :isa what)
   (:var mv19098 :isa protein :plural t :in-pathway mv19087 :quantifier mv19090 :raw-text
    "proteins")
   (:var mv19087 :isa signaling-pathway :has-determiner "THE" :modifier mv19095 :raw-text
    "signaling pathway")
   (:var mv19095 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv19090 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv19100 :isa be :subject mv19099 :predicate mv19108 :present "PRESENT")
   (:var mv19099 :isa what) (:var mv19108 :isa member :plural t :set mv19105 :has-determiner "THE")
   (:var mv19105 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv19113 :isa be :subject mv19112 :predicate mv19124 :present "PRESENT")
   (:var mv19112 :isa what)
   (:var mv19124 :isa micro-rna :plural t :predication mv19118 :has-determiner "THE" :raw-text
    "miRNAS")
   (:var mv19118 :isa regulate :agent mv19124 :that-rel t :object mv19122 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19122 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv19119 mv19120 mv19109 mv19110 mv19111))
   (:var mv19119 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv19120 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19109 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19110 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv19111 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv19126 :isa be :subject mv19125 :predicate mv19139 :present "PRESENT")
   (:var mv19125 :isa what)
   (:var mv19139 :isa regulator :plural t :theme mv19135 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv19135 :isa bio-entity :organ mv19134 :name "MAPPK14")
   (:var mv19134 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv19142 :isa be :subject mv19141 :predicate mv19152 :present "PRESENT")
   (:var mv19141 :isa what)
   (:var mv19152 :isa regulator :plural t :theme mv19140 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv19140 :isa protein :organ mv19148 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv19148 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv19155 :isa be :subject mv19154 :predicate mv19162 :present "PRESENT")
   (:var mv19154 :isa what)
   (:var mv19162 :isa regulator :plural t :theme mv19153 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv19153 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv19165 :isa be :subject mv19164 :predicate mv19175 :present "PRESENT")
   (:var mv19164 :isa what)
   (:var mv19175 :isa regulator :plural t :theme mv19163 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv19163 :isa protein :organ mv19171 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19171 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv19178 :isa be :subject mv19177 :predicate mv19188 :present "PRESENT")
   (:var mv19177 :isa what)
   (:var mv19188 :isa regulator :plural t :theme mv19176 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv19176 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the regulators of mapk14"
   (:var mv19191 :isa be :subject mv19190 :predicate mv19198 :present "PRESENT")
   (:var mv19190 :isa what)
   (:var mv19198 :isa regulator :plural t :theme mv19189 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv19189 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv19218 :isa copular-predication :item mv19203 :value mv19201 :predicate mv19204)
   (:var mv19203 :isa what) (:var mv19201 :isa in-common :theme mv19216)
   (:var mv19216 :isa gene :plural t :has-determiner "THE" :expresses mv19213 :raw-text "genes")
   (:var mv19213 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv19208 mv19209 mv19202))
   (:var mv19208 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19209 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv19202 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19204 :isa be :predicate mv19214 :present "PRESENT")
   (:var mv19214 :isa transcription-factor :plural t :has-determiner "THE" :raw-text
    "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv19222 :isa be :subject mv19221 :predicate mv19233 :present "PRESENT")
   (:var mv19221 :isa what)
   (:var mv19233 :isa transcription-factor :plural t :predication mv19225 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv19225 :isa regulate :agent mv19233 :that-rel t :object mv19231 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19231 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv19230 mv19229))
   (:var mv19230 :isa bio-entity :name "EELK1")
   (:var mv19229 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv19239 :isa be :subject mv19238 :predicate mv19251 :present "PRESENT")
   (:var mv19238 :isa what)
   (:var mv19251 :isa transcription-factor :plural t :predication mv19242 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv19242 :isa regulate :agent mv19251 :that-rel t :object mv19249 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19249 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv19243 mv19244 mv19248 mv19236 mv19237))
   (:var mv19243 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv19244 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19248 :isa bio-entity :name "STAAT3")
   (:var mv19236 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv19237 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv19258 :isa be :subject mv19257 :predicate mv19267 :present "PRESENT")
   (:var mv19257 :isa what)
   (:var mv19267 :isa transcription-factor :plural t :predication mv19261 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv19261 :isa regulate :agent mv19267 :that-rel t :object mv19265 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19265 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv19262 mv19263 mv19254 mv19255 mv19256))
   (:var mv19262 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv19263 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19254 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19255 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv19256 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv19272 :isa be :subject mv19271 :predicate mv19285 :present "PRESENT")
   (:var mv19271 :isa what)
   (:var mv19285 :isa regulator :plural t :theme mv19281 :has-determiner "THE" :context mv19274
    :raw-text "regulators")
   (:var mv19281 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv19268 mv19269 mv19279 mv19270))
   (:var mv19268 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv19269 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv19279 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv19270 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv19274 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv19296 :isa regulate :object mv19295 :agent mv19293 :present "PRESENT" :raw-text
    "regulated")
   (:var mv19295 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv19286 :raw-text
    "genes")
   (:var mv19286 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv19293 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv19301 :isa regulate :|affected-process-OR-object| mv19298 :agent mv19300 :present
    "PRESENT" :raw-text "regulate")
   (:var mv19298 :isa what)
   (:var mv19300 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv19305 :isa regulate :|affected-process-OR-object| mv19302 :|agent-OR-cause| mv19304
    :organ mv19307 :present "PRESENT" :raw-text "regulate")
   (:var mv19302 :isa what) (:var mv19304 :isa pronoun/inanimate :word "it")
   (:var mv19307 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv19313 :isa target :|affected-process-OR-object| mv19310 :agent mv19309 :present
    "PRESENT" :raw-text "target")
   (:var mv19310 :isa what)
   (:var mv19309 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv19317 :isa regulate :|affected-process-OR-object| mv19315 :agent mv19314 :present
    "PRESENT" :raw-text "regulate")
   (:var mv19315 :isa what)
   (:var mv19314 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv19321 :isa regulate :|affected-process-OR-object| mv19319 :agent mv19318 :present
    "PRESENT" :raw-text "regulate")
   (:var mv19319 :isa what)
   (:var mv19318 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv19325 :isa regulate :|affected-process-OR-object| mv19323 :agent mv19322 :present
    "PRESENT" :raw-text "regulate")
   (:var mv19323 :isa what)
   (:var mv19322 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv19329 :isa regulate :|affected-process-OR-object| mv19326 :agent mv19328 :present
    "PRESENT" :raw-text "regulate")
   (:var mv19326 :isa what)
   (:var mv19328 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv19332 :isa downregulate :|agent-OR-cause| mv19331 :object mv19330 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv19331 :isa what)
   (:var mv19330 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv19346 :isa bio-use :patient mv19335 :modal mv19336 :agent mv19337 :theme mv19345
    :present "PRESENT" :raw-text "use")
   (:var mv19335 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv19336 :isa could)
   (:var mv19337 :isa interlocutor :name "speaker")
   (:var mv19345 :isa target :object mv19333 :raw-text "target")
   (:var mv19333 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv19358 :isa bio-use :object mv19349 :modal mv19350 :agent mv19351 :disease mv19347
    :present "PRESENT" :raw-text "use")
   (:var mv19349 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv19350 :isa should)
   (:var mv19351 :isa interlocutor :name "speaker")
   (:var mv19347 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv19363 :isa be :subject mv19367 :predicate mv19369 :present "PRESENT")
   (:var mv19367 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv19369 :isa inhibitor :plural t :protein mv19359 :raw-text "inhibitors")
   (:var mv19359 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv19374 :isa inhibit :agent mv19375 :object mv19370 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv19375 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv19370 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv19379 :isa regulate :agent mv19381 :object mv19380 :present "PRESENT" :raw-text
    "regulate")
   (:var mv19381 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv19380 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv19386 :isa target :agent mv19388 :object mv19387 :present "PRESENT" :raw-text "target")
   (:var mv19388 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv19387 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv19393 :isa be :subject mv19397 :predicate mv19394 :present "PRESENT")
   (:var mv19397 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19394 :isa downstream-segment :pathwaycomponent mv19389 :raw-text "downstream")
   (:var mv19389 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv19412 :isa copular-predication-of-pp :item mv19407 :value mv19411 :prep "IN" :predicate
    mv19403)
   (:var mv19407 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19411 :isa gene :plural t :context mv19399 :has-determiner "WHAT" :raw-text "genes")
   (:var mv19399 :isa signaling-pathway :has-determiner "THE" :modifier mv19406 :raw-text
    "signaling pathway")
   (:var mv19406 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv19403 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv19430 :isa copular-predication-of-pp :item mv19423 :value mv19429 :prep "IN" :predicate
    mv19419)
   (:var mv19423 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19429 :isa gene :plural t :context mv19425 :has-determiner "WHAT" :raw-text "genes")
   (:var mv19425 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv19422 :raw-text
    "signaling pathways")
   (:var mv19422 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv19419 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv19445 :isa copular-predication-of-pp :item mv19440 :value mv19444 :prep "IN" :predicate
    mv19436)
   (:var mv19440 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19444 :isa gene :plural t :context mv19439 :has-determiner "WHAT" :raw-text "genes")
   (:var mv19439 :isa pathway :has-determiner "THE" :non-cellular-location mv19432 :raw-text
    "pathway")
   (:var mv19432 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv19436 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv19460 :isa copular-predication-of-pp :item mv19455 :value mv19459 :prep "IN" :predicate
    mv19451)
   (:var mv19455 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19459 :isa gene :plural t :context mv19447 :has-determiner "WHAT" :raw-text "genes")
   (:var mv19447 :isa signaling-pathway :has-determiner "THE" :modifier mv19454 :raw-text
    "signaling pathway")
   (:var mv19454 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv19451 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv19473 :isa involve :object mv19472 :|context-OR-theme| mv19471 :present "PRESENT")
   (:var mv19472 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19471 :isa pathway :has-determiner "THE" :modifier mv19463 :raw-text "pathway")
   (:var mv19463 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv19485 :isa involve :object mv19484 :|context-OR-theme| mv19483 :present "PRESENT")
   (:var mv19484 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19483 :isa pathway :has-determiner "THE" :modifier mv19482 :raw-text "pathway")
   (:var mv19482 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv19497 :isa involve :object mv19496 :|context-OR-theme| mv19495 :present "PRESENT")
   (:var mv19496 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19495 :isa pathway :has-determiner "THE" :modifier mv19487 :raw-text "pathway")
   (:var mv19487 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv19509 :isa involve :object mv19508 :|context-OR-theme| mv19507 :present "PRESENT")
   (:var mv19508 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19507 :isa pathway :has-determiner "THE" :non-cellular-location mv19499 :raw-text
    "pathway")
   (:var mv19499 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv19525 :isa regulate :object mv19524 :agent mv19523 :present "PRESENT" :superlative
    mv19518 :adverb mv19519 :raw-text "regulated")
   (:var mv19524 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19523 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv19511 mv19512 mv19513))
   (:var mv19511 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv19512 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv19513 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv19518 :isa superlative-quantifier :name "most")
   (:var mv19519 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv19542 :isa regulate :object mv19541 :agent mv19540 :present "PRESENT" :superlative
    mv19535 :adverb mv19536 :raw-text "regulated")
   (:var mv19541 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19540 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p"
    :type micro-rna :number 4 :items (mv19527 mv19528 mv19529 mv19530))
   (:var mv19527 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv19528 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv19529 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv19530 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv19535 :isa superlative-quantifier :name "most")
   (:var mv19536 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv19559 :isa regulate :object mv19558 :agent mv19557 :present "PRESENT" :superlative
    mv19552 :adverb mv19553 :raw-text "regulated")
   (:var mv19558 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19557 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv19544 mv19545 mv19546 mv19547))
   (:var mv19544 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv19545 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv19546 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv19547 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv19552 :isa superlative-quantifier :name "most")
   (:var mv19553 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv19569 :isa regulate :object mv19568 :agent mv19567 :present "PRESENT" :raw-text
    "regulated")
   (:var mv19568 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19567 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv19582 :isa regulate :object mv19581 :agent mv19580 :present "PRESENT" :raw-text
    "regulated")
   (:var mv19581 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19580 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19571 mv19579))
   (:var mv19571 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19579 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv19595 :isa regulate :object mv19594 :agent mv19593 :present "PRESENT" :raw-text
    "regulated")
   (:var mv19594 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19593 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv19584 mv19585))
   (:var mv19584 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv19585 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv19607 :isa regulate :object mv19606 :agent mv19605 :present "PRESENT" :raw-text
    "regulated")
   (:var mv19606 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19605 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv19617 :isa regulate :object mv19616 :agent mv19615 :present "PRESENT" :raw-text
    "regulated")
   (:var mv19616 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19615 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv19630 :isa regulate :object mv19629 :agent mv19628 :present "PRESENT" :raw-text
    "regulated")
   (:var mv19629 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19628 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv19619 mv19627))
   (:var mv19619 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19627 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv19640 :isa target :object mv19639 :cause mv19632 :present "PRESENT" :raw-text
    "targeted")
   (:var mv19639 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19632 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv19657 :isa copular-predication-of-pp :item mv19652 :value mv19656 :prep "IN" :predicate
    mv19646)
   (:var mv19652 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19656 :isa gene :plural t :context mv19642 :has-determiner "WHAT" :raw-text "genes")
   (:var mv19642 :isa signaling-pathway :has-determiner "THE" :modifier mv19651 :raw-text
    "signaling pathway")
   (:var mv19651 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv19646 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv19669 :isa bio-use :object mv19668 :context mv19659 :present "PRESENT" :raw-text "used")
   (:var mv19668 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19659 :isa signaling-pathway :has-determiner "THE" :modifier mv19667 :raw-text
    "signaling pathway")
   (:var mv19667 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019"))
  ("What genes does lung cancer target?"
   (:var mv19677 :isa target :object mv19678 :cause mv19671 :present "PRESENT" :raw-text "target")
   (:var mv19678 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19671 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv19685 :isa target :object mv19686 :agent mv19679 :present "PRESENT" :raw-text "target")
   (:var mv19686 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19679 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv19693 :isa target :object mv19694 :agent mv19687 :present "PRESENT" :raw-text "target")
   (:var mv19694 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19687 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv19700 :isa upregulate :object mv19701 :agent mv19695 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv19701 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19695 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv19707 :isa regulate :object mv19712 :agent mv19702 :cell-type mv19713 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19712 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19702 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19713 :isa cell-type :plural t :non-cellular-location mv19709)
   (:var mv19709 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv19720 :isa regulate :object mv19723 :agent mv19715 :organ mv19722 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19723 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19715 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19722 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv19730 :isa regulate :object mv19733 :agent mv19725 :organ mv19732 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19733 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19725 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19732 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv19740 :isa regulate :object mv19741 :agent mv19735 :present "PRESENT" :raw-text
    "regulate")
   (:var mv19741 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19735 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv19750 :isa regulate :object mv19753 :agent mv19742 :present "PRESENT" :raw-text
    "regulate")
   (:var mv19753 :isa gene :plural t :organ mv19748 :has-determiner "WHAT" :raw-text "genes")
   (:var mv19748 :isa liver :has-determiner "THE")
   (:var mv19742 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv19758 :isa be :subject mv19762 :predicate mv19759 :present "PRESENT")
   (:var mv19762 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19759 :isa upstream-segment :modifier mv19754 :raw-text "upstream")
   (:var mv19754 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream of?"
   (:var mv19767 :isa be :subject mv19771 :predicate mv19768 :present "PRESENT")
   (:var mv19771 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19768 :isa upstream-segment :pathwaycomponent mv19771 :modifier mv19763 :raw-text
    "upstream")
   (:var mv19763 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv19778 :isa be :subject mv19783 :predicate mv19780 :present "PRESENT")
   (:var mv19783 :isa gene :plural t :predication mv19775 :has-determiner "WHAT" :raw-text "genes")
   (:var mv19775 :isa regulate :object mv19783 :agent mv19777 :past "PAST" :raw-text "regulated")
   (:var mv19777 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19780 :isa kinase :plural t :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv19790 :isa be :subject mv19795 :predicate mv19792 :present "PRESENT")
   (:var mv19795 :isa gene :plural t :predication mv19788 :has-determiner "WHAT" :raw-text "genes")
   (:var mv19788 :isa regulate :object mv19795 :agent mv19784 :past "PAST" :raw-text "regulated")
   (:var mv19784 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19792 :isa kinase :plural t :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv19801 :isa involve :theme mv19806 :object mv19804 :present "PRESENT")
   (:var mv19806 :isa pathway :plural t :has-determiner "WHAT" :modifier mv19798 :raw-text
    "pathways")
   (:var mv19798 :isa immune :name "immune")
   (:var mv19804 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv19802 mv19796))
   (:var mv19802 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19796 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv19811 :isa involve :theme mv19814 :object mv19812 :present "PRESENT")
   (:var mv19814 :isa pathway :plural t :has-determiner "WHAT" :modifier mv19808 :raw-text
    "pathways")
   (:var mv19808 :isa immune :name "immune")
   (:var mv19812 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv19820 :isa involve :theme mv19825 :object mv19823 :present "PRESENT")
   (:var mv19825 :isa pathway :plural t :has-determiner "WHAT" :modifier mv19817 :raw-text
    "pathways")
   (:var mv19817 :isa immune :name "immune")
   (:var mv19823 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv19821 mv19815))
   (:var mv19821 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19815 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv19832 :isa involve :theme mv19836 :object mv19834 :present "PRESENT")
   (:var mv19836 :isa pathway :plural t :has-determiner "WHAT" :modifier mv19829 :raw-text
    "pathways")
   (:var mv19829 :isa immune :name "immune")
   (:var mv19834 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv19826 mv19827))
   (:var mv19826 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv19827 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv19838 :isa inhibit :|agent-OR-cause| mv19837 :object mv19839 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv19837 :isa what)
   (:var mv19839 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv19842 :isa be :subject mv19841 :predicate mv19840 :present "PRESENT")
   (:var mv19841 :isa what)
   (:var mv19840 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv19844 :isa be :subject mv19843 :predicate mv19845 :present "PRESENT")
   (:var mv19843 :isa what)
   (:var mv19845 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv19848 :isa be :subject mv19847 :predicate mv19849 :present "PRESENT")
   (:var mv19847 :isa what)
   (:var mv19849 :isa downstream-segment :pathwaycomponent mv19846 :raw-text "downstream")
   (:var mv19846 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv19854 :isa be :subject mv19853 :predicate mv19855 :present "PRESENT")
   (:var mv19853 :isa what)
   (:var mv19855 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv19857 :isa be :subject mv19856 :predicate mv19858 :present "PRESENT")
   (:var mv19856 :isa what) (:var mv19858 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv19864 :isa regulate :|affected-process-OR-object| mv19860 :agent mv19859 :present
    "PRESENT" :raw-text "regulated")
   (:var mv19860 :isa what)
   (:var mv19859 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv19868 :isa be :subject mv19867 :predicate mv19874 :present "PRESENT")
   (:var mv19867 :isa what) (:var mv19874 :isa evidence :statement mv19873 :has-determiner "THE")
   (:var mv19873 :isa decrease :agent mv19872 :object mv19866 :present "PRESENT" :raw-text
    "decreases")
   (:var mv19872 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19866 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv19877 :isa be :subject mv19876 :predicate mv19887 :present "PRESENT")
   (:var mv19876 :isa what) (:var mv19887 :isa evidence :statement mv19882 :has-determiner "THE")
   (:var mv19882 :isa decrease :agent mv19881 :|affected-process-OR-object| mv19884 :present
    "PRESENT" :raw-text "decreases")
   (:var mv19881 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19884 :isa bio-amount :measured-item mv19875 :has-determiner "THE" :raw-text "amount")
   (:var mv19875 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv19889 :isa be :subject mv19888 :predicate mv19891 :present "PRESENT")
   (:var mv19888 :isa what)
   (:var mv19891 :isa target-protein :treatment mv19894 :has-determiner "THE" :raw-text "target")
   (:var mv19894 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv19901 :isa regulate :object mv19902 :agent mv19896 :present "PRESENT" :raw-text
    "regulate")
   (:var mv19902 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv19896 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv19911 :isa regulate :agent mv19916 :object mv19915 :present "PRESENT" :adverb mv19909
    :adverb mv19910 :raw-text "regulate")
   (:var mv19916 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv19915 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv19912 mv19913 mv19903 mv19904 mv19905))
   (:var mv19912 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv19913 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19903 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19904 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv19905 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv19909 :isa superlative-quantifier :name "most")
   (:var mv19910 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv19923 :isa regulate :agent mv19928 :object mv19927 :present "PRESENT" :raw-text
    "regulate")
   (:var mv19928 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv19927 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv19924 mv19925 mv19917 mv19918 mv19919))
   (:var mv19924 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv19925 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19917 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19918 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv19919 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv19937 :isa regulate :object mv19936 :agent mv19929 :present "PRESENT" :raw-text
    "regulated")
   (:var mv19936 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv19929 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv19944 :isa regulate :agent mv19950 :object mv19954 :present "PRESENT" :raw-text
    "regulate")
   (:var mv19950 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv19954 :isa gene :plural t :context mv19952 :raw-text "genes")
   (:var mv19952 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv19949 :raw-text
    "signaling pathways")
   (:var mv19949 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019"))
  ("What pahtways involve SRF?"
   (:var mv19958 :isa bio-entity :has-determiner "WHAT" :name "pahtways"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv19971 :isa copular-predication :item mv19969 :value mv19964 :predicate mv19963)
   (:var mv19969 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv19964 :isa common :theme mv19968)
   (:var mv19968 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv19959 mv19967))
   (:var mv19959 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19967 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19963 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv19975 :isa involve :theme mv19977 :object mv19976 :present "PRESENT")
   (:var mv19977 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv19976 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv19982 :isa involve :theme mv19986 :object mv19985 :present "PRESENT")
   (:var mv19986 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv19985 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv19983 mv19978))
   (:var mv19983 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19978 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv19991 :isa involve :theme mv19994 :object mv19987 :present "PRESENT")
   (:var mv19994 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv19987 :isa transcription-factor :has-determiner "THE" :modifier mv19993 :raw-text
    "transcription factor")
   (:var mv19993 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv20006 :isa collection :raw-text "What pathways utilize srf and is srf" :type bio-utilize
    :number 2 :items (mv19998 mv20001))
   (:var mv19998 :isa bio-utilize :agent mv20005 :object mv19999 :present "PRESENT" :raw-text
    "utilize")
   (:var mv20005 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv19999 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20001 :isa be :subject mv20005 :predicate mv20002 :present "PRESENT")
   (:var mv20002 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What proteins are in the MAPK family?"
   (:var mv20022 :isa copular-predication-of-pp :item mv20016 :value mv20021 :prep "IN" :predicate
    mv20010)
   (:var mv20016 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20021 :isa protein :plural t :in-family mv20017 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv20017 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
    "mitogen activated protein kinase" :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv20010 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv20032 :isa target :object mv20031 :cause mv20024 :present "PRESENT" :raw-text
    "targeted")
   (:var mv20031 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20024 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv20040 :isa target :object mv20041 :agent mv20034 :present "PRESENT" :raw-text "target")
   (:var mv20041 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20034 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv20048 :isa target :object mv20049 :cause mv20042 :present "PRESENT" :raw-text "target")
   (:var mv20049 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20042 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv20056 :isa target :object mv20057 :agent mv20054 :present "PRESENT" :raw-text "target")
   (:var mv20057 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20054 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv20063 :isa lead :agent mv20068 :theme mv20066 :modal mv20062 :raw-text "lead")
   (:var mv20068 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20066 :isa development :disease mv20058 :has-determiner "THE" :raw-text "development")
   (:var mv20058 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv20062 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv20076 :isa lead :agent mv20081 :theme mv20079 :modal mv20075 :raw-text "lead")
   (:var mv20081 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20079 :isa development :disease mv20071 :has-determiner "THE" :raw-text "development")
   (:var mv20071 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv20075 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv20088 :isa involve :theme mv20092 :object mv20090 :present "PRESENT")
   (:var mv20092 :isa pathway :plural t :has-determiner "WHAT" :modifier mv20085 :raw-text
    "pathways")
   (:var mv20085 :isa database :name "Reactome" :uid "Reactome")
   (:var mv20090 :isa signal :modifier mv20089 :raw-text "signaling")
   (:var mv20089 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv20094 :isa regulate :|agent-OR-cause| mv20093 :object mv20095 :present "PRESENT"
    :raw-text "regulates")
   (:var mv20093 :isa what)
   (:var mv20095 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv20098 :isa regulate :|agent-OR-cause| mv20097 :object mv20096 :present "PRESENT"
    :raw-text "regulates")
   (:var mv20097 :isa what)
   (:var mv20096 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv20101 :isa regulate :|agent-OR-cause| mv20100 :object mv20099 :present "PRESENT"
    :raw-text "regulates")
   (:var mv20100 :isa what)
   (:var mv20099 :isa protein :organ mv20103 :raw-text "smurf2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv20103 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv20116 :isa share :object mv20115 :participant mv20114 :present "PRESENT" :raw-text
    "shared")
   (:var mv20115 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv20114 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv20112 mv20107))
   (:var mv20112 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv20107 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv20129 :isa share :object mv20128 :participant mv20127 :present "PRESENT" :raw-text
    "shared")
   (:var mv20128 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv20127 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv20120 mv20126))
   (:var mv20120 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20126 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv20143 :isa share :object mv20142 :participant mv20141 :present "PRESENT" :raw-text
    "shared")
   (:var mv20142 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv20141 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv20133 mv20134 mv20140))
   (:var mv20133 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20134 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20140 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?"
   (:var mv20152 :isa tissue :plural t :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv20156 :isa bio-produce :agent mv20153 :object mv20154 :present "PRESENT" :raw-text
    "produces")
   (:var mv20153 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv20154 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv20160 :isa transcribe :agent mv20157 :object mv20158 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv20157 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv20158 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv20181 :isa copular-predication :item mv20177 :value mv20169 :predicate mv20168)
   (:var mv20177 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20169 :isa common :theme mv20179)
   (:var mv20179 :isa gene :plural t :has-determiner "THE" :expresses mv20176 :raw-text "genes")
   (:var mv20176 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv20163 mv20164 mv20172 mv20165 mv20166))
   (:var mv20163 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20164 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20172 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv20165 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv20166 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv20168 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv20200 :isa copular-predication :item mv20196 :value mv20189 :predicate mv20188)
   (:var mv20196 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20189 :isa common :theme mv20198)
   (:var mv20198 :isa gene :plural t :has-determiner "THE" :expresses mv20195 :raw-text "genes")
   (:var mv20195 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv20184 mv20185 mv20186))
   (:var mv20184 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20185 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20186 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv20188 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv20206 :isa regulate :object mv20207 :agent mv20201 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20207 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20201 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv20220 :isa copular-predication :item mv20217 :value mv20212 :predicate mv20211)
   (:var mv20217 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20212 :isa common :theme mv20218)
   (:var mv20218 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv20211 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv20241 :isa copular-predication :item mv20237 :value mv20223 :predicate mv20229)
   (:var mv20237 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20223 :isa in-common :theme mv20239)
   (:var mv20239 :isa gene :plural t :has-determiner "THE" :expresses mv20236 :raw-text "genes")
   (:var mv20236 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv20224 mv20225 mv20232 mv20226 mv20227))
   (:var mv20224 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20225 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20232 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv20226 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv20227 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv20229 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv20260 :isa copular-predication :item mv20256 :value mv20244 :predicate mv20249)
   (:var mv20256 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20244 :isa in-common :theme mv20258)
   (:var mv20258 :isa gene :plural t :has-determiner "THE" :expresses mv20255 :raw-text "genes")
   (:var mv20255 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv20245 mv20246 mv20247))
   (:var mv20245 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20246 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20247 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv20249 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv20265 :isa be :subject mv20271 :predicate mv20274 :present "PRESENT")
   (:var mv20271 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20274 :isa regulator :plural t :theme mv20263 :raw-text "regulators")
   (:var mv20263 :isa protein :organ mv20270 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv20270 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv20279 :isa be :subject mv20283 :predicate mv20285 :present "PRESENT")
   (:var mv20283 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20285 :isa regulator :plural t :theme mv20277 :raw-text "regulators")
   (:var mv20277 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv20301 :isa share :object mv20300 :participant mv20303 :present "PRESENT" :raw-text
    "shared")
   (:var mv20300 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20303 :isa gene :plural t :has-determiner "THE" :expresses mv20299 :raw-text "genes")
   (:var mv20299 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv20294 mv20295 mv20288))
   (:var mv20294 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20295 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv20288 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv20309 :isa regulate :agent mv20312 :object mv20307 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20312 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20307 :isa protein :organ mv20311 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv20311 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv20318 :isa regulate :agent mv20319 :object mv20316 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20319 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20316 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv20323 :isa regulate :agent mv20325 :object mv20324 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20325 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20324 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv20329 :isa regulate :agent mv20337 :theme mv20336 :object mv20331 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20337 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20336 :isa bio-entity :has-determiner "THE" :modifier mv20334 :cellular-process mv20335
    :name "pathwya")
   (:var mv20334 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv20335 :isa signal :raw-text "signaling")
   (:var mv20331 :isa gene :plural t :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv20343 :isa regulate :agent mv20344 :object mv20341 :past "PAST" :raw-text "regulated")
   (:var mv20344 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20341 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv20349 :isa transcribe :agent mv20350 :object mv20347 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv20350 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20347 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv20353 :isa upregulate :|agent-OR-cause| mv20352 :object mv20351 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv20352 :isa what)
   (:var mv20351 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv20359 :isa gene-transcript-express :location mv20355 :object mv20354 :past "PAST"
    :raw-text "expressed")
   (:var mv20355 :isa where)
   (:var mv20354 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv20364 :isa involve :theme mv20367 :object mv20365 :present "PRESENT")
   (:var mv20367 :isa pathway :plural t :has-determiner "WHICH" :modifier mv20361 :raw-text
    "pathways")
   (:var mv20361 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20365 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv20373 :isa bio-use :agent mv20376 :object mv20374 :present "PRESENT" :raw-text "use")
   (:var mv20376 :isa pathway :plural t :has-determiner "WHICH" :modifier mv20369 :raw-text
    "pathways")
   (:var mv20369 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20374 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv20381 :isa regulate :agent mv20382 :object mv20379 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20382 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20379 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv20386 :isa regulate :|agent-OR-cause| mv20383 :object mv20387 :present "PRESENT" :adverb
    mv20384 :raw-text "regulate")
   (:var mv20383 :isa which)
   (:var mv20387 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20384 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv20399 :isa regulate :object mv20398 :agent mv20388 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20398 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv20390 :raw-text
    "genes")
   (:var mv20390 :isa apoptosis :raw-text "apoptotic")
   (:var mv20388 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv20407 :isa be :subject mv20412 :predicate mv20408 :present "PRESENT")
   (:var mv20412 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv20403 :raw-text
    "genes")
   (:var mv20403 :isa apoptosis :raw-text "apoptotic")
   (:var mv20408 :isa upstream-segment :pathwaycomponent mv20412 :modifier mv20401 :raw-text
    "upstream")
   (:var mv20401 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv20421 :isa target :object mv20420 :agent mv20413 :present "PRESENT" :raw-text
    "targeted")
   (:var mv20420 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv20413 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv20429 :isa be :subject mv20434 :predicate mv20431 :present "PRESENT")
   (:var mv20434 :isa gene :plural t :predication mv20427 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv20427 :isa regulate :object mv20434 :agent mv20423 :past "PAST" :raw-text "regulated")
   (:var mv20423 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20431 :isa kinase :plural t :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv20453 :isa share :object mv20452 :participant mv20454 :present "PRESENT" :raw-text
    "shared")
   (:var mv20452 :isa pathway :plural t :has-determiner "WHICH" :modifier mv20440 :raw-text
    "pathways")
   (:var mv20440 :isa immune :name "immune")
   (:var mv20454 :isa gene :plural t :expresses mv20450 :raw-text "genes")
   (:var mv20450 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv20435 mv20436 mv20446 mv20437 mv20438))
   (:var mv20435 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20436 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20446 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv20437 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv20438 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv20473 :isa share :object mv20472 :participant mv20475 :present "PRESENT" :raw-text
    "shared")
   (:var mv20472 :isa pathway :plural t :has-determiner "WHICH" :modifier mv20460 :raw-text
    "pathways")
   (:var mv20460 :isa immune :name "immune")
   (:var mv20475 :isa gene :plural t :has-determiner "THE" :expresses mv20470 :raw-text "genes")
   (:var mv20470 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv20456 mv20457 mv20458))
   (:var mv20456 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20457 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20458 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv20482 :isa bio-utilize :agent mv20488 :object mv20484 :present "PRESENT" :raw-text
    "utilize")
   (:var mv20488 :isa pathway :plural t :has-determiner "WHICH" :modifier mv20479 :raw-text
    "pathways")
   (:var mv20479 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20484 :isa gene :plural t :predication mv20485 :raw-text "genes")
   (:var mv20485 :isa regulate :object mv20484 :agent mv20477 :past "PAST" :raw-text "regulated")
   (:var mv20477 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv20495 :isa bio-utilize :agent mv20498 :object mv20496 :present "PRESENT" :raw-text
    "utilize")
   (:var mv20498 :isa pathway :plural t :has-determiner "WHICH" :modifier mv20492 :raw-text
    "pathways")
   (:var mv20492 :isa database :name "Reactome" :uid "Reactome")
   (:var mv20496 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv20503 :isa bio-utilize :agent mv20506 :object mv20504 :present "PRESENT" :raw-text
    "utilize")
   (:var mv20506 :isa pathway :plural t :has-determiner "WHICH" :modifier mv20500 :raw-text
    "pathways")
   (:var mv20500 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20504 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv20514 :isa regulate :|affected-process-OR-object| mv20510 :agent mv20507 :present
    "PRESENT" :raw-text "regulated")
   (:var mv20510 :isa pronoun/plural :quantifier mv20508 :word "them") (:var mv20508 :isa which)
   (:var mv20507 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv20524 :isa gene-transcript-express :object mv20519 :organ mv20523 :present "PRESENT"
    :raw-text "expressed")
   (:var mv20519 :isa these :quantifier mv20517 :word "these") (:var mv20517 :isa which)
   (:var mv20523 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv20537 :isa copular-predication-of-pp :item mv20529 :value mv20535 :prep mv20531
    :predicate mv20530)
   (:var mv20529 :isa these :quantifier mv20527 :word "these") (:var mv20527 :isa which)
   (:var mv20535 :isa pathway :plural t :modifier mv20532 :raw-text "pathways")
   (:var mv20532 :isa immune :name "immune") (:var mv20531 :isa in :word "in")
   (:var mv20530 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv20544 :isa phosphorylate :substrate mv20545 :agent mv20543 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv20545 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20543 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv20549 :isa be :subject mv20548 :predicate mv20551 :present "PRESENT")
   (:var mv20548 :isa these :quantifier mv20546 :word "these") (:var mv20546 :isa which)
   (:var mv20551 :isa kinase :plural t :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv20560 :isa regulate :|affected-process-OR-object| mv20556 :agent mv20553 :present
    "PRESENT" :raw-text "regulated")
   (:var mv20556 :isa those :quantifier mv20554 :word "those") (:var mv20554 :isa which)
   (:var mv20553 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv20570 :isa regulate :|affected-process-OR-object| mv20566 :agent mv20563 :present
    "PRESENT" :raw-text "regulated")
   (:var mv20566 :isa these :quantifier mv20564 :word "these") (:var mv20564 :isa which)
   (:var mv20563 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv20580 :isa regulate :|affected-process-OR-object| mv20575 :agent mv20579 :present
    "PRESENT" :raw-text "regulated")
   (:var mv20575 :isa these :quantifier mv20573 :word "these") (:var mv20573 :isa which)
   (:var mv20579 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv20599 :isa share :object mv20598 :participant mv20600 :present "PRESENT" :raw-text
    "shared")
   (:var mv20598 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv20600 :isa gene :plural t :expresses mv20597 :raw-text "genes")
   (:var mv20597 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv20583 mv20584 mv20593 mv20585 mv20586))
   (:var mv20583 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20584 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20593 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv20585 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv20586 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv20614 :isa share :object mv20613 :participant mv20612 :present "PRESENT" :raw-text
    "shared")
   (:var mv20613 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv20612 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv20602 mv20603 mv20604))
   (:var mv20602 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20603 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20604 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv20633 :isa share :object mv20632 :participant mv20635 :present "PRESENT" :raw-text
    "shared")
   (:var mv20632 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv20635 :isa gene :plural t :has-determiner "THE" :expresses mv20631 :raw-text "genes")
   (:var mv20631 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv20616 mv20617 mv20627 mv20618 mv20619))
   (:var mv20616 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20617 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv20627 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv20618 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv20619 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv20642 :isa involve :theme mv20645 :object mv20644 :present "PRESENT")
   (:var mv20645 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv20644 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv20637 mv20638))
   (:var mv20637 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv20638 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv20649 :isa involve :theme mv20651 :object mv20650 :present "PRESENT")
   (:var mv20651 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv20650 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv20656 :isa bio-use :agent mv20658 :object mv20657 :present "PRESENT" :raw-text "use")
   (:var mv20658 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv20657 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv20663 :isa bio-use :agent mv20665 :object mv20664 :present "PRESENT" :raw-text "use")
   (:var mv20665 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv20664 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv20669 :isa bio-utilize :agent mv20671 :object mv20670 :present "PRESENT" :raw-text
    "utilize")
   (:var mv20671 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv20670 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv20675 :isa bio-utilize :agent mv20679 :object mv20680 :present "PRESENT" :raw-text
    "utilize")
   (:var mv20679 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv20680 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv20689 :isa target :object mv20688 :agent mv20681 :present "PRESENT" :raw-text
    "targeted")
   (:var mv20688 :isa protein :plural t :has-determiner "WHICH" :raw-text "proteins")
   (:var mv20681 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv20695 :isa bio-utilize :agent mv20698 :object mv20696 :present "PRESENT" :raw-text
    "utilize")
   (:var mv20698 :isa pathway :plural t :has-determiner "WHICH" :modifier mv20692 :raw-text
    "pathways")
   (:var mv20692 :isa database :name "Reactome" :uid "Reactome")
   (:var mv20696 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv20712 :isa copular-predication-of-pp :item mv20707 :value mv20711 :prep "IN" :predicate
    mv20703)
   (:var mv20707 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv20711 :isa transcription-factor :plural t :in-pathway mv20701 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv20701 :isa signaling-pathway :has-determiner "THE" :modifier mv20706 :raw-text
    "signaling pathway")
   (:var mv20706 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv20703 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv20718 :isa regulate :agent mv20722 :object mv20716 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20722 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv20716 :isa protein :organ mv20721 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv20721 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv20728 :isa regulate :agent mv20729 :object mv20726 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20729 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv20726 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv20737 :isa explicit-suggestion :suggestion mv20733 :marker let-as-directive)
   (:var mv20733 :isa move-to :|at-relative-location-OR-goal| mv20735 :theme mv20731 :present
    "PRESENT")
   (:var mv20735 :isa top-qua-location)
   (:var mv20731 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv20746 :isa explicit-suggestion :suggestion mv20740 :marker let-as-directive)
   (:var mv20740 :isa show :at-relative-location mv20744 :|statement-OR-theme| mv20739 :present
    "PRESENT")
   (:var mv20744 :isa top-qua-location)
   (:var mv20739 :isa protein :has-determiner "THE" :predication mv20742 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv20742 :isa phosphorylate :substrate mv20739 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv20749 :isa be :subject mv20748 :predicate mv20761 :present "PRESENT")
   (:var mv20748 :isa what)
   (:var mv20761 :isa upstream-segment :plural t :pathwaycomponent mv20757 :has-determiner "THE"
    :predication mv20751 :raw-text "upstreams")
   (:var mv20757 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv20747 mv20756))
   (:var mv20747 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv20756 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv20751 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv20769 :isa polar-question :statement mv20764)
   (:var mv20764 :isa gene-transcript-express :object mv20762 :organ mv20767 :past "PAST" :raw-text
    "expressed")
   (:var mv20762 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20767 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv20776 :isa polar-question :statement mv20772)
   (:var mv20772 :isa gene-transcript-express :object mv20770 :organ mv20774 :past "PAST" :raw-text
    "expressed")
   (:var mv20770 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20774 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv20778 :isa show :at-relative-location mv20781 :|statement-OR-theme| mv20777 :present
    "PRESENT")
   (:var mv20781 :isa top-qua-location)
   (:var mv20777 :isa protein :predication mv20779 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv20779 :isa phosphorylate :substrate mv20777 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv20785 :isa be :subject mv20784 :predicate mv20797 :present "PRESENT")
   (:var mv20784 :isa what)
   (:var mv20797 :isa upstream-segment :plural t :pathwaycomponent mv20793 :has-determiner "THE"
    :predication mv20787 :raw-text "upstreams")
   (:var mv20793 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv20783 mv20792))
   (:var mv20783 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv20792 :isa bio-entity :name "BRA") (:var mv20787 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv20805 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv20799 mv20803))
   (:var mv20799 :isa bio-activate :agent mv20798 :object mv20800 :present "PRESENT" :raw-text
    "activates")
   (:var mv20798 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv20800 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20803 :isa bio-activate :agent mv20802 :object mv20804 :present "PRESENT" :raw-text
    "activates")
   (:var mv20802 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20804 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv20807 :isa be :subject mv20806 :predicate mv20809 :present "PRESENT")
   (:var mv20806 :isa what)
   (:var mv20809 :isa path :end mv20813 :start mv20811 :has-determiner "THE")
   (:var mv20813 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20811 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv20816 :isa remove :object mv20823 :present "PRESENT" :raw-text "remove")
   (:var mv20823 :isa fact :statement mv20821 :has-determiner "THE")
   (:var mv20821 :isa bio-activate :agent mv20820 :object mv20822 :present "PRESENT" :raw-text
    "activates")
   (:var mv20820 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20822 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv20831 :isa explicit-suggestion :suggestion mv20826 :marker let-as-directive)
   (:var mv20826 :isa show :at-relative-location mv20829 :|statement-OR-theme| mv20825 :present
    "PRESENT")
   (:var mv20829 :isa top-qua-location)
   (:var mv20825 :isa protein :predication mv20827 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv20827 :isa phosphorylate :substrate mv20825 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv20835 :isa be :subject mv20834 :predicate mv20841 :present "PRESENT")
   (:var mv20834 :isa what)
   (:var mv20841 :isa positive-regulator :plural t :theme mv20839 :raw-text "positive regulators")
   (:var mv20839 :isa gene :has-determiner "THE" :expresses mv20838 :raw-text "gene")
   (:var mv20838 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv20846 :isa regulate :agent mv20849 :object mv20847 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20849 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv20847 :isa protein :organ mv20844 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv20844 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv20862 :isa polar-question :statement mv20859)
   (:var mv20859 :isa there-exists :value mv20861 :predicate mv20852)
   (:var mv20861 :isa drug :plural t :predication mv20857 :quantifier mv20854 :raw-text "drugs")
   (:var mv20857 :isa inhibit :agent mv20861 :object mv20858 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv20858 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20854 :isa any :word "any") (:var mv20852 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv20874 :isa polar-question :statement mv20871)
   (:var mv20871 :isa there-exists :value mv20873 :predicate mv20864)
   (:var mv20873 :isa drug :plural t :predication mv20869 :quantifier mv20866 :raw-text "drugs")
   (:var mv20869 :isa target :agent mv20873 :object mv20870 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv20870 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20866 :isa any :word "any") (:var mv20864 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv20896 :isa polar-question :statement mv20889)
   (:var mv20889 :isa there-exists :value mv20895 :predicate mv20877)
   (:var mv20895 :isa gene :plural t :predication mv20891 :organ mv20884 :quantifier mv20879
    :raw-text "genes")
   (:var mv20891 :isa regulate :object mv20895 :that-rel t :agent mv20875 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20875 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20884 :isa liver :has-determiner "THE") (:var mv20879 :isa any :word "any")
   (:var mv20877 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv20917 :isa polar-question :statement mv20911)
   (:var mv20911 :isa there-exists :value mv20916 :predicate mv20899)
   (:var mv20916 :isa gene :plural t :predication mv20904 :quantifier mv20901 :raw-text "genes")
   (:var mv20904 :isa involve :object mv20916 :theme mv20906 :past "PAST")
   (:var mv20906 :isa apoptosis :predication mv20913 :raw-text "apoptosis")
   (:var mv20913 :isa regulate :affected-process mv20906 :that-rel t :agent mv20897 :present
    "PRESENT" :raw-text "regulated")
   (:var mv20897 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20901 :isa any :word "any") (:var mv20899 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv20929 :isa there-exists :predicate mv20920)
   (:var mv20920 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv20942 :isa polar-question :statement mv20938)
   (:var mv20938 :isa there-exists :value mv20941 :predicate mv20932)
   (:var mv20941 :isa inhibitor :plural t :|target-OR-protein| mv20930 :quantifier mv20934
    :raw-text "inhibitors")
   (:var mv20930 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv20934 :isa any :word "any") (:var mv20932 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf"
   (:var mv20957 :isa polar-question :statement mv20953)
   (:var mv20953 :isa there-exists :value mv20956 :predicate mv20945)
   (:var mv20956 :isa gene :plural t :predication mv20949 :raw-text "genes")
   (:var mv20949 :isa regulate :object mv20956 :agent mv20954 :past "PAST" :raw-text "regulated")
   (:var mv20954 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20943 mv20952))
   (:var mv20943 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20952 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20945 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv20972 :isa polar-question :statement mv20962)
   (:var mv20962 :isa bio-find :agent mv20960 :object mv20958 :modal "CAN" :raw-text "find")
   (:var mv20960 :isa interlocutor :name "hearer")
   (:var mv20958 :isa protein :quantifier mv20963 :cellular-process mv20964 :context mv20967
    :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20963 :isa any :word "any") (:var mv20964 :isa apoptosis :raw-text "apoptotic")
   (:var mv20967 :isa pathway :plural t :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?" (:var mv20974 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv21012 :isa polar-question :statement mv21011) (:var mv21011 :isa look-up :actor mv20993)
   (:var mv20993 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv21024 :isa polar-question :statement mv21016)
   (:var mv21016 :isa show :agent mv21015 :|statement-OR-theme| mv21023 :beneficiary mv21017 :modal
    "CAN")
   (:var mv21015 :isa interlocutor :name "hearer")
   (:var mv21023 :isa gene :plural t :predication mv21020 :raw-text "genes")
   (:var mv21020 :isa regulate :object mv21023 :agent mv21013 :past "PAST" :raw-text "regulated")
   (:var mv21013 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21017 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv21039 :isa polar-question :statement mv21028)
   (:var mv21028 :isa show :agent mv21027 :|statement-OR-theme| mv21038 :beneficiary mv21029 :modal
    "CAN")
   (:var mv21027 :isa interlocutor :name "hearer")
   (:var mv21038 :isa gene :plural t :predication mv21036 :raw-text "genes")
   (:var mv21036 :isa regulate :object mv21038 :that-rel t :agent mv21025 :modal "CAN" :raw-text
    "regulated")
   (:var mv21025 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21029 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv21049 :isa polar-question :statement mv21042)
   (:var mv21042 :isa show :agent mv21041 :|statement-OR-theme| mv21045 :beneficiary mv21043 :modal
    "CAN")
   (:var mv21041 :isa interlocutor :name "hearer")
   (:var mv21045 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv21043 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv21063 :isa polar-question :statement mv21053)
   (:var mv21053 :isa tell :agent mv21052 :theme mv21062 :beneficiary mv21054 :modal "CAN")
   (:var mv21052 :isa interlocutor :name "hearer")
   (:var mv21062 :isa gene :plural t :predication mv21058 :has-determiner "THE" :raw-text "genes")
   (:var mv21058 :isa regulate :object mv21062 :agent mv21050 :past "PAST" :raw-text "regulated")
   (:var mv21050 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21054 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv21076 :isa polar-question :statement mv21067)
   (:var mv21067 :isa tell :agent mv21066 :theme mv21075 :beneficiary mv21068 :modal "CAN")
   (:var mv21066 :isa interlocutor :name "hearer")
   (:var mv21075 :isa gene :plural t :predication mv21073 :has-determiner "THE" :raw-text "genes")
   (:var mv21073 :isa regulate :object mv21075 :that-rel t :agent mv21064 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21064 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21068 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv21093 :isa polar-question :statement mv21080)
   (:var mv21080 :isa tell :agent mv21079 :theme mv21092 :beneficiary mv21081 :modal "CAN")
   (:var mv21079 :isa interlocutor :name "hearer")
   (:var mv21092 :isa gene :plural t :predication mv21090 :has-determiner "THE" :raw-text "genes")
   (:var mv21090 :isa regulate :object mv21092 :that-rel t :agent mv21077 :modal "CAN" :raw-text
    "regulated")
   (:var mv21077 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21081 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv21111 :isa polar-question :statement mv21097)
   (:var mv21097 :isa tell :agent mv21096 :theme mv21110 :beneficiary mv21098 :modal "CAN")
   (:var mv21096 :isa interlocutor :name "hearer")
   (:var mv21110 :isa gene :plural t :predication mv21109 :has-determiner "THE" :raw-text "genes")
   (:var mv21109 :isa regulate :object mv21110 :agent mv21094 :modal mv21095 :raw-text "regulated")
   (:var mv21094 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21095 :isa can) (:var mv21098 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv21166 :isa polar-question :statement mv21150)
   (:var mv21150 :isa tell :agent mv21149 :theme mv21162 :beneficiary mv21151 :modal "CAN")
   (:var mv21149 :isa interlocutor :name "hearer")
   (:var mv21162 :isa regulate :object mv21165 :agent mv21147 :modal "CAN" :raw-text "regulated")
   (:var mv21165 :isa gene :plural t :organ mv21157 :has-determiner "WHICH" :raw-text "genes")
   (:var mv21157 :isa liver :has-determiner "THE")
   (:var mv21147 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21151 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv21178 :isa polar-question :statement mv21170)
   (:var mv21170 :isa tell :agent mv21169 :theme mv21177 :beneficiary mv21171 :modal "CAN")
   (:var mv21169 :isa interlocutor :name "hearer")
   (:var mv21177 :isa gene :plural t :predication mv21175 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv21175 :isa regulate :object mv21177 :agent mv21167 :present "PRESENT" :raw-text
    "regulates")
   (:var mv21167 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21171 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?"
   (:var mv21188 :isa polar-question :statement mv21186)
   (:var mv21186 :isa affect :agent mv21179 :affected-process mv21184 :raw-text "affect")
   (:var mv21179 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21184 :isa gene-transcript-express :object mv21180 :has-determiner "THE" :raw-text
    "expression")
   (:var mv21180 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv21200 :isa polar-question :statement mv21198)
   (:var mv21198 :isa affect :agent mv21189 :affected-process mv21194 :raw-text "affect")
   (:var mv21189 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21194 :isa gene-transcript-express :object mv21197 :has-determiner "THE" :raw-text
    "expression")
   (:var mv21197 :isa gene :has-determiner "THE" :expresses mv21190 :raw-text "gene")
   (:var mv21190 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv21213 :isa polar-question :statement mv21211)
   (:var mv21211 :isa increase :agent mv21201 :affected-process mv21207 :raw-text "increase")
   (:var mv21201 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21207 :isa gene-transcript-express :object mv21210 :has-determiner "THE" :raw-text
    "expression")
   (:var mv21210 :isa gene :has-determiner "THE" :expresses mv21202 :raw-text "gene")
   (:var mv21202 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv21225 :isa polar-question :statement mv21223)
   (:var mv21223 :isa increase :agent mv21214 :affected-process mv21219 :raw-text "increase")
   (:var mv21214 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21219 :isa transcribe :object mv21222 :raw-text "transcription")
   (:var mv21222 :isa gene :has-determiner "THE" :expresses mv21215 :raw-text "gene")
   (:var mv21215 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?"
   (:var mv21235 :isa polar-question :statement mv21233)
   (:var mv21233 :isa affect :agent mv21226 :affected-process mv21230 :raw-text "affect")
   (:var mv21226 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21230 :isa gene-transcript-express :object mv21232 :has-determiner "THE" :raw-text
    "expression")
   (:var mv21232 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv21245 :isa polar-question :statement mv21244)
   (:var mv21244 :isa contain :theme mv21242 :patient mv21236)
   (:var mv21242 :isa pathway :has-determiner "THE" :modifier mv21239 :raw-text "pathway")
   (:var mv21239 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv21236 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv21248 :isa bio-find :object mv21250 :present "PRESENT" :raw-text "Find")
   (:var mv21250 :isa treatment :disease mv21246 :has-determiner "A" :raw-text "treatment")
   (:var mv21246 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv21255 :isa bio-find :object mv21265 :present "PRESENT" :raw-text "Find")
   (:var mv21265 :isa gene :plural t :predication mv21261 :organ mv21260 :raw-text "genes")
   (:var mv21261 :isa regulate :object mv21265 :agent mv21253 :past "PAST" :raw-text "regulated")
   (:var mv21253 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21260 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv21269 :isa bio-find :object mv21274 :present "PRESENT" :raw-text "Find")
   (:var mv21274 :isa gene :plural t :predication mv21273 :raw-text "genes")
   (:var mv21273 :isa regulate :object mv21274 :that-rel t :agent mv21267 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21267 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv21279 :isa bio-find :object mv21276 :present "PRESENT" :raw-text "Find")
   (:var mv21276 :isa transcription-factor :plural t :predication mv21280 :raw-text
    "transcription factors")
   (:var mv21280 :isa share :object mv21276 :participant mv21284 :past "PAST" :raw-text "shared")
   (:var mv21284 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv21277 mv21283))
   (:var mv21277 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21283 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv21291 :isa bio-activate :manner mv21288 :agent mv21290 :object mv21287 :present
    "PRESENT" :raw-text "activate")
   (:var mv21288 :isa how)
   (:var mv21290 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21287 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv21296 :isa regulate :manner mv21294 :agent mv21292 :object mv21298 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21294 :isa how)
   (:var mv21292 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21298 :isa gene :has-determiner "THE" :expresses mv21293 :raw-text "gene")
   (:var mv21293 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv21314 :isa knock-out :raw-text "knocking out" :|agent-OR-cause| mv21300 :object mv21318)
   (:var mv21300 :isa how) (:var mv21318 :isa cancer :modifier mv21304 :modifier mv21304)
   (:var mv21304 :isa cause :by-means-of mv21316 :raw-text "cause")
   (:var mv21316 :isa effect :object mv21313 :participant mv21308 :raw-text "effect")
   (:var mv21313 :isa micro-rna :plural t :raw-text "miRNAs")
   (:var mv21308 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv21322 :isa regulate :manner mv21320 :agent mv21319 :affected-process mv21323 :present
    "PRESENT" :raw-text "regulate")
   (:var mv21320 :isa how)
   (:var mv21319 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21323 :isa apoptosis :organ mv21326 :raw-text "apoptosis")
   (:var mv21326 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv21331 :isa regulate :manner mv21329 :agent mv21328 :affected-process mv21332 :present
    "PRESENT" :raw-text "regulate")
   (:var mv21329 :isa how)
   (:var mv21328 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21332 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv21336 :isa regulate :manner mv21334 :agent mv21333 :object mv21341 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21334 :isa how)
   (:var mv21333 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21341 :isa gene :plural t :cellular-process mv21337 :raw-text "genes")
   (:var mv21337 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv21351 :isa wh-question :statement mv21344 :wh how)
   (:var mv21344 :isa be :predicate mv21342 :present "PRESENT")
   (:var mv21342 :isa protein :predication mv21345 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv21345 :isa involve :object mv21342 :theme mv21349 :past "PAST")
   (:var mv21349 :isa regulate :cellular-process mv21347 :raw-text "regulation")
   (:var mv21347 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv21364 :isa wh-question :statement mv21354 :wh how)
   (:var mv21354 :isa be :predicate mv21352 :present "PRESENT")
   (:var mv21352 :isa protein :predication mv21355 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv21355 :isa involve :object mv21352 :theme mv21357 :past "PAST")
   (:var mv21357 :isa regulate :organ mv21360 :|agent-OR-object| mv21361 :raw-text "regulation")
   (:var mv21360 :isa liver :has-determiner "THE")
   (:var mv21361 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv21373 :isa wh-question :statement mv21367 :wh how)
   (:var mv21367 :isa be :predicate mv21365 :present "PRESENT")
   (:var mv21365 :isa protein :predication mv21368 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv21368 :isa involve :object mv21365 :theme mv21370 :past "PAST")
   (:var mv21370 :isa regulate :affected-process mv21371 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv21371 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv21382 :isa wh-question :statement mv21376 :wh how)
   (:var mv21376 :isa be :predicate mv21374 :present "PRESENT")
   (:var mv21374 :isa protein :predication mv21377 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv21377 :isa bio-use :object mv21374 :theme mv21381 :past "PAST" :raw-text "used")
   (:var mv21381 :isa regulate :affected-process mv21380 :raw-text "regulate")
   (:var mv21380 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv21396 :isa copular-predication-of-pp :item mv21391 :value mv21395 :prep "IN" :predicate
    mv21387)
   (:var mv21391 :isa gene :plural t :quantifier how-many :raw-text "genes")
   (:var mv21395 :isa gene :plural t :context mv21384 :quantifier how-many :raw-text "genes")
   (:var mv21384 :isa signaling-pathway :has-determiner "THE" :modifier mv21390 :raw-text
    "signaling pathway")
   (:var mv21390 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv21387 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv21405 :isa affect :manner mv21400 :modal mv21401 :agent mv21403 :object mv21399 :present
    "PRESENT" :raw-text "affect")
   (:var mv21400 :isa how) (:var mv21401 :isa might)
   (:var mv21403 :isa mutation :has-determiner "A" :object mv21398 :raw-text "mutation")
   (:var mv21398 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21399 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv21413 :isa polar-question :statement mv21408)
   (:var mv21408 :isa be :subject mv21406 :predicate mv21410)
   (:var mv21406 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21410 :isa regulator :theme mv21407 :has-determiner "A" :raw-text "regulator")
   (:var mv21407 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv21421 :isa polar-question :statement mv21416)
   (:var mv21416 :isa be :subject mv21414 :predicate mv21418)
   (:var mv21414 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21418 :isa regulator :theme mv21415 :has-determiner "A" :raw-text "regulator")
   (:var mv21415 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv21431 :isa polar-question :statement mv21424)
   (:var mv21424 :isa be :subject mv21422 :predicate mv21426)
   (:var mv21422 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21426 :isa regulator :theme mv21429 :has-determiner "A" :raw-text "regulator")
   (:var mv21429 :isa gene :has-determiner "THE" :expresses mv21423 :raw-text "gene")
   (:var mv21423 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv21441 :isa polar-question :statement mv21434)
   (:var mv21434 :isa be :subject mv21432 :predicate mv21436)
   (:var mv21432 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21436 :isa regulator :theme mv21439 :has-determiner "A" :raw-text "regulator")
   (:var mv21439 :isa gene :has-determiner "THE" :expresses mv21433 :raw-text "gene")
   (:var mv21433 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv21450 :isa polar-question :statement mv21445)
   (:var mv21445 :isa be :subject mv21442 :predicate mv21443)
   (:var mv21442 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21443 :isa transcription-factor :controlled-gene mv21448 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv21448 :isa gene :expresses mv21444 :raw-text "gene")
   (:var mv21444 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos"
   (:var mv21458 :isa polar-question :statement mv21454)
   (:var mv21454 :isa be :subject mv21451 :predicate mv21452)
   (:var mv21451 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21452 :isa transcription-factor :controlled-gene mv21453 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv21453 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?"
   (:var mv21466 :isa polar-question :statement mv21462)
   (:var mv21462 :isa be :subject mv21459 :predicate mv21460)
   (:var mv21459 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21460 :isa transcription-factor :controlled-gene mv21461 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv21461 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv21476 :isa polar-question :statement mv21470)
   (:var mv21470 :isa be :subject mv21467 :predicate mv21468)
   (:var mv21467 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21468 :isa transcription-factor :controlled-gene mv21474 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv21474 :isa gene :has-determiner "THE" :expresses mv21469 :raw-text "gene")
   (:var mv21469 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv21483 :isa polar-question :statement mv21480)
   (:var mv21480 :isa regulate :object mv21477 :agent mv21478 :past "PAST" :raw-text "regulated")
   (:var mv21477 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21478 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv21493 :isa polar-question :statement mv21487)
   (:var mv21487 :isa be :subject mv21484 :predicate mv21485)
   (:var mv21484 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21485 :isa transcription-factor :controlled-gene mv21491 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv21491 :isa gene :has-determiner "THE" :expresses mv21486 :raw-text "gene")
   (:var mv21486 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv21495 :isa list :theme mv21497 :present "PRESENT")
   (:var mv21497 :isa gene :plural t :predication mv21498 :raw-text "genes")
   (:var mv21498 :isa regulate :object mv21497 :agent mv21494 :past "PAST" :raw-text "regulated")
   (:var mv21494 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1"
   (:var mv21503 :isa list :theme mv21512 :present "PRESENT")
   (:var mv21512 :isa gene :plural t :predication mv21510 :raw-text "genes")
   (:var mv21510 :isa regulate :object mv21512 :that-rel t :agent mv21502 :present "PRESENT"
    :raw-text "regulated")
   (:var mv21502 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates"
   (:var mv21514 :isa list :theme mv21521 :present "PRESENT")
   (:var mv21521 :isa gene :plural t :predication mv21519 :quantifier mv21515 :raw-text "genes")
   (:var mv21519 :isa regulate :object mv21521 :that-rel t :agent mv21513 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21513 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21515 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv21523 :isa list :theme mv21529 :present "PRESENT")
   (:var mv21529 :isa gene :plural t :predication mv21527 :has-determiner "THE" :raw-text "genes")
   (:var mv21527 :isa regulate :object mv21529 :agent mv21522 :present "PRESENT" :raw-text
    "regulates")
   (:var mv21522 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv21531 :isa list :theme mv21542 :present "PRESENT")
   (:var mv21542 :isa gene :plural t :predication mv21540 :has-determiner "THE" :raw-text "genes")
   (:var mv21540 :isa regulate :object mv21542 :that-rel t :agent mv21530 :present "PRESENT"
    :raw-text "regulated")
   (:var mv21530 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates"
   (:var mv21544 :isa list :theme mv21551 :present "PRESENT")
   (:var mv21551 :isa gene :plural t :predication mv21549 :has-determiner "THE" :raw-text "genes")
   (:var mv21549 :isa regulate :object mv21551 :agent mv21543 :present "PRESENT" :raw-text
    "regulates")
   (:var mv21543 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv21552 :isa list :theme mv21554 :present "PRESENT")
   (:var mv21554 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv21559 :isa show :|statement-OR-theme| mv21566 :beneficiary mv21560 :present "PRESENT")
   (:var mv21566 :isa gene :plural t :predication mv21563 :raw-text "genes")
   (:var mv21563 :isa regulate :object mv21566 :agent mv21558 :past "PAST" :raw-text "regulated")
   (:var mv21558 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21560 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv21568 :isa show :|statement-OR-theme| mv21578 :beneficiary mv21569 :present "PRESENT")
   (:var mv21578 :isa gene :plural t :predication mv21576 :raw-text "genes")
   (:var mv21576 :isa regulate :object mv21578 :that-rel t :agent mv21567 :present "PRESENT"
    :raw-text "regulated")
   (:var mv21567 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21569 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv21580 :isa show :|statement-OR-theme| mv21586 :beneficiary mv21581 :present "PRESENT")
   (:var mv21586 :isa gene :plural t :predication mv21585 :raw-text "genes")
   (:var mv21585 :isa regulate :object mv21586 :that-rel t :agent mv21579 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21579 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21581 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv21587 :isa show :|statement-OR-theme| mv21590 :beneficiary mv21588 :present "PRESENT")
   (:var mv21590 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv21588 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv21626 :isa show :|statement-OR-theme| mv21633 :present "PRESENT")
   (:var mv21633 :isa gene :plural t :predication mv21631 :has-determiner "THE" :raw-text "genes")
   (:var mv21631 :isa regulate :object mv21633 :agent mv21625 :present "PRESENT" :raw-text
    "regulates")
   (:var mv21625 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv21634 :isa show :|statement-OR-theme| mv21636 :present "PRESENT")
   (:var mv21636 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv21643 :isa show :|statement-OR-theme| mv21653 :present "PRESENT")
   (:var mv21653 :isa transcription-factor :plural t :predication mv21651 :raw-text
    "transcription factors")
   (:var mv21651 :isa share :object mv21653 :that-rel t :participant mv21650 :present "PRESENT"
    :raw-text "shared")
   (:var mv21650 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv21642 mv21649))
   (:var mv21642 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21649 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv21655 :isa tell :theme mv21668 :beneficiary mv21656 :present "PRESENT")
   (:var mv21668 :isa gene :plural t :predication mv21667 :has-determiner "THE" :raw-text "genes")
   (:var mv21667 :isa regulate :object mv21668 :agent mv21654 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21654 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21656 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv21703 :isa be :subject mv21702 :predicate mv21707 :present "PRESENT")
   (:var mv21702 :isa what)
   (:var mv21707 :isa positive-regulator :plural t :theme mv21705 :raw-text "positive regulators")
   (:var mv21705 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv21710 :isa be :subject mv21709 :predicate mv21717 :present "PRESENT")
   (:var mv21709 :isa what)
   (:var mv21717 :isa regulator :plural t :theme mv21708 :quantifier mv21711 :raw-text
    "regulators")
   (:var mv21708 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv21711 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv21724 :isa be :subject mv21723 :predicate mv21736 :present "PRESENT")
   (:var mv21723 :isa what)
   (:var mv21736 :isa regulator :plural t :theme mv21732 :has-determiner "THE" :predication mv21726
    :raw-text "regulators")
   (:var mv21732 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv21718 mv21719 mv21730 mv21720 mv21721 mv21722))
   (:var mv21718 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv21719 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv21730 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv21720 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv21721 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv21722 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv21726 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv21739 :isa be :subject mv21738 :predicate mv21751 :present "PRESENT")
   (:var mv21738 :isa what)
   (:var mv21751 :isa regulator :plural t :theme mv21747 :has-determiner "THE" :predication mv21741
    :raw-text "regulators")
   (:var mv21747 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv21737 mv21746))
   (:var mv21737 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21746 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21741 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv21754 :isa be :subject mv21753 :predicate mv21766 :present "PRESENT")
   (:var mv21753 :isa what)
   (:var mv21766 :isa regulator :plural t :theme mv21762 :has-determiner "THE" :predication mv21756
    :raw-text "regulators")
   (:var mv21762 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv21752 mv21761))
   (:var mv21752 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21761 :isa bio-entity :name "srg") (:var mv21756 :isa common))
  ("What are the common regulators of those genes"
   (:var mv21768 :isa be :subject mv21767 :predicate mv21781 :present "PRESENT")
   (:var mv21767 :isa what)
   (:var mv21781 :isa regulator :plural t :theme mv21779 :has-determiner "THE" :predication mv21770
    :raw-text "regulators")
   (:var mv21779 :isa gene :plural t :has-determiner "THOSE" :raw-text "genes")
   (:var mv21770 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv21784 :isa be :subject mv21783 :predicate mv21792 :present "PRESENT")
   (:var mv21783 :isa what)
   (:var mv21792 :isa gene :plural t :predication mv21788 :has-determiner "THE" :raw-text "genes")
   (:var mv21788 :isa regulate :object mv21792 :agent mv21782 :past "PAST" :raw-text "regulated")
   (:var mv21782 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv21795 :isa be :subject mv21794 :predicate mv21802 :present "PRESENT")
   (:var mv21794 :isa what)
   (:var mv21802 :isa gene :plural t :predication mv21800 :has-determiner "THE" :raw-text "genes")
   (:var mv21800 :isa regulate :object mv21802 :agent mv21793 :present "PRESENT" :raw-text
    "regulates")
   (:var mv21793 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv21807 :isa be :subject mv21806 :predicate mv21821 :present "PRESENT")
   (:var mv21806 :isa what)
   (:var mv21821 :isa regulator :plural t :theme mv21817 :has-determiner "THE" :modifier mv21810
    :raw-text "regulators")
   (:var mv21817 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv21814 mv21815 mv21803 mv21804 mv21805))
   (:var mv21814 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21815 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21803 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21804 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21805 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv21810 :isa frequent :comparative mv21809 :name "frequent")
   (:var mv21809 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv21828 :isa be :subject mv21827 :predicate mv21837 :present "PRESENT")
   (:var mv21827 :isa what)
   (:var mv21837 :isa transcription-factor :plural t :predication mv21831 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv21831 :isa regulate :agent mv21837 :that-rel t :object mv21835 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21835 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv21832 mv21833 mv21824 mv21825 mv21826))
   (:var mv21832 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21833 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21824 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21825 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21826 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv21853 :isa copular-predication-of-pp :item mv21848 :value mv21852 :prep "IN" :predicate
    mv21842)
   (:var mv21848 :isa gene :plural t :has-determiner "WHAT" :modifier mv21839 :raw-text "genes")
   (:var mv21839 :isa other :name "other")
   (:var mv21852 :isa gene :plural t :context mv21846 :has-determiner "WHAT" :modifier mv21839
    :raw-text "genes")
   (:var mv21846 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv21842 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv21870 :isa copular-predication-of-pp :item mv21865 :value mv21869 :prep "IN" :predicate
    mv21859)
   (:var mv21865 :isa protein :plural t :has-determiner "WHAT" :modifier mv21856 :raw-text
    "proteins")
   (:var mv21856 :isa other :name "other")
   (:var mv21869 :isa protein :plural t :in-pathway mv21863 :has-determiner "WHAT" :modifier
    mv21856 :raw-text "proteins")
   (:var mv21863 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv21859 :isa be :present "PRESENT"))
  ("What pathways are they in?"
   (:var mv21875 :isa be :subject mv21878 :predicate mv21876 :present "PRESENT")
   (:var mv21878 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21876 :isa pronoun/plural :word "they"))
  ("What pathways involve SOARING?"
   (:var mv21882 :isa involve :theme mv21884 :object mv21883 :present "PRESENT")
   (:var mv21884 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21883 :isa soar :progressive "PROGRESSIVE" :raw-text "SOARING"))
  ("What proteins are in the first pathway"
   (:var mv21898 :isa copular-predication-of-pp :item mv21893 :value mv21897 :prep "IN" :predicate
    mv21888)
   (:var mv21893 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21897 :isa protein :plural t :in-pathway mv21892 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv21892 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv21888 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv21904 :isa involve :theme mv21905 :object mv21900 :present "PRESENT")
   (:var mv21905 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21900 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv21919 :isa copular-predication-of-pp :item mv21914 :value mv21918 :prep "IN" :predicate
    mv21909)
   (:var mv21914 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21918 :isa gene :plural t :context mv21913 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21913 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv21909 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv21934 :isa answer :patient mv21932 :modal mv21925 :agent mv21926 :theme mv21931 :present
    "PRESENT")
   (:var mv21932 :isa bio-question :plural t :has-determiner "WHAT") (:var mv21925 :isa can)
   (:var mv21926 :isa interlocutor :name "hearer")
   (:var mv21931 :isa micro-rna :plural t :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv21939 :isa regulate :agent mv21940 :object mv21937 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21940 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21937 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD"
    :count 8 :family-members
    ((protein (:name "SMAD6_HUMAN") (:uid "UP:O43541"))
     (protein (:name "SMAD9_HUMAN") (:uid "UP:O15198"))
     (protein (:name "SMAD7_HUMAN") (:uid "UP:O15105"))
     (protein (:name "SMAD5_HUMAN") (:uid "UP:Q99717"))
     (protein (:name "SMAD1_HUMAN") (:uid "UP:Q15797"))
     (protein (:name "SMAD2_HUMAN") (:uid "UP:Q15796"))
     (protein (:name "SMAD4_HUMAN") (:uid "UP:Q13485"))
     (protein (:name "SMAD3_HUMAN") (:uid "UP:P84022")))
    :uid "FPLX:SMAD"))
  ("Where does stat3 regulate cfos"
   (:var mv21944 :isa regulate :location mv21942 :agent mv21941 :object mv21945 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21942 :isa where)
   (:var mv21941 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21945 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv21950 :isa involve :theme mv21953 :object mv21951 :present "PRESENT")
   (:var mv21953 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21947 :raw-text
    "pathways")
   (:var mv21947 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21951 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv21967 :isa copular-predication-of-pp :item mv21962 :value mv21966 :prep "IN" :predicate
    mv21958)
   (:var mv21962 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv21966 :isa gene :plural t :context mv21954 :has-determiner "WHICH" :raw-text "genes")
   (:var mv21954 :isa signaling-pathway :has-determiner "THE" :modifier mv21961 :raw-text
    "signaling pathway")
   (:var mv21961 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv21958 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv21980 :isa involve :object mv21979 :|context-OR-theme| mv21969 :present "PRESENT")
   (:var mv21979 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv21969 :isa signaling-pathway :has-determiner "THE" :predication mv21977 :modifier
    mv21978 :raw-text "signaling pathway")
   (:var mv21977 :isa oncogenic)
   (:var mv21978 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019"))
  ("Which kinases regulate x?"
   (:var mv21985 :isa regulate :agent mv21987 :object mv21986 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21987 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv21986 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv21988 :isa downregulate :agent mv21993 :object mv21992 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv21993 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv21992 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv21994 :isa upregulate :agent mv21999 :object mv21998 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv21999 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv21998 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv22010 :isa copular-predication-of-pp :item mv22002 :value mv22008 :prep mv22004
    :predicate mv22003)
   (:var mv22002 :isa these :quantifier mv22000 :word "these") (:var mv22000 :isa which)
   (:var mv22008 :isa pathway :plural t :modifier mv22005 :raw-text "pathways")
   (:var mv22005 :isa immune :name "immune") (:var mv22004 :isa in :word "in")
   (:var mv22003 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv22022 :isa copular-predication-of-pp :item mv22015 :value mv22020 :prep mv22017
    :predicate mv22016)
   (:var mv22015 :isa these :quantifier mv22013 :word "these") (:var mv22013 :isa which)
   (:var mv22020 :isa pathway :plural t :non-cellular-location mv22012 :raw-text "pathways")
   (:var mv22012 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv22017 :isa in :word "in") (:var mv22016 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv22026 :isa be :subject mv22025 :predicate mv22032 :present "PRESENT")
   (:var mv22025 :isa what)
   (:var mv22032 :isa gene :plural t :predication mv22030 :has-determiner "THE" :raw-text "genes")
   (:var mv22030 :isa regulate :object mv22032 :agent mv22024 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22024 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv22042 :isa copular-predication-of-pp :item mv22035 :value mv22040 :prep mv22037
    :predicate mv22036)
   (:var mv22035 :isa those :quantifier mv22033 :word "those") (:var mv22033 :isa which)
   (:var mv22040 :isa pathway :has-determiner "THE" :modifier mv22039 :raw-text "pathway")
   (:var mv22039 :isa immune :name "immune") (:var mv22037 :isa in :word "in")
   (:var mv22036 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv22048 :isa involve :theme mv22049 :object mv22044 :present "PRESENT")
   (:var mv22049 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22044 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv22059 :isa polar-question :statement mv22052)
   (:var mv22052 :isa show :agent mv22051 :|statement-OR-theme| mv22055 :beneficiary mv22053 :modal
    "CAN")
   (:var mv22051 :isa interlocutor :name "hearer")
   (:var mv22055 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv22053 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv22065 :isa polar-question :statement mv22064)
   (:var mv22064 :isa inhibit :agent mv22062 :object mv22060 :raw-text "inhibit")
   (:var mv22062 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv22060 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv22075 :isa explicit-suggestion :suggestion mv22067 :marker let-as-directive)
   (:var mv22067 :isa build :artifact mv22069 :present "PRESENT")
   (:var mv22069 :isa model :object mv22073 :has-determiner "A")
   (:var mv22073 :isa neighborhood :has-determiner "THE" :modifier mv22072)
   (:var mv22072 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv22093 :isa collection :type know :number 2 :items (mv22091 mv22092))
   (:var mv22091 :isa know :agent mv22076 :statement mv22082 :present "PRESENT")
   (:var mv22076 :isa interlocutor :name "speaker")
   (:var mv22082 :isa bio-activate :agent mv22081 :object mv22083 :present "PRESENT" :raw-text
    "activates")
   (:var mv22081 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22083 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv22092 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv22085 mv22089))
   (:var mv22085 :isa bio-activate :agent mv22084 :object mv22086 :present "PRESENT" :raw-text
    "activates")
   (:var mv22084 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv22086 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22089 :isa bio-activate :agent mv22088 :object mv22090 :present "PRESENT" :raw-text
    "activates")
   (:var mv22088 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22090 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv22096 :isa phosphorylate :agent mv22094 :substrate mv22095 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv22094 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv22095 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv22099 :isa dephosphorylate :agent mv22097 :substrate mv22098 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv22097 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv22098 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv22110 :isa polar-question :statement mv22109)
   (:var mv22109 :isa copular-predication :item mv22103 :value mv22107 :predicate mv22101)
   (:var mv22103 :isa bio-amount :measured-item mv22100 :has-determiner "THE" :raw-text "amount")
   (:var mv22100 :isa protein :predication mv22105 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv22105 :isa phosphorylate :substrate mv22100 :raw-text "phosphorylated")
   (:var mv22107 :isa high :adverb mv22106) (:var mv22106 :isa always :name "always")
   (:var mv22101 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv22121 :isa polar-question :statement mv22120)
   (:var mv22120 :isa copular-predication :item mv22114 :value mv22118 :predicate mv22112)
   (:var mv22114 :isa bio-amount :measured-item mv22111 :has-determiner "THE" :raw-text "amount")
   (:var mv22111 :isa protein :predication mv22116 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv22116 :isa phosphorylate :substrate mv22111 :raw-text "phosphorylated")
   (:var mv22118 :isa low :adverb mv22117) (:var mv22117 :isa always :name "always")
   (:var mv22112 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv22131 :isa polar-question :statement mv22130)
   (:var mv22130 :isa vanish :agent mv22129 :raw-text "vanish")
   (:var mv22129 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv22123
    :component mv22122)
   (:var mv22123 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv22122 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv22141 :isa polar-question :statement mv22140)
   (:var mv22140 :isa vanish :agent mv22139 :raw-text "vanish")
   (:var mv22139 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv22133
    :component mv22132)
   (:var mv22133 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv22132 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv22171 :isa polar-question :statement mv22170)
   (:var mv22170 :isa event-relation :subordinated-event mv22167 :event mv22163)
   (:var mv22167 :isa wh-question :statement mv22164 :wh if)
   (:var mv22164 :isa increase :|agent-OR-cause| mv22151 :|multiplier-OR-cause| mv22162
    :|affected-process-OR-object| mv22155 :raw-text "increase")
   (:var mv22151 :isa interlocutor :name "person-and-machine")
   (:var mv22162 :isa measurement :number mv22159) (:var mv22159 :isa number :value 10)
   (:var mv22155 :isa bio-amount :measured-item mv22143 :has-determiner "THE" :raw-text "amount")
   (:var mv22143 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv22163 :isa vanish :cause mv22146 :raw-text "vanish")
   (:var mv22146 :isa bio-amount :measured-item mv22142 :has-determiner "THE" :raw-text "amount")
   (:var mv22142 :isa protein :predication mv22148 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv22148 :isa phosphorylate :substrate mv22142 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv22173 :isa show :|statement-OR-theme| mv22180 :beneficiary mv22174 :present "PRESENT")
   (:var mv22180 :isa evidence :statement mv22179 :has-determiner "THE")
   (:var mv22179 :isa regulate :agent mv22178 :object mv22172 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22178 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22172 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv22174 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv22185 :isa increase :|agent-OR-cause| mv22182 :|affected-process-OR-object| mv22187
    :present "PRESENT" :raw-text "increases")
   (:var mv22182 :isa what)
   (:var mv22187 :isa bio-amount :measured-item mv22181 :has-determiner "THE" :raw-text "amount")
   (:var mv22181 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv22203 :isa copular-predication-of-pp :item mv22198 :value mv22202 :prep "IN" :predicate
    mv22194)
   (:var mv22198 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv22202 :isa kinase :plural t :in-pathway mv22190 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv22190 :isa signaling-pathway :has-determiner "THE" :modifier mv22197 :raw-text
    "signaling pathway")
   (:var mv22197 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv22194 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv22216 :isa polar-question :statement mv22214)
   (:var mv22214 :isa regulate :agent mv22205 :object mv22210 :raw-text "regulate")
   (:var mv22205 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22210 :isa gene :organ mv22213 :has-determiner "THE" :expresses mv22206 :raw-text
    "gene")
   (:var mv22213 :isa liver :has-determiner "THE")
   (:var mv22206 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv22225 :isa regulate :object mv22224 :agent mv22217 :present "PRESENT" :raw-text
    "regulated")
   (:var mv22224 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv22217 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv22234 :isa regulate :|affected-process-OR-object| mv22230 :agent mv22227 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22230 :isa these :quantifier mv22228 :word "these") (:var mv22228 :isa which)
   (:var mv22227 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv22242 :isa regulate :|agent-OR-cause| mv22239 :object mv22243 :present "PRESENT" :adverb
    mv22240 :raw-text "regulate")
   (:var mv22239 :isa these :quantifier mv22237 :word "these") (:var mv22237 :isa which)
   (:var mv22243 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv22240 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv22249 :isa transcribe :agent mv22250 :object mv22247 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv22250 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22247 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv22254 :isa transcribe :agent mv22251 :object mv22252 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv22251 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv22252 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv22259 :isa bio-utilize :agent mv22262 :object mv22260 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22262 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22256 :raw-text
    "pathways")
   (:var mv22256 :isa database :name "KEGG" :uid "KEGG")
   (:var mv22260 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv22280 :isa copular-predication-of-pp :item mv22273 :value mv22279 :prep "IN" :predicate
    mv22266)
   (:var mv22273 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22279 :isa transcription-factor :plural t :in-pathway mv22275 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv22275 :isa pathway :plural t :has-determiner "THE" :predication mv22270 :raw-text
    "pathways")
   (:var mv22270 :isa regulate :affected-process mv22275 :agent mv22269 :raw-text "regulated")
   (:var mv22269 :isa calcium :raw-text "calcium") (:var mv22266 :isa be :present "PRESENT"))
  ("What pathways involve the immune system?"
   (:var mv22286 :isa involve :theme mv22288 :object mv22282 :present "PRESENT")
   (:var mv22288 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv22282 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv22295 :isa involve :theme mv22300 :object mv22298 :present "PRESENT")
   (:var mv22300 :isa pathway :plural t :has-determiner "WHAT" :modifier mv22292 :raw-text
    "pathways")
   (:var mv22292 :isa database :name "KEGG" :uid "KEGG")
   (:var mv22298 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv22289 mv22296 mv22290))
   (:var mv22289 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv22296 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv22290 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv22311 :isa share :object mv22310 :participant mv22312 :present "PRESENT" :raw-text
    "shared")
   (:var mv22310 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv22312 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv22322 :isa regulate :object mv22321 :agent mv22320 :present "PRESENT" :raw-text
    "regulated")
   (:var mv22321 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv22320 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv22325 :isa be :subject mv22324 :predicate mv22336 :present "PRESENT")
   (:var mv22324 :isa what)
   (:var mv22336 :isa pathway :plural t :pathwaycomponent mv22334 :predication mv22326 :raw-text
    "pathways")
   (:var mv22334 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv22326 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv22353 :isa share :object mv22352 :participant mv22354 :present "PRESENT" :raw-text
    "shared")
   (:var mv22352 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22341 :raw-text
    "pathways")
   (:var mv22341 :isa immune :name "immune")
   (:var mv22354 :isa gene :plural t :expresses mv22350 :raw-text "genes")
   (:var mv22350 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv22337 mv22338 mv22339))
   (:var mv22337 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22338 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22339 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv22363 :isa regulate :object mv22359 :agent mv22357 :present "PRESENT" :raw-text
    "regulated")
   (:var mv22359 :isa phosphatase :has-determiner "WHAT" :enzyme mv22356 :raw-text "phosphatase")
   (:var mv22356 :isa protein-family :raw-text "MAP kinase" :name
    "mitogen activated protein kinase" :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv22357 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv22370 :isa involve :theme mv22372 :object mv22365 :present "PRESENT")
   (:var mv22372 :isa pathway :plural t :has-determiner "WHAT" :modifier mv22367 :raw-text
    "pathways")
   (:var mv22367 :isa database :name "Reactome" :uid "Reactome")
   (:var mv22365 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv22377 :isa polar-question :statement mv22374)
   (:var mv22374 :isa be :subject mv22373 :predicate mv22376)
   (:var mv22373 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22376 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv22382 :isa polar-question :statement mv22380)
   (:var mv22380 :isa be :subject mv22378 :predicate mv22379)
   (:var mv22378 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22379 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv22386 :isa be :subject mv22385 :predicate mv22390 :present "PRESENT")
   (:var mv22385 :isa these :quantifier mv22383 :word "these") (:var mv22383 :isa which)
   (:var mv22390 :isa kinase :plural t :enzyme mv22387 :raw-text "kinases")
   (:var mv22387 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv22397 :isa be :subject mv22396 :predicate mv22393 :present "PRESENT")
   (:var mv22396 :isa these :quantifier mv22394 :word "these") (:var mv22394 :isa which)
   (:var mv22393 :isa protein-family :plural t :raw-text "tyrosine kinases" :uid "NCIT:C17020"
    :name "protein tyrosine kinase"))
  ("Which of these are serine/threonine kinases?"
   (:var mv22402 :isa be :subject mv22401 :predicate mv22408 :present "PRESENT")
   (:var mv22401 :isa these :quantifier mv22399 :word "these") (:var mv22399 :isa which)
   (:var mv22408 :isa kinase :plural t :amino-acid mv22407 :raw-text "kinases")
   (:var mv22407 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv22403 mv22404))
   (:var mv22403 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv22404 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv22413 :isa be :subject mv22412 :predicate mv22415 :present "PRESENT")
   (:var mv22412 :isa these :quantifier mv22410 :word "these") (:var mv22410 :isa which)
   (:var mv22415 :isa phosphatase :plural t :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv22420 :isa be :subject mv22419 :predicate mv22421 :present "PRESENT")
   (:var mv22419 :isa these :quantifier mv22417 :word "these") (:var mv22417 :isa which)
   (:var mv22421 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv22426 :isa be :subject mv22425 :predicate mv22428 :present "PRESENT")
   (:var mv22425 :isa these :quantifier mv22423 :word "these") (:var mv22423 :isa which)
   (:var mv22428 :isa receptor :plural t :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv22434 :isa be :subject mv22433 :predicate mv22437 :present "PRESENT")
   (:var mv22433 :isa these :quantifier mv22431 :word "these") (:var mv22431 :isa which)
   (:var mv22437 :isa receptor :plural t :modifier mv22430 :raw-text "receptors")
   (:var mv22430 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv22444 :isa be :subject mv22443 :predicate mv22440 :present "PRESENT")
   (:var mv22443 :isa these :quantifier mv22441 :word "these") (:var mv22441 :isa which)
   (:var mv22440 :isa protein-family :plural t :raw-text "histone demethylases" :uid "GO:0032452"
    :name "histone demethylase"))
  ("Which of these are histone methylases?"
   (:var mv22451 :isa be :subject mv22450 :predicate mv22447 :present "PRESENT")
   (:var mv22450 :isa these :quantifier mv22448 :word "these") (:var mv22448 :isa which)
   (:var mv22447 :isa protein-family :plural t :raw-text "histone methylases" :uid "GO:0042054"
    :name "histone methyltransferase"))
  ("Which of these are histone methyltransferases?"
   (:var mv22458 :isa be :subject mv22457 :predicate mv22454 :present "PRESENT")
   (:var mv22457 :isa these :quantifier mv22455 :word "these") (:var mv22455 :isa which)
   (:var mv22454 :isa protein-family :plural t :raw-text "histone methyltransferases" :uid
    "GO:0042054" :name "histone methyltransferase"))
  ("Which of these are demethylases?"
   (:var mv22463 :isa be :subject mv22462 :predicate mv22465 :present "PRESENT")
   (:var mv22462 :isa these :quantifier mv22460 :word "these") (:var mv22460 :isa which)
   (:var mv22465 :isa protein-family :plural t :raw-text "demethylases" :uid "GO:0032451" :name
    "demethylase"))
  ("Which of these are methylases?"
   (:var mv22470 :isa be :subject mv22469 :predicate mv22472 :present "PRESENT")
   (:var mv22469 :isa these :quantifier mv22467 :word "these") (:var mv22467 :isa which)
   (:var mv22472 :isa protein-family :plural t :raw-text "methylases" :uid "GO:0008168" :name
    "methyltransferase"))
  ("Which of these are methyltransferases?"
   (:var mv22477 :isa be :subject mv22476 :predicate mv22479 :present "PRESENT")
   (:var mv22476 :isa these :quantifier mv22474 :word "these") (:var mv22474 :isa which)
   (:var mv22479 :isa protein-family :plural t :raw-text "methyltransferases" :uid "GO:0008168"
    :name "methyltransferase"))
  ("Which of these are steroid receptors?"
   (:var mv22484 :isa be :subject mv22483 :predicate mv22488 :present "PRESENT")
   (:var mv22483 :isa these :quantifier mv22481 :word "these") (:var mv22481 :isa which)
   (:var mv22488 :isa receptor :plural t :modifier mv22485 :raw-text "receptors")
   (:var mv22485 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv22495 :isa be :subject mv22494 :predicate mv22491 :present "PRESENT")
   (:var mv22494 :isa these :quantifier mv22492 :word "these") (:var mv22492 :isa which)
   (:var mv22491 :isa protein-family :plural t :raw-text "receptor tyrosine kinases" :uid
    "NCIT:C17660" :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :count 2 :name "receptor tyrosine kinase"))
  ("Which of these are transcription factors?"
   (:var mv22502 :isa be :subject mv22501 :predicate mv22498 :present "PRESENT")
   (:var mv22501 :isa these :quantifier mv22499 :word "these") (:var mv22499 :isa which)
   (:var mv22498 :isa transcription-factor :plural t :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv22508 :isa be :subject mv22507 :predicate mv22511 :present "PRESENT")
   (:var mv22507 :isa these :quantifier mv22505 :word "these") (:var mv22505 :isa which)
   (:var mv22511 :isa protein :plural t :modifier mv22504 :raw-text "proteins")
   (:var mv22504 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv22516 :isa be :subject mv22515 :predicate mv22522 :present "PRESENT")
   (:var mv22515 :isa these :quantifier mv22513 :word "these") (:var mv22513 :isa which)
   (:var mv22522 :isa phosphatase :plural t :modifier mv22521 :raw-text "phosphatases")
   (:var mv22521 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv22517 mv22518))
   (:var mv22517 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv22518 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv22527 :isa be :subject mv22526 :predicate mv22531 :present "PRESENT")
   (:var mv22526 :isa these :quantifier mv22524 :word "these") (:var mv22524 :isa which)
   (:var mv22531 :isa phosphatase :plural t :modifier mv22528 :raw-text "phosphatases")
   (:var mv22528 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv22536 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv22533 :agent mv22535
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv22533 :isa what)
   (:var mv22535 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv22545 :isa gene-transcript-express :object mv22539 :organ mv22544 :present "PRESENT"
    :adverb mv22541 :raw-text "expressed")
   (:var mv22539 :isa these :quantifier mv22537 :word "these") (:var mv22537 :isa which)
   (:var mv22544 :isa liver) (:var mv22541 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv22550 :isa regulate :|agent-OR-cause| mv22549 :object mv22548 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22549 :isa what)
   (:var mv22548 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv22554 :isa increase :|agent-OR-cause| mv22551 :|affected-process-OR-object| mv22556
    :present "PRESENT" :raw-text "increases")
   (:var mv22551 :isa what)
   (:var mv22556 :isa bio-amount :measured-item mv22558 :has-determiner "THE" :raw-text "amount")
   (:var mv22558 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv22561 :isa upregulate :|agent-OR-cause| mv22560 :object mv22562 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv22560 :isa what)
   (:var mv22562 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv22564 :isa downregulate :|agent-OR-cause| mv22563 :object mv22565 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv22563 :isa what)
   (:var mv22565 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv22567 :isa decrease :|agent-OR-cause| mv22566 :|affected-process-OR-object| mv22569
    :present "PRESENT" :raw-text "decreases")
   (:var mv22566 :isa what)
   (:var mv22569 :isa bio-amount :measured-item mv22571 :has-determiner "THE" :raw-text "amount")
   (:var mv22571 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv22574 :isa regulate :|agent-OR-cause| mv22573 :object mv22575 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22573 :isa what)
   (:var mv22575 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv22577 :isa regulate :|agent-OR-cause| mv22576 :object mv22578 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22576 :isa what)
   (:var mv22578 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv22585 :isa regulate :|agent-OR-cause| mv22584 :object mv22586 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22584 :isa what)
   (:var mv22586 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("Which kinases regulate the cfos gene?"
   (:var mv22593 :isa regulate :agent mv22597 :object mv22596 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22597 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv22596 :isa gene :has-determiner "THE" :expresses mv22595 :raw-text "gene")
   (:var mv22595 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv22598 :isa downregulate :agent mv22605 :object mv22604 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv22605 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv22604 :isa gene :has-determiner "THE" :expresses mv22603 :raw-text "gene")
   (:var mv22603 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv22609 :isa be :subject mv22608 :predicate mv22615 :present "PRESENT")
   (:var mv22608 :isa what)
   (:var mv22615 :isa positive-regulator :plural t :theme mv22613 :raw-text "positive regulators")
   (:var mv22613 :isa gene :has-determiner "THE" :expresses mv22612 :raw-text "gene")
   (:var mv22612 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv22618 :isa transcribe :|agent-OR-cause| mv22617 :object mv22616 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv22617 :isa what)
   (:var mv22616 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv22621 :isa show :|statement-OR-theme| mv22633 :beneficiary mv22622 :present "PRESENT")
   (:var mv22633 :isa evidence :statement mv22628 :has-determiner "THE")
   (:var mv22628 :isa increase :agent mv22619 :|affected-process-OR-object| mv22630 :present
    "PRESENT" :raw-text "increases")
   (:var mv22619 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv22630 :isa bio-amount :measured-item mv22620 :has-determiner "THE" :raw-text "amount")
   (:var mv22620 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv22622 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv22635 :isa show :|statement-OR-theme| mv22638 :beneficiary mv22636 :present "PRESENT")
   (:var mv22638 :isa evidence :has-determiner "THE")
   (:var mv22636 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv22648 :isa be :subject mv22647 :predicate mv22654 :present "PRESENT")
   (:var mv22647 :isa what) (:var mv22654 :isa evidence :statement mv22653 :has-determiner "THE")
   (:var mv22653 :isa regulate :agent mv22652 :object mv22646 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22652 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22646 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv22656 :isa be :subject mv22655 :predicate mv22665 :present "PRESENT")
   (:var mv22655 :isa what) (:var mv22665 :isa evidence :statement mv22661 :has-determiner "THE")
   (:var mv22661 :isa binding :binder mv22660 :direct-bindee mv22664 :present "PRESENT" :raw-text
    "binds")
   (:var mv22660 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22664 :isa gene :has-determiner "THE" :expresses mv22663 :raw-text "gene")
   (:var mv22663 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv22675 :isa gene-transcript-express :object mv22674 :organ mv22673 :present "PRESENT"
    :adverb mv22670 :raw-text "expressed")
   (:var mv22674 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv22673 :isa liver) (:var mv22670 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv22683 :isa polar-question :statement mv22679)
   (:var mv22679 :isa gene-transcript-express :object mv22677 :organ mv22681 :past "PAST" :raw-text
    "expressed")
   (:var mv22677 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22681 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv22692 :isa polar-question :statement mv22690)
   (:var mv22690 :isa gene-transcript-express :object mv22684 :organ mv22689 :adverb mv22686
    :raw-text "expressed")
   (:var mv22684 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22689 :isa liver) (:var mv22686 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv22697 :isa affect :manner mv22695 :agent mv22693 :object mv22694 :present "PRESENT"
    :raw-text "affect")
   (:var mv22695 :isa how)
   (:var mv22693 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv22694 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv22702 :isa affect :manner mv22699 :agent mv22701 :object mv22698 :present "PRESENT"
    :raw-text "affect")
   (:var mv22699 :isa how)
   (:var mv22701 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv22698 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv22706 :isa be :subject mv22705 :predicate mv22720 :present "PRESENT")
   (:var mv22705 :isa what)
   (:var mv22720 :isa regulator :plural t :theme mv22715 :has-determiner "THE" :predication mv22708
    :context mv22709 :raw-text "regulators")
   (:var mv22715 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv22703 mv22704))
   (:var mv22703 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv22704 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv22708 :isa common) (:var mv22709 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv22724 :isa be :subject mv22723 :predicate mv22733 :present "PRESENT")
   (:var mv22723 :isa what)
   (:var mv22733 :isa path :plural t :endpoints mv22730 :has-determiner "THE")
   (:var mv22730 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv22721 mv22722))
   (:var mv22721 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv22722 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv22739 :isa polar-question :statement mv22738)
   (:var mv22738 :isa affect :agent mv22734 :object mv22737 :raw-text "affect")
   (:var mv22734 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv22737 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv22741 :isa regulate :agent mv22740 :object mv22742 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22740 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv22742 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv22744 :isa upregulate :agent mv22743 :object mv22745 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv22743 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv22745 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv22746 :isa upregulate :agent mv22748 :object mv22747 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv22748 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv22747 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv22758 :isa polar-question :statement mv22757)
   (:var mv22757 :isa regulate :agent mv22752 :object mv22756 :raw-text "regulate")
   (:var mv22752 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv22756 :isa gene :has-determiner "THE" :expresses mv22750 :raw-text "gene")
   (:var mv22750 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv22760 :isa show :|statement-OR-theme| mv22768 :beneficiary mv22761 :present "PRESENT")
   (:var mv22768 :isa evidence :statement mv22767 :has-determiner "THE")
   (:var mv22767 :isa regulate :agent mv22765 :object mv22759 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22765 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv22759 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv22761 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv22776 :isa polar-question :statement mv22775)
   (:var mv22775 :isa regulate :agent mv22771 :object mv22774 :raw-text "regulate")
   (:var mv22771 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv22774 :isa gene :has-determiner "THE" :expresses mv22769 :raw-text "gene")
   (:var mv22769 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv22779 :isa decrease :agent mv22778 :|affected-process-OR-object| mv22781 :present
    "PRESENT" :raw-text "decreases")
   (:var mv22778 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv22781 :isa bio-amount :measured-item mv22777 :has-determiner "THE" :raw-text "amount")
   (:var mv22777 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv22789 :isa polar-question :statement mv22788)
   (:var mv22788 :isa regulate :agent mv22787 :object mv22786 :raw-text "regulate")
   (:var mv22787 :isa bio-entity :name "TNG")
   (:var mv22786 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv22797 :isa polar-question :statement mv22796)
   (:var mv22796 :isa regulate :agent mv22791 :object mv22795 :raw-text "regulate")
   (:var mv22791 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv22795 :isa gene :has-determiner "THE" :expresses mv22794 :raw-text "gene")
   (:var mv22794 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv22799 :isa be :subject mv22798 :predicate mv22810 :present "PRESENT")
   (:var mv22798 :isa what)
   (:var mv22810 :isa pathway :plural t :pathwaycomponent mv22807 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv22807 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv22804 mv22806))
   (:var mv22804 :isa bio-entity :name "TNG")
   (:var mv22806 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv22812 :isa be :subject mv22811 :predicate mv22823 :present "PRESENT")
   (:var mv22811 :isa what)
   (:var mv22823 :isa pathway :plural t :pathwaycomponent mv22820 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv22820 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv22817 mv22819))
   (:var mv22817 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv22819 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv22830 :isa polar-question :statement mv22829)
   (:var mv22829 :isa regulate :agent mv22825 :object mv22828 :raw-text "regulate")
   (:var mv22825 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv22828 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv22839 :isa polar-question :statement mv22838)
   (:var mv22838 :isa regulate :agent mv22832 :object mv22837 :raw-text "regulate")
   (:var mv22832 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv22837 :isa gene :has-determiner "THE" :expresses mv22836 :raw-text "gene")
   (:var mv22836 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv22855 :isa copular-predication-of-pp :item mv22850 :value mv22854 :prep "BETWEEN"
    :predicate mv22843)
   (:var mv22850 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv22854 :isa pathway :plural t :pathwaycomponent mv22849 :has-determiner "WHAT" :raw-text
    "pathways")
   (:var mv22849 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv22846 mv22848))
   (:var mv22846 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv22848 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv22843 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv22861 :isa affect :manner mv22857 :agent mv22859 :object mv22862 :present "PRESENT"
    :raw-text "affect")
   (:var mv22857 :isa how)
   (:var mv22859 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv22862 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv22864 :isa bio-activate :agent mv22863 :object mv22865 :present "PRESENT" :raw-text
    "activates")
   (:var mv22863 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv22865 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv22867 :isa bio-activate :agent mv22866 :object mv22868 :present "PRESENT" :raw-text
    "activates")
   (:var mv22866 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv22868 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv22870 :isa be :subject mv22869 :predicate mv22881 :present "PRESENT")
   (:var mv22869 :isa what)
   (:var mv22881 :isa path :plural t :endpoints mv22878 :has-determiner "THE")
   (:var mv22878 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv22875 mv22877))
   (:var mv22875 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv22877 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv22887 :isa polar-question :statement mv22886)
   (:var mv22886 :isa regulate :agent mv22883 :object mv22885 :raw-text "regulate")
   (:var mv22883 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv22885 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv22892 :isa affect :manner mv22890 :agent mv22888 :object mv22889 :present "PRESENT"
    :raw-text "affect")
   (:var mv22890 :isa how)
   (:var mv22888 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv22889 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv22894 :isa bio-activate :agent mv22893 :object mv22895 :present "PRESENT" :raw-text
    "activates")
   (:var mv22893 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv22895 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv22899 :isa decrease :agent mv22898 :|affected-process-OR-object| mv22901 :present
    "PRESENT" :raw-text "decreases")
   (:var mv22898 :isa protein-family :predication mv22897 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv22897 :isa active)
   (:var mv22901 :isa bio-amount :measured-item mv22896 :has-determiner "THE" :raw-text "amount")
   (:var mv22896 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv22907 :isa be :subject mv22906 :predicate mv22918 :present "PRESENT")
   (:var mv22906 :isa what)
   (:var mv22918 :isa upstream-segment :plural t :pathwaycomponent mv22914 :has-determiner "THE"
    :predication mv22909 :raw-text "upstreams")
   (:var mv22914 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv22904 mv22905))
   (:var mv22904 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv22905 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv22909 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv22923 :isa affect :manner mv22921 :agent mv22919 :object mv22920 :present "PRESENT"
    :raw-text "affect")
   (:var mv22921 :isa how)
   (:var mv22919 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv22920 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv22929 :isa polar-question :statement mv22928)
   (:var mv22928 :isa regulate :agent mv22924 :object mv22925 :raw-text "regulate")
   (:var mv22924 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv22925 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv22937 :isa polar-question :statement mv22936)
   (:var mv22936 :isa regulate :agent mv22930 :object mv22935 :raw-text "regulate")
   (:var mv22930 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv22935 :isa gene :has-determiner "THE" :expresses mv22931 :raw-text "gene")
   (:var mv22931 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv22942 :isa affect :manner mv22940 :agent mv22938 :object mv22939 :present "PRESENT"
    :raw-text "affect")
   (:var mv22940 :isa how)
   (:var mv22938 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv22939 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv22945 :isa be :subject mv22944 :predicate mv22955 :present "PRESENT")
   (:var mv22944 :isa what)
   (:var mv22955 :isa path :plural t :endpoints mv22952 :has-determiner "THE")
   (:var mv22952 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv22950 mv22943))
   (:var mv22950 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv22943 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv22965 :isa polar-question :statement mv22963)
   (:var mv22963 :isa regulate :agent mv22958 :affected-process mv22961 :raw-text "regulate")
   (:var mv22958 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv22961 :isa gene-transcript-express :object mv22956 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22956 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv22969 :isa decrease :agent mv22968 :affected-process mv22971 :present "PRESENT"
    :raw-text "decreases")
   (:var mv22968 :isa protein-family :predication mv22967 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv22967 :isa active)
   (:var mv22971 :isa gene-transcript-express :object mv22966 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22966 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv22977 :isa decrease :agent mv22976 :|affected-process-OR-object| mv22979 :present
    "PRESENT" :raw-text "decreases")
   (:var mv22976 :isa protein-family :predication mv22975 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv22975 :isa active)
   (:var mv22979 :isa bio-amount :measured-item mv22974 :has-determiner "THE" :raw-text "amount")
   (:var mv22974 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv22985 :isa decrease :agent mv22984 :|affected-process-OR-object| mv22987 :present
    "PRESENT" :raw-text "decreases")
   (:var mv22984 :isa protein-family :predication mv22983 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv22983 :isa active)
   (:var mv22987 :isa bio-amount :measured-item mv22982 :has-determiner "THE" :raw-text "amount")
   (:var mv22982 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv22992 :isa inhibit :agent mv22990 :affected-process mv22994 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv22990 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv22994 :isa bio-activity :participant mv22991 :has-determiner "THE" :raw-text "activity")
   (:var mv22991 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?"
   (:var mv23008 :isa polar-question :statement mv23006)
   (:var mv23006 :isa decrease :agent mv22997 :object mv22998 :raw-text "decrease")
   (:var mv22997 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv22998 :isa protein :has-determiner "THE" :raw-text "CXCL8" :uid "UP:P10145" :name
    "IL8_HUMAN"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv23019 :isa polar-question :statement mv23017)
   (:var mv23017 :isa decrease :agent mv23009 :object mv23010 :raw-text "decrease")
   (:var mv23009 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv23010 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("TNF activates NFkappaB"
   (:var mv23021 :isa bio-activate :agent mv23020 :object mv23022 :present "PRESENT" :raw-text
    "activates")
   (:var mv23020 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv23022 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv23028 :isa want :agent mv23025 :theme mv23039 :present "PRESENT")
   (:var mv23025 :isa interlocutor :name "speaker")
   (:var mv23039 :isa find-out :agent mv23025 :statement mv23036)
   (:var mv23036 :isa wh-question :statement mv23035 :var nil :wh how)
   (:var mv23035 :isa decrease :agent mv23034 :object mv23024 :present "PRESENT" :raw-text
    "decreases")
   (:var mv23034 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv23024 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv23044 :isa want :agent mv23041 :theme mv23061 :present "PRESENT")
   (:var mv23041 :isa interlocutor :name "speaker")
   (:var mv23061 :isa find-out :agent mv23041 :statement mv23058)
   (:var mv23058 :isa wh-question :statement mv23051 :var nil :wh how)
   (:var mv23051 :isa decrease :agent mv23050 :object mv23052 :present "PRESENT" :raw-text
    "decreases")
   (:var mv23050 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv23052 :isa protein :cell-type mv23056 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv23056 :isa cell-type :plural t :cell-line mv23040)
   (:var mv23040 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv23067 :isa want :agent mv23064 :theme mv23083 :present "PRESENT")
   (:var mv23064 :isa interlocutor :name "speaker")
   (:var mv23083 :isa find-out :agent mv23064 :statement mv23080)
   (:var mv23080 :isa wh-question :statement mv23073 :var nil :wh how)
   (:var mv23073 :isa bio-activate :agent mv23062 :object mv23074 :present "PRESENT" :raw-text
    "activates")
   (:var mv23062 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv23074 :isa protein :cell-type mv23078 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv23078 :isa cell-type :plural t :cell-line mv23063)
   (:var mv23063 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv23089 :isa polar-question :statement mv23088)
   (:var mv23088 :isa phosphorylate :agent mv23085 :substrate mv23087 :raw-text "phosphorylate")
   (:var mv23085 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23087 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv23097 :isa polar-question :statement mv23096)
   (:var mv23096 :isa inhibit :agent mv23090 :object mv23095 :raw-text "inhibit")
   (:var mv23090 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23095 :isa gene :has-determiner "THE" :expresses mv23091 :raw-text "gene")
   (:var mv23091 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv23105 :isa polar-question :statement mv23104)
   (:var mv23104 :isa stimulate :agent mv23098 :object mv23103 :raw-text "stimulate")
   (:var mv23098 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23103 :isa gene :has-determiner "THE" :expresses mv23099 :raw-text "gene")
   (:var mv23099 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv23110 :isa want :agent mv23107 :theme mv23129 :present "PRESENT")
   (:var mv23107 :isa interlocutor :name "speaker")
   (:var mv23129 :isa find-out :agent mv23107 :statement mv23126)
   (:var mv23126 :isa wh-question :statement mv23117 :var nil :wh how)
   (:var mv23117 :isa decrease :agent mv23116 :object mv23118 :present "PRESENT" :raw-text
    "decreases")
   (:var mv23116 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv23118 :isa protein :cell-type mv23124 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv23124 :isa cell-type :plural t :cell-line mv23106 :associated-disease mv23120)
   (:var mv23106 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv23120 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv23134 :isa polar-question :statement mv23131)
   (:var mv23131 :isa be :subject mv23132 :predicate mv23130)
   (:var mv23132 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv23130 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv23136 :isa list :theme mv23147 :present "PRESENT")
   (:var mv23147 :isa gene :plural t :predication mv23141 :quantifier mv23137 :has-determiner "THE"
    :raw-text "genes")
   (:var mv23141 :isa regulate :object mv23147 :agent mv23145 :past "PAST" :raw-text "regulated")
   (:var mv23145 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23135 mv23144))
   (:var mv23135 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23144 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23137 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv23151 :isa list :theme mv23165 :present "PRESENT")
   (:var mv23165 :isa gene :plural t :predication mv23157 :quantifier mv23152 :has-determiner "THE"
    :raw-text "genes")
   (:var mv23157 :isa regulate :object mv23165 :agent mv23161 :past "PAST" :raw-text "regulated")
   (:var mv23161 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23150 mv23160))
   (:var mv23150 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23160 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23152 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv23170 :isa show :|statement-OR-theme| mv23184 :beneficiary mv23171 :present "PRESENT")
   (:var mv23184 :isa mutation :plural t :context mv23169 :object mv23179 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv23169 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv23179 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv23168 mv23177))
   (:var mv23168 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv23177 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv23171 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv23188 :isa be :subject mv23187 :predicate mv23201 :present "PRESENT")
   (:var mv23187 :isa what)
   (:var mv23201 :isa mutation :plural t :context mv23186 :object mv23196 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv23186 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv23196 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv23185 mv23194))
   (:var mv23185 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv23194 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv23206 :isa be :subject mv23205 :predicate mv23216 :present "PRESENT")
   (:var mv23205 :isa what)
   (:var mv23216 :isa gene :disease mv23204 :has-determiner "THE" :predication mv23202 :raw-text
    "genes")
   (:var mv23204 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv23202 :isa mutual-exclusivity :alternative mv23203)
   (:var mv23203 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv23221 :isa be :subject mv23220 :predicate mv23231 :present "PRESENT")
   (:var mv23220 :isa what)
   (:var mv23231 :isa gene :disease mv23219 :has-determiner "THE" :predication mv23217 :raw-text
    "genes")
   (:var mv23219 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv23217 :isa mutual-exclusivity :alternative mv23218)
   (:var mv23218 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What downregulates it?"
   (:var mv23233 :isa downregulate :|agent-OR-cause| mv23232 :|affected-process-OR-object| mv23234
    :present "PRESENT" :raw-text "downregulates")
   (:var mv23232 :isa what) (:var mv23234 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv23239 :isa have :possessor mv23246 :thing-possessed mv23241 :present "PRESENT")
   (:var mv23246 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23241 :isa evidence :fact mv23244 :predication mv23240)
   (:var mv23244 :isa regulate :agent mv23235 :progressive mv23243 :raw-text "regulated")
   (:var mv23235 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv23243 :isa be) (:var mv23240 :isa strong))
  ("What increases the amount of myc"
   (:var mv23252 :isa increase :|agent-OR-cause| mv23249 :|affected-process-OR-object| mv23254
    :present "PRESENT" :raw-text "increases")
   (:var mv23249 :isa what)
   (:var mv23254 :isa bio-amount :measured-item mv23256 :has-determiner "THE" :raw-text "amount")
   (:var mv23256 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv23260 :isa inhibit :|agent-OR-cause| mv23259 :object mv23258 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv23259 :isa what)
   (:var mv23258 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv23264 :isa be :subject mv23263 :predicate mv23276 :present "PRESENT")
   (:var mv23263 :isa what) (:var mv23276 :isa quality-predicate :item mv23274 :attribute mv23270)
   (:var mv23274 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv23261 mv23272 mv23262))
   (:var mv23261 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv23272 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv23262 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23270 :isa location-of :has-determiner "THE" :predication mv23268 :modifier mv23269)
   (:var mv23268 :isa likely :comparative mv23266)
   (:var mv23266 :isa superlative-quantifier :name "most")
   (:var mv23269 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv23279 :isa be :subject mv23278 :predicate mv23288 :present "PRESENT")
   (:var mv23278 :isa what) (:var mv23288 :isa quality-predicate :item mv23277 :attribute mv23285)
   (:var mv23277 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv23285 :isa location-of :has-determiner "THE" :predication mv23283 :modifier mv23284)
   (:var mv23283 :isa likely :comparative mv23281)
   (:var mv23281 :isa superlative-quantifier :name "most")
   (:var mv23284 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv23292 :isa be :subject mv23291 :predicate mv23295 :present "PRESENT")
   (:var mv23291 :isa what)
   (:var mv23295 :isa significance :context mv23290 :agent mv23289 :has-determiner "THE" :modifier
    mv23294)
   (:var mv23290 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv23289 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv23294 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv23307 :isa regulate :|affected-process-OR-object| mv23303 :agent mv23300 :present
    "PRESENT" :raw-text "regulated")
   (:var mv23303 :isa those :quantifier mv23301 :word "those") (:var mv23301 :isa which)
   (:var mv23300 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv23327 :isa copular-predication-of-pp :item mv23324 :value mv23326 :prep "IN" :predicate
    mv23316)
   (:var mv23324 :isa gene :plural t :quantifier mv23311 :has-determiner "THOSE" :raw-text "genes")
   (:var mv23311 :isa which)
   (:var mv23326 :isa gene :plural t :context mv23310 :quantifier mv23311 :has-determiner "THOSE"
    :raw-text "genes")
   (:var mv23310 :isa signaling-pathway :has-determiner "THE" :modifier mv23319 :raw-text
    "signaling pathway")
   (:var mv23319 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv23316 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv23338 :isa copular-predication-of-pp :item mv23332 :value mv23336 :prep mv23334
    :predicate mv23333)
   (:var mv23332 :isa these :quantifier mv23330 :word "these") (:var mv23330 :isa which)
   (:var mv23336 :isa pathway :has-determiner "THE" :modifier mv23329 :raw-text "pathway")
   (:var mv23329 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv23334 :isa in :word "in") (:var mv23333 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv23347 :isa gene-transcript-express :object mv23342 :organ mv23346 :present "PRESENT"
    :raw-text "expressed")
   (:var mv23342 :isa pronoun/plural :quantifier mv23340 :word "them") (:var mv23340 :isa which)
   (:var mv23346 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv23362 :isa regulate :|affected-process-OR-object| mv23354 :agent mv23361 :present
    "PRESENT" :superlative mv23356 :adverb mv23357 :raw-text "regulated")
   (:var mv23354 :isa pronoun/plural :quantifier mv23352 :word "them") (:var mv23352 :isa which)
   (:var mv23361 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv23350 mv23351))
   (:var mv23350 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv23351 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv23356 :isa superlative-quantifier :name "most")
   (:var mv23357 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv23370 :isa target :agent mv23371 :object mv23367 :present "PRESENT" :raw-text "target")
   (:var mv23371 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23367 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv23377 :isa target :|agent-OR-cause| mv23375 :object mv23372 :present "PRESENT" :raw-text
    "target")
   (:var mv23375 :isa those :quantifier mv23373 :word "those") (:var mv23373 :isa which)
   (:var mv23372 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv23380 :isa be :subject mv23379 :predicate mv23381 :present "PRESENT")
   (:var mv23379 :isa what)
   (:var mv23381 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv23384 :isa be :subject mv23383 :predicate mv23382 :present "PRESENT")
   (:var mv23383 :isa what)
   (:var mv23382 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv23390 :isa do :patient mv23385 :present "PRESENT")
   (:var mv23385 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv23400 :isa polar-question :statement mv23398)
   (:var mv23398 :isa there-exists :value mv23396 :predicate mv23393)
   (:var mv23396 :isa inhibitor :protein mv23391 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv23391 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv23393 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv23402 :isa name-something :patient mv23411 :present "PRESENT")
   (:var mv23411 :isa drug :plural t :predication mv23409 :quantifier mv23405 :raw-text "drugs")
   (:var mv23409 :isa inhibit :agent mv23411 :that-rel t :object mv23401 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv23401 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv23405 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv23422 :isa polar-question :statement mv23419)
   (:var mv23419 :isa there-exists :value mv23421 :predicate mv23414)
   (:var mv23421 :isa inhibitor :plural t :quantifier mv23416 :protein mv23412 :raw-text
    "inhibitors")
   (:var mv23416 :isa any :word "any")
   (:var mv23412 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv23414 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv23434 :isa polar-question :statement mv23431)
   (:var mv23431 :isa there-exists :value mv23433 :predicate mv23424)
   (:var mv23433 :isa target-protein :plural t :treatment mv23430 :raw-text "targets")
   (:var mv23430 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv23424 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv23438 :isa inhibit :|affected-process-OR-object| mv23435 :agent mv23437 :present
    "PRESENT" :raw-text "inhibit")
   (:var mv23435 :isa what)
   (:var mv23437 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv23443 :isa target :|affected-process-OR-object| mv23439 :agent mv23441 :present
    "PRESENT" :raw-text "target")
   (:var mv23439 :isa what)
   (:var mv23441 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv23450 :isa polar-question :statement mv23449)
   (:var mv23449 :isa target :agent mv23445 :object mv23448 :raw-text "target")
   (:var mv23445 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv23448 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv23453 :isa be :subject mv23452 :predicate mv23462 :present "PRESENT")
   (:var mv23452 :isa what)
   (:var mv23462 :isa target-protein :plural t :quantifier mv23454 :treatment mv23459 :raw-text
    "targets")
   (:var mv23454 :isa some :word "some")
   (:var mv23459 :isa treatment :disease mv23451 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv23451 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv23465 :isa be :subject mv23464 :predicate mv23473 :present "PRESENT")
   (:var mv23464 :isa what)
   (:var mv23473 :isa target-protein :plural t :quantifier mv23466 :disease mv23463 :raw-text
    "targets")
   (:var mv23466 :isa some :word "some")
   (:var mv23463 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv23480 :isa lead :agent mv23485 :theme mv23483 :modal mv23479 :raw-text "lead")
   (:var mv23485 :isa target-protein :plural t :has-determiner "WHAT" :raw-text "targets")
   (:var mv23483 :isa development :disease mv23474 :has-determiner "THE" :raw-text "development")
   (:var mv23474 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv23479 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv23493 :isa lead :agent mv23498 :theme mv23496 :modal mv23492 :raw-text "lead")
   (:var mv23498 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv23496 :isa development :disease mv23488 :has-determiner "THE" :raw-text "development")
   (:var mv23488 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv23492 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv23507 :isa lead :agent mv23510 :theme mv23501 :modal mv23506 :raw-text "lead")
   (:var mv23510 :isa gene :plural t :has-determiner "WHAT" :predication mv23503 :raw-text "genes")
   (:var mv23503 :isa mutation :object mv23510 :raw-text "mutated")
   (:var mv23501 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv23506 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv23514 :isa be :subject mv23513 :predicate mv23518 :present "PRESENT")
   (:var mv23513 :isa what)
   (:var mv23518 :isa mutation :predication mv23520 :has-determiner "THE" :modifier mv23516 :object
    mv23517 :raw-text "mutation")
   (:var mv23520 :isa lead :agent mv23518 :that-rel t :theme mv23512 :present "PRESENT" :raw-text
    "leads")
   (:var mv23512 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv23516 :isa top-qua-location) (:var mv23517 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv23529 :isa like :agent mv23524 :modal mv23527)
   (:var mv23524 :isa interlocutor :name "speaker") (:var mv23527 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv23550 :isa bio-use :patient mv23540 :modal mv23541 :agent mv23542 :theme mv23549
    :present "PRESENT" :raw-text "use")
   (:var mv23540 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv23541 :isa could)
   (:var mv23542 :isa interlocutor :name "speaker")
   (:var mv23549 :isa treatment :disease mv23538 :raw-text "treat")
   (:var mv23538 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv23553 :isa be :subject mv23552 :predicate mv23561 :present "PRESENT")
   (:var mv23552 :isa what)
   (:var mv23561 :isa drug :plural t :treatment mv23558 :quantifier mv23554 :raw-text "drugs")
   (:var mv23558 :isa treatment :disease mv23551 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv23551 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv23554 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv23568 :isa like :agent mv23564 :modal mv23575)
   (:var mv23564 :isa interlocutor :name "speaker") (:var mv23575 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv23579 :isa how))
  ("Does MEK act on ERK?" (:var mv23589 :isa polar-question :statement mv23587)
   (:var mv23587 :isa bio-act :agent mv23583 :acted-on mv23586 :raw-text "act")
   (:var mv23583 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23586 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv23594 :isa explicit-suggestion :suggestion mv23591 :marker let-as-directive)
   (:var mv23591 :isa build :artifact mv23593 :present "PRESENT")
   (:var mv23593 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv23597 :isa bio-activate :agent mv23596 :object mv23595 :present "PRESENT" :raw-text
    "activates")
   (:var mv23596 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23595 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv23599 :isa bio-activate :agent mv23598 :object mv23600 :present "PRESENT" :raw-text
    "activates")
   (:var mv23598 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv23600 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv23601 :isa remove :object mv23608 :present "PRESENT" :raw-text "Remove")
   (:var mv23608 :isa fact :statement mv23606 :has-determiner "THE")
   (:var mv23606 :isa bio-activate :agent mv23605 :object mv23607 :present "PRESENT" :raw-text
    "activates")
   (:var mv23605 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv23607 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv23620 :isa polar-question :statement mv23611)
   (:var mv23611 :isa tell :agent mv23610 :theme mv23619 :theme mv23612 :modal "CAN")
   (:var mv23610 :isa interlocutor :name "hearer")
   (:var mv23619 :isa copular-predication-of-pp :item mv23613 :value mv23617 :prep mv23615
    :predicate mv23614)
   (:var mv23613 :isa what) (:var mv23617 :isa model :has-determiner "THE")
   (:var mv23615 :isa in :word "in") (:var mv23614 :isa be :modal "CAN")
   (:var mv23612 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv23624 :isa summarize :statement mv23623 :present "PRESENT")
   (:var mv23623 :isa model :has-determiner "THE"))
  ("Summarize the current model."
   (:var mv23629 :isa summarize :statement mv23628 :present "PRESENT")
   (:var mv23628 :isa model :has-determiner "THE" :predication mv23627)
   (:var mv23627 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv23631 :isa phosphorylate :|agent-OR-cause| mv23630 :substrate mv23632 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv23630 :isa what)
   (:var mv23632 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv23634 :isa binding :binder mv23633 :direct-bindee mv23635 :present "PRESENT" :raw-text
    "binds")
   (:var mv23633 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv23635 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv23640 :isa bio-activate :object mv23636 :present "PRESENT" :raw-text "activated")
   (:var mv23636 :isa protein :predication mv23637 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv23637 :isa phosphorylate :substrate mv23636 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv23644 :isa dephosphorylate :agent mv23641 :substrate mv23642 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv23641 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv23642 :isa protein :predication mv23650 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv23650 :isa binding :direct-bindee mv23642 :that-rel t :bindee mv23643 :present "PRESENT"
    :negation mv23647 :raw-text "bound")
   (:var mv23643 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23647 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv23661 :isa phosphorylate :agent mv23652 :substrate mv23654 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv23652 :isa protein :predication mv23662 :predication mv23655 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv23662 :isa binding :direct-bindee mv23652 :that-rel t :bindee mv23653 :present "PRESENT"
    :negation mv23658 :raw-text "bound")
   (:var mv23653 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv23658 :isa not :word "not") (:var mv23655 :isa active)
   (:var mv23654 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv23668 :isa bio-activate :object mv23664 :present "PRESENT" :raw-text "activated")
   (:var mv23664 :isa protein :predication mv23665 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23665 :isa phosphorylate :substrate mv23664 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv23672 :isa dephosphorylate :agent mv23669 :substrate mv23670 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv23669 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv23670 :isa protein :predication mv23678 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23678 :isa binding :direct-bindee mv23670 :that-rel t :bindee mv23671 :present "PRESENT"
    :negation mv23675 :raw-text "bound")
   (:var mv23671 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv23675 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv23693 :isa phosphorylate :agent mv23681 :substrate mv23680 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv23681 :isa protein :predication mv23696 :mutation mv23695 :raw-text "BRAF" :uid
    "UP:P15056" :name "BRAF_HUMAN")
   (:var mv23696 :isa binding :direct-bindee mv23681 :that-rel t :bindee mv23692 :present "PRESENT"
    :negation mv23689 :raw-text "bound")
   (:var mv23692 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv23689 :isa not :word "not")
   (:var mv23695 :isa point-mutated-protein :position mv23684 :new-amino-acid mv23686
    :original-amino-acid mv23682)
   (:var mv23684 :isa number :value 600)
   (:var mv23686 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv23682 :isa amino-acid :name "valine" :letter "V")
   (:var mv23680 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv23702 :isa copular-predication :item mv23698 :value mv23701 :predicate mv23700)
   (:var mv23698 :isa protein :predication mv23699 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23699 :isa phosphorylate :substrate mv23698 :raw-text "Phosphorylated")
   (:var mv23701 :isa active) (:var mv23700 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv23705 :isa phosphorylate :agent mv23703 :substrate mv23704 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv23703 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv23704 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv23715 :isa explicit-suggestion :suggestion mv23709 :marker let-as-directive)
   (:var mv23709 :isa move-to :goal mv23713 :theme mv23707 :present "PRESENT")
   (:var mv23713 :isa top-qua-location :has-determiner "THE")
   (:var mv23707 :isa protein :predication mv23710 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv23710 :isa phosphorylate :substrate mv23707 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv23724 :isa explicit-suggestion :suggestion mv23719 :marker let-as-directive)
   (:var mv23719 :isa move-to :|at-relative-location-OR-goal| mv23722 :theme mv23717 :present
    "PRESENT")
   (:var mv23722 :isa top-qua-location)
   (:var mv23717 :isa protein :predication mv23720 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv23720 :isa phosphorylate :substrate mv23717 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv23726 :isa show :at-relative-location mv23728 :|statement-OR-theme| mv23725 :present
    "PRESENT")
   (:var mv23728 :isa top-qua-location)
   (:var mv23725 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv23737 :isa explicit-suggestion :suggestion mv23732 :marker let-as-directive)
   (:var mv23732 :isa highlight :theme mv23733 :present "PRESENT")
   (:var mv23733 :isa upstream-segment :pathwaycomponent mv23731 :raw-text "upstream")
   (:var mv23731 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv23749 :isa explicit-suggestion :suggestion mv23740 :marker let-as-directive)
   (:var mv23740 :isa move-to :goal mv23746 :theme mv23747 :present "PRESENT")
   (:var mv23746 :isa top-qua-location :has-determiner "THE")
   (:var mv23747 :isa element :plural t :modifier mv23741)
   (:var mv23741 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv23752 :isa be :subject mv23751 :predicate mv23764 :present "PRESENT")
   (:var mv23751 :isa what)
   (:var mv23764 :isa downstream-segment :plural t :pathwaycomponent mv23760 :has-determiner "THE"
    :predication mv23754 :raw-text "downstreams")
   (:var mv23760 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv23750 mv23759))
   (:var mv23750 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv23759 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv23754 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv23781 :isa polar-question :statement mv23776)
   (:var mv23776 :isa there-exists :value mv23780 :predicate mv23768)
   (:var mv23780 :isa upstream-segment :plural t :pathwaycomponent mv23777 :predication mv23770
    :raw-text "upstreams")
   (:var mv23777 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv23765 mv23774 mv23766))
   (:var mv23765 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv23774 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv23766 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23770 :isa common) (:var mv23768 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv23786 :isa be :subject mv23785 :predicate mv23800 :present "PRESENT")
   (:var mv23785 :isa what)
   (:var mv23800 :isa regulator :plural t :theme mv23795 :has-determiner "THE" :predication mv23788
    :context mv23789 :raw-text "regulators")
   (:var mv23795 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv23782 mv23783 mv23784))
   (:var mv23782 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv23783 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv23784 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv23788 :isa common) (:var mv23789 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv23804 :isa be :subject mv23803 :predicate mv23816 :present "PRESENT")
   (:var mv23803 :isa what)
   (:var mv23816 :isa regulator :plural t :theme mv23812 :predication mv23805 :context mv23806
    :raw-text "regulators")
   (:var mv23812 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv23801 mv23802))
   (:var mv23801 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv23802 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv23805 :isa common) (:var mv23806 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv23823 :isa be :subject mv23822 :predicate mv23833 :present "PRESENT")
   (:var mv23822 :isa what)
   (:var mv23833 :isa protein-family :plural t :molecule-type mv23829 :predication mv23824 :context
    mv23825 :raw-text "transcriptional regulators" :uid "XFAM:PF02082" :name
    "transcriptional regulator")
   (:var mv23829 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv23819 mv23820 mv23821))
   (:var mv23819 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv23820 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv23821 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv23824 :isa common) (:var mv23825 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv23837 :isa be :subject mv23836 :predicate mv23851 :present "PRESENT")
   (:var mv23836 :isa what)
   (:var mv23851 :isa mutation :plural t :context mv23835 :object mv23846 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv23835 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv23846 :isa collection :raw-text "PTEN, TP53 and BRAF" :type protein :number 3 :items
    (mv23842 mv23834 mv23844))
   (:var mv23842 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv23834 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv23844 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv23855 :isa be :subject mv23854 :predicate mv23858 :present "PRESENT")
   (:var mv23854 :isa what)
   (:var mv23858 :isa frequency :context mv23853 :measured-item mv23852 :has-determiner "THE"
    :measured-item mv23857 :raw-text "frequency")
   (:var mv23853 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv23852 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv23857 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv23875 :isa copular-predication :item mv23872 :value mv23863 :predicate mv23869)
   (:var mv23872 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23863 :isa mutual-exclusivity :disease mv23865 :alternative mv23864)
   (:var mv23865 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv23864 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv23869 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv23888 :isa copular-predication :item mv23885 :value mv23876 :predicate mv23882)
   (:var mv23885 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23876 :isa mutual-exclusivity :disease mv23878 :alternative mv23877)
   (:var mv23878 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv23877 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv23882 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv23891 :isa be :subject mv23890 :predicate mv23897 :present "PRESENT")
   (:var mv23890 :isa what) (:var mv23897 :isa quality-predicate :item mv23889 :attribute mv23894)
   (:var mv23889 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv23894 :isa location-of :has-determiner "THE" :modifier mv23893)
   (:var mv23893 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv23901 :isa regulate :manner mv23898 :agent mv23900 :object mv23902 :present "PRESENT"
    :raw-text "regulate")
   (:var mv23898 :isa how)
   (:var mv23900 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv23902 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv23904 :isa be :subject mv23903 :predicate mv23905 :present "PRESENT")
   (:var mv23903 :isa what)
   (:var mv23905 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv23917 :isa polar-question :statement mv23906)
   (:var mv23906 :isa be :subject mv23907 :predicate mv23909)
   (:var mv23907 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv23909 :isa member :set mv23915 :has-determiner "A")
   (:var mv23915 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv23929 :isa copular-predication-of-pp :item mv23924 :value mv23928 :prep "IN" :predicate
    mv23921)
   (:var mv23924 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23928 :isa gene :plural t :in-family mv23923 :has-determiner "WHAT" :raw-text "genes")
   (:var mv23923 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv23921 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv23946 :isa copular-predication-of-pp :item mv23940 :value mv23945 :prep "IN" :predicate
    mv23934)
   (:var mv23940 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23945 :isa gene :plural t :in-family mv23941 :has-determiner "WHAT" :raw-text "genes")
   (:var mv23941 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv23934 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv23949 :isa be :subject mv23948 :predicate mv23962 :present "PRESENT")
   (:var mv23948 :isa what)
   (:var mv23962 :isa has-name :plural t :item mv23958 :quantifier mv23950 :modifier mv23951)
   (:var mv23958 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv23950 :isa some :word "some") (:var mv23951 :isa other :name "other"))
  ("What are synonyms for ERK?"
   (:var mv23964 :isa be :subject mv23963 :predicate mv23970 :present "PRESENT")
   (:var mv23963 :isa what) (:var mv23970 :isa has-synonym :plural t :item mv23968)
   (:var mv23968 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv23983 :isa share :object mv23982 :participant mv23981 :present "PRESENT" :raw-text
    "shared")
   (:var mv23982 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23981 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv23973 mv23974 mv23975))
   (:var mv23973 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv23974 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv23975 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv23987 :isa be :subject mv23986 :predicate mv23997 :present "PRESENT")
   (:var mv23986 :isa what)
   (:var mv23997 :isa path :plural t :endpoints mv23994 :has-determiner "THE")
   (:var mv23994 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv23992 mv23985))
   (:var mv23992 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv23985 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv24002 :isa polar-question :statement mv24000)
   (:var mv24000 :isa be :subject mv23998 :predicate mv23999)
   (:var mv23998 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv23999 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv24003 :isa remove :object mv24015 :present "PRESENT" :raw-text "Remove")
   (:var mv24015 :isa fact :statement mv24009 :has-determiner "THE")
   (:var mv24009 :isa bio-activate :agent mv24008 :object mv24010 :present "PRESENT" :raw-text
    "activates")
   (:var mv24008 :isa protein-family :predication mv24007 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24007 :isa active)
   (:var mv24010 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv24018 :isa bio-activate :agent mv24017 :object mv24019 :present "PRESENT" :raw-text
    "activates")
   (:var mv24017 :isa protein-family :predication mv24016 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24016 :isa active)
   (:var mv24019 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv24026 :isa copular-predication-of-pp :item mv24020 :value mv24024 :prep mv24022
    :predicate mv24021)
   (:var mv24020 :isa what) (:var mv24024 :isa model :has-determiner "THE")
   (:var mv24022 :isa in :word "in") (:var mv24021 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv24037 :isa polar-question :statement mv24036)
   (:var mv24036 :isa copular-predication :item mv24029 :value mv24034 :predicate mv24027)
   (:var mv24029 :isa bio-amount :measured-item mv24032 :has-determiner "THE" :raw-text "amount")
   (:var mv24032 :isa protein-family :predication mv24031 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24031 :isa phosphorylate :substrate mv24032 :raw-text "phosphorylated")
   (:var mv24034 :isa high :adverb mv24033) (:var mv24033 :isa ever :name "ever")
   (:var mv24027 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv24050 :isa copular-predication :item mv24047 :value mv24038 :predicate mv24043)
   (:var mv24047 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24038 :isa mutual-exclusivity :disease mv24039 :alternative mv24045)
   (:var mv24039 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv24045 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv24043 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv24062 :isa share :object mv24061 :participant mv24060 :present "PRESENT" :raw-text
    "shared")
   (:var mv24061 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv24060 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv24053 mv24054))
   (:var mv24053 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv24054 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv24072 :isa regulate :agent mv24075 :object mv24074 :present "PRESENT" :adverb mv24070
    :adverb mv24071 :raw-text "regulate")
   (:var mv24075 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv24074 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv24064 mv24065 mv24066))
   (:var mv24064 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv24065 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv24066 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv24070 :isa superlative-quantifier :name "most")
   (:var mv24071 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv24077 :isa be :subject mv24076 :predicate mv24087 :present "PRESENT")
   (:var mv24076 :isa what) (:var mv24087 :isa quality-predicate :item mv24085 :attribute mv24083)
   (:var mv24085 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv24083 :isa location-of :has-determiner "THE" :predication mv24081 :modifier mv24082)
   (:var mv24081 :isa likely :comparative mv24079)
   (:var mv24079 :isa superlative-quantifier :name "most")
   (:var mv24082 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv24092 :isa polar-question :statement mv24088)
   (:var mv24088 :isa be :subject mv24089 :predicate mv24091)
   (:var mv24089 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24091 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?"
   (:var mv24104 :isa polar-question :statement mv24095)
   (:var mv24095 :isa tell :agent mv24094 :theme mv24103 :theme mv24096 :modal "CAN")
   (:var mv24094 :isa interlocutor :name "hearer")
   (:var mv24103 :isa wh-question :statement mv24100 :wh whether)
   (:var mv24100 :isa be :subject mv24099 :predicate mv24102 :modal "CAN")
   (:var mv24099 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24102 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv24096 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv24108 :isa want :agent mv24105 :theme mv24118 :present "PRESENT")
   (:var mv24105 :isa interlocutor :name "speaker")
   (:var mv24118 :isa know :agent mv24105 :statement mv24117)
   (:var mv24117 :isa wh-question :statement mv24113 :wh if)
   (:var mv24113 :isa be :subject mv24112 :predicate mv24115 :present "PRESENT")
   (:var mv24112 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24115 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv24119 :isa what))
  ("What type of protein is BRAF?"
   (:var mv24127 :isa be :subject mv24124 :predicate mv24128 :present "PRESENT")
   (:var mv24124 :isa type :molecule-type mv24126 :has-determiner "WHAT" :raw-text "type")
   (:var mv24126 :isa protein :raw-text "protein")
   (:var mv24128 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv24131 :isa be :subject mv24130 :predicate mv24133 :present "PRESENT")
   (:var mv24130 :isa what)
   (:var mv24133 :isa bio-activity :participant mv24138 :has-determiner "THE" :raw-text "activity")
   (:var mv24138 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv24148 :isa polar-question :statement mv24141)
   (:var mv24141 :isa be :subject mv24142 :predicate mv24147)
   (:var mv24142 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24147 :isa collection :raw-text "a kinase or a transcription factor" :type kinase
    :number 2 :items (mv24144 mv24140))
   (:var mv24144 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv24140 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv24157 :isa target :object mv24156 :agent mv24149 :present "PRESENT" :raw-text
    "targeted")
   (:var mv24156 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv24149 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv24164 :isa name-something :patient mv24160 :present "PRESENT")
   (:var mv24160 :isa transcription-factor :plural t :predication mv24167 :raw-text
    "transcription factors")
   (:var mv24167 :isa share :object mv24160 :participant mv24170 :past "PAST" :raw-text "shared")
   (:var mv24170 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv24161 mv24162 mv24163))
   (:var mv24161 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv24162 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv24163 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv24175 :isa tell :theme mv24180 :beneficiary mv24176 :present "PRESENT")
   (:var mv24180 :isa wh-question :statement mv24178 :wh if)
   (:var mv24178 :isa be :subject mv24173 :predicate mv24174 :present "PRESENT")
   (:var mv24173 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24174 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv24176 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv24185 :isa show :|statement-OR-theme| mv24192 :beneficiary mv24186 :present "PRESENT")
   (:var mv24192 :isa signaling-pathway :plural t :predication mv24187 :raw-text
    "signaling pathways")
   (:var mv24187 :isa share :object mv24192 :participant mv24190 :past "PAST" :raw-text "shared")
   (:var mv24190 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv24183 mv24184))
   (:var mv24183 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24184 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24186 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv24197 :isa give :theme mv24204 :beneficiary mv24198 :present "PRESENT")
   (:var mv24204 :isa signaling-pathway :plural t :predication mv24199 :raw-text
    "signaling pathways")
   (:var mv24199 :isa share :object mv24204 :participant mv24202 :past "PAST" :raw-text "shared")
   (:var mv24202 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv24195 mv24196))
   (:var mv24195 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24196 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24198 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv24234 :isa polar-question :statement mv24233)
   (:var mv24233 :isa event-relation :subordinated-event mv24229 :event mv24231)
   (:var mv24229 :isa wh-question :statement mv24216 :wh if)
   (:var mv24216 :isa increase :|agent-OR-cause| mv24214 :|multiplier-OR-cause| mv24226
    :|affected-process-OR-object| mv24218 :present "PRESENT" :raw-text "increase")
   (:var mv24214 :isa interlocutor :name "person-and-machine")
   (:var mv24226 :isa measurement :number mv24223) (:var mv24223 :isa number :value 10)
   (:var mv24218 :isa bio-amount :measured-item mv24220 :has-determiner "THE" :raw-text "amount")
   (:var mv24220 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24231 :isa copular-predication :item mv24207 :value mv24212 :predicate mv24205)
   (:var mv24207 :isa bio-amount :measured-item mv24210 :has-determiner "THE" :raw-text "amount")
   (:var mv24210 :isa protein-family :predication mv24209 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24209 :isa phosphorylate :substrate mv24210 :raw-text "phosphorylated")
   (:var mv24212 :isa high :adverb mv24211) (:var mv24211 :isa ever :name "ever")
   (:var mv24205 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv24237 :isa phosphorylate :agent mv24236 :substrate mv24238 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv24236 :isa protein-family :predication mv24235 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24235 :isa active)
   (:var mv24238 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv24266 :isa polar-question :statement mv24265)
   (:var mv24265 :isa event-relation :subordinated-event mv24261 :event mv24263)
   (:var mv24261 :isa wh-question :statement mv24250 :wh if)
   (:var mv24250 :isa increase :|agent-OR-cause| mv24248 :level mv24259
    :|affected-process-OR-object| mv24252 :present "PRESENT" :raw-text "increase")
   (:var mv24248 :isa interlocutor :name "person-and-machine")
   (:var mv24259 :isa measurement :number mv24256) (:var mv24256 :isa number :value 10)
   (:var mv24252 :isa bio-amount :measured-item mv24254 :has-determiner "THE" :raw-text "amount")
   (:var mv24254 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24263 :isa copular-predication :item mv24241 :value mv24246 :predicate mv24239)
   (:var mv24241 :isa bio-amount :measured-item mv24244 :has-determiner "THE" :raw-text "amount")
   (:var mv24244 :isa protein-family :predication mv24243 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24243 :isa phosphorylate :substrate mv24244 :raw-text "phosphorylated")
   (:var mv24246 :isa high :adverb mv24245) (:var mv24245 :isa ever :name "ever")
   (:var mv24239 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv24268 :isa be :subject mv24267 :predicate mv24276 :present "PRESENT")
   (:var mv24267 :isa what)
   (:var mv24276 :isa pathway :plural t :predication mv24273 :quantifier mv24269 :raw-text
    "pathways")
   (:var mv24273 :isa affect :agent mv24276 :that-rel t :object mv24274 :present "PRESENT"
    :raw-text "affect")
   (:var mv24274 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24269 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv24278 :isa be :subject mv24277 :predicate mv24286 :present "PRESENT")
   (:var mv24277 :isa what)
   (:var mv24286 :isa pathway :plural t :predication mv24283 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv24283 :isa affect :agent mv24286 :that-rel t :object mv24284 :present "PRESENT"
    :raw-text "affect")
   (:var mv24284 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv24298 :isa regulate :object mv24297 :agent mv24296 :present "PRESENT" :raw-text
    "regulated")
   (:var mv24297 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24296 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv24287 mv24288))
   (:var mv24287 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv24288 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
    "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv24302 :isa be :subject mv24301 :predicate mv24313 :present "PRESENT")
   (:var mv24301 :isa what)
   (:var mv24313 :isa gene :plural t :predication mv24311 :quantifier mv24303 :raw-text "genes")
   (:var mv24311 :isa regulate :object mv24313 :that-rel t :agent mv24300 :present "PRESENT"
    :raw-text "regulated")
   (:var mv24300 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24303 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv24319 :isa contain :theme mv24322 :patient mv24321 :present "PRESENT")
   (:var mv24322 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24321 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24314 mv24315))
   (:var mv24314 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24315 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv24325 :isa remove :object mv24334 :present "PRESENT" :raw-text "Remove")
   (:var mv24334 :isa fact :statement mv24329 :has-determiner "THE")
   (:var mv24329 :isa bio-activate :agent mv24323 :object mv24324 :present "PRESENT" :raw-text
    "activates")
   (:var mv24323 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv24324 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv24337 :isa remove :object mv24335 :present "PRESENT" :raw-text "Remove")
   (:var mv24335 :isa protein :predication mv24338 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv24338 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv24346 :isa be :subject mv24345 :predicate mv24356 :present "PRESENT")
   (:var mv24345 :isa what)
   (:var mv24356 :isa path :plural t :endpoints mv24353 :quantifier mv24347)
   (:var mv24353 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv24351 mv24344))
   (:var mv24351 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24344 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24347 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv24362 :isa polar-question :statement mv24361)
   (:var mv24361 :isa bio-activate :agent mv24357 :object mv24358 :raw-text "activate")
   (:var mv24357 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv24358 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv24366 :isa protein :has-determiner "WHAT" :modifier mv24365 :modifier mv24367 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24365 :isa drug :plural t :raw-text "drugs")
   (:var mv24367 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv24381 :isa copular-predication-of-pp :item mv24376 :value mv24380 :prep "IN" :predicate
    mv24372)
   (:var mv24376 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv24380 :isa kinase :plural t :in-pathway mv24368 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv24368 :isa signaling-pathway :has-determiner "THE" :modifier mv24375 :raw-text
    "signalling pathway")
   (:var mv24375 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv24372 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv24389 :isa target :agent mv24393 :object mv24390 :present "PRESENT" :raw-text "target")
   (:var mv24393 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv24390 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv24397 :isa bio-entity :has-determiner "WHAT" :modifier mv24398 :name "ELLK1")
   (:var mv24398 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv24411 :isa polar-question :statement mv24408)
   (:var mv24408 :isa increase :agent mv24399 :affected-process mv24404 :raw-text "increase")
   (:var mv24399 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24404 :isa gene-transcript-express :object mv24400 :raw-text "expression")
   (:var mv24400 :isa protein :organ mv24407 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv24407 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv24421 :isa polar-question :statement mv24419)
   (:var mv24419 :isa affect :agent mv24412 :affected-process mv24416 :raw-text "affect")
   (:var mv24412 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24416 :isa gene-transcript-express :organ mv24418 :object mv24413 :raw-text
    "expression")
   (:var mv24418 :isa liver)
   (:var mv24413 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv24428 :isa polar-question :statement mv24427)
   (:var mv24427 :isa alter :agent mv24422 :affected-process mv24426 :raw-text "alter")
   (:var mv24422 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24426 :isa gene-transcript-express :object mv24423 :raw-text "expression")
   (:var mv24423 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv24436 :isa polar-question :statement mv24432)
   (:var mv24432 :isa be :subject mv24429 :predicate mv24430)
   (:var mv24429 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24430 :isa protein-family :molecule-type mv24431 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv24431 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv24440 :isa inhibit :agent mv24442 :object mv24441 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv24442 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv24441 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv24445 :isa upregulate :agent mv24443 :object mv24444 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv24443 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24444 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv24449 :isa transcribe :object mv24447 :agent mv24446 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv24447 :isa what)
   (:var mv24446 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv24452 :isa be :subject mv24451 :predicate mv24450 :present "PRESENT")
   (:var mv24451 :isa what)
   (:var mv24450 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv24454 :isa be :subject mv24453 :predicate mv24455 :present "PRESENT")
   (:var mv24453 :isa what)
   (:var mv24455 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv24457 :isa phosphorylate :|agent-OR-cause| mv24456 :substrate mv24458 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv24456 :isa what)
   (:var mv24458 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv24463 :isa target :agent mv24465 :object mv24464 :present "PRESENT" :raw-text "target")
   (:var mv24465 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv24464 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv24468 :isa regulate :|agent-OR-cause| mv24467 :object mv24466 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24467 :isa what) (:var mv24466 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv24471 :isa regulate :|agent-OR-cause| mv24470 :object mv24469 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24470 :isa what)
   (:var mv24469 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv24482 :isa polar-question :statement mv24481)
   (:var mv24481 :isa target :agent mv24480 :object mv24473 :raw-text "target")
   (:var mv24480 :isa bio-entity :name "miR-20b-5pp")
   (:var mv24473 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv24485 :isa be :subject mv24484 :predicate mv24492 :present "PRESENT")
   (:var mv24484 :isa what)
   (:var mv24492 :isa mutation :plural t :has-determiner "THE" :raw-text "mutations"))
  ("What does selumitinibib target?"
   (:var mv24498 :isa target :|affected-process-OR-object| mv24495 :agent mv24499 :present
    "PRESENT" :raw-text "target")
   (:var mv24495 :isa what) (:var mv24499 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv24504 :isa polar-question :statement mv24501)
   (:var mv24501 :isa be :subject mv24500 :predicate mv24503)
   (:var mv24500 :isa bio-entity :name "ELLK1")
   (:var mv24503 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv24506 :isa regulate :|agent-OR-cause| mv24505 :object mv24507 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24505 :isa what)
   (:var mv24507 :isa protein :variant-number mv24509 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv24509 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv24513 :isa target :|affected-process-OR-object| mv24510 :agent mv24514 :present
    "PRESENT" :raw-text "target")
   (:var mv24510 :isa what) (:var mv24514 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv24518 :isa be :subject mv24517 :predicate mv24523 :present "PRESENT")
   (:var mv24517 :isa what) (:var mv24523 :isa evidence :statement mv24522 :has-determiner "THE")
   (:var mv24522 :isa phosphorylate :agent mv24515 :substrate mv24516 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv24515 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv24516 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv24525 :isa remove :object mv24524 :present "PRESENT" :raw-text "Remove")
   (:var mv24524 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv24530 :isa remove :object mv24533 :present "PRESENT" :raw-text "Remove")
   (:var mv24533 :isa interact :has-determiner "THE" :predication mv24532 :raw-text "interaction")
   (:var mv24532 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv24540 :isa bio-activate :agent mv24538 :object mv24539 :present "PRESENT" :raw-text
    "activates")
   (:var mv24538 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv24539 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv24550 :isa copular-predication-of-pp :item mv24548 :value mv24547 :prep mv24545
    :predicate mv24544)
   (:var mv24548 :isa interact :plural t :quantifier how-many :raw-text "interactions")
   (:var mv24547 :isa model :has-determiner "THE") (:var mv24545 :isa in :word "in")
   (:var mv24544 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv24562 :isa polar-question :statement mv24560)
   (:var mv24560 :isa decrease :agent mv24553 :|affected-process-OR-object| mv24557 :raw-text
    "decrease")
   (:var mv24553 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv24557 :isa bio-amount :measured-item mv24551 :has-determiner "THE" :raw-text "amount")
   (:var mv24551 :isa protein :predication mv24559 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv24559 :isa phosphorylate :substrate mv24551 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv24568 :isa bio-activate :object mv24569 :agent mv24563 :present "PRESENT" :raw-text
    "activate")
   (:var mv24569 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv24563 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv24575 :isa bio-activate :object mv24576 :agent mv24570 :present "PRESENT" :raw-text
    "activate")
   (:var mv24576 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv24570 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv24580 :isa bio-activate :|affected-process-OR-object| mv24578 :agent mv24577 :present
    "PRESENT" :raw-text "activate")
   (:var mv24578 :isa what)
   (:var mv24577 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv24584 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv24582 :agent mv24581
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv24582 :isa what)
   (:var mv24581 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv24590 :isa regulate :object mv24591 :agent mv24585 :present "PRESENT" :raw-text
    "regulate")
   (:var mv24591 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv24585 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv24603 :isa collection :type involve :number 2 :items (mv24595 mv24601))
   (:var mv24595 :isa involve :theme mv24602 :object mv24596 :present "PRESENT")
   (:var mv24602 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24596 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24601 :isa binding :direct-bindee mv24598 :binder mv24600 :present "PRESENT" :raw-text
    "bind")
   (:var mv24598 :isa what)
   (:var mv24600 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv24607 :isa involve :theme mv24609 :object mv24608 :present "PRESENT")
   (:var mv24609 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24608 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv24613 :isa binding :direct-bindee mv24610 :binder mv24612 :present "PRESENT" :raw-text
    "bind")
   (:var mv24610 :isa what)
   (:var mv24612 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv24625 :isa collection :type involve :number 2 :items (mv24617 mv24620))
   (:var mv24617 :isa involve :theme mv24624 :object mv24618 :present "PRESENT")
   (:var mv24624 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24618 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24620 :isa be :subject mv24624 :predicate mv24621 :present "PRESENT")
   (:var mv24621 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv24636 :isa polar-question :statement mv24635)
   (:var mv24635 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv24642 :isa polar-question :statement mv24641)
   (:var mv24641 :isa phosphorylate :agent mv24637 :substrate mv24638 :raw-text "phosphorylate")
   (:var mv24637 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv24638 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv24647 :isa bio-activate :agent mv24648 :object mv24643 :present "PRESENT" :raw-text
    "activate")
   (:var mv24648 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv24643 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv24655 :isa target :agent mv24661 :affected-process mv24663 :present "PRESENT" :raw-text
    "target")
   (:var mv24661 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv24663 :isa upstream-segment :plural t :pathwaycomponent mv24660 :raw-text "upstreams")
   (:var mv24660 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24649 mv24650))
   (:var mv24649 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24650 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv24669 :isa target :agent mv24670 :object mv24664 :present "PRESENT" :raw-text "target")
   (:var mv24670 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv24664 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv24676 :isa target :agent mv24677 :object mv24671 :present "PRESENT" :raw-text "target")
   (:var mv24677 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv24671 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv24686 :isa target :agent mv24691 :object mv24679 :present "PRESENT" :raw-text "target")
   (:var mv24691 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv24679 :isa transcription-factor :plural t :predication mv24687 :raw-text
    "transcription factors")
   (:var mv24687 :isa share :object mv24679 :participant mv24690 :past "PAST" :raw-text "shared")
   (:var mv24690 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24680 mv24681))
   (:var mv24680 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24681 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv24700 :isa target :object mv24701 :agent mv24694 :present "PRESENT" :raw-text "target")
   (:var mv24701 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv24694 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv24708 :isa target :object mv24709 :agent mv24704 :present "PRESENT" :raw-text "target")
   (:var mv24709 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv24704 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv24722 :isa copular-predication :item mv24719 :value mv24710 :predicate mv24716)
   (:var mv24719 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv24710 :isa mutual-exclusivity :disease mv24712 :alternative mv24711)
   (:var mv24712 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv24711 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv24716 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv24727 :isa target :agent mv24729 :object mv24728 :present "PRESENT" :raw-text "target")
   (:var mv24729 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv24728 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv24743 :isa copular-predication-of-pp :item mv24738 :value mv24742 :prep "IN" :predicate
    mv24734)
   (:var mv24738 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv24742 :isa kinase :plural t :in-pathway mv24730 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv24730 :isa signaling-pathway :has-determiner "THE" :modifier mv24737 :raw-text
    "signaling pathway")
   (:var mv24737 :isa bio-entity :name "FAKE") (:var mv24734 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv24746 :isa be :subject mv24745 :predicate mv24759 :present "PRESENT")
   (:var mv24745 :isa what)
   (:var mv24759 :isa mutation :plural t :context mv24754 :object mv24751 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24754 :isa cancer :predication mv24753) (:var mv24753 :isa fictional)
   (:var mv24751 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv24761 :isa be :subject mv24760 :predicate mv24774 :present "PRESENT")
   (:var mv24760 :isa what)
   (:var mv24774 :isa mutation :plural t :context mv24769 :object mv24766 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24769 :isa cancer :organ mv24768) (:var mv24768 :isa liver)
   (:var mv24766 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv24776 :isa remove :object mv24786 :present "PRESENT" :raw-text "Remove")
   (:var mv24786 :isa fact :statement mv24780 :has-determiner "THE")
   (:var mv24780 :isa transcribe :agent mv24775 :object mv24781 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv24775 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24781 :isa bio-entity :name "FAKE"))
  ("ELK1 transcribes FOS"
   (:var mv24788 :isa transcribe :agent mv24787 :object mv24789 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv24787 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24789 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv24791 :isa remove :object mv24801 :present "PRESENT" :raw-text "Remove")
   (:var mv24801 :isa fact :statement mv24795 :has-determiner "THE")
   (:var mv24795 :isa transcribe :agent mv24790 :object mv24796 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv24790 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24796 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv24816 :isa share :object mv24815 :participant mv24814 :present "PRESENT" :raw-text
    "shared")
   (:var mv24815 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv24814 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv24804 mv24813))
   (:var mv24804 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24813 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv24829 :isa share :object mv24828 :participant mv24827 :present "PRESENT" :raw-text
    "shared")
   (:var mv24828 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv24827 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24820 mv24821))
   (:var mv24820 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24821 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?" (:var mv24838 :isa database :plural t :has-determiner "WHAT"))
  ("What is the MSA?" (:var mv24840 :isa be :subject mv24839 :predicate mv24842 :present "PRESENT")
   (:var mv24839 :isa what)
   (:var mv24842 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv24853 :isa ask :patient mv24852 :modal mv24846 :agent mv24847 :present "PRESENT")
   (:var mv24852 :isa tissue :plural t :has-determiner "WHAT") (:var mv24846 :isa can)
   (:var mv24847 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv24864 :isa ask :patient mv24863 :modal mv24857 :agent mv24858 :present "PRESENT")
   (:var mv24863 :isa cancer :plural t :has-determiner "WHAT") (:var mv24857 :isa can)
   (:var mv24858 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv24875 :isa ask :patient mv24874 :modal mv24868 :agent mv24869 :present "PRESENT")
   (:var mv24874 :isa bio-mechanism :plural t :has-determiner "WHAT") (:var mv24868 :isa can)
   (:var mv24869 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv24879 :isa regulate :|affected-process-OR-object| mv24877 :agent mv24876 :present
    "PRESENT" :raw-text "regulate")
   (:var mv24877 :isa what)
   (:var mv24876 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv24883 :isa be :subject mv24882 :predicate mv24885 :present "PRESENT")
   (:var mv24882 :isa these :quantifier mv24880 :word "these") (:var mv24880 :isa which)
   (:var mv24885 :isa kinase :plural t :raw-text "kinases"))
  ("What pathways is ERK1 in?"
   (:var mv24891 :isa be :subject mv24893 :predicate mv24887 :present "PRESENT")
   (:var mv24893 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24887 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which of these is AKT1 in?"
   (:var mv24898 :isa be :subject mv24897 :predicate mv24894 :present "PRESENT")
   (:var mv24897 :isa these :quantifier mv24895 :word "these") (:var mv24895 :isa which)
   (:var mv24894 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv24906 :isa be :subject mv24910 :predicate mv24909 :present "PRESENT")
   (:var mv24910 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24909 :isa collection :raw-text "ERK1 and AKT1" :type protein :number 2 :items
    (mv24901 mv24902))
   (:var mv24901 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv24902 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What microRNAs target STAT3?"
   (:var mv24916 :isa target :agent mv24917 :object mv24911 :present "PRESENT" :raw-text "target")
   (:var mv24917 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv24911 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv24923 :isa target :|agent-OR-cause| mv24921 :object mv24918 :present "PRESENT" :raw-text
    "target")
   (:var mv24921 :isa these :quantifier mv24919 :word "these") (:var mv24919 :isa which)
   (:var mv24918 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv24933 :isa polar-question :statement mv24931)
   (:var mv24931 :isa regulate :|agent-OR-cause| mv24929 :object mv24925 :raw-text "regulate")
   (:var mv24929 :isa these :quantifier mv24927 :word "these") (:var mv24927 :isa any :word "any")
   (:var mv24925 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv24936 :isa regulate :|agent-OR-cause| mv24935 :object mv24934 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24935 :isa what)
   (:var mv24934 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv24940 :isa involve :theme mv24942 :object mv24941 :present "PRESENT")
   (:var mv24942 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24941 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv24945 :isa be :subject mv24944 :predicate mv24953 :present "PRESENT")
   (:var mv24944 :isa what)
   (:var mv24953 :isa target-protein :plural t :treatment mv24943 :has-determiner "THE" :raw-text
    "targets")
   (:var mv24943 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv24955 :isa be :subject mv24954 :predicate mv24961 :present "PRESENT")
   (:var mv24954 :isa what)
   (:var mv24961 :isa location-of :theme mv24956 :predication mv24959 :modifier mv24960)
   (:var mv24956 :isa pronoun/plural :word "their") (:var mv24959 :isa likely :comparative mv24957)
   (:var mv24957 :isa superlative-quantifier :name "most")
   (:var mv24960 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv24966 :isa polar-question :statement mv24964)
   (:var mv24964 :isa be :subject mv24962 :predicate mv24963)
   (:var mv24962 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv24963 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv24971 :isa polar-question :statement mv24967)
   (:var mv24967 :isa be :subject mv24968 :predicate mv24970)
   (:var mv24968 :isa pronoun/inanimate :word "it")
   (:var mv24970 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?"
   (:var mv24974 :isa be :subject mv24973 :predicate mv24972 :present "PRESENT")
   (:var mv24973 :isa what)
   (:var mv24972 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv24979 :isa target :|affected-process-OR-object| mv24975 :|agent-OR-cause| mv24977
    :present "PRESENT" :raw-text "target")
   (:var mv24975 :isa what) (:var mv24977 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv24985 :isa regulate :object mv24986 :agent mv24980 :present "PRESENT" :raw-text
    "regulate")
   (:var mv24986 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24980 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?"
   (:var mv24990 :isa be :subject mv24993 :predicate mv24991 :present "PRESENT")
   (:var mv24993 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24991 :isa pronoun/inanimate :word "it"))
  ("What are the targets of PLX-4720?"
   (:var mv24996 :isa be :subject mv24995 :predicate mv25004 :present "PRESENT")
   (:var mv24995 :isa what)
   (:var mv25004 :isa target-protein :plural t :treatment mv24994 :has-determiner "THE" :raw-text
    "targets")
   (:var mv24994 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv25011 :isa polar-question :statement mv25010)
   (:var mv25010 :isa target :|agent-OR-cause| mv25006 :object mv25009 :raw-text "target")
   (:var mv25006 :isa pronoun/inanimate :word "it")
   (:var mv25009 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv25016 :isa inhibit :agent mv25015 :object mv25020 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv25015 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv25020 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv25012 mv25013))
   (:var mv25012 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv25013 :isa protein :predication mv25018 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv25018 :isa active))
  ("JAK1 activates STAT3"
   (:var mv25023 :isa bio-activate :agent mv25021 :object mv25022 :present "PRESENT" :raw-text
    "activates")
   (:var mv25021 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv25022 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv25029 :isa want :agent mv25026 :theme mv25039 :present "PRESENT")
   (:var mv25026 :isa interlocutor :name "speaker")
   (:var mv25039 :isa find-out :agent mv25026 :statement mv25036)
   (:var mv25036 :isa wh-question :statement mv25035 :var nil :wh how)
   (:var mv25035 :isa bio-activate :agent mv25024 :object mv25025 :present "PRESENT" :raw-text
    "activates")
   (:var mv25024 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv25025 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv25045 :isa want :agent mv25042 :theme mv25061 :present "PRESENT")
   (:var mv25042 :isa interlocutor :name "speaker")
   (:var mv25061 :isa find-out :agent mv25042 :statement mv25058)
   (:var mv25058 :isa wh-question :statement mv25051 :var nil :wh how)
   (:var mv25051 :isa bio-activate :agent mv25040 :object mv25052 :present "PRESENT" :raw-text
    "activates")
   (:var mv25040 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv25052 :isa protein :cell-type mv25056 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv25056 :isa cell-type :plural t :cell-line mv25041)
   (:var mv25041 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv25066 :isa explicit-suggestion :suggestion mv25063 :marker let-as-directive)
   (:var mv25063 :isa build :artifact mv25065 :present "PRESENT")
   (:var mv25065 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv25068 :isa phosphorylate :agent mv25067 :substrate mv25069 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25067 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25069 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019"))
  ("What kinases regulate IL2?"
   (:var mv25077 :isa regulate :agent mv25078 :object mv25073 :present "PRESENT" :raw-text
    "regulate")
   (:var mv25078 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv25073 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv25079 :isa upregulate :|agent-OR-cause| mv25081 :object mv25080 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv25081 :isa what)
   (:var mv25080 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv25085 :isa have :possessor mv25083 :thing-possessed mv25087 :modal mv25084)
   (:var mv25083 :isa what)
   (:var mv25087 :isa effect :object mv25082 :affected-process mv25090 :has-determiner "THE"
    :raw-text "effect")
   (:var mv25082 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25090 :isa bio-activate :raw-text "activation") (:var mv25084 :isa can))
  ("Are there any drugs for IL10?" (:var mv25106 :isa polar-question :statement mv25102)
   (:var mv25102 :isa there-exists :value mv25105 :predicate mv25096)
   (:var mv25105 :isa drug :plural t :target mv25094 :quantifier mv25098 :raw-text "drugs")
   (:var mv25094 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv25098 :isa any :word "any") (:var mv25096 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv25111 :isa gene-transcript-express :agent mv25112 :object mv25107 :present "PRESENT"
    :raw-text "express")
   (:var mv25112 :isa tissue :plural t :has-determiner "WHICH")
   (:var mv25107 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv25117 :isa regulate :manner mv25115 :agent mv25113 :object mv25114 :present "PRESENT"
    :raw-text "regulate")
   (:var mv25115 :isa how)
   (:var mv25113 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25114 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv25123 :isa be :subject mv25122 :predicate mv25133 :present "PRESENT")
   (:var mv25122 :isa what)
   (:var mv25133 :isa transcription-factor :plural t :predication mv25125 :raw-text
    "transcription factors")
   (:var mv25125 :isa binding :binder mv25133 :that-rel t :direct-bindee mv25132 :present "PRESENT"
    :raw-text "bind")
   (:var mv25132 :isa gene :plural t :has-determiner "THE" :expresses mv25130 :raw-text "genes")
   (:var mv25130 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv25120 mv25121))
   (:var mv25120 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv25121 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv25139 :isa regulate :agent mv25143 :object mv25142 :present "PRESENT" :raw-text
    "regulate")
   (:var mv25143 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv25142 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv25134 mv25135))
   (:var mv25134 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv25135 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv25155 :isa factor :plural t :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv25168 :isa relation :plural t :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv25172 :isa be :subject mv25171 :predicate mv25170 :present "PRESENT")
   (:var mv25171 :isa what)
   (:var mv25170 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv25177 :isa polar-question :statement mv25174)
   (:var mv25174 :isa be :subject mv25173 :predicate mv25176)
   (:var mv25173 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv25176 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv25181 :isa transcribe :object mv25179 :agent mv25178 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv25179 :isa what)
   (:var mv25178 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv25192 :isa polar-question :statement mv25189)
   (:var mv25189 :isa there-exists :value mv25191 :predicate mv25184)
   (:var mv25191 :isa drug :plural t :target mv25182 :raw-text "drugs")
   (:var mv25182 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv25184 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv25202 :isa relation :plural t :has-determiner "WHAT"))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv25215 :isa relation :plural t :has-determiner "WHAT"))))